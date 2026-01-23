; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588360 () Bool)

(assert start!588360)

(declare-fun b!5714156 () Bool)

(assert (=> b!5714156 true))

(assert (=> b!5714156 true))

(declare-fun lambda!308594 () Int)

(declare-fun lambda!308593 () Int)

(assert (=> b!5714156 (not (= lambda!308594 lambda!308593))))

(assert (=> b!5714156 true))

(assert (=> b!5714156 true))

(declare-fun b!5714136 () Bool)

(assert (=> b!5714136 true))

(declare-fun bs!1334822 () Bool)

(declare-fun b!5714132 () Bool)

(assert (= bs!1334822 (and b!5714132 b!5714156)))

(declare-datatypes ((C!31692 0))(
  ( (C!31693 (val!25548 Int)) )
))
(declare-datatypes ((Regex!15711 0))(
  ( (ElementMatch!15711 (c!1007249 C!31692)) (Concat!24556 (regOne!31934 Regex!15711) (regTwo!31934 Regex!15711)) (EmptyExpr!15711) (Star!15711 (reg!16040 Regex!15711)) (EmptyLang!15711) (Union!15711 (regOne!31935 Regex!15711) (regTwo!31935 Regex!15711)) )
))
(declare-fun r!7292 () Regex!15711)

(declare-fun lambda!308596 () Int)

(declare-fun lt!2276760 () Regex!15711)

(assert (=> bs!1334822 (= (= lt!2276760 (regOne!31934 r!7292)) (= lambda!308596 lambda!308593))))

(assert (=> bs!1334822 (not (= lambda!308596 lambda!308594))))

(assert (=> b!5714132 true))

(assert (=> b!5714132 true))

(assert (=> b!5714132 true))

(declare-fun lambda!308597 () Int)

(assert (=> bs!1334822 (not (= lambda!308597 lambda!308593))))

(assert (=> bs!1334822 (= (= lt!2276760 (regOne!31934 r!7292)) (= lambda!308597 lambda!308594))))

(assert (=> b!5714132 (not (= lambda!308597 lambda!308596))))

(assert (=> b!5714132 true))

(assert (=> b!5714132 true))

(assert (=> b!5714132 true))

(declare-fun bs!1334823 () Bool)

(declare-fun b!5714148 () Bool)

(assert (= bs!1334823 (and b!5714148 b!5714156)))

(declare-datatypes ((List!63432 0))(
  ( (Nil!63308) (Cons!63308 (h!69756 C!31692) (t!376752 List!63432)) )
))
(declare-fun s!2326 () List!63432)

(declare-datatypes ((tuple2!65616 0))(
  ( (tuple2!65617 (_1!36111 List!63432) (_2!36111 List!63432)) )
))
(declare-fun lt!2276755 () tuple2!65616)

(declare-fun lambda!308598 () Int)

(assert (=> bs!1334823 (= (and (= (_1!36111 lt!2276755) s!2326) (= (reg!16040 (regOne!31934 r!7292)) (regOne!31934 r!7292)) (= lt!2276760 (regTwo!31934 r!7292))) (= lambda!308598 lambda!308593))))

(assert (=> bs!1334823 (not (= lambda!308598 lambda!308594))))

(declare-fun bs!1334824 () Bool)

(assert (= bs!1334824 (and b!5714148 b!5714132)))

(assert (=> bs!1334824 (= (and (= (_1!36111 lt!2276755) s!2326) (= (reg!16040 (regOne!31934 r!7292)) lt!2276760) (= lt!2276760 (regTwo!31934 r!7292))) (= lambda!308598 lambda!308596))))

(assert (=> bs!1334824 (not (= lambda!308598 lambda!308597))))

(assert (=> b!5714148 true))

(assert (=> b!5714148 true))

(assert (=> b!5714148 true))

(declare-fun lambda!308599 () Int)

(assert (=> bs!1334823 (not (= lambda!308599 lambda!308593))))

(assert (=> bs!1334823 (not (= lambda!308599 lambda!308594))))

(assert (=> bs!1334824 (not (= lambda!308599 lambda!308597))))

(assert (=> bs!1334824 (not (= lambda!308599 lambda!308596))))

(assert (=> b!5714148 (not (= lambda!308599 lambda!308598))))

(assert (=> b!5714148 true))

(assert (=> b!5714148 true))

(assert (=> b!5714148 true))

(declare-fun lambda!308600 () Int)

(assert (=> bs!1334823 (not (= lambda!308600 lambda!308593))))

(assert (=> bs!1334823 (= (and (= (_1!36111 lt!2276755) s!2326) (= (reg!16040 (regOne!31934 r!7292)) (regOne!31934 r!7292)) (= lt!2276760 (regTwo!31934 r!7292))) (= lambda!308600 lambda!308594))))

(assert (=> b!5714148 (not (= lambda!308600 lambda!308599))))

(assert (=> bs!1334824 (= (and (= (_1!36111 lt!2276755) s!2326) (= (reg!16040 (regOne!31934 r!7292)) lt!2276760) (= lt!2276760 (regTwo!31934 r!7292))) (= lambda!308600 lambda!308597))))

(assert (=> bs!1334824 (not (= lambda!308600 lambda!308596))))

(assert (=> b!5714148 (not (= lambda!308600 lambda!308598))))

(assert (=> b!5714148 true))

(assert (=> b!5714148 true))

(assert (=> b!5714148 true))

(declare-fun b!5714120 () Bool)

(declare-fun e!3514228 () Bool)

(assert (=> b!5714120 (= e!3514228 true)))

(declare-datatypes ((List!63433 0))(
  ( (Nil!63309) (Cons!63309 (h!69757 Regex!15711) (t!376753 List!63433)) )
))
(declare-fun lt!2276734 () List!63433)

(declare-fun lt!2276761 () List!63433)

(declare-fun lt!2276739 () List!63432)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Context!10190 0))(
  ( (Context!10191 (exprs!5595 List!63433)) )
))
(declare-fun matchZipper!1849 ((InoxSet Context!10190) List!63432) Bool)

(declare-fun ++!13904 (List!63433 List!63433) List!63433)

(assert (=> b!5714120 (matchZipper!1849 (store ((as const (Array Context!10190 Bool)) false) (Context!10191 (++!13904 lt!2276734 lt!2276761)) true) lt!2276739)))

(declare-datatypes ((Unit!156376 0))(
  ( (Unit!156377) )
))
(declare-fun lt!2276775 () Unit!156376)

(declare-fun lambda!308601 () Int)

(declare-fun lemmaConcatPreservesForall!286 (List!63433 List!63433 Int) Unit!156376)

(assert (=> b!5714120 (= lt!2276775 (lemmaConcatPreservesForall!286 lt!2276734 lt!2276761 lambda!308601))))

(declare-fun lt!2276768 () Unit!156376)

(declare-fun lt!2276770 () List!63432)

(declare-fun lt!2276788 () Context!10190)

(declare-fun lt!2276741 () Context!10190)

(declare-fun lt!2276773 () tuple2!65616)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!126 (Context!10190 Context!10190 List!63432 List!63432) Unit!156376)

(assert (=> b!5714120 (= lt!2276768 (lemmaConcatenateContextMatchesConcatOfStrings!126 lt!2276741 lt!2276788 (_1!36111 lt!2276773) lt!2276770))))

(declare-fun lt!2276737 () (InoxSet Context!10190))

(assert (=> b!5714120 (matchZipper!1849 lt!2276737 lt!2276770)))

(declare-datatypes ((List!63434 0))(
  ( (Nil!63310) (Cons!63310 (h!69758 Context!10190) (t!376754 List!63434)) )
))
(declare-fun lt!2276758 () List!63434)

(declare-fun lt!2276756 () Unit!156376)

(declare-fun lt!2276745 () Regex!15711)

(declare-fun theoremZipperRegexEquiv!647 ((InoxSet Context!10190) List!63434 Regex!15711 List!63432) Unit!156376)

(assert (=> b!5714120 (= lt!2276756 (theoremZipperRegexEquiv!647 lt!2276737 lt!2276758 lt!2276745 lt!2276770))))

(declare-fun lt!2276735 () (InoxSet Context!10190))

(assert (=> b!5714120 (matchZipper!1849 lt!2276735 (_1!36111 lt!2276773))))

(declare-fun lt!2276740 () Unit!156376)

(declare-fun lt!2276779 () List!63434)

(assert (=> b!5714120 (= lt!2276740 (theoremZipperRegexEquiv!647 lt!2276735 lt!2276779 (reg!16040 (regOne!31934 r!7292)) (_1!36111 lt!2276773)))))

(declare-fun matchR!7896 (Regex!15711 List!63432) Bool)

(assert (=> b!5714120 (matchR!7896 lt!2276745 lt!2276770)))

(declare-fun lt!2276752 () Unit!156376)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!266 (Regex!15711 Regex!15711 List!63432 List!63432) Unit!156376)

(assert (=> b!5714120 (= lt!2276752 (lemmaTwoRegexMatchThenConcatMatchesConcatString!266 lt!2276760 (regTwo!31934 r!7292) (_2!36111 lt!2276773) (_2!36111 lt!2276755)))))

(declare-fun lt!2276787 () List!63432)

(assert (=> b!5714120 (matchR!7896 lt!2276760 lt!2276787)))

(declare-fun lt!2276757 () Unit!156376)

(declare-fun lemmaStarApp!90 (Regex!15711 List!63432 List!63432) Unit!156376)

(assert (=> b!5714120 (= lt!2276757 (lemmaStarApp!90 (reg!16040 (regOne!31934 r!7292)) (_1!36111 lt!2276773) (_2!36111 lt!2276773)))))

(declare-fun b!5714121 () Bool)

(declare-fun e!3514239 () Bool)

(declare-fun tp_is_empty!40675 () Bool)

(declare-fun tp!1583346 () Bool)

(assert (=> b!5714121 (= e!3514239 (and tp_is_empty!40675 tp!1583346))))

(declare-fun b!5714122 () Bool)

(declare-fun res!2412632 () Bool)

(assert (=> b!5714122 (=> res!2412632 e!3514228)))

(assert (=> b!5714122 (= res!2412632 (not (matchR!7896 lt!2276760 (_2!36111 lt!2276773))))))

(declare-fun b!5714123 () Bool)

(declare-fun e!3514245 () Bool)

(declare-fun e!3514235 () Bool)

(assert (=> b!5714123 (= e!3514245 e!3514235)))

(declare-fun res!2412622 () Bool)

(assert (=> b!5714123 (=> res!2412622 e!3514235)))

(declare-fun unfocusZipper!1453 (List!63434) Regex!15711)

(assert (=> b!5714123 (= res!2412622 (not (= (unfocusZipper!1453 lt!2276758) lt!2276745)))))

(assert (=> b!5714123 (= lt!2276758 (Cons!63310 lt!2276788 Nil!63310))))

(declare-fun b!5714124 () Bool)

(declare-fun res!2412636 () Bool)

(declare-fun e!3514244 () Bool)

(assert (=> b!5714124 (=> res!2412636 e!3514244)))

(declare-fun zl!343 () List!63434)

(declare-fun isEmpty!35180 (List!63433) Bool)

(assert (=> b!5714124 (= res!2412636 (isEmpty!35180 (t!376753 (exprs!5595 (h!69758 zl!343)))))))

(declare-fun b!5714125 () Bool)

(declare-fun e!3514238 () Bool)

(declare-fun nullable!5743 (Regex!15711) Bool)

(assert (=> b!5714125 (= e!3514238 (nullable!5743 (regOne!31934 (regOne!31934 r!7292))))))

(declare-fun b!5714126 () Bool)

(declare-fun e!3514231 () Bool)

(declare-fun tp!1583348 () Bool)

(assert (=> b!5714126 (= e!3514231 tp!1583348)))

(declare-fun setIsEmpty!38273 () Bool)

(declare-fun setRes!38273 () Bool)

(assert (=> setIsEmpty!38273 setRes!38273))

(declare-fun b!5714127 () Bool)

(declare-fun res!2412619 () Bool)

(declare-fun e!3514234 () Bool)

(assert (=> b!5714127 (=> res!2412619 e!3514234)))

(declare-fun lt!2276751 () Regex!15711)

(assert (=> b!5714127 (= res!2412619 (not (= lt!2276751 r!7292)))))

(declare-fun b!5714128 () Bool)

(declare-fun e!3514232 () Unit!156376)

(declare-fun Unit!156378 () Unit!156376)

(assert (=> b!5714128 (= e!3514232 Unit!156378)))

(declare-fun lt!2276786 () (InoxSet Context!10190))

(declare-fun lt!2276769 () (InoxSet Context!10190))

(declare-fun lt!2276764 () Unit!156376)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!736 ((InoxSet Context!10190) (InoxSet Context!10190) List!63432) Unit!156376)

(assert (=> b!5714128 (= lt!2276764 (lemmaZipperConcatMatchesSameAsBothZippers!736 lt!2276786 lt!2276769 (t!376752 s!2326)))))

(declare-fun res!2412630 () Bool)

(assert (=> b!5714128 (= res!2412630 (matchZipper!1849 lt!2276786 (t!376752 s!2326)))))

(declare-fun e!3514233 () Bool)

(assert (=> b!5714128 (=> res!2412630 e!3514233)))

(assert (=> b!5714128 (= (matchZipper!1849 ((_ map or) lt!2276786 lt!2276769) (t!376752 s!2326)) e!3514233)))

(declare-fun b!5714129 () Bool)

(declare-fun e!3514237 () Bool)

(declare-fun e!3514243 () Bool)

(assert (=> b!5714129 (= e!3514237 (not e!3514243))))

(declare-fun res!2412643 () Bool)

(assert (=> b!5714129 (=> res!2412643 e!3514243)))

(get-info :version)

(assert (=> b!5714129 (= res!2412643 (not ((_ is Cons!63310) zl!343)))))

(declare-fun lt!2276766 () Bool)

(declare-fun lt!2276774 () Bool)

(assert (=> b!5714129 (= lt!2276766 lt!2276774)))

(declare-fun matchRSpec!2814 (Regex!15711 List!63432) Bool)

(assert (=> b!5714129 (= lt!2276774 (matchRSpec!2814 r!7292 s!2326))))

(assert (=> b!5714129 (= lt!2276766 (matchR!7896 r!7292 s!2326))))

(declare-fun lt!2276780 () Unit!156376)

(declare-fun mainMatchTheorem!2814 (Regex!15711 List!63432) Unit!156376)

(assert (=> b!5714129 (= lt!2276780 (mainMatchTheorem!2814 r!7292 s!2326))))

(declare-fun b!5714130 () Bool)

(declare-fun res!2412641 () Bool)

(declare-fun e!3514229 () Bool)

(assert (=> b!5714130 (=> res!2412641 e!3514229)))

(assert (=> b!5714130 (= res!2412641 (or ((_ is Concat!24556) (regOne!31934 r!7292)) (not ((_ is Star!15711) (regOne!31934 r!7292)))))))

(declare-fun b!5714131 () Bool)

(declare-fun e!3514241 () Bool)

(declare-fun e!3514226 () Bool)

(assert (=> b!5714131 (= e!3514241 e!3514226)))

(declare-fun res!2412629 () Bool)

(assert (=> b!5714131 (=> res!2412629 e!3514226)))

(declare-fun lt!2276767 () Context!10190)

(declare-fun lt!2276753 () Regex!15711)

(assert (=> b!5714131 (= res!2412629 (not (= (unfocusZipper!1453 (Cons!63310 lt!2276767 Nil!63310)) lt!2276753)))))

(assert (=> b!5714131 (= lt!2276753 (Concat!24556 (reg!16040 (regOne!31934 r!7292)) lt!2276745))))

(declare-fun e!3514227 () Bool)

(declare-fun e!3514224 () Bool)

(assert (=> b!5714132 (= e!3514227 e!3514224)))

(declare-fun res!2412612 () Bool)

(assert (=> b!5714132 (=> res!2412612 e!3514224)))

(declare-fun ++!13905 (List!63432 List!63432) List!63432)

(assert (=> b!5714132 (= res!2412612 (not (= (++!13905 (_1!36111 lt!2276755) (_2!36111 lt!2276755)) s!2326)))))

(declare-datatypes ((Option!15720 0))(
  ( (None!15719) (Some!15719 (v!51774 tuple2!65616)) )
))
(declare-fun lt!2276750 () Option!15720)

(declare-fun get!21826 (Option!15720) tuple2!65616)

(assert (=> b!5714132 (= lt!2276755 (get!21826 lt!2276750))))

(declare-fun Exists!2811 (Int) Bool)

(assert (=> b!5714132 (= (Exists!2811 lambda!308596) (Exists!2811 lambda!308597))))

(declare-fun lt!2276733 () Unit!156376)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1440 (Regex!15711 Regex!15711 List!63432) Unit!156376)

(assert (=> b!5714132 (= lt!2276733 (lemmaExistCutMatchRandMatchRSpecEquivalent!1440 lt!2276760 (regTwo!31934 r!7292) s!2326))))

(declare-fun isDefined!12423 (Option!15720) Bool)

(assert (=> b!5714132 (= (isDefined!12423 lt!2276750) (Exists!2811 lambda!308596))))

(declare-fun findConcatSeparation!2134 (Regex!15711 Regex!15711 List!63432 List!63432 List!63432) Option!15720)

(assert (=> b!5714132 (= lt!2276750 (findConcatSeparation!2134 lt!2276760 (regTwo!31934 r!7292) Nil!63308 s!2326 s!2326))))

(declare-fun lt!2276763 () Unit!156376)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1898 (Regex!15711 Regex!15711 List!63432) Unit!156376)

(assert (=> b!5714132 (= lt!2276763 (lemmaFindConcatSeparationEquivalentToExists!1898 lt!2276760 (regTwo!31934 r!7292) s!2326))))

(declare-fun setNonEmpty!38273 () Bool)

(declare-fun setElem!38273 () Context!10190)

(declare-fun e!3514230 () Bool)

(declare-fun tp!1583350 () Bool)

(declare-fun inv!82524 (Context!10190) Bool)

(assert (=> setNonEmpty!38273 (= setRes!38273 (and tp!1583350 (inv!82524 setElem!38273) e!3514230))))

(declare-fun z!1189 () (InoxSet Context!10190))

(declare-fun setRest!38273 () (InoxSet Context!10190))

(assert (=> setNonEmpty!38273 (= z!1189 ((_ map or) (store ((as const (Array Context!10190 Bool)) false) setElem!38273 true) setRest!38273))))

(declare-fun b!5714133 () Bool)

(declare-fun tp!1583354 () Bool)

(assert (=> b!5714133 (= e!3514230 tp!1583354)))

(declare-fun e!3514223 () Bool)

(declare-fun b!5714134 () Bool)

(declare-fun tp!1583353 () Bool)

(assert (=> b!5714134 (= e!3514223 (and (inv!82524 (h!69758 zl!343)) e!3514231 tp!1583353))))

(declare-fun b!5714135 () Bool)

(declare-fun res!2412626 () Bool)

(assert (=> b!5714135 (=> res!2412626 e!3514243)))

(declare-fun generalisedConcat!1326 (List!63433) Regex!15711)

(assert (=> b!5714135 (= res!2412626 (not (= r!7292 (generalisedConcat!1326 (exprs!5595 (h!69758 zl!343))))))))

(assert (=> b!5714136 (= e!3514244 e!3514229)))

(declare-fun res!2412614 () Bool)

(assert (=> b!5714136 (=> res!2412614 e!3514229)))

(assert (=> b!5714136 (= res!2412614 (or (and ((_ is ElementMatch!15711) (regOne!31934 r!7292)) (= (c!1007249 (regOne!31934 r!7292)) (h!69756 s!2326))) ((_ is Union!15711) (regOne!31934 r!7292))))))

(declare-fun lt!2276754 () Unit!156376)

(assert (=> b!5714136 (= lt!2276754 e!3514232)))

(declare-fun c!1007248 () Bool)

(assert (=> b!5714136 (= c!1007248 (nullable!5743 (h!69757 (exprs!5595 (h!69758 zl!343)))))))

(declare-fun lambda!308595 () Int)

(declare-fun flatMap!1324 ((InoxSet Context!10190) Int) (InoxSet Context!10190))

(declare-fun derivationStepZipperUp!979 (Context!10190 C!31692) (InoxSet Context!10190))

(assert (=> b!5714136 (= (flatMap!1324 z!1189 lambda!308595) (derivationStepZipperUp!979 (h!69758 zl!343) (h!69756 s!2326)))))

(declare-fun lt!2276785 () Unit!156376)

(declare-fun lemmaFlatMapOnSingletonSet!856 ((InoxSet Context!10190) Context!10190 Int) Unit!156376)

(assert (=> b!5714136 (= lt!2276785 (lemmaFlatMapOnSingletonSet!856 z!1189 (h!69758 zl!343) lambda!308595))))

(declare-fun lt!2276762 () Context!10190)

(assert (=> b!5714136 (= lt!2276769 (derivationStepZipperUp!979 lt!2276762 (h!69756 s!2326)))))

(declare-fun derivationStepZipperDown!1053 (Regex!15711 Context!10190 C!31692) (InoxSet Context!10190))

(assert (=> b!5714136 (= lt!2276786 (derivationStepZipperDown!1053 (h!69757 (exprs!5595 (h!69758 zl!343))) lt!2276762 (h!69756 s!2326)))))

(assert (=> b!5714136 (= lt!2276762 (Context!10191 (t!376753 (exprs!5595 (h!69758 zl!343)))))))

(declare-fun lt!2276748 () (InoxSet Context!10190))

(assert (=> b!5714136 (= lt!2276748 (derivationStepZipperUp!979 (Context!10191 (Cons!63309 (h!69757 (exprs!5595 (h!69758 zl!343))) (t!376753 (exprs!5595 (h!69758 zl!343))))) (h!69756 s!2326)))))

(declare-fun b!5714137 () Bool)

(declare-fun e!3514236 () Bool)

(assert (=> b!5714137 (= e!3514229 e!3514236)))

(declare-fun res!2412633 () Bool)

(assert (=> b!5714137 (=> res!2412633 e!3514236)))

(declare-fun lt!2276749 () (InoxSet Context!10190))

(assert (=> b!5714137 (= res!2412633 (not (= lt!2276786 lt!2276749)))))

(assert (=> b!5714137 (= lt!2276749 (derivationStepZipperDown!1053 (reg!16040 (regOne!31934 r!7292)) lt!2276788 (h!69756 s!2326)))))

(assert (=> b!5714137 (= lt!2276788 (Context!10191 lt!2276761))))

(assert (=> b!5714137 (= lt!2276761 (Cons!63309 lt!2276760 (t!376753 (exprs!5595 (h!69758 zl!343)))))))

(assert (=> b!5714137 (= lt!2276760 (Star!15711 (reg!16040 (regOne!31934 r!7292))))))

(declare-fun b!5714138 () Bool)

(declare-fun res!2412635 () Bool)

(assert (=> b!5714138 (=> res!2412635 e!3514224)))

(declare-fun isEmpty!35181 (List!63432) Bool)

(assert (=> b!5714138 (= res!2412635 (isEmpty!35181 (_1!36111 lt!2276755)))))

(declare-fun b!5714139 () Bool)

(declare-fun e!3514242 () Bool)

(declare-fun tp!1583351 () Bool)

(assert (=> b!5714139 (= e!3514242 tp!1583351)))

(declare-fun b!5714140 () Bool)

(assert (=> b!5714140 (= e!3514233 (matchZipper!1849 lt!2276769 (t!376752 s!2326)))))

(declare-fun res!2412634 () Bool)

(declare-fun e!3514246 () Bool)

(assert (=> start!588360 (=> (not res!2412634) (not e!3514246))))

(declare-fun validRegex!7447 (Regex!15711) Bool)

(assert (=> start!588360 (= res!2412634 (validRegex!7447 r!7292))))

(assert (=> start!588360 e!3514246))

(assert (=> start!588360 e!3514242))

(declare-fun condSetEmpty!38273 () Bool)

(assert (=> start!588360 (= condSetEmpty!38273 (= z!1189 ((as const (Array Context!10190 Bool)) false)))))

(assert (=> start!588360 setRes!38273))

(assert (=> start!588360 e!3514223))

(assert (=> start!588360 e!3514239))

(declare-fun b!5714141 () Bool)

(declare-fun res!2412617 () Bool)

(assert (=> b!5714141 (=> res!2412617 e!3514234)))

(declare-fun lt!2276759 () (InoxSet Context!10190))

(declare-fun lt!2276738 () (InoxSet Context!10190))

(assert (=> b!5714141 (= res!2412617 (not (= (matchZipper!1849 lt!2276738 s!2326) (matchZipper!1849 lt!2276759 (t!376752 s!2326)))))))

(declare-fun b!5714142 () Bool)

(assert (=> b!5714142 (= e!3514236 e!3514234)))

(declare-fun res!2412644 () Bool)

(assert (=> b!5714142 (=> res!2412644 e!3514234)))

(assert (=> b!5714142 (= res!2412644 (not (= lt!2276759 lt!2276749)))))

(assert (=> b!5714142 (= (flatMap!1324 lt!2276738 lambda!308595) (derivationStepZipperUp!979 lt!2276767 (h!69756 s!2326)))))

(declare-fun lt!2276771 () Unit!156376)

(assert (=> b!5714142 (= lt!2276771 (lemmaFlatMapOnSingletonSet!856 lt!2276738 lt!2276767 lambda!308595))))

(declare-fun lt!2276778 () (InoxSet Context!10190))

(assert (=> b!5714142 (= lt!2276778 (derivationStepZipperUp!979 lt!2276767 (h!69756 s!2326)))))

(declare-fun derivationStepZipper!1794 ((InoxSet Context!10190) C!31692) (InoxSet Context!10190))

(assert (=> b!5714142 (= lt!2276759 (derivationStepZipper!1794 lt!2276738 (h!69756 s!2326)))))

(assert (=> b!5714142 (= lt!2276738 (store ((as const (Array Context!10190 Bool)) false) lt!2276767 true))))

(assert (=> b!5714142 (= lt!2276767 (Context!10191 (Cons!63309 (reg!16040 (regOne!31934 r!7292)) lt!2276761)))))

(declare-fun b!5714143 () Bool)

(declare-fun res!2412616 () Bool)

(assert (=> b!5714143 (=> res!2412616 e!3514224)))

(assert (=> b!5714143 (= res!2412616 (not (matchR!7896 lt!2276760 (_1!36111 lt!2276755))))))

(declare-fun b!5714144 () Bool)

(declare-fun e!3514240 () Bool)

(assert (=> b!5714144 (= e!3514240 e!3514228)))

(declare-fun res!2412642 () Bool)

(assert (=> b!5714144 (=> res!2412642 e!3514228)))

(declare-fun lt!2276776 () List!63432)

(assert (=> b!5714144 (= res!2412642 (not (= lt!2276776 s!2326)))))

(assert (=> b!5714144 (= lt!2276776 lt!2276739)))

(assert (=> b!5714144 (= lt!2276739 (++!13905 (_1!36111 lt!2276773) lt!2276770))))

(assert (=> b!5714144 (= lt!2276776 (++!13905 lt!2276787 (_2!36111 lt!2276755)))))

(assert (=> b!5714144 (= lt!2276770 (++!13905 (_2!36111 lt!2276773) (_2!36111 lt!2276755)))))

(declare-fun lt!2276747 () Unit!156376)

(declare-fun lemmaConcatAssociativity!2878 (List!63432 List!63432 List!63432) Unit!156376)

(assert (=> b!5714144 (= lt!2276747 (lemmaConcatAssociativity!2878 (_1!36111 lt!2276773) (_2!36111 lt!2276773) (_2!36111 lt!2276755)))))

(declare-fun b!5714145 () Bool)

(declare-fun res!2412640 () Bool)

(assert (=> b!5714145 (=> res!2412640 e!3514228)))

(assert (=> b!5714145 (= res!2412640 (not (matchR!7896 (reg!16040 (regOne!31934 r!7292)) (_1!36111 lt!2276773))))))

(declare-fun b!5714146 () Bool)

(assert (=> b!5714146 (= e!3514234 e!3514241)))

(declare-fun res!2412627 () Bool)

(assert (=> b!5714146 (=> res!2412627 e!3514241)))

(assert (=> b!5714146 (= res!2412627 (not (= r!7292 lt!2276745)))))

(assert (=> b!5714146 (= lt!2276745 (Concat!24556 lt!2276760 (regTwo!31934 r!7292)))))

(declare-fun b!5714147 () Bool)

(assert (=> b!5714147 (= e!3514242 tp_is_empty!40675)))

(assert (=> b!5714148 (= e!3514224 e!3514240)))

(declare-fun res!2412620 () Bool)

(assert (=> b!5714148 (=> res!2412620 e!3514240)))

(assert (=> b!5714148 (= res!2412620 (not (= (_1!36111 lt!2276755) lt!2276787)))))

(assert (=> b!5714148 (= lt!2276787 (++!13905 (_1!36111 lt!2276773) (_2!36111 lt!2276773)))))

(declare-fun lt!2276784 () Option!15720)

(assert (=> b!5714148 (= lt!2276773 (get!21826 lt!2276784))))

(assert (=> b!5714148 (= (Exists!2811 lambda!308598) (Exists!2811 lambda!308600))))

(declare-fun lt!2276743 () Unit!156376)

(assert (=> b!5714148 (= lt!2276743 (lemmaExistCutMatchRandMatchRSpecEquivalent!1440 (reg!16040 (regOne!31934 r!7292)) lt!2276760 (_1!36111 lt!2276755)))))

(assert (=> b!5714148 (= (Exists!2811 lambda!308598) (Exists!2811 lambda!308599))))

(declare-fun lt!2276781 () Unit!156376)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!548 (Regex!15711 List!63432) Unit!156376)

(assert (=> b!5714148 (= lt!2276781 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!548 (reg!16040 (regOne!31934 r!7292)) (_1!36111 lt!2276755)))))

(assert (=> b!5714148 (= (isDefined!12423 lt!2276784) (Exists!2811 lambda!308598))))

(assert (=> b!5714148 (= lt!2276784 (findConcatSeparation!2134 (reg!16040 (regOne!31934 r!7292)) lt!2276760 Nil!63308 (_1!36111 lt!2276755) (_1!36111 lt!2276755)))))

(declare-fun lt!2276782 () Unit!156376)

(assert (=> b!5714148 (= lt!2276782 (lemmaFindConcatSeparationEquivalentToExists!1898 (reg!16040 (regOne!31934 r!7292)) lt!2276760 (_1!36111 lt!2276755)))))

(assert (=> b!5714148 (matchRSpec!2814 lt!2276760 (_1!36111 lt!2276755))))

(declare-fun lt!2276744 () Unit!156376)

(assert (=> b!5714148 (= lt!2276744 (mainMatchTheorem!2814 lt!2276760 (_1!36111 lt!2276755)))))

(declare-fun b!5714149 () Bool)

(declare-fun res!2412624 () Bool)

(assert (=> b!5714149 (=> res!2412624 e!3514229)))

(assert (=> b!5714149 (= res!2412624 e!3514238)))

(declare-fun res!2412639 () Bool)

(assert (=> b!5714149 (=> (not res!2412639) (not e!3514238))))

(assert (=> b!5714149 (= res!2412639 ((_ is Concat!24556) (regOne!31934 r!7292)))))

(declare-fun b!5714150 () Bool)

(declare-fun tp!1583345 () Bool)

(declare-fun tp!1583352 () Bool)

(assert (=> b!5714150 (= e!3514242 (and tp!1583345 tp!1583352))))

(declare-fun b!5714151 () Bool)

(assert (=> b!5714151 (= e!3514235 e!3514227)))

(declare-fun res!2412615 () Bool)

(assert (=> b!5714151 (=> res!2412615 e!3514227)))

(assert (=> b!5714151 (= res!2412615 (not lt!2276766))))

(declare-fun e!3514225 () Bool)

(assert (=> b!5714151 e!3514225))

(declare-fun res!2412637 () Bool)

(assert (=> b!5714151 (=> (not res!2412637) (not e!3514225))))

(assert (=> b!5714151 (= res!2412637 (= (matchR!7896 lt!2276753 s!2326) (matchRSpec!2814 lt!2276753 s!2326)))))

(declare-fun lt!2276736 () Unit!156376)

(assert (=> b!5714151 (= lt!2276736 (mainMatchTheorem!2814 lt!2276753 s!2326))))

(declare-fun b!5714152 () Bool)

(declare-fun res!2412623 () Bool)

(assert (=> b!5714152 (=> res!2412623 e!3514243)))

(declare-fun isEmpty!35182 (List!63434) Bool)

(assert (=> b!5714152 (= res!2412623 (not (isEmpty!35182 (t!376754 zl!343))))))

(declare-fun b!5714153 () Bool)

(assert (=> b!5714153 (= e!3514226 e!3514245)))

(declare-fun res!2412638 () Bool)

(assert (=> b!5714153 (=> res!2412638 e!3514245)))

(assert (=> b!5714153 (= res!2412638 (not (= (unfocusZipper!1453 lt!2276779) (reg!16040 (regOne!31934 r!7292)))))))

(assert (=> b!5714153 (= lt!2276779 (Cons!63310 lt!2276741 Nil!63310))))

(assert (=> b!5714153 (= (flatMap!1324 lt!2276737 lambda!308595) (derivationStepZipperUp!979 lt!2276788 (h!69756 s!2326)))))

(declare-fun lt!2276742 () Unit!156376)

(assert (=> b!5714153 (= lt!2276742 (lemmaFlatMapOnSingletonSet!856 lt!2276737 lt!2276788 lambda!308595))))

(assert (=> b!5714153 (= (flatMap!1324 lt!2276735 lambda!308595) (derivationStepZipperUp!979 lt!2276741 (h!69756 s!2326)))))

(declare-fun lt!2276765 () Unit!156376)

(assert (=> b!5714153 (= lt!2276765 (lemmaFlatMapOnSingletonSet!856 lt!2276735 lt!2276741 lambda!308595))))

(declare-fun lt!2276746 () (InoxSet Context!10190))

(assert (=> b!5714153 (= lt!2276746 (derivationStepZipperUp!979 lt!2276788 (h!69756 s!2326)))))

(declare-fun lt!2276777 () (InoxSet Context!10190))

(assert (=> b!5714153 (= lt!2276777 (derivationStepZipperUp!979 lt!2276741 (h!69756 s!2326)))))

(assert (=> b!5714153 (= lt!2276737 (store ((as const (Array Context!10190 Bool)) false) lt!2276788 true))))

(assert (=> b!5714153 (= lt!2276735 (store ((as const (Array Context!10190 Bool)) false) lt!2276741 true))))

(assert (=> b!5714153 (= lt!2276741 (Context!10191 lt!2276734))))

(assert (=> b!5714153 (= lt!2276734 (Cons!63309 (reg!16040 (regOne!31934 r!7292)) Nil!63309))))

(declare-fun b!5714154 () Bool)

(assert (=> b!5714154 (= e!3514225 (or (not lt!2276766) lt!2276774))))

(declare-fun b!5714155 () Bool)

(declare-fun res!2412625 () Bool)

(assert (=> b!5714155 (=> res!2412625 e!3514243)))

(declare-fun generalisedUnion!1574 (List!63433) Regex!15711)

(declare-fun unfocusZipperList!1139 (List!63434) List!63433)

(assert (=> b!5714155 (= res!2412625 (not (= r!7292 (generalisedUnion!1574 (unfocusZipperList!1139 zl!343)))))))

(assert (=> b!5714156 (= e!3514243 e!3514244)))

(declare-fun res!2412621 () Bool)

(assert (=> b!5714156 (=> res!2412621 e!3514244)))

(declare-fun lt!2276772 () Bool)

(assert (=> b!5714156 (= res!2412621 (or (not (= lt!2276766 lt!2276772)) ((_ is Nil!63308) s!2326)))))

(assert (=> b!5714156 (= (Exists!2811 lambda!308593) (Exists!2811 lambda!308594))))

(declare-fun lt!2276732 () Unit!156376)

(assert (=> b!5714156 (= lt!2276732 (lemmaExistCutMatchRandMatchRSpecEquivalent!1440 (regOne!31934 r!7292) (regTwo!31934 r!7292) s!2326))))

(assert (=> b!5714156 (= lt!2276772 (Exists!2811 lambda!308593))))

(assert (=> b!5714156 (= lt!2276772 (isDefined!12423 (findConcatSeparation!2134 (regOne!31934 r!7292) (regTwo!31934 r!7292) Nil!63308 s!2326 s!2326)))))

(declare-fun lt!2276783 () Unit!156376)

(assert (=> b!5714156 (= lt!2276783 (lemmaFindConcatSeparationEquivalentToExists!1898 (regOne!31934 r!7292) (regTwo!31934 r!7292) s!2326))))

(declare-fun b!5714157 () Bool)

(declare-fun res!2412628 () Bool)

(assert (=> b!5714157 (=> res!2412628 e!3514243)))

(assert (=> b!5714157 (= res!2412628 (or ((_ is EmptyExpr!15711) r!7292) ((_ is EmptyLang!15711) r!7292) ((_ is ElementMatch!15711) r!7292) ((_ is Union!15711) r!7292) (not ((_ is Concat!24556) r!7292))))))

(declare-fun b!5714158 () Bool)

(declare-fun res!2412613 () Bool)

(assert (=> b!5714158 (=> (not res!2412613) (not e!3514246))))

(declare-fun toList!9495 ((InoxSet Context!10190)) List!63434)

(assert (=> b!5714158 (= res!2412613 (= (toList!9495 z!1189) zl!343))))

(declare-fun b!5714159 () Bool)

(declare-fun res!2412645 () Bool)

(assert (=> b!5714159 (=> res!2412645 e!3514224)))

(assert (=> b!5714159 (= res!2412645 (not (matchR!7896 (regTwo!31934 r!7292) (_2!36111 lt!2276755))))))

(declare-fun b!5714160 () Bool)

(declare-fun Unit!156379 () Unit!156376)

(assert (=> b!5714160 (= e!3514232 Unit!156379)))

(declare-fun b!5714161 () Bool)

(declare-fun res!2412631 () Bool)

(assert (=> b!5714161 (=> res!2412631 e!3514243)))

(assert (=> b!5714161 (= res!2412631 (not ((_ is Cons!63309) (exprs!5595 (h!69758 zl!343)))))))

(declare-fun b!5714162 () Bool)

(assert (=> b!5714162 (= e!3514246 e!3514237)))

(declare-fun res!2412618 () Bool)

(assert (=> b!5714162 (=> (not res!2412618) (not e!3514237))))

(assert (=> b!5714162 (= res!2412618 (= r!7292 lt!2276751))))

(assert (=> b!5714162 (= lt!2276751 (unfocusZipper!1453 zl!343))))

(declare-fun b!5714163 () Bool)

(declare-fun tp!1583347 () Bool)

(declare-fun tp!1583349 () Bool)

(assert (=> b!5714163 (= e!3514242 (and tp!1583347 tp!1583349))))

(assert (= (and start!588360 res!2412634) b!5714158))

(assert (= (and b!5714158 res!2412613) b!5714162))

(assert (= (and b!5714162 res!2412618) b!5714129))

(assert (= (and b!5714129 (not res!2412643)) b!5714152))

(assert (= (and b!5714152 (not res!2412623)) b!5714135))

(assert (= (and b!5714135 (not res!2412626)) b!5714161))

(assert (= (and b!5714161 (not res!2412631)) b!5714155))

(assert (= (and b!5714155 (not res!2412625)) b!5714157))

(assert (= (and b!5714157 (not res!2412628)) b!5714156))

(assert (= (and b!5714156 (not res!2412621)) b!5714124))

(assert (= (and b!5714124 (not res!2412636)) b!5714136))

(assert (= (and b!5714136 c!1007248) b!5714128))

(assert (= (and b!5714136 (not c!1007248)) b!5714160))

(assert (= (and b!5714128 (not res!2412630)) b!5714140))

(assert (= (and b!5714136 (not res!2412614)) b!5714149))

(assert (= (and b!5714149 res!2412639) b!5714125))

(assert (= (and b!5714149 (not res!2412624)) b!5714130))

(assert (= (and b!5714130 (not res!2412641)) b!5714137))

(assert (= (and b!5714137 (not res!2412633)) b!5714142))

(assert (= (and b!5714142 (not res!2412644)) b!5714141))

(assert (= (and b!5714141 (not res!2412617)) b!5714127))

(assert (= (and b!5714127 (not res!2412619)) b!5714146))

(assert (= (and b!5714146 (not res!2412627)) b!5714131))

(assert (= (and b!5714131 (not res!2412629)) b!5714153))

(assert (= (and b!5714153 (not res!2412638)) b!5714123))

(assert (= (and b!5714123 (not res!2412622)) b!5714151))

(assert (= (and b!5714151 res!2412637) b!5714154))

(assert (= (and b!5714151 (not res!2412615)) b!5714132))

(assert (= (and b!5714132 (not res!2412612)) b!5714143))

(assert (= (and b!5714143 (not res!2412616)) b!5714159))

(assert (= (and b!5714159 (not res!2412645)) b!5714138))

(assert (= (and b!5714138 (not res!2412635)) b!5714148))

(assert (= (and b!5714148 (not res!2412620)) b!5714144))

(assert (= (and b!5714144 (not res!2412642)) b!5714145))

(assert (= (and b!5714145 (not res!2412640)) b!5714122))

(assert (= (and b!5714122 (not res!2412632)) b!5714120))

(assert (= (and start!588360 ((_ is ElementMatch!15711) r!7292)) b!5714147))

(assert (= (and start!588360 ((_ is Concat!24556) r!7292)) b!5714150))

(assert (= (and start!588360 ((_ is Star!15711) r!7292)) b!5714139))

(assert (= (and start!588360 ((_ is Union!15711) r!7292)) b!5714163))

(assert (= (and start!588360 condSetEmpty!38273) setIsEmpty!38273))

(assert (= (and start!588360 (not condSetEmpty!38273)) setNonEmpty!38273))

(assert (= setNonEmpty!38273 b!5714133))

(assert (= b!5714134 b!5714126))

(assert (= (and start!588360 ((_ is Cons!63310) zl!343)) b!5714134))

(assert (= (and start!588360 ((_ is Cons!63308) s!2326)) b!5714121))

(declare-fun m!6667488 () Bool)

(assert (=> b!5714128 m!6667488))

(declare-fun m!6667490 () Bool)

(assert (=> b!5714128 m!6667490))

(declare-fun m!6667492 () Bool)

(assert (=> b!5714128 m!6667492))

(declare-fun m!6667494 () Bool)

(assert (=> b!5714143 m!6667494))

(declare-fun m!6667496 () Bool)

(assert (=> b!5714132 m!6667496))

(declare-fun m!6667498 () Bool)

(assert (=> b!5714132 m!6667498))

(declare-fun m!6667500 () Bool)

(assert (=> b!5714132 m!6667500))

(declare-fun m!6667502 () Bool)

(assert (=> b!5714132 m!6667502))

(declare-fun m!6667504 () Bool)

(assert (=> b!5714132 m!6667504))

(declare-fun m!6667506 () Bool)

(assert (=> b!5714132 m!6667506))

(assert (=> b!5714132 m!6667502))

(declare-fun m!6667508 () Bool)

(assert (=> b!5714132 m!6667508))

(declare-fun m!6667510 () Bool)

(assert (=> b!5714132 m!6667510))

(declare-fun m!6667512 () Bool)

(assert (=> b!5714137 m!6667512))

(declare-fun m!6667514 () Bool)

(assert (=> b!5714140 m!6667514))

(declare-fun m!6667516 () Bool)

(assert (=> b!5714135 m!6667516))

(declare-fun m!6667518 () Bool)

(assert (=> b!5714148 m!6667518))

(declare-fun m!6667520 () Bool)

(assert (=> b!5714148 m!6667520))

(declare-fun m!6667522 () Bool)

(assert (=> b!5714148 m!6667522))

(assert (=> b!5714148 m!6667522))

(declare-fun m!6667524 () Bool)

(assert (=> b!5714148 m!6667524))

(declare-fun m!6667526 () Bool)

(assert (=> b!5714148 m!6667526))

(declare-fun m!6667528 () Bool)

(assert (=> b!5714148 m!6667528))

(assert (=> b!5714148 m!6667522))

(declare-fun m!6667530 () Bool)

(assert (=> b!5714148 m!6667530))

(declare-fun m!6667532 () Bool)

(assert (=> b!5714148 m!6667532))

(declare-fun m!6667534 () Bool)

(assert (=> b!5714148 m!6667534))

(declare-fun m!6667536 () Bool)

(assert (=> b!5714148 m!6667536))

(declare-fun m!6667538 () Bool)

(assert (=> b!5714148 m!6667538))

(declare-fun m!6667540 () Bool)

(assert (=> b!5714148 m!6667540))

(declare-fun m!6667542 () Bool)

(assert (=> b!5714158 m!6667542))

(declare-fun m!6667544 () Bool)

(assert (=> b!5714141 m!6667544))

(declare-fun m!6667546 () Bool)

(assert (=> b!5714141 m!6667546))

(declare-fun m!6667548 () Bool)

(assert (=> b!5714138 m!6667548))

(declare-fun m!6667550 () Bool)

(assert (=> b!5714125 m!6667550))

(declare-fun m!6667552 () Bool)

(assert (=> b!5714155 m!6667552))

(assert (=> b!5714155 m!6667552))

(declare-fun m!6667554 () Bool)

(assert (=> b!5714155 m!6667554))

(declare-fun m!6667556 () Bool)

(assert (=> b!5714145 m!6667556))

(declare-fun m!6667558 () Bool)

(assert (=> b!5714153 m!6667558))

(declare-fun m!6667560 () Bool)

(assert (=> b!5714153 m!6667560))

(declare-fun m!6667562 () Bool)

(assert (=> b!5714153 m!6667562))

(declare-fun m!6667564 () Bool)

(assert (=> b!5714153 m!6667564))

(declare-fun m!6667566 () Bool)

(assert (=> b!5714153 m!6667566))

(declare-fun m!6667568 () Bool)

(assert (=> b!5714153 m!6667568))

(declare-fun m!6667570 () Bool)

(assert (=> b!5714153 m!6667570))

(declare-fun m!6667572 () Bool)

(assert (=> b!5714153 m!6667572))

(declare-fun m!6667574 () Bool)

(assert (=> b!5714153 m!6667574))

(declare-fun m!6667576 () Bool)

(assert (=> b!5714144 m!6667576))

(declare-fun m!6667578 () Bool)

(assert (=> b!5714144 m!6667578))

(declare-fun m!6667580 () Bool)

(assert (=> b!5714144 m!6667580))

(declare-fun m!6667582 () Bool)

(assert (=> b!5714144 m!6667582))

(declare-fun m!6667584 () Bool)

(assert (=> b!5714159 m!6667584))

(declare-fun m!6667586 () Bool)

(assert (=> b!5714134 m!6667586))

(declare-fun m!6667588 () Bool)

(assert (=> setNonEmpty!38273 m!6667588))

(declare-fun m!6667590 () Bool)

(assert (=> b!5714129 m!6667590))

(declare-fun m!6667592 () Bool)

(assert (=> b!5714129 m!6667592))

(declare-fun m!6667594 () Bool)

(assert (=> b!5714129 m!6667594))

(declare-fun m!6667596 () Bool)

(assert (=> b!5714124 m!6667596))

(declare-fun m!6667598 () Bool)

(assert (=> b!5714131 m!6667598))

(declare-fun m!6667600 () Bool)

(assert (=> b!5714162 m!6667600))

(declare-fun m!6667602 () Bool)

(assert (=> b!5714151 m!6667602))

(declare-fun m!6667604 () Bool)

(assert (=> b!5714151 m!6667604))

(declare-fun m!6667606 () Bool)

(assert (=> b!5714151 m!6667606))

(declare-fun m!6667608 () Bool)

(assert (=> b!5714156 m!6667608))

(declare-fun m!6667610 () Bool)

(assert (=> b!5714156 m!6667610))

(declare-fun m!6667612 () Bool)

(assert (=> b!5714156 m!6667612))

(declare-fun m!6667614 () Bool)

(assert (=> b!5714156 m!6667614))

(declare-fun m!6667616 () Bool)

(assert (=> b!5714156 m!6667616))

(assert (=> b!5714156 m!6667608))

(assert (=> b!5714156 m!6667612))

(declare-fun m!6667618 () Bool)

(assert (=> b!5714156 m!6667618))

(declare-fun m!6667620 () Bool)

(assert (=> b!5714123 m!6667620))

(declare-fun m!6667622 () Bool)

(assert (=> b!5714142 m!6667622))

(declare-fun m!6667624 () Bool)

(assert (=> b!5714142 m!6667624))

(declare-fun m!6667626 () Bool)

(assert (=> b!5714142 m!6667626))

(declare-fun m!6667628 () Bool)

(assert (=> b!5714142 m!6667628))

(declare-fun m!6667630 () Bool)

(assert (=> b!5714142 m!6667630))

(declare-fun m!6667632 () Bool)

(assert (=> b!5714120 m!6667632))

(declare-fun m!6667634 () Bool)

(assert (=> b!5714120 m!6667634))

(declare-fun m!6667636 () Bool)

(assert (=> b!5714120 m!6667636))

(declare-fun m!6667638 () Bool)

(assert (=> b!5714120 m!6667638))

(declare-fun m!6667640 () Bool)

(assert (=> b!5714120 m!6667640))

(declare-fun m!6667642 () Bool)

(assert (=> b!5714120 m!6667642))

(declare-fun m!6667644 () Bool)

(assert (=> b!5714120 m!6667644))

(declare-fun m!6667646 () Bool)

(assert (=> b!5714120 m!6667646))

(assert (=> b!5714120 m!6667640))

(declare-fun m!6667648 () Bool)

(assert (=> b!5714120 m!6667648))

(declare-fun m!6667650 () Bool)

(assert (=> b!5714120 m!6667650))

(declare-fun m!6667652 () Bool)

(assert (=> b!5714120 m!6667652))

(declare-fun m!6667654 () Bool)

(assert (=> b!5714120 m!6667654))

(declare-fun m!6667656 () Bool)

(assert (=> b!5714120 m!6667656))

(declare-fun m!6667658 () Bool)

(assert (=> b!5714136 m!6667658))

(declare-fun m!6667660 () Bool)

(assert (=> b!5714136 m!6667660))

(declare-fun m!6667662 () Bool)

(assert (=> b!5714136 m!6667662))

(declare-fun m!6667664 () Bool)

(assert (=> b!5714136 m!6667664))

(declare-fun m!6667666 () Bool)

(assert (=> b!5714136 m!6667666))

(declare-fun m!6667668 () Bool)

(assert (=> b!5714136 m!6667668))

(declare-fun m!6667670 () Bool)

(assert (=> b!5714136 m!6667670))

(declare-fun m!6667672 () Bool)

(assert (=> start!588360 m!6667672))

(declare-fun m!6667674 () Bool)

(assert (=> b!5714152 m!6667674))

(declare-fun m!6667676 () Bool)

(assert (=> b!5714122 m!6667676))

(check-sat tp_is_empty!40675 (not b!5714142) (not b!5714155) (not b!5714121) (not b!5714123) (not b!5714128) (not b!5714145) (not b!5714143) (not b!5714140) (not b!5714156) (not b!5714163) (not b!5714132) (not b!5714138) (not b!5714139) (not b!5714129) (not setNonEmpty!38273) (not b!5714152) (not start!588360) (not b!5714159) (not b!5714136) (not b!5714144) (not b!5714141) (not b!5714148) (not b!5714131) (not b!5714120) (not b!5714151) (not b!5714134) (not b!5714122) (not b!5714124) (not b!5714133) (not b!5714125) (not b!5714135) (not b!5714153) (not b!5714162) (not b!5714150) (not b!5714158) (not b!5714137) (not b!5714126))
(check-sat)
