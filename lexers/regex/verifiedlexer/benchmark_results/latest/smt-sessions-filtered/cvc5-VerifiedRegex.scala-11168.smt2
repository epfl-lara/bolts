; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!581106 () Bool)

(assert start!581106)

(declare-fun b!5595135 () Bool)

(assert (=> b!5595135 true))

(assert (=> b!5595135 true))

(declare-fun lambda!300388 () Int)

(declare-fun lambda!300387 () Int)

(assert (=> b!5595135 (not (= lambda!300388 lambda!300387))))

(assert (=> b!5595135 true))

(assert (=> b!5595135 true))

(declare-fun b!5595134 () Bool)

(assert (=> b!5595134 true))

(declare-fun b!5595128 () Bool)

(declare-fun e!3451596 () Bool)

(declare-fun e!3451594 () Bool)

(assert (=> b!5595128 (= e!3451596 e!3451594)))

(declare-fun res!2373514 () Bool)

(assert (=> b!5595128 (=> res!2373514 e!3451594)))

(declare-datatypes ((C!31434 0))(
  ( (C!31435 (val!25419 Int)) )
))
(declare-datatypes ((Regex!15582 0))(
  ( (ElementMatch!15582 (c!980755 C!31434)) (Concat!24427 (regOne!31676 Regex!15582) (regTwo!31676 Regex!15582)) (EmptyExpr!15582) (Star!15582 (reg!15911 Regex!15582)) (EmptyLang!15582) (Union!15582 (regOne!31677 Regex!15582) (regTwo!31677 Regex!15582)) )
))
(declare-datatypes ((List!63045 0))(
  ( (Nil!62921) (Cons!62921 (h!69369 Regex!15582) (t!376327 List!63045)) )
))
(declare-datatypes ((Context!9932 0))(
  ( (Context!9933 (exprs!5466 List!63045)) )
))
(declare-fun lt!2256094 () (Set Context!9932))

(declare-fun lt!2256108 () (Set Context!9932))

(assert (=> b!5595128 (= res!2373514 (not (= lt!2256094 lt!2256108)))))

(declare-fun lt!2256095 () (Set Context!9932))

(declare-fun lt!2256097 () (Set Context!9932))

(assert (=> b!5595128 (= lt!2256108 (set.union lt!2256095 lt!2256097))))

(declare-fun lt!2256087 () Context!9932)

(declare-fun r!7292 () Regex!15582)

(declare-datatypes ((List!63046 0))(
  ( (Nil!62922) (Cons!62922 (h!69370 C!31434) (t!376328 List!63046)) )
))
(declare-fun s!2326 () List!63046)

(declare-fun derivationStepZipperDown!924 (Regex!15582 Context!9932 C!31434) (Set Context!9932))

(assert (=> b!5595128 (= lt!2256097 (derivationStepZipperDown!924 (regTwo!31677 (regOne!31676 r!7292)) lt!2256087 (h!69370 s!2326)))))

(assert (=> b!5595128 (= lt!2256095 (derivationStepZipperDown!924 (regOne!31677 (regOne!31676 r!7292)) lt!2256087 (h!69370 s!2326)))))

(declare-fun b!5595129 () Bool)

(declare-fun res!2373500 () Bool)

(declare-fun e!3451597 () Bool)

(assert (=> b!5595129 (=> res!2373500 e!3451597)))

(declare-datatypes ((List!63047 0))(
  ( (Nil!62923) (Cons!62923 (h!69371 Context!9932) (t!376329 List!63047)) )
))
(declare-fun zl!343 () List!63047)

(declare-fun isEmpty!34744 (List!63045) Bool)

(assert (=> b!5595129 (= res!2373500 (isEmpty!34744 (t!376327 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun setIsEmpty!37306 () Bool)

(declare-fun setRes!37306 () Bool)

(assert (=> setIsEmpty!37306 setRes!37306))

(declare-fun b!5595130 () Bool)

(declare-fun e!3451589 () Bool)

(declare-fun matchZipper!1720 ((Set Context!9932) List!63046) Bool)

(assert (=> b!5595130 (= e!3451589 (not (matchZipper!1720 lt!2256097 (t!376328 s!2326))))))

(declare-fun b!5595131 () Bool)

(declare-fun res!2373495 () Bool)

(declare-fun e!3451592 () Bool)

(assert (=> b!5595131 (=> res!2373495 e!3451592)))

(declare-fun lt!2256093 () Bool)

(declare-fun lt!2256079 () Bool)

(assert (=> b!5595131 (= res!2373495 (or lt!2256093 lt!2256079))))

(declare-fun b!5595132 () Bool)

(declare-fun e!3451602 () Bool)

(declare-fun lt!2256084 () (Set Context!9932))

(assert (=> b!5595132 (= e!3451602 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(declare-fun b!5595133 () Bool)

(declare-fun res!2373498 () Bool)

(declare-fun e!3451608 () Bool)

(assert (=> b!5595133 (=> res!2373498 e!3451608)))

(assert (=> b!5595133 (= res!2373498 (not (is-Cons!62921 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> b!5595134 (= e!3451597 e!3451596)))

(declare-fun res!2373503 () Bool)

(assert (=> b!5595134 (=> res!2373503 e!3451596)))

(assert (=> b!5595134 (= res!2373503 (or (and (is-ElementMatch!15582 (regOne!31676 r!7292)) (= (c!980755 (regOne!31676 r!7292)) (h!69370 s!2326))) (not (is-Union!15582 (regOne!31676 r!7292)))))))

(declare-datatypes ((Unit!155748 0))(
  ( (Unit!155749) )
))
(declare-fun lt!2256090 () Unit!155748)

(declare-fun e!3451591 () Unit!155748)

(assert (=> b!5595134 (= lt!2256090 e!3451591)))

(declare-fun c!980754 () Bool)

(declare-fun nullable!5614 (Regex!15582) Bool)

(assert (=> b!5595134 (= c!980754 (nullable!5614 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun z!1189 () (Set Context!9932))

(declare-fun lambda!300389 () Int)

(declare-fun flatMap!1195 ((Set Context!9932) Int) (Set Context!9932))

(declare-fun derivationStepZipperUp!850 (Context!9932 C!31434) (Set Context!9932))

(assert (=> b!5595134 (= (flatMap!1195 z!1189 lambda!300389) (derivationStepZipperUp!850 (h!69371 zl!343) (h!69370 s!2326)))))

(declare-fun lt!2256083 () Unit!155748)

(declare-fun lemmaFlatMapOnSingletonSet!727 ((Set Context!9932) Context!9932 Int) Unit!155748)

(assert (=> b!5595134 (= lt!2256083 (lemmaFlatMapOnSingletonSet!727 z!1189 (h!69371 zl!343) lambda!300389))))

(assert (=> b!5595134 (= lt!2256084 (derivationStepZipperUp!850 lt!2256087 (h!69370 s!2326)))))

(assert (=> b!5595134 (= lt!2256094 (derivationStepZipperDown!924 (h!69369 (exprs!5466 (h!69371 zl!343))) lt!2256087 (h!69370 s!2326)))))

(assert (=> b!5595134 (= lt!2256087 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun lt!2256091 () (Set Context!9932))

(assert (=> b!5595134 (= lt!2256091 (derivationStepZipperUp!850 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))) (h!69370 s!2326)))))

(assert (=> b!5595135 (= e!3451608 e!3451597)))

(declare-fun res!2373502 () Bool)

(assert (=> b!5595135 (=> res!2373502 e!3451597)))

(declare-fun lt!2256096 () Bool)

(declare-fun lt!2256109 () Bool)

(assert (=> b!5595135 (= res!2373502 (or (not (= lt!2256109 lt!2256096)) (is-Nil!62922 s!2326)))))

(declare-fun Exists!2682 (Int) Bool)

(assert (=> b!5595135 (= (Exists!2682 lambda!300387) (Exists!2682 lambda!300388))))

(declare-fun lt!2256100 () Unit!155748)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1311 (Regex!15582 Regex!15582 List!63046) Unit!155748)

(assert (=> b!5595135 (= lt!2256100 (lemmaExistCutMatchRandMatchRSpecEquivalent!1311 (regOne!31676 r!7292) (regTwo!31676 r!7292) s!2326))))

(assert (=> b!5595135 (= lt!2256096 (Exists!2682 lambda!300387))))

(declare-datatypes ((tuple2!65358 0))(
  ( (tuple2!65359 (_1!35982 List!63046) (_2!35982 List!63046)) )
))
(declare-datatypes ((Option!15591 0))(
  ( (None!15590) (Some!15590 (v!51631 tuple2!65358)) )
))
(declare-fun isDefined!12294 (Option!15591) Bool)

(declare-fun findConcatSeparation!2005 (Regex!15582 Regex!15582 List!63046 List!63046 List!63046) Option!15591)

(assert (=> b!5595135 (= lt!2256096 (isDefined!12294 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) Nil!62922 s!2326 s!2326)))))

(declare-fun lt!2256106 () Unit!155748)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1769 (Regex!15582 Regex!15582 List!63046) Unit!155748)

(assert (=> b!5595135 (= lt!2256106 (lemmaFindConcatSeparationEquivalentToExists!1769 (regOne!31676 r!7292) (regTwo!31676 r!7292) s!2326))))

(declare-fun b!5595136 () Bool)

(declare-fun e!3451595 () Bool)

(assert (=> b!5595136 (= e!3451594 e!3451595)))

(declare-fun res!2373496 () Bool)

(assert (=> b!5595136 (=> res!2373496 e!3451595)))

(assert (=> b!5595136 (= res!2373496 e!3451589)))

(declare-fun res!2373513 () Bool)

(assert (=> b!5595136 (=> (not res!2373513) (not e!3451589))))

(declare-fun lt!2256102 () Bool)

(assert (=> b!5595136 (= res!2373513 (not (= (matchZipper!1720 lt!2256094 (t!376328 s!2326)) lt!2256102)))))

(declare-fun lt!2256110 () Bool)

(declare-fun lt!2256082 () Bool)

(assert (=> b!5595136 (= lt!2256110 lt!2256082)))

(declare-fun e!3451601 () Bool)

(assert (=> b!5595136 (= lt!2256082 e!3451601)))

(declare-fun res!2373504 () Bool)

(assert (=> b!5595136 (=> res!2373504 e!3451601)))

(assert (=> b!5595136 (= res!2373504 lt!2256102)))

(assert (=> b!5595136 (= lt!2256110 (matchZipper!1720 lt!2256108 (t!376328 s!2326)))))

(assert (=> b!5595136 (= lt!2256102 (matchZipper!1720 lt!2256095 (t!376328 s!2326)))))

(declare-fun lt!2256085 () Unit!155748)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!607 ((Set Context!9932) (Set Context!9932) List!63046) Unit!155748)

(assert (=> b!5595136 (= lt!2256085 (lemmaZipperConcatMatchesSameAsBothZippers!607 lt!2256095 lt!2256097 (t!376328 s!2326)))))

(declare-fun b!5595137 () Bool)

(declare-fun e!3451604 () Bool)

(assert (=> b!5595137 (= e!3451604 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(declare-fun b!5595138 () Bool)

(declare-fun e!3451603 () Bool)

(declare-fun tp!1547305 () Bool)

(declare-fun tp!1547307 () Bool)

(assert (=> b!5595138 (= e!3451603 (and tp!1547305 tp!1547307))))

(declare-fun b!5595139 () Bool)

(declare-fun e!3451598 () Bool)

(assert (=> b!5595139 (= e!3451598 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(declare-fun b!5595140 () Bool)

(declare-fun res!2373510 () Bool)

(assert (=> b!5595140 (=> res!2373510 e!3451608)))

(declare-fun isEmpty!34745 (List!63047) Bool)

(assert (=> b!5595140 (= res!2373510 (not (isEmpty!34745 (t!376329 zl!343))))))

(declare-fun b!5595141 () Bool)

(declare-fun e!3451605 () Unit!155748)

(declare-fun Unit!155750 () Unit!155748)

(assert (=> b!5595141 (= e!3451605 Unit!155750)))

(declare-fun lt!2256101 () Unit!155748)

(assert (=> b!5595141 (= lt!2256101 (lemmaZipperConcatMatchesSameAsBothZippers!607 lt!2256095 lt!2256084 (t!376328 s!2326)))))

(declare-fun res!2373505 () Bool)

(assert (=> b!5595141 (= res!2373505 lt!2256102)))

(assert (=> b!5595141 (=> res!2373505 e!3451598)))

(assert (=> b!5595141 (= (matchZipper!1720 (set.union lt!2256095 lt!2256084) (t!376328 s!2326)) e!3451598)))

(declare-fun b!5595142 () Bool)

(declare-fun res!2373501 () Bool)

(assert (=> b!5595142 (=> res!2373501 e!3451608)))

(declare-fun generalisedConcat!1197 (List!63045) Regex!15582)

(assert (=> b!5595142 (= res!2373501 (not (= r!7292 (generalisedConcat!1197 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5595143 () Bool)

(declare-fun e!3451593 () Unit!155748)

(declare-fun Unit!155751 () Unit!155748)

(assert (=> b!5595143 (= e!3451593 Unit!155751)))

(declare-fun lt!2256098 () Unit!155748)

(assert (=> b!5595143 (= lt!2256098 (lemmaZipperConcatMatchesSameAsBothZippers!607 lt!2256097 lt!2256084 (t!376328 s!2326)))))

(declare-fun res!2373512 () Bool)

(assert (=> b!5595143 (= res!2373512 (matchZipper!1720 lt!2256097 (t!376328 s!2326)))))

(assert (=> b!5595143 (=> res!2373512 e!3451604)))

(assert (=> b!5595143 (= (matchZipper!1720 (set.union lt!2256097 lt!2256084) (t!376328 s!2326)) e!3451604)))

(declare-fun b!5595144 () Bool)

(assert (=> b!5595144 (= e!3451592 (= (matchZipper!1720 z!1189 s!2326) lt!2256082))))

(declare-fun b!5595145 () Bool)

(declare-fun res!2373511 () Bool)

(declare-fun e!3451600 () Bool)

(assert (=> b!5595145 (=> (not res!2373511) (not e!3451600))))

(declare-fun toList!9366 ((Set Context!9932)) List!63047)

(assert (=> b!5595145 (= res!2373511 (= (toList!9366 z!1189) zl!343))))

(declare-fun res!2373509 () Bool)

(assert (=> start!581106 (=> (not res!2373509) (not e!3451600))))

(declare-fun validRegex!7318 (Regex!15582) Bool)

(assert (=> start!581106 (= res!2373509 (validRegex!7318 r!7292))))

(assert (=> start!581106 e!3451600))

(assert (=> start!581106 e!3451603))

(declare-fun condSetEmpty!37306 () Bool)

(assert (=> start!581106 (= condSetEmpty!37306 (= z!1189 (as set.empty (Set Context!9932))))))

(assert (=> start!581106 setRes!37306))

(declare-fun e!3451607 () Bool)

(assert (=> start!581106 e!3451607))

(declare-fun e!3451606 () Bool)

(assert (=> start!581106 e!3451606))

(declare-fun setElem!37306 () Context!9932)

(declare-fun tp!1547301 () Bool)

(declare-fun setNonEmpty!37306 () Bool)

(declare-fun e!3451599 () Bool)

(declare-fun inv!82203 (Context!9932) Bool)

(assert (=> setNonEmpty!37306 (= setRes!37306 (and tp!1547301 (inv!82203 setElem!37306) e!3451599))))

(declare-fun setRest!37306 () (Set Context!9932))

(assert (=> setNonEmpty!37306 (= z!1189 (set.union (set.insert setElem!37306 (as set.empty (Set Context!9932))) setRest!37306))))

(declare-fun b!5595146 () Bool)

(assert (=> b!5595146 (= e!3451600 (not e!3451608))))

(declare-fun res!2373506 () Bool)

(assert (=> b!5595146 (=> res!2373506 e!3451608)))

(assert (=> b!5595146 (= res!2373506 (not (is-Cons!62923 zl!343)))))

(declare-fun matchRSpec!2685 (Regex!15582 List!63046) Bool)

(assert (=> b!5595146 (= lt!2256109 (matchRSpec!2685 r!7292 s!2326))))

(declare-fun matchR!7767 (Regex!15582 List!63046) Bool)

(assert (=> b!5595146 (= lt!2256109 (matchR!7767 r!7292 s!2326))))

(declare-fun lt!2256089 () Unit!155748)

(declare-fun mainMatchTheorem!2685 (Regex!15582 List!63046) Unit!155748)

(assert (=> b!5595146 (= lt!2256089 (mainMatchTheorem!2685 r!7292 s!2326))))

(declare-fun b!5595147 () Bool)

(assert (=> b!5595147 (= e!3451601 (matchZipper!1720 lt!2256097 (t!376328 s!2326)))))

(declare-fun b!5595148 () Bool)

(declare-fun tp!1547302 () Bool)

(assert (=> b!5595148 (= e!3451599 tp!1547302)))

(declare-fun b!5595149 () Bool)

(declare-fun Unit!155752 () Unit!155748)

(assert (=> b!5595149 (= e!3451591 Unit!155752)))

(declare-fun lt!2256081 () Unit!155748)

(assert (=> b!5595149 (= lt!2256081 (lemmaZipperConcatMatchesSameAsBothZippers!607 lt!2256094 lt!2256084 (t!376328 s!2326)))))

(declare-fun res!2373507 () Bool)

(assert (=> b!5595149 (= res!2373507 (matchZipper!1720 lt!2256094 (t!376328 s!2326)))))

(assert (=> b!5595149 (=> res!2373507 e!3451602)))

(assert (=> b!5595149 (= (matchZipper!1720 (set.union lt!2256094 lt!2256084) (t!376328 s!2326)) e!3451602)))

(declare-fun b!5595150 () Bool)

(declare-fun Unit!155753 () Unit!155748)

(assert (=> b!5595150 (= e!3451591 Unit!155753)))

(declare-fun b!5595151 () Bool)

(declare-fun Unit!155754 () Unit!155748)

(assert (=> b!5595151 (= e!3451605 Unit!155754)))

(declare-fun b!5595152 () Bool)

(declare-fun res!2373499 () Bool)

(assert (=> b!5595152 (=> (not res!2373499) (not e!3451600))))

(declare-fun unfocusZipper!1324 (List!63047) Regex!15582)

(assert (=> b!5595152 (= res!2373499 (= r!7292 (unfocusZipper!1324 zl!343)))))

(declare-fun b!5595153 () Bool)

(declare-fun tp_is_empty!40417 () Bool)

(assert (=> b!5595153 (= e!3451603 tp_is_empty!40417)))

(declare-fun b!5595154 () Bool)

(declare-fun Unit!155755 () Unit!155748)

(assert (=> b!5595154 (= e!3451593 Unit!155755)))

(declare-fun b!5595155 () Bool)

(declare-fun res!2373508 () Bool)

(assert (=> b!5595155 (=> res!2373508 e!3451608)))

(declare-fun generalisedUnion!1445 (List!63045) Regex!15582)

(declare-fun unfocusZipperList!1010 (List!63047) List!63045)

(assert (=> b!5595155 (= res!2373508 (not (= r!7292 (generalisedUnion!1445 (unfocusZipperList!1010 zl!343)))))))

(declare-fun b!5595156 () Bool)

(declare-fun e!3451590 () Bool)

(declare-fun tp!1547304 () Bool)

(assert (=> b!5595156 (= e!3451590 tp!1547304)))

(declare-fun b!5595157 () Bool)

(declare-fun tp!1547308 () Bool)

(assert (=> b!5595157 (= e!3451606 (and tp_is_empty!40417 tp!1547308))))

(declare-fun tp!1547309 () Bool)

(declare-fun b!5595158 () Bool)

(assert (=> b!5595158 (= e!3451607 (and (inv!82203 (h!69371 zl!343)) e!3451590 tp!1547309))))

(declare-fun b!5595159 () Bool)

(assert (=> b!5595159 (= e!3451595 e!3451592)))

(declare-fun res!2373515 () Bool)

(assert (=> b!5595159 (=> res!2373515 e!3451592)))

(assert (=> b!5595159 (= res!2373515 (nullable!5614 (regOne!31676 r!7292)))))

(declare-fun lt!2256080 () Unit!155748)

(assert (=> b!5595159 (= lt!2256080 e!3451593)))

(declare-fun c!980753 () Bool)

(assert (=> b!5595159 (= c!980753 lt!2256079)))

(assert (=> b!5595159 (= lt!2256079 (nullable!5614 (regTwo!31677 (regOne!31676 r!7292))))))

(declare-fun lt!2256105 () Context!9932)

(declare-fun lt!2256103 () (Set Context!9932))

(assert (=> b!5595159 (= (flatMap!1195 lt!2256103 lambda!300389) (derivationStepZipperUp!850 lt!2256105 (h!69370 s!2326)))))

(declare-fun lt!2256092 () Unit!155748)

(assert (=> b!5595159 (= lt!2256092 (lemmaFlatMapOnSingletonSet!727 lt!2256103 lt!2256105 lambda!300389))))

(declare-fun lt!2256104 () (Set Context!9932))

(assert (=> b!5595159 (= lt!2256104 (derivationStepZipperUp!850 lt!2256105 (h!69370 s!2326)))))

(declare-fun lt!2256107 () Unit!155748)

(assert (=> b!5595159 (= lt!2256107 e!3451605)))

(declare-fun c!980752 () Bool)

(assert (=> b!5595159 (= c!980752 lt!2256093)))

(assert (=> b!5595159 (= lt!2256093 (nullable!5614 (regOne!31677 (regOne!31676 r!7292))))))

(declare-fun lt!2256088 () (Set Context!9932))

(declare-fun lt!2256099 () Context!9932)

(assert (=> b!5595159 (= (flatMap!1195 lt!2256088 lambda!300389) (derivationStepZipperUp!850 lt!2256099 (h!69370 s!2326)))))

(declare-fun lt!2256086 () Unit!155748)

(assert (=> b!5595159 (= lt!2256086 (lemmaFlatMapOnSingletonSet!727 lt!2256088 lt!2256099 lambda!300389))))

(declare-fun lt!2256111 () (Set Context!9932))

(assert (=> b!5595159 (= lt!2256111 (derivationStepZipperUp!850 lt!2256099 (h!69370 s!2326)))))

(assert (=> b!5595159 (= lt!2256103 (set.insert lt!2256105 (as set.empty (Set Context!9932))))))

(assert (=> b!5595159 (= lt!2256105 (Context!9933 (Cons!62921 (regTwo!31677 (regOne!31676 r!7292)) (t!376327 (exprs!5466 (h!69371 zl!343))))))))

(assert (=> b!5595159 (= lt!2256088 (set.insert lt!2256099 (as set.empty (Set Context!9932))))))

(assert (=> b!5595159 (= lt!2256099 (Context!9933 (Cons!62921 (regOne!31677 (regOne!31676 r!7292)) (t!376327 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5595160 () Bool)

(declare-fun res!2373497 () Bool)

(assert (=> b!5595160 (=> res!2373497 e!3451608)))

(assert (=> b!5595160 (= res!2373497 (or (is-EmptyExpr!15582 r!7292) (is-EmptyLang!15582 r!7292) (is-ElementMatch!15582 r!7292) (is-Union!15582 r!7292) (not (is-Concat!24427 r!7292))))))

(declare-fun b!5595161 () Bool)

(declare-fun tp!1547303 () Bool)

(declare-fun tp!1547300 () Bool)

(assert (=> b!5595161 (= e!3451603 (and tp!1547303 tp!1547300))))

(declare-fun b!5595162 () Bool)

(declare-fun tp!1547306 () Bool)

(assert (=> b!5595162 (= e!3451603 tp!1547306)))

(assert (= (and start!581106 res!2373509) b!5595145))

(assert (= (and b!5595145 res!2373511) b!5595152))

(assert (= (and b!5595152 res!2373499) b!5595146))

(assert (= (and b!5595146 (not res!2373506)) b!5595140))

(assert (= (and b!5595140 (not res!2373510)) b!5595142))

(assert (= (and b!5595142 (not res!2373501)) b!5595133))

(assert (= (and b!5595133 (not res!2373498)) b!5595155))

(assert (= (and b!5595155 (not res!2373508)) b!5595160))

(assert (= (and b!5595160 (not res!2373497)) b!5595135))

(assert (= (and b!5595135 (not res!2373502)) b!5595129))

(assert (= (and b!5595129 (not res!2373500)) b!5595134))

(assert (= (and b!5595134 c!980754) b!5595149))

(assert (= (and b!5595134 (not c!980754)) b!5595150))

(assert (= (and b!5595149 (not res!2373507)) b!5595132))

(assert (= (and b!5595134 (not res!2373503)) b!5595128))

(assert (= (and b!5595128 (not res!2373514)) b!5595136))

(assert (= (and b!5595136 (not res!2373504)) b!5595147))

(assert (= (and b!5595136 res!2373513) b!5595130))

(assert (= (and b!5595136 (not res!2373496)) b!5595159))

(assert (= (and b!5595159 c!980752) b!5595141))

(assert (= (and b!5595159 (not c!980752)) b!5595151))

(assert (= (and b!5595141 (not res!2373505)) b!5595139))

(assert (= (and b!5595159 c!980753) b!5595143))

(assert (= (and b!5595159 (not c!980753)) b!5595154))

(assert (= (and b!5595143 (not res!2373512)) b!5595137))

(assert (= (and b!5595159 (not res!2373515)) b!5595131))

(assert (= (and b!5595131 (not res!2373495)) b!5595144))

(assert (= (and start!581106 (is-ElementMatch!15582 r!7292)) b!5595153))

(assert (= (and start!581106 (is-Concat!24427 r!7292)) b!5595161))

(assert (= (and start!581106 (is-Star!15582 r!7292)) b!5595162))

(assert (= (and start!581106 (is-Union!15582 r!7292)) b!5595138))

(assert (= (and start!581106 condSetEmpty!37306) setIsEmpty!37306))

(assert (= (and start!581106 (not condSetEmpty!37306)) setNonEmpty!37306))

(assert (= setNonEmpty!37306 b!5595148))

(assert (= b!5595158 b!5595156))

(assert (= (and start!581106 (is-Cons!62923 zl!343)) b!5595158))

(assert (= (and start!581106 (is-Cons!62922 s!2326)) b!5595157))

(declare-fun m!6574446 () Bool)

(assert (=> setNonEmpty!37306 m!6574446))

(declare-fun m!6574448 () Bool)

(assert (=> b!5595132 m!6574448))

(declare-fun m!6574450 () Bool)

(assert (=> b!5595128 m!6574450))

(declare-fun m!6574452 () Bool)

(assert (=> b!5595128 m!6574452))

(declare-fun m!6574454 () Bool)

(assert (=> b!5595135 m!6574454))

(declare-fun m!6574456 () Bool)

(assert (=> b!5595135 m!6574456))

(declare-fun m!6574458 () Bool)

(assert (=> b!5595135 m!6574458))

(assert (=> b!5595135 m!6574454))

(declare-fun m!6574460 () Bool)

(assert (=> b!5595135 m!6574460))

(declare-fun m!6574462 () Bool)

(assert (=> b!5595135 m!6574462))

(assert (=> b!5595135 m!6574456))

(declare-fun m!6574464 () Bool)

(assert (=> b!5595135 m!6574464))

(declare-fun m!6574466 () Bool)

(assert (=> b!5595130 m!6574466))

(assert (=> b!5595137 m!6574448))

(declare-fun m!6574468 () Bool)

(assert (=> b!5595134 m!6574468))

(declare-fun m!6574470 () Bool)

(assert (=> b!5595134 m!6574470))

(declare-fun m!6574472 () Bool)

(assert (=> b!5595134 m!6574472))

(declare-fun m!6574474 () Bool)

(assert (=> b!5595134 m!6574474))

(declare-fun m!6574476 () Bool)

(assert (=> b!5595134 m!6574476))

(declare-fun m!6574478 () Bool)

(assert (=> b!5595134 m!6574478))

(declare-fun m!6574480 () Bool)

(assert (=> b!5595134 m!6574480))

(declare-fun m!6574482 () Bool)

(assert (=> b!5595129 m!6574482))

(declare-fun m!6574484 () Bool)

(assert (=> b!5595140 m!6574484))

(declare-fun m!6574486 () Bool)

(assert (=> b!5595142 m!6574486))

(declare-fun m!6574488 () Bool)

(assert (=> b!5595146 m!6574488))

(declare-fun m!6574490 () Bool)

(assert (=> b!5595146 m!6574490))

(declare-fun m!6574492 () Bool)

(assert (=> b!5595146 m!6574492))

(declare-fun m!6574494 () Bool)

(assert (=> b!5595159 m!6574494))

(declare-fun m!6574496 () Bool)

(assert (=> b!5595159 m!6574496))

(declare-fun m!6574498 () Bool)

(assert (=> b!5595159 m!6574498))

(declare-fun m!6574500 () Bool)

(assert (=> b!5595159 m!6574500))

(declare-fun m!6574502 () Bool)

(assert (=> b!5595159 m!6574502))

(declare-fun m!6574504 () Bool)

(assert (=> b!5595159 m!6574504))

(declare-fun m!6574506 () Bool)

(assert (=> b!5595159 m!6574506))

(declare-fun m!6574508 () Bool)

(assert (=> b!5595159 m!6574508))

(declare-fun m!6574510 () Bool)

(assert (=> b!5595159 m!6574510))

(declare-fun m!6574512 () Bool)

(assert (=> b!5595159 m!6574512))

(declare-fun m!6574514 () Bool)

(assert (=> b!5595159 m!6574514))

(declare-fun m!6574516 () Bool)

(assert (=> b!5595155 m!6574516))

(assert (=> b!5595155 m!6574516))

(declare-fun m!6574518 () Bool)

(assert (=> b!5595155 m!6574518))

(declare-fun m!6574520 () Bool)

(assert (=> b!5595143 m!6574520))

(assert (=> b!5595143 m!6574466))

(declare-fun m!6574522 () Bool)

(assert (=> b!5595143 m!6574522))

(assert (=> b!5595139 m!6574448))

(declare-fun m!6574524 () Bool)

(assert (=> b!5595141 m!6574524))

(declare-fun m!6574526 () Bool)

(assert (=> b!5595141 m!6574526))

(assert (=> b!5595147 m!6574466))

(declare-fun m!6574528 () Bool)

(assert (=> b!5595158 m!6574528))

(declare-fun m!6574530 () Bool)

(assert (=> b!5595136 m!6574530))

(declare-fun m!6574532 () Bool)

(assert (=> b!5595136 m!6574532))

(declare-fun m!6574534 () Bool)

(assert (=> b!5595136 m!6574534))

(declare-fun m!6574536 () Bool)

(assert (=> b!5595136 m!6574536))

(declare-fun m!6574538 () Bool)

(assert (=> b!5595145 m!6574538))

(declare-fun m!6574540 () Bool)

(assert (=> b!5595152 m!6574540))

(declare-fun m!6574542 () Bool)

(assert (=> b!5595149 m!6574542))

(assert (=> b!5595149 m!6574530))

(declare-fun m!6574544 () Bool)

(assert (=> b!5595149 m!6574544))

(declare-fun m!6574546 () Bool)

(assert (=> start!581106 m!6574546))

(declare-fun m!6574548 () Bool)

(assert (=> b!5595144 m!6574548))

(push 1)

(assert (not b!5595128))

(assert (not b!5595145))

(assert (not b!5595149))

(assert (not b!5595137))

(assert (not b!5595157))

(assert (not b!5595130))

(assert tp_is_empty!40417)

(assert (not b!5595144))

(assert (not b!5595135))

(assert (not b!5595148))

(assert (not b!5595142))

(assert (not b!5595162))

(assert (not b!5595147))

(assert (not b!5595158))

(assert (not b!5595155))

(assert (not setNonEmpty!37306))

(assert (not b!5595141))

(assert (not b!5595146))

(assert (not b!5595129))

(assert (not start!581106))

(assert (not b!5595140))

(assert (not b!5595132))

(assert (not b!5595134))

(assert (not b!5595143))

(assert (not b!5595138))

(assert (not b!5595161))

(assert (not b!5595139))

(assert (not b!5595136))

(assert (not b!5595156))

(assert (not b!5595159))

(assert (not b!5595152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1293703 () Bool)

(declare-fun b!5595369 () Bool)

(assert (= bs!1293703 (and b!5595369 b!5595135)))

(declare-fun lambda!300415 () Int)

(assert (=> bs!1293703 (not (= lambda!300415 lambda!300387))))

(assert (=> bs!1293703 (not (= lambda!300415 lambda!300388))))

(assert (=> b!5595369 true))

(assert (=> b!5595369 true))

(declare-fun bs!1293704 () Bool)

(declare-fun b!5595362 () Bool)

(assert (= bs!1293704 (and b!5595362 b!5595135)))

(declare-fun lambda!300416 () Int)

(assert (=> bs!1293704 (not (= lambda!300416 lambda!300387))))

(assert (=> bs!1293704 (= lambda!300416 lambda!300388)))

(declare-fun bs!1293705 () Bool)

(assert (= bs!1293705 (and b!5595362 b!5595369)))

(assert (=> bs!1293705 (not (= lambda!300416 lambda!300415))))

(assert (=> b!5595362 true))

(assert (=> b!5595362 true))

(declare-fun b!5595360 () Bool)

(declare-fun res!2373615 () Bool)

(declare-fun e!3451719 () Bool)

(assert (=> b!5595360 (=> res!2373615 e!3451719)))

(declare-fun call!419462 () Bool)

(assert (=> b!5595360 (= res!2373615 call!419462)))

(declare-fun e!3451720 () Bool)

(assert (=> b!5595360 (= e!3451720 e!3451719)))

(declare-fun c!980797 () Bool)

(declare-fun bm!419456 () Bool)

(declare-fun call!419461 () Bool)

(assert (=> bm!419456 (= call!419461 (Exists!2682 (ite c!980797 lambda!300415 lambda!300416)))))

(declare-fun d!1768555 () Bool)

(declare-fun c!980799 () Bool)

(assert (=> d!1768555 (= c!980799 (is-EmptyExpr!15582 r!7292))))

(declare-fun e!3451715 () Bool)

(assert (=> d!1768555 (= (matchRSpec!2685 r!7292 s!2326) e!3451715)))

(declare-fun b!5595361 () Bool)

(declare-fun e!3451716 () Bool)

(assert (=> b!5595361 (= e!3451715 e!3451716)))

(declare-fun res!2373613 () Bool)

(assert (=> b!5595361 (= res!2373613 (not (is-EmptyLang!15582 r!7292)))))

(assert (=> b!5595361 (=> (not res!2373613) (not e!3451716))))

(assert (=> b!5595362 (= e!3451720 call!419461)))

(declare-fun b!5595363 () Bool)

(declare-fun c!980796 () Bool)

(assert (=> b!5595363 (= c!980796 (is-Union!15582 r!7292))))

(declare-fun e!3451718 () Bool)

(declare-fun e!3451714 () Bool)

(assert (=> b!5595363 (= e!3451718 e!3451714)))

(declare-fun b!5595364 () Bool)

(assert (=> b!5595364 (= e!3451718 (= s!2326 (Cons!62922 (c!980755 r!7292) Nil!62922)))))

(declare-fun b!5595365 () Bool)

(assert (=> b!5595365 (= e!3451714 e!3451720)))

(assert (=> b!5595365 (= c!980797 (is-Star!15582 r!7292))))

(declare-fun b!5595366 () Bool)

(declare-fun c!980798 () Bool)

(assert (=> b!5595366 (= c!980798 (is-ElementMatch!15582 r!7292))))

(assert (=> b!5595366 (= e!3451716 e!3451718)))

(declare-fun b!5595367 () Bool)

(declare-fun e!3451717 () Bool)

(assert (=> b!5595367 (= e!3451717 (matchRSpec!2685 (regTwo!31677 r!7292) s!2326))))

(declare-fun b!5595368 () Bool)

(assert (=> b!5595368 (= e!3451714 e!3451717)))

(declare-fun res!2373614 () Bool)

(assert (=> b!5595368 (= res!2373614 (matchRSpec!2685 (regOne!31677 r!7292) s!2326))))

(assert (=> b!5595368 (=> res!2373614 e!3451717)))

(assert (=> b!5595369 (= e!3451719 call!419461)))

(declare-fun bm!419457 () Bool)

(declare-fun isEmpty!34748 (List!63046) Bool)

(assert (=> bm!419457 (= call!419462 (isEmpty!34748 s!2326))))

(declare-fun b!5595370 () Bool)

(assert (=> b!5595370 (= e!3451715 call!419462)))

(assert (= (and d!1768555 c!980799) b!5595370))

(assert (= (and d!1768555 (not c!980799)) b!5595361))

(assert (= (and b!5595361 res!2373613) b!5595366))

(assert (= (and b!5595366 c!980798) b!5595364))

(assert (= (and b!5595366 (not c!980798)) b!5595363))

(assert (= (and b!5595363 c!980796) b!5595368))

(assert (= (and b!5595363 (not c!980796)) b!5595365))

(assert (= (and b!5595368 (not res!2373614)) b!5595367))

(assert (= (and b!5595365 c!980797) b!5595360))

(assert (= (and b!5595365 (not c!980797)) b!5595362))

(assert (= (and b!5595360 (not res!2373615)) b!5595369))

(assert (= (or b!5595369 b!5595362) bm!419456))

(assert (= (or b!5595370 b!5595360) bm!419457))

(declare-fun m!6574678 () Bool)

(assert (=> bm!419456 m!6574678))

(declare-fun m!6574680 () Bool)

(assert (=> b!5595367 m!6574680))

(declare-fun m!6574682 () Bool)

(assert (=> b!5595368 m!6574682))

(declare-fun m!6574684 () Bool)

(assert (=> bm!419457 m!6574684))

(assert (=> b!5595146 d!1768555))

(declare-fun d!1768561 () Bool)

(declare-fun e!3451738 () Bool)

(assert (=> d!1768561 e!3451738))

(declare-fun c!980810 () Bool)

(assert (=> d!1768561 (= c!980810 (is-EmptyExpr!15582 r!7292))))

(declare-fun lt!2256219 () Bool)

(declare-fun e!3451740 () Bool)

(assert (=> d!1768561 (= lt!2256219 e!3451740)))

(declare-fun c!980809 () Bool)

(assert (=> d!1768561 (= c!980809 (isEmpty!34748 s!2326))))

(assert (=> d!1768561 (validRegex!7318 r!7292)))

(assert (=> d!1768561 (= (matchR!7767 r!7292 s!2326) lt!2256219)))

(declare-fun b!5595405 () Bool)

(declare-fun e!3451744 () Bool)

(declare-fun head!11933 (List!63046) C!31434)

(assert (=> b!5595405 (= e!3451744 (= (head!11933 s!2326) (c!980755 r!7292)))))

(declare-fun b!5595406 () Bool)

(declare-fun derivativeStep!4430 (Regex!15582 C!31434) Regex!15582)

(declare-fun tail!11028 (List!63046) List!63046)

(assert (=> b!5595406 (= e!3451740 (matchR!7767 (derivativeStep!4430 r!7292 (head!11933 s!2326)) (tail!11028 s!2326)))))

(declare-fun b!5595407 () Bool)

(assert (=> b!5595407 (= e!3451740 (nullable!5614 r!7292))))

(declare-fun b!5595408 () Bool)

(declare-fun call!419465 () Bool)

(assert (=> b!5595408 (= e!3451738 (= lt!2256219 call!419465))))

(declare-fun b!5595409 () Bool)

(declare-fun e!3451743 () Bool)

(declare-fun e!3451739 () Bool)

(assert (=> b!5595409 (= e!3451743 e!3451739)))

(declare-fun res!2373638 () Bool)

(assert (=> b!5595409 (=> res!2373638 e!3451739)))

(assert (=> b!5595409 (= res!2373638 call!419465)))

(declare-fun b!5595410 () Bool)

(assert (=> b!5595410 (= e!3451739 (not (= (head!11933 s!2326) (c!980755 r!7292))))))

(declare-fun b!5595411 () Bool)

(declare-fun res!2373632 () Bool)

(declare-fun e!3451741 () Bool)

(assert (=> b!5595411 (=> res!2373632 e!3451741)))

(assert (=> b!5595411 (= res!2373632 e!3451744)))

(declare-fun res!2373639 () Bool)

(assert (=> b!5595411 (=> (not res!2373639) (not e!3451744))))

(assert (=> b!5595411 (= res!2373639 lt!2256219)))

(declare-fun b!5595412 () Bool)

(declare-fun e!3451742 () Bool)

(assert (=> b!5595412 (= e!3451742 (not lt!2256219))))

(declare-fun b!5595413 () Bool)

(assert (=> b!5595413 (= e!3451741 e!3451743)))

(declare-fun res!2373636 () Bool)

(assert (=> b!5595413 (=> (not res!2373636) (not e!3451743))))

(assert (=> b!5595413 (= res!2373636 (not lt!2256219))))

(declare-fun b!5595414 () Bool)

(declare-fun res!2373637 () Bool)

(assert (=> b!5595414 (=> (not res!2373637) (not e!3451744))))

(assert (=> b!5595414 (= res!2373637 (isEmpty!34748 (tail!11028 s!2326)))))

(declare-fun b!5595415 () Bool)

(assert (=> b!5595415 (= e!3451738 e!3451742)))

(declare-fun c!980811 () Bool)

(assert (=> b!5595415 (= c!980811 (is-EmptyLang!15582 r!7292))))

(declare-fun b!5595416 () Bool)

(declare-fun res!2373635 () Bool)

(assert (=> b!5595416 (=> res!2373635 e!3451741)))

(assert (=> b!5595416 (= res!2373635 (not (is-ElementMatch!15582 r!7292)))))

(assert (=> b!5595416 (= e!3451742 e!3451741)))

(declare-fun bm!419460 () Bool)

(assert (=> bm!419460 (= call!419465 (isEmpty!34748 s!2326))))

(declare-fun b!5595417 () Bool)

(declare-fun res!2373633 () Bool)

(assert (=> b!5595417 (=> res!2373633 e!3451739)))

(assert (=> b!5595417 (= res!2373633 (not (isEmpty!34748 (tail!11028 s!2326))))))

(declare-fun b!5595418 () Bool)

(declare-fun res!2373634 () Bool)

(assert (=> b!5595418 (=> (not res!2373634) (not e!3451744))))

(assert (=> b!5595418 (= res!2373634 (not call!419465))))

(assert (= (and d!1768561 c!980809) b!5595407))

(assert (= (and d!1768561 (not c!980809)) b!5595406))

(assert (= (and d!1768561 c!980810) b!5595408))

(assert (= (and d!1768561 (not c!980810)) b!5595415))

(assert (= (and b!5595415 c!980811) b!5595412))

(assert (= (and b!5595415 (not c!980811)) b!5595416))

(assert (= (and b!5595416 (not res!2373635)) b!5595411))

(assert (= (and b!5595411 res!2373639) b!5595418))

(assert (= (and b!5595418 res!2373634) b!5595414))

(assert (= (and b!5595414 res!2373637) b!5595405))

(assert (= (and b!5595411 (not res!2373632)) b!5595413))

(assert (= (and b!5595413 res!2373636) b!5595409))

(assert (= (and b!5595409 (not res!2373638)) b!5595417))

(assert (= (and b!5595417 (not res!2373633)) b!5595410))

(assert (= (or b!5595408 b!5595409 b!5595418) bm!419460))

(declare-fun m!6574700 () Bool)

(assert (=> b!5595406 m!6574700))

(assert (=> b!5595406 m!6574700))

(declare-fun m!6574702 () Bool)

(assert (=> b!5595406 m!6574702))

(declare-fun m!6574704 () Bool)

(assert (=> b!5595406 m!6574704))

(assert (=> b!5595406 m!6574702))

(assert (=> b!5595406 m!6574704))

(declare-fun m!6574706 () Bool)

(assert (=> b!5595406 m!6574706))

(assert (=> b!5595410 m!6574700))

(assert (=> b!5595405 m!6574700))

(assert (=> b!5595414 m!6574704))

(assert (=> b!5595414 m!6574704))

(declare-fun m!6574708 () Bool)

(assert (=> b!5595414 m!6574708))

(assert (=> d!1768561 m!6574684))

(assert (=> d!1768561 m!6574546))

(declare-fun m!6574710 () Bool)

(assert (=> b!5595407 m!6574710))

(assert (=> b!5595417 m!6574704))

(assert (=> b!5595417 m!6574704))

(assert (=> b!5595417 m!6574708))

(assert (=> bm!419460 m!6574684))

(assert (=> b!5595146 d!1768561))

(declare-fun d!1768567 () Bool)

(assert (=> d!1768567 (= (matchR!7767 r!7292 s!2326) (matchRSpec!2685 r!7292 s!2326))))

(declare-fun lt!2256222 () Unit!155748)

(declare-fun choose!42428 (Regex!15582 List!63046) Unit!155748)

(assert (=> d!1768567 (= lt!2256222 (choose!42428 r!7292 s!2326))))

(assert (=> d!1768567 (validRegex!7318 r!7292)))

(assert (=> d!1768567 (= (mainMatchTheorem!2685 r!7292 s!2326) lt!2256222)))

(declare-fun bs!1293709 () Bool)

(assert (= bs!1293709 d!1768567))

(assert (=> bs!1293709 m!6574490))

(assert (=> bs!1293709 m!6574488))

(declare-fun m!6574712 () Bool)

(assert (=> bs!1293709 m!6574712))

(assert (=> bs!1293709 m!6574546))

(assert (=> b!5595146 d!1768567))

(declare-fun d!1768571 () Bool)

(declare-fun c!980814 () Bool)

(assert (=> d!1768571 (= c!980814 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3451747 () Bool)

(assert (=> d!1768571 (= (matchZipper!1720 lt!2256097 (t!376328 s!2326)) e!3451747)))

(declare-fun b!5595423 () Bool)

(declare-fun nullableZipper!1577 ((Set Context!9932)) Bool)

(assert (=> b!5595423 (= e!3451747 (nullableZipper!1577 lt!2256097))))

(declare-fun b!5595424 () Bool)

(declare-fun derivationStepZipper!1681 ((Set Context!9932) C!31434) (Set Context!9932))

(assert (=> b!5595424 (= e!3451747 (matchZipper!1720 (derivationStepZipper!1681 lt!2256097 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768571 c!980814) b!5595423))

(assert (= (and d!1768571 (not c!980814)) b!5595424))

(declare-fun m!6574714 () Bool)

(assert (=> d!1768571 m!6574714))

(declare-fun m!6574716 () Bool)

(assert (=> b!5595423 m!6574716))

(declare-fun m!6574718 () Bool)

(assert (=> b!5595424 m!6574718))

(assert (=> b!5595424 m!6574718))

(declare-fun m!6574720 () Bool)

(assert (=> b!5595424 m!6574720))

(declare-fun m!6574722 () Bool)

(assert (=> b!5595424 m!6574722))

(assert (=> b!5595424 m!6574720))

(assert (=> b!5595424 m!6574722))

(declare-fun m!6574724 () Bool)

(assert (=> b!5595424 m!6574724))

(assert (=> b!5595147 d!1768571))

(declare-fun bm!419473 () Bool)

(declare-fun call!419479 () (Set Context!9932))

(declare-fun call!419482 () (Set Context!9932))

(assert (=> bm!419473 (= call!419479 call!419482)))

(declare-fun b!5595457 () Bool)

(declare-fun e!3451771 () (Set Context!9932))

(declare-fun call!419478 () (Set Context!9932))

(declare-fun call!419483 () (Set Context!9932))

(assert (=> b!5595457 (= e!3451771 (set.union call!419478 call!419483))))

(declare-fun b!5595458 () Bool)

(declare-fun e!3451766 () (Set Context!9932))

(declare-fun e!3451768 () (Set Context!9932))

(assert (=> b!5595458 (= e!3451766 e!3451768)))

(declare-fun c!980832 () Bool)

(assert (=> b!5595458 (= c!980832 (is-Concat!24427 (regTwo!31677 (regOne!31676 r!7292))))))

(declare-fun b!5595459 () Bool)

(assert (=> b!5595459 (= e!3451766 (set.union call!419478 call!419482))))

(declare-fun call!419480 () List!63045)

(declare-fun c!980828 () Bool)

(declare-fun bm!419474 () Bool)

(declare-fun $colon$colon!1645 (List!63045 Regex!15582) List!63045)

(assert (=> bm!419474 (= call!419480 ($colon$colon!1645 (exprs!5466 lt!2256087) (ite (or c!980828 c!980832) (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (regTwo!31677 (regOne!31676 r!7292)))))))

(declare-fun b!5595460 () Bool)

(declare-fun e!3451769 () (Set Context!9932))

(assert (=> b!5595460 (= e!3451769 (set.insert lt!2256087 (as set.empty (Set Context!9932))))))

(declare-fun b!5595461 () Bool)

(assert (=> b!5595461 (= e!3451769 e!3451771)))

(declare-fun c!980830 () Bool)

(assert (=> b!5595461 (= c!980830 (is-Union!15582 (regTwo!31677 (regOne!31676 r!7292))))))

(declare-fun b!5595462 () Bool)

(declare-fun e!3451767 () (Set Context!9932))

(assert (=> b!5595462 (= e!3451767 (as set.empty (Set Context!9932)))))

(declare-fun bm!419475 () Bool)

(declare-fun call!419481 () List!63045)

(assert (=> bm!419475 (= call!419481 call!419480)))

(declare-fun b!5595463 () Bool)

(assert (=> b!5595463 (= e!3451768 call!419479)))

(declare-fun d!1768573 () Bool)

(declare-fun c!980831 () Bool)

(assert (=> d!1768573 (= c!980831 (and (is-ElementMatch!15582 (regTwo!31677 (regOne!31676 r!7292))) (= (c!980755 (regTwo!31677 (regOne!31676 r!7292))) (h!69370 s!2326))))))

(assert (=> d!1768573 (= (derivationStepZipperDown!924 (regTwo!31677 (regOne!31676 r!7292)) lt!2256087 (h!69370 s!2326)) e!3451769)))

(declare-fun b!5595456 () Bool)

(declare-fun e!3451770 () Bool)

(assert (=> b!5595456 (= e!3451770 (nullable!5614 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))))))

(declare-fun b!5595464 () Bool)

(assert (=> b!5595464 (= e!3451767 call!419479)))

(declare-fun bm!419476 () Bool)

(assert (=> bm!419476 (= call!419483 (derivationStepZipperDown!924 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292)))))) (ite (or c!980830 c!980828) lt!2256087 (Context!9933 call!419481)) (h!69370 s!2326)))))

(declare-fun bm!419477 () Bool)

(assert (=> bm!419477 (= call!419482 call!419483)))

(declare-fun b!5595465 () Bool)

(declare-fun c!980829 () Bool)

(assert (=> b!5595465 (= c!980829 (is-Star!15582 (regTwo!31677 (regOne!31676 r!7292))))))

(assert (=> b!5595465 (= e!3451768 e!3451767)))

(declare-fun b!5595466 () Bool)

(assert (=> b!5595466 (= c!980828 e!3451770)))

(declare-fun res!2373645 () Bool)

(assert (=> b!5595466 (=> (not res!2373645) (not e!3451770))))

(assert (=> b!5595466 (= res!2373645 (is-Concat!24427 (regTwo!31677 (regOne!31676 r!7292))))))

(assert (=> b!5595466 (= e!3451771 e!3451766)))

(declare-fun bm!419478 () Bool)

(assert (=> bm!419478 (= call!419478 (derivationStepZipperDown!924 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))) (ite c!980830 lt!2256087 (Context!9933 call!419480)) (h!69370 s!2326)))))

(assert (= (and d!1768573 c!980831) b!5595460))

(assert (= (and d!1768573 (not c!980831)) b!5595461))

(assert (= (and b!5595461 c!980830) b!5595457))

(assert (= (and b!5595461 (not c!980830)) b!5595466))

(assert (= (and b!5595466 res!2373645) b!5595456))

(assert (= (and b!5595466 c!980828) b!5595459))

(assert (= (and b!5595466 (not c!980828)) b!5595458))

(assert (= (and b!5595458 c!980832) b!5595463))

(assert (= (and b!5595458 (not c!980832)) b!5595465))

(assert (= (and b!5595465 c!980829) b!5595464))

(assert (= (and b!5595465 (not c!980829)) b!5595462))

(assert (= (or b!5595463 b!5595464) bm!419475))

(assert (= (or b!5595463 b!5595464) bm!419473))

(assert (= (or b!5595459 bm!419475) bm!419474))

(assert (= (or b!5595459 bm!419473) bm!419477))

(assert (= (or b!5595457 bm!419477) bm!419476))

(assert (= (or b!5595457 b!5595459) bm!419478))

(declare-fun m!6574748 () Bool)

(assert (=> bm!419476 m!6574748))

(declare-fun m!6574750 () Bool)

(assert (=> bm!419478 m!6574750))

(declare-fun m!6574752 () Bool)

(assert (=> b!5595460 m!6574752))

(declare-fun m!6574754 () Bool)

(assert (=> bm!419474 m!6574754))

(declare-fun m!6574756 () Bool)

(assert (=> b!5595456 m!6574756))

(assert (=> b!5595128 d!1768573))

(declare-fun bm!419479 () Bool)

(declare-fun call!419485 () (Set Context!9932))

(declare-fun call!419488 () (Set Context!9932))

(assert (=> bm!419479 (= call!419485 call!419488)))

(declare-fun b!5595468 () Bool)

(declare-fun e!3451777 () (Set Context!9932))

(declare-fun call!419484 () (Set Context!9932))

(declare-fun call!419489 () (Set Context!9932))

(assert (=> b!5595468 (= e!3451777 (set.union call!419484 call!419489))))

(declare-fun b!5595469 () Bool)

(declare-fun e!3451772 () (Set Context!9932))

(declare-fun e!3451774 () (Set Context!9932))

(assert (=> b!5595469 (= e!3451772 e!3451774)))

(declare-fun c!980837 () Bool)

(assert (=> b!5595469 (= c!980837 (is-Concat!24427 (regOne!31677 (regOne!31676 r!7292))))))

(declare-fun b!5595470 () Bool)

(assert (=> b!5595470 (= e!3451772 (set.union call!419484 call!419488))))

(declare-fun call!419486 () List!63045)

(declare-fun c!980833 () Bool)

(declare-fun bm!419480 () Bool)

(assert (=> bm!419480 (= call!419486 ($colon$colon!1645 (exprs!5466 lt!2256087) (ite (or c!980833 c!980837) (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (regOne!31677 (regOne!31676 r!7292)))))))

(declare-fun b!5595471 () Bool)

(declare-fun e!3451775 () (Set Context!9932))

(assert (=> b!5595471 (= e!3451775 (set.insert lt!2256087 (as set.empty (Set Context!9932))))))

(declare-fun b!5595472 () Bool)

(assert (=> b!5595472 (= e!3451775 e!3451777)))

(declare-fun c!980835 () Bool)

(assert (=> b!5595472 (= c!980835 (is-Union!15582 (regOne!31677 (regOne!31676 r!7292))))))

(declare-fun b!5595473 () Bool)

(declare-fun e!3451773 () (Set Context!9932))

(assert (=> b!5595473 (= e!3451773 (as set.empty (Set Context!9932)))))

(declare-fun bm!419481 () Bool)

(declare-fun call!419487 () List!63045)

(assert (=> bm!419481 (= call!419487 call!419486)))

(declare-fun b!5595474 () Bool)

(assert (=> b!5595474 (= e!3451774 call!419485)))

(declare-fun d!1768585 () Bool)

(declare-fun c!980836 () Bool)

(assert (=> d!1768585 (= c!980836 (and (is-ElementMatch!15582 (regOne!31677 (regOne!31676 r!7292))) (= (c!980755 (regOne!31677 (regOne!31676 r!7292))) (h!69370 s!2326))))))

(assert (=> d!1768585 (= (derivationStepZipperDown!924 (regOne!31677 (regOne!31676 r!7292)) lt!2256087 (h!69370 s!2326)) e!3451775)))

(declare-fun b!5595467 () Bool)

(declare-fun e!3451776 () Bool)

(assert (=> b!5595467 (= e!3451776 (nullable!5614 (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))))))

(declare-fun b!5595475 () Bool)

(assert (=> b!5595475 (= e!3451773 call!419485)))

(declare-fun bm!419482 () Bool)

(assert (=> bm!419482 (= call!419489 (derivationStepZipperDown!924 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292)))))) (ite (or c!980835 c!980833) lt!2256087 (Context!9933 call!419487)) (h!69370 s!2326)))))

(declare-fun bm!419483 () Bool)

(assert (=> bm!419483 (= call!419488 call!419489)))

(declare-fun b!5595476 () Bool)

(declare-fun c!980834 () Bool)

(assert (=> b!5595476 (= c!980834 (is-Star!15582 (regOne!31677 (regOne!31676 r!7292))))))

(assert (=> b!5595476 (= e!3451774 e!3451773)))

(declare-fun b!5595477 () Bool)

(assert (=> b!5595477 (= c!980833 e!3451776)))

(declare-fun res!2373646 () Bool)

(assert (=> b!5595477 (=> (not res!2373646) (not e!3451776))))

(assert (=> b!5595477 (= res!2373646 (is-Concat!24427 (regOne!31677 (regOne!31676 r!7292))))))

(assert (=> b!5595477 (= e!3451777 e!3451772)))

(declare-fun bm!419484 () Bool)

(assert (=> bm!419484 (= call!419484 (derivationStepZipperDown!924 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))) (ite c!980835 lt!2256087 (Context!9933 call!419486)) (h!69370 s!2326)))))

(assert (= (and d!1768585 c!980836) b!5595471))

(assert (= (and d!1768585 (not c!980836)) b!5595472))

(assert (= (and b!5595472 c!980835) b!5595468))

(assert (= (and b!5595472 (not c!980835)) b!5595477))

(assert (= (and b!5595477 res!2373646) b!5595467))

(assert (= (and b!5595477 c!980833) b!5595470))

(assert (= (and b!5595477 (not c!980833)) b!5595469))

(assert (= (and b!5595469 c!980837) b!5595474))

(assert (= (and b!5595469 (not c!980837)) b!5595476))

(assert (= (and b!5595476 c!980834) b!5595475))

(assert (= (and b!5595476 (not c!980834)) b!5595473))

(assert (= (or b!5595474 b!5595475) bm!419481))

(assert (= (or b!5595474 b!5595475) bm!419479))

(assert (= (or b!5595470 bm!419481) bm!419480))

(assert (= (or b!5595470 bm!419479) bm!419483))

(assert (= (or b!5595468 bm!419483) bm!419482))

(assert (= (or b!5595468 b!5595470) bm!419484))

(declare-fun m!6574758 () Bool)

(assert (=> bm!419482 m!6574758))

(declare-fun m!6574760 () Bool)

(assert (=> bm!419484 m!6574760))

(assert (=> b!5595471 m!6574752))

(declare-fun m!6574762 () Bool)

(assert (=> bm!419480 m!6574762))

(declare-fun m!6574764 () Bool)

(assert (=> b!5595467 m!6574764))

(assert (=> b!5595128 d!1768585))

(declare-fun d!1768587 () Bool)

(declare-fun e!3451783 () Bool)

(assert (=> d!1768587 e!3451783))

(declare-fun res!2373652 () Bool)

(assert (=> d!1768587 (=> (not res!2373652) (not e!3451783))))

(declare-fun lt!2256234 () List!63047)

(declare-fun noDuplicate!1558 (List!63047) Bool)

(assert (=> d!1768587 (= res!2373652 (noDuplicate!1558 lt!2256234))))

(declare-fun choose!42429 ((Set Context!9932)) List!63047)

(assert (=> d!1768587 (= lt!2256234 (choose!42429 z!1189))))

(assert (=> d!1768587 (= (toList!9366 z!1189) lt!2256234)))

(declare-fun b!5595483 () Bool)

(declare-fun content!11359 (List!63047) (Set Context!9932))

(assert (=> b!5595483 (= e!3451783 (= (content!11359 lt!2256234) z!1189))))

(assert (= (and d!1768587 res!2373652) b!5595483))

(declare-fun m!6574772 () Bool)

(assert (=> d!1768587 m!6574772))

(declare-fun m!6574774 () Bool)

(assert (=> d!1768587 m!6574774))

(declare-fun m!6574776 () Bool)

(assert (=> b!5595483 m!6574776))

(assert (=> b!5595145 d!1768587))

(declare-fun d!1768591 () Bool)

(declare-fun c!980838 () Bool)

(assert (=> d!1768591 (= c!980838 (isEmpty!34748 s!2326))))

(declare-fun e!3451784 () Bool)

(assert (=> d!1768591 (= (matchZipper!1720 z!1189 s!2326) e!3451784)))

(declare-fun b!5595484 () Bool)

(assert (=> b!5595484 (= e!3451784 (nullableZipper!1577 z!1189))))

(declare-fun b!5595485 () Bool)

(assert (=> b!5595485 (= e!3451784 (matchZipper!1720 (derivationStepZipper!1681 z!1189 (head!11933 s!2326)) (tail!11028 s!2326)))))

(assert (= (and d!1768591 c!980838) b!5595484))

(assert (= (and d!1768591 (not c!980838)) b!5595485))

(assert (=> d!1768591 m!6574684))

(declare-fun m!6574778 () Bool)

(assert (=> b!5595484 m!6574778))

(assert (=> b!5595485 m!6574700))

(assert (=> b!5595485 m!6574700))

(declare-fun m!6574780 () Bool)

(assert (=> b!5595485 m!6574780))

(assert (=> b!5595485 m!6574704))

(assert (=> b!5595485 m!6574780))

(assert (=> b!5595485 m!6574704))

(declare-fun m!6574782 () Bool)

(assert (=> b!5595485 m!6574782))

(assert (=> b!5595144 d!1768591))

(declare-fun d!1768593 () Bool)

(declare-fun lambda!300422 () Int)

(declare-fun forall!14749 (List!63045 Int) Bool)

(assert (=> d!1768593 (= (inv!82203 setElem!37306) (forall!14749 (exprs!5466 setElem!37306) lambda!300422))))

(declare-fun bs!1293711 () Bool)

(assert (= bs!1293711 d!1768593))

(declare-fun m!6574784 () Bool)

(assert (=> bs!1293711 m!6574784))

(assert (=> setNonEmpty!37306 d!1768593))

(declare-fun bs!1293712 () Bool)

(declare-fun d!1768595 () Bool)

(assert (= bs!1293712 (and d!1768595 d!1768593)))

(declare-fun lambda!300425 () Int)

(assert (=> bs!1293712 (= lambda!300425 lambda!300422)))

(declare-fun e!3451809 () Bool)

(assert (=> d!1768595 e!3451809))

(declare-fun res!2373660 () Bool)

(assert (=> d!1768595 (=> (not res!2373660) (not e!3451809))))

(declare-fun lt!2256237 () Regex!15582)

(assert (=> d!1768595 (= res!2373660 (validRegex!7318 lt!2256237))))

(declare-fun e!3451813 () Regex!15582)

(assert (=> d!1768595 (= lt!2256237 e!3451813)))

(declare-fun c!980859 () Bool)

(declare-fun e!3451812 () Bool)

(assert (=> d!1768595 (= c!980859 e!3451812)))

(declare-fun res!2373659 () Bool)

(assert (=> d!1768595 (=> (not res!2373659) (not e!3451812))))

(assert (=> d!1768595 (= res!2373659 (is-Cons!62921 (exprs!5466 (h!69371 zl!343))))))

(assert (=> d!1768595 (forall!14749 (exprs!5466 (h!69371 zl!343)) lambda!300425)))

(assert (=> d!1768595 (= (generalisedConcat!1197 (exprs!5466 (h!69371 zl!343))) lt!2256237)))

(declare-fun b!5595528 () Bool)

(declare-fun e!3451811 () Bool)

(declare-fun isConcat!659 (Regex!15582) Bool)

(assert (=> b!5595528 (= e!3451811 (isConcat!659 lt!2256237))))

(declare-fun b!5595529 () Bool)

(declare-fun e!3451810 () Bool)

(declare-fun isEmptyExpr!1136 (Regex!15582) Bool)

(assert (=> b!5595529 (= e!3451810 (isEmptyExpr!1136 lt!2256237))))

(declare-fun b!5595530 () Bool)

(assert (=> b!5595530 (= e!3451813 (h!69369 (exprs!5466 (h!69371 zl!343))))))

(declare-fun b!5595531 () Bool)

(declare-fun head!11936 (List!63045) Regex!15582)

(assert (=> b!5595531 (= e!3451811 (= lt!2256237 (head!11936 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5595532 () Bool)

(assert (=> b!5595532 (= e!3451812 (isEmpty!34744 (t!376327 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5595533 () Bool)

(declare-fun e!3451814 () Regex!15582)

(assert (=> b!5595533 (= e!3451813 e!3451814)))

(declare-fun c!980858 () Bool)

(assert (=> b!5595533 (= c!980858 (is-Cons!62921 (exprs!5466 (h!69371 zl!343))))))

(declare-fun b!5595534 () Bool)

(assert (=> b!5595534 (= e!3451814 (Concat!24427 (h!69369 (exprs!5466 (h!69371 zl!343))) (generalisedConcat!1197 (t!376327 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5595535 () Bool)

(assert (=> b!5595535 (= e!3451810 e!3451811)))

(declare-fun c!980860 () Bool)

(declare-fun tail!11031 (List!63045) List!63045)

(assert (=> b!5595535 (= c!980860 (isEmpty!34744 (tail!11031 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5595536 () Bool)

(assert (=> b!5595536 (= e!3451809 e!3451810)))

(declare-fun c!980857 () Bool)

(assert (=> b!5595536 (= c!980857 (isEmpty!34744 (exprs!5466 (h!69371 zl!343))))))

(declare-fun b!5595537 () Bool)

(assert (=> b!5595537 (= e!3451814 EmptyExpr!15582)))

(assert (= (and d!1768595 res!2373659) b!5595532))

(assert (= (and d!1768595 c!980859) b!5595530))

(assert (= (and d!1768595 (not c!980859)) b!5595533))

(assert (= (and b!5595533 c!980858) b!5595534))

(assert (= (and b!5595533 (not c!980858)) b!5595537))

(assert (= (and d!1768595 res!2373660) b!5595536))

(assert (= (and b!5595536 c!980857) b!5595529))

(assert (= (and b!5595536 (not c!980857)) b!5595535))

(assert (= (and b!5595535 c!980860) b!5595531))

(assert (= (and b!5595535 (not c!980860)) b!5595528))

(declare-fun m!6574786 () Bool)

(assert (=> b!5595531 m!6574786))

(declare-fun m!6574788 () Bool)

(assert (=> b!5595536 m!6574788))

(declare-fun m!6574790 () Bool)

(assert (=> b!5595534 m!6574790))

(declare-fun m!6574792 () Bool)

(assert (=> d!1768595 m!6574792))

(declare-fun m!6574794 () Bool)

(assert (=> d!1768595 m!6574794))

(assert (=> b!5595532 m!6574482))

(declare-fun m!6574796 () Bool)

(assert (=> b!5595535 m!6574796))

(assert (=> b!5595535 m!6574796))

(declare-fun m!6574798 () Bool)

(assert (=> b!5595535 m!6574798))

(declare-fun m!6574800 () Bool)

(assert (=> b!5595529 m!6574800))

(declare-fun m!6574802 () Bool)

(assert (=> b!5595528 m!6574802))

(assert (=> b!5595142 d!1768595))

(declare-fun d!1768597 () Bool)

(declare-fun e!3451817 () Bool)

(assert (=> d!1768597 (= (matchZipper!1720 (set.union lt!2256097 lt!2256084) (t!376328 s!2326)) e!3451817)))

(declare-fun res!2373663 () Bool)

(assert (=> d!1768597 (=> res!2373663 e!3451817)))

(assert (=> d!1768597 (= res!2373663 (matchZipper!1720 lt!2256097 (t!376328 s!2326)))))

(declare-fun lt!2256240 () Unit!155748)

(declare-fun choose!42431 ((Set Context!9932) (Set Context!9932) List!63046) Unit!155748)

(assert (=> d!1768597 (= lt!2256240 (choose!42431 lt!2256097 lt!2256084 (t!376328 s!2326)))))

(assert (=> d!1768597 (= (lemmaZipperConcatMatchesSameAsBothZippers!607 lt!2256097 lt!2256084 (t!376328 s!2326)) lt!2256240)))

(declare-fun b!5595540 () Bool)

(assert (=> b!5595540 (= e!3451817 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(assert (= (and d!1768597 (not res!2373663)) b!5595540))

(assert (=> d!1768597 m!6574522))

(assert (=> d!1768597 m!6574466))

(declare-fun m!6574804 () Bool)

(assert (=> d!1768597 m!6574804))

(assert (=> b!5595540 m!6574448))

(assert (=> b!5595143 d!1768597))

(assert (=> b!5595143 d!1768571))

(declare-fun d!1768599 () Bool)

(declare-fun c!980861 () Bool)

(assert (=> d!1768599 (= c!980861 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3451818 () Bool)

(assert (=> d!1768599 (= (matchZipper!1720 (set.union lt!2256097 lt!2256084) (t!376328 s!2326)) e!3451818)))

(declare-fun b!5595541 () Bool)

(assert (=> b!5595541 (= e!3451818 (nullableZipper!1577 (set.union lt!2256097 lt!2256084)))))

(declare-fun b!5595542 () Bool)

(assert (=> b!5595542 (= e!3451818 (matchZipper!1720 (derivationStepZipper!1681 (set.union lt!2256097 lt!2256084) (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768599 c!980861) b!5595541))

(assert (= (and d!1768599 (not c!980861)) b!5595542))

(assert (=> d!1768599 m!6574714))

(declare-fun m!6574806 () Bool)

(assert (=> b!5595541 m!6574806))

(assert (=> b!5595542 m!6574718))

(assert (=> b!5595542 m!6574718))

(declare-fun m!6574808 () Bool)

(assert (=> b!5595542 m!6574808))

(assert (=> b!5595542 m!6574722))

(assert (=> b!5595542 m!6574808))

(assert (=> b!5595542 m!6574722))

(declare-fun m!6574810 () Bool)

(assert (=> b!5595542 m!6574810))

(assert (=> b!5595143 d!1768599))

(declare-fun d!1768601 () Bool)

(declare-fun choose!42433 ((Set Context!9932) Int) (Set Context!9932))

(assert (=> d!1768601 (= (flatMap!1195 lt!2256088 lambda!300389) (choose!42433 lt!2256088 lambda!300389))))

(declare-fun bs!1293713 () Bool)

(assert (= bs!1293713 d!1768601))

(declare-fun m!6574812 () Bool)

(assert (=> bs!1293713 m!6574812))

(assert (=> b!5595159 d!1768601))

(declare-fun d!1768603 () Bool)

(declare-fun nullableFct!1723 (Regex!15582) Bool)

(assert (=> d!1768603 (= (nullable!5614 (regTwo!31677 (regOne!31676 r!7292))) (nullableFct!1723 (regTwo!31677 (regOne!31676 r!7292))))))

(declare-fun bs!1293714 () Bool)

(assert (= bs!1293714 d!1768603))

(declare-fun m!6574814 () Bool)

(assert (=> bs!1293714 m!6574814))

(assert (=> b!5595159 d!1768603))

(declare-fun d!1768605 () Bool)

(declare-fun dynLambda!24612 (Int Context!9932) (Set Context!9932))

(assert (=> d!1768605 (= (flatMap!1195 lt!2256103 lambda!300389) (dynLambda!24612 lambda!300389 lt!2256105))))

(declare-fun lt!2256243 () Unit!155748)

(declare-fun choose!42434 ((Set Context!9932) Context!9932 Int) Unit!155748)

(assert (=> d!1768605 (= lt!2256243 (choose!42434 lt!2256103 lt!2256105 lambda!300389))))

(assert (=> d!1768605 (= lt!2256103 (set.insert lt!2256105 (as set.empty (Set Context!9932))))))

(assert (=> d!1768605 (= (lemmaFlatMapOnSingletonSet!727 lt!2256103 lt!2256105 lambda!300389) lt!2256243)))

(declare-fun b_lambda!212027 () Bool)

(assert (=> (not b_lambda!212027) (not d!1768605)))

(declare-fun bs!1293715 () Bool)

(assert (= bs!1293715 d!1768605))

(assert (=> bs!1293715 m!6574506))

(declare-fun m!6574816 () Bool)

(assert (=> bs!1293715 m!6574816))

(declare-fun m!6574818 () Bool)

(assert (=> bs!1293715 m!6574818))

(assert (=> bs!1293715 m!6574500))

(assert (=> b!5595159 d!1768605))

(declare-fun d!1768607 () Bool)

(assert (=> d!1768607 (= (nullable!5614 (regOne!31676 r!7292)) (nullableFct!1723 (regOne!31676 r!7292)))))

(declare-fun bs!1293716 () Bool)

(assert (= bs!1293716 d!1768607))

(declare-fun m!6574820 () Bool)

(assert (=> bs!1293716 m!6574820))

(assert (=> b!5595159 d!1768607))

(declare-fun d!1768609 () Bool)

(assert (=> d!1768609 (= (flatMap!1195 lt!2256103 lambda!300389) (choose!42433 lt!2256103 lambda!300389))))

(declare-fun bs!1293717 () Bool)

(assert (= bs!1293717 d!1768609))

(declare-fun m!6574822 () Bool)

(assert (=> bs!1293717 m!6574822))

(assert (=> b!5595159 d!1768609))

(declare-fun d!1768611 () Bool)

(assert (=> d!1768611 (= (flatMap!1195 lt!2256088 lambda!300389) (dynLambda!24612 lambda!300389 lt!2256099))))

(declare-fun lt!2256244 () Unit!155748)

(assert (=> d!1768611 (= lt!2256244 (choose!42434 lt!2256088 lt!2256099 lambda!300389))))

(assert (=> d!1768611 (= lt!2256088 (set.insert lt!2256099 (as set.empty (Set Context!9932))))))

(assert (=> d!1768611 (= (lemmaFlatMapOnSingletonSet!727 lt!2256088 lt!2256099 lambda!300389) lt!2256244)))

(declare-fun b_lambda!212029 () Bool)

(assert (=> (not b_lambda!212029) (not d!1768611)))

(declare-fun bs!1293718 () Bool)

(assert (= bs!1293718 d!1768611))

(assert (=> bs!1293718 m!6574512))

(declare-fun m!6574824 () Bool)

(assert (=> bs!1293718 m!6574824))

(declare-fun m!6574826 () Bool)

(assert (=> bs!1293718 m!6574826))

(assert (=> bs!1293718 m!6574496))

(assert (=> b!5595159 d!1768611))

(declare-fun b!5595564 () Bool)

(declare-fun e!3451832 () (Set Context!9932))

(declare-fun call!419510 () (Set Context!9932))

(assert (=> b!5595564 (= e!3451832 (set.union call!419510 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 lt!2256105))) (h!69370 s!2326))))))

(declare-fun b!5595565 () Bool)

(declare-fun e!3451833 () Bool)

(assert (=> b!5595565 (= e!3451833 (nullable!5614 (h!69369 (exprs!5466 lt!2256105))))))

(declare-fun d!1768613 () Bool)

(declare-fun c!980872 () Bool)

(assert (=> d!1768613 (= c!980872 e!3451833)))

(declare-fun res!2373667 () Bool)

(assert (=> d!1768613 (=> (not res!2373667) (not e!3451833))))

(assert (=> d!1768613 (= res!2373667 (is-Cons!62921 (exprs!5466 lt!2256105)))))

(assert (=> d!1768613 (= (derivationStepZipperUp!850 lt!2256105 (h!69370 s!2326)) e!3451832)))

(declare-fun bm!419505 () Bool)

(assert (=> bm!419505 (= call!419510 (derivationStepZipperDown!924 (h!69369 (exprs!5466 lt!2256105)) (Context!9933 (t!376327 (exprs!5466 lt!2256105))) (h!69370 s!2326)))))

(declare-fun b!5595566 () Bool)

(declare-fun e!3451831 () (Set Context!9932))

(assert (=> b!5595566 (= e!3451831 (as set.empty (Set Context!9932)))))

(declare-fun b!5595567 () Bool)

(assert (=> b!5595567 (= e!3451831 call!419510)))

(declare-fun b!5595568 () Bool)

(assert (=> b!5595568 (= e!3451832 e!3451831)))

(declare-fun c!980871 () Bool)

(assert (=> b!5595568 (= c!980871 (is-Cons!62921 (exprs!5466 lt!2256105)))))

(assert (= (and d!1768613 res!2373667) b!5595565))

(assert (= (and d!1768613 c!980872) b!5595564))

(assert (= (and d!1768613 (not c!980872)) b!5595568))

(assert (= (and b!5595568 c!980871) b!5595567))

(assert (= (and b!5595568 (not c!980871)) b!5595566))

(assert (= (or b!5595564 b!5595567) bm!419505))

(declare-fun m!6574828 () Bool)

(assert (=> b!5595564 m!6574828))

(declare-fun m!6574830 () Bool)

(assert (=> b!5595565 m!6574830))

(declare-fun m!6574832 () Bool)

(assert (=> bm!419505 m!6574832))

(assert (=> b!5595159 d!1768613))

(declare-fun d!1768615 () Bool)

(assert (=> d!1768615 (= (nullable!5614 (regOne!31677 (regOne!31676 r!7292))) (nullableFct!1723 (regOne!31677 (regOne!31676 r!7292))))))

(declare-fun bs!1293719 () Bool)

(assert (= bs!1293719 d!1768615))

(declare-fun m!6574834 () Bool)

(assert (=> bs!1293719 m!6574834))

(assert (=> b!5595159 d!1768615))

(declare-fun e!3451835 () (Set Context!9932))

(declare-fun call!419511 () (Set Context!9932))

(declare-fun b!5595569 () Bool)

(assert (=> b!5595569 (= e!3451835 (set.union call!419511 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 lt!2256099))) (h!69370 s!2326))))))

(declare-fun b!5595570 () Bool)

(declare-fun e!3451836 () Bool)

(assert (=> b!5595570 (= e!3451836 (nullable!5614 (h!69369 (exprs!5466 lt!2256099))))))

(declare-fun d!1768617 () Bool)

(declare-fun c!980874 () Bool)

(assert (=> d!1768617 (= c!980874 e!3451836)))

(declare-fun res!2373668 () Bool)

(assert (=> d!1768617 (=> (not res!2373668) (not e!3451836))))

(assert (=> d!1768617 (= res!2373668 (is-Cons!62921 (exprs!5466 lt!2256099)))))

(assert (=> d!1768617 (= (derivationStepZipperUp!850 lt!2256099 (h!69370 s!2326)) e!3451835)))

(declare-fun bm!419506 () Bool)

(assert (=> bm!419506 (= call!419511 (derivationStepZipperDown!924 (h!69369 (exprs!5466 lt!2256099)) (Context!9933 (t!376327 (exprs!5466 lt!2256099))) (h!69370 s!2326)))))

(declare-fun b!5595571 () Bool)

(declare-fun e!3451834 () (Set Context!9932))

(assert (=> b!5595571 (= e!3451834 (as set.empty (Set Context!9932)))))

(declare-fun b!5595572 () Bool)

(assert (=> b!5595572 (= e!3451834 call!419511)))

(declare-fun b!5595573 () Bool)

(assert (=> b!5595573 (= e!3451835 e!3451834)))

(declare-fun c!980873 () Bool)

(assert (=> b!5595573 (= c!980873 (is-Cons!62921 (exprs!5466 lt!2256099)))))

(assert (= (and d!1768617 res!2373668) b!5595570))

(assert (= (and d!1768617 c!980874) b!5595569))

(assert (= (and d!1768617 (not c!980874)) b!5595573))

(assert (= (and b!5595573 c!980873) b!5595572))

(assert (= (and b!5595573 (not c!980873)) b!5595571))

(assert (= (or b!5595569 b!5595572) bm!419506))

(declare-fun m!6574838 () Bool)

(assert (=> b!5595569 m!6574838))

(declare-fun m!6574840 () Bool)

(assert (=> b!5595570 m!6574840))

(declare-fun m!6574844 () Bool)

(assert (=> bm!419506 m!6574844))

(assert (=> b!5595159 d!1768617))

(declare-fun d!1768619 () Bool)

(declare-fun c!980875 () Bool)

(assert (=> d!1768619 (= c!980875 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3451837 () Bool)

(assert (=> d!1768619 (= (matchZipper!1720 lt!2256084 (t!376328 s!2326)) e!3451837)))

(declare-fun b!5595574 () Bool)

(assert (=> b!5595574 (= e!3451837 (nullableZipper!1577 lt!2256084))))

(declare-fun b!5595575 () Bool)

(assert (=> b!5595575 (= e!3451837 (matchZipper!1720 (derivationStepZipper!1681 lt!2256084 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768619 c!980875) b!5595574))

(assert (= (and d!1768619 (not c!980875)) b!5595575))

(assert (=> d!1768619 m!6574714))

(declare-fun m!6574852 () Bool)

(assert (=> b!5595574 m!6574852))

(assert (=> b!5595575 m!6574718))

(assert (=> b!5595575 m!6574718))

(declare-fun m!6574854 () Bool)

(assert (=> b!5595575 m!6574854))

(assert (=> b!5595575 m!6574722))

(assert (=> b!5595575 m!6574854))

(assert (=> b!5595575 m!6574722))

(declare-fun m!6574856 () Bool)

(assert (=> b!5595575 m!6574856))

(assert (=> b!5595139 d!1768619))

(declare-fun e!3451844 () Bool)

(declare-fun d!1768623 () Bool)

(assert (=> d!1768623 (= (matchZipper!1720 (set.union lt!2256095 lt!2256084) (t!376328 s!2326)) e!3451844)))

(declare-fun res!2373670 () Bool)

(assert (=> d!1768623 (=> res!2373670 e!3451844)))

(assert (=> d!1768623 (= res!2373670 (matchZipper!1720 lt!2256095 (t!376328 s!2326)))))

(declare-fun lt!2256245 () Unit!155748)

(assert (=> d!1768623 (= lt!2256245 (choose!42431 lt!2256095 lt!2256084 (t!376328 s!2326)))))

(assert (=> d!1768623 (= (lemmaZipperConcatMatchesSameAsBothZippers!607 lt!2256095 lt!2256084 (t!376328 s!2326)) lt!2256245)))

(declare-fun b!5595587 () Bool)

(assert (=> b!5595587 (= e!3451844 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(assert (= (and d!1768623 (not res!2373670)) b!5595587))

(assert (=> d!1768623 m!6574526))

(assert (=> d!1768623 m!6574534))

(declare-fun m!6574858 () Bool)

(assert (=> d!1768623 m!6574858))

(assert (=> b!5595587 m!6574448))

(assert (=> b!5595141 d!1768623))

(declare-fun d!1768625 () Bool)

(declare-fun c!980881 () Bool)

(assert (=> d!1768625 (= c!980881 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3451845 () Bool)

(assert (=> d!1768625 (= (matchZipper!1720 (set.union lt!2256095 lt!2256084) (t!376328 s!2326)) e!3451845)))

(declare-fun b!5595588 () Bool)

(assert (=> b!5595588 (= e!3451845 (nullableZipper!1577 (set.union lt!2256095 lt!2256084)))))

(declare-fun b!5595589 () Bool)

(assert (=> b!5595589 (= e!3451845 (matchZipper!1720 (derivationStepZipper!1681 (set.union lt!2256095 lt!2256084) (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768625 c!980881) b!5595588))

(assert (= (and d!1768625 (not c!980881)) b!5595589))

(assert (=> d!1768625 m!6574714))

(declare-fun m!6574860 () Bool)

(assert (=> b!5595588 m!6574860))

(assert (=> b!5595589 m!6574718))

(assert (=> b!5595589 m!6574718))

(declare-fun m!6574862 () Bool)

(assert (=> b!5595589 m!6574862))

(assert (=> b!5595589 m!6574722))

(assert (=> b!5595589 m!6574862))

(assert (=> b!5595589 m!6574722))

(declare-fun m!6574864 () Bool)

(assert (=> b!5595589 m!6574864))

(assert (=> b!5595141 d!1768625))

(declare-fun d!1768627 () Bool)

(assert (=> d!1768627 (= (isEmpty!34745 (t!376329 zl!343)) (is-Nil!62923 (t!376329 zl!343)))))

(assert (=> b!5595140 d!1768627))

(assert (=> b!5595137 d!1768619))

(declare-fun d!1768629 () Bool)

(declare-fun c!980882 () Bool)

(assert (=> d!1768629 (= c!980882 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3451846 () Bool)

(assert (=> d!1768629 (= (matchZipper!1720 lt!2256094 (t!376328 s!2326)) e!3451846)))

(declare-fun b!5595590 () Bool)

(assert (=> b!5595590 (= e!3451846 (nullableZipper!1577 lt!2256094))))

(declare-fun b!5595591 () Bool)

(assert (=> b!5595591 (= e!3451846 (matchZipper!1720 (derivationStepZipper!1681 lt!2256094 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768629 c!980882) b!5595590))

(assert (= (and d!1768629 (not c!980882)) b!5595591))

(assert (=> d!1768629 m!6574714))

(declare-fun m!6574868 () Bool)

(assert (=> b!5595590 m!6574868))

(assert (=> b!5595591 m!6574718))

(assert (=> b!5595591 m!6574718))

(declare-fun m!6574870 () Bool)

(assert (=> b!5595591 m!6574870))

(assert (=> b!5595591 m!6574722))

(assert (=> b!5595591 m!6574870))

(assert (=> b!5595591 m!6574722))

(declare-fun m!6574874 () Bool)

(assert (=> b!5595591 m!6574874))

(assert (=> b!5595136 d!1768629))

(declare-fun d!1768631 () Bool)

(declare-fun c!980883 () Bool)

(assert (=> d!1768631 (= c!980883 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3451847 () Bool)

(assert (=> d!1768631 (= (matchZipper!1720 lt!2256108 (t!376328 s!2326)) e!3451847)))

(declare-fun b!5595592 () Bool)

(assert (=> b!5595592 (= e!3451847 (nullableZipper!1577 lt!2256108))))

(declare-fun b!5595593 () Bool)

(assert (=> b!5595593 (= e!3451847 (matchZipper!1720 (derivationStepZipper!1681 lt!2256108 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768631 c!980883) b!5595592))

(assert (= (and d!1768631 (not c!980883)) b!5595593))

(assert (=> d!1768631 m!6574714))

(declare-fun m!6574880 () Bool)

(assert (=> b!5595592 m!6574880))

(assert (=> b!5595593 m!6574718))

(assert (=> b!5595593 m!6574718))

(declare-fun m!6574882 () Bool)

(assert (=> b!5595593 m!6574882))

(assert (=> b!5595593 m!6574722))

(assert (=> b!5595593 m!6574882))

(assert (=> b!5595593 m!6574722))

(declare-fun m!6574884 () Bool)

(assert (=> b!5595593 m!6574884))

(assert (=> b!5595136 d!1768631))

(declare-fun d!1768635 () Bool)

(declare-fun c!980884 () Bool)

(assert (=> d!1768635 (= c!980884 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3451848 () Bool)

(assert (=> d!1768635 (= (matchZipper!1720 lt!2256095 (t!376328 s!2326)) e!3451848)))

(declare-fun b!5595594 () Bool)

(assert (=> b!5595594 (= e!3451848 (nullableZipper!1577 lt!2256095))))

(declare-fun b!5595595 () Bool)

(assert (=> b!5595595 (= e!3451848 (matchZipper!1720 (derivationStepZipper!1681 lt!2256095 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768635 c!980884) b!5595594))

(assert (= (and d!1768635 (not c!980884)) b!5595595))

(assert (=> d!1768635 m!6574714))

(declare-fun m!6574886 () Bool)

(assert (=> b!5595594 m!6574886))

(assert (=> b!5595595 m!6574718))

(assert (=> b!5595595 m!6574718))

(declare-fun m!6574888 () Bool)

(assert (=> b!5595595 m!6574888))

(assert (=> b!5595595 m!6574722))

(assert (=> b!5595595 m!6574888))

(assert (=> b!5595595 m!6574722))

(declare-fun m!6574890 () Bool)

(assert (=> b!5595595 m!6574890))

(assert (=> b!5595136 d!1768635))

(declare-fun e!3451849 () Bool)

(declare-fun d!1768637 () Bool)

(assert (=> d!1768637 (= (matchZipper!1720 (set.union lt!2256095 lt!2256097) (t!376328 s!2326)) e!3451849)))

(declare-fun res!2373671 () Bool)

(assert (=> d!1768637 (=> res!2373671 e!3451849)))

(assert (=> d!1768637 (= res!2373671 (matchZipper!1720 lt!2256095 (t!376328 s!2326)))))

(declare-fun lt!2256246 () Unit!155748)

(assert (=> d!1768637 (= lt!2256246 (choose!42431 lt!2256095 lt!2256097 (t!376328 s!2326)))))

(assert (=> d!1768637 (= (lemmaZipperConcatMatchesSameAsBothZippers!607 lt!2256095 lt!2256097 (t!376328 s!2326)) lt!2256246)))

(declare-fun b!5595596 () Bool)

(assert (=> b!5595596 (= e!3451849 (matchZipper!1720 lt!2256097 (t!376328 s!2326)))))

(assert (= (and d!1768637 (not res!2373671)) b!5595596))

(declare-fun m!6574892 () Bool)

(assert (=> d!1768637 m!6574892))

(assert (=> d!1768637 m!6574534))

(declare-fun m!6574894 () Bool)

(assert (=> d!1768637 m!6574894))

(assert (=> b!5595596 m!6574466))

(assert (=> b!5595136 d!1768637))

(declare-fun bs!1293720 () Bool)

(declare-fun d!1768639 () Bool)

(assert (= bs!1293720 (and d!1768639 d!1768593)))

(declare-fun lambda!300426 () Int)

(assert (=> bs!1293720 (= lambda!300426 lambda!300422)))

(declare-fun bs!1293721 () Bool)

(assert (= bs!1293721 (and d!1768639 d!1768595)))

(assert (=> bs!1293721 (= lambda!300426 lambda!300425)))

(assert (=> d!1768639 (= (inv!82203 (h!69371 zl!343)) (forall!14749 (exprs!5466 (h!69371 zl!343)) lambda!300426))))

(declare-fun bs!1293722 () Bool)

(assert (= bs!1293722 d!1768639))

(declare-fun m!6574896 () Bool)

(assert (=> bs!1293722 m!6574896))

(assert (=> b!5595158 d!1768639))

(declare-fun d!1768641 () Bool)

(assert (=> d!1768641 (= (flatMap!1195 z!1189 lambda!300389) (dynLambda!24612 lambda!300389 (h!69371 zl!343)))))

(declare-fun lt!2256247 () Unit!155748)

(assert (=> d!1768641 (= lt!2256247 (choose!42434 z!1189 (h!69371 zl!343) lambda!300389))))

(assert (=> d!1768641 (= z!1189 (set.insert (h!69371 zl!343) (as set.empty (Set Context!9932))))))

(assert (=> d!1768641 (= (lemmaFlatMapOnSingletonSet!727 z!1189 (h!69371 zl!343) lambda!300389) lt!2256247)))

(declare-fun b_lambda!212031 () Bool)

(assert (=> (not b_lambda!212031) (not d!1768641)))

(declare-fun bs!1293724 () Bool)

(assert (= bs!1293724 d!1768641))

(assert (=> bs!1293724 m!6574480))

(declare-fun m!6574900 () Bool)

(assert (=> bs!1293724 m!6574900))

(declare-fun m!6574902 () Bool)

(assert (=> bs!1293724 m!6574902))

(declare-fun m!6574904 () Bool)

(assert (=> bs!1293724 m!6574904))

(assert (=> b!5595134 d!1768641))

(declare-fun call!419518 () (Set Context!9932))

(declare-fun b!5595597 () Bool)

(declare-fun e!3451851 () (Set Context!9932))

(assert (=> b!5595597 (= e!3451851 (set.union call!419518 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 lt!2256087))) (h!69370 s!2326))))))

(declare-fun b!5595598 () Bool)

(declare-fun e!3451852 () Bool)

(assert (=> b!5595598 (= e!3451852 (nullable!5614 (h!69369 (exprs!5466 lt!2256087))))))

(declare-fun d!1768645 () Bool)

(declare-fun c!980886 () Bool)

(assert (=> d!1768645 (= c!980886 e!3451852)))

(declare-fun res!2373672 () Bool)

(assert (=> d!1768645 (=> (not res!2373672) (not e!3451852))))

(assert (=> d!1768645 (= res!2373672 (is-Cons!62921 (exprs!5466 lt!2256087)))))

(assert (=> d!1768645 (= (derivationStepZipperUp!850 lt!2256087 (h!69370 s!2326)) e!3451851)))

(declare-fun bm!419513 () Bool)

(assert (=> bm!419513 (= call!419518 (derivationStepZipperDown!924 (h!69369 (exprs!5466 lt!2256087)) (Context!9933 (t!376327 (exprs!5466 lt!2256087))) (h!69370 s!2326)))))

(declare-fun b!5595599 () Bool)

(declare-fun e!3451850 () (Set Context!9932))

(assert (=> b!5595599 (= e!3451850 (as set.empty (Set Context!9932)))))

(declare-fun b!5595600 () Bool)

(assert (=> b!5595600 (= e!3451850 call!419518)))

(declare-fun b!5595601 () Bool)

(assert (=> b!5595601 (= e!3451851 e!3451850)))

(declare-fun c!980885 () Bool)

(assert (=> b!5595601 (= c!980885 (is-Cons!62921 (exprs!5466 lt!2256087)))))

(assert (= (and d!1768645 res!2373672) b!5595598))

(assert (= (and d!1768645 c!980886) b!5595597))

(assert (= (and d!1768645 (not c!980886)) b!5595601))

(assert (= (and b!5595601 c!980885) b!5595600))

(assert (= (and b!5595601 (not c!980885)) b!5595599))

(assert (= (or b!5595597 b!5595600) bm!419513))

(declare-fun m!6574906 () Bool)

(assert (=> b!5595597 m!6574906))

(declare-fun m!6574908 () Bool)

(assert (=> b!5595598 m!6574908))

(declare-fun m!6574910 () Bool)

(assert (=> bm!419513 m!6574910))

(assert (=> b!5595134 d!1768645))

(declare-fun d!1768647 () Bool)

(assert (=> d!1768647 (= (nullable!5614 (h!69369 (exprs!5466 (h!69371 zl!343)))) (nullableFct!1723 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun bs!1293725 () Bool)

(assert (= bs!1293725 d!1768647))

(declare-fun m!6574912 () Bool)

(assert (=> bs!1293725 m!6574912))

(assert (=> b!5595134 d!1768647))

(declare-fun b!5595602 () Bool)

(declare-fun call!419519 () (Set Context!9932))

(declare-fun e!3451854 () (Set Context!9932))

(assert (=> b!5595602 (= e!3451854 (set.union call!419519 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (h!69370 s!2326))))))

(declare-fun b!5595603 () Bool)

(declare-fun e!3451855 () Bool)

(assert (=> b!5595603 (= e!3451855 (nullable!5614 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))))

(declare-fun d!1768649 () Bool)

(declare-fun c!980888 () Bool)

(assert (=> d!1768649 (= c!980888 e!3451855)))

(declare-fun res!2373673 () Bool)

(assert (=> d!1768649 (=> (not res!2373673) (not e!3451855))))

(assert (=> d!1768649 (= res!2373673 (is-Cons!62921 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))))

(assert (=> d!1768649 (= (derivationStepZipperUp!850 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))) (h!69370 s!2326)) e!3451854)))

(declare-fun bm!419514 () Bool)

(assert (=> bm!419514 (= call!419519 (derivationStepZipperDown!924 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))) (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (h!69370 s!2326)))))

(declare-fun b!5595604 () Bool)

(declare-fun e!3451853 () (Set Context!9932))

(assert (=> b!5595604 (= e!3451853 (as set.empty (Set Context!9932)))))

(declare-fun b!5595605 () Bool)

(assert (=> b!5595605 (= e!3451853 call!419519)))

(declare-fun b!5595606 () Bool)

(assert (=> b!5595606 (= e!3451854 e!3451853)))

(declare-fun c!980887 () Bool)

(assert (=> b!5595606 (= c!980887 (is-Cons!62921 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))))

(assert (= (and d!1768649 res!2373673) b!5595603))

(assert (= (and d!1768649 c!980888) b!5595602))

(assert (= (and d!1768649 (not c!980888)) b!5595606))

(assert (= (and b!5595606 c!980887) b!5595605))

(assert (= (and b!5595606 (not c!980887)) b!5595604))

(assert (= (or b!5595602 b!5595605) bm!419514))

(declare-fun m!6574914 () Bool)

(assert (=> b!5595602 m!6574914))

(declare-fun m!6574916 () Bool)

(assert (=> b!5595603 m!6574916))

(declare-fun m!6574918 () Bool)

(assert (=> bm!419514 m!6574918))

(assert (=> b!5595134 d!1768649))

(declare-fun bm!419515 () Bool)

(declare-fun call!419521 () (Set Context!9932))

(declare-fun call!419524 () (Set Context!9932))

(assert (=> bm!419515 (= call!419521 call!419524)))

(declare-fun b!5595608 () Bool)

(declare-fun e!3451861 () (Set Context!9932))

(declare-fun call!419520 () (Set Context!9932))

(declare-fun call!419525 () (Set Context!9932))

(assert (=> b!5595608 (= e!3451861 (set.union call!419520 call!419525))))

(declare-fun b!5595609 () Bool)

(declare-fun e!3451856 () (Set Context!9932))

(declare-fun e!3451858 () (Set Context!9932))

(assert (=> b!5595609 (= e!3451856 e!3451858)))

(declare-fun c!980893 () Bool)

(assert (=> b!5595609 (= c!980893 (is-Concat!24427 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5595610 () Bool)

(assert (=> b!5595610 (= e!3451856 (set.union call!419520 call!419524))))

(declare-fun call!419522 () List!63045)

(declare-fun bm!419516 () Bool)

(declare-fun c!980889 () Bool)

(assert (=> bm!419516 (= call!419522 ($colon$colon!1645 (exprs!5466 lt!2256087) (ite (or c!980889 c!980893) (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (h!69369 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5595611 () Bool)

(declare-fun e!3451859 () (Set Context!9932))

(assert (=> b!5595611 (= e!3451859 (set.insert lt!2256087 (as set.empty (Set Context!9932))))))

(declare-fun b!5595612 () Bool)

(assert (=> b!5595612 (= e!3451859 e!3451861)))

(declare-fun c!980891 () Bool)

(assert (=> b!5595612 (= c!980891 (is-Union!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5595613 () Bool)

(declare-fun e!3451857 () (Set Context!9932))

(assert (=> b!5595613 (= e!3451857 (as set.empty (Set Context!9932)))))

(declare-fun bm!419517 () Bool)

(declare-fun call!419523 () List!63045)

(assert (=> bm!419517 (= call!419523 call!419522)))

(declare-fun b!5595614 () Bool)

(assert (=> b!5595614 (= e!3451858 call!419521)))

(declare-fun d!1768651 () Bool)

(declare-fun c!980892 () Bool)

(assert (=> d!1768651 (= c!980892 (and (is-ElementMatch!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))) (= (c!980755 (h!69369 (exprs!5466 (h!69371 zl!343)))) (h!69370 s!2326))))))

(assert (=> d!1768651 (= (derivationStepZipperDown!924 (h!69369 (exprs!5466 (h!69371 zl!343))) lt!2256087 (h!69370 s!2326)) e!3451859)))

(declare-fun b!5595607 () Bool)

(declare-fun e!3451860 () Bool)

(assert (=> b!5595607 (= e!3451860 (nullable!5614 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5595615 () Bool)

(assert (=> b!5595615 (= e!3451857 call!419521)))

(declare-fun bm!419518 () Bool)

(assert (=> bm!419518 (= call!419525 (derivationStepZipperDown!924 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343))))))) (ite (or c!980891 c!980889) lt!2256087 (Context!9933 call!419523)) (h!69370 s!2326)))))

(declare-fun bm!419519 () Bool)

(assert (=> bm!419519 (= call!419524 call!419525)))

(declare-fun b!5595616 () Bool)

(declare-fun c!980890 () Bool)

(assert (=> b!5595616 (= c!980890 (is-Star!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> b!5595616 (= e!3451858 e!3451857)))

(declare-fun b!5595617 () Bool)

(assert (=> b!5595617 (= c!980889 e!3451860)))

(declare-fun res!2373674 () Bool)

(assert (=> b!5595617 (=> (not res!2373674) (not e!3451860))))

(assert (=> b!5595617 (= res!2373674 (is-Concat!24427 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> b!5595617 (= e!3451861 e!3451856)))

(declare-fun bm!419520 () Bool)

(assert (=> bm!419520 (= call!419520 (derivationStepZipperDown!924 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))) (ite c!980891 lt!2256087 (Context!9933 call!419522)) (h!69370 s!2326)))))

(assert (= (and d!1768651 c!980892) b!5595611))

(assert (= (and d!1768651 (not c!980892)) b!5595612))

(assert (= (and b!5595612 c!980891) b!5595608))

(assert (= (and b!5595612 (not c!980891)) b!5595617))

(assert (= (and b!5595617 res!2373674) b!5595607))

(assert (= (and b!5595617 c!980889) b!5595610))

(assert (= (and b!5595617 (not c!980889)) b!5595609))

(assert (= (and b!5595609 c!980893) b!5595614))

(assert (= (and b!5595609 (not c!980893)) b!5595616))

(assert (= (and b!5595616 c!980890) b!5595615))

(assert (= (and b!5595616 (not c!980890)) b!5595613))

(assert (= (or b!5595614 b!5595615) bm!419517))

(assert (= (or b!5595614 b!5595615) bm!419515))

(assert (= (or b!5595610 bm!419517) bm!419516))

(assert (= (or b!5595610 bm!419515) bm!419519))

(assert (= (or b!5595608 bm!419519) bm!419518))

(assert (= (or b!5595608 b!5595610) bm!419520))

(declare-fun m!6574920 () Bool)

(assert (=> bm!419518 m!6574920))

(declare-fun m!6574922 () Bool)

(assert (=> bm!419520 m!6574922))

(assert (=> b!5595611 m!6574752))

(declare-fun m!6574924 () Bool)

(assert (=> bm!419516 m!6574924))

(declare-fun m!6574926 () Bool)

(assert (=> b!5595607 m!6574926))

(assert (=> b!5595134 d!1768651))

(declare-fun d!1768653 () Bool)

(assert (=> d!1768653 (= (flatMap!1195 z!1189 lambda!300389) (choose!42433 z!1189 lambda!300389))))

(declare-fun bs!1293726 () Bool)

(assert (= bs!1293726 d!1768653))

(declare-fun m!6574928 () Bool)

(assert (=> bs!1293726 m!6574928))

(assert (=> b!5595134 d!1768653))

(declare-fun b!5595618 () Bool)

(declare-fun call!419526 () (Set Context!9932))

(declare-fun e!3451863 () (Set Context!9932))

(assert (=> b!5595618 (= e!3451863 (set.union call!419526 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))) (h!69370 s!2326))))))

(declare-fun b!5595619 () Bool)

(declare-fun e!3451864 () Bool)

(assert (=> b!5595619 (= e!3451864 (nullable!5614 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun d!1768655 () Bool)

(declare-fun c!980895 () Bool)

(assert (=> d!1768655 (= c!980895 e!3451864)))

(declare-fun res!2373675 () Bool)

(assert (=> d!1768655 (=> (not res!2373675) (not e!3451864))))

(assert (=> d!1768655 (= res!2373675 (is-Cons!62921 (exprs!5466 (h!69371 zl!343))))))

(assert (=> d!1768655 (= (derivationStepZipperUp!850 (h!69371 zl!343) (h!69370 s!2326)) e!3451863)))

(declare-fun bm!419521 () Bool)

(assert (=> bm!419521 (= call!419526 (derivationStepZipperDown!924 (h!69369 (exprs!5466 (h!69371 zl!343))) (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))) (h!69370 s!2326)))))

(declare-fun b!5595620 () Bool)

(declare-fun e!3451862 () (Set Context!9932))

(assert (=> b!5595620 (= e!3451862 (as set.empty (Set Context!9932)))))

(declare-fun b!5595621 () Bool)

(assert (=> b!5595621 (= e!3451862 call!419526)))

(declare-fun b!5595622 () Bool)

(assert (=> b!5595622 (= e!3451863 e!3451862)))

(declare-fun c!980894 () Bool)

(assert (=> b!5595622 (= c!980894 (is-Cons!62921 (exprs!5466 (h!69371 zl!343))))))

(assert (= (and d!1768655 res!2373675) b!5595619))

(assert (= (and d!1768655 c!980895) b!5595618))

(assert (= (and d!1768655 (not c!980895)) b!5595622))

(assert (= (and b!5595622 c!980894) b!5595621))

(assert (= (and b!5595622 (not c!980894)) b!5595620))

(assert (= (or b!5595618 b!5595621) bm!419521))

(declare-fun m!6574930 () Bool)

(assert (=> b!5595618 m!6574930))

(assert (=> b!5595619 m!6574478))

(declare-fun m!6574932 () Bool)

(assert (=> bm!419521 m!6574932))

(assert (=> b!5595134 d!1768655))

(declare-fun bs!1293728 () Bool)

(declare-fun d!1768657 () Bool)

(assert (= bs!1293728 (and d!1768657 d!1768593)))

(declare-fun lambda!300429 () Int)

(assert (=> bs!1293728 (= lambda!300429 lambda!300422)))

(declare-fun bs!1293729 () Bool)

(assert (= bs!1293729 (and d!1768657 d!1768595)))

(assert (=> bs!1293729 (= lambda!300429 lambda!300425)))

(declare-fun bs!1293730 () Bool)

(assert (= bs!1293730 (and d!1768657 d!1768639)))

(assert (=> bs!1293730 (= lambda!300429 lambda!300426)))

(declare-fun b!5595653 () Bool)

(declare-fun e!3451884 () Bool)

(declare-fun e!3451888 () Bool)

(assert (=> b!5595653 (= e!3451884 e!3451888)))

(declare-fun c!980910 () Bool)

(assert (=> b!5595653 (= c!980910 (isEmpty!34744 (unfocusZipperList!1010 zl!343)))))

(declare-fun b!5595654 () Bool)

(declare-fun e!3451887 () Bool)

(declare-fun lt!2256253 () Regex!15582)

(declare-fun isUnion!577 (Regex!15582) Bool)

(assert (=> b!5595654 (= e!3451887 (isUnion!577 lt!2256253))))

(declare-fun b!5595655 () Bool)

(assert (=> b!5595655 (= e!3451888 e!3451887)))

(declare-fun c!980908 () Bool)

(assert (=> b!5595655 (= c!980908 (isEmpty!34744 (tail!11031 (unfocusZipperList!1010 zl!343))))))

(declare-fun b!5595656 () Bool)

(declare-fun isEmptyLang!1147 (Regex!15582) Bool)

(assert (=> b!5595656 (= e!3451888 (isEmptyLang!1147 lt!2256253))))

(declare-fun b!5595657 () Bool)

(declare-fun e!3451886 () Regex!15582)

(assert (=> b!5595657 (= e!3451886 (h!69369 (unfocusZipperList!1010 zl!343)))))

(assert (=> d!1768657 e!3451884))

(declare-fun res!2373683 () Bool)

(assert (=> d!1768657 (=> (not res!2373683) (not e!3451884))))

(assert (=> d!1768657 (= res!2373683 (validRegex!7318 lt!2256253))))

(assert (=> d!1768657 (= lt!2256253 e!3451886)))

(declare-fun c!980909 () Bool)

(declare-fun e!3451885 () Bool)

(assert (=> d!1768657 (= c!980909 e!3451885)))

(declare-fun res!2373682 () Bool)

(assert (=> d!1768657 (=> (not res!2373682) (not e!3451885))))

(assert (=> d!1768657 (= res!2373682 (is-Cons!62921 (unfocusZipperList!1010 zl!343)))))

(assert (=> d!1768657 (forall!14749 (unfocusZipperList!1010 zl!343) lambda!300429)))

(assert (=> d!1768657 (= (generalisedUnion!1445 (unfocusZipperList!1010 zl!343)) lt!2256253)))

(declare-fun b!5595658 () Bool)

(declare-fun e!3451883 () Regex!15582)

(assert (=> b!5595658 (= e!3451886 e!3451883)))

(declare-fun c!980911 () Bool)

(assert (=> b!5595658 (= c!980911 (is-Cons!62921 (unfocusZipperList!1010 zl!343)))))

(declare-fun b!5595659 () Bool)

(assert (=> b!5595659 (= e!3451883 EmptyLang!15582)))

(declare-fun b!5595660 () Bool)

(assert (=> b!5595660 (= e!3451887 (= lt!2256253 (head!11936 (unfocusZipperList!1010 zl!343))))))

(declare-fun b!5595661 () Bool)

(assert (=> b!5595661 (= e!3451883 (Union!15582 (h!69369 (unfocusZipperList!1010 zl!343)) (generalisedUnion!1445 (t!376327 (unfocusZipperList!1010 zl!343)))))))

(declare-fun b!5595662 () Bool)

(assert (=> b!5595662 (= e!3451885 (isEmpty!34744 (t!376327 (unfocusZipperList!1010 zl!343))))))

(assert (= (and d!1768657 res!2373682) b!5595662))

(assert (= (and d!1768657 c!980909) b!5595657))

(assert (= (and d!1768657 (not c!980909)) b!5595658))

(assert (= (and b!5595658 c!980911) b!5595661))

(assert (= (and b!5595658 (not c!980911)) b!5595659))

(assert (= (and d!1768657 res!2373683) b!5595653))

(assert (= (and b!5595653 c!980910) b!5595656))

(assert (= (and b!5595653 (not c!980910)) b!5595655))

(assert (= (and b!5595655 c!980908) b!5595660))

(assert (= (and b!5595655 (not c!980908)) b!5595654))

(declare-fun m!6574938 () Bool)

(assert (=> b!5595661 m!6574938))

(assert (=> b!5595653 m!6574516))

(declare-fun m!6574940 () Bool)

(assert (=> b!5595653 m!6574940))

(declare-fun m!6574942 () Bool)

(assert (=> b!5595656 m!6574942))

(declare-fun m!6574944 () Bool)

(assert (=> d!1768657 m!6574944))

(assert (=> d!1768657 m!6574516))

(declare-fun m!6574946 () Bool)

(assert (=> d!1768657 m!6574946))

(assert (=> b!5595660 m!6574516))

(declare-fun m!6574948 () Bool)

(assert (=> b!5595660 m!6574948))

(assert (=> b!5595655 m!6574516))

(declare-fun m!6574950 () Bool)

(assert (=> b!5595655 m!6574950))

(assert (=> b!5595655 m!6574950))

(declare-fun m!6574952 () Bool)

(assert (=> b!5595655 m!6574952))

(declare-fun m!6574954 () Bool)

(assert (=> b!5595654 m!6574954))

(declare-fun m!6574956 () Bool)

(assert (=> b!5595662 m!6574956))

(assert (=> b!5595155 d!1768657))

(declare-fun bs!1293735 () Bool)

(declare-fun d!1768661 () Bool)

(assert (= bs!1293735 (and d!1768661 d!1768593)))

(declare-fun lambda!300432 () Int)

(assert (=> bs!1293735 (= lambda!300432 lambda!300422)))

(declare-fun bs!1293736 () Bool)

(assert (= bs!1293736 (and d!1768661 d!1768595)))

(assert (=> bs!1293736 (= lambda!300432 lambda!300425)))

(declare-fun bs!1293737 () Bool)

(assert (= bs!1293737 (and d!1768661 d!1768639)))

(assert (=> bs!1293737 (= lambda!300432 lambda!300426)))

(declare-fun bs!1293738 () Bool)

(assert (= bs!1293738 (and d!1768661 d!1768657)))

(assert (=> bs!1293738 (= lambda!300432 lambda!300429)))

(declare-fun lt!2256257 () List!63045)

(assert (=> d!1768661 (forall!14749 lt!2256257 lambda!300432)))

(declare-fun e!3451894 () List!63045)

(assert (=> d!1768661 (= lt!2256257 e!3451894)))

(declare-fun c!980916 () Bool)

(assert (=> d!1768661 (= c!980916 (is-Cons!62923 zl!343))))

(assert (=> d!1768661 (= (unfocusZipperList!1010 zl!343) lt!2256257)))

(declare-fun b!5595672 () Bool)

(assert (=> b!5595672 (= e!3451894 (Cons!62921 (generalisedConcat!1197 (exprs!5466 (h!69371 zl!343))) (unfocusZipperList!1010 (t!376329 zl!343))))))

(declare-fun b!5595673 () Bool)

(assert (=> b!5595673 (= e!3451894 Nil!62921)))

(assert (= (and d!1768661 c!980916) b!5595672))

(assert (= (and d!1768661 (not c!980916)) b!5595673))

(declare-fun m!6574974 () Bool)

(assert (=> d!1768661 m!6574974))

(assert (=> b!5595672 m!6574486))

(declare-fun m!6574978 () Bool)

(assert (=> b!5595672 m!6574978))

(assert (=> b!5595155 d!1768661))

(declare-fun b!5595702 () Bool)

(declare-fun e!3451914 () Bool)

(declare-fun lt!2256265 () Option!15591)

(declare-fun ++!13812 (List!63046 List!63046) List!63046)

(declare-fun get!21671 (Option!15591) tuple2!65358)

(assert (=> b!5595702 (= e!3451914 (= (++!13812 (_1!35982 (get!21671 lt!2256265)) (_2!35982 (get!21671 lt!2256265))) s!2326))))

(declare-fun b!5595703 () Bool)

(declare-fun e!3451913 () Bool)

(assert (=> b!5595703 (= e!3451913 (not (isDefined!12294 lt!2256265)))))

(declare-fun b!5595704 () Bool)

(declare-fun lt!2256267 () Unit!155748)

(declare-fun lt!2256266 () Unit!155748)

(assert (=> b!5595704 (= lt!2256267 lt!2256266)))

(assert (=> b!5595704 (= (++!13812 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (t!376328 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1981 (List!63046 C!31434 List!63046 List!63046) Unit!155748)

(assert (=> b!5595704 (= lt!2256266 (lemmaMoveElementToOtherListKeepsConcatEq!1981 Nil!62922 (h!69370 s!2326) (t!376328 s!2326) s!2326))))

(declare-fun e!3451911 () Option!15591)

(assert (=> b!5595704 (= e!3451911 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (t!376328 s!2326) s!2326))))

(declare-fun b!5595706 () Bool)

(declare-fun res!2373699 () Bool)

(assert (=> b!5595706 (=> (not res!2373699) (not e!3451914))))

(assert (=> b!5595706 (= res!2373699 (matchR!7767 (regTwo!31676 r!7292) (_2!35982 (get!21671 lt!2256265))))))

(declare-fun b!5595707 () Bool)

(declare-fun e!3451915 () Option!15591)

(assert (=> b!5595707 (= e!3451915 (Some!15590 (tuple2!65359 Nil!62922 s!2326)))))

(declare-fun b!5595708 () Bool)

(declare-fun e!3451912 () Bool)

(assert (=> b!5595708 (= e!3451912 (matchR!7767 (regTwo!31676 r!7292) s!2326))))

(declare-fun b!5595709 () Bool)

(declare-fun res!2373701 () Bool)

(assert (=> b!5595709 (=> (not res!2373701) (not e!3451914))))

(assert (=> b!5595709 (= res!2373701 (matchR!7767 (regOne!31676 r!7292) (_1!35982 (get!21671 lt!2256265))))))

(declare-fun b!5595710 () Bool)

(assert (=> b!5595710 (= e!3451911 None!15590)))

(declare-fun d!1768673 () Bool)

(assert (=> d!1768673 e!3451913))

(declare-fun res!2373698 () Bool)

(assert (=> d!1768673 (=> res!2373698 e!3451913)))

(assert (=> d!1768673 (= res!2373698 e!3451914)))

(declare-fun res!2373697 () Bool)

(assert (=> d!1768673 (=> (not res!2373697) (not e!3451914))))

(assert (=> d!1768673 (= res!2373697 (isDefined!12294 lt!2256265))))

(assert (=> d!1768673 (= lt!2256265 e!3451915)))

(declare-fun c!980926 () Bool)

(assert (=> d!1768673 (= c!980926 e!3451912)))

(declare-fun res!2373700 () Bool)

(assert (=> d!1768673 (=> (not res!2373700) (not e!3451912))))

(assert (=> d!1768673 (= res!2373700 (matchR!7767 (regOne!31676 r!7292) Nil!62922))))

(assert (=> d!1768673 (validRegex!7318 (regOne!31676 r!7292))))

(assert (=> d!1768673 (= (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) Nil!62922 s!2326 s!2326) lt!2256265)))

(declare-fun b!5595705 () Bool)

(assert (=> b!5595705 (= e!3451915 e!3451911)))

(declare-fun c!980925 () Bool)

(assert (=> b!5595705 (= c!980925 (is-Nil!62922 s!2326))))

(assert (= (and d!1768673 res!2373700) b!5595708))

(assert (= (and d!1768673 c!980926) b!5595707))

(assert (= (and d!1768673 (not c!980926)) b!5595705))

(assert (= (and b!5595705 c!980925) b!5595710))

(assert (= (and b!5595705 (not c!980925)) b!5595704))

(assert (= (and d!1768673 res!2373697) b!5595709))

(assert (= (and b!5595709 res!2373701) b!5595706))

(assert (= (and b!5595706 res!2373699) b!5595702))

(assert (= (and d!1768673 (not res!2373698)) b!5595703))

(declare-fun m!6575006 () Bool)

(assert (=> b!5595709 m!6575006))

(declare-fun m!6575008 () Bool)

(assert (=> b!5595709 m!6575008))

(declare-fun m!6575010 () Bool)

(assert (=> b!5595704 m!6575010))

(assert (=> b!5595704 m!6575010))

(declare-fun m!6575012 () Bool)

(assert (=> b!5595704 m!6575012))

(declare-fun m!6575014 () Bool)

(assert (=> b!5595704 m!6575014))

(assert (=> b!5595704 m!6575010))

(declare-fun m!6575016 () Bool)

(assert (=> b!5595704 m!6575016))

(declare-fun m!6575018 () Bool)

(assert (=> b!5595708 m!6575018))

(assert (=> b!5595706 m!6575006))

(declare-fun m!6575020 () Bool)

(assert (=> b!5595706 m!6575020))

(declare-fun m!6575022 () Bool)

(assert (=> b!5595703 m!6575022))

(assert (=> b!5595702 m!6575006))

(declare-fun m!6575024 () Bool)

(assert (=> b!5595702 m!6575024))

(assert (=> d!1768673 m!6575022))

(declare-fun m!6575026 () Bool)

(assert (=> d!1768673 m!6575026))

(declare-fun m!6575028 () Bool)

(assert (=> d!1768673 m!6575028))

(assert (=> b!5595135 d!1768673))

(declare-fun d!1768685 () Bool)

(declare-fun choose!42440 (Int) Bool)

(assert (=> d!1768685 (= (Exists!2682 lambda!300388) (choose!42440 lambda!300388))))

(declare-fun bs!1293740 () Bool)

(assert (= bs!1293740 d!1768685))

(declare-fun m!6575030 () Bool)

(assert (=> bs!1293740 m!6575030))

(assert (=> b!5595135 d!1768685))

(declare-fun bs!1293741 () Bool)

(declare-fun d!1768687 () Bool)

(assert (= bs!1293741 (and d!1768687 b!5595135)))

(declare-fun lambda!300435 () Int)

(assert (=> bs!1293741 (= lambda!300435 lambda!300387)))

(assert (=> bs!1293741 (not (= lambda!300435 lambda!300388))))

(declare-fun bs!1293742 () Bool)

(assert (= bs!1293742 (and d!1768687 b!5595369)))

(assert (=> bs!1293742 (not (= lambda!300435 lambda!300415))))

(declare-fun bs!1293743 () Bool)

(assert (= bs!1293743 (and d!1768687 b!5595362)))

(assert (=> bs!1293743 (not (= lambda!300435 lambda!300416))))

(assert (=> d!1768687 true))

(assert (=> d!1768687 true))

(assert (=> d!1768687 true))

(assert (=> d!1768687 (= (isDefined!12294 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) Nil!62922 s!2326 s!2326)) (Exists!2682 lambda!300435))))

(declare-fun lt!2256276 () Unit!155748)

(declare-fun choose!42441 (Regex!15582 Regex!15582 List!63046) Unit!155748)

(assert (=> d!1768687 (= lt!2256276 (choose!42441 (regOne!31676 r!7292) (regTwo!31676 r!7292) s!2326))))

(assert (=> d!1768687 (validRegex!7318 (regOne!31676 r!7292))))

(assert (=> d!1768687 (= (lemmaFindConcatSeparationEquivalentToExists!1769 (regOne!31676 r!7292) (regTwo!31676 r!7292) s!2326) lt!2256276)))

(declare-fun bs!1293744 () Bool)

(assert (= bs!1293744 d!1768687))

(assert (=> bs!1293744 m!6574456))

(assert (=> bs!1293744 m!6574458))

(declare-fun m!6575032 () Bool)

(assert (=> bs!1293744 m!6575032))

(assert (=> bs!1293744 m!6575028))

(assert (=> bs!1293744 m!6574456))

(declare-fun m!6575034 () Bool)

(assert (=> bs!1293744 m!6575034))

(assert (=> b!5595135 d!1768687))

(declare-fun d!1768689 () Bool)

(assert (=> d!1768689 (= (Exists!2682 lambda!300387) (choose!42440 lambda!300387))))

(declare-fun bs!1293745 () Bool)

(assert (= bs!1293745 d!1768689))

(declare-fun m!6575036 () Bool)

(assert (=> bs!1293745 m!6575036))

(assert (=> b!5595135 d!1768689))

(declare-fun bs!1293748 () Bool)

(declare-fun d!1768691 () Bool)

(assert (= bs!1293748 (and d!1768691 b!5595135)))

(declare-fun lambda!300440 () Int)

(assert (=> bs!1293748 (= lambda!300440 lambda!300387)))

(declare-fun bs!1293749 () Bool)

(assert (= bs!1293749 (and d!1768691 d!1768687)))

(assert (=> bs!1293749 (= lambda!300440 lambda!300435)))

(assert (=> bs!1293748 (not (= lambda!300440 lambda!300388))))

(declare-fun bs!1293750 () Bool)

(assert (= bs!1293750 (and d!1768691 b!5595362)))

(assert (=> bs!1293750 (not (= lambda!300440 lambda!300416))))

(declare-fun bs!1293751 () Bool)

(assert (= bs!1293751 (and d!1768691 b!5595369)))

(assert (=> bs!1293751 (not (= lambda!300440 lambda!300415))))

(assert (=> d!1768691 true))

(assert (=> d!1768691 true))

(assert (=> d!1768691 true))

(declare-fun lambda!300441 () Int)

(assert (=> bs!1293748 (not (= lambda!300441 lambda!300387))))

(assert (=> bs!1293749 (not (= lambda!300441 lambda!300435))))

(assert (=> bs!1293748 (= lambda!300441 lambda!300388)))

(declare-fun bs!1293752 () Bool)

(assert (= bs!1293752 d!1768691))

(assert (=> bs!1293752 (not (= lambda!300441 lambda!300440))))

(assert (=> bs!1293750 (= lambda!300441 lambda!300416)))

(assert (=> bs!1293751 (not (= lambda!300441 lambda!300415))))

(assert (=> d!1768691 true))

(assert (=> d!1768691 true))

(assert (=> d!1768691 true))

(assert (=> d!1768691 (= (Exists!2682 lambda!300440) (Exists!2682 lambda!300441))))

(declare-fun lt!2256282 () Unit!155748)

(declare-fun choose!42442 (Regex!15582 Regex!15582 List!63046) Unit!155748)

(assert (=> d!1768691 (= lt!2256282 (choose!42442 (regOne!31676 r!7292) (regTwo!31676 r!7292) s!2326))))

(assert (=> d!1768691 (validRegex!7318 (regOne!31676 r!7292))))

(assert (=> d!1768691 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1311 (regOne!31676 r!7292) (regTwo!31676 r!7292) s!2326) lt!2256282)))

(declare-fun m!6575066 () Bool)

(assert (=> bs!1293752 m!6575066))

(declare-fun m!6575068 () Bool)

(assert (=> bs!1293752 m!6575068))

(declare-fun m!6575070 () Bool)

(assert (=> bs!1293752 m!6575070))

(assert (=> bs!1293752 m!6575028))

(assert (=> b!5595135 d!1768691))

(declare-fun d!1768699 () Bool)

(declare-fun isEmpty!34751 (Option!15591) Bool)

(assert (=> d!1768699 (= (isDefined!12294 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) Nil!62922 s!2326 s!2326)) (not (isEmpty!34751 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) Nil!62922 s!2326 s!2326))))))

(declare-fun bs!1293753 () Bool)

(assert (= bs!1293753 d!1768699))

(assert (=> bs!1293753 m!6574456))

(declare-fun m!6575072 () Bool)

(assert (=> bs!1293753 m!6575072))

(assert (=> b!5595135 d!1768699))

(declare-fun d!1768701 () Bool)

(declare-fun lt!2256287 () Regex!15582)

(assert (=> d!1768701 (validRegex!7318 lt!2256287)))

(assert (=> d!1768701 (= lt!2256287 (generalisedUnion!1445 (unfocusZipperList!1010 zl!343)))))

(assert (=> d!1768701 (= (unfocusZipper!1324 zl!343) lt!2256287)))

(declare-fun bs!1293754 () Bool)

(assert (= bs!1293754 d!1768701))

(declare-fun m!6575074 () Bool)

(assert (=> bs!1293754 m!6575074))

(assert (=> bs!1293754 m!6574516))

(assert (=> bs!1293754 m!6574516))

(assert (=> bs!1293754 m!6574518))

(assert (=> b!5595152 d!1768701))

(assert (=> b!5595132 d!1768619))

(declare-fun d!1768703 () Bool)

(declare-fun res!2373745 () Bool)

(declare-fun e!3451956 () Bool)

(assert (=> d!1768703 (=> res!2373745 e!3451956)))

(assert (=> d!1768703 (= res!2373745 (is-ElementMatch!15582 r!7292))))

(assert (=> d!1768703 (= (validRegex!7318 r!7292) e!3451956)))

(declare-fun b!5595772 () Bool)

(declare-fun res!2373746 () Bool)

(declare-fun e!3451955 () Bool)

(assert (=> b!5595772 (=> (not res!2373746) (not e!3451955))))

(declare-fun call!419538 () Bool)

(assert (=> b!5595772 (= res!2373746 call!419538)))

(declare-fun e!3451954 () Bool)

(assert (=> b!5595772 (= e!3451954 e!3451955)))

(declare-fun b!5595773 () Bool)

(declare-fun e!3451957 () Bool)

(declare-fun e!3451958 () Bool)

(assert (=> b!5595773 (= e!3451957 e!3451958)))

(declare-fun res!2373747 () Bool)

(assert (=> b!5595773 (=> (not res!2373747) (not e!3451958))))

(assert (=> b!5595773 (= res!2373747 call!419538)))

(declare-fun b!5595774 () Bool)

(declare-fun e!3451953 () Bool)

(declare-fun e!3451959 () Bool)

(assert (=> b!5595774 (= e!3451953 e!3451959)))

(declare-fun res!2373744 () Bool)

(assert (=> b!5595774 (= res!2373744 (not (nullable!5614 (reg!15911 r!7292))))))

(assert (=> b!5595774 (=> (not res!2373744) (not e!3451959))))

(declare-fun bm!419532 () Bool)

(declare-fun call!419539 () Bool)

(assert (=> bm!419532 (= call!419538 call!419539)))

(declare-fun b!5595775 () Bool)

(declare-fun res!2373743 () Bool)

(assert (=> b!5595775 (=> res!2373743 e!3451957)))

(assert (=> b!5595775 (= res!2373743 (not (is-Concat!24427 r!7292)))))

(assert (=> b!5595775 (= e!3451954 e!3451957)))

(declare-fun b!5595776 () Bool)

(declare-fun call!419537 () Bool)

(assert (=> b!5595776 (= e!3451958 call!419537)))

(declare-fun bm!419533 () Bool)

(declare-fun c!980938 () Bool)

(assert (=> bm!419533 (= call!419537 (validRegex!7318 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))))))

(declare-fun b!5595777 () Bool)

(assert (=> b!5595777 (= e!3451956 e!3451953)))

(declare-fun c!980937 () Bool)

(assert (=> b!5595777 (= c!980937 (is-Star!15582 r!7292))))

(declare-fun b!5595778 () Bool)

(assert (=> b!5595778 (= e!3451959 call!419539)))

(declare-fun b!5595779 () Bool)

(assert (=> b!5595779 (= e!3451955 call!419537)))

(declare-fun b!5595780 () Bool)

(assert (=> b!5595780 (= e!3451953 e!3451954)))

(assert (=> b!5595780 (= c!980938 (is-Union!15582 r!7292))))

(declare-fun bm!419534 () Bool)

(assert (=> bm!419534 (= call!419539 (validRegex!7318 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))))))

(assert (= (and d!1768703 (not res!2373745)) b!5595777))

(assert (= (and b!5595777 c!980937) b!5595774))

(assert (= (and b!5595777 (not c!980937)) b!5595780))

(assert (= (and b!5595774 res!2373744) b!5595778))

(assert (= (and b!5595780 c!980938) b!5595772))

(assert (= (and b!5595780 (not c!980938)) b!5595775))

(assert (= (and b!5595772 res!2373746) b!5595779))

(assert (= (and b!5595775 (not res!2373743)) b!5595773))

(assert (= (and b!5595773 res!2373747) b!5595776))

(assert (= (or b!5595779 b!5595776) bm!419533))

(assert (= (or b!5595772 b!5595773) bm!419532))

(assert (= (or b!5595778 bm!419532) bm!419534))

(declare-fun m!6575080 () Bool)

(assert (=> b!5595774 m!6575080))

(declare-fun m!6575082 () Bool)

(assert (=> bm!419533 m!6575082))

(declare-fun m!6575084 () Bool)

(assert (=> bm!419534 m!6575084))

(assert (=> start!581106 d!1768703))

(declare-fun e!3451960 () Bool)

(declare-fun d!1768707 () Bool)

(assert (=> d!1768707 (= (matchZipper!1720 (set.union lt!2256094 lt!2256084) (t!376328 s!2326)) e!3451960)))

(declare-fun res!2373748 () Bool)

(assert (=> d!1768707 (=> res!2373748 e!3451960)))

(assert (=> d!1768707 (= res!2373748 (matchZipper!1720 lt!2256094 (t!376328 s!2326)))))

(declare-fun lt!2256289 () Unit!155748)

(assert (=> d!1768707 (= lt!2256289 (choose!42431 lt!2256094 lt!2256084 (t!376328 s!2326)))))

(assert (=> d!1768707 (= (lemmaZipperConcatMatchesSameAsBothZippers!607 lt!2256094 lt!2256084 (t!376328 s!2326)) lt!2256289)))

(declare-fun b!5595781 () Bool)

(assert (=> b!5595781 (= e!3451960 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(assert (= (and d!1768707 (not res!2373748)) b!5595781))

(assert (=> d!1768707 m!6574544))

(assert (=> d!1768707 m!6574530))

(declare-fun m!6575086 () Bool)

(assert (=> d!1768707 m!6575086))

(assert (=> b!5595781 m!6574448))

(assert (=> b!5595149 d!1768707))

(assert (=> b!5595149 d!1768629))

(declare-fun d!1768709 () Bool)

(declare-fun c!980939 () Bool)

(assert (=> d!1768709 (= c!980939 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3451961 () Bool)

(assert (=> d!1768709 (= (matchZipper!1720 (set.union lt!2256094 lt!2256084) (t!376328 s!2326)) e!3451961)))

(declare-fun b!5595782 () Bool)

(assert (=> b!5595782 (= e!3451961 (nullableZipper!1577 (set.union lt!2256094 lt!2256084)))))

(declare-fun b!5595783 () Bool)

(assert (=> b!5595783 (= e!3451961 (matchZipper!1720 (derivationStepZipper!1681 (set.union lt!2256094 lt!2256084) (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768709 c!980939) b!5595782))

(assert (= (and d!1768709 (not c!980939)) b!5595783))

(assert (=> d!1768709 m!6574714))

(declare-fun m!6575088 () Bool)

(assert (=> b!5595782 m!6575088))

(assert (=> b!5595783 m!6574718))

(assert (=> b!5595783 m!6574718))

(declare-fun m!6575090 () Bool)

(assert (=> b!5595783 m!6575090))

(assert (=> b!5595783 m!6574722))

(assert (=> b!5595783 m!6575090))

(assert (=> b!5595783 m!6574722))

(declare-fun m!6575092 () Bool)

(assert (=> b!5595783 m!6575092))

(assert (=> b!5595149 d!1768709))

(declare-fun d!1768711 () Bool)

(assert (=> d!1768711 (= (isEmpty!34744 (t!376327 (exprs!5466 (h!69371 zl!343)))) (is-Nil!62921 (t!376327 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> b!5595129 d!1768711))

(assert (=> b!5595130 d!1768571))

(declare-fun b!5595792 () Bool)

(declare-fun e!3451966 () Bool)

(declare-fun tp!1547342 () Bool)

(assert (=> b!5595792 (= e!3451966 (and tp_is_empty!40417 tp!1547342))))

(assert (=> b!5595157 (= tp!1547308 e!3451966)))

(assert (= (and b!5595157 (is-Cons!62922 (t!376328 s!2326))) b!5595792))

(declare-fun b!5595804 () Bool)

(declare-fun e!3451969 () Bool)

(declare-fun tp!1547357 () Bool)

(declare-fun tp!1547356 () Bool)

(assert (=> b!5595804 (= e!3451969 (and tp!1547357 tp!1547356))))

(assert (=> b!5595162 (= tp!1547306 e!3451969)))

(declare-fun b!5595806 () Bool)

(declare-fun tp!1547354 () Bool)

(declare-fun tp!1547355 () Bool)

(assert (=> b!5595806 (= e!3451969 (and tp!1547354 tp!1547355))))

(declare-fun b!5595803 () Bool)

(assert (=> b!5595803 (= e!3451969 tp_is_empty!40417)))

(declare-fun b!5595805 () Bool)

(declare-fun tp!1547353 () Bool)

(assert (=> b!5595805 (= e!3451969 tp!1547353)))

(assert (= (and b!5595162 (is-ElementMatch!15582 (reg!15911 r!7292))) b!5595803))

(assert (= (and b!5595162 (is-Concat!24427 (reg!15911 r!7292))) b!5595804))

(assert (= (and b!5595162 (is-Star!15582 (reg!15911 r!7292))) b!5595805))

(assert (= (and b!5595162 (is-Union!15582 (reg!15911 r!7292))) b!5595806))

(declare-fun b!5595808 () Bool)

(declare-fun e!3451970 () Bool)

(declare-fun tp!1547362 () Bool)

(declare-fun tp!1547361 () Bool)

(assert (=> b!5595808 (= e!3451970 (and tp!1547362 tp!1547361))))

(assert (=> b!5595138 (= tp!1547305 e!3451970)))

(declare-fun b!5595810 () Bool)

(declare-fun tp!1547359 () Bool)

(declare-fun tp!1547360 () Bool)

(assert (=> b!5595810 (= e!3451970 (and tp!1547359 tp!1547360))))

(declare-fun b!5595807 () Bool)

(assert (=> b!5595807 (= e!3451970 tp_is_empty!40417)))

(declare-fun b!5595809 () Bool)

(declare-fun tp!1547358 () Bool)

(assert (=> b!5595809 (= e!3451970 tp!1547358)))

(assert (= (and b!5595138 (is-ElementMatch!15582 (regOne!31677 r!7292))) b!5595807))

(assert (= (and b!5595138 (is-Concat!24427 (regOne!31677 r!7292))) b!5595808))

(assert (= (and b!5595138 (is-Star!15582 (regOne!31677 r!7292))) b!5595809))

(assert (= (and b!5595138 (is-Union!15582 (regOne!31677 r!7292))) b!5595810))

(declare-fun b!5595812 () Bool)

(declare-fun e!3451971 () Bool)

(declare-fun tp!1547367 () Bool)

(declare-fun tp!1547366 () Bool)

(assert (=> b!5595812 (= e!3451971 (and tp!1547367 tp!1547366))))

(assert (=> b!5595138 (= tp!1547307 e!3451971)))

(declare-fun b!5595814 () Bool)

(declare-fun tp!1547364 () Bool)

(declare-fun tp!1547365 () Bool)

(assert (=> b!5595814 (= e!3451971 (and tp!1547364 tp!1547365))))

(declare-fun b!5595811 () Bool)

(assert (=> b!5595811 (= e!3451971 tp_is_empty!40417)))

(declare-fun b!5595813 () Bool)

(declare-fun tp!1547363 () Bool)

(assert (=> b!5595813 (= e!3451971 tp!1547363)))

(assert (= (and b!5595138 (is-ElementMatch!15582 (regTwo!31677 r!7292))) b!5595811))

(assert (= (and b!5595138 (is-Concat!24427 (regTwo!31677 r!7292))) b!5595812))

(assert (= (and b!5595138 (is-Star!15582 (regTwo!31677 r!7292))) b!5595813))

(assert (= (and b!5595138 (is-Union!15582 (regTwo!31677 r!7292))) b!5595814))

(declare-fun b!5595823 () Bool)

(declare-fun e!3451976 () Bool)

(declare-fun tp!1547372 () Bool)

(declare-fun tp!1547373 () Bool)

(assert (=> b!5595823 (= e!3451976 (and tp!1547372 tp!1547373))))

(assert (=> b!5595148 (= tp!1547302 e!3451976)))

(assert (= (and b!5595148 (is-Cons!62921 (exprs!5466 setElem!37306))) b!5595823))

(declare-fun b!5595831 () Bool)

(declare-fun e!3451982 () Bool)

(declare-fun tp!1547378 () Bool)

(assert (=> b!5595831 (= e!3451982 tp!1547378)))

(declare-fun e!3451981 () Bool)

(declare-fun tp!1547379 () Bool)

(declare-fun b!5595830 () Bool)

(assert (=> b!5595830 (= e!3451981 (and (inv!82203 (h!69371 (t!376329 zl!343))) e!3451982 tp!1547379))))

(assert (=> b!5595158 (= tp!1547309 e!3451981)))

(assert (= b!5595830 b!5595831))

(assert (= (and b!5595158 (is-Cons!62923 (t!376329 zl!343))) b!5595830))

(declare-fun m!6575094 () Bool)

(assert (=> b!5595830 m!6575094))

(declare-fun b!5595833 () Bool)

(declare-fun e!3451983 () Bool)

(declare-fun tp!1547384 () Bool)

(declare-fun tp!1547383 () Bool)

(assert (=> b!5595833 (= e!3451983 (and tp!1547384 tp!1547383))))

(assert (=> b!5595161 (= tp!1547303 e!3451983)))

(declare-fun b!5595835 () Bool)

(declare-fun tp!1547381 () Bool)

(declare-fun tp!1547382 () Bool)

(assert (=> b!5595835 (= e!3451983 (and tp!1547381 tp!1547382))))

(declare-fun b!5595832 () Bool)

(assert (=> b!5595832 (= e!3451983 tp_is_empty!40417)))

(declare-fun b!5595834 () Bool)

(declare-fun tp!1547380 () Bool)

(assert (=> b!5595834 (= e!3451983 tp!1547380)))

(assert (= (and b!5595161 (is-ElementMatch!15582 (regOne!31676 r!7292))) b!5595832))

(assert (= (and b!5595161 (is-Concat!24427 (regOne!31676 r!7292))) b!5595833))

(assert (= (and b!5595161 (is-Star!15582 (regOne!31676 r!7292))) b!5595834))

(assert (= (and b!5595161 (is-Union!15582 (regOne!31676 r!7292))) b!5595835))

(declare-fun b!5595837 () Bool)

(declare-fun e!3451984 () Bool)

(declare-fun tp!1547389 () Bool)

(declare-fun tp!1547388 () Bool)

(assert (=> b!5595837 (= e!3451984 (and tp!1547389 tp!1547388))))

(assert (=> b!5595161 (= tp!1547300 e!3451984)))

(declare-fun b!5595839 () Bool)

(declare-fun tp!1547386 () Bool)

(declare-fun tp!1547387 () Bool)

(assert (=> b!5595839 (= e!3451984 (and tp!1547386 tp!1547387))))

(declare-fun b!5595836 () Bool)

(assert (=> b!5595836 (= e!3451984 tp_is_empty!40417)))

(declare-fun b!5595838 () Bool)

(declare-fun tp!1547385 () Bool)

(assert (=> b!5595838 (= e!3451984 tp!1547385)))

(assert (= (and b!5595161 (is-ElementMatch!15582 (regTwo!31676 r!7292))) b!5595836))

(assert (= (and b!5595161 (is-Concat!24427 (regTwo!31676 r!7292))) b!5595837))

(assert (= (and b!5595161 (is-Star!15582 (regTwo!31676 r!7292))) b!5595838))

(assert (= (and b!5595161 (is-Union!15582 (regTwo!31676 r!7292))) b!5595839))

(declare-fun condSetEmpty!37312 () Bool)

(assert (=> setNonEmpty!37306 (= condSetEmpty!37312 (= setRest!37306 (as set.empty (Set Context!9932))))))

(declare-fun setRes!37312 () Bool)

(assert (=> setNonEmpty!37306 (= tp!1547301 setRes!37312)))

(declare-fun setIsEmpty!37312 () Bool)

(assert (=> setIsEmpty!37312 setRes!37312))

(declare-fun e!3451987 () Bool)

(declare-fun setElem!37312 () Context!9932)

(declare-fun tp!1547395 () Bool)

(declare-fun setNonEmpty!37312 () Bool)

(assert (=> setNonEmpty!37312 (= setRes!37312 (and tp!1547395 (inv!82203 setElem!37312) e!3451987))))

(declare-fun setRest!37312 () (Set Context!9932))

(assert (=> setNonEmpty!37312 (= setRest!37306 (set.union (set.insert setElem!37312 (as set.empty (Set Context!9932))) setRest!37312))))

(declare-fun b!5595844 () Bool)

(declare-fun tp!1547394 () Bool)

(assert (=> b!5595844 (= e!3451987 tp!1547394)))

(assert (= (and setNonEmpty!37306 condSetEmpty!37312) setIsEmpty!37312))

(assert (= (and setNonEmpty!37306 (not condSetEmpty!37312)) setNonEmpty!37312))

(assert (= setNonEmpty!37312 b!5595844))

(declare-fun m!6575096 () Bool)

(assert (=> setNonEmpty!37312 m!6575096))

(declare-fun b!5595845 () Bool)

(declare-fun e!3451988 () Bool)

(declare-fun tp!1547396 () Bool)

(declare-fun tp!1547397 () Bool)

(assert (=> b!5595845 (= e!3451988 (and tp!1547396 tp!1547397))))

(assert (=> b!5595156 (= tp!1547304 e!3451988)))

(assert (= (and b!5595156 (is-Cons!62921 (exprs!5466 (h!69371 zl!343)))) b!5595845))

(declare-fun b_lambda!212037 () Bool)

(assert (= b_lambda!212027 (or b!5595134 b_lambda!212037)))

(declare-fun bs!1293759 () Bool)

(declare-fun d!1768713 () Bool)

(assert (= bs!1293759 (and d!1768713 b!5595134)))

(assert (=> bs!1293759 (= (dynLambda!24612 lambda!300389 lt!2256105) (derivationStepZipperUp!850 lt!2256105 (h!69370 s!2326)))))

(assert (=> bs!1293759 m!6574498))

(assert (=> d!1768605 d!1768713))

(declare-fun b_lambda!212039 () Bool)

(assert (= b_lambda!212029 (or b!5595134 b_lambda!212039)))

(declare-fun bs!1293760 () Bool)

(declare-fun d!1768715 () Bool)

(assert (= bs!1293760 (and d!1768715 b!5595134)))

(assert (=> bs!1293760 (= (dynLambda!24612 lambda!300389 lt!2256099) (derivationStepZipperUp!850 lt!2256099 (h!69370 s!2326)))))

(assert (=> bs!1293760 m!6574514))

(assert (=> d!1768611 d!1768715))

(declare-fun b_lambda!212041 () Bool)

(assert (= b_lambda!212031 (or b!5595134 b_lambda!212041)))

(declare-fun bs!1293761 () Bool)

(declare-fun d!1768717 () Bool)

(assert (= bs!1293761 (and d!1768717 b!5595134)))

(assert (=> bs!1293761 (= (dynLambda!24612 lambda!300389 (h!69371 zl!343)) (derivationStepZipperUp!850 (h!69371 zl!343) (h!69370 s!2326)))))

(assert (=> bs!1293761 m!6574472))

(assert (=> d!1768641 d!1768717))

(push 1)

(assert (not b!5595542))

(assert (not b!5595814))

(assert (not d!1768709))

(assert (not d!1768661))

(assert (not b!5595603))

(assert (not d!1768639))

(assert (not b!5595661))

(assert (not b!5595594))

(assert (not b!5595593))

(assert (not b!5595709))

(assert (not b!5595535))

(assert (not b!5595806))

(assert (not b!5595702))

(assert (not b!5595656))

(assert (not b!5595704))

(assert (not d!1768629))

(assert (not bm!419456))

(assert (not d!1768561))

(assert (not d!1768609))

(assert (not b!5595672))

(assert (not b!5595592))

(assert (not d!1768641))

(assert (not b!5595662))

(assert (not b!5595564))

(assert (not d!1768599))

(assert (not d!1768619))

(assert (not b!5595456))

(assert (not d!1768657))

(assert (not b!5595417))

(assert (not bm!419457))

(assert (not bm!419514))

(assert (not b!5595833))

(assert (not b!5595540))

(assert (not b!5595618))

(assert (not b!5595837))

(assert (not d!1768605))

(assert (not bm!419460))

(assert (not d!1768611))

(assert (not d!1768687))

(assert (not bm!419478))

(assert (not d!1768699))

(assert (not bm!419505))

(assert (not d!1768597))

(assert (not b!5595607))

(assert (not d!1768615))

(assert (not d!1768607))

(assert (not b!5595835))

(assert (not b!5595531))

(assert (not b!5595602))

(assert (not bm!419518))

(assert (not d!1768591))

(assert (not bm!419534))

(assert (not d!1768631))

(assert (not b!5595834))

(assert (not b!5595587))

(assert (not setNonEmpty!37312))

(assert (not b!5595528))

(assert (not b!5595410))

(assert (not b!5595574))

(assert (not b!5595588))

(assert (not d!1768635))

(assert (not b!5595569))

(assert tp_is_empty!40417)

(assert (not b!5595485))

(assert (not d!1768593))

(assert (not b!5595424))

(assert (not b!5595805))

(assert (not bm!419476))

(assert (not b!5595706))

(assert (not b!5595532))

(assert (not bm!419516))

(assert (not b!5595792))

(assert (not b_lambda!212041))

(assert (not b!5595467))

(assert (not d!1768601))

(assert (not b!5595406))

(assert (not b!5595541))

(assert (not bs!1293759))

(assert (not b!5595781))

(assert (not d!1768689))

(assert (not d!1768623))

(assert (not d!1768647))

(assert (not b!5595591))

(assert (not b!5595536))

(assert (not d!1768567))

(assert (not b!5595844))

(assert (not bm!419484))

(assert (not b!5595596))

(assert (not d!1768701))

(assert (not b!5595575))

(assert (not bm!419482))

(assert (not b!5595703))

(assert (not b!5595598))

(assert (not b!5595653))

(assert (not bm!419506))

(assert (not b!5595813))

(assert (not b!5595534))

(assert (not b!5595783))

(assert (not bm!419521))

(assert (not b!5595812))

(assert (not d!1768587))

(assert (not b!5595367))

(assert (not d!1768595))

(assert (not b!5595774))

(assert (not b!5595655))

(assert (not b!5595407))

(assert (not bs!1293760))

(assert (not b!5595619))

(assert (not b!5595810))

(assert (not b!5595368))

(assert (not b!5595830))

(assert (not bm!419474))

(assert (not b!5595823))

(assert (not b!5595708))

(assert (not b!5595831))

(assert (not b!5595405))

(assert (not b!5595484))

(assert (not b!5595565))

(assert (not bs!1293761))

(assert (not b!5595839))

(assert (not b!5595590))

(assert (not b_lambda!212039))

(assert (not b!5595483))

(assert (not b!5595595))

(assert (not bm!419520))

(assert (not b!5595570))

(assert (not b_lambda!212037))

(assert (not b!5595414))

(assert (not d!1768603))

(assert (not b!5595654))

(assert (not d!1768571))

(assert (not d!1768653))

(assert (not d!1768691))

(assert (not bm!419513))

(assert (not d!1768673))

(assert (not b!5595660))

(assert (not d!1768625))

(assert (not b!5595529))

(assert (not bm!419533))

(assert (not b!5595597))

(assert (not b!5595838))

(assert (not b!5595804))

(assert (not b!5595423))

(assert (not b!5595782))

(assert (not d!1768685))

(assert (not b!5595808))

(assert (not b!5595589))

(assert (not d!1768707))

(assert (not bm!419480))

(assert (not b!5595809))

(assert (not d!1768637))

(assert (not b!5595845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5596090 () Bool)

(declare-fun e!3452132 () Bool)

(declare-fun call!419571 () Bool)

(assert (=> b!5596090 (= e!3452132 call!419571)))

(declare-fun bm!419566 () Bool)

(declare-fun call!419572 () Bool)

(declare-fun c!980995 () Bool)

(assert (=> bm!419566 (= call!419572 (nullable!5614 (ite c!980995 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))))))

(declare-fun b!5596091 () Bool)

(declare-fun e!3452134 () Bool)

(declare-fun e!3452129 () Bool)

(assert (=> b!5596091 (= e!3452134 e!3452129)))

(assert (=> b!5596091 (= c!980995 (is-Union!15582 (regTwo!31677 (regOne!31676 r!7292))))))

(declare-fun b!5596092 () Bool)

(declare-fun e!3452130 () Bool)

(assert (=> b!5596092 (= e!3452129 e!3452130)))

(declare-fun res!2373841 () Bool)

(assert (=> b!5596092 (= res!2373841 call!419572)))

(assert (=> b!5596092 (=> (not res!2373841) (not e!3452130))))

(declare-fun b!5596093 () Bool)

(declare-fun e!3452133 () Bool)

(assert (=> b!5596093 (= e!3452133 e!3452134)))

(declare-fun res!2373837 () Bool)

(assert (=> b!5596093 (=> res!2373837 e!3452134)))

(assert (=> b!5596093 (= res!2373837 (is-Star!15582 (regTwo!31677 (regOne!31676 r!7292))))))

(declare-fun b!5596094 () Bool)

(assert (=> b!5596094 (= e!3452130 call!419571)))

(declare-fun b!5596095 () Bool)

(assert (=> b!5596095 (= e!3452129 e!3452132)))

(declare-fun res!2373840 () Bool)

(assert (=> b!5596095 (= res!2373840 call!419572)))

(assert (=> b!5596095 (=> res!2373840 e!3452132)))

(declare-fun bm!419567 () Bool)

(assert (=> bm!419567 (= call!419571 (nullable!5614 (ite c!980995 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))))))))

(declare-fun d!1768765 () Bool)

(declare-fun res!2373839 () Bool)

(declare-fun e!3452131 () Bool)

(assert (=> d!1768765 (=> res!2373839 e!3452131)))

(assert (=> d!1768765 (= res!2373839 (is-EmptyExpr!15582 (regTwo!31677 (regOne!31676 r!7292))))))

(assert (=> d!1768765 (= (nullableFct!1723 (regTwo!31677 (regOne!31676 r!7292))) e!3452131)))

(declare-fun b!5596096 () Bool)

(assert (=> b!5596096 (= e!3452131 e!3452133)))

(declare-fun res!2373838 () Bool)

(assert (=> b!5596096 (=> (not res!2373838) (not e!3452133))))

(assert (=> b!5596096 (= res!2373838 (and (not (is-EmptyLang!15582 (regTwo!31677 (regOne!31676 r!7292)))) (not (is-ElementMatch!15582 (regTwo!31677 (regOne!31676 r!7292))))))))

(assert (= (and d!1768765 (not res!2373839)) b!5596096))

(assert (= (and b!5596096 res!2373838) b!5596093))

(assert (= (and b!5596093 (not res!2373837)) b!5596091))

(assert (= (and b!5596091 c!980995) b!5596095))

(assert (= (and b!5596091 (not c!980995)) b!5596092))

(assert (= (and b!5596095 (not res!2373840)) b!5596090))

(assert (= (and b!5596092 res!2373841) b!5596094))

(assert (= (or b!5596090 b!5596094) bm!419567))

(assert (= (or b!5596095 b!5596092) bm!419566))

(declare-fun m!6575210 () Bool)

(assert (=> bm!419566 m!6575210))

(declare-fun m!6575212 () Bool)

(assert (=> bm!419567 m!6575212))

(assert (=> d!1768603 d!1768765))

(declare-fun bm!419568 () Bool)

(declare-fun call!419574 () (Set Context!9932))

(declare-fun call!419577 () (Set Context!9932))

(assert (=> bm!419568 (= call!419574 call!419577)))

(declare-fun b!5596098 () Bool)

(declare-fun e!3452140 () (Set Context!9932))

(declare-fun call!419573 () (Set Context!9932))

(declare-fun call!419578 () (Set Context!9932))

(assert (=> b!5596098 (= e!3452140 (set.union call!419573 call!419578))))

(declare-fun b!5596099 () Bool)

(declare-fun e!3452135 () (Set Context!9932))

(declare-fun e!3452137 () (Set Context!9932))

(assert (=> b!5596099 (= e!3452135 e!3452137)))

(declare-fun c!981000 () Bool)

(assert (=> b!5596099 (= c!981000 (is-Concat!24427 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))))

(declare-fun b!5596100 () Bool)

(assert (=> b!5596100 (= e!3452135 (set.union call!419573 call!419577))))

(declare-fun call!419575 () List!63045)

(declare-fun bm!419569 () Bool)

(declare-fun c!980996 () Bool)

(assert (=> bm!419569 (= call!419575 ($colon$colon!1645 (exprs!5466 (ite (or c!980891 c!980889) lt!2256087 (Context!9933 call!419523))) (ite (or c!980996 c!981000) (regTwo!31676 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))) (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343))))))))))))

(declare-fun b!5596101 () Bool)

(declare-fun e!3452138 () (Set Context!9932))

(assert (=> b!5596101 (= e!3452138 (set.insert (ite (or c!980891 c!980889) lt!2256087 (Context!9933 call!419523)) (as set.empty (Set Context!9932))))))

(declare-fun b!5596102 () Bool)

(assert (=> b!5596102 (= e!3452138 e!3452140)))

(declare-fun c!980998 () Bool)

(assert (=> b!5596102 (= c!980998 (is-Union!15582 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))))

(declare-fun b!5596103 () Bool)

(declare-fun e!3452136 () (Set Context!9932))

(assert (=> b!5596103 (= e!3452136 (as set.empty (Set Context!9932)))))

(declare-fun bm!419570 () Bool)

(declare-fun call!419576 () List!63045)

(assert (=> bm!419570 (= call!419576 call!419575)))

(declare-fun b!5596104 () Bool)

(assert (=> b!5596104 (= e!3452137 call!419574)))

(declare-fun c!980999 () Bool)

(declare-fun d!1768767 () Bool)

(assert (=> d!1768767 (= c!980999 (and (is-ElementMatch!15582 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))) (= (c!980755 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))) (h!69370 s!2326))))))

(assert (=> d!1768767 (= (derivationStepZipperDown!924 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343))))))) (ite (or c!980891 c!980889) lt!2256087 (Context!9933 call!419523)) (h!69370 s!2326)) e!3452138)))

(declare-fun b!5596097 () Bool)

(declare-fun e!3452139 () Bool)

(assert (=> b!5596097 (= e!3452139 (nullable!5614 (regOne!31676 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343))))))))))))

(declare-fun b!5596105 () Bool)

(assert (=> b!5596105 (= e!3452136 call!419574)))

(declare-fun bm!419571 () Bool)

(assert (=> bm!419571 (= call!419578 (derivationStepZipperDown!924 (ite c!980998 (regTwo!31677 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))) (ite c!980996 (regTwo!31676 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))) (ite c!981000 (regOne!31676 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))) (reg!15911 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343))))))))))) (ite (or c!980998 c!980996) (ite (or c!980891 c!980889) lt!2256087 (Context!9933 call!419523)) (Context!9933 call!419576)) (h!69370 s!2326)))))

(declare-fun bm!419572 () Bool)

(assert (=> bm!419572 (= call!419577 call!419578)))

(declare-fun c!980997 () Bool)

(declare-fun b!5596106 () Bool)

(assert (=> b!5596106 (= c!980997 (is-Star!15582 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))))

(assert (=> b!5596106 (= e!3452137 e!3452136)))

(declare-fun b!5596107 () Bool)

(assert (=> b!5596107 (= c!980996 e!3452139)))

(declare-fun res!2373842 () Bool)

(assert (=> b!5596107 (=> (not res!2373842) (not e!3452139))))

(assert (=> b!5596107 (= res!2373842 (is-Concat!24427 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))))

(assert (=> b!5596107 (= e!3452140 e!3452135)))

(declare-fun bm!419573 () Bool)

(assert (=> bm!419573 (= call!419573 (derivationStepZipperDown!924 (ite c!980998 (regOne!31677 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343)))))))) (regOne!31676 (ite c!980891 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980889 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!980893 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343))))))))) (ite c!980998 (ite (or c!980891 c!980889) lt!2256087 (Context!9933 call!419523)) (Context!9933 call!419575)) (h!69370 s!2326)))))

(assert (= (and d!1768767 c!980999) b!5596101))

(assert (= (and d!1768767 (not c!980999)) b!5596102))

(assert (= (and b!5596102 c!980998) b!5596098))

(assert (= (and b!5596102 (not c!980998)) b!5596107))

(assert (= (and b!5596107 res!2373842) b!5596097))

(assert (= (and b!5596107 c!980996) b!5596100))

(assert (= (and b!5596107 (not c!980996)) b!5596099))

(assert (= (and b!5596099 c!981000) b!5596104))

(assert (= (and b!5596099 (not c!981000)) b!5596106))

(assert (= (and b!5596106 c!980997) b!5596105))

(assert (= (and b!5596106 (not c!980997)) b!5596103))

(assert (= (or b!5596104 b!5596105) bm!419570))

(assert (= (or b!5596104 b!5596105) bm!419568))

(assert (= (or b!5596100 bm!419570) bm!419569))

(assert (= (or b!5596100 bm!419568) bm!419572))

(assert (= (or b!5596098 bm!419572) bm!419571))

(assert (= (or b!5596098 b!5596100) bm!419573))

(declare-fun m!6575214 () Bool)

(assert (=> bm!419571 m!6575214))

(declare-fun m!6575216 () Bool)

(assert (=> bm!419573 m!6575216))

(declare-fun m!6575218 () Bool)

(assert (=> b!5596101 m!6575218))

(declare-fun m!6575220 () Bool)

(assert (=> bm!419569 m!6575220))

(declare-fun m!6575222 () Bool)

(assert (=> b!5596097 m!6575222))

(assert (=> bm!419518 d!1768767))

(declare-fun d!1768769 () Bool)

(assert (=> d!1768769 true))

(declare-fun setRes!37318 () Bool)

(assert (=> d!1768769 setRes!37318))

(declare-fun condSetEmpty!37318 () Bool)

(declare-fun res!2373845 () (Set Context!9932))

(assert (=> d!1768769 (= condSetEmpty!37318 (= res!2373845 (as set.empty (Set Context!9932))))))

(assert (=> d!1768769 (= (choose!42433 z!1189 lambda!300389) res!2373845)))

(declare-fun setIsEmpty!37318 () Bool)

(assert (=> setIsEmpty!37318 setRes!37318))

(declare-fun setNonEmpty!37318 () Bool)

(declare-fun tp!1547461 () Bool)

(declare-fun e!3452143 () Bool)

(declare-fun setElem!37318 () Context!9932)

(assert (=> setNonEmpty!37318 (= setRes!37318 (and tp!1547461 (inv!82203 setElem!37318) e!3452143))))

(declare-fun setRest!37318 () (Set Context!9932))

(assert (=> setNonEmpty!37318 (= res!2373845 (set.union (set.insert setElem!37318 (as set.empty (Set Context!9932))) setRest!37318))))

(declare-fun b!5596110 () Bool)

(declare-fun tp!1547460 () Bool)

(assert (=> b!5596110 (= e!3452143 tp!1547460)))

(assert (= (and d!1768769 condSetEmpty!37318) setIsEmpty!37318))

(assert (= (and d!1768769 (not condSetEmpty!37318)) setNonEmpty!37318))

(assert (= setNonEmpty!37318 b!5596110))

(declare-fun m!6575224 () Bool)

(assert (=> setNonEmpty!37318 m!6575224))

(assert (=> d!1768653 d!1768769))

(declare-fun d!1768771 () Bool)

(assert (=> d!1768771 (= (isEmpty!34748 (tail!11028 s!2326)) (is-Nil!62922 (tail!11028 s!2326)))))

(assert (=> b!5595414 d!1768771))

(declare-fun d!1768773 () Bool)

(assert (=> d!1768773 (= (tail!11028 s!2326) (t!376328 s!2326))))

(assert (=> b!5595414 d!1768773))

(assert (=> d!1768707 d!1768709))

(assert (=> d!1768707 d!1768629))

(declare-fun e!3452146 () Bool)

(declare-fun d!1768775 () Bool)

(assert (=> d!1768775 (= (matchZipper!1720 (set.union lt!2256094 lt!2256084) (t!376328 s!2326)) e!3452146)))

(declare-fun res!2373848 () Bool)

(assert (=> d!1768775 (=> res!2373848 e!3452146)))

(assert (=> d!1768775 (= res!2373848 (matchZipper!1720 lt!2256094 (t!376328 s!2326)))))

(assert (=> d!1768775 true))

(declare-fun _$48!1190 () Unit!155748)

(assert (=> d!1768775 (= (choose!42431 lt!2256094 lt!2256084 (t!376328 s!2326)) _$48!1190)))

(declare-fun b!5596113 () Bool)

(assert (=> b!5596113 (= e!3452146 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(assert (= (and d!1768775 (not res!2373848)) b!5596113))

(assert (=> d!1768775 m!6574544))

(assert (=> d!1768775 m!6574530))

(assert (=> b!5596113 m!6574448))

(assert (=> d!1768707 d!1768775))

(declare-fun d!1768777 () Bool)

(assert (=> d!1768777 (= (head!11933 s!2326) (h!69370 s!2326))))

(assert (=> b!5595410 d!1768777))

(declare-fun d!1768779 () Bool)

(declare-fun lambda!300463 () Int)

(declare-fun exists!2171 ((Set Context!9932) Int) Bool)

(assert (=> d!1768779 (= (nullableZipper!1577 lt!2256084) (exists!2171 lt!2256084 lambda!300463))))

(declare-fun bs!1293786 () Bool)

(assert (= bs!1293786 d!1768779))

(declare-fun m!6575226 () Bool)

(assert (=> bs!1293786 m!6575226))

(assert (=> b!5595574 d!1768779))

(declare-fun bm!419574 () Bool)

(declare-fun call!419580 () (Set Context!9932))

(declare-fun call!419583 () (Set Context!9932))

(assert (=> bm!419574 (= call!419580 call!419583)))

(declare-fun b!5596115 () Bool)

(declare-fun e!3452152 () (Set Context!9932))

(declare-fun call!419579 () (Set Context!9932))

(declare-fun call!419584 () (Set Context!9932))

(assert (=> b!5596115 (= e!3452152 (set.union call!419579 call!419584))))

(declare-fun b!5596116 () Bool)

(declare-fun e!3452147 () (Set Context!9932))

(declare-fun e!3452149 () (Set Context!9932))

(assert (=> b!5596116 (= e!3452147 e!3452149)))

(declare-fun c!981007 () Bool)

(assert (=> b!5596116 (= c!981007 (is-Concat!24427 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))))

(declare-fun b!5596117 () Bool)

(assert (=> b!5596117 (= e!3452147 (set.union call!419579 call!419583))))

(declare-fun c!981003 () Bool)

(declare-fun call!419581 () List!63045)

(declare-fun bm!419575 () Bool)

(assert (=> bm!419575 (= call!419581 ($colon$colon!1645 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))) (ite (or c!981003 c!981007) (regTwo!31676 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))))))

(declare-fun b!5596118 () Bool)

(declare-fun e!3452150 () (Set Context!9932))

(assert (=> b!5596118 (= e!3452150 (set.insert (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (as set.empty (Set Context!9932))))))

(declare-fun b!5596119 () Bool)

(assert (=> b!5596119 (= e!3452150 e!3452152)))

(declare-fun c!981005 () Bool)

(assert (=> b!5596119 (= c!981005 (is-Union!15582 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))))

(declare-fun b!5596120 () Bool)

(declare-fun e!3452148 () (Set Context!9932))

(assert (=> b!5596120 (= e!3452148 (as set.empty (Set Context!9932)))))

(declare-fun bm!419576 () Bool)

(declare-fun call!419582 () List!63045)

(assert (=> bm!419576 (= call!419582 call!419581)))

(declare-fun b!5596121 () Bool)

(assert (=> b!5596121 (= e!3452149 call!419580)))

(declare-fun d!1768781 () Bool)

(declare-fun c!981006 () Bool)

(assert (=> d!1768781 (= c!981006 (and (is-ElementMatch!15582 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (= (c!980755 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (h!69370 s!2326))))))

(assert (=> d!1768781 (= (derivationStepZipperDown!924 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))) (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (h!69370 s!2326)) e!3452150)))

(declare-fun b!5596114 () Bool)

(declare-fun e!3452151 () Bool)

(assert (=> b!5596114 (= e!3452151 (nullable!5614 (regOne!31676 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))))))

(declare-fun b!5596122 () Bool)

(assert (=> b!5596122 (= e!3452148 call!419580)))

(declare-fun bm!419577 () Bool)

(assert (=> bm!419577 (= call!419584 (derivationStepZipperDown!924 (ite c!981005 (regTwo!31677 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (ite c!981003 (regTwo!31676 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (ite c!981007 (regOne!31676 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (reg!15911 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))))) (ite (or c!981005 c!981003) (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (Context!9933 call!419582)) (h!69370 s!2326)))))

(declare-fun bm!419578 () Bool)

(assert (=> bm!419578 (= call!419583 call!419584)))

(declare-fun b!5596123 () Bool)

(declare-fun c!981004 () Bool)

(assert (=> b!5596123 (= c!981004 (is-Star!15582 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))))

(assert (=> b!5596123 (= e!3452149 e!3452148)))

(declare-fun b!5596124 () Bool)

(assert (=> b!5596124 (= c!981003 e!3452151)))

(declare-fun res!2373849 () Bool)

(assert (=> b!5596124 (=> (not res!2373849) (not e!3452151))))

(assert (=> b!5596124 (= res!2373849 (is-Concat!24427 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))))

(assert (=> b!5596124 (= e!3452152 e!3452147)))

(declare-fun bm!419579 () Bool)

(assert (=> bm!419579 (= call!419579 (derivationStepZipperDown!924 (ite c!981005 (regOne!31677 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (regOne!31676 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))) (ite c!981005 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (Context!9933 call!419581)) (h!69370 s!2326)))))

(assert (= (and d!1768781 c!981006) b!5596118))

(assert (= (and d!1768781 (not c!981006)) b!5596119))

(assert (= (and b!5596119 c!981005) b!5596115))

(assert (= (and b!5596119 (not c!981005)) b!5596124))

(assert (= (and b!5596124 res!2373849) b!5596114))

(assert (= (and b!5596124 c!981003) b!5596117))

(assert (= (and b!5596124 (not c!981003)) b!5596116))

(assert (= (and b!5596116 c!981007) b!5596121))

(assert (= (and b!5596116 (not c!981007)) b!5596123))

(assert (= (and b!5596123 c!981004) b!5596122))

(assert (= (and b!5596123 (not c!981004)) b!5596120))

(assert (= (or b!5596121 b!5596122) bm!419576))

(assert (= (or b!5596121 b!5596122) bm!419574))

(assert (= (or b!5596117 bm!419576) bm!419575))

(assert (= (or b!5596117 bm!419574) bm!419578))

(assert (= (or b!5596115 bm!419578) bm!419577))

(assert (= (or b!5596115 b!5596117) bm!419579))

(declare-fun m!6575228 () Bool)

(assert (=> bm!419577 m!6575228))

(declare-fun m!6575230 () Bool)

(assert (=> bm!419579 m!6575230))

(declare-fun m!6575232 () Bool)

(assert (=> b!5596118 m!6575232))

(declare-fun m!6575234 () Bool)

(assert (=> bm!419575 m!6575234))

(declare-fun m!6575236 () Bool)

(assert (=> b!5596114 m!6575236))

(assert (=> bm!419514 d!1768781))

(declare-fun b!5596135 () Bool)

(declare-fun res!2373854 () Bool)

(declare-fun e!3452157 () Bool)

(assert (=> b!5596135 (=> (not res!2373854) (not e!3452157))))

(declare-fun lt!2256307 () List!63046)

(declare-fun size!39968 (List!63046) Int)

(assert (=> b!5596135 (= res!2373854 (= (size!39968 lt!2256307) (+ (size!39968 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922))) (size!39968 (t!376328 s!2326)))))))

(declare-fun b!5596133 () Bool)

(declare-fun e!3452158 () List!63046)

(assert (=> b!5596133 (= e!3452158 (t!376328 s!2326))))

(declare-fun d!1768783 () Bool)

(assert (=> d!1768783 e!3452157))

(declare-fun res!2373855 () Bool)

(assert (=> d!1768783 (=> (not res!2373855) (not e!3452157))))

(declare-fun content!11361 (List!63046) (Set C!31434))

(assert (=> d!1768783 (= res!2373855 (= (content!11361 lt!2256307) (set.union (content!11361 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922))) (content!11361 (t!376328 s!2326)))))))

(assert (=> d!1768783 (= lt!2256307 e!3452158)))

(declare-fun c!981010 () Bool)

(assert (=> d!1768783 (= c!981010 (is-Nil!62922 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922))))))

(assert (=> d!1768783 (= (++!13812 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (t!376328 s!2326)) lt!2256307)))

(declare-fun b!5596134 () Bool)

(assert (=> b!5596134 (= e!3452158 (Cons!62922 (h!69370 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922))) (++!13812 (t!376328 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922))) (t!376328 s!2326))))))

(declare-fun b!5596136 () Bool)

(assert (=> b!5596136 (= e!3452157 (or (not (= (t!376328 s!2326) Nil!62922)) (= lt!2256307 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)))))))

(assert (= (and d!1768783 c!981010) b!5596133))

(assert (= (and d!1768783 (not c!981010)) b!5596134))

(assert (= (and d!1768783 res!2373855) b!5596135))

(assert (= (and b!5596135 res!2373854) b!5596136))

(declare-fun m!6575238 () Bool)

(assert (=> b!5596135 m!6575238))

(assert (=> b!5596135 m!6575010))

(declare-fun m!6575240 () Bool)

(assert (=> b!5596135 m!6575240))

(declare-fun m!6575242 () Bool)

(assert (=> b!5596135 m!6575242))

(declare-fun m!6575244 () Bool)

(assert (=> d!1768783 m!6575244))

(assert (=> d!1768783 m!6575010))

(declare-fun m!6575246 () Bool)

(assert (=> d!1768783 m!6575246))

(declare-fun m!6575248 () Bool)

(assert (=> d!1768783 m!6575248))

(declare-fun m!6575250 () Bool)

(assert (=> b!5596134 m!6575250))

(assert (=> b!5595704 d!1768783))

(declare-fun b!5596139 () Bool)

(declare-fun res!2373856 () Bool)

(declare-fun e!3452159 () Bool)

(assert (=> b!5596139 (=> (not res!2373856) (not e!3452159))))

(declare-fun lt!2256308 () List!63046)

(assert (=> b!5596139 (= res!2373856 (= (size!39968 lt!2256308) (+ (size!39968 Nil!62922) (size!39968 (Cons!62922 (h!69370 s!2326) Nil!62922)))))))

(declare-fun b!5596137 () Bool)

(declare-fun e!3452160 () List!63046)

(assert (=> b!5596137 (= e!3452160 (Cons!62922 (h!69370 s!2326) Nil!62922))))

(declare-fun d!1768785 () Bool)

(assert (=> d!1768785 e!3452159))

(declare-fun res!2373857 () Bool)

(assert (=> d!1768785 (=> (not res!2373857) (not e!3452159))))

(assert (=> d!1768785 (= res!2373857 (= (content!11361 lt!2256308) (set.union (content!11361 Nil!62922) (content!11361 (Cons!62922 (h!69370 s!2326) Nil!62922)))))))

(assert (=> d!1768785 (= lt!2256308 e!3452160)))

(declare-fun c!981011 () Bool)

(assert (=> d!1768785 (= c!981011 (is-Nil!62922 Nil!62922))))

(assert (=> d!1768785 (= (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) lt!2256308)))

(declare-fun b!5596138 () Bool)

(assert (=> b!5596138 (= e!3452160 (Cons!62922 (h!69370 Nil!62922) (++!13812 (t!376328 Nil!62922) (Cons!62922 (h!69370 s!2326) Nil!62922))))))

(declare-fun b!5596140 () Bool)

(assert (=> b!5596140 (= e!3452159 (or (not (= (Cons!62922 (h!69370 s!2326) Nil!62922) Nil!62922)) (= lt!2256308 Nil!62922)))))

(assert (= (and d!1768785 c!981011) b!5596137))

(assert (= (and d!1768785 (not c!981011)) b!5596138))

(assert (= (and d!1768785 res!2373857) b!5596139))

(assert (= (and b!5596139 res!2373856) b!5596140))

(declare-fun m!6575252 () Bool)

(assert (=> b!5596139 m!6575252))

(declare-fun m!6575254 () Bool)

(assert (=> b!5596139 m!6575254))

(declare-fun m!6575256 () Bool)

(assert (=> b!5596139 m!6575256))

(declare-fun m!6575258 () Bool)

(assert (=> d!1768785 m!6575258))

(declare-fun m!6575260 () Bool)

(assert (=> d!1768785 m!6575260))

(declare-fun m!6575262 () Bool)

(assert (=> d!1768785 m!6575262))

(declare-fun m!6575264 () Bool)

(assert (=> b!5596138 m!6575264))

(assert (=> b!5595704 d!1768785))

(declare-fun d!1768787 () Bool)

(assert (=> d!1768787 (= (++!13812 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (t!376328 s!2326)) s!2326)))

(declare-fun lt!2256311 () Unit!155748)

(declare-fun choose!42444 (List!63046 C!31434 List!63046 List!63046) Unit!155748)

(assert (=> d!1768787 (= lt!2256311 (choose!42444 Nil!62922 (h!69370 s!2326) (t!376328 s!2326) s!2326))))

(assert (=> d!1768787 (= (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) (t!376328 s!2326))) s!2326)))

(assert (=> d!1768787 (= (lemmaMoveElementToOtherListKeepsConcatEq!1981 Nil!62922 (h!69370 s!2326) (t!376328 s!2326) s!2326) lt!2256311)))

(declare-fun bs!1293787 () Bool)

(assert (= bs!1293787 d!1768787))

(assert (=> bs!1293787 m!6575010))

(assert (=> bs!1293787 m!6575010))

(assert (=> bs!1293787 m!6575012))

(declare-fun m!6575266 () Bool)

(assert (=> bs!1293787 m!6575266))

(declare-fun m!6575268 () Bool)

(assert (=> bs!1293787 m!6575268))

(assert (=> b!5595704 d!1768787))

(declare-fun b!5596141 () Bool)

(declare-fun e!3452164 () Bool)

(declare-fun lt!2256312 () Option!15591)

(assert (=> b!5596141 (= e!3452164 (= (++!13812 (_1!35982 (get!21671 lt!2256312)) (_2!35982 (get!21671 lt!2256312))) s!2326))))

(declare-fun b!5596142 () Bool)

(declare-fun e!3452163 () Bool)

(assert (=> b!5596142 (= e!3452163 (not (isDefined!12294 lt!2256312)))))

(declare-fun b!5596143 () Bool)

(declare-fun lt!2256314 () Unit!155748)

(declare-fun lt!2256313 () Unit!155748)

(assert (=> b!5596143 (= lt!2256314 lt!2256313)))

(assert (=> b!5596143 (= (++!13812 (++!13812 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (Cons!62922 (h!69370 (t!376328 s!2326)) Nil!62922)) (t!376328 (t!376328 s!2326))) s!2326)))

(assert (=> b!5596143 (= lt!2256313 (lemmaMoveElementToOtherListKeepsConcatEq!1981 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (h!69370 (t!376328 s!2326)) (t!376328 (t!376328 s!2326)) s!2326))))

(declare-fun e!3452161 () Option!15591)

(assert (=> b!5596143 (= e!3452161 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) (++!13812 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (Cons!62922 (h!69370 (t!376328 s!2326)) Nil!62922)) (t!376328 (t!376328 s!2326)) s!2326))))

(declare-fun b!5596145 () Bool)

(declare-fun res!2373860 () Bool)

(assert (=> b!5596145 (=> (not res!2373860) (not e!3452164))))

(assert (=> b!5596145 (= res!2373860 (matchR!7767 (regTwo!31676 r!7292) (_2!35982 (get!21671 lt!2256312))))))

(declare-fun b!5596146 () Bool)

(declare-fun e!3452165 () Option!15591)

(assert (=> b!5596146 (= e!3452165 (Some!15590 (tuple2!65359 (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (t!376328 s!2326))))))

(declare-fun b!5596147 () Bool)

(declare-fun e!3452162 () Bool)

(assert (=> b!5596147 (= e!3452162 (matchR!7767 (regTwo!31676 r!7292) (t!376328 s!2326)))))

(declare-fun b!5596148 () Bool)

(declare-fun res!2373862 () Bool)

(assert (=> b!5596148 (=> (not res!2373862) (not e!3452164))))

(assert (=> b!5596148 (= res!2373862 (matchR!7767 (regOne!31676 r!7292) (_1!35982 (get!21671 lt!2256312))))))

(declare-fun b!5596149 () Bool)

(assert (=> b!5596149 (= e!3452161 None!15590)))

(declare-fun d!1768789 () Bool)

(assert (=> d!1768789 e!3452163))

(declare-fun res!2373859 () Bool)

(assert (=> d!1768789 (=> res!2373859 e!3452163)))

(assert (=> d!1768789 (= res!2373859 e!3452164)))

(declare-fun res!2373858 () Bool)

(assert (=> d!1768789 (=> (not res!2373858) (not e!3452164))))

(assert (=> d!1768789 (= res!2373858 (isDefined!12294 lt!2256312))))

(assert (=> d!1768789 (= lt!2256312 e!3452165)))

(declare-fun c!981013 () Bool)

(assert (=> d!1768789 (= c!981013 e!3452162)))

(declare-fun res!2373861 () Bool)

(assert (=> d!1768789 (=> (not res!2373861) (not e!3452162))))

(assert (=> d!1768789 (= res!2373861 (matchR!7767 (regOne!31676 r!7292) (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922))))))

(assert (=> d!1768789 (validRegex!7318 (regOne!31676 r!7292))))

(assert (=> d!1768789 (= (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) (++!13812 Nil!62922 (Cons!62922 (h!69370 s!2326) Nil!62922)) (t!376328 s!2326) s!2326) lt!2256312)))

(declare-fun b!5596144 () Bool)

(assert (=> b!5596144 (= e!3452165 e!3452161)))

(declare-fun c!981012 () Bool)

(assert (=> b!5596144 (= c!981012 (is-Nil!62922 (t!376328 s!2326)))))

(assert (= (and d!1768789 res!2373861) b!5596147))

(assert (= (and d!1768789 c!981013) b!5596146))

(assert (= (and d!1768789 (not c!981013)) b!5596144))

(assert (= (and b!5596144 c!981012) b!5596149))

(assert (= (and b!5596144 (not c!981012)) b!5596143))

(assert (= (and d!1768789 res!2373858) b!5596148))

(assert (= (and b!5596148 res!2373862) b!5596145))

(assert (= (and b!5596145 res!2373860) b!5596141))

(assert (= (and d!1768789 (not res!2373859)) b!5596142))

(declare-fun m!6575270 () Bool)

(assert (=> b!5596148 m!6575270))

(declare-fun m!6575272 () Bool)

(assert (=> b!5596148 m!6575272))

(assert (=> b!5596143 m!6575010))

(declare-fun m!6575274 () Bool)

(assert (=> b!5596143 m!6575274))

(assert (=> b!5596143 m!6575274))

(declare-fun m!6575276 () Bool)

(assert (=> b!5596143 m!6575276))

(assert (=> b!5596143 m!6575010))

(declare-fun m!6575278 () Bool)

(assert (=> b!5596143 m!6575278))

(assert (=> b!5596143 m!6575274))

(declare-fun m!6575280 () Bool)

(assert (=> b!5596143 m!6575280))

(declare-fun m!6575282 () Bool)

(assert (=> b!5596147 m!6575282))

(assert (=> b!5596145 m!6575270))

(declare-fun m!6575284 () Bool)

(assert (=> b!5596145 m!6575284))

(declare-fun m!6575286 () Bool)

(assert (=> b!5596142 m!6575286))

(assert (=> b!5596141 m!6575270))

(declare-fun m!6575288 () Bool)

(assert (=> b!5596141 m!6575288))

(assert (=> d!1768789 m!6575286))

(assert (=> d!1768789 m!6575010))

(declare-fun m!6575290 () Bool)

(assert (=> d!1768789 m!6575290))

(assert (=> d!1768789 m!6575028))

(assert (=> b!5595704 d!1768789))

(declare-fun d!1768791 () Bool)

(assert (=> d!1768791 (= (isEmpty!34751 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) Nil!62922 s!2326 s!2326)) (not (is-Some!15590 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) Nil!62922 s!2326 s!2326))))))

(assert (=> d!1768699 d!1768791))

(declare-fun d!1768793 () Bool)

(declare-fun res!2373865 () Bool)

(declare-fun e!3452169 () Bool)

(assert (=> d!1768793 (=> res!2373865 e!3452169)))

(assert (=> d!1768793 (= res!2373865 (is-ElementMatch!15582 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))))))

(assert (=> d!1768793 (= (validRegex!7318 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))) e!3452169)))

(declare-fun b!5596150 () Bool)

(declare-fun res!2373866 () Bool)

(declare-fun e!3452168 () Bool)

(assert (=> b!5596150 (=> (not res!2373866) (not e!3452168))))

(declare-fun call!419586 () Bool)

(assert (=> b!5596150 (= res!2373866 call!419586)))

(declare-fun e!3452167 () Bool)

(assert (=> b!5596150 (= e!3452167 e!3452168)))

(declare-fun b!5596151 () Bool)

(declare-fun e!3452170 () Bool)

(declare-fun e!3452171 () Bool)

(assert (=> b!5596151 (= e!3452170 e!3452171)))

(declare-fun res!2373867 () Bool)

(assert (=> b!5596151 (=> (not res!2373867) (not e!3452171))))

(assert (=> b!5596151 (= res!2373867 call!419586)))

(declare-fun b!5596152 () Bool)

(declare-fun e!3452166 () Bool)

(declare-fun e!3452172 () Bool)

(assert (=> b!5596152 (= e!3452166 e!3452172)))

(declare-fun res!2373864 () Bool)

(assert (=> b!5596152 (= res!2373864 (not (nullable!5614 (reg!15911 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))))))))

(assert (=> b!5596152 (=> (not res!2373864) (not e!3452172))))

(declare-fun bm!419580 () Bool)

(declare-fun call!419587 () Bool)

(assert (=> bm!419580 (= call!419586 call!419587)))

(declare-fun b!5596153 () Bool)

(declare-fun res!2373863 () Bool)

(assert (=> b!5596153 (=> res!2373863 e!3452170)))

(assert (=> b!5596153 (= res!2373863 (not (is-Concat!24427 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292))))))))

(assert (=> b!5596153 (= e!3452167 e!3452170)))

(declare-fun b!5596154 () Bool)

(declare-fun call!419585 () Bool)

(assert (=> b!5596154 (= e!3452171 call!419585)))

(declare-fun c!981015 () Bool)

(declare-fun bm!419581 () Bool)

(assert (=> bm!419581 (= call!419585 (validRegex!7318 (ite c!981015 (regTwo!31677 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))) (regTwo!31676 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))))))))

(declare-fun b!5596155 () Bool)

(assert (=> b!5596155 (= e!3452169 e!3452166)))

(declare-fun c!981014 () Bool)

(assert (=> b!5596155 (= c!981014 (is-Star!15582 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))))))

(declare-fun b!5596156 () Bool)

(assert (=> b!5596156 (= e!3452172 call!419587)))

(declare-fun b!5596157 () Bool)

(assert (=> b!5596157 (= e!3452168 call!419585)))

(declare-fun b!5596158 () Bool)

(assert (=> b!5596158 (= e!3452166 e!3452167)))

(assert (=> b!5596158 (= c!981015 (is-Union!15582 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))))))

(declare-fun bm!419582 () Bool)

(assert (=> bm!419582 (= call!419587 (validRegex!7318 (ite c!981014 (reg!15911 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))) (ite c!981015 (regOne!31677 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292)))) (regOne!31676 (ite c!980937 (reg!15911 r!7292) (ite c!980938 (regOne!31677 r!7292) (regOne!31676 r!7292))))))))))

(assert (= (and d!1768793 (not res!2373865)) b!5596155))

(assert (= (and b!5596155 c!981014) b!5596152))

(assert (= (and b!5596155 (not c!981014)) b!5596158))

(assert (= (and b!5596152 res!2373864) b!5596156))

(assert (= (and b!5596158 c!981015) b!5596150))

(assert (= (and b!5596158 (not c!981015)) b!5596153))

(assert (= (and b!5596150 res!2373866) b!5596157))

(assert (= (and b!5596153 (not res!2373863)) b!5596151))

(assert (= (and b!5596151 res!2373867) b!5596154))

(assert (= (or b!5596157 b!5596154) bm!419581))

(assert (= (or b!5596150 b!5596151) bm!419580))

(assert (= (or b!5596156 bm!419580) bm!419582))

(declare-fun m!6575292 () Bool)

(assert (=> b!5596152 m!6575292))

(declare-fun m!6575294 () Bool)

(assert (=> bm!419581 m!6575294))

(declare-fun m!6575296 () Bool)

(assert (=> bm!419582 m!6575296))

(assert (=> bm!419534 d!1768793))

(declare-fun d!1768795 () Bool)

(assert (=> d!1768795 (= (Exists!2682 (ite c!980797 lambda!300415 lambda!300416)) (choose!42440 (ite c!980797 lambda!300415 lambda!300416)))))

(declare-fun bs!1293788 () Bool)

(assert (= bs!1293788 d!1768795))

(declare-fun m!6575298 () Bool)

(assert (=> bs!1293788 m!6575298))

(assert (=> bm!419456 d!1768795))

(declare-fun bs!1293789 () Bool)

(declare-fun d!1768797 () Bool)

(assert (= bs!1293789 (and d!1768797 d!1768779)))

(declare-fun lambda!300464 () Int)

(assert (=> bs!1293789 (= lambda!300464 lambda!300463)))

(assert (=> d!1768797 (= (nullableZipper!1577 (set.union lt!2256095 lt!2256084)) (exists!2171 (set.union lt!2256095 lt!2256084) lambda!300464))))

(declare-fun bs!1293790 () Bool)

(assert (= bs!1293790 d!1768797))

(declare-fun m!6575300 () Bool)

(assert (=> bs!1293790 m!6575300))

(assert (=> b!5595588 d!1768797))

(assert (=> b!5595540 d!1768619))

(declare-fun d!1768799 () Bool)

(declare-fun e!3452173 () Bool)

(assert (=> d!1768799 e!3452173))

(declare-fun c!981017 () Bool)

(assert (=> d!1768799 (= c!981017 (is-EmptyExpr!15582 (derivativeStep!4430 r!7292 (head!11933 s!2326))))))

(declare-fun lt!2256315 () Bool)

(declare-fun e!3452175 () Bool)

(assert (=> d!1768799 (= lt!2256315 e!3452175)))

(declare-fun c!981016 () Bool)

(assert (=> d!1768799 (= c!981016 (isEmpty!34748 (tail!11028 s!2326)))))

(assert (=> d!1768799 (validRegex!7318 (derivativeStep!4430 r!7292 (head!11933 s!2326)))))

(assert (=> d!1768799 (= (matchR!7767 (derivativeStep!4430 r!7292 (head!11933 s!2326)) (tail!11028 s!2326)) lt!2256315)))

(declare-fun b!5596159 () Bool)

(declare-fun e!3452179 () Bool)

(assert (=> b!5596159 (= e!3452179 (= (head!11933 (tail!11028 s!2326)) (c!980755 (derivativeStep!4430 r!7292 (head!11933 s!2326)))))))

(declare-fun b!5596160 () Bool)

(assert (=> b!5596160 (= e!3452175 (matchR!7767 (derivativeStep!4430 (derivativeStep!4430 r!7292 (head!11933 s!2326)) (head!11933 (tail!11028 s!2326))) (tail!11028 (tail!11028 s!2326))))))

(declare-fun b!5596161 () Bool)

(assert (=> b!5596161 (= e!3452175 (nullable!5614 (derivativeStep!4430 r!7292 (head!11933 s!2326))))))

(declare-fun b!5596162 () Bool)

(declare-fun call!419588 () Bool)

(assert (=> b!5596162 (= e!3452173 (= lt!2256315 call!419588))))

(declare-fun b!5596163 () Bool)

(declare-fun e!3452178 () Bool)

(declare-fun e!3452174 () Bool)

(assert (=> b!5596163 (= e!3452178 e!3452174)))

(declare-fun res!2373874 () Bool)

(assert (=> b!5596163 (=> res!2373874 e!3452174)))

(assert (=> b!5596163 (= res!2373874 call!419588)))

(declare-fun b!5596164 () Bool)

(assert (=> b!5596164 (= e!3452174 (not (= (head!11933 (tail!11028 s!2326)) (c!980755 (derivativeStep!4430 r!7292 (head!11933 s!2326))))))))

(declare-fun b!5596165 () Bool)

(declare-fun res!2373868 () Bool)

(declare-fun e!3452176 () Bool)

(assert (=> b!5596165 (=> res!2373868 e!3452176)))

(assert (=> b!5596165 (= res!2373868 e!3452179)))

(declare-fun res!2373875 () Bool)

(assert (=> b!5596165 (=> (not res!2373875) (not e!3452179))))

(assert (=> b!5596165 (= res!2373875 lt!2256315)))

(declare-fun b!5596166 () Bool)

(declare-fun e!3452177 () Bool)

(assert (=> b!5596166 (= e!3452177 (not lt!2256315))))

(declare-fun b!5596167 () Bool)

(assert (=> b!5596167 (= e!3452176 e!3452178)))

(declare-fun res!2373872 () Bool)

(assert (=> b!5596167 (=> (not res!2373872) (not e!3452178))))

(assert (=> b!5596167 (= res!2373872 (not lt!2256315))))

(declare-fun b!5596168 () Bool)

(declare-fun res!2373873 () Bool)

(assert (=> b!5596168 (=> (not res!2373873) (not e!3452179))))

(assert (=> b!5596168 (= res!2373873 (isEmpty!34748 (tail!11028 (tail!11028 s!2326))))))

(declare-fun b!5596169 () Bool)

(assert (=> b!5596169 (= e!3452173 e!3452177)))

(declare-fun c!981018 () Bool)

(assert (=> b!5596169 (= c!981018 (is-EmptyLang!15582 (derivativeStep!4430 r!7292 (head!11933 s!2326))))))

(declare-fun b!5596170 () Bool)

(declare-fun res!2373871 () Bool)

(assert (=> b!5596170 (=> res!2373871 e!3452176)))

(assert (=> b!5596170 (= res!2373871 (not (is-ElementMatch!15582 (derivativeStep!4430 r!7292 (head!11933 s!2326)))))))

(assert (=> b!5596170 (= e!3452177 e!3452176)))

(declare-fun bm!419583 () Bool)

(assert (=> bm!419583 (= call!419588 (isEmpty!34748 (tail!11028 s!2326)))))

(declare-fun b!5596171 () Bool)

(declare-fun res!2373869 () Bool)

(assert (=> b!5596171 (=> res!2373869 e!3452174)))

(assert (=> b!5596171 (= res!2373869 (not (isEmpty!34748 (tail!11028 (tail!11028 s!2326)))))))

(declare-fun b!5596172 () Bool)

(declare-fun res!2373870 () Bool)

(assert (=> b!5596172 (=> (not res!2373870) (not e!3452179))))

(assert (=> b!5596172 (= res!2373870 (not call!419588))))

(assert (= (and d!1768799 c!981016) b!5596161))

(assert (= (and d!1768799 (not c!981016)) b!5596160))

(assert (= (and d!1768799 c!981017) b!5596162))

(assert (= (and d!1768799 (not c!981017)) b!5596169))

(assert (= (and b!5596169 c!981018) b!5596166))

(assert (= (and b!5596169 (not c!981018)) b!5596170))

(assert (= (and b!5596170 (not res!2373871)) b!5596165))

(assert (= (and b!5596165 res!2373875) b!5596172))

(assert (= (and b!5596172 res!2373870) b!5596168))

(assert (= (and b!5596168 res!2373873) b!5596159))

(assert (= (and b!5596165 (not res!2373868)) b!5596167))

(assert (= (and b!5596167 res!2373872) b!5596163))

(assert (= (and b!5596163 (not res!2373874)) b!5596171))

(assert (= (and b!5596171 (not res!2373869)) b!5596164))

(assert (= (or b!5596162 b!5596163 b!5596172) bm!419583))

(assert (=> b!5596160 m!6574704))

(declare-fun m!6575302 () Bool)

(assert (=> b!5596160 m!6575302))

(assert (=> b!5596160 m!6574702))

(assert (=> b!5596160 m!6575302))

(declare-fun m!6575304 () Bool)

(assert (=> b!5596160 m!6575304))

(assert (=> b!5596160 m!6574704))

(declare-fun m!6575306 () Bool)

(assert (=> b!5596160 m!6575306))

(assert (=> b!5596160 m!6575304))

(assert (=> b!5596160 m!6575306))

(declare-fun m!6575308 () Bool)

(assert (=> b!5596160 m!6575308))

(assert (=> b!5596164 m!6574704))

(assert (=> b!5596164 m!6575302))

(assert (=> b!5596159 m!6574704))

(assert (=> b!5596159 m!6575302))

(assert (=> b!5596168 m!6574704))

(assert (=> b!5596168 m!6575306))

(assert (=> b!5596168 m!6575306))

(declare-fun m!6575310 () Bool)

(assert (=> b!5596168 m!6575310))

(assert (=> d!1768799 m!6574704))

(assert (=> d!1768799 m!6574708))

(assert (=> d!1768799 m!6574702))

(declare-fun m!6575312 () Bool)

(assert (=> d!1768799 m!6575312))

(assert (=> b!5596161 m!6574702))

(declare-fun m!6575314 () Bool)

(assert (=> b!5596161 m!6575314))

(assert (=> b!5596171 m!6574704))

(assert (=> b!5596171 m!6575306))

(assert (=> b!5596171 m!6575306))

(assert (=> b!5596171 m!6575310))

(assert (=> bm!419583 m!6574704))

(assert (=> bm!419583 m!6574708))

(assert (=> b!5595406 d!1768799))

(declare-fun bm!419592 () Bool)

(declare-fun c!981031 () Bool)

(declare-fun c!981030 () Bool)

(declare-fun call!419598 () Regex!15582)

(assert (=> bm!419592 (= call!419598 (derivativeStep!4430 (ite c!981031 (regTwo!31677 r!7292) (ite c!981030 (reg!15911 r!7292) (regOne!31676 r!7292))) (head!11933 s!2326)))))

(declare-fun d!1768801 () Bool)

(declare-fun lt!2256318 () Regex!15582)

(assert (=> d!1768801 (validRegex!7318 lt!2256318)))

(declare-fun e!3452190 () Regex!15582)

(assert (=> d!1768801 (= lt!2256318 e!3452190)))

(declare-fun c!981029 () Bool)

(assert (=> d!1768801 (= c!981029 (or (is-EmptyExpr!15582 r!7292) (is-EmptyLang!15582 r!7292)))))

(assert (=> d!1768801 (validRegex!7318 r!7292)))

(assert (=> d!1768801 (= (derivativeStep!4430 r!7292 (head!11933 s!2326)) lt!2256318)))

(declare-fun b!5596193 () Bool)

(assert (=> b!5596193 (= c!981031 (is-Union!15582 r!7292))))

(declare-fun e!3452193 () Regex!15582)

(declare-fun e!3452192 () Regex!15582)

(assert (=> b!5596193 (= e!3452193 e!3452192)))

(declare-fun b!5596194 () Bool)

(declare-fun call!419600 () Regex!15582)

(assert (=> b!5596194 (= e!3452192 (Union!15582 call!419600 call!419598))))

(declare-fun b!5596195 () Bool)

(declare-fun c!981032 () Bool)

(assert (=> b!5596195 (= c!981032 (nullable!5614 (regOne!31676 r!7292)))))

(declare-fun e!3452194 () Regex!15582)

(declare-fun e!3452191 () Regex!15582)

(assert (=> b!5596195 (= e!3452194 e!3452191)))

(declare-fun bm!419593 () Bool)

(assert (=> bm!419593 (= call!419600 (derivativeStep!4430 (ite c!981031 (regOne!31677 r!7292) (ite c!981032 (regTwo!31676 r!7292) (regOne!31676 r!7292))) (head!11933 s!2326)))))

(declare-fun bm!419594 () Bool)

(declare-fun call!419599 () Regex!15582)

(assert (=> bm!419594 (= call!419599 call!419598)))

(declare-fun call!419597 () Regex!15582)

(declare-fun b!5596196 () Bool)

(assert (=> b!5596196 (= e!3452191 (Union!15582 (Concat!24427 call!419599 (regTwo!31676 r!7292)) call!419597))))

(declare-fun bm!419595 () Bool)

(assert (=> bm!419595 (= call!419597 call!419600)))

(declare-fun b!5596197 () Bool)

(assert (=> b!5596197 (= e!3452193 (ite (= (head!11933 s!2326) (c!980755 r!7292)) EmptyExpr!15582 EmptyLang!15582))))

(declare-fun b!5596198 () Bool)

(assert (=> b!5596198 (= e!3452190 EmptyLang!15582)))

(declare-fun b!5596199 () Bool)

(assert (=> b!5596199 (= e!3452191 (Union!15582 (Concat!24427 call!419597 (regTwo!31676 r!7292)) EmptyLang!15582))))

(declare-fun b!5596200 () Bool)

(assert (=> b!5596200 (= e!3452192 e!3452194)))

(assert (=> b!5596200 (= c!981030 (is-Star!15582 r!7292))))

(declare-fun b!5596201 () Bool)

(assert (=> b!5596201 (= e!3452194 (Concat!24427 call!419599 r!7292))))

(declare-fun b!5596202 () Bool)

(assert (=> b!5596202 (= e!3452190 e!3452193)))

(declare-fun c!981033 () Bool)

(assert (=> b!5596202 (= c!981033 (is-ElementMatch!15582 r!7292))))

(assert (= (and d!1768801 c!981029) b!5596198))

(assert (= (and d!1768801 (not c!981029)) b!5596202))

(assert (= (and b!5596202 c!981033) b!5596197))

(assert (= (and b!5596202 (not c!981033)) b!5596193))

(assert (= (and b!5596193 c!981031) b!5596194))

(assert (= (and b!5596193 (not c!981031)) b!5596200))

(assert (= (and b!5596200 c!981030) b!5596201))

(assert (= (and b!5596200 (not c!981030)) b!5596195))

(assert (= (and b!5596195 c!981032) b!5596196))

(assert (= (and b!5596195 (not c!981032)) b!5596199))

(assert (= (or b!5596196 b!5596199) bm!419595))

(assert (= (or b!5596201 b!5596196) bm!419594))

(assert (= (or b!5596194 bm!419594) bm!419592))

(assert (= (or b!5596194 bm!419595) bm!419593))

(assert (=> bm!419592 m!6574700))

(declare-fun m!6575316 () Bool)

(assert (=> bm!419592 m!6575316))

(declare-fun m!6575318 () Bool)

(assert (=> d!1768801 m!6575318))

(assert (=> d!1768801 m!6574546))

(assert (=> b!5596195 m!6574504))

(assert (=> bm!419593 m!6574700))

(declare-fun m!6575320 () Bool)

(assert (=> bm!419593 m!6575320))

(assert (=> b!5595406 d!1768801))

(assert (=> b!5595406 d!1768777))

(assert (=> b!5595406 d!1768773))

(declare-fun d!1768803 () Bool)

(assert (=> d!1768803 (= (isEmptyExpr!1136 lt!2256237) (is-EmptyExpr!15582 lt!2256237))))

(assert (=> b!5595529 d!1768803))

(declare-fun bs!1293791 () Bool)

(declare-fun d!1768805 () Bool)

(assert (= bs!1293791 (and d!1768805 d!1768657)))

(declare-fun lambda!300465 () Int)

(assert (=> bs!1293791 (= lambda!300465 lambda!300429)))

(declare-fun bs!1293792 () Bool)

(assert (= bs!1293792 (and d!1768805 d!1768661)))

(assert (=> bs!1293792 (= lambda!300465 lambda!300432)))

(declare-fun bs!1293793 () Bool)

(assert (= bs!1293793 (and d!1768805 d!1768639)))

(assert (=> bs!1293793 (= lambda!300465 lambda!300426)))

(declare-fun bs!1293794 () Bool)

(assert (= bs!1293794 (and d!1768805 d!1768593)))

(assert (=> bs!1293794 (= lambda!300465 lambda!300422)))

(declare-fun bs!1293795 () Bool)

(assert (= bs!1293795 (and d!1768805 d!1768595)))

(assert (=> bs!1293795 (= lambda!300465 lambda!300425)))

(declare-fun b!5596203 () Bool)

(declare-fun e!3452196 () Bool)

(declare-fun e!3452200 () Bool)

(assert (=> b!5596203 (= e!3452196 e!3452200)))

(declare-fun c!981036 () Bool)

(assert (=> b!5596203 (= c!981036 (isEmpty!34744 (t!376327 (unfocusZipperList!1010 zl!343))))))

(declare-fun b!5596204 () Bool)

(declare-fun e!3452199 () Bool)

(declare-fun lt!2256319 () Regex!15582)

(assert (=> b!5596204 (= e!3452199 (isUnion!577 lt!2256319))))

(declare-fun b!5596205 () Bool)

(assert (=> b!5596205 (= e!3452200 e!3452199)))

(declare-fun c!981034 () Bool)

(assert (=> b!5596205 (= c!981034 (isEmpty!34744 (tail!11031 (t!376327 (unfocusZipperList!1010 zl!343)))))))

(declare-fun b!5596206 () Bool)

(assert (=> b!5596206 (= e!3452200 (isEmptyLang!1147 lt!2256319))))

(declare-fun b!5596207 () Bool)

(declare-fun e!3452198 () Regex!15582)

(assert (=> b!5596207 (= e!3452198 (h!69369 (t!376327 (unfocusZipperList!1010 zl!343))))))

(assert (=> d!1768805 e!3452196))

(declare-fun res!2373877 () Bool)

(assert (=> d!1768805 (=> (not res!2373877) (not e!3452196))))

(assert (=> d!1768805 (= res!2373877 (validRegex!7318 lt!2256319))))

(assert (=> d!1768805 (= lt!2256319 e!3452198)))

(declare-fun c!981035 () Bool)

(declare-fun e!3452197 () Bool)

(assert (=> d!1768805 (= c!981035 e!3452197)))

(declare-fun res!2373876 () Bool)

(assert (=> d!1768805 (=> (not res!2373876) (not e!3452197))))

(assert (=> d!1768805 (= res!2373876 (is-Cons!62921 (t!376327 (unfocusZipperList!1010 zl!343))))))

(assert (=> d!1768805 (forall!14749 (t!376327 (unfocusZipperList!1010 zl!343)) lambda!300465)))

(assert (=> d!1768805 (= (generalisedUnion!1445 (t!376327 (unfocusZipperList!1010 zl!343))) lt!2256319)))

(declare-fun b!5596208 () Bool)

(declare-fun e!3452195 () Regex!15582)

(assert (=> b!5596208 (= e!3452198 e!3452195)))

(declare-fun c!981037 () Bool)

(assert (=> b!5596208 (= c!981037 (is-Cons!62921 (t!376327 (unfocusZipperList!1010 zl!343))))))

(declare-fun b!5596209 () Bool)

(assert (=> b!5596209 (= e!3452195 EmptyLang!15582)))

(declare-fun b!5596210 () Bool)

(assert (=> b!5596210 (= e!3452199 (= lt!2256319 (head!11936 (t!376327 (unfocusZipperList!1010 zl!343)))))))

(declare-fun b!5596211 () Bool)

(assert (=> b!5596211 (= e!3452195 (Union!15582 (h!69369 (t!376327 (unfocusZipperList!1010 zl!343))) (generalisedUnion!1445 (t!376327 (t!376327 (unfocusZipperList!1010 zl!343))))))))

(declare-fun b!5596212 () Bool)

(assert (=> b!5596212 (= e!3452197 (isEmpty!34744 (t!376327 (t!376327 (unfocusZipperList!1010 zl!343)))))))

(assert (= (and d!1768805 res!2373876) b!5596212))

(assert (= (and d!1768805 c!981035) b!5596207))

(assert (= (and d!1768805 (not c!981035)) b!5596208))

(assert (= (and b!5596208 c!981037) b!5596211))

(assert (= (and b!5596208 (not c!981037)) b!5596209))

(assert (= (and d!1768805 res!2373877) b!5596203))

(assert (= (and b!5596203 c!981036) b!5596206))

(assert (= (and b!5596203 (not c!981036)) b!5596205))

(assert (= (and b!5596205 c!981034) b!5596210))

(assert (= (and b!5596205 (not c!981034)) b!5596204))

(declare-fun m!6575322 () Bool)

(assert (=> b!5596211 m!6575322))

(assert (=> b!5596203 m!6574956))

(declare-fun m!6575324 () Bool)

(assert (=> b!5596206 m!6575324))

(declare-fun m!6575326 () Bool)

(assert (=> d!1768805 m!6575326))

(declare-fun m!6575328 () Bool)

(assert (=> d!1768805 m!6575328))

(declare-fun m!6575330 () Bool)

(assert (=> b!5596210 m!6575330))

(declare-fun m!6575332 () Bool)

(assert (=> b!5596205 m!6575332))

(assert (=> b!5596205 m!6575332))

(declare-fun m!6575334 () Bool)

(assert (=> b!5596205 m!6575334))

(declare-fun m!6575336 () Bool)

(assert (=> b!5596204 m!6575336))

(declare-fun m!6575338 () Bool)

(assert (=> b!5596212 m!6575338))

(assert (=> b!5595661 d!1768805))

(declare-fun e!3452202 () (Set Context!9932))

(declare-fun b!5596213 () Bool)

(declare-fun call!419601 () (Set Context!9932))

(assert (=> b!5596213 (= e!3452202 (set.union call!419601 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256105)))))) (h!69370 s!2326))))))

(declare-fun b!5596214 () Bool)

(declare-fun e!3452203 () Bool)

(assert (=> b!5596214 (= e!3452203 (nullable!5614 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256105)))))))))

(declare-fun d!1768807 () Bool)

(declare-fun c!981039 () Bool)

(assert (=> d!1768807 (= c!981039 e!3452203)))

(declare-fun res!2373878 () Bool)

(assert (=> d!1768807 (=> (not res!2373878) (not e!3452203))))

(assert (=> d!1768807 (= res!2373878 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256105))))))))

(assert (=> d!1768807 (= (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 lt!2256105))) (h!69370 s!2326)) e!3452202)))

(declare-fun bm!419596 () Bool)

(assert (=> bm!419596 (= call!419601 (derivationStepZipperDown!924 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256105))))) (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256105)))))) (h!69370 s!2326)))))

(declare-fun b!5596215 () Bool)

(declare-fun e!3452201 () (Set Context!9932))

(assert (=> b!5596215 (= e!3452201 (as set.empty (Set Context!9932)))))

(declare-fun b!5596216 () Bool)

(assert (=> b!5596216 (= e!3452201 call!419601)))

(declare-fun b!5596217 () Bool)

(assert (=> b!5596217 (= e!3452202 e!3452201)))

(declare-fun c!981038 () Bool)

(assert (=> b!5596217 (= c!981038 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256105))))))))

(assert (= (and d!1768807 res!2373878) b!5596214))

(assert (= (and d!1768807 c!981039) b!5596213))

(assert (= (and d!1768807 (not c!981039)) b!5596217))

(assert (= (and b!5596217 c!981038) b!5596216))

(assert (= (and b!5596217 (not c!981038)) b!5596215))

(assert (= (or b!5596213 b!5596216) bm!419596))

(declare-fun m!6575340 () Bool)

(assert (=> b!5596213 m!6575340))

(declare-fun m!6575342 () Bool)

(assert (=> b!5596214 m!6575342))

(declare-fun m!6575344 () Bool)

(assert (=> bm!419596 m!6575344))

(assert (=> b!5595564 d!1768807))

(declare-fun d!1768809 () Bool)

(assert (=> d!1768809 (= (nullable!5614 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))) (nullableFct!1723 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun bs!1293796 () Bool)

(assert (= bs!1293796 d!1768809))

(declare-fun m!6575346 () Bool)

(assert (=> bs!1293796 m!6575346))

(assert (=> b!5595607 d!1768809))

(declare-fun d!1768811 () Bool)

(assert (=> d!1768811 true))

(declare-fun setRes!37319 () Bool)

(assert (=> d!1768811 setRes!37319))

(declare-fun condSetEmpty!37319 () Bool)

(declare-fun res!2373879 () (Set Context!9932))

(assert (=> d!1768811 (= condSetEmpty!37319 (= res!2373879 (as set.empty (Set Context!9932))))))

(assert (=> d!1768811 (= (choose!42433 lt!2256103 lambda!300389) res!2373879)))

(declare-fun setIsEmpty!37319 () Bool)

(assert (=> setIsEmpty!37319 setRes!37319))

(declare-fun tp!1547463 () Bool)

(declare-fun e!3452204 () Bool)

(declare-fun setNonEmpty!37319 () Bool)

(declare-fun setElem!37319 () Context!9932)

(assert (=> setNonEmpty!37319 (= setRes!37319 (and tp!1547463 (inv!82203 setElem!37319) e!3452204))))

(declare-fun setRest!37319 () (Set Context!9932))

(assert (=> setNonEmpty!37319 (= res!2373879 (set.union (set.insert setElem!37319 (as set.empty (Set Context!9932))) setRest!37319))))

(declare-fun b!5596218 () Bool)

(declare-fun tp!1547462 () Bool)

(assert (=> b!5596218 (= e!3452204 tp!1547462)))

(assert (= (and d!1768811 condSetEmpty!37319) setIsEmpty!37319))

(assert (= (and d!1768811 (not condSetEmpty!37319)) setNonEmpty!37319))

(assert (= setNonEmpty!37319 b!5596218))

(declare-fun m!6575348 () Bool)

(assert (=> setNonEmpty!37319 m!6575348))

(assert (=> d!1768609 d!1768811))

(declare-fun e!3452206 () (Set Context!9932))

(declare-fun b!5596219 () Bool)

(declare-fun call!419602 () (Set Context!9932))

(assert (=> b!5596219 (= e!3452206 (set.union call!419602 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343))))))) (h!69370 s!2326))))))

(declare-fun b!5596220 () Bool)

(declare-fun e!3452207 () Bool)

(assert (=> b!5596220 (= e!3452207 (nullable!5614 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343))))))))))

(declare-fun d!1768813 () Bool)

(declare-fun c!981041 () Bool)

(assert (=> d!1768813 (= c!981041 e!3452207)))

(declare-fun res!2373880 () Bool)

(assert (=> d!1768813 (=> (not res!2373880) (not e!3452207))))

(assert (=> d!1768813 (= res!2373880 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))))))))

(assert (=> d!1768813 (= (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))) (h!69370 s!2326)) e!3452206)))

(declare-fun bm!419597 () Bool)

(assert (=> bm!419597 (= call!419602 (derivationStepZipperDown!924 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))))) (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343))))))) (h!69370 s!2326)))))

(declare-fun b!5596221 () Bool)

(declare-fun e!3452205 () (Set Context!9932))

(assert (=> b!5596221 (= e!3452205 (as set.empty (Set Context!9932)))))

(declare-fun b!5596222 () Bool)

(assert (=> b!5596222 (= e!3452205 call!419602)))

(declare-fun b!5596223 () Bool)

(assert (=> b!5596223 (= e!3452206 e!3452205)))

(declare-fun c!981040 () Bool)

(assert (=> b!5596223 (= c!981040 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))))))))

(assert (= (and d!1768813 res!2373880) b!5596220))

(assert (= (and d!1768813 c!981041) b!5596219))

(assert (= (and d!1768813 (not c!981041)) b!5596223))

(assert (= (and b!5596223 c!981040) b!5596222))

(assert (= (and b!5596223 (not c!981040)) b!5596221))

(assert (= (or b!5596219 b!5596222) bm!419597))

(declare-fun m!6575350 () Bool)

(assert (=> b!5596219 m!6575350))

(declare-fun m!6575352 () Bool)

(assert (=> b!5596220 m!6575352))

(declare-fun m!6575354 () Bool)

(assert (=> bm!419597 m!6575354))

(assert (=> b!5595618 d!1768813))

(declare-fun bs!1293797 () Bool)

(declare-fun d!1768815 () Bool)

(assert (= bs!1293797 (and d!1768815 d!1768779)))

(declare-fun lambda!300466 () Int)

(assert (=> bs!1293797 (= lambda!300466 lambda!300463)))

(declare-fun bs!1293798 () Bool)

(assert (= bs!1293798 (and d!1768815 d!1768797)))

(assert (=> bs!1293798 (= lambda!300466 lambda!300464)))

(assert (=> d!1768815 (= (nullableZipper!1577 lt!2256094) (exists!2171 lt!2256094 lambda!300466))))

(declare-fun bs!1293799 () Bool)

(assert (= bs!1293799 d!1768815))

(declare-fun m!6575356 () Bool)

(assert (=> bs!1293799 m!6575356))

(assert (=> b!5595590 d!1768815))

(declare-fun d!1768817 () Bool)

(declare-fun c!981042 () Bool)

(assert (=> d!1768817 (= c!981042 (isEmpty!34748 (tail!11028 (t!376328 s!2326))))))

(declare-fun e!3452208 () Bool)

(assert (=> d!1768817 (= (matchZipper!1720 (derivationStepZipper!1681 lt!2256108 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))) e!3452208)))

(declare-fun b!5596224 () Bool)

(assert (=> b!5596224 (= e!3452208 (nullableZipper!1577 (derivationStepZipper!1681 lt!2256108 (head!11933 (t!376328 s!2326)))))))

(declare-fun b!5596225 () Bool)

(assert (=> b!5596225 (= e!3452208 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 lt!2256108 (head!11933 (t!376328 s!2326))) (head!11933 (tail!11028 (t!376328 s!2326)))) (tail!11028 (tail!11028 (t!376328 s!2326)))))))

(assert (= (and d!1768817 c!981042) b!5596224))

(assert (= (and d!1768817 (not c!981042)) b!5596225))

(assert (=> d!1768817 m!6574722))

(declare-fun m!6575358 () Bool)

(assert (=> d!1768817 m!6575358))

(assert (=> b!5596224 m!6574882))

(declare-fun m!6575360 () Bool)

(assert (=> b!5596224 m!6575360))

(assert (=> b!5596225 m!6574722))

(declare-fun m!6575362 () Bool)

(assert (=> b!5596225 m!6575362))

(assert (=> b!5596225 m!6574882))

(assert (=> b!5596225 m!6575362))

(declare-fun m!6575364 () Bool)

(assert (=> b!5596225 m!6575364))

(assert (=> b!5596225 m!6574722))

(declare-fun m!6575366 () Bool)

(assert (=> b!5596225 m!6575366))

(assert (=> b!5596225 m!6575364))

(assert (=> b!5596225 m!6575366))

(declare-fun m!6575368 () Bool)

(assert (=> b!5596225 m!6575368))

(assert (=> b!5595593 d!1768817))

(declare-fun bs!1293800 () Bool)

(declare-fun d!1768819 () Bool)

(assert (= bs!1293800 (and d!1768819 b!5595134)))

(declare-fun lambda!300469 () Int)

(assert (=> bs!1293800 (= (= (head!11933 (t!376328 s!2326)) (h!69370 s!2326)) (= lambda!300469 lambda!300389))))

(assert (=> d!1768819 true))

(assert (=> d!1768819 (= (derivationStepZipper!1681 lt!2256108 (head!11933 (t!376328 s!2326))) (flatMap!1195 lt!2256108 lambda!300469))))

(declare-fun bs!1293801 () Bool)

(assert (= bs!1293801 d!1768819))

(declare-fun m!6575370 () Bool)

(assert (=> bs!1293801 m!6575370))

(assert (=> b!5595593 d!1768819))

(declare-fun d!1768821 () Bool)

(assert (=> d!1768821 (= (head!11933 (t!376328 s!2326)) (h!69370 (t!376328 s!2326)))))

(assert (=> b!5595593 d!1768821))

(declare-fun d!1768823 () Bool)

(assert (=> d!1768823 (= (tail!11028 (t!376328 s!2326)) (t!376328 (t!376328 s!2326)))))

(assert (=> b!5595593 d!1768823))

(declare-fun d!1768825 () Bool)

(assert (=> d!1768825 true))

(assert (=> d!1768825 true))

(declare-fun res!2373883 () Bool)

(assert (=> d!1768825 (= (choose!42440 lambda!300387) res!2373883)))

(assert (=> d!1768689 d!1768825))

(assert (=> bs!1293761 d!1768655))

(declare-fun b!5596228 () Bool)

(declare-fun e!3452212 () Bool)

(declare-fun call!419603 () Bool)

(assert (=> b!5596228 (= e!3452212 call!419603)))

(declare-fun bm!419598 () Bool)

(declare-fun call!419604 () Bool)

(declare-fun c!981045 () Bool)

(assert (=> bm!419598 (= call!419604 (nullable!5614 (ite c!981045 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))))))

(declare-fun b!5596229 () Bool)

(declare-fun e!3452214 () Bool)

(declare-fun e!3452209 () Bool)

(assert (=> b!5596229 (= e!3452214 e!3452209)))

(assert (=> b!5596229 (= c!981045 (is-Union!15582 (regOne!31677 (regOne!31676 r!7292))))))

(declare-fun b!5596230 () Bool)

(declare-fun e!3452210 () Bool)

(assert (=> b!5596230 (= e!3452209 e!3452210)))

(declare-fun res!2373888 () Bool)

(assert (=> b!5596230 (= res!2373888 call!419604)))

(assert (=> b!5596230 (=> (not res!2373888) (not e!3452210))))

(declare-fun b!5596231 () Bool)

(declare-fun e!3452213 () Bool)

(assert (=> b!5596231 (= e!3452213 e!3452214)))

(declare-fun res!2373884 () Bool)

(assert (=> b!5596231 (=> res!2373884 e!3452214)))

(assert (=> b!5596231 (= res!2373884 (is-Star!15582 (regOne!31677 (regOne!31676 r!7292))))))

(declare-fun b!5596232 () Bool)

(assert (=> b!5596232 (= e!3452210 call!419603)))

(declare-fun b!5596233 () Bool)

(assert (=> b!5596233 (= e!3452209 e!3452212)))

(declare-fun res!2373887 () Bool)

(assert (=> b!5596233 (= res!2373887 call!419604)))

(assert (=> b!5596233 (=> res!2373887 e!3452212)))

(declare-fun bm!419599 () Bool)

(assert (=> bm!419599 (= call!419603 (nullable!5614 (ite c!981045 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))))))))

(declare-fun d!1768827 () Bool)

(declare-fun res!2373886 () Bool)

(declare-fun e!3452211 () Bool)

(assert (=> d!1768827 (=> res!2373886 e!3452211)))

(assert (=> d!1768827 (= res!2373886 (is-EmptyExpr!15582 (regOne!31677 (regOne!31676 r!7292))))))

(assert (=> d!1768827 (= (nullableFct!1723 (regOne!31677 (regOne!31676 r!7292))) e!3452211)))

(declare-fun b!5596234 () Bool)

(assert (=> b!5596234 (= e!3452211 e!3452213)))

(declare-fun res!2373885 () Bool)

(assert (=> b!5596234 (=> (not res!2373885) (not e!3452213))))

(assert (=> b!5596234 (= res!2373885 (and (not (is-EmptyLang!15582 (regOne!31677 (regOne!31676 r!7292)))) (not (is-ElementMatch!15582 (regOne!31677 (regOne!31676 r!7292))))))))

(assert (= (and d!1768827 (not res!2373886)) b!5596234))

(assert (= (and b!5596234 res!2373885) b!5596231))

(assert (= (and b!5596231 (not res!2373884)) b!5596229))

(assert (= (and b!5596229 c!981045) b!5596233))

(assert (= (and b!5596229 (not c!981045)) b!5596230))

(assert (= (and b!5596233 (not res!2373887)) b!5596228))

(assert (= (and b!5596230 res!2373888) b!5596232))

(assert (= (or b!5596228 b!5596232) bm!419599))

(assert (= (or b!5596233 b!5596230) bm!419598))

(declare-fun m!6575372 () Bool)

(assert (=> bm!419598 m!6575372))

(declare-fun m!6575374 () Bool)

(assert (=> bm!419599 m!6575374))

(assert (=> d!1768615 d!1768827))

(declare-fun d!1768829 () Bool)

(declare-fun e!3452215 () Bool)

(assert (=> d!1768829 e!3452215))

(declare-fun c!981047 () Bool)

(assert (=> d!1768829 (= c!981047 (is-EmptyExpr!15582 (regOne!31676 r!7292)))))

(declare-fun lt!2256320 () Bool)

(declare-fun e!3452217 () Bool)

(assert (=> d!1768829 (= lt!2256320 e!3452217)))

(declare-fun c!981046 () Bool)

(assert (=> d!1768829 (= c!981046 (isEmpty!34748 (_1!35982 (get!21671 lt!2256265))))))

(assert (=> d!1768829 (validRegex!7318 (regOne!31676 r!7292))))

(assert (=> d!1768829 (= (matchR!7767 (regOne!31676 r!7292) (_1!35982 (get!21671 lt!2256265))) lt!2256320)))

(declare-fun b!5596235 () Bool)

(declare-fun e!3452221 () Bool)

(assert (=> b!5596235 (= e!3452221 (= (head!11933 (_1!35982 (get!21671 lt!2256265))) (c!980755 (regOne!31676 r!7292))))))

(declare-fun b!5596236 () Bool)

(assert (=> b!5596236 (= e!3452217 (matchR!7767 (derivativeStep!4430 (regOne!31676 r!7292) (head!11933 (_1!35982 (get!21671 lt!2256265)))) (tail!11028 (_1!35982 (get!21671 lt!2256265)))))))

(declare-fun b!5596237 () Bool)

(assert (=> b!5596237 (= e!3452217 (nullable!5614 (regOne!31676 r!7292)))))

(declare-fun b!5596238 () Bool)

(declare-fun call!419605 () Bool)

(assert (=> b!5596238 (= e!3452215 (= lt!2256320 call!419605))))

(declare-fun b!5596239 () Bool)

(declare-fun e!3452220 () Bool)

(declare-fun e!3452216 () Bool)

(assert (=> b!5596239 (= e!3452220 e!3452216)))

(declare-fun res!2373895 () Bool)

(assert (=> b!5596239 (=> res!2373895 e!3452216)))

(assert (=> b!5596239 (= res!2373895 call!419605)))

(declare-fun b!5596240 () Bool)

(assert (=> b!5596240 (= e!3452216 (not (= (head!11933 (_1!35982 (get!21671 lt!2256265))) (c!980755 (regOne!31676 r!7292)))))))

(declare-fun b!5596241 () Bool)

(declare-fun res!2373889 () Bool)

(declare-fun e!3452218 () Bool)

(assert (=> b!5596241 (=> res!2373889 e!3452218)))

(assert (=> b!5596241 (= res!2373889 e!3452221)))

(declare-fun res!2373896 () Bool)

(assert (=> b!5596241 (=> (not res!2373896) (not e!3452221))))

(assert (=> b!5596241 (= res!2373896 lt!2256320)))

(declare-fun b!5596242 () Bool)

(declare-fun e!3452219 () Bool)

(assert (=> b!5596242 (= e!3452219 (not lt!2256320))))

(declare-fun b!5596243 () Bool)

(assert (=> b!5596243 (= e!3452218 e!3452220)))

(declare-fun res!2373893 () Bool)

(assert (=> b!5596243 (=> (not res!2373893) (not e!3452220))))

(assert (=> b!5596243 (= res!2373893 (not lt!2256320))))

(declare-fun b!5596244 () Bool)

(declare-fun res!2373894 () Bool)

(assert (=> b!5596244 (=> (not res!2373894) (not e!3452221))))

(assert (=> b!5596244 (= res!2373894 (isEmpty!34748 (tail!11028 (_1!35982 (get!21671 lt!2256265)))))))

(declare-fun b!5596245 () Bool)

(assert (=> b!5596245 (= e!3452215 e!3452219)))

(declare-fun c!981048 () Bool)

(assert (=> b!5596245 (= c!981048 (is-EmptyLang!15582 (regOne!31676 r!7292)))))

(declare-fun b!5596246 () Bool)

(declare-fun res!2373892 () Bool)

(assert (=> b!5596246 (=> res!2373892 e!3452218)))

(assert (=> b!5596246 (= res!2373892 (not (is-ElementMatch!15582 (regOne!31676 r!7292))))))

(assert (=> b!5596246 (= e!3452219 e!3452218)))

(declare-fun bm!419600 () Bool)

(assert (=> bm!419600 (= call!419605 (isEmpty!34748 (_1!35982 (get!21671 lt!2256265))))))

(declare-fun b!5596247 () Bool)

(declare-fun res!2373890 () Bool)

(assert (=> b!5596247 (=> res!2373890 e!3452216)))

(assert (=> b!5596247 (= res!2373890 (not (isEmpty!34748 (tail!11028 (_1!35982 (get!21671 lt!2256265))))))))

(declare-fun b!5596248 () Bool)

(declare-fun res!2373891 () Bool)

(assert (=> b!5596248 (=> (not res!2373891) (not e!3452221))))

(assert (=> b!5596248 (= res!2373891 (not call!419605))))

(assert (= (and d!1768829 c!981046) b!5596237))

(assert (= (and d!1768829 (not c!981046)) b!5596236))

(assert (= (and d!1768829 c!981047) b!5596238))

(assert (= (and d!1768829 (not c!981047)) b!5596245))

(assert (= (and b!5596245 c!981048) b!5596242))

(assert (= (and b!5596245 (not c!981048)) b!5596246))

(assert (= (and b!5596246 (not res!2373892)) b!5596241))

(assert (= (and b!5596241 res!2373896) b!5596248))

(assert (= (and b!5596248 res!2373891) b!5596244))

(assert (= (and b!5596244 res!2373894) b!5596235))

(assert (= (and b!5596241 (not res!2373889)) b!5596243))

(assert (= (and b!5596243 res!2373893) b!5596239))

(assert (= (and b!5596239 (not res!2373895)) b!5596247))

(assert (= (and b!5596247 (not res!2373890)) b!5596240))

(assert (= (or b!5596238 b!5596239 b!5596248) bm!419600))

(declare-fun m!6575376 () Bool)

(assert (=> b!5596236 m!6575376))

(assert (=> b!5596236 m!6575376))

(declare-fun m!6575378 () Bool)

(assert (=> b!5596236 m!6575378))

(declare-fun m!6575380 () Bool)

(assert (=> b!5596236 m!6575380))

(assert (=> b!5596236 m!6575378))

(assert (=> b!5596236 m!6575380))

(declare-fun m!6575382 () Bool)

(assert (=> b!5596236 m!6575382))

(assert (=> b!5596240 m!6575376))

(assert (=> b!5596235 m!6575376))

(assert (=> b!5596244 m!6575380))

(assert (=> b!5596244 m!6575380))

(declare-fun m!6575384 () Bool)

(assert (=> b!5596244 m!6575384))

(declare-fun m!6575386 () Bool)

(assert (=> d!1768829 m!6575386))

(assert (=> d!1768829 m!6575028))

(assert (=> b!5596237 m!6574504))

(assert (=> b!5596247 m!6575380))

(assert (=> b!5596247 m!6575380))

(assert (=> b!5596247 m!6575384))

(assert (=> bm!419600 m!6575386))

(assert (=> b!5595709 d!1768829))

(declare-fun d!1768831 () Bool)

(assert (=> d!1768831 (= (get!21671 lt!2256265) (v!51631 lt!2256265))))

(assert (=> b!5595709 d!1768831))

(declare-fun d!1768833 () Bool)

(assert (=> d!1768833 (= (isDefined!12294 lt!2256265) (not (isEmpty!34751 lt!2256265)))))

(declare-fun bs!1293802 () Bool)

(assert (= bs!1293802 d!1768833))

(declare-fun m!6575388 () Bool)

(assert (=> bs!1293802 m!6575388))

(assert (=> b!5595703 d!1768833))

(declare-fun d!1768835 () Bool)

(assert (=> d!1768835 (= (isEmpty!34748 (t!376328 s!2326)) (is-Nil!62922 (t!376328 s!2326)))))

(assert (=> d!1768571 d!1768835))

(declare-fun d!1768837 () Bool)

(assert (=> d!1768837 (= (isEmpty!34744 (exprs!5466 (h!69371 zl!343))) (is-Nil!62921 (exprs!5466 (h!69371 zl!343))))))

(assert (=> b!5595536 d!1768837))

(declare-fun bm!419601 () Bool)

(declare-fun call!419607 () (Set Context!9932))

(declare-fun call!419610 () (Set Context!9932))

(assert (=> bm!419601 (= call!419607 call!419610)))

(declare-fun b!5596250 () Bool)

(declare-fun e!3452227 () (Set Context!9932))

(declare-fun call!419606 () (Set Context!9932))

(declare-fun call!419611 () (Set Context!9932))

(assert (=> b!5596250 (= e!3452227 (set.union call!419606 call!419611))))

(declare-fun b!5596251 () Bool)

(declare-fun e!3452222 () (Set Context!9932))

(declare-fun e!3452224 () (Set Context!9932))

(assert (=> b!5596251 (= e!3452222 e!3452224)))

(declare-fun c!981053 () Bool)

(assert (=> b!5596251 (= c!981053 (is-Concat!24427 (h!69369 (exprs!5466 lt!2256099))))))

(declare-fun b!5596252 () Bool)

(assert (=> b!5596252 (= e!3452222 (set.union call!419606 call!419610))))

(declare-fun call!419608 () List!63045)

(declare-fun c!981049 () Bool)

(declare-fun bm!419602 () Bool)

(assert (=> bm!419602 (= call!419608 ($colon$colon!1645 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256099)))) (ite (or c!981049 c!981053) (regTwo!31676 (h!69369 (exprs!5466 lt!2256099))) (h!69369 (exprs!5466 lt!2256099)))))))

(declare-fun b!5596253 () Bool)

(declare-fun e!3452225 () (Set Context!9932))

(assert (=> b!5596253 (= e!3452225 (set.insert (Context!9933 (t!376327 (exprs!5466 lt!2256099))) (as set.empty (Set Context!9932))))))

(declare-fun b!5596254 () Bool)

(assert (=> b!5596254 (= e!3452225 e!3452227)))

(declare-fun c!981051 () Bool)

(assert (=> b!5596254 (= c!981051 (is-Union!15582 (h!69369 (exprs!5466 lt!2256099))))))

(declare-fun b!5596255 () Bool)

(declare-fun e!3452223 () (Set Context!9932))

(assert (=> b!5596255 (= e!3452223 (as set.empty (Set Context!9932)))))

(declare-fun bm!419603 () Bool)

(declare-fun call!419609 () List!63045)

(assert (=> bm!419603 (= call!419609 call!419608)))

(declare-fun b!5596256 () Bool)

(assert (=> b!5596256 (= e!3452224 call!419607)))

(declare-fun d!1768839 () Bool)

(declare-fun c!981052 () Bool)

(assert (=> d!1768839 (= c!981052 (and (is-ElementMatch!15582 (h!69369 (exprs!5466 lt!2256099))) (= (c!980755 (h!69369 (exprs!5466 lt!2256099))) (h!69370 s!2326))))))

(assert (=> d!1768839 (= (derivationStepZipperDown!924 (h!69369 (exprs!5466 lt!2256099)) (Context!9933 (t!376327 (exprs!5466 lt!2256099))) (h!69370 s!2326)) e!3452225)))

(declare-fun b!5596249 () Bool)

(declare-fun e!3452226 () Bool)

(assert (=> b!5596249 (= e!3452226 (nullable!5614 (regOne!31676 (h!69369 (exprs!5466 lt!2256099)))))))

(declare-fun b!5596257 () Bool)

(assert (=> b!5596257 (= e!3452223 call!419607)))

(declare-fun bm!419604 () Bool)

(assert (=> bm!419604 (= call!419611 (derivationStepZipperDown!924 (ite c!981051 (regTwo!31677 (h!69369 (exprs!5466 lt!2256099))) (ite c!981049 (regTwo!31676 (h!69369 (exprs!5466 lt!2256099))) (ite c!981053 (regOne!31676 (h!69369 (exprs!5466 lt!2256099))) (reg!15911 (h!69369 (exprs!5466 lt!2256099)))))) (ite (or c!981051 c!981049) (Context!9933 (t!376327 (exprs!5466 lt!2256099))) (Context!9933 call!419609)) (h!69370 s!2326)))))

(declare-fun bm!419605 () Bool)

(assert (=> bm!419605 (= call!419610 call!419611)))

(declare-fun b!5596258 () Bool)

(declare-fun c!981050 () Bool)

(assert (=> b!5596258 (= c!981050 (is-Star!15582 (h!69369 (exprs!5466 lt!2256099))))))

(assert (=> b!5596258 (= e!3452224 e!3452223)))

(declare-fun b!5596259 () Bool)

(assert (=> b!5596259 (= c!981049 e!3452226)))

(declare-fun res!2373897 () Bool)

(assert (=> b!5596259 (=> (not res!2373897) (not e!3452226))))

(assert (=> b!5596259 (= res!2373897 (is-Concat!24427 (h!69369 (exprs!5466 lt!2256099))))))

(assert (=> b!5596259 (= e!3452227 e!3452222)))

(declare-fun bm!419606 () Bool)

(assert (=> bm!419606 (= call!419606 (derivationStepZipperDown!924 (ite c!981051 (regOne!31677 (h!69369 (exprs!5466 lt!2256099))) (regOne!31676 (h!69369 (exprs!5466 lt!2256099)))) (ite c!981051 (Context!9933 (t!376327 (exprs!5466 lt!2256099))) (Context!9933 call!419608)) (h!69370 s!2326)))))

(assert (= (and d!1768839 c!981052) b!5596253))

(assert (= (and d!1768839 (not c!981052)) b!5596254))

(assert (= (and b!5596254 c!981051) b!5596250))

(assert (= (and b!5596254 (not c!981051)) b!5596259))

(assert (= (and b!5596259 res!2373897) b!5596249))

(assert (= (and b!5596259 c!981049) b!5596252))

(assert (= (and b!5596259 (not c!981049)) b!5596251))

(assert (= (and b!5596251 c!981053) b!5596256))

(assert (= (and b!5596251 (not c!981053)) b!5596258))

(assert (= (and b!5596258 c!981050) b!5596257))

(assert (= (and b!5596258 (not c!981050)) b!5596255))

(assert (= (or b!5596256 b!5596257) bm!419603))

(assert (= (or b!5596256 b!5596257) bm!419601))

(assert (= (or b!5596252 bm!419603) bm!419602))

(assert (= (or b!5596252 bm!419601) bm!419605))

(assert (= (or b!5596250 bm!419605) bm!419604))

(assert (= (or b!5596250 b!5596252) bm!419606))

(declare-fun m!6575390 () Bool)

(assert (=> bm!419604 m!6575390))

(declare-fun m!6575392 () Bool)

(assert (=> bm!419606 m!6575392))

(declare-fun m!6575394 () Bool)

(assert (=> b!5596253 m!6575394))

(declare-fun m!6575396 () Bool)

(assert (=> bm!419602 m!6575396))

(declare-fun m!6575398 () Bool)

(assert (=> b!5596249 m!6575398))

(assert (=> bm!419506 d!1768839))

(declare-fun d!1768841 () Bool)

(assert (=> d!1768841 (= (nullable!5614 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (nullableFct!1723 (h!69369 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))))

(declare-fun bs!1293803 () Bool)

(assert (= bs!1293803 d!1768841))

(declare-fun m!6575400 () Bool)

(assert (=> bs!1293803 m!6575400))

(assert (=> b!5595603 d!1768841))

(declare-fun d!1768843 () Bool)

(declare-fun res!2373900 () Bool)

(declare-fun e!3452231 () Bool)

(assert (=> d!1768843 (=> res!2373900 e!3452231)))

(assert (=> d!1768843 (= res!2373900 (is-ElementMatch!15582 lt!2256253))))

(assert (=> d!1768843 (= (validRegex!7318 lt!2256253) e!3452231)))

(declare-fun b!5596260 () Bool)

(declare-fun res!2373901 () Bool)

(declare-fun e!3452230 () Bool)

(assert (=> b!5596260 (=> (not res!2373901) (not e!3452230))))

(declare-fun call!419613 () Bool)

(assert (=> b!5596260 (= res!2373901 call!419613)))

(declare-fun e!3452229 () Bool)

(assert (=> b!5596260 (= e!3452229 e!3452230)))

(declare-fun b!5596261 () Bool)

(declare-fun e!3452232 () Bool)

(declare-fun e!3452233 () Bool)

(assert (=> b!5596261 (= e!3452232 e!3452233)))

(declare-fun res!2373902 () Bool)

(assert (=> b!5596261 (=> (not res!2373902) (not e!3452233))))

(assert (=> b!5596261 (= res!2373902 call!419613)))

(declare-fun b!5596262 () Bool)

(declare-fun e!3452228 () Bool)

(declare-fun e!3452234 () Bool)

(assert (=> b!5596262 (= e!3452228 e!3452234)))

(declare-fun res!2373899 () Bool)

(assert (=> b!5596262 (= res!2373899 (not (nullable!5614 (reg!15911 lt!2256253))))))

(assert (=> b!5596262 (=> (not res!2373899) (not e!3452234))))

(declare-fun bm!419607 () Bool)

(declare-fun call!419614 () Bool)

(assert (=> bm!419607 (= call!419613 call!419614)))

(declare-fun b!5596263 () Bool)

(declare-fun res!2373898 () Bool)

(assert (=> b!5596263 (=> res!2373898 e!3452232)))

(assert (=> b!5596263 (= res!2373898 (not (is-Concat!24427 lt!2256253)))))

(assert (=> b!5596263 (= e!3452229 e!3452232)))

(declare-fun b!5596264 () Bool)

(declare-fun call!419612 () Bool)

(assert (=> b!5596264 (= e!3452233 call!419612)))

(declare-fun bm!419608 () Bool)

(declare-fun c!981055 () Bool)

(assert (=> bm!419608 (= call!419612 (validRegex!7318 (ite c!981055 (regTwo!31677 lt!2256253) (regTwo!31676 lt!2256253))))))

(declare-fun b!5596265 () Bool)

(assert (=> b!5596265 (= e!3452231 e!3452228)))

(declare-fun c!981054 () Bool)

(assert (=> b!5596265 (= c!981054 (is-Star!15582 lt!2256253))))

(declare-fun b!5596266 () Bool)

(assert (=> b!5596266 (= e!3452234 call!419614)))

(declare-fun b!5596267 () Bool)

(assert (=> b!5596267 (= e!3452230 call!419612)))

(declare-fun b!5596268 () Bool)

(assert (=> b!5596268 (= e!3452228 e!3452229)))

(assert (=> b!5596268 (= c!981055 (is-Union!15582 lt!2256253))))

(declare-fun bm!419609 () Bool)

(assert (=> bm!419609 (= call!419614 (validRegex!7318 (ite c!981054 (reg!15911 lt!2256253) (ite c!981055 (regOne!31677 lt!2256253) (regOne!31676 lt!2256253)))))))

(assert (= (and d!1768843 (not res!2373900)) b!5596265))

(assert (= (and b!5596265 c!981054) b!5596262))

(assert (= (and b!5596265 (not c!981054)) b!5596268))

(assert (= (and b!5596262 res!2373899) b!5596266))

(assert (= (and b!5596268 c!981055) b!5596260))

(assert (= (and b!5596268 (not c!981055)) b!5596263))

(assert (= (and b!5596260 res!2373901) b!5596267))

(assert (= (and b!5596263 (not res!2373898)) b!5596261))

(assert (= (and b!5596261 res!2373902) b!5596264))

(assert (= (or b!5596267 b!5596264) bm!419608))

(assert (= (or b!5596260 b!5596261) bm!419607))

(assert (= (or b!5596266 bm!419607) bm!419609))

(declare-fun m!6575402 () Bool)

(assert (=> b!5596262 m!6575402))

(declare-fun m!6575404 () Bool)

(assert (=> bm!419608 m!6575404))

(declare-fun m!6575406 () Bool)

(assert (=> bm!419609 m!6575406))

(assert (=> d!1768657 d!1768843))

(declare-fun d!1768845 () Bool)

(declare-fun res!2373907 () Bool)

(declare-fun e!3452239 () Bool)

(assert (=> d!1768845 (=> res!2373907 e!3452239)))

(assert (=> d!1768845 (= res!2373907 (is-Nil!62921 (unfocusZipperList!1010 zl!343)))))

(assert (=> d!1768845 (= (forall!14749 (unfocusZipperList!1010 zl!343) lambda!300429) e!3452239)))

(declare-fun b!5596273 () Bool)

(declare-fun e!3452240 () Bool)

(assert (=> b!5596273 (= e!3452239 e!3452240)))

(declare-fun res!2373908 () Bool)

(assert (=> b!5596273 (=> (not res!2373908) (not e!3452240))))

(declare-fun dynLambda!24614 (Int Regex!15582) Bool)

(assert (=> b!5596273 (= res!2373908 (dynLambda!24614 lambda!300429 (h!69369 (unfocusZipperList!1010 zl!343))))))

(declare-fun b!5596274 () Bool)

(assert (=> b!5596274 (= e!3452240 (forall!14749 (t!376327 (unfocusZipperList!1010 zl!343)) lambda!300429))))

(assert (= (and d!1768845 (not res!2373907)) b!5596273))

(assert (= (and b!5596273 res!2373908) b!5596274))

(declare-fun b_lambda!212051 () Bool)

(assert (=> (not b_lambda!212051) (not b!5596273)))

(declare-fun m!6575408 () Bool)

(assert (=> b!5596273 m!6575408))

(declare-fun m!6575410 () Bool)

(assert (=> b!5596274 m!6575410))

(assert (=> d!1768657 d!1768845))

(declare-fun d!1768847 () Bool)

(declare-fun res!2373911 () Bool)

(declare-fun e!3452244 () Bool)

(assert (=> d!1768847 (=> res!2373911 e!3452244)))

(assert (=> d!1768847 (= res!2373911 (is-ElementMatch!15582 lt!2256237))))

(assert (=> d!1768847 (= (validRegex!7318 lt!2256237) e!3452244)))

(declare-fun b!5596275 () Bool)

(declare-fun res!2373912 () Bool)

(declare-fun e!3452243 () Bool)

(assert (=> b!5596275 (=> (not res!2373912) (not e!3452243))))

(declare-fun call!419616 () Bool)

(assert (=> b!5596275 (= res!2373912 call!419616)))

(declare-fun e!3452242 () Bool)

(assert (=> b!5596275 (= e!3452242 e!3452243)))

(declare-fun b!5596276 () Bool)

(declare-fun e!3452245 () Bool)

(declare-fun e!3452246 () Bool)

(assert (=> b!5596276 (= e!3452245 e!3452246)))

(declare-fun res!2373913 () Bool)

(assert (=> b!5596276 (=> (not res!2373913) (not e!3452246))))

(assert (=> b!5596276 (= res!2373913 call!419616)))

(declare-fun b!5596277 () Bool)

(declare-fun e!3452241 () Bool)

(declare-fun e!3452247 () Bool)

(assert (=> b!5596277 (= e!3452241 e!3452247)))

(declare-fun res!2373910 () Bool)

(assert (=> b!5596277 (= res!2373910 (not (nullable!5614 (reg!15911 lt!2256237))))))

(assert (=> b!5596277 (=> (not res!2373910) (not e!3452247))))

(declare-fun bm!419610 () Bool)

(declare-fun call!419617 () Bool)

(assert (=> bm!419610 (= call!419616 call!419617)))

(declare-fun b!5596278 () Bool)

(declare-fun res!2373909 () Bool)

(assert (=> b!5596278 (=> res!2373909 e!3452245)))

(assert (=> b!5596278 (= res!2373909 (not (is-Concat!24427 lt!2256237)))))

(assert (=> b!5596278 (= e!3452242 e!3452245)))

(declare-fun b!5596279 () Bool)

(declare-fun call!419615 () Bool)

(assert (=> b!5596279 (= e!3452246 call!419615)))

(declare-fun bm!419611 () Bool)

(declare-fun c!981057 () Bool)

(assert (=> bm!419611 (= call!419615 (validRegex!7318 (ite c!981057 (regTwo!31677 lt!2256237) (regTwo!31676 lt!2256237))))))

(declare-fun b!5596280 () Bool)

(assert (=> b!5596280 (= e!3452244 e!3452241)))

(declare-fun c!981056 () Bool)

(assert (=> b!5596280 (= c!981056 (is-Star!15582 lt!2256237))))

(declare-fun b!5596281 () Bool)

(assert (=> b!5596281 (= e!3452247 call!419617)))

(declare-fun b!5596282 () Bool)

(assert (=> b!5596282 (= e!3452243 call!419615)))

(declare-fun b!5596283 () Bool)

(assert (=> b!5596283 (= e!3452241 e!3452242)))

(assert (=> b!5596283 (= c!981057 (is-Union!15582 lt!2256237))))

(declare-fun bm!419612 () Bool)

(assert (=> bm!419612 (= call!419617 (validRegex!7318 (ite c!981056 (reg!15911 lt!2256237) (ite c!981057 (regOne!31677 lt!2256237) (regOne!31676 lt!2256237)))))))

(assert (= (and d!1768847 (not res!2373911)) b!5596280))

(assert (= (and b!5596280 c!981056) b!5596277))

(assert (= (and b!5596280 (not c!981056)) b!5596283))

(assert (= (and b!5596277 res!2373910) b!5596281))

(assert (= (and b!5596283 c!981057) b!5596275))

(assert (= (and b!5596283 (not c!981057)) b!5596278))

(assert (= (and b!5596275 res!2373912) b!5596282))

(assert (= (and b!5596278 (not res!2373909)) b!5596276))

(assert (= (and b!5596276 res!2373913) b!5596279))

(assert (= (or b!5596282 b!5596279) bm!419611))

(assert (= (or b!5596275 b!5596276) bm!419610))

(assert (= (or b!5596281 bm!419610) bm!419612))

(declare-fun m!6575412 () Bool)

(assert (=> b!5596277 m!6575412))

(declare-fun m!6575414 () Bool)

(assert (=> bm!419611 m!6575414))

(declare-fun m!6575416 () Bool)

(assert (=> bm!419612 m!6575416))

(assert (=> d!1768595 d!1768847))

(declare-fun d!1768849 () Bool)

(declare-fun res!2373914 () Bool)

(declare-fun e!3452248 () Bool)

(assert (=> d!1768849 (=> res!2373914 e!3452248)))

(assert (=> d!1768849 (= res!2373914 (is-Nil!62921 (exprs!5466 (h!69371 zl!343))))))

(assert (=> d!1768849 (= (forall!14749 (exprs!5466 (h!69371 zl!343)) lambda!300425) e!3452248)))

(declare-fun b!5596284 () Bool)

(declare-fun e!3452249 () Bool)

(assert (=> b!5596284 (= e!3452248 e!3452249)))

(declare-fun res!2373915 () Bool)

(assert (=> b!5596284 (=> (not res!2373915) (not e!3452249))))

(assert (=> b!5596284 (= res!2373915 (dynLambda!24614 lambda!300425 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596285 () Bool)

(assert (=> b!5596285 (= e!3452249 (forall!14749 (t!376327 (exprs!5466 (h!69371 zl!343))) lambda!300425))))

(assert (= (and d!1768849 (not res!2373914)) b!5596284))

(assert (= (and b!5596284 res!2373915) b!5596285))

(declare-fun b_lambda!212053 () Bool)

(assert (=> (not b_lambda!212053) (not b!5596284)))

(declare-fun m!6575418 () Bool)

(assert (=> b!5596284 m!6575418))

(declare-fun m!6575420 () Bool)

(assert (=> b!5596285 m!6575420))

(assert (=> d!1768595 d!1768849))

(declare-fun bm!419613 () Bool)

(declare-fun call!419619 () (Set Context!9932))

(declare-fun call!419622 () (Set Context!9932))

(assert (=> bm!419613 (= call!419619 call!419622)))

(declare-fun b!5596287 () Bool)

(declare-fun e!3452255 () (Set Context!9932))

(declare-fun call!419618 () (Set Context!9932))

(declare-fun call!419623 () (Set Context!9932))

(assert (=> b!5596287 (= e!3452255 (set.union call!419618 call!419623))))

(declare-fun b!5596288 () Bool)

(declare-fun e!3452250 () (Set Context!9932))

(declare-fun e!3452252 () (Set Context!9932))

(assert (=> b!5596288 (= e!3452250 e!3452252)))

(declare-fun c!981062 () Bool)

(assert (=> b!5596288 (= c!981062 (is-Concat!24427 (h!69369 (exprs!5466 lt!2256087))))))

(declare-fun b!5596289 () Bool)

(assert (=> b!5596289 (= e!3452250 (set.union call!419618 call!419622))))

(declare-fun bm!419614 () Bool)

(declare-fun call!419620 () List!63045)

(declare-fun c!981058 () Bool)

(assert (=> bm!419614 (= call!419620 ($colon$colon!1645 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256087)))) (ite (or c!981058 c!981062) (regTwo!31676 (h!69369 (exprs!5466 lt!2256087))) (h!69369 (exprs!5466 lt!2256087)))))))

(declare-fun b!5596290 () Bool)

(declare-fun e!3452253 () (Set Context!9932))

(assert (=> b!5596290 (= e!3452253 (set.insert (Context!9933 (t!376327 (exprs!5466 lt!2256087))) (as set.empty (Set Context!9932))))))

(declare-fun b!5596291 () Bool)

(assert (=> b!5596291 (= e!3452253 e!3452255)))

(declare-fun c!981060 () Bool)

(assert (=> b!5596291 (= c!981060 (is-Union!15582 (h!69369 (exprs!5466 lt!2256087))))))

(declare-fun b!5596292 () Bool)

(declare-fun e!3452251 () (Set Context!9932))

(assert (=> b!5596292 (= e!3452251 (as set.empty (Set Context!9932)))))

(declare-fun bm!419615 () Bool)

(declare-fun call!419621 () List!63045)

(assert (=> bm!419615 (= call!419621 call!419620)))

(declare-fun b!5596293 () Bool)

(assert (=> b!5596293 (= e!3452252 call!419619)))

(declare-fun d!1768851 () Bool)

(declare-fun c!981061 () Bool)

(assert (=> d!1768851 (= c!981061 (and (is-ElementMatch!15582 (h!69369 (exprs!5466 lt!2256087))) (= (c!980755 (h!69369 (exprs!5466 lt!2256087))) (h!69370 s!2326))))))

(assert (=> d!1768851 (= (derivationStepZipperDown!924 (h!69369 (exprs!5466 lt!2256087)) (Context!9933 (t!376327 (exprs!5466 lt!2256087))) (h!69370 s!2326)) e!3452253)))

(declare-fun b!5596286 () Bool)

(declare-fun e!3452254 () Bool)

(assert (=> b!5596286 (= e!3452254 (nullable!5614 (regOne!31676 (h!69369 (exprs!5466 lt!2256087)))))))

(declare-fun b!5596294 () Bool)

(assert (=> b!5596294 (= e!3452251 call!419619)))

(declare-fun bm!419616 () Bool)

(assert (=> bm!419616 (= call!419623 (derivationStepZipperDown!924 (ite c!981060 (regTwo!31677 (h!69369 (exprs!5466 lt!2256087))) (ite c!981058 (regTwo!31676 (h!69369 (exprs!5466 lt!2256087))) (ite c!981062 (regOne!31676 (h!69369 (exprs!5466 lt!2256087))) (reg!15911 (h!69369 (exprs!5466 lt!2256087)))))) (ite (or c!981060 c!981058) (Context!9933 (t!376327 (exprs!5466 lt!2256087))) (Context!9933 call!419621)) (h!69370 s!2326)))))

(declare-fun bm!419617 () Bool)

(assert (=> bm!419617 (= call!419622 call!419623)))

(declare-fun b!5596295 () Bool)

(declare-fun c!981059 () Bool)

(assert (=> b!5596295 (= c!981059 (is-Star!15582 (h!69369 (exprs!5466 lt!2256087))))))

(assert (=> b!5596295 (= e!3452252 e!3452251)))

(declare-fun b!5596296 () Bool)

(assert (=> b!5596296 (= c!981058 e!3452254)))

(declare-fun res!2373916 () Bool)

(assert (=> b!5596296 (=> (not res!2373916) (not e!3452254))))

(assert (=> b!5596296 (= res!2373916 (is-Concat!24427 (h!69369 (exprs!5466 lt!2256087))))))

(assert (=> b!5596296 (= e!3452255 e!3452250)))

(declare-fun bm!419618 () Bool)

(assert (=> bm!419618 (= call!419618 (derivationStepZipperDown!924 (ite c!981060 (regOne!31677 (h!69369 (exprs!5466 lt!2256087))) (regOne!31676 (h!69369 (exprs!5466 lt!2256087)))) (ite c!981060 (Context!9933 (t!376327 (exprs!5466 lt!2256087))) (Context!9933 call!419620)) (h!69370 s!2326)))))

(assert (= (and d!1768851 c!981061) b!5596290))

(assert (= (and d!1768851 (not c!981061)) b!5596291))

(assert (= (and b!5596291 c!981060) b!5596287))

(assert (= (and b!5596291 (not c!981060)) b!5596296))

(assert (= (and b!5596296 res!2373916) b!5596286))

(assert (= (and b!5596296 c!981058) b!5596289))

(assert (= (and b!5596296 (not c!981058)) b!5596288))

(assert (= (and b!5596288 c!981062) b!5596293))

(assert (= (and b!5596288 (not c!981062)) b!5596295))

(assert (= (and b!5596295 c!981059) b!5596294))

(assert (= (and b!5596295 (not c!981059)) b!5596292))

(assert (= (or b!5596293 b!5596294) bm!419615))

(assert (= (or b!5596293 b!5596294) bm!419613))

(assert (= (or b!5596289 bm!419615) bm!419614))

(assert (= (or b!5596289 bm!419613) bm!419617))

(assert (= (or b!5596287 bm!419617) bm!419616))

(assert (= (or b!5596287 b!5596289) bm!419618))

(declare-fun m!6575422 () Bool)

(assert (=> bm!419616 m!6575422))

(declare-fun m!6575424 () Bool)

(assert (=> bm!419618 m!6575424))

(declare-fun m!6575426 () Bool)

(assert (=> b!5596290 m!6575426))

(declare-fun m!6575428 () Bool)

(assert (=> bm!419614 m!6575428))

(declare-fun m!6575430 () Bool)

(assert (=> b!5596286 m!6575430))

(assert (=> bm!419513 d!1768851))

(declare-fun d!1768853 () Bool)

(declare-fun c!981063 () Bool)

(assert (=> d!1768853 (= c!981063 (isEmpty!34748 (tail!11028 s!2326)))))

(declare-fun e!3452256 () Bool)

(assert (=> d!1768853 (= (matchZipper!1720 (derivationStepZipper!1681 z!1189 (head!11933 s!2326)) (tail!11028 s!2326)) e!3452256)))

(declare-fun b!5596297 () Bool)

(assert (=> b!5596297 (= e!3452256 (nullableZipper!1577 (derivationStepZipper!1681 z!1189 (head!11933 s!2326))))))

(declare-fun b!5596298 () Bool)

(assert (=> b!5596298 (= e!3452256 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 z!1189 (head!11933 s!2326)) (head!11933 (tail!11028 s!2326))) (tail!11028 (tail!11028 s!2326))))))

(assert (= (and d!1768853 c!981063) b!5596297))

(assert (= (and d!1768853 (not c!981063)) b!5596298))

(assert (=> d!1768853 m!6574704))

(assert (=> d!1768853 m!6574708))

(assert (=> b!5596297 m!6574780))

(declare-fun m!6575432 () Bool)

(assert (=> b!5596297 m!6575432))

(assert (=> b!5596298 m!6574704))

(assert (=> b!5596298 m!6575302))

(assert (=> b!5596298 m!6574780))

(assert (=> b!5596298 m!6575302))

(declare-fun m!6575434 () Bool)

(assert (=> b!5596298 m!6575434))

(assert (=> b!5596298 m!6574704))

(assert (=> b!5596298 m!6575306))

(assert (=> b!5596298 m!6575434))

(assert (=> b!5596298 m!6575306))

(declare-fun m!6575436 () Bool)

(assert (=> b!5596298 m!6575436))

(assert (=> b!5595485 d!1768853))

(declare-fun bs!1293804 () Bool)

(declare-fun d!1768855 () Bool)

(assert (= bs!1293804 (and d!1768855 b!5595134)))

(declare-fun lambda!300470 () Int)

(assert (=> bs!1293804 (= (= (head!11933 s!2326) (h!69370 s!2326)) (= lambda!300470 lambda!300389))))

(declare-fun bs!1293805 () Bool)

(assert (= bs!1293805 (and d!1768855 d!1768819)))

(assert (=> bs!1293805 (= (= (head!11933 s!2326) (head!11933 (t!376328 s!2326))) (= lambda!300470 lambda!300469))))

(assert (=> d!1768855 true))

(assert (=> d!1768855 (= (derivationStepZipper!1681 z!1189 (head!11933 s!2326)) (flatMap!1195 z!1189 lambda!300470))))

(declare-fun bs!1293806 () Bool)

(assert (= bs!1293806 d!1768855))

(declare-fun m!6575438 () Bool)

(assert (=> bs!1293806 m!6575438))

(assert (=> b!5595485 d!1768855))

(assert (=> b!5595485 d!1768777))

(assert (=> b!5595485 d!1768773))

(declare-fun d!1768857 () Bool)

(declare-fun c!981064 () Bool)

(assert (=> d!1768857 (= c!981064 (isEmpty!34748 (tail!11028 (t!376328 s!2326))))))

(declare-fun e!3452257 () Bool)

(assert (=> d!1768857 (= (matchZipper!1720 (derivationStepZipper!1681 (set.union lt!2256094 lt!2256084) (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))) e!3452257)))

(declare-fun b!5596299 () Bool)

(assert (=> b!5596299 (= e!3452257 (nullableZipper!1577 (derivationStepZipper!1681 (set.union lt!2256094 lt!2256084) (head!11933 (t!376328 s!2326)))))))

(declare-fun b!5596300 () Bool)

(assert (=> b!5596300 (= e!3452257 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 (set.union lt!2256094 lt!2256084) (head!11933 (t!376328 s!2326))) (head!11933 (tail!11028 (t!376328 s!2326)))) (tail!11028 (tail!11028 (t!376328 s!2326)))))))

(assert (= (and d!1768857 c!981064) b!5596299))

(assert (= (and d!1768857 (not c!981064)) b!5596300))

(assert (=> d!1768857 m!6574722))

(assert (=> d!1768857 m!6575358))

(assert (=> b!5596299 m!6575090))

(declare-fun m!6575440 () Bool)

(assert (=> b!5596299 m!6575440))

(assert (=> b!5596300 m!6574722))

(assert (=> b!5596300 m!6575362))

(assert (=> b!5596300 m!6575090))

(assert (=> b!5596300 m!6575362))

(declare-fun m!6575442 () Bool)

(assert (=> b!5596300 m!6575442))

(assert (=> b!5596300 m!6574722))

(assert (=> b!5596300 m!6575366))

(assert (=> b!5596300 m!6575442))

(assert (=> b!5596300 m!6575366))

(declare-fun m!6575444 () Bool)

(assert (=> b!5596300 m!6575444))

(assert (=> b!5595783 d!1768857))

(declare-fun bs!1293807 () Bool)

(declare-fun d!1768859 () Bool)

(assert (= bs!1293807 (and d!1768859 b!5595134)))

(declare-fun lambda!300471 () Int)

(assert (=> bs!1293807 (= (= (head!11933 (t!376328 s!2326)) (h!69370 s!2326)) (= lambda!300471 lambda!300389))))

(declare-fun bs!1293808 () Bool)

(assert (= bs!1293808 (and d!1768859 d!1768819)))

(assert (=> bs!1293808 (= lambda!300471 lambda!300469)))

(declare-fun bs!1293809 () Bool)

(assert (= bs!1293809 (and d!1768859 d!1768855)))

(assert (=> bs!1293809 (= (= (head!11933 (t!376328 s!2326)) (head!11933 s!2326)) (= lambda!300471 lambda!300470))))

(assert (=> d!1768859 true))

(assert (=> d!1768859 (= (derivationStepZipper!1681 (set.union lt!2256094 lt!2256084) (head!11933 (t!376328 s!2326))) (flatMap!1195 (set.union lt!2256094 lt!2256084) lambda!300471))))

(declare-fun bs!1293810 () Bool)

(assert (= bs!1293810 d!1768859))

(declare-fun m!6575446 () Bool)

(assert (=> bs!1293810 m!6575446))

(assert (=> b!5595783 d!1768859))

(assert (=> b!5595783 d!1768821))

(assert (=> b!5595783 d!1768823))

(declare-fun d!1768861 () Bool)

(assert (=> d!1768861 true))

(declare-fun setRes!37320 () Bool)

(assert (=> d!1768861 setRes!37320))

(declare-fun condSetEmpty!37320 () Bool)

(declare-fun res!2373917 () (Set Context!9932))

(assert (=> d!1768861 (= condSetEmpty!37320 (= res!2373917 (as set.empty (Set Context!9932))))))

(assert (=> d!1768861 (= (choose!42433 lt!2256088 lambda!300389) res!2373917)))

(declare-fun setIsEmpty!37320 () Bool)

(assert (=> setIsEmpty!37320 setRes!37320))

(declare-fun e!3452258 () Bool)

(declare-fun setElem!37320 () Context!9932)

(declare-fun tp!1547465 () Bool)

(declare-fun setNonEmpty!37320 () Bool)

(assert (=> setNonEmpty!37320 (= setRes!37320 (and tp!1547465 (inv!82203 setElem!37320) e!3452258))))

(declare-fun setRest!37320 () (Set Context!9932))

(assert (=> setNonEmpty!37320 (= res!2373917 (set.union (set.insert setElem!37320 (as set.empty (Set Context!9932))) setRest!37320))))

(declare-fun b!5596301 () Bool)

(declare-fun tp!1547464 () Bool)

(assert (=> b!5596301 (= e!3452258 tp!1547464)))

(assert (= (and d!1768861 condSetEmpty!37320) setIsEmpty!37320))

(assert (= (and d!1768861 (not condSetEmpty!37320)) setNonEmpty!37320))

(assert (= setNonEmpty!37320 b!5596301))

(declare-fun m!6575448 () Bool)

(assert (=> setNonEmpty!37320 m!6575448))

(assert (=> d!1768601 d!1768861))

(assert (=> b!5595405 d!1768777))

(assert (=> d!1768619 d!1768835))

(assert (=> b!5595532 d!1768711))

(declare-fun d!1768863 () Bool)

(assert (=> d!1768863 (= (isConcat!659 lt!2256237) (is-Concat!24427 lt!2256237))))

(assert (=> b!5595528 d!1768863))

(declare-fun d!1768865 () Bool)

(declare-fun res!2373920 () Bool)

(declare-fun e!3452262 () Bool)

(assert (=> d!1768865 (=> res!2373920 e!3452262)))

(assert (=> d!1768865 (= res!2373920 (is-ElementMatch!15582 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))))))

(assert (=> d!1768865 (= (validRegex!7318 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))) e!3452262)))

(declare-fun b!5596302 () Bool)

(declare-fun res!2373921 () Bool)

(declare-fun e!3452261 () Bool)

(assert (=> b!5596302 (=> (not res!2373921) (not e!3452261))))

(declare-fun call!419625 () Bool)

(assert (=> b!5596302 (= res!2373921 call!419625)))

(declare-fun e!3452260 () Bool)

(assert (=> b!5596302 (= e!3452260 e!3452261)))

(declare-fun b!5596303 () Bool)

(declare-fun e!3452263 () Bool)

(declare-fun e!3452264 () Bool)

(assert (=> b!5596303 (= e!3452263 e!3452264)))

(declare-fun res!2373922 () Bool)

(assert (=> b!5596303 (=> (not res!2373922) (not e!3452264))))

(assert (=> b!5596303 (= res!2373922 call!419625)))

(declare-fun b!5596304 () Bool)

(declare-fun e!3452259 () Bool)

(declare-fun e!3452265 () Bool)

(assert (=> b!5596304 (= e!3452259 e!3452265)))

(declare-fun res!2373919 () Bool)

(assert (=> b!5596304 (= res!2373919 (not (nullable!5614 (reg!15911 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))))))))

(assert (=> b!5596304 (=> (not res!2373919) (not e!3452265))))

(declare-fun bm!419619 () Bool)

(declare-fun call!419626 () Bool)

(assert (=> bm!419619 (= call!419625 call!419626)))

(declare-fun b!5596305 () Bool)

(declare-fun res!2373918 () Bool)

(assert (=> b!5596305 (=> res!2373918 e!3452263)))

(assert (=> b!5596305 (= res!2373918 (not (is-Concat!24427 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292)))))))

(assert (=> b!5596305 (= e!3452260 e!3452263)))

(declare-fun b!5596306 () Bool)

(declare-fun call!419624 () Bool)

(assert (=> b!5596306 (= e!3452264 call!419624)))

(declare-fun bm!419620 () Bool)

(declare-fun c!981066 () Bool)

(assert (=> bm!419620 (= call!419624 (validRegex!7318 (ite c!981066 (regTwo!31677 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))) (regTwo!31676 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))))))))

(declare-fun b!5596307 () Bool)

(assert (=> b!5596307 (= e!3452262 e!3452259)))

(declare-fun c!981065 () Bool)

(assert (=> b!5596307 (= c!981065 (is-Star!15582 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))))))

(declare-fun b!5596308 () Bool)

(assert (=> b!5596308 (= e!3452265 call!419626)))

(declare-fun b!5596309 () Bool)

(assert (=> b!5596309 (= e!3452261 call!419624)))

(declare-fun b!5596310 () Bool)

(assert (=> b!5596310 (= e!3452259 e!3452260)))

(assert (=> b!5596310 (= c!981066 (is-Union!15582 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))))))

(declare-fun bm!419621 () Bool)

(assert (=> bm!419621 (= call!419626 (validRegex!7318 (ite c!981065 (reg!15911 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))) (ite c!981066 (regOne!31677 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292))) (regOne!31676 (ite c!980938 (regTwo!31677 r!7292) (regTwo!31676 r!7292)))))))))

(assert (= (and d!1768865 (not res!2373920)) b!5596307))

(assert (= (and b!5596307 c!981065) b!5596304))

(assert (= (and b!5596307 (not c!981065)) b!5596310))

(assert (= (and b!5596304 res!2373919) b!5596308))

(assert (= (and b!5596310 c!981066) b!5596302))

(assert (= (and b!5596310 (not c!981066)) b!5596305))

(assert (= (and b!5596302 res!2373921) b!5596309))

(assert (= (and b!5596305 (not res!2373918)) b!5596303))

(assert (= (and b!5596303 res!2373922) b!5596306))

(assert (= (or b!5596309 b!5596306) bm!419620))

(assert (= (or b!5596302 b!5596303) bm!419619))

(assert (= (or b!5596308 bm!419619) bm!419621))

(declare-fun m!6575450 () Bool)

(assert (=> b!5596304 m!6575450))

(declare-fun m!6575452 () Bool)

(assert (=> bm!419620 m!6575452))

(declare-fun m!6575454 () Bool)

(assert (=> bm!419621 m!6575454))

(assert (=> bm!419533 d!1768865))

(assert (=> d!1768709 d!1768835))

(assert (=> d!1768641 d!1768653))

(declare-fun d!1768867 () Bool)

(assert (=> d!1768867 (= (flatMap!1195 z!1189 lambda!300389) (dynLambda!24612 lambda!300389 (h!69371 zl!343)))))

(assert (=> d!1768867 true))

(declare-fun _$13!2206 () Unit!155748)

(assert (=> d!1768867 (= (choose!42434 z!1189 (h!69371 zl!343) lambda!300389) _$13!2206)))

(declare-fun b_lambda!212055 () Bool)

(assert (=> (not b_lambda!212055) (not d!1768867)))

(declare-fun bs!1293811 () Bool)

(assert (= bs!1293811 d!1768867))

(assert (=> bs!1293811 m!6574480))

(assert (=> bs!1293811 m!6574900))

(assert (=> d!1768641 d!1768867))

(declare-fun d!1768869 () Bool)

(assert (=> d!1768869 (= (head!11936 (unfocusZipperList!1010 zl!343)) (h!69369 (unfocusZipperList!1010 zl!343)))))

(assert (=> b!5595660 d!1768869))

(declare-fun d!1768871 () Bool)

(assert (=> d!1768871 (= (isEmpty!34748 s!2326) (is-Nil!62922 s!2326))))

(assert (=> d!1768591 d!1768871))

(assert (=> d!1768605 d!1768609))

(declare-fun d!1768873 () Bool)

(assert (=> d!1768873 (= (flatMap!1195 lt!2256103 lambda!300389) (dynLambda!24612 lambda!300389 lt!2256105))))

(assert (=> d!1768873 true))

(declare-fun _$13!2207 () Unit!155748)

(assert (=> d!1768873 (= (choose!42434 lt!2256103 lt!2256105 lambda!300389) _$13!2207)))

(declare-fun b_lambda!212057 () Bool)

(assert (=> (not b_lambda!212057) (not d!1768873)))

(declare-fun bs!1293812 () Bool)

(assert (= bs!1293812 d!1768873))

(assert (=> bs!1293812 m!6574506))

(assert (=> bs!1293812 m!6574816))

(assert (=> d!1768605 d!1768873))

(declare-fun d!1768875 () Bool)

(assert (=> d!1768875 (= ($colon$colon!1645 (exprs!5466 lt!2256087) (ite (or c!980833 c!980837) (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (regOne!31677 (regOne!31676 r!7292)))) (Cons!62921 (ite (or c!980833 c!980837) (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (regOne!31677 (regOne!31676 r!7292))) (exprs!5466 lt!2256087)))))

(assert (=> bm!419480 d!1768875))

(declare-fun d!1768877 () Bool)

(declare-fun e!3452266 () Bool)

(assert (=> d!1768877 e!3452266))

(declare-fun c!981068 () Bool)

(assert (=> d!1768877 (= c!981068 (is-EmptyExpr!15582 (regTwo!31676 r!7292)))))

(declare-fun lt!2256321 () Bool)

(declare-fun e!3452268 () Bool)

(assert (=> d!1768877 (= lt!2256321 e!3452268)))

(declare-fun c!981067 () Bool)

(assert (=> d!1768877 (= c!981067 (isEmpty!34748 s!2326))))

(assert (=> d!1768877 (validRegex!7318 (regTwo!31676 r!7292))))

(assert (=> d!1768877 (= (matchR!7767 (regTwo!31676 r!7292) s!2326) lt!2256321)))

(declare-fun b!5596311 () Bool)

(declare-fun e!3452272 () Bool)

(assert (=> b!5596311 (= e!3452272 (= (head!11933 s!2326) (c!980755 (regTwo!31676 r!7292))))))

(declare-fun b!5596312 () Bool)

(assert (=> b!5596312 (= e!3452268 (matchR!7767 (derivativeStep!4430 (regTwo!31676 r!7292) (head!11933 s!2326)) (tail!11028 s!2326)))))

(declare-fun b!5596313 () Bool)

(assert (=> b!5596313 (= e!3452268 (nullable!5614 (regTwo!31676 r!7292)))))

(declare-fun b!5596314 () Bool)

(declare-fun call!419627 () Bool)

(assert (=> b!5596314 (= e!3452266 (= lt!2256321 call!419627))))

(declare-fun b!5596315 () Bool)

(declare-fun e!3452271 () Bool)

(declare-fun e!3452267 () Bool)

(assert (=> b!5596315 (= e!3452271 e!3452267)))

(declare-fun res!2373929 () Bool)

(assert (=> b!5596315 (=> res!2373929 e!3452267)))

(assert (=> b!5596315 (= res!2373929 call!419627)))

(declare-fun b!5596316 () Bool)

(assert (=> b!5596316 (= e!3452267 (not (= (head!11933 s!2326) (c!980755 (regTwo!31676 r!7292)))))))

(declare-fun b!5596317 () Bool)

(declare-fun res!2373923 () Bool)

(declare-fun e!3452269 () Bool)

(assert (=> b!5596317 (=> res!2373923 e!3452269)))

(assert (=> b!5596317 (= res!2373923 e!3452272)))

(declare-fun res!2373930 () Bool)

(assert (=> b!5596317 (=> (not res!2373930) (not e!3452272))))

(assert (=> b!5596317 (= res!2373930 lt!2256321)))

(declare-fun b!5596318 () Bool)

(declare-fun e!3452270 () Bool)

(assert (=> b!5596318 (= e!3452270 (not lt!2256321))))

(declare-fun b!5596319 () Bool)

(assert (=> b!5596319 (= e!3452269 e!3452271)))

(declare-fun res!2373927 () Bool)

(assert (=> b!5596319 (=> (not res!2373927) (not e!3452271))))

(assert (=> b!5596319 (= res!2373927 (not lt!2256321))))

(declare-fun b!5596320 () Bool)

(declare-fun res!2373928 () Bool)

(assert (=> b!5596320 (=> (not res!2373928) (not e!3452272))))

(assert (=> b!5596320 (= res!2373928 (isEmpty!34748 (tail!11028 s!2326)))))

(declare-fun b!5596321 () Bool)

(assert (=> b!5596321 (= e!3452266 e!3452270)))

(declare-fun c!981069 () Bool)

(assert (=> b!5596321 (= c!981069 (is-EmptyLang!15582 (regTwo!31676 r!7292)))))

(declare-fun b!5596322 () Bool)

(declare-fun res!2373926 () Bool)

(assert (=> b!5596322 (=> res!2373926 e!3452269)))

(assert (=> b!5596322 (= res!2373926 (not (is-ElementMatch!15582 (regTwo!31676 r!7292))))))

(assert (=> b!5596322 (= e!3452270 e!3452269)))

(declare-fun bm!419622 () Bool)

(assert (=> bm!419622 (= call!419627 (isEmpty!34748 s!2326))))

(declare-fun b!5596323 () Bool)

(declare-fun res!2373924 () Bool)

(assert (=> b!5596323 (=> res!2373924 e!3452267)))

(assert (=> b!5596323 (= res!2373924 (not (isEmpty!34748 (tail!11028 s!2326))))))

(declare-fun b!5596324 () Bool)

(declare-fun res!2373925 () Bool)

(assert (=> b!5596324 (=> (not res!2373925) (not e!3452272))))

(assert (=> b!5596324 (= res!2373925 (not call!419627))))

(assert (= (and d!1768877 c!981067) b!5596313))

(assert (= (and d!1768877 (not c!981067)) b!5596312))

(assert (= (and d!1768877 c!981068) b!5596314))

(assert (= (and d!1768877 (not c!981068)) b!5596321))

(assert (= (and b!5596321 c!981069) b!5596318))

(assert (= (and b!5596321 (not c!981069)) b!5596322))

(assert (= (and b!5596322 (not res!2373926)) b!5596317))

(assert (= (and b!5596317 res!2373930) b!5596324))

(assert (= (and b!5596324 res!2373925) b!5596320))

(assert (= (and b!5596320 res!2373928) b!5596311))

(assert (= (and b!5596317 (not res!2373923)) b!5596319))

(assert (= (and b!5596319 res!2373927) b!5596315))

(assert (= (and b!5596315 (not res!2373929)) b!5596323))

(assert (= (and b!5596323 (not res!2373924)) b!5596316))

(assert (= (or b!5596314 b!5596315 b!5596324) bm!419622))

(assert (=> b!5596312 m!6574700))

(assert (=> b!5596312 m!6574700))

(declare-fun m!6575456 () Bool)

(assert (=> b!5596312 m!6575456))

(assert (=> b!5596312 m!6574704))

(assert (=> b!5596312 m!6575456))

(assert (=> b!5596312 m!6574704))

(declare-fun m!6575458 () Bool)

(assert (=> b!5596312 m!6575458))

(assert (=> b!5596316 m!6574700))

(assert (=> b!5596311 m!6574700))

(assert (=> b!5596320 m!6574704))

(assert (=> b!5596320 m!6574704))

(assert (=> b!5596320 m!6574708))

(assert (=> d!1768877 m!6574684))

(declare-fun m!6575460 () Bool)

(assert (=> d!1768877 m!6575460))

(declare-fun m!6575462 () Bool)

(assert (=> b!5596313 m!6575462))

(assert (=> b!5596323 m!6574704))

(assert (=> b!5596323 m!6574704))

(assert (=> b!5596323 m!6574708))

(assert (=> bm!419622 m!6574684))

(assert (=> b!5595708 d!1768877))

(declare-fun d!1768879 () Bool)

(assert (=> d!1768879 (= (isEmptyLang!1147 lt!2256253) (is-EmptyLang!15582 lt!2256253))))

(assert (=> b!5595656 d!1768879))

(assert (=> b!5595417 d!1768771))

(assert (=> b!5595417 d!1768773))

(declare-fun bm!419623 () Bool)

(declare-fun call!419629 () (Set Context!9932))

(declare-fun call!419632 () (Set Context!9932))

(assert (=> bm!419623 (= call!419629 call!419632)))

(declare-fun b!5596326 () Bool)

(declare-fun e!3452278 () (Set Context!9932))

(declare-fun call!419628 () (Set Context!9932))

(declare-fun call!419633 () (Set Context!9932))

(assert (=> b!5596326 (= e!3452278 (set.union call!419628 call!419633))))

(declare-fun b!5596327 () Bool)

(declare-fun e!3452273 () (Set Context!9932))

(declare-fun e!3452275 () (Set Context!9932))

(assert (=> b!5596327 (= e!3452273 e!3452275)))

(declare-fun c!981074 () Bool)

(assert (=> b!5596327 (= c!981074 (is-Concat!24427 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))

(declare-fun b!5596328 () Bool)

(assert (=> b!5596328 (= e!3452273 (set.union call!419628 call!419632))))

(declare-fun bm!419624 () Bool)

(declare-fun c!981070 () Bool)

(declare-fun call!419630 () List!63045)

(assert (=> bm!419624 (= call!419630 ($colon$colon!1645 (exprs!5466 (ite c!980891 lt!2256087 (Context!9933 call!419522))) (ite (or c!981070 c!981074) (regTwo!31676 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))) (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))))))))

(declare-fun e!3452276 () (Set Context!9932))

(declare-fun b!5596329 () Bool)

(assert (=> b!5596329 (= e!3452276 (set.insert (ite c!980891 lt!2256087 (Context!9933 call!419522)) (as set.empty (Set Context!9932))))))

(declare-fun b!5596330 () Bool)

(assert (=> b!5596330 (= e!3452276 e!3452278)))

(declare-fun c!981072 () Bool)

(assert (=> b!5596330 (= c!981072 (is-Union!15582 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))

(declare-fun b!5596331 () Bool)

(declare-fun e!3452274 () (Set Context!9932))

(assert (=> b!5596331 (= e!3452274 (as set.empty (Set Context!9932)))))

(declare-fun bm!419625 () Bool)

(declare-fun call!419631 () List!63045)

(assert (=> bm!419625 (= call!419631 call!419630)))

(declare-fun b!5596332 () Bool)

(assert (=> b!5596332 (= e!3452275 call!419629)))

(declare-fun d!1768881 () Bool)

(declare-fun c!981073 () Bool)

(assert (=> d!1768881 (= c!981073 (and (is-ElementMatch!15582 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))) (= (c!980755 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))) (h!69370 s!2326))))))

(assert (=> d!1768881 (= (derivationStepZipperDown!924 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))) (ite c!980891 lt!2256087 (Context!9933 call!419522)) (h!69370 s!2326)) e!3452276)))

(declare-fun b!5596325 () Bool)

(declare-fun e!3452277 () Bool)

(assert (=> b!5596325 (= e!3452277 (nullable!5614 (regOne!31676 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))))))))

(declare-fun b!5596333 () Bool)

(assert (=> b!5596333 (= e!3452274 call!419629)))

(declare-fun bm!419626 () Bool)

(assert (=> bm!419626 (= call!419633 (derivationStepZipperDown!924 (ite c!981072 (regTwo!31677 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))) (ite c!981070 (regTwo!31676 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))) (ite c!981074 (regOne!31676 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))) (reg!15911 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))))))) (ite (or c!981072 c!981070) (ite c!980891 lt!2256087 (Context!9933 call!419522)) (Context!9933 call!419631)) (h!69370 s!2326)))))

(declare-fun bm!419627 () Bool)

(assert (=> bm!419627 (= call!419632 call!419633)))

(declare-fun b!5596334 () Bool)

(declare-fun c!981071 () Bool)

(assert (=> b!5596334 (= c!981071 (is-Star!15582 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))

(assert (=> b!5596334 (= e!3452275 e!3452274)))

(declare-fun b!5596335 () Bool)

(assert (=> b!5596335 (= c!981070 e!3452277)))

(declare-fun res!2373931 () Bool)

(assert (=> b!5596335 (=> (not res!2373931) (not e!3452277))))

(assert (=> b!5596335 (= res!2373931 (is-Concat!24427 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))

(assert (=> b!5596335 (= e!3452278 e!3452273)))

(declare-fun bm!419628 () Bool)

(assert (=> bm!419628 (= call!419628 (derivationStepZipperDown!924 (ite c!981072 (regOne!31677 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))) (regOne!31676 (ite c!980891 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))))) (ite c!981072 (ite c!980891 lt!2256087 (Context!9933 call!419522)) (Context!9933 call!419630)) (h!69370 s!2326)))))

(assert (= (and d!1768881 c!981073) b!5596329))

(assert (= (and d!1768881 (not c!981073)) b!5596330))

(assert (= (and b!5596330 c!981072) b!5596326))

(assert (= (and b!5596330 (not c!981072)) b!5596335))

(assert (= (and b!5596335 res!2373931) b!5596325))

(assert (= (and b!5596335 c!981070) b!5596328))

(assert (= (and b!5596335 (not c!981070)) b!5596327))

(assert (= (and b!5596327 c!981074) b!5596332))

(assert (= (and b!5596327 (not c!981074)) b!5596334))

(assert (= (and b!5596334 c!981071) b!5596333))

(assert (= (and b!5596334 (not c!981071)) b!5596331))

(assert (= (or b!5596332 b!5596333) bm!419625))

(assert (= (or b!5596332 b!5596333) bm!419623))

(assert (= (or b!5596328 bm!419625) bm!419624))

(assert (= (or b!5596328 bm!419623) bm!419627))

(assert (= (or b!5596326 bm!419627) bm!419626))

(assert (= (or b!5596326 b!5596328) bm!419628))

(declare-fun m!6575464 () Bool)

(assert (=> bm!419626 m!6575464))

(declare-fun m!6575466 () Bool)

(assert (=> bm!419628 m!6575466))

(declare-fun m!6575468 () Bool)

(assert (=> b!5596329 m!6575468))

(declare-fun m!6575470 () Bool)

(assert (=> bm!419624 m!6575470))

(declare-fun m!6575472 () Bool)

(assert (=> b!5596325 m!6575472))

(assert (=> bm!419520 d!1768881))

(declare-fun bs!1293813 () Bool)

(declare-fun d!1768883 () Bool)

(assert (= bs!1293813 (and d!1768883 d!1768657)))

(declare-fun lambda!300472 () Int)

(assert (=> bs!1293813 (= lambda!300472 lambda!300429)))

(declare-fun bs!1293814 () Bool)

(assert (= bs!1293814 (and d!1768883 d!1768805)))

(assert (=> bs!1293814 (= lambda!300472 lambda!300465)))

(declare-fun bs!1293815 () Bool)

(assert (= bs!1293815 (and d!1768883 d!1768661)))

(assert (=> bs!1293815 (= lambda!300472 lambda!300432)))

(declare-fun bs!1293816 () Bool)

(assert (= bs!1293816 (and d!1768883 d!1768639)))

(assert (=> bs!1293816 (= lambda!300472 lambda!300426)))

(declare-fun bs!1293817 () Bool)

(assert (= bs!1293817 (and d!1768883 d!1768593)))

(assert (=> bs!1293817 (= lambda!300472 lambda!300422)))

(declare-fun bs!1293818 () Bool)

(assert (= bs!1293818 (and d!1768883 d!1768595)))

(assert (=> bs!1293818 (= lambda!300472 lambda!300425)))

(assert (=> d!1768883 (= (inv!82203 (h!69371 (t!376329 zl!343))) (forall!14749 (exprs!5466 (h!69371 (t!376329 zl!343))) lambda!300472))))

(declare-fun bs!1293819 () Bool)

(assert (= bs!1293819 d!1768883))

(declare-fun m!6575474 () Bool)

(assert (=> bs!1293819 m!6575474))

(assert (=> b!5595830 d!1768883))

(assert (=> d!1768673 d!1768833))

(declare-fun d!1768885 () Bool)

(declare-fun e!3452279 () Bool)

(assert (=> d!1768885 e!3452279))

(declare-fun c!981076 () Bool)

(assert (=> d!1768885 (= c!981076 (is-EmptyExpr!15582 (regOne!31676 r!7292)))))

(declare-fun lt!2256322 () Bool)

(declare-fun e!3452281 () Bool)

(assert (=> d!1768885 (= lt!2256322 e!3452281)))

(declare-fun c!981075 () Bool)

(assert (=> d!1768885 (= c!981075 (isEmpty!34748 Nil!62922))))

(assert (=> d!1768885 (validRegex!7318 (regOne!31676 r!7292))))

(assert (=> d!1768885 (= (matchR!7767 (regOne!31676 r!7292) Nil!62922) lt!2256322)))

(declare-fun b!5596336 () Bool)

(declare-fun e!3452285 () Bool)

(assert (=> b!5596336 (= e!3452285 (= (head!11933 Nil!62922) (c!980755 (regOne!31676 r!7292))))))

(declare-fun b!5596337 () Bool)

(assert (=> b!5596337 (= e!3452281 (matchR!7767 (derivativeStep!4430 (regOne!31676 r!7292) (head!11933 Nil!62922)) (tail!11028 Nil!62922)))))

(declare-fun b!5596338 () Bool)

(assert (=> b!5596338 (= e!3452281 (nullable!5614 (regOne!31676 r!7292)))))

(declare-fun b!5596339 () Bool)

(declare-fun call!419634 () Bool)

(assert (=> b!5596339 (= e!3452279 (= lt!2256322 call!419634))))

(declare-fun b!5596340 () Bool)

(declare-fun e!3452284 () Bool)

(declare-fun e!3452280 () Bool)

(assert (=> b!5596340 (= e!3452284 e!3452280)))

(declare-fun res!2373938 () Bool)

(assert (=> b!5596340 (=> res!2373938 e!3452280)))

(assert (=> b!5596340 (= res!2373938 call!419634)))

(declare-fun b!5596341 () Bool)

(assert (=> b!5596341 (= e!3452280 (not (= (head!11933 Nil!62922) (c!980755 (regOne!31676 r!7292)))))))

(declare-fun b!5596342 () Bool)

(declare-fun res!2373932 () Bool)

(declare-fun e!3452282 () Bool)

(assert (=> b!5596342 (=> res!2373932 e!3452282)))

(assert (=> b!5596342 (= res!2373932 e!3452285)))

(declare-fun res!2373939 () Bool)

(assert (=> b!5596342 (=> (not res!2373939) (not e!3452285))))

(assert (=> b!5596342 (= res!2373939 lt!2256322)))

(declare-fun b!5596343 () Bool)

(declare-fun e!3452283 () Bool)

(assert (=> b!5596343 (= e!3452283 (not lt!2256322))))

(declare-fun b!5596344 () Bool)

(assert (=> b!5596344 (= e!3452282 e!3452284)))

(declare-fun res!2373936 () Bool)

(assert (=> b!5596344 (=> (not res!2373936) (not e!3452284))))

(assert (=> b!5596344 (= res!2373936 (not lt!2256322))))

(declare-fun b!5596345 () Bool)

(declare-fun res!2373937 () Bool)

(assert (=> b!5596345 (=> (not res!2373937) (not e!3452285))))

(assert (=> b!5596345 (= res!2373937 (isEmpty!34748 (tail!11028 Nil!62922)))))

(declare-fun b!5596346 () Bool)

(assert (=> b!5596346 (= e!3452279 e!3452283)))

(declare-fun c!981077 () Bool)

(assert (=> b!5596346 (= c!981077 (is-EmptyLang!15582 (regOne!31676 r!7292)))))

(declare-fun b!5596347 () Bool)

(declare-fun res!2373935 () Bool)

(assert (=> b!5596347 (=> res!2373935 e!3452282)))

(assert (=> b!5596347 (= res!2373935 (not (is-ElementMatch!15582 (regOne!31676 r!7292))))))

(assert (=> b!5596347 (= e!3452283 e!3452282)))

(declare-fun bm!419629 () Bool)

(assert (=> bm!419629 (= call!419634 (isEmpty!34748 Nil!62922))))

(declare-fun b!5596348 () Bool)

(declare-fun res!2373933 () Bool)

(assert (=> b!5596348 (=> res!2373933 e!3452280)))

(assert (=> b!5596348 (= res!2373933 (not (isEmpty!34748 (tail!11028 Nil!62922))))))

(declare-fun b!5596349 () Bool)

(declare-fun res!2373934 () Bool)

(assert (=> b!5596349 (=> (not res!2373934) (not e!3452285))))

(assert (=> b!5596349 (= res!2373934 (not call!419634))))

(assert (= (and d!1768885 c!981075) b!5596338))

(assert (= (and d!1768885 (not c!981075)) b!5596337))

(assert (= (and d!1768885 c!981076) b!5596339))

(assert (= (and d!1768885 (not c!981076)) b!5596346))

(assert (= (and b!5596346 c!981077) b!5596343))

(assert (= (and b!5596346 (not c!981077)) b!5596347))

(assert (= (and b!5596347 (not res!2373935)) b!5596342))

(assert (= (and b!5596342 res!2373939) b!5596349))

(assert (= (and b!5596349 res!2373934) b!5596345))

(assert (= (and b!5596345 res!2373937) b!5596336))

(assert (= (and b!5596342 (not res!2373932)) b!5596344))

(assert (= (and b!5596344 res!2373936) b!5596340))

(assert (= (and b!5596340 (not res!2373938)) b!5596348))

(assert (= (and b!5596348 (not res!2373933)) b!5596341))

(assert (= (or b!5596339 b!5596340 b!5596349) bm!419629))

(declare-fun m!6575476 () Bool)

(assert (=> b!5596337 m!6575476))

(assert (=> b!5596337 m!6575476))

(declare-fun m!6575478 () Bool)

(assert (=> b!5596337 m!6575478))

(declare-fun m!6575480 () Bool)

(assert (=> b!5596337 m!6575480))

(assert (=> b!5596337 m!6575478))

(assert (=> b!5596337 m!6575480))

(declare-fun m!6575482 () Bool)

(assert (=> b!5596337 m!6575482))

(assert (=> b!5596341 m!6575476))

(assert (=> b!5596336 m!6575476))

(assert (=> b!5596345 m!6575480))

(assert (=> b!5596345 m!6575480))

(declare-fun m!6575484 () Bool)

(assert (=> b!5596345 m!6575484))

(declare-fun m!6575486 () Bool)

(assert (=> d!1768885 m!6575486))

(assert (=> d!1768885 m!6575028))

(assert (=> b!5596338 m!6574504))

(assert (=> b!5596348 m!6575480))

(assert (=> b!5596348 m!6575480))

(assert (=> b!5596348 m!6575484))

(assert (=> bm!419629 m!6575486))

(assert (=> d!1768673 d!1768885))

(declare-fun d!1768887 () Bool)

(declare-fun res!2373942 () Bool)

(declare-fun e!3452289 () Bool)

(assert (=> d!1768887 (=> res!2373942 e!3452289)))

(assert (=> d!1768887 (= res!2373942 (is-ElementMatch!15582 (regOne!31676 r!7292)))))

(assert (=> d!1768887 (= (validRegex!7318 (regOne!31676 r!7292)) e!3452289)))

(declare-fun b!5596350 () Bool)

(declare-fun res!2373943 () Bool)

(declare-fun e!3452288 () Bool)

(assert (=> b!5596350 (=> (not res!2373943) (not e!3452288))))

(declare-fun call!419636 () Bool)

(assert (=> b!5596350 (= res!2373943 call!419636)))

(declare-fun e!3452287 () Bool)

(assert (=> b!5596350 (= e!3452287 e!3452288)))

(declare-fun b!5596351 () Bool)

(declare-fun e!3452290 () Bool)

(declare-fun e!3452291 () Bool)

(assert (=> b!5596351 (= e!3452290 e!3452291)))

(declare-fun res!2373944 () Bool)

(assert (=> b!5596351 (=> (not res!2373944) (not e!3452291))))

(assert (=> b!5596351 (= res!2373944 call!419636)))

(declare-fun b!5596352 () Bool)

(declare-fun e!3452286 () Bool)

(declare-fun e!3452292 () Bool)

(assert (=> b!5596352 (= e!3452286 e!3452292)))

(declare-fun res!2373941 () Bool)

(assert (=> b!5596352 (= res!2373941 (not (nullable!5614 (reg!15911 (regOne!31676 r!7292)))))))

(assert (=> b!5596352 (=> (not res!2373941) (not e!3452292))))

(declare-fun bm!419630 () Bool)

(declare-fun call!419637 () Bool)

(assert (=> bm!419630 (= call!419636 call!419637)))

(declare-fun b!5596353 () Bool)

(declare-fun res!2373940 () Bool)

(assert (=> b!5596353 (=> res!2373940 e!3452290)))

(assert (=> b!5596353 (= res!2373940 (not (is-Concat!24427 (regOne!31676 r!7292))))))

(assert (=> b!5596353 (= e!3452287 e!3452290)))

(declare-fun b!5596354 () Bool)

(declare-fun call!419635 () Bool)

(assert (=> b!5596354 (= e!3452291 call!419635)))

(declare-fun bm!419631 () Bool)

(declare-fun c!981079 () Bool)

(assert (=> bm!419631 (= call!419635 (validRegex!7318 (ite c!981079 (regTwo!31677 (regOne!31676 r!7292)) (regTwo!31676 (regOne!31676 r!7292)))))))

(declare-fun b!5596355 () Bool)

(assert (=> b!5596355 (= e!3452289 e!3452286)))

(declare-fun c!981078 () Bool)

(assert (=> b!5596355 (= c!981078 (is-Star!15582 (regOne!31676 r!7292)))))

(declare-fun b!5596356 () Bool)

(assert (=> b!5596356 (= e!3452292 call!419637)))

(declare-fun b!5596357 () Bool)

(assert (=> b!5596357 (= e!3452288 call!419635)))

(declare-fun b!5596358 () Bool)

(assert (=> b!5596358 (= e!3452286 e!3452287)))

(assert (=> b!5596358 (= c!981079 (is-Union!15582 (regOne!31676 r!7292)))))

(declare-fun bm!419632 () Bool)

(assert (=> bm!419632 (= call!419637 (validRegex!7318 (ite c!981078 (reg!15911 (regOne!31676 r!7292)) (ite c!981079 (regOne!31677 (regOne!31676 r!7292)) (regOne!31676 (regOne!31676 r!7292))))))))

(assert (= (and d!1768887 (not res!2373942)) b!5596355))

(assert (= (and b!5596355 c!981078) b!5596352))

(assert (= (and b!5596355 (not c!981078)) b!5596358))

(assert (= (and b!5596352 res!2373941) b!5596356))

(assert (= (and b!5596358 c!981079) b!5596350))

(assert (= (and b!5596358 (not c!981079)) b!5596353))

(assert (= (and b!5596350 res!2373943) b!5596357))

(assert (= (and b!5596353 (not res!2373940)) b!5596351))

(assert (= (and b!5596351 res!2373944) b!5596354))

(assert (= (or b!5596357 b!5596354) bm!419631))

(assert (= (or b!5596350 b!5596351) bm!419630))

(assert (= (or b!5596356 bm!419630) bm!419632))

(declare-fun m!6575488 () Bool)

(assert (=> b!5596352 m!6575488))

(declare-fun m!6575490 () Bool)

(assert (=> bm!419631 m!6575490))

(declare-fun m!6575492 () Bool)

(assert (=> bm!419632 m!6575492))

(assert (=> d!1768673 d!1768887))

(declare-fun d!1768889 () Bool)

(assert (=> d!1768889 (= (nullable!5614 (reg!15911 r!7292)) (nullableFct!1723 (reg!15911 r!7292)))))

(declare-fun bs!1293820 () Bool)

(assert (= bs!1293820 d!1768889))

(declare-fun m!6575494 () Bool)

(assert (=> bs!1293820 m!6575494))

(assert (=> b!5595774 d!1768889))

(assert (=> b!5595781 d!1768619))

(declare-fun bs!1293821 () Bool)

(declare-fun b!5596368 () Bool)

(assert (= bs!1293821 (and b!5596368 b!5595135)))

(declare-fun lambda!300473 () Int)

(assert (=> bs!1293821 (not (= lambda!300473 lambda!300387))))

(declare-fun bs!1293822 () Bool)

(assert (= bs!1293822 (and b!5596368 d!1768687)))

(assert (=> bs!1293822 (not (= lambda!300473 lambda!300435))))

(assert (=> bs!1293821 (not (= lambda!300473 lambda!300388))))

(declare-fun bs!1293823 () Bool)

(assert (= bs!1293823 (and b!5596368 d!1768691)))

(assert (=> bs!1293823 (not (= lambda!300473 lambda!300440))))

(declare-fun bs!1293824 () Bool)

(assert (= bs!1293824 (and b!5596368 b!5595362)))

(assert (=> bs!1293824 (not (= lambda!300473 lambda!300416))))

(declare-fun bs!1293825 () Bool)

(assert (= bs!1293825 (and b!5596368 b!5595369)))

(assert (=> bs!1293825 (= (and (= (reg!15911 (regOne!31677 r!7292)) (reg!15911 r!7292)) (= (regOne!31677 r!7292) r!7292)) (= lambda!300473 lambda!300415))))

(assert (=> bs!1293823 (not (= lambda!300473 lambda!300441))))

(assert (=> b!5596368 true))

(assert (=> b!5596368 true))

(declare-fun bs!1293826 () Bool)

(declare-fun b!5596361 () Bool)

(assert (= bs!1293826 (and b!5596361 b!5596368)))

(declare-fun lambda!300474 () Int)

(assert (=> bs!1293826 (not (= lambda!300474 lambda!300473))))

(declare-fun bs!1293827 () Bool)

(assert (= bs!1293827 (and b!5596361 b!5595135)))

(assert (=> bs!1293827 (not (= lambda!300474 lambda!300387))))

(declare-fun bs!1293828 () Bool)

(assert (= bs!1293828 (and b!5596361 d!1768687)))

(assert (=> bs!1293828 (not (= lambda!300474 lambda!300435))))

(assert (=> bs!1293827 (= (and (= (regOne!31676 (regOne!31677 r!7292)) (regOne!31676 r!7292)) (= (regTwo!31676 (regOne!31677 r!7292)) (regTwo!31676 r!7292))) (= lambda!300474 lambda!300388))))

(declare-fun bs!1293829 () Bool)

(assert (= bs!1293829 (and b!5596361 d!1768691)))

(assert (=> bs!1293829 (not (= lambda!300474 lambda!300440))))

(declare-fun bs!1293830 () Bool)

(assert (= bs!1293830 (and b!5596361 b!5595362)))

(assert (=> bs!1293830 (= (and (= (regOne!31676 (regOne!31677 r!7292)) (regOne!31676 r!7292)) (= (regTwo!31676 (regOne!31677 r!7292)) (regTwo!31676 r!7292))) (= lambda!300474 lambda!300416))))

(declare-fun bs!1293831 () Bool)

(assert (= bs!1293831 (and b!5596361 b!5595369)))

(assert (=> bs!1293831 (not (= lambda!300474 lambda!300415))))

(assert (=> bs!1293829 (= (and (= (regOne!31676 (regOne!31677 r!7292)) (regOne!31676 r!7292)) (= (regTwo!31676 (regOne!31677 r!7292)) (regTwo!31676 r!7292))) (= lambda!300474 lambda!300441))))

(assert (=> b!5596361 true))

(assert (=> b!5596361 true))

(declare-fun b!5596359 () Bool)

(declare-fun res!2373947 () Bool)

(declare-fun e!3452298 () Bool)

(assert (=> b!5596359 (=> res!2373947 e!3452298)))

(declare-fun call!419639 () Bool)

(assert (=> b!5596359 (= res!2373947 call!419639)))

(declare-fun e!3452299 () Bool)

(assert (=> b!5596359 (= e!3452299 e!3452298)))

(declare-fun call!419638 () Bool)

(declare-fun c!981081 () Bool)

(declare-fun bm!419633 () Bool)

(assert (=> bm!419633 (= call!419638 (Exists!2682 (ite c!981081 lambda!300473 lambda!300474)))))

(declare-fun d!1768891 () Bool)

(declare-fun c!981083 () Bool)

(assert (=> d!1768891 (= c!981083 (is-EmptyExpr!15582 (regOne!31677 r!7292)))))

(declare-fun e!3452294 () Bool)

(assert (=> d!1768891 (= (matchRSpec!2685 (regOne!31677 r!7292) s!2326) e!3452294)))

(declare-fun b!5596360 () Bool)

(declare-fun e!3452295 () Bool)

(assert (=> b!5596360 (= e!3452294 e!3452295)))

(declare-fun res!2373945 () Bool)

(assert (=> b!5596360 (= res!2373945 (not (is-EmptyLang!15582 (regOne!31677 r!7292))))))

(assert (=> b!5596360 (=> (not res!2373945) (not e!3452295))))

(assert (=> b!5596361 (= e!3452299 call!419638)))

(declare-fun b!5596362 () Bool)

(declare-fun c!981080 () Bool)

(assert (=> b!5596362 (= c!981080 (is-Union!15582 (regOne!31677 r!7292)))))

(declare-fun e!3452297 () Bool)

(declare-fun e!3452293 () Bool)

(assert (=> b!5596362 (= e!3452297 e!3452293)))

(declare-fun b!5596363 () Bool)

(assert (=> b!5596363 (= e!3452297 (= s!2326 (Cons!62922 (c!980755 (regOne!31677 r!7292)) Nil!62922)))))

(declare-fun b!5596364 () Bool)

(assert (=> b!5596364 (= e!3452293 e!3452299)))

(assert (=> b!5596364 (= c!981081 (is-Star!15582 (regOne!31677 r!7292)))))

(declare-fun b!5596365 () Bool)

(declare-fun c!981082 () Bool)

(assert (=> b!5596365 (= c!981082 (is-ElementMatch!15582 (regOne!31677 r!7292)))))

(assert (=> b!5596365 (= e!3452295 e!3452297)))

(declare-fun b!5596366 () Bool)

(declare-fun e!3452296 () Bool)

(assert (=> b!5596366 (= e!3452296 (matchRSpec!2685 (regTwo!31677 (regOne!31677 r!7292)) s!2326))))

(declare-fun b!5596367 () Bool)

(assert (=> b!5596367 (= e!3452293 e!3452296)))

(declare-fun res!2373946 () Bool)

(assert (=> b!5596367 (= res!2373946 (matchRSpec!2685 (regOne!31677 (regOne!31677 r!7292)) s!2326))))

(assert (=> b!5596367 (=> res!2373946 e!3452296)))

(assert (=> b!5596368 (= e!3452298 call!419638)))

(declare-fun bm!419634 () Bool)

(assert (=> bm!419634 (= call!419639 (isEmpty!34748 s!2326))))

(declare-fun b!5596369 () Bool)

(assert (=> b!5596369 (= e!3452294 call!419639)))

(assert (= (and d!1768891 c!981083) b!5596369))

(assert (= (and d!1768891 (not c!981083)) b!5596360))

(assert (= (and b!5596360 res!2373945) b!5596365))

(assert (= (and b!5596365 c!981082) b!5596363))

(assert (= (and b!5596365 (not c!981082)) b!5596362))

(assert (= (and b!5596362 c!981080) b!5596367))

(assert (= (and b!5596362 (not c!981080)) b!5596364))

(assert (= (and b!5596367 (not res!2373946)) b!5596366))

(assert (= (and b!5596364 c!981081) b!5596359))

(assert (= (and b!5596364 (not c!981081)) b!5596361))

(assert (= (and b!5596359 (not res!2373947)) b!5596368))

(assert (= (or b!5596368 b!5596361) bm!419633))

(assert (= (or b!5596369 b!5596359) bm!419634))

(declare-fun m!6575496 () Bool)

(assert (=> bm!419633 m!6575496))

(declare-fun m!6575498 () Bool)

(assert (=> b!5596366 m!6575498))

(declare-fun m!6575500 () Bool)

(assert (=> b!5596367 m!6575500))

(assert (=> bm!419634 m!6574684))

(assert (=> b!5595368 d!1768891))

(declare-fun b!5596370 () Bool)

(declare-fun e!3452303 () Bool)

(declare-fun call!419640 () Bool)

(assert (=> b!5596370 (= e!3452303 call!419640)))

(declare-fun bm!419635 () Bool)

(declare-fun call!419641 () Bool)

(declare-fun c!981084 () Bool)

(assert (=> bm!419635 (= call!419641 (nullable!5614 (ite c!981084 (regOne!31677 (regOne!31676 r!7292)) (regOne!31676 (regOne!31676 r!7292)))))))

(declare-fun b!5596371 () Bool)

(declare-fun e!3452305 () Bool)

(declare-fun e!3452300 () Bool)

(assert (=> b!5596371 (= e!3452305 e!3452300)))

(assert (=> b!5596371 (= c!981084 (is-Union!15582 (regOne!31676 r!7292)))))

(declare-fun b!5596372 () Bool)

(declare-fun e!3452301 () Bool)

(assert (=> b!5596372 (= e!3452300 e!3452301)))

(declare-fun res!2373952 () Bool)

(assert (=> b!5596372 (= res!2373952 call!419641)))

(assert (=> b!5596372 (=> (not res!2373952) (not e!3452301))))

(declare-fun b!5596373 () Bool)

(declare-fun e!3452304 () Bool)

(assert (=> b!5596373 (= e!3452304 e!3452305)))

(declare-fun res!2373948 () Bool)

(assert (=> b!5596373 (=> res!2373948 e!3452305)))

(assert (=> b!5596373 (= res!2373948 (is-Star!15582 (regOne!31676 r!7292)))))

(declare-fun b!5596374 () Bool)

(assert (=> b!5596374 (= e!3452301 call!419640)))

(declare-fun b!5596375 () Bool)

(assert (=> b!5596375 (= e!3452300 e!3452303)))

(declare-fun res!2373951 () Bool)

(assert (=> b!5596375 (= res!2373951 call!419641)))

(assert (=> b!5596375 (=> res!2373951 e!3452303)))

(declare-fun bm!419636 () Bool)

(assert (=> bm!419636 (= call!419640 (nullable!5614 (ite c!981084 (regTwo!31677 (regOne!31676 r!7292)) (regTwo!31676 (regOne!31676 r!7292)))))))

(declare-fun d!1768893 () Bool)

(declare-fun res!2373950 () Bool)

(declare-fun e!3452302 () Bool)

(assert (=> d!1768893 (=> res!2373950 e!3452302)))

(assert (=> d!1768893 (= res!2373950 (is-EmptyExpr!15582 (regOne!31676 r!7292)))))

(assert (=> d!1768893 (= (nullableFct!1723 (regOne!31676 r!7292)) e!3452302)))

(declare-fun b!5596376 () Bool)

(assert (=> b!5596376 (= e!3452302 e!3452304)))

(declare-fun res!2373949 () Bool)

(assert (=> b!5596376 (=> (not res!2373949) (not e!3452304))))

(assert (=> b!5596376 (= res!2373949 (and (not (is-EmptyLang!15582 (regOne!31676 r!7292))) (not (is-ElementMatch!15582 (regOne!31676 r!7292)))))))

(assert (= (and d!1768893 (not res!2373950)) b!5596376))

(assert (= (and b!5596376 res!2373949) b!5596373))

(assert (= (and b!5596373 (not res!2373948)) b!5596371))

(assert (= (and b!5596371 c!981084) b!5596375))

(assert (= (and b!5596371 (not c!981084)) b!5596372))

(assert (= (and b!5596375 (not res!2373951)) b!5596370))

(assert (= (and b!5596372 res!2373952) b!5596374))

(assert (= (or b!5596370 b!5596374) bm!419636))

(assert (= (or b!5596375 b!5596372) bm!419635))

(declare-fun m!6575502 () Bool)

(assert (=> bm!419635 m!6575502))

(declare-fun m!6575504 () Bool)

(assert (=> bm!419636 m!6575504))

(assert (=> d!1768607 d!1768893))

(declare-fun bs!1293832 () Bool)

(declare-fun d!1768895 () Bool)

(assert (= bs!1293832 (and d!1768895 d!1768779)))

(declare-fun lambda!300475 () Int)

(assert (=> bs!1293832 (= lambda!300475 lambda!300463)))

(declare-fun bs!1293833 () Bool)

(assert (= bs!1293833 (and d!1768895 d!1768797)))

(assert (=> bs!1293833 (= lambda!300475 lambda!300464)))

(declare-fun bs!1293834 () Bool)

(assert (= bs!1293834 (and d!1768895 d!1768815)))

(assert (=> bs!1293834 (= lambda!300475 lambda!300466)))

(assert (=> d!1768895 (= (nullableZipper!1577 lt!2256108) (exists!2171 lt!2256108 lambda!300475))))

(declare-fun bs!1293835 () Bool)

(assert (= bs!1293835 d!1768895))

(declare-fun m!6575506 () Bool)

(assert (=> bs!1293835 m!6575506))

(assert (=> b!5595592 d!1768895))

(declare-fun d!1768897 () Bool)

(assert (=> d!1768897 (= (nullable!5614 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))) (nullableFct!1723 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))))))

(declare-fun bs!1293836 () Bool)

(assert (= bs!1293836 d!1768897))

(declare-fun m!6575508 () Bool)

(assert (=> bs!1293836 m!6575508))

(assert (=> b!5595456 d!1768897))

(declare-fun b!5596379 () Bool)

(declare-fun res!2373953 () Bool)

(declare-fun e!3452306 () Bool)

(assert (=> b!5596379 (=> (not res!2373953) (not e!3452306))))

(declare-fun lt!2256323 () List!63046)

(assert (=> b!5596379 (= res!2373953 (= (size!39968 lt!2256323) (+ (size!39968 (_1!35982 (get!21671 lt!2256265))) (size!39968 (_2!35982 (get!21671 lt!2256265))))))))

(declare-fun b!5596377 () Bool)

(declare-fun e!3452307 () List!63046)

(assert (=> b!5596377 (= e!3452307 (_2!35982 (get!21671 lt!2256265)))))

(declare-fun d!1768899 () Bool)

(assert (=> d!1768899 e!3452306))

(declare-fun res!2373954 () Bool)

(assert (=> d!1768899 (=> (not res!2373954) (not e!3452306))))

(assert (=> d!1768899 (= res!2373954 (= (content!11361 lt!2256323) (set.union (content!11361 (_1!35982 (get!21671 lt!2256265))) (content!11361 (_2!35982 (get!21671 lt!2256265))))))))

(assert (=> d!1768899 (= lt!2256323 e!3452307)))

(declare-fun c!981085 () Bool)

(assert (=> d!1768899 (= c!981085 (is-Nil!62922 (_1!35982 (get!21671 lt!2256265))))))

(assert (=> d!1768899 (= (++!13812 (_1!35982 (get!21671 lt!2256265)) (_2!35982 (get!21671 lt!2256265))) lt!2256323)))

(declare-fun b!5596378 () Bool)

(assert (=> b!5596378 (= e!3452307 (Cons!62922 (h!69370 (_1!35982 (get!21671 lt!2256265))) (++!13812 (t!376328 (_1!35982 (get!21671 lt!2256265))) (_2!35982 (get!21671 lt!2256265)))))))

(declare-fun b!5596380 () Bool)

(assert (=> b!5596380 (= e!3452306 (or (not (= (_2!35982 (get!21671 lt!2256265)) Nil!62922)) (= lt!2256323 (_1!35982 (get!21671 lt!2256265)))))))

(assert (= (and d!1768899 c!981085) b!5596377))

(assert (= (and d!1768899 (not c!981085)) b!5596378))

(assert (= (and d!1768899 res!2373954) b!5596379))

(assert (= (and b!5596379 res!2373953) b!5596380))

(declare-fun m!6575510 () Bool)

(assert (=> b!5596379 m!6575510))

(declare-fun m!6575512 () Bool)

(assert (=> b!5596379 m!6575512))

(declare-fun m!6575514 () Bool)

(assert (=> b!5596379 m!6575514))

(declare-fun m!6575516 () Bool)

(assert (=> d!1768899 m!6575516))

(declare-fun m!6575518 () Bool)

(assert (=> d!1768899 m!6575518))

(declare-fun m!6575520 () Bool)

(assert (=> d!1768899 m!6575520))

(declare-fun m!6575522 () Bool)

(assert (=> b!5596378 m!6575522))

(assert (=> b!5595702 d!1768899))

(assert (=> b!5595702 d!1768831))

(assert (=> d!1768687 d!1768673))

(declare-fun d!1768901 () Bool)

(assert (=> d!1768901 (= (Exists!2682 lambda!300435) (choose!42440 lambda!300435))))

(declare-fun bs!1293837 () Bool)

(assert (= bs!1293837 d!1768901))

(declare-fun m!6575524 () Bool)

(assert (=> bs!1293837 m!6575524))

(assert (=> d!1768687 d!1768901))

(assert (=> d!1768687 d!1768887))

(assert (=> d!1768687 d!1768699))

(declare-fun bs!1293838 () Bool)

(declare-fun d!1768903 () Bool)

(assert (= bs!1293838 (and d!1768903 b!5596368)))

(declare-fun lambda!300478 () Int)

(assert (=> bs!1293838 (not (= lambda!300478 lambda!300473))))

(declare-fun bs!1293839 () Bool)

(assert (= bs!1293839 (and d!1768903 b!5595135)))

(assert (=> bs!1293839 (= lambda!300478 lambda!300387)))

(declare-fun bs!1293840 () Bool)

(assert (= bs!1293840 (and d!1768903 d!1768687)))

(assert (=> bs!1293840 (= lambda!300478 lambda!300435)))

(assert (=> bs!1293839 (not (= lambda!300478 lambda!300388))))

(declare-fun bs!1293841 () Bool)

(assert (= bs!1293841 (and d!1768903 d!1768691)))

(assert (=> bs!1293841 (= lambda!300478 lambda!300440)))

(declare-fun bs!1293842 () Bool)

(assert (= bs!1293842 (and d!1768903 b!5595362)))

(assert (=> bs!1293842 (not (= lambda!300478 lambda!300416))))

(declare-fun bs!1293843 () Bool)

(assert (= bs!1293843 (and d!1768903 b!5595369)))

(assert (=> bs!1293843 (not (= lambda!300478 lambda!300415))))

(declare-fun bs!1293844 () Bool)

(assert (= bs!1293844 (and d!1768903 b!5596361)))

(assert (=> bs!1293844 (not (= lambda!300478 lambda!300474))))

(assert (=> bs!1293841 (not (= lambda!300478 lambda!300441))))

(assert (=> d!1768903 true))

(assert (=> d!1768903 true))

(assert (=> d!1768903 true))

(assert (=> d!1768903 (= (isDefined!12294 (findConcatSeparation!2005 (regOne!31676 r!7292) (regTwo!31676 r!7292) Nil!62922 s!2326 s!2326)) (Exists!2682 lambda!300478))))

(assert (=> d!1768903 true))

(declare-fun _$89!1710 () Unit!155748)

(assert (=> d!1768903 (= (choose!42441 (regOne!31676 r!7292) (regTwo!31676 r!7292) s!2326) _$89!1710)))

(declare-fun bs!1293845 () Bool)

(assert (= bs!1293845 d!1768903))

(assert (=> bs!1293845 m!6574456))

(assert (=> bs!1293845 m!6574456))

(assert (=> bs!1293845 m!6574458))

(declare-fun m!6575526 () Bool)

(assert (=> bs!1293845 m!6575526))

(assert (=> d!1768687 d!1768903))

(declare-fun d!1768905 () Bool)

(declare-fun res!2373959 () Bool)

(declare-fun e!3452310 () Bool)

(assert (=> d!1768905 (=> res!2373959 e!3452310)))

(assert (=> d!1768905 (= res!2373959 (is-Nil!62921 (exprs!5466 (h!69371 zl!343))))))

(assert (=> d!1768905 (= (forall!14749 (exprs!5466 (h!69371 zl!343)) lambda!300426) e!3452310)))

(declare-fun b!5596385 () Bool)

(declare-fun e!3452311 () Bool)

(assert (=> b!5596385 (= e!3452310 e!3452311)))

(declare-fun res!2373960 () Bool)

(assert (=> b!5596385 (=> (not res!2373960) (not e!3452311))))

(assert (=> b!5596385 (= res!2373960 (dynLambda!24614 lambda!300426 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596386 () Bool)

(assert (=> b!5596386 (= e!3452311 (forall!14749 (t!376327 (exprs!5466 (h!69371 zl!343))) lambda!300426))))

(assert (= (and d!1768905 (not res!2373959)) b!5596385))

(assert (= (and b!5596385 res!2373960) b!5596386))

(declare-fun b_lambda!212059 () Bool)

(assert (=> (not b_lambda!212059) (not b!5596385)))

(declare-fun m!6575528 () Bool)

(assert (=> b!5596385 m!6575528))

(declare-fun m!6575530 () Bool)

(assert (=> b!5596386 m!6575530))

(assert (=> d!1768639 d!1768905))

(declare-fun b!5596387 () Bool)

(declare-fun e!3452313 () (Set Context!9932))

(declare-fun call!419642 () (Set Context!9932))

(assert (=> b!5596387 (= e!3452313 (set.union call!419642 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))))) (h!69370 s!2326))))))

(declare-fun b!5596388 () Bool)

(declare-fun e!3452314 () Bool)

(assert (=> b!5596388 (= e!3452314 (nullable!5614 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))))))))

(declare-fun d!1768907 () Bool)

(declare-fun c!981087 () Bool)

(assert (=> d!1768907 (= c!981087 e!3452314)))

(declare-fun res!2373961 () Bool)

(assert (=> d!1768907 (=> (not res!2373961) (not e!3452314))))

(assert (=> d!1768907 (= res!2373961 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))))))

(assert (=> d!1768907 (= (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))) (h!69370 s!2326)) e!3452313)))

(declare-fun bm!419637 () Bool)

(assert (=> bm!419637 (= call!419642 (derivationStepZipperDown!924 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))) (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))))))) (h!69370 s!2326)))))

(declare-fun b!5596389 () Bool)

(declare-fun e!3452312 () (Set Context!9932))

(assert (=> b!5596389 (= e!3452312 (as set.empty (Set Context!9932)))))

(declare-fun b!5596390 () Bool)

(assert (=> b!5596390 (= e!3452312 call!419642)))

(declare-fun b!5596391 () Bool)

(assert (=> b!5596391 (= e!3452313 e!3452312)))

(declare-fun c!981086 () Bool)

(assert (=> b!5596391 (= c!981086 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (Cons!62921 (h!69369 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343)))))))))))))

(assert (= (and d!1768907 res!2373961) b!5596388))

(assert (= (and d!1768907 c!981087) b!5596387))

(assert (= (and d!1768907 (not c!981087)) b!5596391))

(assert (= (and b!5596391 c!981086) b!5596390))

(assert (= (and b!5596391 (not c!981086)) b!5596389))

(assert (= (or b!5596387 b!5596390) bm!419637))

(declare-fun m!6575532 () Bool)

(assert (=> b!5596387 m!6575532))

(declare-fun m!6575534 () Bool)

(assert (=> b!5596388 m!6575534))

(declare-fun m!6575536 () Bool)

(assert (=> bm!419637 m!6575536))

(assert (=> b!5595602 d!1768907))

(declare-fun d!1768909 () Bool)

(declare-fun e!3452315 () Bool)

(assert (=> d!1768909 e!3452315))

(declare-fun c!981089 () Bool)

(assert (=> d!1768909 (= c!981089 (is-EmptyExpr!15582 (regTwo!31676 r!7292)))))

(declare-fun lt!2256324 () Bool)

(declare-fun e!3452317 () Bool)

(assert (=> d!1768909 (= lt!2256324 e!3452317)))

(declare-fun c!981088 () Bool)

(assert (=> d!1768909 (= c!981088 (isEmpty!34748 (_2!35982 (get!21671 lt!2256265))))))

(assert (=> d!1768909 (validRegex!7318 (regTwo!31676 r!7292))))

(assert (=> d!1768909 (= (matchR!7767 (regTwo!31676 r!7292) (_2!35982 (get!21671 lt!2256265))) lt!2256324)))

(declare-fun b!5596392 () Bool)

(declare-fun e!3452321 () Bool)

(assert (=> b!5596392 (= e!3452321 (= (head!11933 (_2!35982 (get!21671 lt!2256265))) (c!980755 (regTwo!31676 r!7292))))))

(declare-fun b!5596393 () Bool)

(assert (=> b!5596393 (= e!3452317 (matchR!7767 (derivativeStep!4430 (regTwo!31676 r!7292) (head!11933 (_2!35982 (get!21671 lt!2256265)))) (tail!11028 (_2!35982 (get!21671 lt!2256265)))))))

(declare-fun b!5596394 () Bool)

(assert (=> b!5596394 (= e!3452317 (nullable!5614 (regTwo!31676 r!7292)))))

(declare-fun b!5596395 () Bool)

(declare-fun call!419643 () Bool)

(assert (=> b!5596395 (= e!3452315 (= lt!2256324 call!419643))))

(declare-fun b!5596396 () Bool)

(declare-fun e!3452320 () Bool)

(declare-fun e!3452316 () Bool)

(assert (=> b!5596396 (= e!3452320 e!3452316)))

(declare-fun res!2373968 () Bool)

(assert (=> b!5596396 (=> res!2373968 e!3452316)))

(assert (=> b!5596396 (= res!2373968 call!419643)))

(declare-fun b!5596397 () Bool)

(assert (=> b!5596397 (= e!3452316 (not (= (head!11933 (_2!35982 (get!21671 lt!2256265))) (c!980755 (regTwo!31676 r!7292)))))))

(declare-fun b!5596398 () Bool)

(declare-fun res!2373962 () Bool)

(declare-fun e!3452318 () Bool)

(assert (=> b!5596398 (=> res!2373962 e!3452318)))

(assert (=> b!5596398 (= res!2373962 e!3452321)))

(declare-fun res!2373969 () Bool)

(assert (=> b!5596398 (=> (not res!2373969) (not e!3452321))))

(assert (=> b!5596398 (= res!2373969 lt!2256324)))

(declare-fun b!5596399 () Bool)

(declare-fun e!3452319 () Bool)

(assert (=> b!5596399 (= e!3452319 (not lt!2256324))))

(declare-fun b!5596400 () Bool)

(assert (=> b!5596400 (= e!3452318 e!3452320)))

(declare-fun res!2373966 () Bool)

(assert (=> b!5596400 (=> (not res!2373966) (not e!3452320))))

(assert (=> b!5596400 (= res!2373966 (not lt!2256324))))

(declare-fun b!5596401 () Bool)

(declare-fun res!2373967 () Bool)

(assert (=> b!5596401 (=> (not res!2373967) (not e!3452321))))

(assert (=> b!5596401 (= res!2373967 (isEmpty!34748 (tail!11028 (_2!35982 (get!21671 lt!2256265)))))))

(declare-fun b!5596402 () Bool)

(assert (=> b!5596402 (= e!3452315 e!3452319)))

(declare-fun c!981090 () Bool)

(assert (=> b!5596402 (= c!981090 (is-EmptyLang!15582 (regTwo!31676 r!7292)))))

(declare-fun b!5596403 () Bool)

(declare-fun res!2373965 () Bool)

(assert (=> b!5596403 (=> res!2373965 e!3452318)))

(assert (=> b!5596403 (= res!2373965 (not (is-ElementMatch!15582 (regTwo!31676 r!7292))))))

(assert (=> b!5596403 (= e!3452319 e!3452318)))

(declare-fun bm!419638 () Bool)

(assert (=> bm!419638 (= call!419643 (isEmpty!34748 (_2!35982 (get!21671 lt!2256265))))))

(declare-fun b!5596404 () Bool)

(declare-fun res!2373963 () Bool)

(assert (=> b!5596404 (=> res!2373963 e!3452316)))

(assert (=> b!5596404 (= res!2373963 (not (isEmpty!34748 (tail!11028 (_2!35982 (get!21671 lt!2256265))))))))

(declare-fun b!5596405 () Bool)

(declare-fun res!2373964 () Bool)

(assert (=> b!5596405 (=> (not res!2373964) (not e!3452321))))

(assert (=> b!5596405 (= res!2373964 (not call!419643))))

(assert (= (and d!1768909 c!981088) b!5596394))

(assert (= (and d!1768909 (not c!981088)) b!5596393))

(assert (= (and d!1768909 c!981089) b!5596395))

(assert (= (and d!1768909 (not c!981089)) b!5596402))

(assert (= (and b!5596402 c!981090) b!5596399))

(assert (= (and b!5596402 (not c!981090)) b!5596403))

(assert (= (and b!5596403 (not res!2373965)) b!5596398))

(assert (= (and b!5596398 res!2373969) b!5596405))

(assert (= (and b!5596405 res!2373964) b!5596401))

(assert (= (and b!5596401 res!2373967) b!5596392))

(assert (= (and b!5596398 (not res!2373962)) b!5596400))

(assert (= (and b!5596400 res!2373966) b!5596396))

(assert (= (and b!5596396 (not res!2373968)) b!5596404))

(assert (= (and b!5596404 (not res!2373963)) b!5596397))

(assert (= (or b!5596395 b!5596396 b!5596405) bm!419638))

(declare-fun m!6575538 () Bool)

(assert (=> b!5596393 m!6575538))

(assert (=> b!5596393 m!6575538))

(declare-fun m!6575540 () Bool)

(assert (=> b!5596393 m!6575540))

(declare-fun m!6575542 () Bool)

(assert (=> b!5596393 m!6575542))

(assert (=> b!5596393 m!6575540))

(assert (=> b!5596393 m!6575542))

(declare-fun m!6575544 () Bool)

(assert (=> b!5596393 m!6575544))

(assert (=> b!5596397 m!6575538))

(assert (=> b!5596392 m!6575538))

(assert (=> b!5596401 m!6575542))

(assert (=> b!5596401 m!6575542))

(declare-fun m!6575546 () Bool)

(assert (=> b!5596401 m!6575546))

(declare-fun m!6575548 () Bool)

(assert (=> d!1768909 m!6575548))

(assert (=> d!1768909 m!6575460))

(assert (=> b!5596394 m!6575462))

(assert (=> b!5596404 m!6575542))

(assert (=> b!5596404 m!6575542))

(assert (=> b!5596404 m!6575546))

(assert (=> bm!419638 m!6575548))

(assert (=> b!5595706 d!1768909))

(assert (=> b!5595706 d!1768831))

(declare-fun d!1768911 () Bool)

(assert (=> d!1768911 (= (isUnion!577 lt!2256253) (is-Union!15582 lt!2256253))))

(assert (=> b!5595654 d!1768911))

(assert (=> d!1768635 d!1768835))

(assert (=> b!5595672 d!1768595))

(declare-fun bs!1293846 () Bool)

(declare-fun d!1768913 () Bool)

(assert (= bs!1293846 (and d!1768913 d!1768657)))

(declare-fun lambda!300479 () Int)

(assert (=> bs!1293846 (= lambda!300479 lambda!300429)))

(declare-fun bs!1293847 () Bool)

(assert (= bs!1293847 (and d!1768913 d!1768805)))

(assert (=> bs!1293847 (= lambda!300479 lambda!300465)))

(declare-fun bs!1293848 () Bool)

(assert (= bs!1293848 (and d!1768913 d!1768661)))

(assert (=> bs!1293848 (= lambda!300479 lambda!300432)))

(declare-fun bs!1293849 () Bool)

(assert (= bs!1293849 (and d!1768913 d!1768883)))

(assert (=> bs!1293849 (= lambda!300479 lambda!300472)))

(declare-fun bs!1293850 () Bool)

(assert (= bs!1293850 (and d!1768913 d!1768639)))

(assert (=> bs!1293850 (= lambda!300479 lambda!300426)))

(declare-fun bs!1293851 () Bool)

(assert (= bs!1293851 (and d!1768913 d!1768593)))

(assert (=> bs!1293851 (= lambda!300479 lambda!300422)))

(declare-fun bs!1293852 () Bool)

(assert (= bs!1293852 (and d!1768913 d!1768595)))

(assert (=> bs!1293852 (= lambda!300479 lambda!300425)))

(declare-fun lt!2256325 () List!63045)

(assert (=> d!1768913 (forall!14749 lt!2256325 lambda!300479)))

(declare-fun e!3452322 () List!63045)

(assert (=> d!1768913 (= lt!2256325 e!3452322)))

(declare-fun c!981091 () Bool)

(assert (=> d!1768913 (= c!981091 (is-Cons!62923 (t!376329 zl!343)))))

(assert (=> d!1768913 (= (unfocusZipperList!1010 (t!376329 zl!343)) lt!2256325)))

(declare-fun b!5596406 () Bool)

(assert (=> b!5596406 (= e!3452322 (Cons!62921 (generalisedConcat!1197 (exprs!5466 (h!69371 (t!376329 zl!343)))) (unfocusZipperList!1010 (t!376329 (t!376329 zl!343)))))))

(declare-fun b!5596407 () Bool)

(assert (=> b!5596407 (= e!3452322 Nil!62921)))

(assert (= (and d!1768913 c!981091) b!5596406))

(assert (= (and d!1768913 (not c!981091)) b!5596407))

(declare-fun m!6575550 () Bool)

(assert (=> d!1768913 m!6575550))

(declare-fun m!6575552 () Bool)

(assert (=> b!5596406 m!6575552))

(declare-fun m!6575554 () Bool)

(assert (=> b!5596406 m!6575554))

(assert (=> b!5595672 d!1768913))

(declare-fun d!1768915 () Bool)

(declare-fun res!2373974 () Bool)

(declare-fun e!3452327 () Bool)

(assert (=> d!1768915 (=> res!2373974 e!3452327)))

(assert (=> d!1768915 (= res!2373974 (is-Nil!62923 lt!2256234))))

(assert (=> d!1768915 (= (noDuplicate!1558 lt!2256234) e!3452327)))

(declare-fun b!5596412 () Bool)

(declare-fun e!3452328 () Bool)

(assert (=> b!5596412 (= e!3452327 e!3452328)))

(declare-fun res!2373975 () Bool)

(assert (=> b!5596412 (=> (not res!2373975) (not e!3452328))))

(declare-fun contains!19815 (List!63047 Context!9932) Bool)

(assert (=> b!5596412 (= res!2373975 (not (contains!19815 (t!376329 lt!2256234) (h!69371 lt!2256234))))))

(declare-fun b!5596413 () Bool)

(assert (=> b!5596413 (= e!3452328 (noDuplicate!1558 (t!376329 lt!2256234)))))

(assert (= (and d!1768915 (not res!2373974)) b!5596412))

(assert (= (and b!5596412 res!2373975) b!5596413))

(declare-fun m!6575556 () Bool)

(assert (=> b!5596412 m!6575556))

(declare-fun m!6575558 () Bool)

(assert (=> b!5596413 m!6575558))

(assert (=> d!1768587 d!1768915))

(declare-fun d!1768917 () Bool)

(declare-fun e!3452336 () Bool)

(assert (=> d!1768917 e!3452336))

(declare-fun res!2373981 () Bool)

(assert (=> d!1768917 (=> (not res!2373981) (not e!3452336))))

(declare-fun res!2373980 () List!63047)

(assert (=> d!1768917 (= res!2373981 (noDuplicate!1558 res!2373980))))

(declare-fun e!3452337 () Bool)

(assert (=> d!1768917 e!3452337))

(assert (=> d!1768917 (= (choose!42429 z!1189) res!2373980)))

(declare-fun b!5596421 () Bool)

(declare-fun e!3452335 () Bool)

(declare-fun tp!1547471 () Bool)

(assert (=> b!5596421 (= e!3452335 tp!1547471)))

(declare-fun b!5596420 () Bool)

(declare-fun tp!1547470 () Bool)

(assert (=> b!5596420 (= e!3452337 (and (inv!82203 (h!69371 res!2373980)) e!3452335 tp!1547470))))

(declare-fun b!5596422 () Bool)

(assert (=> b!5596422 (= e!3452336 (= (content!11359 res!2373980) z!1189))))

(assert (= b!5596420 b!5596421))

(assert (= (and d!1768917 (is-Cons!62923 res!2373980)) b!5596420))

(assert (= (and d!1768917 res!2373981) b!5596422))

(declare-fun m!6575560 () Bool)

(assert (=> d!1768917 m!6575560))

(declare-fun m!6575562 () Bool)

(assert (=> b!5596420 m!6575562))

(declare-fun m!6575564 () Bool)

(assert (=> b!5596422 m!6575564))

(assert (=> d!1768587 d!1768917))

(assert (=> d!1768599 d!1768835))

(assert (=> bs!1293759 d!1768613))

(declare-fun bm!419639 () Bool)

(declare-fun call!419645 () (Set Context!9932))

(declare-fun call!419648 () (Set Context!9932))

(assert (=> bm!419639 (= call!419645 call!419648)))

(declare-fun b!5596424 () Bool)

(declare-fun e!3452343 () (Set Context!9932))

(declare-fun call!419644 () (Set Context!9932))

(declare-fun call!419649 () (Set Context!9932))

(assert (=> b!5596424 (= e!3452343 (set.union call!419644 call!419649))))

(declare-fun b!5596425 () Bool)

(declare-fun e!3452338 () (Set Context!9932))

(declare-fun e!3452340 () (Set Context!9932))

(assert (=> b!5596425 (= e!3452338 e!3452340)))

(declare-fun c!981096 () Bool)

(assert (=> b!5596425 (= c!981096 (is-Concat!24427 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))))))

(declare-fun b!5596426 () Bool)

(assert (=> b!5596426 (= e!3452338 (set.union call!419644 call!419648))))

(declare-fun c!981092 () Bool)

(declare-fun bm!419640 () Bool)

(declare-fun call!419646 () List!63045)

(assert (=> bm!419640 (= call!419646 ($colon$colon!1645 (exprs!5466 (ite c!980835 lt!2256087 (Context!9933 call!419486))) (ite (or c!981092 c!981096) (regTwo!31676 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))) (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))))))))

(declare-fun e!3452341 () (Set Context!9932))

(declare-fun b!5596427 () Bool)

(assert (=> b!5596427 (= e!3452341 (set.insert (ite c!980835 lt!2256087 (Context!9933 call!419486)) (as set.empty (Set Context!9932))))))

(declare-fun b!5596428 () Bool)

(assert (=> b!5596428 (= e!3452341 e!3452343)))

(declare-fun c!981094 () Bool)

(assert (=> b!5596428 (= c!981094 (is-Union!15582 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))))))

(declare-fun b!5596429 () Bool)

(declare-fun e!3452339 () (Set Context!9932))

(assert (=> b!5596429 (= e!3452339 (as set.empty (Set Context!9932)))))

(declare-fun bm!419641 () Bool)

(declare-fun call!419647 () List!63045)

(assert (=> bm!419641 (= call!419647 call!419646)))

(declare-fun b!5596430 () Bool)

(assert (=> b!5596430 (= e!3452340 call!419645)))

(declare-fun d!1768919 () Bool)

(declare-fun c!981095 () Bool)

(assert (=> d!1768919 (= c!981095 (and (is-ElementMatch!15582 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))) (= (c!980755 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))) (h!69370 s!2326))))))

(assert (=> d!1768919 (= (derivationStepZipperDown!924 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))) (ite c!980835 lt!2256087 (Context!9933 call!419486)) (h!69370 s!2326)) e!3452341)))

(declare-fun b!5596423 () Bool)

(declare-fun e!3452342 () Bool)

(assert (=> b!5596423 (= e!3452342 (nullable!5614 (regOne!31676 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))))))))

(declare-fun b!5596431 () Bool)

(assert (=> b!5596431 (= e!3452339 call!419645)))

(declare-fun bm!419642 () Bool)

(assert (=> bm!419642 (= call!419649 (derivationStepZipperDown!924 (ite c!981094 (regTwo!31677 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))) (ite c!981092 (regTwo!31676 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))) (ite c!981096 (regOne!31676 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))) (reg!15911 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))))))) (ite (or c!981094 c!981092) (ite c!980835 lt!2256087 (Context!9933 call!419486)) (Context!9933 call!419647)) (h!69370 s!2326)))))

(declare-fun bm!419643 () Bool)

(assert (=> bm!419643 (= call!419648 call!419649)))

(declare-fun b!5596432 () Bool)

(declare-fun c!981093 () Bool)

(assert (=> b!5596432 (= c!981093 (is-Star!15582 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))))))

(assert (=> b!5596432 (= e!3452340 e!3452339)))

(declare-fun b!5596433 () Bool)

(assert (=> b!5596433 (= c!981092 e!3452342)))

(declare-fun res!2373982 () Bool)

(assert (=> b!5596433 (=> (not res!2373982) (not e!3452342))))

(assert (=> b!5596433 (= res!2373982 (is-Concat!24427 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))))))

(assert (=> b!5596433 (= e!3452343 e!3452338)))

(declare-fun bm!419644 () Bool)

(assert (=> bm!419644 (= call!419644 (derivationStepZipperDown!924 (ite c!981094 (regOne!31677 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292))))) (regOne!31676 (ite c!980835 (regOne!31677 (regOne!31677 (regOne!31676 r!7292))) (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))))) (ite c!981094 (ite c!980835 lt!2256087 (Context!9933 call!419486)) (Context!9933 call!419646)) (h!69370 s!2326)))))

(assert (= (and d!1768919 c!981095) b!5596427))

(assert (= (and d!1768919 (not c!981095)) b!5596428))

(assert (= (and b!5596428 c!981094) b!5596424))

(assert (= (and b!5596428 (not c!981094)) b!5596433))

(assert (= (and b!5596433 res!2373982) b!5596423))

(assert (= (and b!5596433 c!981092) b!5596426))

(assert (= (and b!5596433 (not c!981092)) b!5596425))

(assert (= (and b!5596425 c!981096) b!5596430))

(assert (= (and b!5596425 (not c!981096)) b!5596432))

(assert (= (and b!5596432 c!981093) b!5596431))

(assert (= (and b!5596432 (not c!981093)) b!5596429))

(assert (= (or b!5596430 b!5596431) bm!419641))

(assert (= (or b!5596430 b!5596431) bm!419639))

(assert (= (or b!5596426 bm!419641) bm!419640))

(assert (= (or b!5596426 bm!419639) bm!419643))

(assert (= (or b!5596424 bm!419643) bm!419642))

(assert (= (or b!5596424 b!5596426) bm!419644))

(declare-fun m!6575566 () Bool)

(assert (=> bm!419642 m!6575566))

(declare-fun m!6575568 () Bool)

(assert (=> bm!419644 m!6575568))

(declare-fun m!6575570 () Bool)

(assert (=> b!5596427 m!6575570))

(declare-fun m!6575572 () Bool)

(assert (=> bm!419640 m!6575572))

(declare-fun m!6575574 () Bool)

(assert (=> b!5596423 m!6575574))

(assert (=> bm!419484 d!1768919))

(declare-fun bs!1293853 () Bool)

(declare-fun d!1768921 () Bool)

(assert (= bs!1293853 (and d!1768921 d!1768779)))

(declare-fun lambda!300480 () Int)

(assert (=> bs!1293853 (= lambda!300480 lambda!300463)))

(declare-fun bs!1293854 () Bool)

(assert (= bs!1293854 (and d!1768921 d!1768797)))

(assert (=> bs!1293854 (= lambda!300480 lambda!300464)))

(declare-fun bs!1293855 () Bool)

(assert (= bs!1293855 (and d!1768921 d!1768815)))

(assert (=> bs!1293855 (= lambda!300480 lambda!300466)))

(declare-fun bs!1293856 () Bool)

(assert (= bs!1293856 (and d!1768921 d!1768895)))

(assert (=> bs!1293856 (= lambda!300480 lambda!300475)))

(assert (=> d!1768921 (= (nullableZipper!1577 z!1189) (exists!2171 z!1189 lambda!300480))))

(declare-fun bs!1293857 () Bool)

(assert (= bs!1293857 d!1768921))

(declare-fun m!6575576 () Bool)

(assert (=> bs!1293857 m!6575576))

(assert (=> b!5595484 d!1768921))

(declare-fun d!1768923 () Bool)

(declare-fun res!2373985 () Bool)

(declare-fun e!3452347 () Bool)

(assert (=> d!1768923 (=> res!2373985 e!3452347)))

(assert (=> d!1768923 (= res!2373985 (is-ElementMatch!15582 lt!2256287))))

(assert (=> d!1768923 (= (validRegex!7318 lt!2256287) e!3452347)))

(declare-fun b!5596434 () Bool)

(declare-fun res!2373986 () Bool)

(declare-fun e!3452346 () Bool)

(assert (=> b!5596434 (=> (not res!2373986) (not e!3452346))))

(declare-fun call!419651 () Bool)

(assert (=> b!5596434 (= res!2373986 call!419651)))

(declare-fun e!3452345 () Bool)

(assert (=> b!5596434 (= e!3452345 e!3452346)))

(declare-fun b!5596435 () Bool)

(declare-fun e!3452348 () Bool)

(declare-fun e!3452349 () Bool)

(assert (=> b!5596435 (= e!3452348 e!3452349)))

(declare-fun res!2373987 () Bool)

(assert (=> b!5596435 (=> (not res!2373987) (not e!3452349))))

(assert (=> b!5596435 (= res!2373987 call!419651)))

(declare-fun b!5596436 () Bool)

(declare-fun e!3452344 () Bool)

(declare-fun e!3452350 () Bool)

(assert (=> b!5596436 (= e!3452344 e!3452350)))

(declare-fun res!2373984 () Bool)

(assert (=> b!5596436 (= res!2373984 (not (nullable!5614 (reg!15911 lt!2256287))))))

(assert (=> b!5596436 (=> (not res!2373984) (not e!3452350))))

(declare-fun bm!419645 () Bool)

(declare-fun call!419652 () Bool)

(assert (=> bm!419645 (= call!419651 call!419652)))

(declare-fun b!5596437 () Bool)

(declare-fun res!2373983 () Bool)

(assert (=> b!5596437 (=> res!2373983 e!3452348)))

(assert (=> b!5596437 (= res!2373983 (not (is-Concat!24427 lt!2256287)))))

(assert (=> b!5596437 (= e!3452345 e!3452348)))

(declare-fun b!5596438 () Bool)

(declare-fun call!419650 () Bool)

(assert (=> b!5596438 (= e!3452349 call!419650)))

(declare-fun bm!419646 () Bool)

(declare-fun c!981098 () Bool)

(assert (=> bm!419646 (= call!419650 (validRegex!7318 (ite c!981098 (regTwo!31677 lt!2256287) (regTwo!31676 lt!2256287))))))

(declare-fun b!5596439 () Bool)

(assert (=> b!5596439 (= e!3452347 e!3452344)))

(declare-fun c!981097 () Bool)

(assert (=> b!5596439 (= c!981097 (is-Star!15582 lt!2256287))))

(declare-fun b!5596440 () Bool)

(assert (=> b!5596440 (= e!3452350 call!419652)))

(declare-fun b!5596441 () Bool)

(assert (=> b!5596441 (= e!3452346 call!419650)))

(declare-fun b!5596442 () Bool)

(assert (=> b!5596442 (= e!3452344 e!3452345)))

(assert (=> b!5596442 (= c!981098 (is-Union!15582 lt!2256287))))

(declare-fun bm!419647 () Bool)

(assert (=> bm!419647 (= call!419652 (validRegex!7318 (ite c!981097 (reg!15911 lt!2256287) (ite c!981098 (regOne!31677 lt!2256287) (regOne!31676 lt!2256287)))))))

(assert (= (and d!1768923 (not res!2373985)) b!5596439))

(assert (= (and b!5596439 c!981097) b!5596436))

(assert (= (and b!5596439 (not c!981097)) b!5596442))

(assert (= (and b!5596436 res!2373984) b!5596440))

(assert (= (and b!5596442 c!981098) b!5596434))

(assert (= (and b!5596442 (not c!981098)) b!5596437))

(assert (= (and b!5596434 res!2373986) b!5596441))

(assert (= (and b!5596437 (not res!2373983)) b!5596435))

(assert (= (and b!5596435 res!2373987) b!5596438))

(assert (= (or b!5596441 b!5596438) bm!419646))

(assert (= (or b!5596434 b!5596435) bm!419645))

(assert (= (or b!5596440 bm!419645) bm!419647))

(declare-fun m!6575578 () Bool)

(assert (=> b!5596436 m!6575578))

(declare-fun m!6575580 () Bool)

(assert (=> bm!419646 m!6575580))

(declare-fun m!6575582 () Bool)

(assert (=> bm!419647 m!6575582))

(assert (=> d!1768701 d!1768923))

(assert (=> d!1768701 d!1768657))

(assert (=> d!1768701 d!1768661))

(declare-fun d!1768925 () Bool)

(declare-fun c!981099 () Bool)

(assert (=> d!1768925 (= c!981099 (isEmpty!34748 (tail!11028 (t!376328 s!2326))))))

(declare-fun e!3452351 () Bool)

(assert (=> d!1768925 (= (matchZipper!1720 (derivationStepZipper!1681 lt!2256097 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))) e!3452351)))

(declare-fun b!5596443 () Bool)

(assert (=> b!5596443 (= e!3452351 (nullableZipper!1577 (derivationStepZipper!1681 lt!2256097 (head!11933 (t!376328 s!2326)))))))

(declare-fun b!5596444 () Bool)

(assert (=> b!5596444 (= e!3452351 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 lt!2256097 (head!11933 (t!376328 s!2326))) (head!11933 (tail!11028 (t!376328 s!2326)))) (tail!11028 (tail!11028 (t!376328 s!2326)))))))

(assert (= (and d!1768925 c!981099) b!5596443))

(assert (= (and d!1768925 (not c!981099)) b!5596444))

(assert (=> d!1768925 m!6574722))

(assert (=> d!1768925 m!6575358))

(assert (=> b!5596443 m!6574720))

(declare-fun m!6575584 () Bool)

(assert (=> b!5596443 m!6575584))

(assert (=> b!5596444 m!6574722))

(assert (=> b!5596444 m!6575362))

(assert (=> b!5596444 m!6574720))

(assert (=> b!5596444 m!6575362))

(declare-fun m!6575586 () Bool)

(assert (=> b!5596444 m!6575586))

(assert (=> b!5596444 m!6574722))

(assert (=> b!5596444 m!6575366))

(assert (=> b!5596444 m!6575586))

(assert (=> b!5596444 m!6575366))

(declare-fun m!6575588 () Bool)

(assert (=> b!5596444 m!6575588))

(assert (=> b!5595424 d!1768925))

(declare-fun bs!1293858 () Bool)

(declare-fun d!1768927 () Bool)

(assert (= bs!1293858 (and d!1768927 b!5595134)))

(declare-fun lambda!300481 () Int)

(assert (=> bs!1293858 (= (= (head!11933 (t!376328 s!2326)) (h!69370 s!2326)) (= lambda!300481 lambda!300389))))

(declare-fun bs!1293859 () Bool)

(assert (= bs!1293859 (and d!1768927 d!1768819)))

(assert (=> bs!1293859 (= lambda!300481 lambda!300469)))

(declare-fun bs!1293860 () Bool)

(assert (= bs!1293860 (and d!1768927 d!1768855)))

(assert (=> bs!1293860 (= (= (head!11933 (t!376328 s!2326)) (head!11933 s!2326)) (= lambda!300481 lambda!300470))))

(declare-fun bs!1293861 () Bool)

(assert (= bs!1293861 (and d!1768927 d!1768859)))

(assert (=> bs!1293861 (= lambda!300481 lambda!300471)))

(assert (=> d!1768927 true))

(assert (=> d!1768927 (= (derivationStepZipper!1681 lt!2256097 (head!11933 (t!376328 s!2326))) (flatMap!1195 lt!2256097 lambda!300481))))

(declare-fun bs!1293862 () Bool)

(assert (= bs!1293862 d!1768927))

(declare-fun m!6575590 () Bool)

(assert (=> bs!1293862 m!6575590))

(assert (=> b!5595424 d!1768927))

(assert (=> b!5595424 d!1768821))

(assert (=> b!5595424 d!1768823))

(declare-fun d!1768929 () Bool)

(declare-fun res!2373988 () Bool)

(declare-fun e!3452352 () Bool)

(assert (=> d!1768929 (=> res!2373988 e!3452352)))

(assert (=> d!1768929 (= res!2373988 (is-Nil!62921 lt!2256257))))

(assert (=> d!1768929 (= (forall!14749 lt!2256257 lambda!300432) e!3452352)))

(declare-fun b!5596445 () Bool)

(declare-fun e!3452353 () Bool)

(assert (=> b!5596445 (= e!3452352 e!3452353)))

(declare-fun res!2373989 () Bool)

(assert (=> b!5596445 (=> (not res!2373989) (not e!3452353))))

(assert (=> b!5596445 (= res!2373989 (dynLambda!24614 lambda!300432 (h!69369 lt!2256257)))))

(declare-fun b!5596446 () Bool)

(assert (=> b!5596446 (= e!3452353 (forall!14749 (t!376327 lt!2256257) lambda!300432))))

(assert (= (and d!1768929 (not res!2373988)) b!5596445))

(assert (= (and b!5596445 res!2373989) b!5596446))

(declare-fun b_lambda!212061 () Bool)

(assert (=> (not b_lambda!212061) (not b!5596445)))

(declare-fun m!6575592 () Bool)

(assert (=> b!5596445 m!6575592))

(declare-fun m!6575594 () Bool)

(assert (=> b!5596446 m!6575594))

(assert (=> d!1768661 d!1768929))

(declare-fun bm!419648 () Bool)

(declare-fun call!419654 () (Set Context!9932))

(declare-fun call!419657 () (Set Context!9932))

(assert (=> bm!419648 (= call!419654 call!419657)))

(declare-fun b!5596448 () Bool)

(declare-fun e!3452359 () (Set Context!9932))

(declare-fun call!419653 () (Set Context!9932))

(declare-fun call!419658 () (Set Context!9932))

(assert (=> b!5596448 (= e!3452359 (set.union call!419653 call!419658))))

(declare-fun b!5596449 () Bool)

(declare-fun e!3452354 () (Set Context!9932))

(declare-fun e!3452356 () (Set Context!9932))

(assert (=> b!5596449 (= e!3452354 e!3452356)))

(declare-fun c!981104 () Bool)

(assert (=> b!5596449 (= c!981104 (is-Concat!24427 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))))))

(declare-fun b!5596450 () Bool)

(assert (=> b!5596450 (= e!3452354 (set.union call!419653 call!419657))))

(declare-fun c!981100 () Bool)

(declare-fun bm!419649 () Bool)

(declare-fun call!419655 () List!63045)

(assert (=> bm!419649 (= call!419655 ($colon$colon!1645 (exprs!5466 (ite (or c!980835 c!980833) lt!2256087 (Context!9933 call!419487))) (ite (or c!981100 c!981104) (regTwo!31676 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))) (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292)))))))))))

(declare-fun b!5596451 () Bool)

(declare-fun e!3452357 () (Set Context!9932))

(assert (=> b!5596451 (= e!3452357 (set.insert (ite (or c!980835 c!980833) lt!2256087 (Context!9933 call!419487)) (as set.empty (Set Context!9932))))))

(declare-fun b!5596452 () Bool)

(assert (=> b!5596452 (= e!3452357 e!3452359)))

(declare-fun c!981102 () Bool)

(assert (=> b!5596452 (= c!981102 (is-Union!15582 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))))))

(declare-fun b!5596453 () Bool)

(declare-fun e!3452355 () (Set Context!9932))

(assert (=> b!5596453 (= e!3452355 (as set.empty (Set Context!9932)))))

(declare-fun bm!419650 () Bool)

(declare-fun call!419656 () List!63045)

(assert (=> bm!419650 (= call!419656 call!419655)))

(declare-fun b!5596454 () Bool)

(assert (=> b!5596454 (= e!3452356 call!419654)))

(declare-fun c!981103 () Bool)

(declare-fun d!1768931 () Bool)

(assert (=> d!1768931 (= c!981103 (and (is-ElementMatch!15582 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))) (= (c!980755 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))) (h!69370 s!2326))))))

(assert (=> d!1768931 (= (derivationStepZipperDown!924 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292)))))) (ite (or c!980835 c!980833) lt!2256087 (Context!9933 call!419487)) (h!69370 s!2326)) e!3452357)))

(declare-fun b!5596447 () Bool)

(declare-fun e!3452358 () Bool)

(assert (=> b!5596447 (= e!3452358 (nullable!5614 (regOne!31676 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292)))))))))))

(declare-fun b!5596455 () Bool)

(assert (=> b!5596455 (= e!3452355 call!419654)))

(declare-fun bm!419651 () Bool)

(assert (=> bm!419651 (= call!419658 (derivationStepZipperDown!924 (ite c!981102 (regTwo!31677 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))) (ite c!981100 (regTwo!31676 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))) (ite c!981104 (regOne!31676 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))) (reg!15911 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292)))))))))) (ite (or c!981102 c!981100) (ite (or c!980835 c!980833) lt!2256087 (Context!9933 call!419487)) (Context!9933 call!419656)) (h!69370 s!2326)))))

(declare-fun bm!419652 () Bool)

(assert (=> bm!419652 (= call!419657 call!419658)))

(declare-fun c!981101 () Bool)

(declare-fun b!5596456 () Bool)

(assert (=> b!5596456 (= c!981101 (is-Star!15582 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))))))

(assert (=> b!5596456 (= e!3452356 e!3452355)))

(declare-fun b!5596457 () Bool)

(assert (=> b!5596457 (= c!981100 e!3452358)))

(declare-fun res!2373990 () Bool)

(assert (=> b!5596457 (=> (not res!2373990) (not e!3452358))))

(assert (=> b!5596457 (= res!2373990 (is-Concat!24427 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))))))

(assert (=> b!5596457 (= e!3452359 e!3452354)))

(declare-fun bm!419653 () Bool)

(assert (=> bm!419653 (= call!419653 (derivationStepZipperDown!924 (ite c!981102 (regOne!31677 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292))))))) (regOne!31676 (ite c!980835 (regTwo!31677 (regOne!31677 (regOne!31676 r!7292))) (ite c!980833 (regTwo!31676 (regOne!31677 (regOne!31676 r!7292))) (ite c!980837 (regOne!31676 (regOne!31677 (regOne!31676 r!7292))) (reg!15911 (regOne!31677 (regOne!31676 r!7292)))))))) (ite c!981102 (ite (or c!980835 c!980833) lt!2256087 (Context!9933 call!419487)) (Context!9933 call!419655)) (h!69370 s!2326)))))

(assert (= (and d!1768931 c!981103) b!5596451))

(assert (= (and d!1768931 (not c!981103)) b!5596452))

(assert (= (and b!5596452 c!981102) b!5596448))

(assert (= (and b!5596452 (not c!981102)) b!5596457))

(assert (= (and b!5596457 res!2373990) b!5596447))

(assert (= (and b!5596457 c!981100) b!5596450))

(assert (= (and b!5596457 (not c!981100)) b!5596449))

(assert (= (and b!5596449 c!981104) b!5596454))

(assert (= (and b!5596449 (not c!981104)) b!5596456))

(assert (= (and b!5596456 c!981101) b!5596455))

(assert (= (and b!5596456 (not c!981101)) b!5596453))

(assert (= (or b!5596454 b!5596455) bm!419650))

(assert (= (or b!5596454 b!5596455) bm!419648))

(assert (= (or b!5596450 bm!419650) bm!419649))

(assert (= (or b!5596450 bm!419648) bm!419652))

(assert (= (or b!5596448 bm!419652) bm!419651))

(assert (= (or b!5596448 b!5596450) bm!419653))

(declare-fun m!6575596 () Bool)

(assert (=> bm!419651 m!6575596))

(declare-fun m!6575598 () Bool)

(assert (=> bm!419653 m!6575598))

(declare-fun m!6575600 () Bool)

(assert (=> b!5596451 m!6575600))

(declare-fun m!6575602 () Bool)

(assert (=> bm!419649 m!6575602))

(declare-fun m!6575604 () Bool)

(assert (=> b!5596447 m!6575604))

(assert (=> bm!419482 d!1768931))

(declare-fun d!1768933 () Bool)

(assert (=> d!1768933 (= (isEmpty!34744 (tail!11031 (exprs!5466 (h!69371 zl!343)))) (is-Nil!62921 (tail!11031 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> b!5595535 d!1768933))

(declare-fun d!1768935 () Bool)

(assert (=> d!1768935 (= (tail!11031 (exprs!5466 (h!69371 zl!343))) (t!376327 (exprs!5466 (h!69371 zl!343))))))

(assert (=> b!5595535 d!1768935))

(declare-fun d!1768937 () Bool)

(assert (=> d!1768937 (= (nullable!5614 (h!69369 (exprs!5466 lt!2256099))) (nullableFct!1723 (h!69369 (exprs!5466 lt!2256099))))))

(declare-fun bs!1293863 () Bool)

(assert (= bs!1293863 d!1768937))

(declare-fun m!6575606 () Bool)

(assert (=> bs!1293863 m!6575606))

(assert (=> b!5595570 d!1768937))

(declare-fun bm!419654 () Bool)

(declare-fun call!419660 () (Set Context!9932))

(declare-fun call!419663 () (Set Context!9932))

(assert (=> bm!419654 (= call!419660 call!419663)))

(declare-fun b!5596459 () Bool)

(declare-fun e!3452365 () (Set Context!9932))

(declare-fun call!419659 () (Set Context!9932))

(declare-fun call!419664 () (Set Context!9932))

(assert (=> b!5596459 (= e!3452365 (set.union call!419659 call!419664))))

(declare-fun b!5596460 () Bool)

(declare-fun e!3452360 () (Set Context!9932))

(declare-fun e!3452362 () (Set Context!9932))

(assert (=> b!5596460 (= e!3452360 e!3452362)))

(declare-fun c!981109 () Bool)

(assert (=> b!5596460 (= c!981109 (is-Concat!24427 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596461 () Bool)

(assert (=> b!5596461 (= e!3452360 (set.union call!419659 call!419663))))

(declare-fun call!419661 () List!63045)

(declare-fun bm!419655 () Bool)

(declare-fun c!981105 () Bool)

(assert (=> bm!419655 (= call!419661 ($colon$colon!1645 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343))))) (ite (or c!981105 c!981109) (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (h!69369 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5596462 () Bool)

(declare-fun e!3452363 () (Set Context!9932))

(assert (=> b!5596462 (= e!3452363 (set.insert (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))) (as set.empty (Set Context!9932))))))

(declare-fun b!5596463 () Bool)

(assert (=> b!5596463 (= e!3452363 e!3452365)))

(declare-fun c!981107 () Bool)

(assert (=> b!5596463 (= c!981107 (is-Union!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596464 () Bool)

(declare-fun e!3452361 () (Set Context!9932))

(assert (=> b!5596464 (= e!3452361 (as set.empty (Set Context!9932)))))

(declare-fun bm!419656 () Bool)

(declare-fun call!419662 () List!63045)

(assert (=> bm!419656 (= call!419662 call!419661)))

(declare-fun b!5596465 () Bool)

(assert (=> b!5596465 (= e!3452362 call!419660)))

(declare-fun d!1768939 () Bool)

(declare-fun c!981108 () Bool)

(assert (=> d!1768939 (= c!981108 (and (is-ElementMatch!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))) (= (c!980755 (h!69369 (exprs!5466 (h!69371 zl!343)))) (h!69370 s!2326))))))

(assert (=> d!1768939 (= (derivationStepZipperDown!924 (h!69369 (exprs!5466 (h!69371 zl!343))) (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))) (h!69370 s!2326)) e!3452363)))

(declare-fun b!5596458 () Bool)

(declare-fun e!3452364 () Bool)

(assert (=> b!5596458 (= e!3452364 (nullable!5614 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5596466 () Bool)

(assert (=> b!5596466 (= e!3452361 call!419660)))

(declare-fun bm!419657 () Bool)

(assert (=> bm!419657 (= call!419664 (derivationStepZipperDown!924 (ite c!981107 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!981105 (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (ite c!981109 (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (reg!15911 (h!69369 (exprs!5466 (h!69371 zl!343))))))) (ite (or c!981107 c!981105) (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))) (Context!9933 call!419662)) (h!69370 s!2326)))))

(declare-fun bm!419658 () Bool)

(assert (=> bm!419658 (= call!419663 call!419664)))

(declare-fun b!5596467 () Bool)

(declare-fun c!981106 () Bool)

(assert (=> b!5596467 (= c!981106 (is-Star!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> b!5596467 (= e!3452362 e!3452361)))

(declare-fun b!5596468 () Bool)

(assert (=> b!5596468 (= c!981105 e!3452364)))

(declare-fun res!2373991 () Bool)

(assert (=> b!5596468 (=> (not res!2373991) (not e!3452364))))

(assert (=> b!5596468 (= res!2373991 (is-Concat!24427 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> b!5596468 (= e!3452365 e!3452360)))

(declare-fun bm!419659 () Bool)

(assert (=> bm!419659 (= call!419659 (derivationStepZipperDown!924 (ite c!981107 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343))))) (ite c!981107 (Context!9933 (t!376327 (exprs!5466 (h!69371 zl!343)))) (Context!9933 call!419661)) (h!69370 s!2326)))))

(assert (= (and d!1768939 c!981108) b!5596462))

(assert (= (and d!1768939 (not c!981108)) b!5596463))

(assert (= (and b!5596463 c!981107) b!5596459))

(assert (= (and b!5596463 (not c!981107)) b!5596468))

(assert (= (and b!5596468 res!2373991) b!5596458))

(assert (= (and b!5596468 c!981105) b!5596461))

(assert (= (and b!5596468 (not c!981105)) b!5596460))

(assert (= (and b!5596460 c!981109) b!5596465))

(assert (= (and b!5596460 (not c!981109)) b!5596467))

(assert (= (and b!5596467 c!981106) b!5596466))

(assert (= (and b!5596467 (not c!981106)) b!5596464))

(assert (= (or b!5596465 b!5596466) bm!419656))

(assert (= (or b!5596465 b!5596466) bm!419654))

(assert (= (or b!5596461 bm!419656) bm!419655))

(assert (= (or b!5596461 bm!419654) bm!419658))

(assert (= (or b!5596459 bm!419658) bm!419657))

(assert (= (or b!5596459 b!5596461) bm!419659))

(declare-fun m!6575608 () Bool)

(assert (=> bm!419657 m!6575608))

(declare-fun m!6575610 () Bool)

(assert (=> bm!419659 m!6575610))

(declare-fun m!6575612 () Bool)

(assert (=> b!5596462 m!6575612))

(declare-fun m!6575614 () Bool)

(assert (=> bm!419655 m!6575614))

(assert (=> b!5596458 m!6574926))

(assert (=> bm!419521 d!1768939))

(declare-fun d!1768941 () Bool)

(assert (=> d!1768941 (= (head!11936 (exprs!5466 (h!69371 zl!343))) (h!69369 (exprs!5466 (h!69371 zl!343))))))

(assert (=> b!5595531 d!1768941))

(declare-fun bm!419660 () Bool)

(declare-fun call!419666 () (Set Context!9932))

(declare-fun call!419669 () (Set Context!9932))

(assert (=> bm!419660 (= call!419666 call!419669)))

(declare-fun b!5596470 () Bool)

(declare-fun e!3452371 () (Set Context!9932))

(declare-fun call!419665 () (Set Context!9932))

(declare-fun call!419670 () (Set Context!9932))

(assert (=> b!5596470 (= e!3452371 (set.union call!419665 call!419670))))

(declare-fun b!5596471 () Bool)

(declare-fun e!3452366 () (Set Context!9932))

(declare-fun e!3452368 () (Set Context!9932))

(assert (=> b!5596471 (= e!3452366 e!3452368)))

(declare-fun c!981114 () Bool)

(assert (=> b!5596471 (= c!981114 (is-Concat!24427 (h!69369 (exprs!5466 lt!2256105))))))

(declare-fun b!5596472 () Bool)

(assert (=> b!5596472 (= e!3452366 (set.union call!419665 call!419669))))

(declare-fun bm!419661 () Bool)

(declare-fun c!981110 () Bool)

(declare-fun call!419667 () List!63045)

(assert (=> bm!419661 (= call!419667 ($colon$colon!1645 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256105)))) (ite (or c!981110 c!981114) (regTwo!31676 (h!69369 (exprs!5466 lt!2256105))) (h!69369 (exprs!5466 lt!2256105)))))))

(declare-fun b!5596473 () Bool)

(declare-fun e!3452369 () (Set Context!9932))

(assert (=> b!5596473 (= e!3452369 (set.insert (Context!9933 (t!376327 (exprs!5466 lt!2256105))) (as set.empty (Set Context!9932))))))

(declare-fun b!5596474 () Bool)

(assert (=> b!5596474 (= e!3452369 e!3452371)))

(declare-fun c!981112 () Bool)

(assert (=> b!5596474 (= c!981112 (is-Union!15582 (h!69369 (exprs!5466 lt!2256105))))))

(declare-fun b!5596475 () Bool)

(declare-fun e!3452367 () (Set Context!9932))

(assert (=> b!5596475 (= e!3452367 (as set.empty (Set Context!9932)))))

(declare-fun bm!419662 () Bool)

(declare-fun call!419668 () List!63045)

(assert (=> bm!419662 (= call!419668 call!419667)))

(declare-fun b!5596476 () Bool)

(assert (=> b!5596476 (= e!3452368 call!419666)))

(declare-fun d!1768943 () Bool)

(declare-fun c!981113 () Bool)

(assert (=> d!1768943 (= c!981113 (and (is-ElementMatch!15582 (h!69369 (exprs!5466 lt!2256105))) (= (c!980755 (h!69369 (exprs!5466 lt!2256105))) (h!69370 s!2326))))))

(assert (=> d!1768943 (= (derivationStepZipperDown!924 (h!69369 (exprs!5466 lt!2256105)) (Context!9933 (t!376327 (exprs!5466 lt!2256105))) (h!69370 s!2326)) e!3452369)))

(declare-fun b!5596469 () Bool)

(declare-fun e!3452370 () Bool)

(assert (=> b!5596469 (= e!3452370 (nullable!5614 (regOne!31676 (h!69369 (exprs!5466 lt!2256105)))))))

(declare-fun b!5596477 () Bool)

(assert (=> b!5596477 (= e!3452367 call!419666)))

(declare-fun bm!419663 () Bool)

(assert (=> bm!419663 (= call!419670 (derivationStepZipperDown!924 (ite c!981112 (regTwo!31677 (h!69369 (exprs!5466 lt!2256105))) (ite c!981110 (regTwo!31676 (h!69369 (exprs!5466 lt!2256105))) (ite c!981114 (regOne!31676 (h!69369 (exprs!5466 lt!2256105))) (reg!15911 (h!69369 (exprs!5466 lt!2256105)))))) (ite (or c!981112 c!981110) (Context!9933 (t!376327 (exprs!5466 lt!2256105))) (Context!9933 call!419668)) (h!69370 s!2326)))))

(declare-fun bm!419664 () Bool)

(assert (=> bm!419664 (= call!419669 call!419670)))

(declare-fun b!5596478 () Bool)

(declare-fun c!981111 () Bool)

(assert (=> b!5596478 (= c!981111 (is-Star!15582 (h!69369 (exprs!5466 lt!2256105))))))

(assert (=> b!5596478 (= e!3452368 e!3452367)))

(declare-fun b!5596479 () Bool)

(assert (=> b!5596479 (= c!981110 e!3452370)))

(declare-fun res!2373992 () Bool)

(assert (=> b!5596479 (=> (not res!2373992) (not e!3452370))))

(assert (=> b!5596479 (= res!2373992 (is-Concat!24427 (h!69369 (exprs!5466 lt!2256105))))))

(assert (=> b!5596479 (= e!3452371 e!3452366)))

(declare-fun bm!419665 () Bool)

(assert (=> bm!419665 (= call!419665 (derivationStepZipperDown!924 (ite c!981112 (regOne!31677 (h!69369 (exprs!5466 lt!2256105))) (regOne!31676 (h!69369 (exprs!5466 lt!2256105)))) (ite c!981112 (Context!9933 (t!376327 (exprs!5466 lt!2256105))) (Context!9933 call!419667)) (h!69370 s!2326)))))

(assert (= (and d!1768943 c!981113) b!5596473))

(assert (= (and d!1768943 (not c!981113)) b!5596474))

(assert (= (and b!5596474 c!981112) b!5596470))

(assert (= (and b!5596474 (not c!981112)) b!5596479))

(assert (= (and b!5596479 res!2373992) b!5596469))

(assert (= (and b!5596479 c!981110) b!5596472))

(assert (= (and b!5596479 (not c!981110)) b!5596471))

(assert (= (and b!5596471 c!981114) b!5596476))

(assert (= (and b!5596471 (not c!981114)) b!5596478))

(assert (= (and b!5596478 c!981111) b!5596477))

(assert (= (and b!5596478 (not c!981111)) b!5596475))

(assert (= (or b!5596476 b!5596477) bm!419662))

(assert (= (or b!5596476 b!5596477) bm!419660))

(assert (= (or b!5596472 bm!419662) bm!419661))

(assert (= (or b!5596472 bm!419660) bm!419664))

(assert (= (or b!5596470 bm!419664) bm!419663))

(assert (= (or b!5596470 b!5596472) bm!419665))

(declare-fun m!6575616 () Bool)

(assert (=> bm!419663 m!6575616))

(declare-fun m!6575618 () Bool)

(assert (=> bm!419665 m!6575618))

(declare-fun m!6575620 () Bool)

(assert (=> b!5596473 m!6575620))

(declare-fun m!6575622 () Bool)

(assert (=> bm!419661 m!6575622))

(declare-fun m!6575624 () Bool)

(assert (=> b!5596469 m!6575624))

(assert (=> bm!419505 d!1768943))

(declare-fun d!1768945 () Bool)

(assert (=> d!1768945 (= (nullable!5614 (h!69369 (exprs!5466 lt!2256087))) (nullableFct!1723 (h!69369 (exprs!5466 lt!2256087))))))

(declare-fun bs!1293864 () Bool)

(assert (= bs!1293864 d!1768945))

(declare-fun m!6575626 () Bool)

(assert (=> bs!1293864 m!6575626))

(assert (=> b!5595598 d!1768945))

(declare-fun bs!1293865 () Bool)

(declare-fun d!1768947 () Bool)

(assert (= bs!1293865 (and d!1768947 d!1768797)))

(declare-fun lambda!300482 () Int)

(assert (=> bs!1293865 (= lambda!300482 lambda!300464)))

(declare-fun bs!1293866 () Bool)

(assert (= bs!1293866 (and d!1768947 d!1768921)))

(assert (=> bs!1293866 (= lambda!300482 lambda!300480)))

(declare-fun bs!1293867 () Bool)

(assert (= bs!1293867 (and d!1768947 d!1768895)))

(assert (=> bs!1293867 (= lambda!300482 lambda!300475)))

(declare-fun bs!1293868 () Bool)

(assert (= bs!1293868 (and d!1768947 d!1768779)))

(assert (=> bs!1293868 (= lambda!300482 lambda!300463)))

(declare-fun bs!1293869 () Bool)

(assert (= bs!1293869 (and d!1768947 d!1768815)))

(assert (=> bs!1293869 (= lambda!300482 lambda!300466)))

(assert (=> d!1768947 (= (nullableZipper!1577 (set.union lt!2256094 lt!2256084)) (exists!2171 (set.union lt!2256094 lt!2256084) lambda!300482))))

(declare-fun bs!1293870 () Bool)

(assert (= bs!1293870 d!1768947))

(declare-fun m!6575628 () Bool)

(assert (=> bs!1293870 m!6575628))

(assert (=> b!5595782 d!1768947))

(declare-fun d!1768949 () Bool)

(assert (=> d!1768949 true))

(assert (=> d!1768949 true))

(declare-fun res!2373993 () Bool)

(assert (=> d!1768949 (= (choose!42440 lambda!300388) res!2373993)))

(assert (=> d!1768685 d!1768949))

(assert (=> bm!419460 d!1768871))

(declare-fun d!1768951 () Bool)

(assert (=> d!1768951 (= ($colon$colon!1645 (exprs!5466 lt!2256087) (ite (or c!980828 c!980832) (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (regTwo!31677 (regOne!31676 r!7292)))) (Cons!62921 (ite (or c!980828 c!980832) (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (regTwo!31677 (regOne!31676 r!7292))) (exprs!5466 lt!2256087)))))

(assert (=> bm!419474 d!1768951))

(declare-fun d!1768953 () Bool)

(assert (=> d!1768953 (= (isEmpty!34744 (tail!11031 (unfocusZipperList!1010 zl!343))) (is-Nil!62921 (tail!11031 (unfocusZipperList!1010 zl!343))))))

(assert (=> b!5595655 d!1768953))

(declare-fun d!1768955 () Bool)

(assert (=> d!1768955 (= (tail!11031 (unfocusZipperList!1010 zl!343)) (t!376327 (unfocusZipperList!1010 zl!343)))))

(assert (=> b!5595655 d!1768955))

(assert (=> d!1768561 d!1768871))

(assert (=> d!1768561 d!1768703))

(declare-fun d!1768957 () Bool)

(declare-fun res!2373994 () Bool)

(declare-fun e!3452372 () Bool)

(assert (=> d!1768957 (=> res!2373994 e!3452372)))

(assert (=> d!1768957 (= res!2373994 (is-Nil!62921 (exprs!5466 setElem!37306)))))

(assert (=> d!1768957 (= (forall!14749 (exprs!5466 setElem!37306) lambda!300422) e!3452372)))

(declare-fun b!5596480 () Bool)

(declare-fun e!3452373 () Bool)

(assert (=> b!5596480 (= e!3452372 e!3452373)))

(declare-fun res!2373995 () Bool)

(assert (=> b!5596480 (=> (not res!2373995) (not e!3452373))))

(assert (=> b!5596480 (= res!2373995 (dynLambda!24614 lambda!300422 (h!69369 (exprs!5466 setElem!37306))))))

(declare-fun b!5596481 () Bool)

(assert (=> b!5596481 (= e!3452373 (forall!14749 (t!376327 (exprs!5466 setElem!37306)) lambda!300422))))

(assert (= (and d!1768957 (not res!2373994)) b!5596480))

(assert (= (and b!5596480 res!2373995) b!5596481))

(declare-fun b_lambda!212063 () Bool)

(assert (=> (not b_lambda!212063) (not b!5596480)))

(declare-fun m!6575630 () Bool)

(assert (=> b!5596480 m!6575630))

(declare-fun m!6575632 () Bool)

(assert (=> b!5596481 m!6575632))

(assert (=> d!1768593 d!1768957))

(declare-fun bs!1293871 () Bool)

(declare-fun b!5596491 () Bool)

(assert (= bs!1293871 (and b!5596491 b!5596368)))

(declare-fun lambda!300483 () Int)

(assert (=> bs!1293871 (= (and (= (reg!15911 (regTwo!31677 r!7292)) (reg!15911 (regOne!31677 r!7292))) (= (regTwo!31677 r!7292) (regOne!31677 r!7292))) (= lambda!300483 lambda!300473))))

(declare-fun bs!1293872 () Bool)

(assert (= bs!1293872 (and b!5596491 d!1768687)))

(assert (=> bs!1293872 (not (= lambda!300483 lambda!300435))))

(declare-fun bs!1293873 () Bool)

(assert (= bs!1293873 (and b!5596491 b!5595135)))

(assert (=> bs!1293873 (not (= lambda!300483 lambda!300388))))

(declare-fun bs!1293874 () Bool)

(assert (= bs!1293874 (and b!5596491 d!1768691)))

(assert (=> bs!1293874 (not (= lambda!300483 lambda!300440))))

(declare-fun bs!1293875 () Bool)

(assert (= bs!1293875 (and b!5596491 b!5595362)))

(assert (=> bs!1293875 (not (= lambda!300483 lambda!300416))))

(declare-fun bs!1293876 () Bool)

(assert (= bs!1293876 (and b!5596491 b!5595369)))

(assert (=> bs!1293876 (= (and (= (reg!15911 (regTwo!31677 r!7292)) (reg!15911 r!7292)) (= (regTwo!31677 r!7292) r!7292)) (= lambda!300483 lambda!300415))))

(assert (=> bs!1293873 (not (= lambda!300483 lambda!300387))))

(declare-fun bs!1293877 () Bool)

(assert (= bs!1293877 (and b!5596491 d!1768903)))

(assert (=> bs!1293877 (not (= lambda!300483 lambda!300478))))

(declare-fun bs!1293878 () Bool)

(assert (= bs!1293878 (and b!5596491 b!5596361)))

(assert (=> bs!1293878 (not (= lambda!300483 lambda!300474))))

(assert (=> bs!1293874 (not (= lambda!300483 lambda!300441))))

(assert (=> b!5596491 true))

(assert (=> b!5596491 true))

(declare-fun bs!1293879 () Bool)

(declare-fun b!5596484 () Bool)

(assert (= bs!1293879 (and b!5596484 b!5596368)))

(declare-fun lambda!300484 () Int)

(assert (=> bs!1293879 (not (= lambda!300484 lambda!300473))))

(declare-fun bs!1293880 () Bool)

(assert (= bs!1293880 (and b!5596484 d!1768687)))

(assert (=> bs!1293880 (not (= lambda!300484 lambda!300435))))

(declare-fun bs!1293881 () Bool)

(assert (= bs!1293881 (and b!5596484 b!5596491)))

(assert (=> bs!1293881 (not (= lambda!300484 lambda!300483))))

(declare-fun bs!1293882 () Bool)

(assert (= bs!1293882 (and b!5596484 b!5595135)))

(assert (=> bs!1293882 (= (and (= (regOne!31676 (regTwo!31677 r!7292)) (regOne!31676 r!7292)) (= (regTwo!31676 (regTwo!31677 r!7292)) (regTwo!31676 r!7292))) (= lambda!300484 lambda!300388))))

(declare-fun bs!1293883 () Bool)

(assert (= bs!1293883 (and b!5596484 d!1768691)))

(assert (=> bs!1293883 (not (= lambda!300484 lambda!300440))))

(declare-fun bs!1293884 () Bool)

(assert (= bs!1293884 (and b!5596484 b!5595362)))

(assert (=> bs!1293884 (= (and (= (regOne!31676 (regTwo!31677 r!7292)) (regOne!31676 r!7292)) (= (regTwo!31676 (regTwo!31677 r!7292)) (regTwo!31676 r!7292))) (= lambda!300484 lambda!300416))))

(declare-fun bs!1293885 () Bool)

(assert (= bs!1293885 (and b!5596484 b!5595369)))

(assert (=> bs!1293885 (not (= lambda!300484 lambda!300415))))

(assert (=> bs!1293882 (not (= lambda!300484 lambda!300387))))

(declare-fun bs!1293886 () Bool)

(assert (= bs!1293886 (and b!5596484 d!1768903)))

(assert (=> bs!1293886 (not (= lambda!300484 lambda!300478))))

(declare-fun bs!1293887 () Bool)

(assert (= bs!1293887 (and b!5596484 b!5596361)))

(assert (=> bs!1293887 (= (and (= (regOne!31676 (regTwo!31677 r!7292)) (regOne!31676 (regOne!31677 r!7292))) (= (regTwo!31676 (regTwo!31677 r!7292)) (regTwo!31676 (regOne!31677 r!7292)))) (= lambda!300484 lambda!300474))))

(assert (=> bs!1293883 (= (and (= (regOne!31676 (regTwo!31677 r!7292)) (regOne!31676 r!7292)) (= (regTwo!31676 (regTwo!31677 r!7292)) (regTwo!31676 r!7292))) (= lambda!300484 lambda!300441))))

(assert (=> b!5596484 true))

(assert (=> b!5596484 true))

(declare-fun b!5596482 () Bool)

(declare-fun res!2373998 () Bool)

(declare-fun e!3452379 () Bool)

(assert (=> b!5596482 (=> res!2373998 e!3452379)))

(declare-fun call!419672 () Bool)

(assert (=> b!5596482 (= res!2373998 call!419672)))

(declare-fun e!3452380 () Bool)

(assert (=> b!5596482 (= e!3452380 e!3452379)))

(declare-fun bm!419666 () Bool)

(declare-fun call!419671 () Bool)

(declare-fun c!981116 () Bool)

(assert (=> bm!419666 (= call!419671 (Exists!2682 (ite c!981116 lambda!300483 lambda!300484)))))

(declare-fun d!1768959 () Bool)

(declare-fun c!981118 () Bool)

(assert (=> d!1768959 (= c!981118 (is-EmptyExpr!15582 (regTwo!31677 r!7292)))))

(declare-fun e!3452375 () Bool)

(assert (=> d!1768959 (= (matchRSpec!2685 (regTwo!31677 r!7292) s!2326) e!3452375)))

(declare-fun b!5596483 () Bool)

(declare-fun e!3452376 () Bool)

(assert (=> b!5596483 (= e!3452375 e!3452376)))

(declare-fun res!2373996 () Bool)

(assert (=> b!5596483 (= res!2373996 (not (is-EmptyLang!15582 (regTwo!31677 r!7292))))))

(assert (=> b!5596483 (=> (not res!2373996) (not e!3452376))))

(assert (=> b!5596484 (= e!3452380 call!419671)))

(declare-fun b!5596485 () Bool)

(declare-fun c!981115 () Bool)

(assert (=> b!5596485 (= c!981115 (is-Union!15582 (regTwo!31677 r!7292)))))

(declare-fun e!3452378 () Bool)

(declare-fun e!3452374 () Bool)

(assert (=> b!5596485 (= e!3452378 e!3452374)))

(declare-fun b!5596486 () Bool)

(assert (=> b!5596486 (= e!3452378 (= s!2326 (Cons!62922 (c!980755 (regTwo!31677 r!7292)) Nil!62922)))))

(declare-fun b!5596487 () Bool)

(assert (=> b!5596487 (= e!3452374 e!3452380)))

(assert (=> b!5596487 (= c!981116 (is-Star!15582 (regTwo!31677 r!7292)))))

(declare-fun b!5596488 () Bool)

(declare-fun c!981117 () Bool)

(assert (=> b!5596488 (= c!981117 (is-ElementMatch!15582 (regTwo!31677 r!7292)))))

(assert (=> b!5596488 (= e!3452376 e!3452378)))

(declare-fun b!5596489 () Bool)

(declare-fun e!3452377 () Bool)

(assert (=> b!5596489 (= e!3452377 (matchRSpec!2685 (regTwo!31677 (regTwo!31677 r!7292)) s!2326))))

(declare-fun b!5596490 () Bool)

(assert (=> b!5596490 (= e!3452374 e!3452377)))

(declare-fun res!2373997 () Bool)

(assert (=> b!5596490 (= res!2373997 (matchRSpec!2685 (regOne!31677 (regTwo!31677 r!7292)) s!2326))))

(assert (=> b!5596490 (=> res!2373997 e!3452377)))

(assert (=> b!5596491 (= e!3452379 call!419671)))

(declare-fun bm!419667 () Bool)

(assert (=> bm!419667 (= call!419672 (isEmpty!34748 s!2326))))

(declare-fun b!5596492 () Bool)

(assert (=> b!5596492 (= e!3452375 call!419672)))

(assert (= (and d!1768959 c!981118) b!5596492))

(assert (= (and d!1768959 (not c!981118)) b!5596483))

(assert (= (and b!5596483 res!2373996) b!5596488))

(assert (= (and b!5596488 c!981117) b!5596486))

(assert (= (and b!5596488 (not c!981117)) b!5596485))

(assert (= (and b!5596485 c!981115) b!5596490))

(assert (= (and b!5596485 (not c!981115)) b!5596487))

(assert (= (and b!5596490 (not res!2373997)) b!5596489))

(assert (= (and b!5596487 c!981116) b!5596482))

(assert (= (and b!5596487 (not c!981116)) b!5596484))

(assert (= (and b!5596482 (not res!2373998)) b!5596491))

(assert (= (or b!5596491 b!5596484) bm!419666))

(assert (= (or b!5596492 b!5596482) bm!419667))

(declare-fun m!6575634 () Bool)

(assert (=> bm!419666 m!6575634))

(declare-fun m!6575636 () Bool)

(assert (=> b!5596489 m!6575636))

(declare-fun m!6575638 () Bool)

(assert (=> b!5596490 m!6575638))

(assert (=> bm!419667 m!6574684))

(assert (=> b!5595367 d!1768959))

(declare-fun d!1768961 () Bool)

(assert (=> d!1768961 (= (nullable!5614 (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))) (nullableFct!1723 (regOne!31676 (regOne!31677 (regOne!31676 r!7292)))))))

(declare-fun bs!1293888 () Bool)

(assert (= bs!1293888 d!1768961))

(declare-fun m!6575640 () Bool)

(assert (=> bs!1293888 m!6575640))

(assert (=> b!5595467 d!1768961))

(assert (=> d!1768597 d!1768599))

(assert (=> d!1768597 d!1768571))

(declare-fun d!1768963 () Bool)

(declare-fun e!3452381 () Bool)

(assert (=> d!1768963 (= (matchZipper!1720 (set.union lt!2256097 lt!2256084) (t!376328 s!2326)) e!3452381)))

(declare-fun res!2373999 () Bool)

(assert (=> d!1768963 (=> res!2373999 e!3452381)))

(assert (=> d!1768963 (= res!2373999 (matchZipper!1720 lt!2256097 (t!376328 s!2326)))))

(assert (=> d!1768963 true))

(declare-fun _$48!1191 () Unit!155748)

(assert (=> d!1768963 (= (choose!42431 lt!2256097 lt!2256084 (t!376328 s!2326)) _$48!1191)))

(declare-fun b!5596493 () Bool)

(assert (=> b!5596493 (= e!3452381 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(assert (= (and d!1768963 (not res!2373999)) b!5596493))

(assert (=> d!1768963 m!6574522))

(assert (=> d!1768963 m!6574466))

(assert (=> b!5596493 m!6574448))

(assert (=> d!1768597 d!1768963))

(declare-fun bs!1293889 () Bool)

(declare-fun d!1768965 () Bool)

(assert (= bs!1293889 (and d!1768965 d!1768947)))

(declare-fun lambda!300485 () Int)

(assert (=> bs!1293889 (= lambda!300485 lambda!300482)))

(declare-fun bs!1293890 () Bool)

(assert (= bs!1293890 (and d!1768965 d!1768797)))

(assert (=> bs!1293890 (= lambda!300485 lambda!300464)))

(declare-fun bs!1293891 () Bool)

(assert (= bs!1293891 (and d!1768965 d!1768921)))

(assert (=> bs!1293891 (= lambda!300485 lambda!300480)))

(declare-fun bs!1293892 () Bool)

(assert (= bs!1293892 (and d!1768965 d!1768895)))

(assert (=> bs!1293892 (= lambda!300485 lambda!300475)))

(declare-fun bs!1293893 () Bool)

(assert (= bs!1293893 (and d!1768965 d!1768779)))

(assert (=> bs!1293893 (= lambda!300485 lambda!300463)))

(declare-fun bs!1293894 () Bool)

(assert (= bs!1293894 (and d!1768965 d!1768815)))

(assert (=> bs!1293894 (= lambda!300485 lambda!300466)))

(assert (=> d!1768965 (= (nullableZipper!1577 lt!2256095) (exists!2171 lt!2256095 lambda!300485))))

(declare-fun bs!1293895 () Bool)

(assert (= bs!1293895 d!1768965))

(declare-fun m!6575642 () Bool)

(assert (=> bs!1293895 m!6575642))

(assert (=> b!5595594 d!1768965))

(assert (=> d!1768631 d!1768835))

(declare-fun bs!1293896 () Bool)

(declare-fun d!1768967 () Bool)

(assert (= bs!1293896 (and d!1768967 d!1768947)))

(declare-fun lambda!300486 () Int)

(assert (=> bs!1293896 (= lambda!300486 lambda!300482)))

(declare-fun bs!1293897 () Bool)

(assert (= bs!1293897 (and d!1768967 d!1768965)))

(assert (=> bs!1293897 (= lambda!300486 lambda!300485)))

(declare-fun bs!1293898 () Bool)

(assert (= bs!1293898 (and d!1768967 d!1768797)))

(assert (=> bs!1293898 (= lambda!300486 lambda!300464)))

(declare-fun bs!1293899 () Bool)

(assert (= bs!1293899 (and d!1768967 d!1768921)))

(assert (=> bs!1293899 (= lambda!300486 lambda!300480)))

(declare-fun bs!1293900 () Bool)

(assert (= bs!1293900 (and d!1768967 d!1768895)))

(assert (=> bs!1293900 (= lambda!300486 lambda!300475)))

(declare-fun bs!1293901 () Bool)

(assert (= bs!1293901 (and d!1768967 d!1768779)))

(assert (=> bs!1293901 (= lambda!300486 lambda!300463)))

(declare-fun bs!1293902 () Bool)

(assert (= bs!1293902 (and d!1768967 d!1768815)))

(assert (=> bs!1293902 (= lambda!300486 lambda!300466)))

(assert (=> d!1768967 (= (nullableZipper!1577 (set.union lt!2256097 lt!2256084)) (exists!2171 (set.union lt!2256097 lt!2256084) lambda!300486))))

(declare-fun bs!1293903 () Bool)

(assert (= bs!1293903 d!1768967))

(declare-fun m!6575644 () Bool)

(assert (=> bs!1293903 m!6575644))

(assert (=> b!5595541 d!1768967))

(declare-fun d!1768969 () Bool)

(assert (=> d!1768969 (= (isEmpty!34744 (unfocusZipperList!1010 zl!343)) (is-Nil!62921 (unfocusZipperList!1010 zl!343)))))

(assert (=> b!5595653 d!1768969))

(declare-fun d!1768971 () Bool)

(declare-fun c!981119 () Bool)

(assert (=> d!1768971 (= c!981119 (isEmpty!34748 (tail!11028 (t!376328 s!2326))))))

(declare-fun e!3452382 () Bool)

(assert (=> d!1768971 (= (matchZipper!1720 (derivationStepZipper!1681 lt!2256084 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))) e!3452382)))

(declare-fun b!5596494 () Bool)

(assert (=> b!5596494 (= e!3452382 (nullableZipper!1577 (derivationStepZipper!1681 lt!2256084 (head!11933 (t!376328 s!2326)))))))

(declare-fun b!5596495 () Bool)

(assert (=> b!5596495 (= e!3452382 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 lt!2256084 (head!11933 (t!376328 s!2326))) (head!11933 (tail!11028 (t!376328 s!2326)))) (tail!11028 (tail!11028 (t!376328 s!2326)))))))

(assert (= (and d!1768971 c!981119) b!5596494))

(assert (= (and d!1768971 (not c!981119)) b!5596495))

(assert (=> d!1768971 m!6574722))

(assert (=> d!1768971 m!6575358))

(assert (=> b!5596494 m!6574854))

(declare-fun m!6575646 () Bool)

(assert (=> b!5596494 m!6575646))

(assert (=> b!5596495 m!6574722))

(assert (=> b!5596495 m!6575362))

(assert (=> b!5596495 m!6574854))

(assert (=> b!5596495 m!6575362))

(declare-fun m!6575648 () Bool)

(assert (=> b!5596495 m!6575648))

(assert (=> b!5596495 m!6574722))

(assert (=> b!5596495 m!6575366))

(assert (=> b!5596495 m!6575648))

(assert (=> b!5596495 m!6575366))

(declare-fun m!6575650 () Bool)

(assert (=> b!5596495 m!6575650))

(assert (=> b!5595575 d!1768971))

(declare-fun bs!1293904 () Bool)

(declare-fun d!1768973 () Bool)

(assert (= bs!1293904 (and d!1768973 d!1768927)))

(declare-fun lambda!300487 () Int)

(assert (=> bs!1293904 (= lambda!300487 lambda!300481)))

(declare-fun bs!1293905 () Bool)

(assert (= bs!1293905 (and d!1768973 d!1768859)))

(assert (=> bs!1293905 (= lambda!300487 lambda!300471)))

(declare-fun bs!1293906 () Bool)

(assert (= bs!1293906 (and d!1768973 d!1768855)))

(assert (=> bs!1293906 (= (= (head!11933 (t!376328 s!2326)) (head!11933 s!2326)) (= lambda!300487 lambda!300470))))

(declare-fun bs!1293907 () Bool)

(assert (= bs!1293907 (and d!1768973 d!1768819)))

(assert (=> bs!1293907 (= lambda!300487 lambda!300469)))

(declare-fun bs!1293908 () Bool)

(assert (= bs!1293908 (and d!1768973 b!5595134)))

(assert (=> bs!1293908 (= (= (head!11933 (t!376328 s!2326)) (h!69370 s!2326)) (= lambda!300487 lambda!300389))))

(assert (=> d!1768973 true))

(assert (=> d!1768973 (= (derivationStepZipper!1681 lt!2256084 (head!11933 (t!376328 s!2326))) (flatMap!1195 lt!2256084 lambda!300487))))

(declare-fun bs!1293909 () Bool)

(assert (= bs!1293909 d!1768973))

(declare-fun m!6575652 () Bool)

(assert (=> bs!1293909 m!6575652))

(assert (=> b!5595575 d!1768973))

(assert (=> b!5595575 d!1768821))

(assert (=> b!5595575 d!1768823))

(declare-fun bm!419668 () Bool)

(declare-fun call!419674 () (Set Context!9932))

(declare-fun call!419677 () (Set Context!9932))

(assert (=> bm!419668 (= call!419674 call!419677)))

(declare-fun b!5596497 () Bool)

(declare-fun e!3452388 () (Set Context!9932))

(declare-fun call!419673 () (Set Context!9932))

(declare-fun call!419678 () (Set Context!9932))

(assert (=> b!5596497 (= e!3452388 (set.union call!419673 call!419678))))

(declare-fun b!5596498 () Bool)

(declare-fun e!3452383 () (Set Context!9932))

(declare-fun e!3452385 () (Set Context!9932))

(assert (=> b!5596498 (= e!3452383 e!3452385)))

(declare-fun c!981124 () Bool)

(assert (=> b!5596498 (= c!981124 (is-Concat!24427 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))))))

(declare-fun b!5596499 () Bool)

(assert (=> b!5596499 (= e!3452383 (set.union call!419673 call!419677))))

(declare-fun c!981120 () Bool)

(declare-fun bm!419669 () Bool)

(declare-fun call!419675 () List!63045)

(assert (=> bm!419669 (= call!419675 ($colon$colon!1645 (exprs!5466 (ite c!980830 lt!2256087 (Context!9933 call!419480))) (ite (or c!981120 c!981124) (regTwo!31676 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))) (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))))))))

(declare-fun e!3452386 () (Set Context!9932))

(declare-fun b!5596500 () Bool)

(assert (=> b!5596500 (= e!3452386 (set.insert (ite c!980830 lt!2256087 (Context!9933 call!419480)) (as set.empty (Set Context!9932))))))

(declare-fun b!5596501 () Bool)

(assert (=> b!5596501 (= e!3452386 e!3452388)))

(declare-fun c!981122 () Bool)

(assert (=> b!5596501 (= c!981122 (is-Union!15582 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))))))

(declare-fun b!5596502 () Bool)

(declare-fun e!3452384 () (Set Context!9932))

(assert (=> b!5596502 (= e!3452384 (as set.empty (Set Context!9932)))))

(declare-fun bm!419670 () Bool)

(declare-fun call!419676 () List!63045)

(assert (=> bm!419670 (= call!419676 call!419675)))

(declare-fun b!5596503 () Bool)

(assert (=> b!5596503 (= e!3452385 call!419674)))

(declare-fun d!1768975 () Bool)

(declare-fun c!981123 () Bool)

(assert (=> d!1768975 (= c!981123 (and (is-ElementMatch!15582 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))) (= (c!980755 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))) (h!69370 s!2326))))))

(assert (=> d!1768975 (= (derivationStepZipperDown!924 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))) (ite c!980830 lt!2256087 (Context!9933 call!419480)) (h!69370 s!2326)) e!3452386)))

(declare-fun b!5596496 () Bool)

(declare-fun e!3452387 () Bool)

(assert (=> b!5596496 (= e!3452387 (nullable!5614 (regOne!31676 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))))))))

(declare-fun b!5596504 () Bool)

(assert (=> b!5596504 (= e!3452384 call!419674)))

(declare-fun bm!419671 () Bool)

(assert (=> bm!419671 (= call!419678 (derivationStepZipperDown!924 (ite c!981122 (regTwo!31677 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))) (ite c!981120 (regTwo!31676 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))) (ite c!981124 (regOne!31676 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))) (reg!15911 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))))))) (ite (or c!981122 c!981120) (ite c!980830 lt!2256087 (Context!9933 call!419480)) (Context!9933 call!419676)) (h!69370 s!2326)))))

(declare-fun bm!419672 () Bool)

(assert (=> bm!419672 (= call!419677 call!419678)))

(declare-fun b!5596505 () Bool)

(declare-fun c!981121 () Bool)

(assert (=> b!5596505 (= c!981121 (is-Star!15582 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))))))

(assert (=> b!5596505 (= e!3452385 e!3452384)))

(declare-fun b!5596506 () Bool)

(assert (=> b!5596506 (= c!981120 e!3452387)))

(declare-fun res!2374000 () Bool)

(assert (=> b!5596506 (=> (not res!2374000) (not e!3452387))))

(assert (=> b!5596506 (= res!2374000 (is-Concat!24427 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))))))

(assert (=> b!5596506 (= e!3452388 e!3452383)))

(declare-fun bm!419673 () Bool)

(assert (=> bm!419673 (= call!419673 (derivationStepZipperDown!924 (ite c!981122 (regOne!31677 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))))) (regOne!31676 (ite c!980830 (regOne!31677 (regTwo!31677 (regOne!31676 r!7292))) (regOne!31676 (regTwo!31677 (regOne!31676 r!7292)))))) (ite c!981122 (ite c!980830 lt!2256087 (Context!9933 call!419480)) (Context!9933 call!419675)) (h!69370 s!2326)))))

(assert (= (and d!1768975 c!981123) b!5596500))

(assert (= (and d!1768975 (not c!981123)) b!5596501))

(assert (= (and b!5596501 c!981122) b!5596497))

(assert (= (and b!5596501 (not c!981122)) b!5596506))

(assert (= (and b!5596506 res!2374000) b!5596496))

(assert (= (and b!5596506 c!981120) b!5596499))

(assert (= (and b!5596506 (not c!981120)) b!5596498))

(assert (= (and b!5596498 c!981124) b!5596503))

(assert (= (and b!5596498 (not c!981124)) b!5596505))

(assert (= (and b!5596505 c!981121) b!5596504))

(assert (= (and b!5596505 (not c!981121)) b!5596502))

(assert (= (or b!5596503 b!5596504) bm!419670))

(assert (= (or b!5596503 b!5596504) bm!419668))

(assert (= (or b!5596499 bm!419670) bm!419669))

(assert (= (or b!5596499 bm!419668) bm!419672))

(assert (= (or b!5596497 bm!419672) bm!419671))

(assert (= (or b!5596497 b!5596499) bm!419673))

(declare-fun m!6575654 () Bool)

(assert (=> bm!419671 m!6575654))

(declare-fun m!6575656 () Bool)

(assert (=> bm!419673 m!6575656))

(declare-fun m!6575658 () Bool)

(assert (=> b!5596500 m!6575658))

(declare-fun m!6575660 () Bool)

(assert (=> bm!419669 m!6575660))

(declare-fun m!6575662 () Bool)

(assert (=> b!5596496 m!6575662))

(assert (=> bm!419478 d!1768975))

(declare-fun d!1768977 () Bool)

(assert (=> d!1768977 (= (nullable!5614 r!7292) (nullableFct!1723 r!7292))))

(declare-fun bs!1293910 () Bool)

(assert (= bs!1293910 d!1768977))

(declare-fun m!6575664 () Bool)

(assert (=> bs!1293910 m!6575664))

(assert (=> b!5595407 d!1768977))

(declare-fun bs!1293911 () Bool)

(declare-fun d!1768979 () Bool)

(assert (= bs!1293911 (and d!1768979 d!1768657)))

(declare-fun lambda!300488 () Int)

(assert (=> bs!1293911 (= lambda!300488 lambda!300429)))

(declare-fun bs!1293912 () Bool)

(assert (= bs!1293912 (and d!1768979 d!1768805)))

(assert (=> bs!1293912 (= lambda!300488 lambda!300465)))

(declare-fun bs!1293913 () Bool)

(assert (= bs!1293913 (and d!1768979 d!1768661)))

(assert (=> bs!1293913 (= lambda!300488 lambda!300432)))

(declare-fun bs!1293914 () Bool)

(assert (= bs!1293914 (and d!1768979 d!1768883)))

(assert (=> bs!1293914 (= lambda!300488 lambda!300472)))

(declare-fun bs!1293915 () Bool)

(assert (= bs!1293915 (and d!1768979 d!1768913)))

(assert (=> bs!1293915 (= lambda!300488 lambda!300479)))

(declare-fun bs!1293916 () Bool)

(assert (= bs!1293916 (and d!1768979 d!1768639)))

(assert (=> bs!1293916 (= lambda!300488 lambda!300426)))

(declare-fun bs!1293917 () Bool)

(assert (= bs!1293917 (and d!1768979 d!1768593)))

(assert (=> bs!1293917 (= lambda!300488 lambda!300422)))

(declare-fun bs!1293918 () Bool)

(assert (= bs!1293918 (and d!1768979 d!1768595)))

(assert (=> bs!1293918 (= lambda!300488 lambda!300425)))

(declare-fun e!3452389 () Bool)

(assert (=> d!1768979 e!3452389))

(declare-fun res!2374002 () Bool)

(assert (=> d!1768979 (=> (not res!2374002) (not e!3452389))))

(declare-fun lt!2256326 () Regex!15582)

(assert (=> d!1768979 (= res!2374002 (validRegex!7318 lt!2256326))))

(declare-fun e!3452393 () Regex!15582)

(assert (=> d!1768979 (= lt!2256326 e!3452393)))

(declare-fun c!981127 () Bool)

(declare-fun e!3452392 () Bool)

(assert (=> d!1768979 (= c!981127 e!3452392)))

(declare-fun res!2374001 () Bool)

(assert (=> d!1768979 (=> (not res!2374001) (not e!3452392))))

(assert (=> d!1768979 (= res!2374001 (is-Cons!62921 (t!376327 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> d!1768979 (forall!14749 (t!376327 (exprs!5466 (h!69371 zl!343))) lambda!300488)))

(assert (=> d!1768979 (= (generalisedConcat!1197 (t!376327 (exprs!5466 (h!69371 zl!343)))) lt!2256326)))

(declare-fun b!5596507 () Bool)

(declare-fun e!3452391 () Bool)

(assert (=> b!5596507 (= e!3452391 (isConcat!659 lt!2256326))))

(declare-fun b!5596508 () Bool)

(declare-fun e!3452390 () Bool)

(assert (=> b!5596508 (= e!3452390 (isEmptyExpr!1136 lt!2256326))))

(declare-fun b!5596509 () Bool)

(assert (=> b!5596509 (= e!3452393 (h!69369 (t!376327 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596510 () Bool)

(assert (=> b!5596510 (= e!3452391 (= lt!2256326 (head!11936 (t!376327 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5596511 () Bool)

(assert (=> b!5596511 (= e!3452392 (isEmpty!34744 (t!376327 (t!376327 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5596512 () Bool)

(declare-fun e!3452394 () Regex!15582)

(assert (=> b!5596512 (= e!3452393 e!3452394)))

(declare-fun c!981126 () Bool)

(assert (=> b!5596512 (= c!981126 (is-Cons!62921 (t!376327 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596513 () Bool)

(assert (=> b!5596513 (= e!3452394 (Concat!24427 (h!69369 (t!376327 (exprs!5466 (h!69371 zl!343)))) (generalisedConcat!1197 (t!376327 (t!376327 (exprs!5466 (h!69371 zl!343)))))))))

(declare-fun b!5596514 () Bool)

(assert (=> b!5596514 (= e!3452390 e!3452391)))

(declare-fun c!981128 () Bool)

(assert (=> b!5596514 (= c!981128 (isEmpty!34744 (tail!11031 (t!376327 (exprs!5466 (h!69371 zl!343))))))))

(declare-fun b!5596515 () Bool)

(assert (=> b!5596515 (= e!3452389 e!3452390)))

(declare-fun c!981125 () Bool)

(assert (=> b!5596515 (= c!981125 (isEmpty!34744 (t!376327 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596516 () Bool)

(assert (=> b!5596516 (= e!3452394 EmptyExpr!15582)))

(assert (= (and d!1768979 res!2374001) b!5596511))

(assert (= (and d!1768979 c!981127) b!5596509))

(assert (= (and d!1768979 (not c!981127)) b!5596512))

(assert (= (and b!5596512 c!981126) b!5596513))

(assert (= (and b!5596512 (not c!981126)) b!5596516))

(assert (= (and d!1768979 res!2374002) b!5596515))

(assert (= (and b!5596515 c!981125) b!5596508))

(assert (= (and b!5596515 (not c!981125)) b!5596514))

(assert (= (and b!5596514 c!981128) b!5596510))

(assert (= (and b!5596514 (not c!981128)) b!5596507))

(declare-fun m!6575666 () Bool)

(assert (=> b!5596510 m!6575666))

(assert (=> b!5596515 m!6574482))

(declare-fun m!6575668 () Bool)

(assert (=> b!5596513 m!6575668))

(declare-fun m!6575670 () Bool)

(assert (=> d!1768979 m!6575670))

(declare-fun m!6575672 () Bool)

(assert (=> d!1768979 m!6575672))

(declare-fun m!6575674 () Bool)

(assert (=> b!5596511 m!6575674))

(declare-fun m!6575676 () Bool)

(assert (=> b!5596514 m!6575676))

(assert (=> b!5596514 m!6575676))

(declare-fun m!6575678 () Bool)

(assert (=> b!5596514 m!6575678))

(declare-fun m!6575680 () Bool)

(assert (=> b!5596508 m!6575680))

(declare-fun m!6575682 () Bool)

(assert (=> b!5596507 m!6575682))

(assert (=> b!5595534 d!1768979))

(declare-fun b!5596517 () Bool)

(declare-fun e!3452396 () (Set Context!9932))

(declare-fun call!419679 () (Set Context!9932))

(assert (=> b!5596517 (= e!3452396 (set.union call!419679 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256099)))))) (h!69370 s!2326))))))

(declare-fun b!5596518 () Bool)

(declare-fun e!3452397 () Bool)

(assert (=> b!5596518 (= e!3452397 (nullable!5614 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256099)))))))))

(declare-fun d!1768981 () Bool)

(declare-fun c!981130 () Bool)

(assert (=> d!1768981 (= c!981130 e!3452397)))

(declare-fun res!2374003 () Bool)

(assert (=> d!1768981 (=> (not res!2374003) (not e!3452397))))

(assert (=> d!1768981 (= res!2374003 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256099))))))))

(assert (=> d!1768981 (= (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 lt!2256099))) (h!69370 s!2326)) e!3452396)))

(declare-fun bm!419674 () Bool)

(assert (=> bm!419674 (= call!419679 (derivationStepZipperDown!924 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256099))))) (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256099)))))) (h!69370 s!2326)))))

(declare-fun b!5596519 () Bool)

(declare-fun e!3452395 () (Set Context!9932))

(assert (=> b!5596519 (= e!3452395 (as set.empty (Set Context!9932)))))

(declare-fun b!5596520 () Bool)

(assert (=> b!5596520 (= e!3452395 call!419679)))

(declare-fun b!5596521 () Bool)

(assert (=> b!5596521 (= e!3452396 e!3452395)))

(declare-fun c!981129 () Bool)

(assert (=> b!5596521 (= c!981129 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256099))))))))

(assert (= (and d!1768981 res!2374003) b!5596518))

(assert (= (and d!1768981 c!981130) b!5596517))

(assert (= (and d!1768981 (not c!981130)) b!5596521))

(assert (= (and b!5596521 c!981129) b!5596520))

(assert (= (and b!5596521 (not c!981129)) b!5596519))

(assert (= (or b!5596517 b!5596520) bm!419674))

(declare-fun m!6575684 () Bool)

(assert (=> b!5596517 m!6575684))

(declare-fun m!6575686 () Bool)

(assert (=> b!5596518 m!6575686))

(declare-fun m!6575688 () Bool)

(assert (=> bm!419674 m!6575688))

(assert (=> b!5595569 d!1768981))

(declare-fun d!1768983 () Bool)

(assert (=> d!1768983 (= (nullable!5614 (h!69369 (exprs!5466 lt!2256105))) (nullableFct!1723 (h!69369 (exprs!5466 lt!2256105))))))

(declare-fun bs!1293919 () Bool)

(assert (= bs!1293919 d!1768983))

(declare-fun m!6575690 () Bool)

(assert (=> bs!1293919 m!6575690))

(assert (=> b!5595565 d!1768983))

(declare-fun e!3452399 () (Set Context!9932))

(declare-fun call!419680 () (Set Context!9932))

(declare-fun b!5596522 () Bool)

(assert (=> b!5596522 (= e!3452399 (set.union call!419680 (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256087)))))) (h!69370 s!2326))))))

(declare-fun b!5596523 () Bool)

(declare-fun e!3452400 () Bool)

(assert (=> b!5596523 (= e!3452400 (nullable!5614 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256087)))))))))

(declare-fun d!1768985 () Bool)

(declare-fun c!981132 () Bool)

(assert (=> d!1768985 (= c!981132 e!3452400)))

(declare-fun res!2374004 () Bool)

(assert (=> d!1768985 (=> (not res!2374004) (not e!3452400))))

(assert (=> d!1768985 (= res!2374004 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256087))))))))

(assert (=> d!1768985 (= (derivationStepZipperUp!850 (Context!9933 (t!376327 (exprs!5466 lt!2256087))) (h!69370 s!2326)) e!3452399)))

(declare-fun bm!419675 () Bool)

(assert (=> bm!419675 (= call!419680 (derivationStepZipperDown!924 (h!69369 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256087))))) (Context!9933 (t!376327 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256087)))))) (h!69370 s!2326)))))

(declare-fun b!5596524 () Bool)

(declare-fun e!3452398 () (Set Context!9932))

(assert (=> b!5596524 (= e!3452398 (as set.empty (Set Context!9932)))))

(declare-fun b!5596525 () Bool)

(assert (=> b!5596525 (= e!3452398 call!419680)))

(declare-fun b!5596526 () Bool)

(assert (=> b!5596526 (= e!3452399 e!3452398)))

(declare-fun c!981131 () Bool)

(assert (=> b!5596526 (= c!981131 (is-Cons!62921 (exprs!5466 (Context!9933 (t!376327 (exprs!5466 lt!2256087))))))))

(assert (= (and d!1768985 res!2374004) b!5596523))

(assert (= (and d!1768985 c!981132) b!5596522))

(assert (= (and d!1768985 (not c!981132)) b!5596526))

(assert (= (and b!5596526 c!981131) b!5596525))

(assert (= (and b!5596526 (not c!981131)) b!5596524))

(assert (= (or b!5596522 b!5596525) bm!419675))

(declare-fun m!6575692 () Bool)

(assert (=> b!5596522 m!6575692))

(declare-fun m!6575694 () Bool)

(assert (=> b!5596523 m!6575694))

(declare-fun m!6575696 () Bool)

(assert (=> bm!419675 m!6575696))

(assert (=> b!5595597 d!1768985))

(assert (=> b!5595596 d!1768571))

(assert (=> d!1768611 d!1768601))

(declare-fun d!1768987 () Bool)

(assert (=> d!1768987 (= (flatMap!1195 lt!2256088 lambda!300389) (dynLambda!24612 lambda!300389 lt!2256099))))

(assert (=> d!1768987 true))

(declare-fun _$13!2208 () Unit!155748)

(assert (=> d!1768987 (= (choose!42434 lt!2256088 lt!2256099 lambda!300389) _$13!2208)))

(declare-fun b_lambda!212065 () Bool)

(assert (=> (not b_lambda!212065) (not d!1768987)))

(declare-fun bs!1293920 () Bool)

(assert (= bs!1293920 d!1768987))

(assert (=> bs!1293920 m!6574512))

(assert (=> bs!1293920 m!6574824))

(assert (=> d!1768611 d!1768987))

(declare-fun bs!1293921 () Bool)

(declare-fun d!1768989 () Bool)

(assert (= bs!1293921 (and d!1768989 d!1768947)))

(declare-fun lambda!300489 () Int)

(assert (=> bs!1293921 (= lambda!300489 lambda!300482)))

(declare-fun bs!1293922 () Bool)

(assert (= bs!1293922 (and d!1768989 d!1768967)))

(assert (=> bs!1293922 (= lambda!300489 lambda!300486)))

(declare-fun bs!1293923 () Bool)

(assert (= bs!1293923 (and d!1768989 d!1768965)))

(assert (=> bs!1293923 (= lambda!300489 lambda!300485)))

(declare-fun bs!1293924 () Bool)

(assert (= bs!1293924 (and d!1768989 d!1768797)))

(assert (=> bs!1293924 (= lambda!300489 lambda!300464)))

(declare-fun bs!1293925 () Bool)

(assert (= bs!1293925 (and d!1768989 d!1768921)))

(assert (=> bs!1293925 (= lambda!300489 lambda!300480)))

(declare-fun bs!1293926 () Bool)

(assert (= bs!1293926 (and d!1768989 d!1768895)))

(assert (=> bs!1293926 (= lambda!300489 lambda!300475)))

(declare-fun bs!1293927 () Bool)

(assert (= bs!1293927 (and d!1768989 d!1768779)))

(assert (=> bs!1293927 (= lambda!300489 lambda!300463)))

(declare-fun bs!1293928 () Bool)

(assert (= bs!1293928 (and d!1768989 d!1768815)))

(assert (=> bs!1293928 (= lambda!300489 lambda!300466)))

(assert (=> d!1768989 (= (nullableZipper!1577 lt!2256097) (exists!2171 lt!2256097 lambda!300489))))

(declare-fun bs!1293929 () Bool)

(assert (= bs!1293929 d!1768989))

(declare-fun m!6575698 () Bool)

(assert (=> bs!1293929 m!6575698))

(assert (=> b!5595423 d!1768989))

(declare-fun d!1768991 () Bool)

(declare-fun c!981133 () Bool)

(assert (=> d!1768991 (= c!981133 (isEmpty!34748 (tail!11028 (t!376328 s!2326))))))

(declare-fun e!3452401 () Bool)

(assert (=> d!1768991 (= (matchZipper!1720 (derivationStepZipper!1681 (set.union lt!2256095 lt!2256084) (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))) e!3452401)))

(declare-fun b!5596527 () Bool)

(assert (=> b!5596527 (= e!3452401 (nullableZipper!1577 (derivationStepZipper!1681 (set.union lt!2256095 lt!2256084) (head!11933 (t!376328 s!2326)))))))

(declare-fun b!5596528 () Bool)

(assert (=> b!5596528 (= e!3452401 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 (set.union lt!2256095 lt!2256084) (head!11933 (t!376328 s!2326))) (head!11933 (tail!11028 (t!376328 s!2326)))) (tail!11028 (tail!11028 (t!376328 s!2326)))))))

(assert (= (and d!1768991 c!981133) b!5596527))

(assert (= (and d!1768991 (not c!981133)) b!5596528))

(assert (=> d!1768991 m!6574722))

(assert (=> d!1768991 m!6575358))

(assert (=> b!5596527 m!6574862))

(declare-fun m!6575700 () Bool)

(assert (=> b!5596527 m!6575700))

(assert (=> b!5596528 m!6574722))

(assert (=> b!5596528 m!6575362))

(assert (=> b!5596528 m!6574862))

(assert (=> b!5596528 m!6575362))

(declare-fun m!6575702 () Bool)

(assert (=> b!5596528 m!6575702))

(assert (=> b!5596528 m!6574722))

(assert (=> b!5596528 m!6575366))

(assert (=> b!5596528 m!6575702))

(assert (=> b!5596528 m!6575366))

(declare-fun m!6575704 () Bool)

(assert (=> b!5596528 m!6575704))

(assert (=> b!5595589 d!1768991))

(declare-fun bs!1293930 () Bool)

(declare-fun d!1768993 () Bool)

(assert (= bs!1293930 (and d!1768993 d!1768973)))

(declare-fun lambda!300490 () Int)

(assert (=> bs!1293930 (= lambda!300490 lambda!300487)))

(declare-fun bs!1293931 () Bool)

(assert (= bs!1293931 (and d!1768993 d!1768927)))

(assert (=> bs!1293931 (= lambda!300490 lambda!300481)))

(declare-fun bs!1293932 () Bool)

(assert (= bs!1293932 (and d!1768993 d!1768859)))

(assert (=> bs!1293932 (= lambda!300490 lambda!300471)))

(declare-fun bs!1293933 () Bool)

(assert (= bs!1293933 (and d!1768993 d!1768855)))

(assert (=> bs!1293933 (= (= (head!11933 (t!376328 s!2326)) (head!11933 s!2326)) (= lambda!300490 lambda!300470))))

(declare-fun bs!1293934 () Bool)

(assert (= bs!1293934 (and d!1768993 d!1768819)))

(assert (=> bs!1293934 (= lambda!300490 lambda!300469)))

(declare-fun bs!1293935 () Bool)

(assert (= bs!1293935 (and d!1768993 b!5595134)))

(assert (=> bs!1293935 (= (= (head!11933 (t!376328 s!2326)) (h!69370 s!2326)) (= lambda!300490 lambda!300389))))

(assert (=> d!1768993 true))

(assert (=> d!1768993 (= (derivationStepZipper!1681 (set.union lt!2256095 lt!2256084) (head!11933 (t!376328 s!2326))) (flatMap!1195 (set.union lt!2256095 lt!2256084) lambda!300490))))

(declare-fun bs!1293936 () Bool)

(assert (= bs!1293936 d!1768993))

(declare-fun m!6575706 () Bool)

(assert (=> bs!1293936 m!6575706))

(assert (=> b!5595589 d!1768993))

(assert (=> b!5595589 d!1768821))

(assert (=> b!5595589 d!1768823))

(declare-fun d!1768995 () Bool)

(declare-fun c!981134 () Bool)

(assert (=> d!1768995 (= c!981134 (isEmpty!34748 (t!376328 s!2326)))))

(declare-fun e!3452402 () Bool)

(assert (=> d!1768995 (= (matchZipper!1720 (set.union lt!2256095 lt!2256097) (t!376328 s!2326)) e!3452402)))

(declare-fun b!5596529 () Bool)

(assert (=> b!5596529 (= e!3452402 (nullableZipper!1577 (set.union lt!2256095 lt!2256097)))))

(declare-fun b!5596530 () Bool)

(assert (=> b!5596530 (= e!3452402 (matchZipper!1720 (derivationStepZipper!1681 (set.union lt!2256095 lt!2256097) (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))))))

(assert (= (and d!1768995 c!981134) b!5596529))

(assert (= (and d!1768995 (not c!981134)) b!5596530))

(assert (=> d!1768995 m!6574714))

(declare-fun m!6575708 () Bool)

(assert (=> b!5596529 m!6575708))

(assert (=> b!5596530 m!6574718))

(assert (=> b!5596530 m!6574718))

(declare-fun m!6575710 () Bool)

(assert (=> b!5596530 m!6575710))

(assert (=> b!5596530 m!6574722))

(assert (=> b!5596530 m!6575710))

(assert (=> b!5596530 m!6574722))

(declare-fun m!6575712 () Bool)

(assert (=> b!5596530 m!6575712))

(assert (=> d!1768637 d!1768995))

(assert (=> d!1768637 d!1768635))

(declare-fun e!3452403 () Bool)

(declare-fun d!1768997 () Bool)

(assert (=> d!1768997 (= (matchZipper!1720 (set.union lt!2256095 lt!2256097) (t!376328 s!2326)) e!3452403)))

(declare-fun res!2374005 () Bool)

(assert (=> d!1768997 (=> res!2374005 e!3452403)))

(assert (=> d!1768997 (= res!2374005 (matchZipper!1720 lt!2256095 (t!376328 s!2326)))))

(assert (=> d!1768997 true))

(declare-fun _$48!1192 () Unit!155748)

(assert (=> d!1768997 (= (choose!42431 lt!2256095 lt!2256097 (t!376328 s!2326)) _$48!1192)))

(declare-fun b!5596531 () Bool)

(assert (=> b!5596531 (= e!3452403 (matchZipper!1720 lt!2256097 (t!376328 s!2326)))))

(assert (= (and d!1768997 (not res!2374005)) b!5596531))

(assert (=> d!1768997 m!6574892))

(assert (=> d!1768997 m!6574534))

(assert (=> b!5596531 m!6574466))

(assert (=> d!1768637 d!1768997))

(declare-fun d!1768999 () Bool)

(assert (=> d!1768999 (= (isEmpty!34744 (t!376327 (unfocusZipperList!1010 zl!343))) (is-Nil!62921 (t!376327 (unfocusZipperList!1010 zl!343))))))

(assert (=> b!5595662 d!1768999))

(declare-fun d!1769001 () Bool)

(declare-fun c!981135 () Bool)

(assert (=> d!1769001 (= c!981135 (isEmpty!34748 (tail!11028 (t!376328 s!2326))))))

(declare-fun e!3452404 () Bool)

(assert (=> d!1769001 (= (matchZipper!1720 (derivationStepZipper!1681 lt!2256094 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))) e!3452404)))

(declare-fun b!5596532 () Bool)

(assert (=> b!5596532 (= e!3452404 (nullableZipper!1577 (derivationStepZipper!1681 lt!2256094 (head!11933 (t!376328 s!2326)))))))

(declare-fun b!5596533 () Bool)

(assert (=> b!5596533 (= e!3452404 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 lt!2256094 (head!11933 (t!376328 s!2326))) (head!11933 (tail!11028 (t!376328 s!2326)))) (tail!11028 (tail!11028 (t!376328 s!2326)))))))

(assert (= (and d!1769001 c!981135) b!5596532))

(assert (= (and d!1769001 (not c!981135)) b!5596533))

(assert (=> d!1769001 m!6574722))

(assert (=> d!1769001 m!6575358))

(assert (=> b!5596532 m!6574870))

(declare-fun m!6575714 () Bool)

(assert (=> b!5596532 m!6575714))

(assert (=> b!5596533 m!6574722))

(assert (=> b!5596533 m!6575362))

(assert (=> b!5596533 m!6574870))

(assert (=> b!5596533 m!6575362))

(declare-fun m!6575716 () Bool)

(assert (=> b!5596533 m!6575716))

(assert (=> b!5596533 m!6574722))

(assert (=> b!5596533 m!6575366))

(assert (=> b!5596533 m!6575716))

(assert (=> b!5596533 m!6575366))

(declare-fun m!6575718 () Bool)

(assert (=> b!5596533 m!6575718))

(assert (=> b!5595591 d!1769001))

(declare-fun bs!1293937 () Bool)

(declare-fun d!1769003 () Bool)

(assert (= bs!1293937 (and d!1769003 d!1768973)))

(declare-fun lambda!300491 () Int)

(assert (=> bs!1293937 (= lambda!300491 lambda!300487)))

(declare-fun bs!1293938 () Bool)

(assert (= bs!1293938 (and d!1769003 d!1768993)))

(assert (=> bs!1293938 (= lambda!300491 lambda!300490)))

(declare-fun bs!1293939 () Bool)

(assert (= bs!1293939 (and d!1769003 d!1768927)))

(assert (=> bs!1293939 (= lambda!300491 lambda!300481)))

(declare-fun bs!1293940 () Bool)

(assert (= bs!1293940 (and d!1769003 d!1768859)))

(assert (=> bs!1293940 (= lambda!300491 lambda!300471)))

(declare-fun bs!1293941 () Bool)

(assert (= bs!1293941 (and d!1769003 d!1768855)))

(assert (=> bs!1293941 (= (= (head!11933 (t!376328 s!2326)) (head!11933 s!2326)) (= lambda!300491 lambda!300470))))

(declare-fun bs!1293942 () Bool)

(assert (= bs!1293942 (and d!1769003 d!1768819)))

(assert (=> bs!1293942 (= lambda!300491 lambda!300469)))

(declare-fun bs!1293943 () Bool)

(assert (= bs!1293943 (and d!1769003 b!5595134)))

(assert (=> bs!1293943 (= (= (head!11933 (t!376328 s!2326)) (h!69370 s!2326)) (= lambda!300491 lambda!300389))))

(assert (=> d!1769003 true))

(assert (=> d!1769003 (= (derivationStepZipper!1681 lt!2256094 (head!11933 (t!376328 s!2326))) (flatMap!1195 lt!2256094 lambda!300491))))

(declare-fun bs!1293944 () Bool)

(assert (= bs!1293944 d!1769003))

(declare-fun m!6575720 () Bool)

(assert (=> bs!1293944 m!6575720))

(assert (=> b!5595591 d!1769003))

(assert (=> b!5595591 d!1768821))

(assert (=> b!5595591 d!1768823))

(assert (=> d!1768625 d!1768835))

(declare-fun bm!419676 () Bool)

(declare-fun call!419682 () (Set Context!9932))

(declare-fun call!419685 () (Set Context!9932))

(assert (=> bm!419676 (= call!419682 call!419685)))

(declare-fun b!5596535 () Bool)

(declare-fun e!3452410 () (Set Context!9932))

(declare-fun call!419681 () (Set Context!9932))

(declare-fun call!419686 () (Set Context!9932))

(assert (=> b!5596535 (= e!3452410 (set.union call!419681 call!419686))))

(declare-fun b!5596536 () Bool)

(declare-fun e!3452405 () (Set Context!9932))

(declare-fun e!3452407 () (Set Context!9932))

(assert (=> b!5596536 (= e!3452405 e!3452407)))

(declare-fun c!981140 () Bool)

(assert (=> b!5596536 (= c!981140 (is-Concat!24427 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))))))

(declare-fun b!5596537 () Bool)

(assert (=> b!5596537 (= e!3452405 (set.union call!419681 call!419685))))

(declare-fun c!981136 () Bool)

(declare-fun bm!419677 () Bool)

(declare-fun call!419683 () List!63045)

(assert (=> bm!419677 (= call!419683 ($colon$colon!1645 (exprs!5466 (ite (or c!980830 c!980828) lt!2256087 (Context!9933 call!419481))) (ite (or c!981136 c!981140) (regTwo!31676 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))) (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292)))))))))))

(declare-fun b!5596538 () Bool)

(declare-fun e!3452408 () (Set Context!9932))

(assert (=> b!5596538 (= e!3452408 (set.insert (ite (or c!980830 c!980828) lt!2256087 (Context!9933 call!419481)) (as set.empty (Set Context!9932))))))

(declare-fun b!5596539 () Bool)

(assert (=> b!5596539 (= e!3452408 e!3452410)))

(declare-fun c!981138 () Bool)

(assert (=> b!5596539 (= c!981138 (is-Union!15582 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))))))

(declare-fun b!5596540 () Bool)

(declare-fun e!3452406 () (Set Context!9932))

(assert (=> b!5596540 (= e!3452406 (as set.empty (Set Context!9932)))))

(declare-fun bm!419678 () Bool)

(declare-fun call!419684 () List!63045)

(assert (=> bm!419678 (= call!419684 call!419683)))

(declare-fun b!5596541 () Bool)

(assert (=> b!5596541 (= e!3452407 call!419682)))

(declare-fun c!981139 () Bool)

(declare-fun d!1769005 () Bool)

(assert (=> d!1769005 (= c!981139 (and (is-ElementMatch!15582 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))) (= (c!980755 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))) (h!69370 s!2326))))))

(assert (=> d!1769005 (= (derivationStepZipperDown!924 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292)))))) (ite (or c!980830 c!980828) lt!2256087 (Context!9933 call!419481)) (h!69370 s!2326)) e!3452408)))

(declare-fun e!3452409 () Bool)

(declare-fun b!5596534 () Bool)

(assert (=> b!5596534 (= e!3452409 (nullable!5614 (regOne!31676 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292)))))))))))

(declare-fun b!5596542 () Bool)

(assert (=> b!5596542 (= e!3452406 call!419682)))

(declare-fun bm!419679 () Bool)

(assert (=> bm!419679 (= call!419686 (derivationStepZipperDown!924 (ite c!981138 (regTwo!31677 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))) (ite c!981136 (regTwo!31676 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))) (ite c!981140 (regOne!31676 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))) (reg!15911 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292)))))))))) (ite (or c!981138 c!981136) (ite (or c!980830 c!980828) lt!2256087 (Context!9933 call!419481)) (Context!9933 call!419684)) (h!69370 s!2326)))))

(declare-fun bm!419680 () Bool)

(assert (=> bm!419680 (= call!419685 call!419686)))

(declare-fun b!5596543 () Bool)

(declare-fun c!981137 () Bool)

(assert (=> b!5596543 (= c!981137 (is-Star!15582 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))))))

(assert (=> b!5596543 (= e!3452407 e!3452406)))

(declare-fun b!5596544 () Bool)

(assert (=> b!5596544 (= c!981136 e!3452409)))

(declare-fun res!2374006 () Bool)

(assert (=> b!5596544 (=> (not res!2374006) (not e!3452409))))

(assert (=> b!5596544 (= res!2374006 (is-Concat!24427 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))))))

(assert (=> b!5596544 (= e!3452410 e!3452405)))

(declare-fun bm!419681 () Bool)

(assert (=> bm!419681 (= call!419681 (derivationStepZipperDown!924 (ite c!981138 (regOne!31677 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292))))))) (regOne!31676 (ite c!980830 (regTwo!31677 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980828 (regTwo!31676 (regTwo!31677 (regOne!31676 r!7292))) (ite c!980832 (regOne!31676 (regTwo!31677 (regOne!31676 r!7292))) (reg!15911 (regTwo!31677 (regOne!31676 r!7292)))))))) (ite c!981138 (ite (or c!980830 c!980828) lt!2256087 (Context!9933 call!419481)) (Context!9933 call!419683)) (h!69370 s!2326)))))

(assert (= (and d!1769005 c!981139) b!5596538))

(assert (= (and d!1769005 (not c!981139)) b!5596539))

(assert (= (and b!5596539 c!981138) b!5596535))

(assert (= (and b!5596539 (not c!981138)) b!5596544))

(assert (= (and b!5596544 res!2374006) b!5596534))

(assert (= (and b!5596544 c!981136) b!5596537))

(assert (= (and b!5596544 (not c!981136)) b!5596536))

(assert (= (and b!5596536 c!981140) b!5596541))

(assert (= (and b!5596536 (not c!981140)) b!5596543))

(assert (= (and b!5596543 c!981137) b!5596542))

(assert (= (and b!5596543 (not c!981137)) b!5596540))

(assert (= (or b!5596541 b!5596542) bm!419678))

(assert (= (or b!5596541 b!5596542) bm!419676))

(assert (= (or b!5596537 bm!419678) bm!419677))

(assert (= (or b!5596537 bm!419676) bm!419680))

(assert (= (or b!5596535 bm!419680) bm!419679))

(assert (= (or b!5596535 b!5596537) bm!419681))

(declare-fun m!6575722 () Bool)

(assert (=> bm!419679 m!6575722))

(declare-fun m!6575724 () Bool)

(assert (=> bm!419681 m!6575724))

(declare-fun m!6575726 () Bool)

(assert (=> b!5596538 m!6575726))

(declare-fun m!6575728 () Bool)

(assert (=> bm!419677 m!6575728))

(declare-fun m!6575730 () Bool)

(assert (=> b!5596534 m!6575730))

(assert (=> bm!419476 d!1769005))

(declare-fun d!1769007 () Bool)

(assert (=> d!1769007 (= (Exists!2682 lambda!300440) (choose!42440 lambda!300440))))

(declare-fun bs!1293945 () Bool)

(assert (= bs!1293945 d!1769007))

(declare-fun m!6575732 () Bool)

(assert (=> bs!1293945 m!6575732))

(assert (=> d!1768691 d!1769007))

(declare-fun d!1769009 () Bool)

(assert (=> d!1769009 (= (Exists!2682 lambda!300441) (choose!42440 lambda!300441))))

(declare-fun bs!1293946 () Bool)

(assert (= bs!1293946 d!1769009))

(declare-fun m!6575734 () Bool)

(assert (=> bs!1293946 m!6575734))

(assert (=> d!1768691 d!1769009))

(declare-fun bs!1293947 () Bool)

(declare-fun d!1769011 () Bool)

(assert (= bs!1293947 (and d!1769011 b!5596368)))

(declare-fun lambda!300496 () Int)

(assert (=> bs!1293947 (not (= lambda!300496 lambda!300473))))

(declare-fun bs!1293948 () Bool)

(assert (= bs!1293948 (and d!1769011 d!1768687)))

(assert (=> bs!1293948 (= lambda!300496 lambda!300435)))

(declare-fun bs!1293949 () Bool)

(assert (= bs!1293949 (and d!1769011 b!5596491)))

(assert (=> bs!1293949 (not (= lambda!300496 lambda!300483))))

(declare-fun bs!1293950 () Bool)

(assert (= bs!1293950 (and d!1769011 d!1768691)))

(assert (=> bs!1293950 (= lambda!300496 lambda!300440)))

(declare-fun bs!1293951 () Bool)

(assert (= bs!1293951 (and d!1769011 b!5595362)))

(assert (=> bs!1293951 (not (= lambda!300496 lambda!300416))))

(declare-fun bs!1293952 () Bool)

(assert (= bs!1293952 (and d!1769011 b!5595369)))

(assert (=> bs!1293952 (not (= lambda!300496 lambda!300415))))

(declare-fun bs!1293953 () Bool)

(assert (= bs!1293953 (and d!1769011 b!5595135)))

(assert (=> bs!1293953 (= lambda!300496 lambda!300387)))

(declare-fun bs!1293954 () Bool)

(assert (= bs!1293954 (and d!1769011 d!1768903)))

(assert (=> bs!1293954 (= lambda!300496 lambda!300478)))

(declare-fun bs!1293955 () Bool)

(assert (= bs!1293955 (and d!1769011 b!5596484)))

(assert (=> bs!1293955 (not (= lambda!300496 lambda!300484))))

(assert (=> bs!1293953 (not (= lambda!300496 lambda!300388))))

(declare-fun bs!1293956 () Bool)

(assert (= bs!1293956 (and d!1769011 b!5596361)))

(assert (=> bs!1293956 (not (= lambda!300496 lambda!300474))))

(assert (=> bs!1293950 (not (= lambda!300496 lambda!300441))))

(assert (=> d!1769011 true))

(assert (=> d!1769011 true))

(assert (=> d!1769011 true))

(declare-fun lambda!300497 () Int)

(assert (=> bs!1293947 (not (= lambda!300497 lambda!300473))))

(assert (=> bs!1293948 (not (= lambda!300497 lambda!300435))))

(assert (=> bs!1293949 (not (= lambda!300497 lambda!300483))))

(assert (=> bs!1293950 (not (= lambda!300497 lambda!300440))))

(assert (=> bs!1293952 (not (= lambda!300497 lambda!300415))))

(assert (=> bs!1293953 (not (= lambda!300497 lambda!300387))))

(assert (=> bs!1293954 (not (= lambda!300497 lambda!300478))))

(assert (=> bs!1293955 (= (and (= (regOne!31676 r!7292) (regOne!31676 (regTwo!31677 r!7292))) (= (regTwo!31676 r!7292) (regTwo!31676 (regTwo!31677 r!7292)))) (= lambda!300497 lambda!300484))))

(assert (=> bs!1293953 (= lambda!300497 lambda!300388)))

(assert (=> bs!1293951 (= lambda!300497 lambda!300416)))

(declare-fun bs!1293957 () Bool)

(assert (= bs!1293957 d!1769011))

(assert (=> bs!1293957 (not (= lambda!300497 lambda!300496))))

(assert (=> bs!1293956 (= (and (= (regOne!31676 r!7292) (regOne!31676 (regOne!31677 r!7292))) (= (regTwo!31676 r!7292) (regTwo!31676 (regOne!31677 r!7292)))) (= lambda!300497 lambda!300474))))

(assert (=> bs!1293950 (= lambda!300497 lambda!300441)))

(assert (=> d!1769011 true))

(assert (=> d!1769011 true))

(assert (=> d!1769011 true))

(assert (=> d!1769011 (= (Exists!2682 lambda!300496) (Exists!2682 lambda!300497))))

(assert (=> d!1769011 true))

(declare-fun _$90!1334 () Unit!155748)

(assert (=> d!1769011 (= (choose!42442 (regOne!31676 r!7292) (regTwo!31676 r!7292) s!2326) _$90!1334)))

(declare-fun m!6575736 () Bool)

(assert (=> bs!1293957 m!6575736))

(declare-fun m!6575738 () Bool)

(assert (=> bs!1293957 m!6575738))

(assert (=> d!1768691 d!1769011))

(assert (=> d!1768691 d!1768887))

(assert (=> d!1768567 d!1768561))

(assert (=> d!1768567 d!1768555))

(declare-fun d!1769013 () Bool)

(assert (=> d!1769013 (= (matchR!7767 r!7292 s!2326) (matchRSpec!2685 r!7292 s!2326))))

(assert (=> d!1769013 true))

(declare-fun _$88!3880 () Unit!155748)

(assert (=> d!1769013 (= (choose!42428 r!7292 s!2326) _$88!3880)))

(declare-fun bs!1293958 () Bool)

(assert (= bs!1293958 d!1769013))

(assert (=> bs!1293958 m!6574490))

(assert (=> bs!1293958 m!6574488))

(assert (=> d!1768567 d!1769013))

(assert (=> d!1768567 d!1768703))

(declare-fun d!1769015 () Bool)

(assert (=> d!1769015 (= ($colon$colon!1645 (exprs!5466 lt!2256087) (ite (or c!980889 c!980893) (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (h!69369 (exprs!5466 (h!69371 zl!343))))) (Cons!62921 (ite (or c!980889 c!980893) (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))) (h!69369 (exprs!5466 (h!69371 zl!343)))) (exprs!5466 lt!2256087)))))

(assert (=> bm!419516 d!1769015))

(assert (=> b!5595619 d!1768647))

(declare-fun b!5596553 () Bool)

(declare-fun e!3452418 () Bool)

(declare-fun call!419687 () Bool)

(assert (=> b!5596553 (= e!3452418 call!419687)))

(declare-fun bm!419682 () Bool)

(declare-fun call!419688 () Bool)

(declare-fun c!981141 () Bool)

(assert (=> bm!419682 (= call!419688 (nullable!5614 (ite c!981141 (regOne!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regOne!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))

(declare-fun b!5596554 () Bool)

(declare-fun e!3452420 () Bool)

(declare-fun e!3452415 () Bool)

(assert (=> b!5596554 (= e!3452420 e!3452415)))

(assert (=> b!5596554 (= c!981141 (is-Union!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596555 () Bool)

(declare-fun e!3452416 () Bool)

(assert (=> b!5596555 (= e!3452415 e!3452416)))

(declare-fun res!2374019 () Bool)

(assert (=> b!5596555 (= res!2374019 call!419688)))

(assert (=> b!5596555 (=> (not res!2374019) (not e!3452416))))

(declare-fun b!5596556 () Bool)

(declare-fun e!3452419 () Bool)

(assert (=> b!5596556 (= e!3452419 e!3452420)))

(declare-fun res!2374015 () Bool)

(assert (=> b!5596556 (=> res!2374015 e!3452420)))

(assert (=> b!5596556 (= res!2374015 (is-Star!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun b!5596557 () Bool)

(assert (=> b!5596557 (= e!3452416 call!419687)))

(declare-fun b!5596558 () Bool)

(assert (=> b!5596558 (= e!3452415 e!3452418)))

(declare-fun res!2374018 () Bool)

(assert (=> b!5596558 (= res!2374018 call!419688)))

(assert (=> b!5596558 (=> res!2374018 e!3452418)))

(declare-fun bm!419683 () Bool)

(assert (=> bm!419683 (= call!419687 (nullable!5614 (ite c!981141 (regTwo!31677 (h!69369 (exprs!5466 (h!69371 zl!343)))) (regTwo!31676 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))

(declare-fun d!1769017 () Bool)

(declare-fun res!2374017 () Bool)

(declare-fun e!3452417 () Bool)

(assert (=> d!1769017 (=> res!2374017 e!3452417)))

(assert (=> d!1769017 (= res!2374017 (is-EmptyExpr!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> d!1769017 (= (nullableFct!1723 (h!69369 (exprs!5466 (h!69371 zl!343)))) e!3452417)))

(declare-fun b!5596559 () Bool)

(assert (=> b!5596559 (= e!3452417 e!3452419)))

(declare-fun res!2374016 () Bool)

(assert (=> b!5596559 (=> (not res!2374016) (not e!3452419))))

(assert (=> b!5596559 (= res!2374016 (and (not (is-EmptyLang!15582 (h!69369 (exprs!5466 (h!69371 zl!343))))) (not (is-ElementMatch!15582 (h!69369 (exprs!5466 (h!69371 zl!343)))))))))

(assert (= (and d!1769017 (not res!2374017)) b!5596559))

(assert (= (and b!5596559 res!2374016) b!5596556))

(assert (= (and b!5596556 (not res!2374015)) b!5596554))

(assert (= (and b!5596554 c!981141) b!5596558))

(assert (= (and b!5596554 (not c!981141)) b!5596555))

(assert (= (and b!5596558 (not res!2374018)) b!5596553))

(assert (= (and b!5596555 res!2374019) b!5596557))

(assert (= (or b!5596553 b!5596557) bm!419683))

(assert (= (or b!5596558 b!5596555) bm!419682))

(declare-fun m!6575740 () Bool)

(assert (=> bm!419682 m!6575740))

(declare-fun m!6575742 () Bool)

(assert (=> bm!419683 m!6575742))

(assert (=> d!1768647 d!1769017))

(assert (=> bs!1293760 d!1768617))

(declare-fun bs!1293959 () Bool)

(declare-fun d!1769019 () Bool)

(assert (= bs!1293959 (and d!1769019 d!1768657)))

(declare-fun lambda!300498 () Int)

(assert (=> bs!1293959 (= lambda!300498 lambda!300429)))

(declare-fun bs!1293960 () Bool)

(assert (= bs!1293960 (and d!1769019 d!1768805)))

(assert (=> bs!1293960 (= lambda!300498 lambda!300465)))

(declare-fun bs!1293961 () Bool)

(assert (= bs!1293961 (and d!1769019 d!1768661)))

(assert (=> bs!1293961 (= lambda!300498 lambda!300432)))

(declare-fun bs!1293962 () Bool)

(assert (= bs!1293962 (and d!1769019 d!1768913)))

(assert (=> bs!1293962 (= lambda!300498 lambda!300479)))

(declare-fun bs!1293963 () Bool)

(assert (= bs!1293963 (and d!1769019 d!1768639)))

(assert (=> bs!1293963 (= lambda!300498 lambda!300426)))

(declare-fun bs!1293964 () Bool)

(assert (= bs!1293964 (and d!1769019 d!1768883)))

(assert (=> bs!1293964 (= lambda!300498 lambda!300472)))

(declare-fun bs!1293965 () Bool)

(assert (= bs!1293965 (and d!1769019 d!1768979)))

(assert (=> bs!1293965 (= lambda!300498 lambda!300488)))

(declare-fun bs!1293966 () Bool)

(assert (= bs!1293966 (and d!1769019 d!1768593)))

(assert (=> bs!1293966 (= lambda!300498 lambda!300422)))

(declare-fun bs!1293967 () Bool)

(assert (= bs!1293967 (and d!1769019 d!1768595)))

(assert (=> bs!1293967 (= lambda!300498 lambda!300425)))

(assert (=> d!1769019 (= (inv!82203 setElem!37312) (forall!14749 (exprs!5466 setElem!37312) lambda!300498))))

(declare-fun bs!1293968 () Bool)

(assert (= bs!1293968 d!1769019))

(declare-fun m!6575744 () Bool)

(assert (=> bs!1293968 m!6575744))

(assert (=> setNonEmpty!37312 d!1769019))

(assert (=> bm!419457 d!1768871))

(assert (=> d!1768629 d!1768835))

(assert (=> b!5595587 d!1768619))

(declare-fun d!1769021 () Bool)

(declare-fun c!981142 () Bool)

(assert (=> d!1769021 (= c!981142 (isEmpty!34748 (tail!11028 (t!376328 s!2326))))))

(declare-fun e!3452421 () Bool)

(assert (=> d!1769021 (= (matchZipper!1720 (derivationStepZipper!1681 lt!2256095 (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))) e!3452421)))

(declare-fun b!5596560 () Bool)

(assert (=> b!5596560 (= e!3452421 (nullableZipper!1577 (derivationStepZipper!1681 lt!2256095 (head!11933 (t!376328 s!2326)))))))

(declare-fun b!5596561 () Bool)

(assert (=> b!5596561 (= e!3452421 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 lt!2256095 (head!11933 (t!376328 s!2326))) (head!11933 (tail!11028 (t!376328 s!2326)))) (tail!11028 (tail!11028 (t!376328 s!2326)))))))

(assert (= (and d!1769021 c!981142) b!5596560))

(assert (= (and d!1769021 (not c!981142)) b!5596561))

(assert (=> d!1769021 m!6574722))

(assert (=> d!1769021 m!6575358))

(assert (=> b!5596560 m!6574888))

(declare-fun m!6575746 () Bool)

(assert (=> b!5596560 m!6575746))

(assert (=> b!5596561 m!6574722))

(assert (=> b!5596561 m!6575362))

(assert (=> b!5596561 m!6574888))

(assert (=> b!5596561 m!6575362))

(declare-fun m!6575748 () Bool)

(assert (=> b!5596561 m!6575748))

(assert (=> b!5596561 m!6574722))

(assert (=> b!5596561 m!6575366))

(assert (=> b!5596561 m!6575748))

(assert (=> b!5596561 m!6575366))

(declare-fun m!6575750 () Bool)

(assert (=> b!5596561 m!6575750))

(assert (=> b!5595595 d!1769021))

(declare-fun bs!1293969 () Bool)

(declare-fun d!1769023 () Bool)

(assert (= bs!1293969 (and d!1769023 d!1768973)))

(declare-fun lambda!300499 () Int)

(assert (=> bs!1293969 (= lambda!300499 lambda!300487)))

(declare-fun bs!1293970 () Bool)

(assert (= bs!1293970 (and d!1769023 d!1768993)))

(assert (=> bs!1293970 (= lambda!300499 lambda!300490)))

(declare-fun bs!1293971 () Bool)

(assert (= bs!1293971 (and d!1769023 d!1768927)))

(assert (=> bs!1293971 (= lambda!300499 lambda!300481)))

(declare-fun bs!1293972 () Bool)

(assert (= bs!1293972 (and d!1769023 d!1769003)))

(assert (=> bs!1293972 (= lambda!300499 lambda!300491)))

(declare-fun bs!1293973 () Bool)

(assert (= bs!1293973 (and d!1769023 d!1768859)))

(assert (=> bs!1293973 (= lambda!300499 lambda!300471)))

(declare-fun bs!1293974 () Bool)

(assert (= bs!1293974 (and d!1769023 d!1768855)))

(assert (=> bs!1293974 (= (= (head!11933 (t!376328 s!2326)) (head!11933 s!2326)) (= lambda!300499 lambda!300470))))

(declare-fun bs!1293975 () Bool)

(assert (= bs!1293975 (and d!1769023 d!1768819)))

(assert (=> bs!1293975 (= lambda!300499 lambda!300469)))

(declare-fun bs!1293976 () Bool)

(assert (= bs!1293976 (and d!1769023 b!5595134)))

(assert (=> bs!1293976 (= (= (head!11933 (t!376328 s!2326)) (h!69370 s!2326)) (= lambda!300499 lambda!300389))))

(assert (=> d!1769023 true))

(assert (=> d!1769023 (= (derivationStepZipper!1681 lt!2256095 (head!11933 (t!376328 s!2326))) (flatMap!1195 lt!2256095 lambda!300499))))

(declare-fun bs!1293977 () Bool)

(assert (= bs!1293977 d!1769023))

(declare-fun m!6575752 () Bool)

(assert (=> bs!1293977 m!6575752))

(assert (=> b!5595595 d!1769023))

(assert (=> b!5595595 d!1768821))

(assert (=> b!5595595 d!1768823))

(declare-fun d!1769025 () Bool)

(declare-fun c!981145 () Bool)

(assert (=> d!1769025 (= c!981145 (is-Nil!62923 lt!2256234))))

(declare-fun e!3452424 () (Set Context!9932))

(assert (=> d!1769025 (= (content!11359 lt!2256234) e!3452424)))

(declare-fun b!5596566 () Bool)

(assert (=> b!5596566 (= e!3452424 (as set.empty (Set Context!9932)))))

(declare-fun b!5596567 () Bool)

(assert (=> b!5596567 (= e!3452424 (set.union (set.insert (h!69371 lt!2256234) (as set.empty (Set Context!9932))) (content!11359 (t!376329 lt!2256234))))))

(assert (= (and d!1769025 c!981145) b!5596566))

(assert (= (and d!1769025 (not c!981145)) b!5596567))

(declare-fun m!6575754 () Bool)

(assert (=> b!5596567 m!6575754))

(declare-fun m!6575756 () Bool)

(assert (=> b!5596567 m!6575756))

(assert (=> b!5595483 d!1769025))

(declare-fun d!1769027 () Bool)

(declare-fun c!981146 () Bool)

(assert (=> d!1769027 (= c!981146 (isEmpty!34748 (tail!11028 (t!376328 s!2326))))))

(declare-fun e!3452425 () Bool)

(assert (=> d!1769027 (= (matchZipper!1720 (derivationStepZipper!1681 (set.union lt!2256097 lt!2256084) (head!11933 (t!376328 s!2326))) (tail!11028 (t!376328 s!2326))) e!3452425)))

(declare-fun b!5596568 () Bool)

(assert (=> b!5596568 (= e!3452425 (nullableZipper!1577 (derivationStepZipper!1681 (set.union lt!2256097 lt!2256084) (head!11933 (t!376328 s!2326)))))))

(declare-fun b!5596569 () Bool)

(assert (=> b!5596569 (= e!3452425 (matchZipper!1720 (derivationStepZipper!1681 (derivationStepZipper!1681 (set.union lt!2256097 lt!2256084) (head!11933 (t!376328 s!2326))) (head!11933 (tail!11028 (t!376328 s!2326)))) (tail!11028 (tail!11028 (t!376328 s!2326)))))))

(assert (= (and d!1769027 c!981146) b!5596568))

(assert (= (and d!1769027 (not c!981146)) b!5596569))

(assert (=> d!1769027 m!6574722))

(assert (=> d!1769027 m!6575358))

(assert (=> b!5596568 m!6574808))

(declare-fun m!6575758 () Bool)

(assert (=> b!5596568 m!6575758))

(assert (=> b!5596569 m!6574722))

(assert (=> b!5596569 m!6575362))

(assert (=> b!5596569 m!6574808))

(assert (=> b!5596569 m!6575362))

(declare-fun m!6575760 () Bool)

(assert (=> b!5596569 m!6575760))

(assert (=> b!5596569 m!6574722))

(assert (=> b!5596569 m!6575366))

(assert (=> b!5596569 m!6575760))

(assert (=> b!5596569 m!6575366))

(declare-fun m!6575762 () Bool)

(assert (=> b!5596569 m!6575762))

(assert (=> b!5595542 d!1769027))

(declare-fun bs!1293978 () Bool)

(declare-fun d!1769029 () Bool)

(assert (= bs!1293978 (and d!1769029 d!1768973)))

(declare-fun lambda!300500 () Int)

(assert (=> bs!1293978 (= lambda!300500 lambda!300487)))

(declare-fun bs!1293979 () Bool)

(assert (= bs!1293979 (and d!1769029 d!1768993)))

(assert (=> bs!1293979 (= lambda!300500 lambda!300490)))

(declare-fun bs!1293980 () Bool)

(assert (= bs!1293980 (and d!1769029 d!1769023)))

(assert (=> bs!1293980 (= lambda!300500 lambda!300499)))

(declare-fun bs!1293981 () Bool)

(assert (= bs!1293981 (and d!1769029 d!1768927)))

(assert (=> bs!1293981 (= lambda!300500 lambda!300481)))

(declare-fun bs!1293982 () Bool)

(assert (= bs!1293982 (and d!1769029 d!1769003)))

(assert (=> bs!1293982 (= lambda!300500 lambda!300491)))

(declare-fun bs!1293983 () Bool)

(assert (= bs!1293983 (and d!1769029 d!1768859)))

(assert (=> bs!1293983 (= lambda!300500 lambda!300471)))

(declare-fun bs!1293984 () Bool)

(assert (= bs!1293984 (and d!1769029 d!1768855)))

(assert (=> bs!1293984 (= (= (head!11933 (t!376328 s!2326)) (head!11933 s!2326)) (= lambda!300500 lambda!300470))))

(declare-fun bs!1293985 () Bool)

(assert (= bs!1293985 (and d!1769029 d!1768819)))

(assert (=> bs!1293985 (= lambda!300500 lambda!300469)))

(declare-fun bs!1293986 () Bool)

(assert (= bs!1293986 (and d!1769029 b!5595134)))

(assert (=> bs!1293986 (= (= (head!11933 (t!376328 s!2326)) (h!69370 s!2326)) (= lambda!300500 lambda!300389))))

(assert (=> d!1769029 true))

(assert (=> d!1769029 (= (derivationStepZipper!1681 (set.union lt!2256097 lt!2256084) (head!11933 (t!376328 s!2326))) (flatMap!1195 (set.union lt!2256097 lt!2256084) lambda!300500))))

(declare-fun bs!1293987 () Bool)

(assert (= bs!1293987 d!1769029))

(declare-fun m!6575764 () Bool)

(assert (=> bs!1293987 m!6575764))

(assert (=> b!5595542 d!1769029))

(assert (=> b!5595542 d!1768821))

(assert (=> b!5595542 d!1768823))

(assert (=> d!1768623 d!1768625))

(assert (=> d!1768623 d!1768635))

(declare-fun d!1769031 () Bool)

(declare-fun e!3452426 () Bool)

(assert (=> d!1769031 (= (matchZipper!1720 (set.union lt!2256095 lt!2256084) (t!376328 s!2326)) e!3452426)))

(declare-fun res!2374020 () Bool)

(assert (=> d!1769031 (=> res!2374020 e!3452426)))

(assert (=> d!1769031 (= res!2374020 (matchZipper!1720 lt!2256095 (t!376328 s!2326)))))

(assert (=> d!1769031 true))

(declare-fun _$48!1193 () Unit!155748)

(assert (=> d!1769031 (= (choose!42431 lt!2256095 lt!2256084 (t!376328 s!2326)) _$48!1193)))

(declare-fun b!5596570 () Bool)

(assert (=> b!5596570 (= e!3452426 (matchZipper!1720 lt!2256084 (t!376328 s!2326)))))

(assert (= (and d!1769031 (not res!2374020)) b!5596570))

(assert (=> d!1769031 m!6574526))

(assert (=> d!1769031 m!6574534))

(assert (=> b!5596570 m!6574448))

(assert (=> d!1768623 d!1769031))

(declare-fun b!5596572 () Bool)

(declare-fun e!3452427 () Bool)

(declare-fun tp!1547476 () Bool)

(declare-fun tp!1547475 () Bool)

(assert (=> b!5596572 (= e!3452427 (and tp!1547476 tp!1547475))))

(assert (=> b!5595835 (= tp!1547381 e!3452427)))

(declare-fun b!5596574 () Bool)

(declare-fun tp!1547473 () Bool)

(declare-fun tp!1547474 () Bool)

(assert (=> b!5596574 (= e!3452427 (and tp!1547473 tp!1547474))))

(declare-fun b!5596571 () Bool)

(assert (=> b!5596571 (= e!3452427 tp_is_empty!40417)))

(declare-fun b!5596573 () Bool)

(declare-fun tp!1547472 () Bool)

(assert (=> b!5596573 (= e!3452427 tp!1547472)))

(assert (= (and b!5595835 (is-ElementMatch!15582 (regOne!31677 (regOne!31676 r!7292)))) b!5596571))

(assert (= (and b!5595835 (is-Concat!24427 (regOne!31677 (regOne!31676 r!7292)))) b!5596572))

(assert (= (and b!5595835 (is-Star!15582 (regOne!31677 (regOne!31676 r!7292)))) b!5596573))

(assert (= (and b!5595835 (is-Union!15582 (regOne!31677 (regOne!31676 r!7292)))) b!5596574))

(declare-fun b!5596576 () Bool)

(declare-fun e!3452428 () Bool)

(declare-fun tp!1547481 () Bool)

(declare-fun tp!1547480 () Bool)

(assert (=> b!5596576 (= e!3452428 (and tp!1547481 tp!1547480))))

(assert (=> b!5595835 (= tp!1547382 e!3452428)))

(declare-fun b!5596578 () Bool)

(declare-fun tp!1547478 () Bool)

(declare-fun tp!1547479 () Bool)

(assert (=> b!5596578 (= e!3452428 (and tp!1547478 tp!1547479))))

(declare-fun b!5596575 () Bool)

(assert (=> b!5596575 (= e!3452428 tp_is_empty!40417)))

(declare-fun b!5596577 () Bool)

(declare-fun tp!1547477 () Bool)

(assert (=> b!5596577 (= e!3452428 tp!1547477)))

(assert (= (and b!5595835 (is-ElementMatch!15582 (regTwo!31677 (regOne!31676 r!7292)))) b!5596575))

(assert (= (and b!5595835 (is-Concat!24427 (regTwo!31677 (regOne!31676 r!7292)))) b!5596576))

(assert (= (and b!5595835 (is-Star!15582 (regTwo!31677 (regOne!31676 r!7292)))) b!5596577))

(assert (= (and b!5595835 (is-Union!15582 (regTwo!31677 (regOne!31676 r!7292)))) b!5596578))

(declare-fun b!5596580 () Bool)

(declare-fun e!3452429 () Bool)

(declare-fun tp!1547486 () Bool)

(declare-fun tp!1547485 () Bool)

(assert (=> b!5596580 (= e!3452429 (and tp!1547486 tp!1547485))))

(assert (=> b!5595834 (= tp!1547380 e!3452429)))

(declare-fun b!5596582 () Bool)

(declare-fun tp!1547483 () Bool)

(declare-fun tp!1547484 () Bool)

(assert (=> b!5596582 (= e!3452429 (and tp!1547483 tp!1547484))))

(declare-fun b!5596579 () Bool)

(assert (=> b!5596579 (= e!3452429 tp_is_empty!40417)))

(declare-fun b!5596581 () Bool)

(declare-fun tp!1547482 () Bool)

(assert (=> b!5596581 (= e!3452429 tp!1547482)))

(assert (= (and b!5595834 (is-ElementMatch!15582 (reg!15911 (regOne!31676 r!7292)))) b!5596579))

(assert (= (and b!5595834 (is-Concat!24427 (reg!15911 (regOne!31676 r!7292)))) b!5596580))

(assert (= (and b!5595834 (is-Star!15582 (reg!15911 (regOne!31676 r!7292)))) b!5596581))

(assert (= (and b!5595834 (is-Union!15582 (reg!15911 (regOne!31676 r!7292)))) b!5596582))

(declare-fun b!5596583 () Bool)

(declare-fun e!3452430 () Bool)

(declare-fun tp!1547487 () Bool)

(assert (=> b!5596583 (= e!3452430 (and tp_is_empty!40417 tp!1547487))))

(assert (=> b!5595792 (= tp!1547342 e!3452430)))

(assert (= (and b!5595792 (is-Cons!62922 (t!376328 (t!376328 s!2326)))) b!5596583))

(declare-fun b!5596585 () Bool)

(declare-fun e!3452431 () Bool)

(declare-fun tp!1547492 () Bool)

(declare-fun tp!1547491 () Bool)

(assert (=> b!5596585 (= e!3452431 (and tp!1547492 tp!1547491))))

(assert (=> b!5595805 (= tp!1547353 e!3452431)))

(declare-fun b!5596587 () Bool)

(declare-fun tp!1547489 () Bool)

(declare-fun tp!1547490 () Bool)

(assert (=> b!5596587 (= e!3452431 (and tp!1547489 tp!1547490))))

(declare-fun b!5596584 () Bool)

(assert (=> b!5596584 (= e!3452431 tp_is_empty!40417)))

(declare-fun b!5596586 () Bool)

(declare-fun tp!1547488 () Bool)

(assert (=> b!5596586 (= e!3452431 tp!1547488)))

(assert (= (and b!5595805 (is-ElementMatch!15582 (reg!15911 (reg!15911 r!7292)))) b!5596584))

(assert (= (and b!5595805 (is-Concat!24427 (reg!15911 (reg!15911 r!7292)))) b!5596585))

(assert (= (and b!5595805 (is-Star!15582 (reg!15911 (reg!15911 r!7292)))) b!5596586))

(assert (= (and b!5595805 (is-Union!15582 (reg!15911 (reg!15911 r!7292)))) b!5596587))

(declare-fun b!5596589 () Bool)

(declare-fun e!3452432 () Bool)

(declare-fun tp!1547497 () Bool)

(declare-fun tp!1547496 () Bool)

(assert (=> b!5596589 (= e!3452432 (and tp!1547497 tp!1547496))))

(assert (=> b!5595814 (= tp!1547364 e!3452432)))

(declare-fun b!5596591 () Bool)

(declare-fun tp!1547494 () Bool)

(declare-fun tp!1547495 () Bool)

(assert (=> b!5596591 (= e!3452432 (and tp!1547494 tp!1547495))))

(declare-fun b!5596588 () Bool)

(assert (=> b!5596588 (= e!3452432 tp_is_empty!40417)))

(declare-fun b!5596590 () Bool)

(declare-fun tp!1547493 () Bool)

(assert (=> b!5596590 (= e!3452432 tp!1547493)))

(assert (= (and b!5595814 (is-ElementMatch!15582 (regOne!31677 (regTwo!31677 r!7292)))) b!5596588))

(assert (= (and b!5595814 (is-Concat!24427 (regOne!31677 (regTwo!31677 r!7292)))) b!5596589))

(assert (= (and b!5595814 (is-Star!15582 (regOne!31677 (regTwo!31677 r!7292)))) b!5596590))

(assert (= (and b!5595814 (is-Union!15582 (regOne!31677 (regTwo!31677 r!7292)))) b!5596591))

(declare-fun b!5596593 () Bool)

(declare-fun e!3452433 () Bool)

(declare-fun tp!1547502 () Bool)

(declare-fun tp!1547501 () Bool)

(assert (=> b!5596593 (= e!3452433 (and tp!1547502 tp!1547501))))

(assert (=> b!5595814 (= tp!1547365 e!3452433)))

(declare-fun b!5596595 () Bool)

(declare-fun tp!1547499 () Bool)

(declare-fun tp!1547500 () Bool)

(assert (=> b!5596595 (= e!3452433 (and tp!1547499 tp!1547500))))

(declare-fun b!5596592 () Bool)

(assert (=> b!5596592 (= e!3452433 tp_is_empty!40417)))

(declare-fun b!5596594 () Bool)

(declare-fun tp!1547498 () Bool)

(assert (=> b!5596594 (= e!3452433 tp!1547498)))

(assert (= (and b!5595814 (is-ElementMatch!15582 (regTwo!31677 (regTwo!31677 r!7292)))) b!5596592))

(assert (= (and b!5595814 (is-Concat!24427 (regTwo!31677 (regTwo!31677 r!7292)))) b!5596593))

(assert (= (and b!5595814 (is-Star!15582 (regTwo!31677 (regTwo!31677 r!7292)))) b!5596594))

(assert (= (and b!5595814 (is-Union!15582 (regTwo!31677 (regTwo!31677 r!7292)))) b!5596595))

(declare-fun b!5596597 () Bool)

(declare-fun e!3452434 () Bool)

(declare-fun tp!1547507 () Bool)

(declare-fun tp!1547506 () Bool)

(assert (=> b!5596597 (= e!3452434 (and tp!1547507 tp!1547506))))

(assert (=> b!5595804 (= tp!1547357 e!3452434)))

(declare-fun b!5596599 () Bool)

(declare-fun tp!1547504 () Bool)

(declare-fun tp!1547505 () Bool)

(assert (=> b!5596599 (= e!3452434 (and tp!1547504 tp!1547505))))

(declare-fun b!5596596 () Bool)

(assert (=> b!5596596 (= e!3452434 tp_is_empty!40417)))

(declare-fun b!5596598 () Bool)

(declare-fun tp!1547503 () Bool)

(assert (=> b!5596598 (= e!3452434 tp!1547503)))

(assert (= (and b!5595804 (is-ElementMatch!15582 (regOne!31676 (reg!15911 r!7292)))) b!5596596))

(assert (= (and b!5595804 (is-Concat!24427 (regOne!31676 (reg!15911 r!7292)))) b!5596597))

(assert (= (and b!5595804 (is-Star!15582 (regOne!31676 (reg!15911 r!7292)))) b!5596598))

(assert (= (and b!5595804 (is-Union!15582 (regOne!31676 (reg!15911 r!7292)))) b!5596599))

(declare-fun b!5596601 () Bool)

(declare-fun e!3452435 () Bool)

(declare-fun tp!1547512 () Bool)

(declare-fun tp!1547511 () Bool)

(assert (=> b!5596601 (= e!3452435 (and tp!1547512 tp!1547511))))

(assert (=> b!5595804 (= tp!1547356 e!3452435)))

(declare-fun b!5596603 () Bool)

(declare-fun tp!1547509 () Bool)

(declare-fun tp!1547510 () Bool)

(assert (=> b!5596603 (= e!3452435 (and tp!1547509 tp!1547510))))

(declare-fun b!5596600 () Bool)

(assert (=> b!5596600 (= e!3452435 tp_is_empty!40417)))

(declare-fun b!5596602 () Bool)

(declare-fun tp!1547508 () Bool)

(assert (=> b!5596602 (= e!3452435 tp!1547508)))

(assert (= (and b!5595804 (is-ElementMatch!15582 (regTwo!31676 (reg!15911 r!7292)))) b!5596600))

(assert (= (and b!5595804 (is-Concat!24427 (regTwo!31676 (reg!15911 r!7292)))) b!5596601))

(assert (= (and b!5595804 (is-Star!15582 (regTwo!31676 (reg!15911 r!7292)))) b!5596602))

(assert (= (and b!5595804 (is-Union!15582 (regTwo!31676 (reg!15911 r!7292)))) b!5596603))

(declare-fun b!5596605 () Bool)

(declare-fun e!3452436 () Bool)

(declare-fun tp!1547517 () Bool)

(declare-fun tp!1547516 () Bool)

(assert (=> b!5596605 (= e!3452436 (and tp!1547517 tp!1547516))))

(assert (=> b!5595813 (= tp!1547363 e!3452436)))

(declare-fun b!5596607 () Bool)

(declare-fun tp!1547514 () Bool)

(declare-fun tp!1547515 () Bool)

(assert (=> b!5596607 (= e!3452436 (and tp!1547514 tp!1547515))))

(declare-fun b!5596604 () Bool)

(assert (=> b!5596604 (= e!3452436 tp_is_empty!40417)))

(declare-fun b!5596606 () Bool)

(declare-fun tp!1547513 () Bool)

(assert (=> b!5596606 (= e!3452436 tp!1547513)))

(assert (= (and b!5595813 (is-ElementMatch!15582 (reg!15911 (regTwo!31677 r!7292)))) b!5596604))

(assert (= (and b!5595813 (is-Concat!24427 (reg!15911 (regTwo!31677 r!7292)))) b!5596605))

(assert (= (and b!5595813 (is-Star!15582 (reg!15911 (regTwo!31677 r!7292)))) b!5596606))

(assert (= (and b!5595813 (is-Union!15582 (reg!15911 (regTwo!31677 r!7292)))) b!5596607))

(declare-fun b!5596609 () Bool)

(declare-fun e!3452437 () Bool)

(declare-fun tp!1547522 () Bool)

(declare-fun tp!1547521 () Bool)

(assert (=> b!5596609 (= e!3452437 (and tp!1547522 tp!1547521))))

(assert (=> b!5595812 (= tp!1547367 e!3452437)))

(declare-fun b!5596611 () Bool)

(declare-fun tp!1547519 () Bool)

(declare-fun tp!1547520 () Bool)

(assert (=> b!5596611 (= e!3452437 (and tp!1547519 tp!1547520))))

(declare-fun b!5596608 () Bool)

(assert (=> b!5596608 (= e!3452437 tp_is_empty!40417)))

(declare-fun b!5596610 () Bool)

(declare-fun tp!1547518 () Bool)

(assert (=> b!5596610 (= e!3452437 tp!1547518)))

(assert (= (and b!5595812 (is-ElementMatch!15582 (regOne!31676 (regTwo!31677 r!7292)))) b!5596608))

(assert (= (and b!5595812 (is-Concat!24427 (regOne!31676 (regTwo!31677 r!7292)))) b!5596609))

(assert (= (and b!5595812 (is-Star!15582 (regOne!31676 (regTwo!31677 r!7292)))) b!5596610))

(assert (= (and b!5595812 (is-Union!15582 (regOne!31676 (regTwo!31677 r!7292)))) b!5596611))

(declare-fun b!5596613 () Bool)

(declare-fun e!3452438 () Bool)

(declare-fun tp!1547527 () Bool)

(declare-fun tp!1547526 () Bool)

(assert (=> b!5596613 (= e!3452438 (and tp!1547527 tp!1547526))))

(assert (=> b!5595812 (= tp!1547366 e!3452438)))

(declare-fun b!5596615 () Bool)

(declare-fun tp!1547524 () Bool)

(declare-fun tp!1547525 () Bool)

(assert (=> b!5596615 (= e!3452438 (and tp!1547524 tp!1547525))))

(declare-fun b!5596612 () Bool)

(assert (=> b!5596612 (= e!3452438 tp_is_empty!40417)))

(declare-fun b!5596614 () Bool)

(declare-fun tp!1547523 () Bool)

(assert (=> b!5596614 (= e!3452438 tp!1547523)))

(assert (= (and b!5595812 (is-ElementMatch!15582 (regTwo!31676 (regTwo!31677 r!7292)))) b!5596612))

(assert (= (and b!5595812 (is-Concat!24427 (regTwo!31676 (regTwo!31677 r!7292)))) b!5596613))

(assert (= (and b!5595812 (is-Star!15582 (regTwo!31676 (regTwo!31677 r!7292)))) b!5596614))

(assert (= (and b!5595812 (is-Union!15582 (regTwo!31676 (regTwo!31677 r!7292)))) b!5596615))

(declare-fun b!5596617 () Bool)

(declare-fun e!3452439 () Bool)

(declare-fun tp!1547532 () Bool)

(declare-fun tp!1547531 () Bool)

(assert (=> b!5596617 (= e!3452439 (and tp!1547532 tp!1547531))))

(assert (=> b!5595833 (= tp!1547384 e!3452439)))

(declare-fun b!5596619 () Bool)

(declare-fun tp!1547529 () Bool)

(declare-fun tp!1547530 () Bool)

(assert (=> b!5596619 (= e!3452439 (and tp!1547529 tp!1547530))))

(declare-fun b!5596616 () Bool)

(assert (=> b!5596616 (= e!3452439 tp_is_empty!40417)))

(declare-fun b!5596618 () Bool)

(declare-fun tp!1547528 () Bool)

(assert (=> b!5596618 (= e!3452439 tp!1547528)))

(assert (= (and b!5595833 (is-ElementMatch!15582 (regOne!31676 (regOne!31676 r!7292)))) b!5596616))

(assert (= (and b!5595833 (is-Concat!24427 (regOne!31676 (regOne!31676 r!7292)))) b!5596617))

(assert (= (and b!5595833 (is-Star!15582 (regOne!31676 (regOne!31676 r!7292)))) b!5596618))

(assert (= (and b!5595833 (is-Union!15582 (regOne!31676 (regOne!31676 r!7292)))) b!5596619))

(declare-fun b!5596621 () Bool)

(declare-fun e!3452440 () Bool)

(declare-fun tp!1547537 () Bool)

(declare-fun tp!1547536 () Bool)

(assert (=> b!5596621 (= e!3452440 (and tp!1547537 tp!1547536))))

(assert (=> b!5595833 (= tp!1547383 e!3452440)))

(declare-fun b!5596623 () Bool)

(declare-fun tp!1547534 () Bool)

(declare-fun tp!1547535 () Bool)

(assert (=> b!5596623 (= e!3452440 (and tp!1547534 tp!1547535))))

(declare-fun b!5596620 () Bool)

(assert (=> b!5596620 (= e!3452440 tp_is_empty!40417)))

(declare-fun b!5596622 () Bool)

(declare-fun tp!1547533 () Bool)

(assert (=> b!5596622 (= e!3452440 tp!1547533)))

(assert (= (and b!5595833 (is-ElementMatch!15582 (regTwo!31676 (regOne!31676 r!7292)))) b!5596620))

(assert (= (and b!5595833 (is-Concat!24427 (regTwo!31676 (regOne!31676 r!7292)))) b!5596621))

(assert (= (and b!5595833 (is-Star!15582 (regTwo!31676 (regOne!31676 r!7292)))) b!5596622))

(assert (= (and b!5595833 (is-Union!15582 (regTwo!31676 (regOne!31676 r!7292)))) b!5596623))

(declare-fun b!5596625 () Bool)

(declare-fun e!3452441 () Bool)

(declare-fun tp!1547542 () Bool)

(declare-fun tp!1547541 () Bool)

(assert (=> b!5596625 (= e!3452441 (and tp!1547542 tp!1547541))))

(assert (=> b!5595806 (= tp!1547354 e!3452441)))

(declare-fun b!5596627 () Bool)

(declare-fun tp!1547539 () Bool)

(declare-fun tp!1547540 () Bool)

(assert (=> b!5596627 (= e!3452441 (and tp!1547539 tp!1547540))))

(declare-fun b!5596624 () Bool)

(assert (=> b!5596624 (= e!3452441 tp_is_empty!40417)))

(declare-fun b!5596626 () Bool)

(declare-fun tp!1547538 () Bool)

(assert (=> b!5596626 (= e!3452441 tp!1547538)))

(assert (= (and b!5595806 (is-ElementMatch!15582 (regOne!31677 (reg!15911 r!7292)))) b!5596624))

(assert (= (and b!5595806 (is-Concat!24427 (regOne!31677 (reg!15911 r!7292)))) b!5596625))

(assert (= (and b!5595806 (is-Star!15582 (regOne!31677 (reg!15911 r!7292)))) b!5596626))

(assert (= (and b!5595806 (is-Union!15582 (regOne!31677 (reg!15911 r!7292)))) b!5596627))

(declare-fun b!5596629 () Bool)

(declare-fun e!3452442 () Bool)

(declare-fun tp!1547547 () Bool)

(declare-fun tp!1547546 () Bool)

(assert (=> b!5596629 (= e!3452442 (and tp!1547547 tp!1547546))))

(assert (=> b!5595806 (= tp!1547355 e!3452442)))

(declare-fun b!5596631 () Bool)

(declare-fun tp!1547544 () Bool)

(declare-fun tp!1547545 () Bool)

(assert (=> b!5596631 (= e!3452442 (and tp!1547544 tp!1547545))))

(declare-fun b!5596628 () Bool)

(assert (=> b!5596628 (= e!3452442 tp_is_empty!40417)))

(declare-fun b!5596630 () Bool)

(declare-fun tp!1547543 () Bool)

(assert (=> b!5596630 (= e!3452442 tp!1547543)))

(assert (= (and b!5595806 (is-ElementMatch!15582 (regTwo!31677 (reg!15911 r!7292)))) b!5596628))

(assert (= (and b!5595806 (is-Concat!24427 (regTwo!31677 (reg!15911 r!7292)))) b!5596629))

(assert (= (and b!5595806 (is-Star!15582 (regTwo!31677 (reg!15911 r!7292)))) b!5596630))

(assert (= (and b!5595806 (is-Union!15582 (regTwo!31677 (reg!15911 r!7292)))) b!5596631))

(declare-fun b!5596633 () Bool)

(declare-fun e!3452443 () Bool)

(declare-fun tp!1547552 () Bool)

(declare-fun tp!1547551 () Bool)

(assert (=> b!5596633 (= e!3452443 (and tp!1547552 tp!1547551))))

(assert (=> b!5595839 (= tp!1547386 e!3452443)))

(declare-fun b!5596635 () Bool)

(declare-fun tp!1547549 () Bool)

(declare-fun tp!1547550 () Bool)

(assert (=> b!5596635 (= e!3452443 (and tp!1547549 tp!1547550))))

(declare-fun b!5596632 () Bool)

(assert (=> b!5596632 (= e!3452443 tp_is_empty!40417)))

(declare-fun b!5596634 () Bool)

(declare-fun tp!1547548 () Bool)

(assert (=> b!5596634 (= e!3452443 tp!1547548)))

(assert (= (and b!5595839 (is-ElementMatch!15582 (regOne!31677 (regTwo!31676 r!7292)))) b!5596632))

(assert (= (and b!5595839 (is-Concat!24427 (regOne!31677 (regTwo!31676 r!7292)))) b!5596633))

(assert (= (and b!5595839 (is-Star!15582 (regOne!31677 (regTwo!31676 r!7292)))) b!5596634))

(assert (= (and b!5595839 (is-Union!15582 (regOne!31677 (regTwo!31676 r!7292)))) b!5596635))

(declare-fun b!5596637 () Bool)

(declare-fun e!3452444 () Bool)

(declare-fun tp!1547557 () Bool)

(declare-fun tp!1547556 () Bool)

(assert (=> b!5596637 (= e!3452444 (and tp!1547557 tp!1547556))))

(assert (=> b!5595839 (= tp!1547387 e!3452444)))

(declare-fun b!5596639 () Bool)

(declare-fun tp!1547554 () Bool)

(declare-fun tp!1547555 () Bool)

(assert (=> b!5596639 (= e!3452444 (and tp!1547554 tp!1547555))))

(declare-fun b!5596636 () Bool)

(assert (=> b!5596636 (= e!3452444 tp_is_empty!40417)))

(declare-fun b!5596638 () Bool)

(declare-fun tp!1547553 () Bool)

(assert (=> b!5596638 (= e!3452444 tp!1547553)))

(assert (= (and b!5595839 (is-ElementMatch!15582 (regTwo!31677 (regTwo!31676 r!7292)))) b!5596636))

(assert (= (and b!5595839 (is-Concat!24427 (regTwo!31677 (regTwo!31676 r!7292)))) b!5596637))

(assert (= (and b!5595839 (is-Star!15582 (regTwo!31677 (regTwo!31676 r!7292)))) b!5596638))

(assert (= (and b!5595839 (is-Union!15582 (regTwo!31677 (regTwo!31676 r!7292)))) b!5596639))

(declare-fun b!5596640 () Bool)

(declare-fun e!3452445 () Bool)

(declare-fun tp!1547558 () Bool)

(declare-fun tp!1547559 () Bool)

(assert (=> b!5596640 (= e!3452445 (and tp!1547558 tp!1547559))))

(assert (=> b!5595831 (= tp!1547378 e!3452445)))

(assert (= (and b!5595831 (is-Cons!62921 (exprs!5466 (h!69371 (t!376329 zl!343))))) b!5596640))

(declare-fun b!5596642 () Bool)

(declare-fun e!3452446 () Bool)

(declare-fun tp!1547564 () Bool)

(declare-fun tp!1547563 () Bool)

(assert (=> b!5596642 (= e!3452446 (and tp!1547564 tp!1547563))))

(assert (=> b!5595838 (= tp!1547385 e!3452446)))

(declare-fun b!5596644 () Bool)

(declare-fun tp!1547561 () Bool)

(declare-fun tp!1547562 () Bool)

(assert (=> b!5596644 (= e!3452446 (and tp!1547561 tp!1547562))))

(declare-fun b!5596641 () Bool)

(assert (=> b!5596641 (= e!3452446 tp_is_empty!40417)))

(declare-fun b!5596643 () Bool)

(declare-fun tp!1547560 () Bool)

(assert (=> b!5596643 (= e!3452446 tp!1547560)))

(assert (= (and b!5595838 (is-ElementMatch!15582 (reg!15911 (regTwo!31676 r!7292)))) b!5596641))

(assert (= (and b!5595838 (is-Concat!24427 (reg!15911 (regTwo!31676 r!7292)))) b!5596642))

(assert (= (and b!5595838 (is-Star!15582 (reg!15911 (regTwo!31676 r!7292)))) b!5596643))

(assert (= (and b!5595838 (is-Union!15582 (reg!15911 (regTwo!31676 r!7292)))) b!5596644))

(declare-fun b!5596646 () Bool)

(declare-fun e!3452447 () Bool)

(declare-fun tp!1547569 () Bool)

(declare-fun tp!1547568 () Bool)

(assert (=> b!5596646 (= e!3452447 (and tp!1547569 tp!1547568))))

(assert (=> b!5595845 (= tp!1547396 e!3452447)))

(declare-fun b!5596648 () Bool)

(declare-fun tp!1547566 () Bool)

(declare-fun tp!1547567 () Bool)

(assert (=> b!5596648 (= e!3452447 (and tp!1547566 tp!1547567))))

(declare-fun b!5596645 () Bool)

(assert (=> b!5596645 (= e!3452447 tp_is_empty!40417)))

(declare-fun b!5596647 () Bool)

(declare-fun tp!1547565 () Bool)

(assert (=> b!5596647 (= e!3452447 tp!1547565)))

(assert (= (and b!5595845 (is-ElementMatch!15582 (h!69369 (exprs!5466 (h!69371 zl!343))))) b!5596645))

(assert (= (and b!5595845 (is-Concat!24427 (h!69369 (exprs!5466 (h!69371 zl!343))))) b!5596646))

(assert (= (and b!5595845 (is-Star!15582 (h!69369 (exprs!5466 (h!69371 zl!343))))) b!5596647))

(assert (= (and b!5595845 (is-Union!15582 (h!69369 (exprs!5466 (h!69371 zl!343))))) b!5596648))

(declare-fun b!5596649 () Bool)

(declare-fun e!3452448 () Bool)

(declare-fun tp!1547570 () Bool)

(declare-fun tp!1547571 () Bool)

(assert (=> b!5596649 (= e!3452448 (and tp!1547570 tp!1547571))))

(assert (=> b!5595845 (= tp!1547397 e!3452448)))

(assert (= (and b!5595845 (is-Cons!62921 (t!376327 (exprs!5466 (h!69371 zl!343))))) b!5596649))

(declare-fun b!5596651 () Bool)

(declare-fun e!3452449 () Bool)

(declare-fun tp!1547576 () Bool)

(declare-fun tp!1547575 () Bool)

(assert (=> b!5596651 (= e!3452449 (and tp!1547576 tp!1547575))))

(assert (=> b!5595809 (= tp!1547358 e!3452449)))

(declare-fun b!5596653 () Bool)

(declare-fun tp!1547573 () Bool)

(declare-fun tp!1547574 () Bool)

(assert (=> b!5596653 (= e!3452449 (and tp!1547573 tp!1547574))))

(declare-fun b!5596650 () Bool)

(assert (=> b!5596650 (= e!3452449 tp_is_empty!40417)))

(declare-fun b!5596652 () Bool)

(declare-fun tp!1547572 () Bool)

(assert (=> b!5596652 (= e!3452449 tp!1547572)))

(assert (= (and b!5595809 (is-ElementMatch!15582 (reg!15911 (regOne!31677 r!7292)))) b!5596650))

(assert (= (and b!5595809 (is-Concat!24427 (reg!15911 (regOne!31677 r!7292)))) b!5596651))

(assert (= (and b!5595809 (is-Star!15582 (reg!15911 (regOne!31677 r!7292)))) b!5596652))

(assert (= (and b!5595809 (is-Union!15582 (reg!15911 (regOne!31677 r!7292)))) b!5596653))

(declare-fun condSetEmpty!37321 () Bool)

(assert (=> setNonEmpty!37312 (= condSetEmpty!37321 (= setRest!37312 (as set.empty (Set Context!9932))))))

(declare-fun setRes!37321 () Bool)

(assert (=> setNonEmpty!37312 (= tp!1547395 setRes!37321)))

(declare-fun setIsEmpty!37321 () Bool)

(assert (=> setIsEmpty!37321 setRes!37321))

(declare-fun setElem!37321 () Context!9932)

(declare-fun tp!1547578 () Bool)

(declare-fun setNonEmpty!37321 () Bool)

(declare-fun e!3452450 () Bool)

(assert (=> setNonEmpty!37321 (= setRes!37321 (and tp!1547578 (inv!82203 setElem!37321) e!3452450))))

(declare-fun setRest!37321 () (Set Context!9932))

(assert (=> setNonEmpty!37321 (= setRest!37312 (set.union (set.insert setElem!37321 (as set.empty (Set Context!9932))) setRest!37321))))

(declare-fun b!5596654 () Bool)

(declare-fun tp!1547577 () Bool)

(assert (=> b!5596654 (= e!3452450 tp!1547577)))

(assert (= (and setNonEmpty!37312 condSetEmpty!37321) setIsEmpty!37321))

(assert (= (and setNonEmpty!37312 (not condSetEmpty!37321)) setNonEmpty!37321))

(assert (= setNonEmpty!37321 b!5596654))

(declare-fun m!6575766 () Bool)

(assert (=> setNonEmpty!37321 m!6575766))

(declare-fun b!5596656 () Bool)

(declare-fun e!3452451 () Bool)

(declare-fun tp!1547583 () Bool)

(declare-fun tp!1547582 () Bool)

(assert (=> b!5596656 (= e!3452451 (and tp!1547583 tp!1547582))))

(assert (=> b!5595808 (= tp!1547362 e!3452451)))

(declare-fun b!5596658 () Bool)

(declare-fun tp!1547580 () Bool)

(declare-fun tp!1547581 () Bool)

(assert (=> b!5596658 (= e!3452451 (and tp!1547580 tp!1547581))))

(declare-fun b!5596655 () Bool)

(assert (=> b!5596655 (= e!3452451 tp_is_empty!40417)))

(declare-fun b!5596657 () Bool)

(declare-fun tp!1547579 () Bool)

(assert (=> b!5596657 (= e!3452451 tp!1547579)))

(assert (= (and b!5595808 (is-ElementMatch!15582 (regOne!31676 (regOne!31677 r!7292)))) b!5596655))

(assert (= (and b!5595808 (is-Concat!24427 (regOne!31676 (regOne!31677 r!7292)))) b!5596656))

(assert (= (and b!5595808 (is-Star!15582 (regOne!31676 (regOne!31677 r!7292)))) b!5596657))

(assert (= (and b!5595808 (is-Union!15582 (regOne!31676 (regOne!31677 r!7292)))) b!5596658))

(declare-fun b!5596660 () Bool)

(declare-fun e!3452452 () Bool)

(declare-fun tp!1547588 () Bool)

(declare-fun tp!1547587 () Bool)

(assert (=> b!5596660 (= e!3452452 (and tp!1547588 tp!1547587))))

(assert (=> b!5595808 (= tp!1547361 e!3452452)))

(declare-fun b!5596662 () Bool)

(declare-fun tp!1547585 () Bool)

(declare-fun tp!1547586 () Bool)

(assert (=> b!5596662 (= e!3452452 (and tp!1547585 tp!1547586))))

(declare-fun b!5596659 () Bool)

(assert (=> b!5596659 (= e!3452452 tp_is_empty!40417)))

(declare-fun b!5596661 () Bool)

(declare-fun tp!1547584 () Bool)

(assert (=> b!5596661 (= e!3452452 tp!1547584)))

(assert (= (and b!5595808 (is-ElementMatch!15582 (regTwo!31676 (regOne!31677 r!7292)))) b!5596659))

(assert (= (and b!5595808 (is-Concat!24427 (regTwo!31676 (regOne!31677 r!7292)))) b!5596660))

(assert (= (and b!5595808 (is-Star!15582 (regTwo!31676 (regOne!31677 r!7292)))) b!5596661))

(assert (= (and b!5595808 (is-Union!15582 (regTwo!31676 (regOne!31677 r!7292)))) b!5596662))

(declare-fun b!5596664 () Bool)

(declare-fun e!3452454 () Bool)

(declare-fun tp!1547589 () Bool)

(assert (=> b!5596664 (= e!3452454 tp!1547589)))

(declare-fun tp!1547590 () Bool)

(declare-fun b!5596663 () Bool)

(declare-fun e!3452453 () Bool)

(assert (=> b!5596663 (= e!3452453 (and (inv!82203 (h!69371 (t!376329 (t!376329 zl!343)))) e!3452454 tp!1547590))))

(assert (=> b!5595830 (= tp!1547379 e!3452453)))

(assert (= b!5596663 b!5596664))

(assert (= (and b!5595830 (is-Cons!62923 (t!376329 (t!376329 zl!343)))) b!5596663))

(declare-fun m!6575768 () Bool)

(assert (=> b!5596663 m!6575768))

(declare-fun b!5596666 () Bool)

(declare-fun e!3452455 () Bool)

(declare-fun tp!1547595 () Bool)

(declare-fun tp!1547594 () Bool)

(assert (=> b!5596666 (= e!3452455 (and tp!1547595 tp!1547594))))

(assert (=> b!5595837 (= tp!1547389 e!3452455)))

(declare-fun b!5596668 () Bool)

(declare-fun tp!1547592 () Bool)

(declare-fun tp!1547593 () Bool)

(assert (=> b!5596668 (= e!3452455 (and tp!1547592 tp!1547593))))

(declare-fun b!5596665 () Bool)

(assert (=> b!5596665 (= e!3452455 tp_is_empty!40417)))

(declare-fun b!5596667 () Bool)

(declare-fun tp!1547591 () Bool)

(assert (=> b!5596667 (= e!3452455 tp!1547591)))

(assert (= (and b!5595837 (is-ElementMatch!15582 (regOne!31676 (regTwo!31676 r!7292)))) b!5596665))

(assert (= (and b!5595837 (is-Concat!24427 (regOne!31676 (regTwo!31676 r!7292)))) b!5596666))

(assert (= (and b!5595837 (is-Star!15582 (regOne!31676 (regTwo!31676 r!7292)))) b!5596667))

(assert (= (and b!5595837 (is-Union!15582 (regOne!31676 (regTwo!31676 r!7292)))) b!5596668))

(declare-fun b!5596670 () Bool)

(declare-fun e!3452456 () Bool)

(declare-fun tp!1547600 () Bool)

(declare-fun tp!1547599 () Bool)

(assert (=> b!5596670 (= e!3452456 (and tp!1547600 tp!1547599))))

(assert (=> b!5595837 (= tp!1547388 e!3452456)))

(declare-fun b!5596672 () Bool)

(declare-fun tp!1547597 () Bool)

(declare-fun tp!1547598 () Bool)

(assert (=> b!5596672 (= e!3452456 (and tp!1547597 tp!1547598))))

(declare-fun b!5596669 () Bool)

(assert (=> b!5596669 (= e!3452456 tp_is_empty!40417)))

(declare-fun b!5596671 () Bool)

(declare-fun tp!1547596 () Bool)

(assert (=> b!5596671 (= e!3452456 tp!1547596)))

(assert (= (and b!5595837 (is-ElementMatch!15582 (regTwo!31676 (regTwo!31676 r!7292)))) b!5596669))

(assert (= (and b!5595837 (is-Concat!24427 (regTwo!31676 (regTwo!31676 r!7292)))) b!5596670))

(assert (= (and b!5595837 (is-Star!15582 (regTwo!31676 (regTwo!31676 r!7292)))) b!5596671))

(assert (= (and b!5595837 (is-Union!15582 (regTwo!31676 (regTwo!31676 r!7292)))) b!5596672))

(declare-fun b!5596673 () Bool)

(declare-fun e!3452457 () Bool)

(declare-fun tp!1547601 () Bool)

(declare-fun tp!1547602 () Bool)

(assert (=> b!5596673 (= e!3452457 (and tp!1547601 tp!1547602))))

(assert (=> b!5595844 (= tp!1547394 e!3452457)))

(assert (= (and b!5595844 (is-Cons!62921 (exprs!5466 setElem!37312))) b!5596673))

(declare-fun b!5596675 () Bool)

(declare-fun e!3452458 () Bool)

(declare-fun tp!1547607 () Bool)

(declare-fun tp!1547606 () Bool)

(assert (=> b!5596675 (= e!3452458 (and tp!1547607 tp!1547606))))

(assert (=> b!5595823 (= tp!1547372 e!3452458)))

(declare-fun b!5596677 () Bool)

(declare-fun tp!1547604 () Bool)

(declare-fun tp!1547605 () Bool)

(assert (=> b!5596677 (= e!3452458 (and tp!1547604 tp!1547605))))

(declare-fun b!5596674 () Bool)

(assert (=> b!5596674 (= e!3452458 tp_is_empty!40417)))

(declare-fun b!5596676 () Bool)

(declare-fun tp!1547603 () Bool)

(assert (=> b!5596676 (= e!3452458 tp!1547603)))

(assert (= (and b!5595823 (is-ElementMatch!15582 (h!69369 (exprs!5466 setElem!37306)))) b!5596674))

(assert (= (and b!5595823 (is-Concat!24427 (h!69369 (exprs!5466 setElem!37306)))) b!5596675))

(assert (= (and b!5595823 (is-Star!15582 (h!69369 (exprs!5466 setElem!37306)))) b!5596676))

(assert (= (and b!5595823 (is-Union!15582 (h!69369 (exprs!5466 setElem!37306)))) b!5596677))

(declare-fun b!5596678 () Bool)

(declare-fun e!3452459 () Bool)

(declare-fun tp!1547608 () Bool)

(declare-fun tp!1547609 () Bool)

(assert (=> b!5596678 (= e!3452459 (and tp!1547608 tp!1547609))))

(assert (=> b!5595823 (= tp!1547373 e!3452459)))

(assert (= (and b!5595823 (is-Cons!62921 (t!376327 (exprs!5466 setElem!37306)))) b!5596678))

(declare-fun b!5596680 () Bool)

(declare-fun e!3452460 () Bool)

(declare-fun tp!1547614 () Bool)

(declare-fun tp!1547613 () Bool)

(assert (=> b!5596680 (= e!3452460 (and tp!1547614 tp!1547613))))

(assert (=> b!5595810 (= tp!1547359 e!3452460)))

(declare-fun b!5596682 () Bool)

(declare-fun tp!1547611 () Bool)

(declare-fun tp!1547612 () Bool)

(assert (=> b!5596682 (= e!3452460 (and tp!1547611 tp!1547612))))

(declare-fun b!5596679 () Bool)

(assert (=> b!5596679 (= e!3452460 tp_is_empty!40417)))

(declare-fun b!5596681 () Bool)

(declare-fun tp!1547610 () Bool)

(assert (=> b!5596681 (= e!3452460 tp!1547610)))

(assert (= (and b!5595810 (is-ElementMatch!15582 (regOne!31677 (regOne!31677 r!7292)))) b!5596679))

(assert (= (and b!5595810 (is-Concat!24427 (regOne!31677 (regOne!31677 r!7292)))) b!5596680))

(assert (= (and b!5595810 (is-Star!15582 (regOne!31677 (regOne!31677 r!7292)))) b!5596681))

(assert (= (and b!5595810 (is-Union!15582 (regOne!31677 (regOne!31677 r!7292)))) b!5596682))

(declare-fun b!5596684 () Bool)

(declare-fun e!3452461 () Bool)

(declare-fun tp!1547619 () Bool)

(declare-fun tp!1547618 () Bool)

(assert (=> b!5596684 (= e!3452461 (and tp!1547619 tp!1547618))))

(assert (=> b!5595810 (= tp!1547360 e!3452461)))

(declare-fun b!5596686 () Bool)

(declare-fun tp!1547616 () Bool)

(declare-fun tp!1547617 () Bool)

(assert (=> b!5596686 (= e!3452461 (and tp!1547616 tp!1547617))))

(declare-fun b!5596683 () Bool)

(assert (=> b!5596683 (= e!3452461 tp_is_empty!40417)))

(declare-fun b!5596685 () Bool)

(declare-fun tp!1547615 () Bool)

(assert (=> b!5596685 (= e!3452461 tp!1547615)))

(assert (= (and b!5595810 (is-ElementMatch!15582 (regTwo!31677 (regOne!31677 r!7292)))) b!5596683))

(assert (= (and b!5595810 (is-Concat!24427 (regTwo!31677 (regOne!31677 r!7292)))) b!5596684))

(assert (= (and b!5595810 (is-Star!15582 (regTwo!31677 (regOne!31677 r!7292)))) b!5596685))

(assert (= (and b!5595810 (is-Union!15582 (regTwo!31677 (regOne!31677 r!7292)))) b!5596686))

(declare-fun b_lambda!212067 () Bool)

(assert (= b_lambda!212059 (or d!1768639 b_lambda!212067)))

(declare-fun bs!1293988 () Bool)

(declare-fun d!1769033 () Bool)

(assert (= bs!1293988 (and d!1769033 d!1768639)))

(assert (=> bs!1293988 (= (dynLambda!24614 lambda!300426 (h!69369 (exprs!5466 (h!69371 zl!343)))) (validRegex!7318 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(declare-fun m!6575770 () Bool)

(assert (=> bs!1293988 m!6575770))

(assert (=> b!5596385 d!1769033))

(declare-fun b_lambda!212069 () Bool)

(assert (= b_lambda!212063 (or d!1768593 b_lambda!212069)))

(declare-fun bs!1293989 () Bool)

(declare-fun d!1769035 () Bool)

(assert (= bs!1293989 (and d!1769035 d!1768593)))

(assert (=> bs!1293989 (= (dynLambda!24614 lambda!300422 (h!69369 (exprs!5466 setElem!37306))) (validRegex!7318 (h!69369 (exprs!5466 setElem!37306))))))

(declare-fun m!6575772 () Bool)

(assert (=> bs!1293989 m!6575772))

(assert (=> b!5596480 d!1769035))

(declare-fun b_lambda!212071 () Bool)

(assert (= b_lambda!212061 (or d!1768661 b_lambda!212071)))

(declare-fun bs!1293990 () Bool)

(declare-fun d!1769037 () Bool)

(assert (= bs!1293990 (and d!1769037 d!1768661)))

(assert (=> bs!1293990 (= (dynLambda!24614 lambda!300432 (h!69369 lt!2256257)) (validRegex!7318 (h!69369 lt!2256257)))))

(declare-fun m!6575774 () Bool)

(assert (=> bs!1293990 m!6575774))

(assert (=> b!5596445 d!1769037))

(declare-fun b_lambda!212073 () Bool)

(assert (= b_lambda!212065 (or b!5595134 b_lambda!212073)))

(assert (=> d!1768987 d!1768715))

(declare-fun b_lambda!212075 () Bool)

(assert (= b_lambda!212051 (or d!1768657 b_lambda!212075)))

(declare-fun bs!1293991 () Bool)

(declare-fun d!1769039 () Bool)

(assert (= bs!1293991 (and d!1769039 d!1768657)))

(assert (=> bs!1293991 (= (dynLambda!24614 lambda!300429 (h!69369 (unfocusZipperList!1010 zl!343))) (validRegex!7318 (h!69369 (unfocusZipperList!1010 zl!343))))))

(declare-fun m!6575776 () Bool)

(assert (=> bs!1293991 m!6575776))

(assert (=> b!5596273 d!1769039))

(declare-fun b_lambda!212077 () Bool)

(assert (= b_lambda!212057 (or b!5595134 b_lambda!212077)))

(assert (=> d!1768873 d!1768713))

(declare-fun b_lambda!212079 () Bool)

(assert (= b_lambda!212053 (or d!1768595 b_lambda!212079)))

(declare-fun bs!1293992 () Bool)

(declare-fun d!1769041 () Bool)

(assert (= bs!1293992 (and d!1769041 d!1768595)))

(assert (=> bs!1293992 (= (dynLambda!24614 lambda!300425 (h!69369 (exprs!5466 (h!69371 zl!343)))) (validRegex!7318 (h!69369 (exprs!5466 (h!69371 zl!343)))))))

(assert (=> bs!1293992 m!6575770))

(assert (=> b!5596284 d!1769041))

(declare-fun b_lambda!212081 () Bool)

(assert (= b_lambda!212055 (or b!5595134 b_lambda!212081)))

(assert (=> d!1768867 d!1768717))

(push 1)

(assert (not bm!419659))

(assert (not b!5596323))

(assert (not b!5596138))

(assert (not b!5596422))

(assert (not b!5596388))

(assert (not b!5596662))

(assert (not b!5596206))

(assert (not b!5596578))

(assert (not b!5596235))

(assert (not b!5596611))

(assert (not b!5596168))

(assert (not d!1769021))

(assert (not d!1769031))

(assert (not bm!419679))

(assert (not b!5596406))

(assert (not b!5596668))

(assert (not bm!419651))

(assert (not d!1768899))

(assert (not b!5596675))

(assert (not bm!419608))

(assert (not b!5596646))

(assert (not d!1768833))

(assert (not d!1768867))

(assert (not bm!419592))

(assert (not b!5596247))

(assert (not b!5596446))

(assert (not d!1768797))

(assert (not bm!419569))

(assert (not d!1768937))

(assert (not b!5596494))

(assert (not bm!419571))

(assert (not d!1768973))

(assert (not b!5596638))

(assert (not bm!419622))

(assert (not d!1769007))

(assert (not d!1768889))

(assert (not d!1769029))

(assert (not b!5596568))

(assert (not bm!419635))

(assert (not b!5596649))

(assert (not b!5596627))

(assert (not b!5596134))

(assert (not b!5596621))

(assert (not b_lambda!212067))

(assert (not d!1768785))

(assert (not b!5596285))

(assert (not b!5596560))

(assert (not d!1768987))

(assert (not d!1769027))

(assert (not d!1768809))

(assert (not b!5596352))

(assert (not b!5596658))

(assert (not d!1768779))

(assert (not b!5596625))

(assert (not b!5596617))

(assert (not b!5596605))

(assert (not b!5596338))

(assert (not d!1768855))

(assert (not b!5596378))

(assert (not bm!419583))

(assert (not b!5596493))

(assert (not d!1768917))

(assert (not b!5596656))

(assert (not b!5596652))

(assert (not d!1768983))

(assert (not b!5596511))

(assert (not b!5596530))

(assert (not bm!419577))

(assert (not bm!419673))

(assert (not b!5596214))

(assert (not b!5596211))

(assert (not b!5596582))

(assert (not b!5596606))

(assert (not bm!419669))

(assert (not d!1769003))

(assert (not b!5596152))

(assert (not b!5596143))

(assert (not bm!419598))

(assert (not bm!419657))

(assert (not bm!419681))

(assert (not bm!419624))

(assert (not b!5596443))

(assert (not b!5596609))

(assert (not b!5596598))

(assert (not d!1768885))

(assert (not b!5596218))

(assert (not d!1768925))

(assert (not b!5596224))

(assert (not b!5596527))

(assert (not b!5596313))

(assert (not b!5596531))

(assert (not b!5596392))

(assert (not b!5596300))

(assert (not b!5596626))

(assert (not b!5596633))

(assert (not d!1769009))

(assert (not bm!419682))

(assert (not b!5596508))

(assert (not b!5596666))

(assert (not d!1768995))

(assert (not b!5596114))

(assert (not bm!419683))

(assert (not bm!419655))

(assert (not d!1768775))

(assert (not bm!419631))

(assert (not b!5596489))

(assert (not b!5596622))

(assert (not b!5596447))

(assert (not d!1768819))

(assert (not b!5596573))

(assert (not d!1768921))

(assert (not b!5596225))

(assert (not b!5596635))

(assert (not bm!419621))

(assert (not b!5596444))

(assert (not b!5596367))

(assert (not d!1768977))

(assert (not bs!1293990))

(assert (not b!5596570))

(assert (not b!5596610))

(assert (not b!5596671))

(assert (not d!1768947))

(assert (not b!5596618))

(assert (not d!1768873))

(assert (not b_lambda!212069))

(assert (not bm!419638))

(assert (not b!5596623))

(assert (not b!5596495))

(assert (not b_lambda!212073))

(assert (not b!5596602))

(assert (not b!5596581))

(assert (not d!1768815))

(assert (not b!5596567))

(assert (not bm!419629))

(assert (not b!5596577))

(assert (not b!5596574))

(assert (not b!5596161))

(assert tp_is_empty!40417)

(assert (not b!5596619))

(assert (not bm!419665))

(assert (not b!5596639))

(assert (not bm!419582))

(assert (not bm!419579))

(assert (not b!5596677))

(assert (not b!5596647))

(assert (not bm!419596))

(assert (not bm!419637))

(assert (not b!5596210))

(assert (not bm!419666))

(assert (not b!5596585))

(assert (not b!5596397))

(assert (not bm!419573))

(assert (not b!5596629))

(assert (not b!5596660))

(assert (not b!5596667))

(assert (not b!5596613))

(assert (not b!5596312))

(assert (not b!5596311))

(assert (not b!5596404))

(assert (not bm!419653))

(assert (not b!5596681))

(assert (not b_lambda!212041))

(assert (not d!1768903))

(assert (not b!5596458))

(assert (not bm!419611))

(assert (not d!1769013))

(assert (not b!5596684))

(assert (not b!5596147))

(assert (not bm!419649))

(assert (not b!5596304))

(assert (not d!1768897))

(assert (not d!1768909))

(assert (not b!5596534))

(assert (not b_lambda!212071))

(assert (not b!5596593))

(assert (not b!5596607))

(assert (not bm!419640))

(assert (not bm!419566))

(assert (not bm!419600))

(assert (not d!1768979))

(assert (not d!1768927))

(assert (not d!1769023))

(assert (not b!5596661))

(assert (not bm!419644))

(assert (not d!1768877))

(assert (not d!1768913))

(assert (not d!1768857))

(assert (not b!5596587))

(assert (not b!5596599))

(assert (not b!5596654))

(assert (not b!5596423))

(assert (not b!5596518))

(assert (not b!5596576))

(assert (not b!5596572))

(assert (not b!5596615))

(assert (not d!1769011))

(assert (not b!5596673))

(assert (not b!5596145))

(assert (not b!5596586))

(assert (not bm!419646))

(assert (not bm!419674))

(assert (not b!5596097))

(assert (not b!5596630))

(assert (not b!5596212))

(assert (not b!5596141))

(assert (not b!5596316))

(assert (not b!5596203))

(assert (not d!1768853))

(assert (not b!5596648))

(assert (not setNonEmpty!37321))

(assert (not b!5596262))

(assert (not b_lambda!212077))

(assert (not bm!419634))

(assert (not b!5596678))

(assert (not b!5596685))

(assert (not b!5596366))

(assert (not b!5596341))

(assert (not b!5596515))

(assert (not bm!419626))

(assert (not d!1769019))

(assert (not b!5596394))

(assert (not b!5596299))

(assert (not d!1768961))

(assert (not b!5596513))

(assert (not bs!1293988))

(assert (not d!1768967))

(assert (not b!5596387))

(assert (not b!5596320))

(assert (not b!5596420))

(assert (not b!5596514))

(assert (not b!5596631))

(assert (not b!5596672))

(assert (not b!5596386))

(assert (not d!1768945))

(assert (not bm!419614))

(assert (not b!5596507))

(assert (not d!1768789))

(assert (not bm!419636))

(assert (not b!5596301))

(assert (not b!5596642))

(assert (not b!5596601))

(assert (not setNonEmpty!37318))

(assert (not b!5596634))

(assert (not d!1768817))

(assert (not b!5596517))

(assert (not b!5596644))

(assert (not d!1768783))

(assert (not bm!419612))

(assert (not d!1769001))

(assert (not d!1768799))

(assert (not b!5596680))

(assert (not b!5596113))

(assert (not b!5596195))

(assert (not b!5596219))

(assert (not bm!419616))

(assert (not b!5596135))

(assert (not b!5596413))

(assert (not d!1768883))

(assert (not d!1768801))

(assert (not b!5596614))

(assert (not b!5596297))

(assert (not bm!419671))

(assert (not b_lambda!212081))

(assert (not b!5596412))

(assert (not b!5596325))

(assert (not d!1768795))

(assert (not b!5596436))

(assert (not b!5596249))

(assert (not b!5596348))

(assert (not b!5596591))

(assert (not b!5596603))

(assert (not bm!419581))

(assert (not d!1768901))

(assert (not b!5596164))

(assert (not b!5596393))

(assert (not setNonEmpty!37320))

(assert (not b!5596421))

(assert (not bs!1293992))

(assert (not b!5596213))

(assert (not bs!1293989))

(assert (not b!5596236))

(assert (not bm!419620))

(assert (not d!1768859))

(assert (not d!1768971))

(assert (not b!5596657))

(assert (not bm!419597))

(assert (not b_lambda!212037))

(assert (not d!1768787))

(assert (not b_lambda!212039))

(assert (not b!5596561))

(assert (not bm!419675))

(assert (not b!5596670))

(assert (not d!1768841))

(assert (not d!1768989))

(assert (not bm!419593))

(assert (not b!5596594))

(assert (not b!5596110))

(assert (not b!5596337))

(assert (not b!5596589))

(assert (not b!5596286))

(assert (not b!5596240))

(assert (not b!5596336))

(assert (not b!5596590))

(assert (not b!5596237))

(assert (not bm!419606))

(assert (not d!1768965))

(assert (not b!5596401))

(assert (not b!5596532))

(assert (not bm!419663))

(assert (not b!5596171))

(assert (not b!5596244))

(assert (not b!5596274))

(assert (not bm!419628))

(assert (not bs!1293991))

(assert (not d!1768991))

(assert (not bm!419567))

(assert (not b!5596481))

(assert (not d!1768805))

(assert (not bm!419647))

(assert (not bm!419661))

(assert (not b!5596379))

(assert (not b!5596676))

(assert (not b!5596583))

(assert (not b_lambda!212075))

(assert (not setNonEmpty!37319))

(assert (not b!5596139))

(assert (not bm!419633))

(assert (not d!1768963))

(assert (not b!5596298))

(assert (not b!5596637))

(assert (not b!5596159))

(assert (not b!5596664))

(assert (not b!5596277))

(assert (not d!1768895))

(assert (not bm!419575))

(assert (not b!5596204))

(assert (not b!5596597))

(assert (not b!5596663))

(assert (not b!5596205))

(assert (not bm!419642))

(assert (not b!5596496))

(assert (not b!5596345))

(assert (not b!5596682))

(assert (not b!5596533))

(assert (not bm!419602))

(assert (not b!5596529))

(assert (not b!5596528))

(assert (not b!5596595))

(assert (not b!5596220))

(assert (not bm!419609))

(assert (not b!5596148))

(assert (not b!5596523))

(assert (not d!1768829))

(assert (not b!5596490))

(assert (not b!5596580))

(assert (not b!5596651))

(assert (not d!1768997))

(assert (not b!5596469))

(assert (not d!1768993))

(assert (not b!5596640))

(assert (not b!5596686))

(assert (not bm!419599))

(assert (not bm!419677))

(assert (not b!5596160))

(assert (not b!5596569))

(assert (not bm!419618))

(assert (not bm!419667))

(assert (not b!5596142))

(assert (not b!5596522))

(assert (not b_lambda!212079))

(assert (not b!5596510))

(assert (not bm!419604))

(assert (not b!5596653))

(assert (not bm!419632))

(assert (not b!5596643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

