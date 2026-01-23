; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!634394 () Bool)

(assert start!634394)

(declare-fun b!6420026 () Bool)

(assert (=> b!6420026 true))

(assert (=> b!6420026 true))

(declare-fun lambda!354681 () Int)

(declare-fun lambda!354680 () Int)

(assert (=> b!6420026 (not (= lambda!354681 lambda!354680))))

(assert (=> b!6420026 true))

(assert (=> b!6420026 true))

(declare-fun b!6420050 () Bool)

(assert (=> b!6420050 true))

(declare-fun bs!1614239 () Bool)

(declare-fun b!6420053 () Bool)

(assert (= bs!1614239 (and b!6420053 b!6420026)))

(declare-datatypes ((C!32916 0))(
  ( (C!32917 (val!26160 Int)) )
))
(declare-datatypes ((Regex!16323 0))(
  ( (ElementMatch!16323 (c!1172786 C!32916)) (Concat!25168 (regOne!33158 Regex!16323) (regTwo!33158 Regex!16323)) (EmptyExpr!16323) (Star!16323 (reg!16652 Regex!16323)) (EmptyLang!16323) (Union!16323 (regOne!33159 Regex!16323) (regTwo!33159 Regex!16323)) )
))
(declare-fun r!7292 () Regex!16323)

(declare-fun lt!2376810 () Regex!16323)

(declare-fun lambda!354683 () Int)

(assert (=> bs!1614239 (= (= lt!2376810 (regOne!33158 r!7292)) (= lambda!354683 lambda!354680))))

(assert (=> bs!1614239 (not (= lambda!354683 lambda!354681))))

(assert (=> b!6420053 true))

(assert (=> b!6420053 true))

(assert (=> b!6420053 true))

(declare-fun lambda!354684 () Int)

(assert (=> bs!1614239 (not (= lambda!354684 lambda!354680))))

(assert (=> bs!1614239 (= (= lt!2376810 (regOne!33158 r!7292)) (= lambda!354684 lambda!354681))))

(assert (=> b!6420053 (not (= lambda!354684 lambda!354683))))

(assert (=> b!6420053 true))

(assert (=> b!6420053 true))

(assert (=> b!6420053 true))

(declare-fun bs!1614240 () Bool)

(declare-fun b!6420030 () Bool)

(assert (= bs!1614240 (and b!6420030 b!6420026)))

(declare-datatypes ((List!65268 0))(
  ( (Nil!65144) (Cons!65144 (h!71592 C!32916) (t!378882 List!65268)) )
))
(declare-fun s!2326 () List!65268)

(declare-fun lambda!354685 () Int)

(declare-datatypes ((tuple2!66604 0))(
  ( (tuple2!66605 (_1!36605 List!65268) (_2!36605 List!65268)) )
))
(declare-fun lt!2376824 () tuple2!66604)

(assert (=> bs!1614240 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 (regOne!33158 r!7292)) (regOne!33158 r!7292)) (= lt!2376810 (regTwo!33158 r!7292))) (= lambda!354685 lambda!354680))))

(assert (=> bs!1614240 (not (= lambda!354685 lambda!354681))))

(declare-fun bs!1614241 () Bool)

(assert (= bs!1614241 (and b!6420030 b!6420053)))

(assert (=> bs!1614241 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 (regOne!33158 r!7292)) lt!2376810) (= lt!2376810 (regTwo!33158 r!7292))) (= lambda!354685 lambda!354683))))

(assert (=> bs!1614241 (not (= lambda!354685 lambda!354684))))

(assert (=> b!6420030 true))

(assert (=> b!6420030 true))

(assert (=> b!6420030 true))

(declare-fun b!6420016 () Bool)

(declare-fun e!3895342 () Bool)

(declare-fun e!3895347 () Bool)

(assert (=> b!6420016 (= e!3895342 (not e!3895347))))

(declare-fun res!2638604 () Bool)

(assert (=> b!6420016 (=> res!2638604 e!3895347)))

(declare-datatypes ((List!65269 0))(
  ( (Nil!65145) (Cons!65145 (h!71593 Regex!16323) (t!378883 List!65269)) )
))
(declare-datatypes ((Context!11414 0))(
  ( (Context!11415 (exprs!6207 List!65269)) )
))
(declare-datatypes ((List!65270 0))(
  ( (Nil!65146) (Cons!65146 (h!71594 Context!11414) (t!378884 List!65270)) )
))
(declare-fun zl!343 () List!65270)

(get-info :version)

(assert (=> b!6420016 (= res!2638604 (not ((_ is Cons!65146) zl!343)))))

(declare-fun lt!2376800 () Bool)

(declare-fun lt!2376816 () Bool)

(assert (=> b!6420016 (= lt!2376800 lt!2376816)))

(declare-fun matchRSpec!3424 (Regex!16323 List!65268) Bool)

(assert (=> b!6420016 (= lt!2376816 (matchRSpec!3424 r!7292 s!2326))))

(declare-fun matchR!8506 (Regex!16323 List!65268) Bool)

(assert (=> b!6420016 (= lt!2376800 (matchR!8506 r!7292 s!2326))))

(declare-datatypes ((Unit!158623 0))(
  ( (Unit!158624) )
))
(declare-fun lt!2376812 () Unit!158623)

(declare-fun mainMatchTheorem!3424 (Regex!16323 List!65268) Unit!158623)

(assert (=> b!6420016 (= lt!2376812 (mainMatchTheorem!3424 r!7292 s!2326))))

(declare-fun b!6420017 () Bool)

(declare-fun e!3895337 () Bool)

(assert (=> b!6420017 (= e!3895337 e!3895342)))

(declare-fun res!2638585 () Bool)

(assert (=> b!6420017 (=> (not res!2638585) (not e!3895342))))

(declare-fun lt!2376830 () Regex!16323)

(assert (=> b!6420017 (= res!2638585 (= r!7292 lt!2376830))))

(declare-fun unfocusZipper!2065 (List!65270) Regex!16323)

(assert (=> b!6420017 (= lt!2376830 (unfocusZipper!2065 zl!343))))

(declare-fun b!6420018 () Bool)

(declare-fun res!2638591 () Bool)

(assert (=> b!6420018 (=> (not res!2638591) (not e!3895337))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11414))

(declare-fun toList!10107 ((InoxSet Context!11414)) List!65270)

(assert (=> b!6420018 (= res!2638591 (= (toList!10107 z!1189) zl!343))))

(declare-fun b!6420019 () Bool)

(declare-fun res!2638584 () Bool)

(declare-fun e!3895346 () Bool)

(assert (=> b!6420019 (=> res!2638584 e!3895346)))

(declare-fun e!3895331 () Bool)

(assert (=> b!6420019 (= res!2638584 e!3895331)))

(declare-fun res!2638598 () Bool)

(assert (=> b!6420019 (=> (not res!2638598) (not e!3895331))))

(assert (=> b!6420019 (= res!2638598 ((_ is Concat!25168) (regOne!33158 r!7292)))))

(declare-fun b!6420020 () Bool)

(declare-fun e!3895338 () Bool)

(declare-fun e!3895345 () Bool)

(assert (=> b!6420020 (= e!3895338 e!3895345)))

(declare-fun res!2638596 () Bool)

(assert (=> b!6420020 (=> res!2638596 e!3895345)))

(declare-fun lt!2376819 () Regex!16323)

(assert (=> b!6420020 (= res!2638596 (not (= r!7292 lt!2376819)))))

(assert (=> b!6420020 (= lt!2376819 (Concat!25168 lt!2376810 (regTwo!33158 r!7292)))))

(declare-fun b!6420021 () Bool)

(declare-fun e!3895348 () Bool)

(assert (=> b!6420021 (= e!3895348 (or (not lt!2376800) lt!2376816))))

(declare-fun setIsEmpty!43822 () Bool)

(declare-fun setRes!43822 () Bool)

(assert (=> setIsEmpty!43822 setRes!43822))

(declare-fun b!6420022 () Bool)

(declare-fun res!2638600 () Bool)

(declare-fun e!3895332 () Bool)

(assert (=> b!6420022 (=> res!2638600 e!3895332)))

(assert (=> b!6420022 (= res!2638600 (not (matchR!8506 (regTwo!33158 r!7292) (_2!36605 lt!2376824))))))

(declare-fun b!6420023 () Bool)

(declare-fun e!3895349 () Bool)

(declare-fun tp!1782740 () Bool)

(declare-fun tp!1782736 () Bool)

(assert (=> b!6420023 (= e!3895349 (and tp!1782740 tp!1782736))))

(declare-fun b!6420024 () Bool)

(declare-fun e!3895350 () Bool)

(declare-fun e!3895334 () Bool)

(assert (=> b!6420024 (= e!3895350 e!3895334)))

(declare-fun res!2638582 () Bool)

(assert (=> b!6420024 (=> res!2638582 e!3895334)))

(assert (=> b!6420024 (= res!2638582 (not lt!2376800))))

(assert (=> b!6420024 e!3895348))

(declare-fun res!2638579 () Bool)

(assert (=> b!6420024 (=> (not res!2638579) (not e!3895348))))

(declare-fun lt!2376834 () Regex!16323)

(assert (=> b!6420024 (= res!2638579 (= (matchR!8506 lt!2376834 s!2326) (matchRSpec!3424 lt!2376834 s!2326)))))

(declare-fun lt!2376804 () Unit!158623)

(assert (=> b!6420024 (= lt!2376804 (mainMatchTheorem!3424 lt!2376834 s!2326))))

(declare-fun b!6420025 () Bool)

(declare-fun tp_is_empty!41899 () Bool)

(assert (=> b!6420025 (= e!3895349 tp_is_empty!41899)))

(declare-fun e!3895341 () Bool)

(assert (=> b!6420026 (= e!3895347 e!3895341)))

(declare-fun res!2638588 () Bool)

(assert (=> b!6420026 (=> res!2638588 e!3895341)))

(declare-fun lt!2376813 () Bool)

(assert (=> b!6420026 (= res!2638588 (or (not (= lt!2376800 lt!2376813)) ((_ is Nil!65144) s!2326)))))

(declare-fun Exists!3393 (Int) Bool)

(assert (=> b!6420026 (= (Exists!3393 lambda!354680) (Exists!3393 lambda!354681))))

(declare-fun lt!2376801 () Unit!158623)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1930 (Regex!16323 Regex!16323 List!65268) Unit!158623)

(assert (=> b!6420026 (= lt!2376801 (lemmaExistCutMatchRandMatchRSpecEquivalent!1930 (regOne!33158 r!7292) (regTwo!33158 r!7292) s!2326))))

(assert (=> b!6420026 (= lt!2376813 (Exists!3393 lambda!354680))))

(declare-datatypes ((Option!16214 0))(
  ( (None!16213) (Some!16213 (v!52386 tuple2!66604)) )
))
(declare-fun isDefined!12917 (Option!16214) Bool)

(declare-fun findConcatSeparation!2628 (Regex!16323 Regex!16323 List!65268 List!65268 List!65268) Option!16214)

(assert (=> b!6420026 (= lt!2376813 (isDefined!12917 (findConcatSeparation!2628 (regOne!33158 r!7292) (regTwo!33158 r!7292) Nil!65144 s!2326 s!2326)))))

(declare-fun lt!2376814 () Unit!158623)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2392 (Regex!16323 Regex!16323 List!65268) Unit!158623)

(assert (=> b!6420026 (= lt!2376814 (lemmaFindConcatSeparationEquivalentToExists!2392 (regOne!33158 r!7292) (regTwo!33158 r!7292) s!2326))))

(declare-fun b!6420027 () Bool)

(declare-fun e!3895343 () Bool)

(declare-fun lt!2376832 () (InoxSet Context!11414))

(declare-fun matchZipper!2335 ((InoxSet Context!11414) List!65268) Bool)

(assert (=> b!6420027 (= e!3895343 (matchZipper!2335 lt!2376832 (t!378882 s!2326)))))

(declare-fun b!6420028 () Bool)

(declare-fun e!3895330 () Bool)

(assert (=> b!6420028 (= e!3895330 e!3895338)))

(declare-fun res!2638592 () Bool)

(assert (=> b!6420028 (=> res!2638592 e!3895338)))

(declare-fun lt!2376822 () (InoxSet Context!11414))

(declare-fun lt!2376809 () (InoxSet Context!11414))

(assert (=> b!6420028 (= res!2638592 (not (= lt!2376822 lt!2376809)))))

(declare-fun lambda!354682 () Int)

(declare-fun lt!2376831 () Context!11414)

(declare-fun lt!2376815 () (InoxSet Context!11414))

(declare-fun flatMap!1828 ((InoxSet Context!11414) Int) (InoxSet Context!11414))

(declare-fun derivationStepZipperUp!1497 (Context!11414 C!32916) (InoxSet Context!11414))

(assert (=> b!6420028 (= (flatMap!1828 lt!2376815 lambda!354682) (derivationStepZipperUp!1497 lt!2376831 (h!71592 s!2326)))))

(declare-fun lt!2376833 () Unit!158623)

(declare-fun lemmaFlatMapOnSingletonSet!1354 ((InoxSet Context!11414) Context!11414 Int) Unit!158623)

(assert (=> b!6420028 (= lt!2376833 (lemmaFlatMapOnSingletonSet!1354 lt!2376815 lt!2376831 lambda!354682))))

(declare-fun lt!2376808 () (InoxSet Context!11414))

(assert (=> b!6420028 (= lt!2376808 (derivationStepZipperUp!1497 lt!2376831 (h!71592 s!2326)))))

(declare-fun derivationStepZipper!2289 ((InoxSet Context!11414) C!32916) (InoxSet Context!11414))

(assert (=> b!6420028 (= lt!2376822 (derivationStepZipper!2289 lt!2376815 (h!71592 s!2326)))))

(assert (=> b!6420028 (= lt!2376815 (store ((as const (Array Context!11414 Bool)) false) lt!2376831 true))))

(declare-fun lt!2376820 () List!65269)

(assert (=> b!6420028 (= lt!2376831 (Context!11415 (Cons!65145 (reg!16652 (regOne!33158 r!7292)) lt!2376820)))))

(declare-fun b!6420029 () Bool)

(declare-fun res!2638590 () Bool)

(assert (=> b!6420029 (=> res!2638590 e!3895338)))

(assert (=> b!6420029 (= res!2638590 (not (= (matchZipper!2335 lt!2376815 s!2326) (matchZipper!2335 lt!2376822 (t!378882 s!2326)))))))

(declare-fun validRegex!8059 (Regex!16323) Bool)

(assert (=> b!6420030 (= e!3895332 (validRegex!8059 (reg!16652 (regOne!33158 r!7292))))))

(assert (=> b!6420030 (= (isDefined!12917 (findConcatSeparation!2628 (reg!16652 (regOne!33158 r!7292)) lt!2376810 Nil!65144 (_1!36605 lt!2376824) (_1!36605 lt!2376824))) (Exists!3393 lambda!354685))))

(declare-fun lt!2376825 () Unit!158623)

(assert (=> b!6420030 (= lt!2376825 (lemmaFindConcatSeparationEquivalentToExists!2392 (reg!16652 (regOne!33158 r!7292)) lt!2376810 (_1!36605 lt!2376824)))))

(assert (=> b!6420030 (matchRSpec!3424 lt!2376810 (_1!36605 lt!2376824))))

(declare-fun lt!2376835 () Unit!158623)

(assert (=> b!6420030 (= lt!2376835 (mainMatchTheorem!3424 lt!2376810 (_1!36605 lt!2376824)))))

(declare-fun b!6420031 () Bool)

(declare-fun res!2638577 () Bool)

(assert (=> b!6420031 (=> res!2638577 e!3895347)))

(assert (=> b!6420031 (= res!2638577 (or ((_ is EmptyExpr!16323) r!7292) ((_ is EmptyLang!16323) r!7292) ((_ is ElementMatch!16323) r!7292) ((_ is Union!16323) r!7292) (not ((_ is Concat!25168) r!7292))))))

(declare-fun b!6420032 () Bool)

(declare-fun tp!1782734 () Bool)

(declare-fun tp!1782739 () Bool)

(assert (=> b!6420032 (= e!3895349 (and tp!1782734 tp!1782739))))

(declare-fun b!6420033 () Bool)

(declare-fun e!3895333 () Bool)

(assert (=> b!6420033 (= e!3895345 e!3895333)))

(declare-fun res!2638594 () Bool)

(assert (=> b!6420033 (=> res!2638594 e!3895333)))

(assert (=> b!6420033 (= res!2638594 (not (= (unfocusZipper!2065 (Cons!65146 lt!2376831 Nil!65146)) lt!2376834)))))

(assert (=> b!6420033 (= lt!2376834 (Concat!25168 (reg!16652 (regOne!33158 r!7292)) lt!2376819))))

(declare-fun b!6420034 () Bool)

(declare-fun nullable!6316 (Regex!16323) Bool)

(assert (=> b!6420034 (= e!3895331 (nullable!6316 (regOne!33158 (regOne!33158 r!7292))))))

(declare-fun b!6420035 () Bool)

(declare-fun res!2638599 () Bool)

(assert (=> b!6420035 (=> res!2638599 e!3895347)))

(assert (=> b!6420035 (= res!2638599 (not ((_ is Cons!65145) (exprs!6207 (h!71594 zl!343)))))))

(declare-fun b!6420036 () Bool)

(assert (=> b!6420036 (= e!3895333 e!3895350)))

(declare-fun res!2638593 () Bool)

(assert (=> b!6420036 (=> res!2638593 e!3895350)))

(declare-fun lt!2376821 () Context!11414)

(assert (=> b!6420036 (= res!2638593 (not (= (unfocusZipper!2065 (Cons!65146 lt!2376821 Nil!65146)) (reg!16652 (regOne!33158 r!7292)))))))

(declare-fun lt!2376829 () Context!11414)

(declare-fun lt!2376802 () (InoxSet Context!11414))

(assert (=> b!6420036 (= (flatMap!1828 lt!2376802 lambda!354682) (derivationStepZipperUp!1497 lt!2376829 (h!71592 s!2326)))))

(declare-fun lt!2376817 () Unit!158623)

(assert (=> b!6420036 (= lt!2376817 (lemmaFlatMapOnSingletonSet!1354 lt!2376802 lt!2376829 lambda!354682))))

(declare-fun lt!2376811 () (InoxSet Context!11414))

(assert (=> b!6420036 (= (flatMap!1828 lt!2376811 lambda!354682) (derivationStepZipperUp!1497 lt!2376821 (h!71592 s!2326)))))

(declare-fun lt!2376826 () Unit!158623)

(assert (=> b!6420036 (= lt!2376826 (lemmaFlatMapOnSingletonSet!1354 lt!2376811 lt!2376821 lambda!354682))))

(declare-fun lt!2376803 () (InoxSet Context!11414))

(assert (=> b!6420036 (= lt!2376803 (derivationStepZipperUp!1497 lt!2376829 (h!71592 s!2326)))))

(declare-fun lt!2376806 () (InoxSet Context!11414))

(assert (=> b!6420036 (= lt!2376806 (derivationStepZipperUp!1497 lt!2376821 (h!71592 s!2326)))))

(assert (=> b!6420036 (= lt!2376802 (store ((as const (Array Context!11414 Bool)) false) lt!2376829 true))))

(assert (=> b!6420036 (= lt!2376811 (store ((as const (Array Context!11414 Bool)) false) lt!2376821 true))))

(assert (=> b!6420036 (= lt!2376821 (Context!11415 (Cons!65145 (reg!16652 (regOne!33158 r!7292)) Nil!65145)))))

(declare-fun b!6420037 () Bool)

(declare-fun res!2638586 () Bool)

(assert (=> b!6420037 (=> res!2638586 e!3895341)))

(declare-fun isEmpty!37300 (List!65269) Bool)

(assert (=> b!6420037 (= res!2638586 (isEmpty!37300 (t!378883 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun b!6420038 () Bool)

(declare-fun res!2638601 () Bool)

(assert (=> b!6420038 (=> res!2638601 e!3895346)))

(assert (=> b!6420038 (= res!2638601 (or ((_ is Concat!25168) (regOne!33158 r!7292)) (not ((_ is Star!16323) (regOne!33158 r!7292)))))))

(declare-fun setElem!43822 () Context!11414)

(declare-fun tp!1782741 () Bool)

(declare-fun setNonEmpty!43822 () Bool)

(declare-fun e!3895344 () Bool)

(declare-fun inv!84054 (Context!11414) Bool)

(assert (=> setNonEmpty!43822 (= setRes!43822 (and tp!1782741 (inv!84054 setElem!43822) e!3895344))))

(declare-fun setRest!43822 () (InoxSet Context!11414))

(assert (=> setNonEmpty!43822 (= z!1189 ((_ map or) (store ((as const (Array Context!11414 Bool)) false) setElem!43822 true) setRest!43822))))

(declare-fun b!6420039 () Bool)

(declare-fun res!2638603 () Bool)

(assert (=> b!6420039 (=> res!2638603 e!3895347)))

(declare-fun isEmpty!37301 (List!65270) Bool)

(assert (=> b!6420039 (= res!2638603 (not (isEmpty!37301 (t!378884 zl!343))))))

(declare-fun b!6420040 () Bool)

(declare-fun res!2638583 () Bool)

(assert (=> b!6420040 (=> res!2638583 e!3895338)))

(assert (=> b!6420040 (= res!2638583 (not (= lt!2376830 r!7292)))))

(declare-fun b!6420041 () Bool)

(declare-fun res!2638606 () Bool)

(assert (=> b!6420041 (=> res!2638606 e!3895347)))

(declare-fun generalisedUnion!2167 (List!65269) Regex!16323)

(declare-fun unfocusZipperList!1744 (List!65270) List!65269)

(assert (=> b!6420041 (= res!2638606 (not (= r!7292 (generalisedUnion!2167 (unfocusZipperList!1744 zl!343)))))))

(declare-fun e!3895336 () Bool)

(declare-fun b!6420042 () Bool)

(declare-fun tp!1782733 () Bool)

(declare-fun e!3895339 () Bool)

(assert (=> b!6420042 (= e!3895339 (and (inv!84054 (h!71594 zl!343)) e!3895336 tp!1782733))))

(declare-fun b!6420043 () Bool)

(declare-fun tp!1782742 () Bool)

(assert (=> b!6420043 (= e!3895336 tp!1782742)))

(declare-fun b!6420044 () Bool)

(declare-fun res!2638587 () Bool)

(assert (=> b!6420044 (=> res!2638587 e!3895350)))

(assert (=> b!6420044 (= res!2638587 (not (= (unfocusZipper!2065 (Cons!65146 lt!2376829 Nil!65146)) lt!2376819)))))

(declare-fun res!2638581 () Bool)

(assert (=> start!634394 (=> (not res!2638581) (not e!3895337))))

(assert (=> start!634394 (= res!2638581 (validRegex!8059 r!7292))))

(assert (=> start!634394 e!3895337))

(assert (=> start!634394 e!3895349))

(declare-fun condSetEmpty!43822 () Bool)

(assert (=> start!634394 (= condSetEmpty!43822 (= z!1189 ((as const (Array Context!11414 Bool)) false)))))

(assert (=> start!634394 setRes!43822))

(assert (=> start!634394 e!3895339))

(declare-fun e!3895340 () Bool)

(assert (=> start!634394 e!3895340))

(declare-fun b!6420045 () Bool)

(declare-fun res!2638589 () Bool)

(assert (=> b!6420045 (=> res!2638589 e!3895347)))

(declare-fun generalisedConcat!1920 (List!65269) Regex!16323)

(assert (=> b!6420045 (= res!2638589 (not (= r!7292 (generalisedConcat!1920 (exprs!6207 (h!71594 zl!343))))))))

(declare-fun b!6420046 () Bool)

(declare-fun e!3895335 () Unit!158623)

(declare-fun Unit!158625 () Unit!158623)

(assert (=> b!6420046 (= e!3895335 Unit!158625)))

(declare-fun b!6420047 () Bool)

(declare-fun res!2638595 () Bool)

(assert (=> b!6420047 (=> res!2638595 e!3895332)))

(declare-fun isEmpty!37302 (List!65268) Bool)

(assert (=> b!6420047 (= res!2638595 (isEmpty!37302 (_1!36605 lt!2376824)))))

(declare-fun b!6420048 () Bool)

(declare-fun tp!1782735 () Bool)

(assert (=> b!6420048 (= e!3895340 (and tp_is_empty!41899 tp!1782735))))

(declare-fun b!6420049 () Bool)

(declare-fun tp!1782738 () Bool)

(assert (=> b!6420049 (= e!3895349 tp!1782738)))

(assert (=> b!6420050 (= e!3895341 e!3895346)))

(declare-fun res!2638597 () Bool)

(assert (=> b!6420050 (=> res!2638597 e!3895346)))

(assert (=> b!6420050 (= res!2638597 (or (and ((_ is ElementMatch!16323) (regOne!33158 r!7292)) (= (c!1172786 (regOne!33158 r!7292)) (h!71592 s!2326))) ((_ is Union!16323) (regOne!33158 r!7292))))))

(declare-fun lt!2376823 () Unit!158623)

(assert (=> b!6420050 (= lt!2376823 e!3895335)))

(declare-fun c!1172785 () Bool)

(assert (=> b!6420050 (= c!1172785 (nullable!6316 (h!71593 (exprs!6207 (h!71594 zl!343)))))))

(assert (=> b!6420050 (= (flatMap!1828 z!1189 lambda!354682) (derivationStepZipperUp!1497 (h!71594 zl!343) (h!71592 s!2326)))))

(declare-fun lt!2376827 () Unit!158623)

(assert (=> b!6420050 (= lt!2376827 (lemmaFlatMapOnSingletonSet!1354 z!1189 (h!71594 zl!343) lambda!354682))))

(declare-fun lt!2376828 () Context!11414)

(assert (=> b!6420050 (= lt!2376832 (derivationStepZipperUp!1497 lt!2376828 (h!71592 s!2326)))))

(declare-fun lt!2376837 () (InoxSet Context!11414))

(declare-fun derivationStepZipperDown!1571 (Regex!16323 Context!11414 C!32916) (InoxSet Context!11414))

(assert (=> b!6420050 (= lt!2376837 (derivationStepZipperDown!1571 (h!71593 (exprs!6207 (h!71594 zl!343))) lt!2376828 (h!71592 s!2326)))))

(assert (=> b!6420050 (= lt!2376828 (Context!11415 (t!378883 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun lt!2376836 () (InoxSet Context!11414))

(assert (=> b!6420050 (= lt!2376836 (derivationStepZipperUp!1497 (Context!11415 (Cons!65145 (h!71593 (exprs!6207 (h!71594 zl!343))) (t!378883 (exprs!6207 (h!71594 zl!343))))) (h!71592 s!2326)))))

(declare-fun b!6420051 () Bool)

(declare-fun Unit!158626 () Unit!158623)

(assert (=> b!6420051 (= e!3895335 Unit!158626)))

(declare-fun lt!2376807 () Unit!158623)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1154 ((InoxSet Context!11414) (InoxSet Context!11414) List!65268) Unit!158623)

(assert (=> b!6420051 (= lt!2376807 (lemmaZipperConcatMatchesSameAsBothZippers!1154 lt!2376837 lt!2376832 (t!378882 s!2326)))))

(declare-fun res!2638578 () Bool)

(assert (=> b!6420051 (= res!2638578 (matchZipper!2335 lt!2376837 (t!378882 s!2326)))))

(assert (=> b!6420051 (=> res!2638578 e!3895343)))

(assert (=> b!6420051 (= (matchZipper!2335 ((_ map or) lt!2376837 lt!2376832) (t!378882 s!2326)) e!3895343)))

(declare-fun b!6420052 () Bool)

(declare-fun tp!1782737 () Bool)

(assert (=> b!6420052 (= e!3895344 tp!1782737)))

(assert (=> b!6420053 (= e!3895334 e!3895332)))

(declare-fun res!2638580 () Bool)

(assert (=> b!6420053 (=> res!2638580 e!3895332)))

(declare-fun ++!14391 (List!65268 List!65268) List!65268)

(assert (=> b!6420053 (= res!2638580 (not (= (++!14391 (_1!36605 lt!2376824) (_2!36605 lt!2376824)) s!2326)))))

(declare-fun lt!2376818 () Option!16214)

(declare-fun get!22568 (Option!16214) tuple2!66604)

(assert (=> b!6420053 (= lt!2376824 (get!22568 lt!2376818))))

(assert (=> b!6420053 (= (Exists!3393 lambda!354683) (Exists!3393 lambda!354684))))

(declare-fun lt!2376838 () Unit!158623)

(assert (=> b!6420053 (= lt!2376838 (lemmaExistCutMatchRandMatchRSpecEquivalent!1930 lt!2376810 (regTwo!33158 r!7292) s!2326))))

(assert (=> b!6420053 (= (isDefined!12917 lt!2376818) (Exists!3393 lambda!354683))))

(assert (=> b!6420053 (= lt!2376818 (findConcatSeparation!2628 lt!2376810 (regTwo!33158 r!7292) Nil!65144 s!2326 s!2326))))

(declare-fun lt!2376805 () Unit!158623)

(assert (=> b!6420053 (= lt!2376805 (lemmaFindConcatSeparationEquivalentToExists!2392 lt!2376810 (regTwo!33158 r!7292) s!2326))))

(declare-fun b!6420054 () Bool)

(assert (=> b!6420054 (= e!3895346 e!3895330)))

(declare-fun res!2638602 () Bool)

(assert (=> b!6420054 (=> res!2638602 e!3895330)))

(assert (=> b!6420054 (= res!2638602 (not (= lt!2376837 lt!2376809)))))

(assert (=> b!6420054 (= lt!2376809 (derivationStepZipperDown!1571 (reg!16652 (regOne!33158 r!7292)) lt!2376829 (h!71592 s!2326)))))

(assert (=> b!6420054 (= lt!2376829 (Context!11415 lt!2376820))))

(assert (=> b!6420054 (= lt!2376820 (Cons!65145 lt!2376810 (t!378883 (exprs!6207 (h!71594 zl!343)))))))

(assert (=> b!6420054 (= lt!2376810 (Star!16323 (reg!16652 (regOne!33158 r!7292))))))

(declare-fun b!6420055 () Bool)

(declare-fun res!2638605 () Bool)

(assert (=> b!6420055 (=> res!2638605 e!3895332)))

(assert (=> b!6420055 (= res!2638605 (not (matchR!8506 lt!2376810 (_1!36605 lt!2376824))))))

(assert (= (and start!634394 res!2638581) b!6420018))

(assert (= (and b!6420018 res!2638591) b!6420017))

(assert (= (and b!6420017 res!2638585) b!6420016))

(assert (= (and b!6420016 (not res!2638604)) b!6420039))

(assert (= (and b!6420039 (not res!2638603)) b!6420045))

(assert (= (and b!6420045 (not res!2638589)) b!6420035))

(assert (= (and b!6420035 (not res!2638599)) b!6420041))

(assert (= (and b!6420041 (not res!2638606)) b!6420031))

(assert (= (and b!6420031 (not res!2638577)) b!6420026))

(assert (= (and b!6420026 (not res!2638588)) b!6420037))

(assert (= (and b!6420037 (not res!2638586)) b!6420050))

(assert (= (and b!6420050 c!1172785) b!6420051))

(assert (= (and b!6420050 (not c!1172785)) b!6420046))

(assert (= (and b!6420051 (not res!2638578)) b!6420027))

(assert (= (and b!6420050 (not res!2638597)) b!6420019))

(assert (= (and b!6420019 res!2638598) b!6420034))

(assert (= (and b!6420019 (not res!2638584)) b!6420038))

(assert (= (and b!6420038 (not res!2638601)) b!6420054))

(assert (= (and b!6420054 (not res!2638602)) b!6420028))

(assert (= (and b!6420028 (not res!2638592)) b!6420029))

(assert (= (and b!6420029 (not res!2638590)) b!6420040))

(assert (= (and b!6420040 (not res!2638583)) b!6420020))

(assert (= (and b!6420020 (not res!2638596)) b!6420033))

(assert (= (and b!6420033 (not res!2638594)) b!6420036))

(assert (= (and b!6420036 (not res!2638593)) b!6420044))

(assert (= (and b!6420044 (not res!2638587)) b!6420024))

(assert (= (and b!6420024 res!2638579) b!6420021))

(assert (= (and b!6420024 (not res!2638582)) b!6420053))

(assert (= (and b!6420053 (not res!2638580)) b!6420055))

(assert (= (and b!6420055 (not res!2638605)) b!6420022))

(assert (= (and b!6420022 (not res!2638600)) b!6420047))

(assert (= (and b!6420047 (not res!2638595)) b!6420030))

(assert (= (and start!634394 ((_ is ElementMatch!16323) r!7292)) b!6420025))

(assert (= (and start!634394 ((_ is Concat!25168) r!7292)) b!6420023))

(assert (= (and start!634394 ((_ is Star!16323) r!7292)) b!6420049))

(assert (= (and start!634394 ((_ is Union!16323) r!7292)) b!6420032))

(assert (= (and start!634394 condSetEmpty!43822) setIsEmpty!43822))

(assert (= (and start!634394 (not condSetEmpty!43822)) setNonEmpty!43822))

(assert (= setNonEmpty!43822 b!6420052))

(assert (= b!6420042 b!6420043))

(assert (= (and start!634394 ((_ is Cons!65146) zl!343)) b!6420042))

(assert (= (and start!634394 ((_ is Cons!65144) s!2326)) b!6420048))

(declare-fun m!7214682 () Bool)

(assert (=> setNonEmpty!43822 m!7214682))

(declare-fun m!7214684 () Bool)

(assert (=> b!6420039 m!7214684))

(declare-fun m!7214686 () Bool)

(assert (=> b!6420054 m!7214686))

(declare-fun m!7214688 () Bool)

(assert (=> b!6420022 m!7214688))

(declare-fun m!7214690 () Bool)

(assert (=> b!6420050 m!7214690))

(declare-fun m!7214692 () Bool)

(assert (=> b!6420050 m!7214692))

(declare-fun m!7214694 () Bool)

(assert (=> b!6420050 m!7214694))

(declare-fun m!7214696 () Bool)

(assert (=> b!6420050 m!7214696))

(declare-fun m!7214698 () Bool)

(assert (=> b!6420050 m!7214698))

(declare-fun m!7214700 () Bool)

(assert (=> b!6420050 m!7214700))

(declare-fun m!7214702 () Bool)

(assert (=> b!6420050 m!7214702))

(declare-fun m!7214704 () Bool)

(assert (=> b!6420055 m!7214704))

(declare-fun m!7214706 () Bool)

(assert (=> b!6420018 m!7214706))

(declare-fun m!7214708 () Bool)

(assert (=> b!6420017 m!7214708))

(declare-fun m!7214710 () Bool)

(assert (=> b!6420026 m!7214710))

(declare-fun m!7214712 () Bool)

(assert (=> b!6420026 m!7214712))

(declare-fun m!7214714 () Bool)

(assert (=> b!6420026 m!7214714))

(declare-fun m!7214716 () Bool)

(assert (=> b!6420026 m!7214716))

(declare-fun m!7214718 () Bool)

(assert (=> b!6420026 m!7214718))

(assert (=> b!6420026 m!7214712))

(assert (=> b!6420026 m!7214716))

(declare-fun m!7214720 () Bool)

(assert (=> b!6420026 m!7214720))

(declare-fun m!7214722 () Bool)

(assert (=> b!6420053 m!7214722))

(declare-fun m!7214724 () Bool)

(assert (=> b!6420053 m!7214724))

(declare-fun m!7214726 () Bool)

(assert (=> b!6420053 m!7214726))

(declare-fun m!7214728 () Bool)

(assert (=> b!6420053 m!7214728))

(declare-fun m!7214730 () Bool)

(assert (=> b!6420053 m!7214730))

(assert (=> b!6420053 m!7214728))

(declare-fun m!7214732 () Bool)

(assert (=> b!6420053 m!7214732))

(declare-fun m!7214734 () Bool)

(assert (=> b!6420053 m!7214734))

(declare-fun m!7214736 () Bool)

(assert (=> b!6420053 m!7214736))

(declare-fun m!7214738 () Bool)

(assert (=> b!6420030 m!7214738))

(declare-fun m!7214740 () Bool)

(assert (=> b!6420030 m!7214740))

(declare-fun m!7214742 () Bool)

(assert (=> b!6420030 m!7214742))

(declare-fun m!7214744 () Bool)

(assert (=> b!6420030 m!7214744))

(declare-fun m!7214746 () Bool)

(assert (=> b!6420030 m!7214746))

(declare-fun m!7214748 () Bool)

(assert (=> b!6420030 m!7214748))

(declare-fun m!7214750 () Bool)

(assert (=> b!6420030 m!7214750))

(assert (=> b!6420030 m!7214746))

(declare-fun m!7214752 () Bool)

(assert (=> b!6420033 m!7214752))

(declare-fun m!7214754 () Bool)

(assert (=> b!6420042 m!7214754))

(declare-fun m!7214756 () Bool)

(assert (=> b!6420051 m!7214756))

(declare-fun m!7214758 () Bool)

(assert (=> b!6420051 m!7214758))

(declare-fun m!7214760 () Bool)

(assert (=> b!6420051 m!7214760))

(declare-fun m!7214762 () Bool)

(assert (=> b!6420034 m!7214762))

(declare-fun m!7214764 () Bool)

(assert (=> b!6420041 m!7214764))

(assert (=> b!6420041 m!7214764))

(declare-fun m!7214766 () Bool)

(assert (=> b!6420041 m!7214766))

(declare-fun m!7214768 () Bool)

(assert (=> b!6420036 m!7214768))

(declare-fun m!7214770 () Bool)

(assert (=> b!6420036 m!7214770))

(declare-fun m!7214772 () Bool)

(assert (=> b!6420036 m!7214772))

(declare-fun m!7214774 () Bool)

(assert (=> b!6420036 m!7214774))

(declare-fun m!7214776 () Bool)

(assert (=> b!6420036 m!7214776))

(declare-fun m!7214778 () Bool)

(assert (=> b!6420036 m!7214778))

(declare-fun m!7214780 () Bool)

(assert (=> b!6420036 m!7214780))

(declare-fun m!7214782 () Bool)

(assert (=> b!6420036 m!7214782))

(declare-fun m!7214784 () Bool)

(assert (=> b!6420036 m!7214784))

(declare-fun m!7214786 () Bool)

(assert (=> b!6420045 m!7214786))

(declare-fun m!7214788 () Bool)

(assert (=> b!6420027 m!7214788))

(declare-fun m!7214790 () Bool)

(assert (=> b!6420029 m!7214790))

(declare-fun m!7214792 () Bool)

(assert (=> b!6420029 m!7214792))

(declare-fun m!7214794 () Bool)

(assert (=> b!6420028 m!7214794))

(declare-fun m!7214796 () Bool)

(assert (=> b!6420028 m!7214796))

(declare-fun m!7214798 () Bool)

(assert (=> b!6420028 m!7214798))

(declare-fun m!7214800 () Bool)

(assert (=> b!6420028 m!7214800))

(declare-fun m!7214802 () Bool)

(assert (=> b!6420028 m!7214802))

(declare-fun m!7214804 () Bool)

(assert (=> b!6420016 m!7214804))

(declare-fun m!7214806 () Bool)

(assert (=> b!6420016 m!7214806))

(declare-fun m!7214808 () Bool)

(assert (=> b!6420016 m!7214808))

(declare-fun m!7214810 () Bool)

(assert (=> b!6420024 m!7214810))

(declare-fun m!7214812 () Bool)

(assert (=> b!6420024 m!7214812))

(declare-fun m!7214814 () Bool)

(assert (=> b!6420024 m!7214814))

(declare-fun m!7214816 () Bool)

(assert (=> b!6420047 m!7214816))

(declare-fun m!7214818 () Bool)

(assert (=> b!6420037 m!7214818))

(declare-fun m!7214820 () Bool)

(assert (=> b!6420044 m!7214820))

(declare-fun m!7214822 () Bool)

(assert (=> start!634394 m!7214822))

(check-sat (not b!6420022) (not b!6420049) (not b!6420054) (not b!6420042) (not b!6420036) (not b!6420048) (not b!6420053) (not b!6420026) (not setNonEmpty!43822) (not b!6420043) (not start!634394) (not b!6420044) (not b!6420024) (not b!6420034) (not b!6420045) (not b!6420029) (not b!6420051) (not b!6420055) (not b!6420050) (not b!6420018) (not b!6420032) (not b!6420027) (not b!6420017) (not b!6420023) (not b!6420041) (not b!6420016) (not b!6420037) (not b!6420033) (not b!6420028) tp_is_empty!41899 (not b!6420047) (not b!6420052) (not b!6420030) (not b!6420039))
(check-sat)
(get-model)

(declare-fun d!2012923 () Bool)

(declare-fun lambda!354688 () Int)

(declare-fun forall!15512 (List!65269 Int) Bool)

(assert (=> d!2012923 (= (inv!84054 (h!71594 zl!343)) (forall!15512 (exprs!6207 (h!71594 zl!343)) lambda!354688))))

(declare-fun bs!1614242 () Bool)

(assert (= bs!1614242 d!2012923))

(declare-fun m!7214862 () Bool)

(assert (=> bs!1614242 m!7214862))

(assert (=> b!6420042 d!2012923))

(declare-fun b!6420213 () Bool)

(declare-fun res!2638675 () Bool)

(declare-fun e!3895435 () Bool)

(assert (=> b!6420213 (=> res!2638675 e!3895435)))

(declare-fun tail!12221 (List!65268) List!65268)

(assert (=> b!6420213 (= res!2638675 (not (isEmpty!37302 (tail!12221 (_2!36605 lt!2376824)))))))

(declare-fun b!6420214 () Bool)

(declare-fun head!13136 (List!65268) C!32916)

(assert (=> b!6420214 (= e!3895435 (not (= (head!13136 (_2!36605 lt!2376824)) (c!1172786 (regTwo!33158 r!7292)))))))

(declare-fun b!6420215 () Bool)

(declare-fun e!3895430 () Bool)

(assert (=> b!6420215 (= e!3895430 (= (head!13136 (_2!36605 lt!2376824)) (c!1172786 (regTwo!33158 r!7292))))))

(declare-fun b!6420216 () Bool)

(declare-fun e!3895434 () Bool)

(assert (=> b!6420216 (= e!3895434 e!3895435)))

(declare-fun res!2638674 () Bool)

(assert (=> b!6420216 (=> res!2638674 e!3895435)))

(declare-fun call!551995 () Bool)

(assert (=> b!6420216 (= res!2638674 call!551995)))

(declare-fun d!2012927 () Bool)

(declare-fun e!3895429 () Bool)

(assert (=> d!2012927 e!3895429))

(declare-fun c!1172830 () Bool)

(assert (=> d!2012927 (= c!1172830 ((_ is EmptyExpr!16323) (regTwo!33158 r!7292)))))

(declare-fun lt!2376845 () Bool)

(declare-fun e!3895432 () Bool)

(assert (=> d!2012927 (= lt!2376845 e!3895432)))

(declare-fun c!1172828 () Bool)

(assert (=> d!2012927 (= c!1172828 (isEmpty!37302 (_2!36605 lt!2376824)))))

(assert (=> d!2012927 (validRegex!8059 (regTwo!33158 r!7292))))

(assert (=> d!2012927 (= (matchR!8506 (regTwo!33158 r!7292) (_2!36605 lt!2376824)) lt!2376845)))

(declare-fun bm!551990 () Bool)

(assert (=> bm!551990 (= call!551995 (isEmpty!37302 (_2!36605 lt!2376824)))))

(declare-fun b!6420217 () Bool)

(declare-fun res!2638679 () Bool)

(declare-fun e!3895433 () Bool)

(assert (=> b!6420217 (=> res!2638679 e!3895433)))

(assert (=> b!6420217 (= res!2638679 e!3895430)))

(declare-fun res!2638681 () Bool)

(assert (=> b!6420217 (=> (not res!2638681) (not e!3895430))))

(assert (=> b!6420217 (= res!2638681 lt!2376845)))

(declare-fun b!6420218 () Bool)

(assert (=> b!6420218 (= e!3895433 e!3895434)))

(declare-fun res!2638676 () Bool)

(assert (=> b!6420218 (=> (not res!2638676) (not e!3895434))))

(assert (=> b!6420218 (= res!2638676 (not lt!2376845))))

(declare-fun b!6420219 () Bool)

(assert (=> b!6420219 (= e!3895432 (nullable!6316 (regTwo!33158 r!7292)))))

(declare-fun b!6420220 () Bool)

(declare-fun res!2638678 () Bool)

(assert (=> b!6420220 (=> (not res!2638678) (not e!3895430))))

(assert (=> b!6420220 (= res!2638678 (isEmpty!37302 (tail!12221 (_2!36605 lt!2376824))))))

(declare-fun b!6420221 () Bool)

(declare-fun res!2638677 () Bool)

(assert (=> b!6420221 (=> (not res!2638677) (not e!3895430))))

(assert (=> b!6420221 (= res!2638677 (not call!551995))))

(declare-fun b!6420222 () Bool)

(declare-fun e!3895431 () Bool)

(assert (=> b!6420222 (= e!3895429 e!3895431)))

(declare-fun c!1172829 () Bool)

(assert (=> b!6420222 (= c!1172829 ((_ is EmptyLang!16323) (regTwo!33158 r!7292)))))

(declare-fun b!6420223 () Bool)

(declare-fun derivativeStep!5027 (Regex!16323 C!32916) Regex!16323)

(assert (=> b!6420223 (= e!3895432 (matchR!8506 (derivativeStep!5027 (regTwo!33158 r!7292) (head!13136 (_2!36605 lt!2376824))) (tail!12221 (_2!36605 lt!2376824))))))

(declare-fun b!6420224 () Bool)

(assert (=> b!6420224 (= e!3895429 (= lt!2376845 call!551995))))

(declare-fun b!6420225 () Bool)

(declare-fun res!2638680 () Bool)

(assert (=> b!6420225 (=> res!2638680 e!3895433)))

(assert (=> b!6420225 (= res!2638680 (not ((_ is ElementMatch!16323) (regTwo!33158 r!7292))))))

(assert (=> b!6420225 (= e!3895431 e!3895433)))

(declare-fun b!6420226 () Bool)

(assert (=> b!6420226 (= e!3895431 (not lt!2376845))))

(assert (= (and d!2012927 c!1172828) b!6420219))

(assert (= (and d!2012927 (not c!1172828)) b!6420223))

(assert (= (and d!2012927 c!1172830) b!6420224))

(assert (= (and d!2012927 (not c!1172830)) b!6420222))

(assert (= (and b!6420222 c!1172829) b!6420226))

(assert (= (and b!6420222 (not c!1172829)) b!6420225))

(assert (= (and b!6420225 (not res!2638680)) b!6420217))

(assert (= (and b!6420217 res!2638681) b!6420221))

(assert (= (and b!6420221 res!2638677) b!6420220))

(assert (= (and b!6420220 res!2638678) b!6420215))

(assert (= (and b!6420217 (not res!2638679)) b!6420218))

(assert (= (and b!6420218 res!2638676) b!6420216))

(assert (= (and b!6420216 (not res!2638674)) b!6420213))

(assert (= (and b!6420213 (not res!2638675)) b!6420214))

(assert (= (or b!6420224 b!6420216 b!6420221) bm!551990))

(declare-fun m!7214864 () Bool)

(assert (=> b!6420219 m!7214864))

(declare-fun m!7214866 () Bool)

(assert (=> b!6420220 m!7214866))

(assert (=> b!6420220 m!7214866))

(declare-fun m!7214868 () Bool)

(assert (=> b!6420220 m!7214868))

(declare-fun m!7214870 () Bool)

(assert (=> d!2012927 m!7214870))

(declare-fun m!7214872 () Bool)

(assert (=> d!2012927 m!7214872))

(declare-fun m!7214874 () Bool)

(assert (=> b!6420215 m!7214874))

(assert (=> b!6420214 m!7214874))

(assert (=> b!6420223 m!7214874))

(assert (=> b!6420223 m!7214874))

(declare-fun m!7214876 () Bool)

(assert (=> b!6420223 m!7214876))

(assert (=> b!6420223 m!7214866))

(assert (=> b!6420223 m!7214876))

(assert (=> b!6420223 m!7214866))

(declare-fun m!7214878 () Bool)

(assert (=> b!6420223 m!7214878))

(assert (=> b!6420213 m!7214866))

(assert (=> b!6420213 m!7214866))

(assert (=> b!6420213 m!7214868))

(assert (=> bm!551990 m!7214870))

(assert (=> b!6420022 d!2012927))

(declare-fun b!6420256 () Bool)

(declare-fun e!3895461 () Bool)

(declare-fun e!3895460 () Bool)

(assert (=> b!6420256 (= e!3895461 e!3895460)))

(declare-fun c!1172840 () Bool)

(assert (=> b!6420256 (= c!1172840 ((_ is Star!16323) r!7292))))

(declare-fun bm!551999 () Bool)

(declare-fun call!552004 () Bool)

(declare-fun c!1172839 () Bool)

(assert (=> bm!551999 (= call!552004 (validRegex!8059 (ite c!1172839 (regOne!33159 r!7292) (regOne!33158 r!7292))))))

(declare-fun b!6420257 () Bool)

(declare-fun res!2638695 () Bool)

(declare-fun e!3895458 () Bool)

(assert (=> b!6420257 (=> (not res!2638695) (not e!3895458))))

(assert (=> b!6420257 (= res!2638695 call!552004)))

(declare-fun e!3895459 () Bool)

(assert (=> b!6420257 (= e!3895459 e!3895458)))

(declare-fun b!6420258 () Bool)

(declare-fun call!552005 () Bool)

(assert (=> b!6420258 (= e!3895458 call!552005)))

(declare-fun call!552006 () Bool)

(declare-fun bm!552000 () Bool)

(assert (=> bm!552000 (= call!552006 (validRegex!8059 (ite c!1172840 (reg!16652 r!7292) (ite c!1172839 (regTwo!33159 r!7292) (regTwo!33158 r!7292)))))))

(declare-fun b!6420259 () Bool)

(declare-fun e!3895457 () Bool)

(declare-fun e!3895462 () Bool)

(assert (=> b!6420259 (= e!3895457 e!3895462)))

(declare-fun res!2638696 () Bool)

(assert (=> b!6420259 (=> (not res!2638696) (not e!3895462))))

(assert (=> b!6420259 (= res!2638696 call!552004)))

(declare-fun b!6420260 () Bool)

(declare-fun e!3895463 () Bool)

(assert (=> b!6420260 (= e!3895460 e!3895463)))

(declare-fun res!2638698 () Bool)

(assert (=> b!6420260 (= res!2638698 (not (nullable!6316 (reg!16652 r!7292))))))

(assert (=> b!6420260 (=> (not res!2638698) (not e!3895463))))

(declare-fun d!2012929 () Bool)

(declare-fun res!2638697 () Bool)

(assert (=> d!2012929 (=> res!2638697 e!3895461)))

(assert (=> d!2012929 (= res!2638697 ((_ is ElementMatch!16323) r!7292))))

(assert (=> d!2012929 (= (validRegex!8059 r!7292) e!3895461)))

(declare-fun b!6420261 () Bool)

(declare-fun res!2638699 () Bool)

(assert (=> b!6420261 (=> res!2638699 e!3895457)))

(assert (=> b!6420261 (= res!2638699 (not ((_ is Concat!25168) r!7292)))))

(assert (=> b!6420261 (= e!3895459 e!3895457)))

(declare-fun b!6420262 () Bool)

(assert (=> b!6420262 (= e!3895463 call!552006)))

(declare-fun b!6420263 () Bool)

(assert (=> b!6420263 (= e!3895462 call!552005)))

(declare-fun b!6420264 () Bool)

(assert (=> b!6420264 (= e!3895460 e!3895459)))

(assert (=> b!6420264 (= c!1172839 ((_ is Union!16323) r!7292))))

(declare-fun bm!552001 () Bool)

(assert (=> bm!552001 (= call!552005 call!552006)))

(assert (= (and d!2012929 (not res!2638697)) b!6420256))

(assert (= (and b!6420256 c!1172840) b!6420260))

(assert (= (and b!6420256 (not c!1172840)) b!6420264))

(assert (= (and b!6420260 res!2638698) b!6420262))

(assert (= (and b!6420264 c!1172839) b!6420257))

(assert (= (and b!6420264 (not c!1172839)) b!6420261))

(assert (= (and b!6420257 res!2638695) b!6420258))

(assert (= (and b!6420261 (not res!2638699)) b!6420259))

(assert (= (and b!6420259 res!2638696) b!6420263))

(assert (= (or b!6420258 b!6420263) bm!552001))

(assert (= (or b!6420257 b!6420259) bm!551999))

(assert (= (or b!6420262 bm!552001) bm!552000))

(declare-fun m!7214886 () Bool)

(assert (=> bm!551999 m!7214886))

(declare-fun m!7214888 () Bool)

(assert (=> bm!552000 m!7214888))

(declare-fun m!7214890 () Bool)

(assert (=> b!6420260 m!7214890))

(assert (=> start!634394 d!2012929))

(declare-fun bs!1614253 () Bool)

(declare-fun d!2012933 () Bool)

(assert (= bs!1614253 (and d!2012933 d!2012923)))

(declare-fun lambda!354697 () Int)

(assert (=> bs!1614253 (= lambda!354697 lambda!354688)))

(declare-fun b!6420300 () Bool)

(declare-fun e!3895486 () Bool)

(declare-fun lt!2376854 () Regex!16323)

(declare-fun head!13137 (List!65269) Regex!16323)

(assert (=> b!6420300 (= e!3895486 (= lt!2376854 (head!13137 (unfocusZipperList!1744 zl!343))))))

(declare-fun b!6420301 () Bool)

(declare-fun e!3895489 () Bool)

(declare-fun e!3895485 () Bool)

(assert (=> b!6420301 (= e!3895489 e!3895485)))

(declare-fun c!1172856 () Bool)

(assert (=> b!6420301 (= c!1172856 (isEmpty!37300 (unfocusZipperList!1744 zl!343)))))

(declare-fun b!6420302 () Bool)

(assert (=> b!6420302 (= e!3895485 e!3895486)))

(declare-fun c!1172858 () Bool)

(declare-fun tail!12222 (List!65269) List!65269)

(assert (=> b!6420302 (= c!1172858 (isEmpty!37300 (tail!12222 (unfocusZipperList!1744 zl!343))))))

(declare-fun b!6420303 () Bool)

(declare-fun e!3895488 () Regex!16323)

(declare-fun e!3895490 () Regex!16323)

(assert (=> b!6420303 (= e!3895488 e!3895490)))

(declare-fun c!1172855 () Bool)

(assert (=> b!6420303 (= c!1172855 ((_ is Cons!65145) (unfocusZipperList!1744 zl!343)))))

(declare-fun b!6420304 () Bool)

(assert (=> b!6420304 (= e!3895490 (Union!16323 (h!71593 (unfocusZipperList!1744 zl!343)) (generalisedUnion!2167 (t!378883 (unfocusZipperList!1744 zl!343)))))))

(assert (=> d!2012933 e!3895489))

(declare-fun res!2638708 () Bool)

(assert (=> d!2012933 (=> (not res!2638708) (not e!3895489))))

(assert (=> d!2012933 (= res!2638708 (validRegex!8059 lt!2376854))))

(assert (=> d!2012933 (= lt!2376854 e!3895488)))

(declare-fun c!1172857 () Bool)

(declare-fun e!3895487 () Bool)

(assert (=> d!2012933 (= c!1172857 e!3895487)))

(declare-fun res!2638707 () Bool)

(assert (=> d!2012933 (=> (not res!2638707) (not e!3895487))))

(assert (=> d!2012933 (= res!2638707 ((_ is Cons!65145) (unfocusZipperList!1744 zl!343)))))

(assert (=> d!2012933 (forall!15512 (unfocusZipperList!1744 zl!343) lambda!354697)))

(assert (=> d!2012933 (= (generalisedUnion!2167 (unfocusZipperList!1744 zl!343)) lt!2376854)))

(declare-fun b!6420305 () Bool)

(assert (=> b!6420305 (= e!3895487 (isEmpty!37300 (t!378883 (unfocusZipperList!1744 zl!343))))))

(declare-fun b!6420306 () Bool)

(declare-fun isEmptyLang!1730 (Regex!16323) Bool)

(assert (=> b!6420306 (= e!3895485 (isEmptyLang!1730 lt!2376854))))

(declare-fun b!6420307 () Bool)

(assert (=> b!6420307 (= e!3895490 EmptyLang!16323)))

(declare-fun b!6420308 () Bool)

(assert (=> b!6420308 (= e!3895488 (h!71593 (unfocusZipperList!1744 zl!343)))))

(declare-fun b!6420309 () Bool)

(declare-fun isUnion!1160 (Regex!16323) Bool)

(assert (=> b!6420309 (= e!3895486 (isUnion!1160 lt!2376854))))

(assert (= (and d!2012933 res!2638707) b!6420305))

(assert (= (and d!2012933 c!1172857) b!6420308))

(assert (= (and d!2012933 (not c!1172857)) b!6420303))

(assert (= (and b!6420303 c!1172855) b!6420304))

(assert (= (and b!6420303 (not c!1172855)) b!6420307))

(assert (= (and d!2012933 res!2638708) b!6420301))

(assert (= (and b!6420301 c!1172856) b!6420306))

(assert (= (and b!6420301 (not c!1172856)) b!6420302))

(assert (= (and b!6420302 c!1172858) b!6420300))

(assert (= (and b!6420302 (not c!1172858)) b!6420309))

(declare-fun m!7214912 () Bool)

(assert (=> b!6420305 m!7214912))

(assert (=> b!6420300 m!7214764))

(declare-fun m!7214914 () Bool)

(assert (=> b!6420300 m!7214914))

(declare-fun m!7214916 () Bool)

(assert (=> b!6420304 m!7214916))

(declare-fun m!7214918 () Bool)

(assert (=> b!6420306 m!7214918))

(assert (=> b!6420302 m!7214764))

(declare-fun m!7214920 () Bool)

(assert (=> b!6420302 m!7214920))

(assert (=> b!6420302 m!7214920))

(declare-fun m!7214922 () Bool)

(assert (=> b!6420302 m!7214922))

(declare-fun m!7214924 () Bool)

(assert (=> b!6420309 m!7214924))

(assert (=> b!6420301 m!7214764))

(declare-fun m!7214926 () Bool)

(assert (=> b!6420301 m!7214926))

(declare-fun m!7214928 () Bool)

(assert (=> d!2012933 m!7214928))

(assert (=> d!2012933 m!7214764))

(declare-fun m!7214930 () Bool)

(assert (=> d!2012933 m!7214930))

(assert (=> b!6420041 d!2012933))

(declare-fun bs!1614261 () Bool)

(declare-fun d!2012945 () Bool)

(assert (= bs!1614261 (and d!2012945 d!2012923)))

(declare-fun lambda!354703 () Int)

(assert (=> bs!1614261 (= lambda!354703 lambda!354688)))

(declare-fun bs!1614262 () Bool)

(assert (= bs!1614262 (and d!2012945 d!2012933)))

(assert (=> bs!1614262 (= lambda!354703 lambda!354697)))

(declare-fun lt!2376862 () List!65269)

(assert (=> d!2012945 (forall!15512 lt!2376862 lambda!354703)))

(declare-fun e!3895499 () List!65269)

(assert (=> d!2012945 (= lt!2376862 e!3895499)))

(declare-fun c!1172867 () Bool)

(assert (=> d!2012945 (= c!1172867 ((_ is Cons!65146) zl!343))))

(assert (=> d!2012945 (= (unfocusZipperList!1744 zl!343) lt!2376862)))

(declare-fun b!6420326 () Bool)

(assert (=> b!6420326 (= e!3895499 (Cons!65145 (generalisedConcat!1920 (exprs!6207 (h!71594 zl!343))) (unfocusZipperList!1744 (t!378884 zl!343))))))

(declare-fun b!6420327 () Bool)

(assert (=> b!6420327 (= e!3895499 Nil!65145)))

(assert (= (and d!2012945 c!1172867) b!6420326))

(assert (= (and d!2012945 (not c!1172867)) b!6420327))

(declare-fun m!7214958 () Bool)

(assert (=> d!2012945 m!7214958))

(assert (=> b!6420326 m!7214786))

(declare-fun m!7214960 () Bool)

(assert (=> b!6420326 m!7214960))

(assert (=> b!6420041 d!2012945))

(declare-fun d!2012965 () Bool)

(declare-fun lt!2376868 () Regex!16323)

(assert (=> d!2012965 (validRegex!8059 lt!2376868)))

(assert (=> d!2012965 (= lt!2376868 (generalisedUnion!2167 (unfocusZipperList!1744 (Cons!65146 lt!2376829 Nil!65146))))))

(assert (=> d!2012965 (= (unfocusZipper!2065 (Cons!65146 lt!2376829 Nil!65146)) lt!2376868)))

(declare-fun bs!1614264 () Bool)

(assert (= bs!1614264 d!2012965))

(declare-fun m!7214968 () Bool)

(assert (=> bs!1614264 m!7214968))

(declare-fun m!7214970 () Bool)

(assert (=> bs!1614264 m!7214970))

(assert (=> bs!1614264 m!7214970))

(declare-fun m!7214972 () Bool)

(assert (=> bs!1614264 m!7214972))

(assert (=> b!6420044 d!2012965))

(declare-fun b!6420330 () Bool)

(declare-fun res!2638714 () Bool)

(declare-fun e!3895508 () Bool)

(assert (=> b!6420330 (=> res!2638714 e!3895508)))

(assert (=> b!6420330 (= res!2638714 (not (isEmpty!37302 (tail!12221 s!2326))))))

(declare-fun b!6420331 () Bool)

(assert (=> b!6420331 (= e!3895508 (not (= (head!13136 s!2326) (c!1172786 lt!2376834))))))

(declare-fun b!6420332 () Bool)

(declare-fun e!3895503 () Bool)

(assert (=> b!6420332 (= e!3895503 (= (head!13136 s!2326) (c!1172786 lt!2376834)))))

(declare-fun b!6420333 () Bool)

(declare-fun e!3895507 () Bool)

(assert (=> b!6420333 (= e!3895507 e!3895508)))

(declare-fun res!2638713 () Bool)

(assert (=> b!6420333 (=> res!2638713 e!3895508)))

(declare-fun call!552012 () Bool)

(assert (=> b!6420333 (= res!2638713 call!552012)))

(declare-fun d!2012969 () Bool)

(declare-fun e!3895502 () Bool)

(assert (=> d!2012969 e!3895502))

(declare-fun c!1172870 () Bool)

(assert (=> d!2012969 (= c!1172870 ((_ is EmptyExpr!16323) lt!2376834))))

(declare-fun lt!2376869 () Bool)

(declare-fun e!3895505 () Bool)

(assert (=> d!2012969 (= lt!2376869 e!3895505)))

(declare-fun c!1172868 () Bool)

(assert (=> d!2012969 (= c!1172868 (isEmpty!37302 s!2326))))

(assert (=> d!2012969 (validRegex!8059 lt!2376834)))

(assert (=> d!2012969 (= (matchR!8506 lt!2376834 s!2326) lt!2376869)))

(declare-fun bm!552007 () Bool)

(assert (=> bm!552007 (= call!552012 (isEmpty!37302 s!2326))))

(declare-fun b!6420334 () Bool)

(declare-fun res!2638718 () Bool)

(declare-fun e!3895506 () Bool)

(assert (=> b!6420334 (=> res!2638718 e!3895506)))

(assert (=> b!6420334 (= res!2638718 e!3895503)))

(declare-fun res!2638720 () Bool)

(assert (=> b!6420334 (=> (not res!2638720) (not e!3895503))))

(assert (=> b!6420334 (= res!2638720 lt!2376869)))

(declare-fun b!6420335 () Bool)

(assert (=> b!6420335 (= e!3895506 e!3895507)))

(declare-fun res!2638715 () Bool)

(assert (=> b!6420335 (=> (not res!2638715) (not e!3895507))))

(assert (=> b!6420335 (= res!2638715 (not lt!2376869))))

(declare-fun b!6420336 () Bool)

(assert (=> b!6420336 (= e!3895505 (nullable!6316 lt!2376834))))

(declare-fun b!6420337 () Bool)

(declare-fun res!2638717 () Bool)

(assert (=> b!6420337 (=> (not res!2638717) (not e!3895503))))

(assert (=> b!6420337 (= res!2638717 (isEmpty!37302 (tail!12221 s!2326)))))

(declare-fun b!6420338 () Bool)

(declare-fun res!2638716 () Bool)

(assert (=> b!6420338 (=> (not res!2638716) (not e!3895503))))

(assert (=> b!6420338 (= res!2638716 (not call!552012))))

(declare-fun b!6420339 () Bool)

(declare-fun e!3895504 () Bool)

(assert (=> b!6420339 (= e!3895502 e!3895504)))

(declare-fun c!1172869 () Bool)

(assert (=> b!6420339 (= c!1172869 ((_ is EmptyLang!16323) lt!2376834))))

(declare-fun b!6420340 () Bool)

(assert (=> b!6420340 (= e!3895505 (matchR!8506 (derivativeStep!5027 lt!2376834 (head!13136 s!2326)) (tail!12221 s!2326)))))

(declare-fun b!6420342 () Bool)

(assert (=> b!6420342 (= e!3895502 (= lt!2376869 call!552012))))

(declare-fun b!6420343 () Bool)

(declare-fun res!2638719 () Bool)

(assert (=> b!6420343 (=> res!2638719 e!3895506)))

(assert (=> b!6420343 (= res!2638719 (not ((_ is ElementMatch!16323) lt!2376834)))))

(assert (=> b!6420343 (= e!3895504 e!3895506)))

(declare-fun b!6420344 () Bool)

(assert (=> b!6420344 (= e!3895504 (not lt!2376869))))

(assert (= (and d!2012969 c!1172868) b!6420336))

(assert (= (and d!2012969 (not c!1172868)) b!6420340))

(assert (= (and d!2012969 c!1172870) b!6420342))

(assert (= (and d!2012969 (not c!1172870)) b!6420339))

(assert (= (and b!6420339 c!1172869) b!6420344))

(assert (= (and b!6420339 (not c!1172869)) b!6420343))

(assert (= (and b!6420343 (not res!2638719)) b!6420334))

(assert (= (and b!6420334 res!2638720) b!6420338))

(assert (= (and b!6420338 res!2638716) b!6420337))

(assert (= (and b!6420337 res!2638717) b!6420332))

(assert (= (and b!6420334 (not res!2638718)) b!6420335))

(assert (= (and b!6420335 res!2638715) b!6420333))

(assert (= (and b!6420333 (not res!2638713)) b!6420330))

(assert (= (and b!6420330 (not res!2638714)) b!6420331))

(assert (= (or b!6420342 b!6420333 b!6420338) bm!552007))

(declare-fun m!7214982 () Bool)

(assert (=> b!6420336 m!7214982))

(declare-fun m!7214984 () Bool)

(assert (=> b!6420337 m!7214984))

(assert (=> b!6420337 m!7214984))

(declare-fun m!7214986 () Bool)

(assert (=> b!6420337 m!7214986))

(declare-fun m!7214988 () Bool)

(assert (=> d!2012969 m!7214988))

(declare-fun m!7214990 () Bool)

(assert (=> d!2012969 m!7214990))

(declare-fun m!7214992 () Bool)

(assert (=> b!6420332 m!7214992))

(assert (=> b!6420331 m!7214992))

(assert (=> b!6420340 m!7214992))

(assert (=> b!6420340 m!7214992))

(declare-fun m!7214994 () Bool)

(assert (=> b!6420340 m!7214994))

(assert (=> b!6420340 m!7214984))

(assert (=> b!6420340 m!7214994))

(assert (=> b!6420340 m!7214984))

(declare-fun m!7214996 () Bool)

(assert (=> b!6420340 m!7214996))

(assert (=> b!6420330 m!7214984))

(assert (=> b!6420330 m!7214984))

(assert (=> b!6420330 m!7214986))

(assert (=> bm!552007 m!7214988))

(assert (=> b!6420024 d!2012969))

(declare-fun bs!1614268 () Bool)

(declare-fun b!6420433 () Bool)

(assert (= bs!1614268 (and b!6420433 b!6420053)))

(declare-fun lambda!354714 () Int)

(assert (=> bs!1614268 (not (= lambda!354714 lambda!354683))))

(assert (=> bs!1614268 (not (= lambda!354714 lambda!354684))))

(declare-fun bs!1614269 () Bool)

(assert (= bs!1614269 (and b!6420433 b!6420026)))

(assert (=> bs!1614269 (not (= lambda!354714 lambda!354681))))

(assert (=> bs!1614269 (not (= lambda!354714 lambda!354680))))

(declare-fun bs!1614271 () Bool)

(assert (= bs!1614271 (and b!6420433 b!6420030)))

(assert (=> bs!1614271 (not (= lambda!354714 lambda!354685))))

(assert (=> b!6420433 true))

(assert (=> b!6420433 true))

(declare-fun bs!1614272 () Bool)

(declare-fun b!6420425 () Bool)

(assert (= bs!1614272 (and b!6420425 b!6420053)))

(declare-fun lambda!354715 () Int)

(assert (=> bs!1614272 (= (and (= (regOne!33158 lt!2376834) lt!2376810) (= (regTwo!33158 lt!2376834) (regTwo!33158 r!7292))) (= lambda!354715 lambda!354684))))

(declare-fun bs!1614273 () Bool)

(assert (= bs!1614273 (and b!6420425 b!6420026)))

(assert (=> bs!1614273 (= (and (= (regOne!33158 lt!2376834) (regOne!33158 r!7292)) (= (regTwo!33158 lt!2376834) (regTwo!33158 r!7292))) (= lambda!354715 lambda!354681))))

(declare-fun bs!1614275 () Bool)

(assert (= bs!1614275 (and b!6420425 b!6420433)))

(assert (=> bs!1614275 (not (= lambda!354715 lambda!354714))))

(assert (=> bs!1614272 (not (= lambda!354715 lambda!354683))))

(assert (=> bs!1614273 (not (= lambda!354715 lambda!354680))))

(declare-fun bs!1614276 () Bool)

(assert (= bs!1614276 (and b!6420425 b!6420030)))

(assert (=> bs!1614276 (not (= lambda!354715 lambda!354685))))

(assert (=> b!6420425 true))

(assert (=> b!6420425 true))

(declare-fun b!6420424 () Bool)

(declare-fun c!1172901 () Bool)

(assert (=> b!6420424 (= c!1172901 ((_ is ElementMatch!16323) lt!2376834))))

(declare-fun e!3895556 () Bool)

(declare-fun e!3895558 () Bool)

(assert (=> b!6420424 (= e!3895556 e!3895558)))

(declare-fun b!6420426 () Bool)

(assert (=> b!6420426 (= e!3895558 (= s!2326 (Cons!65144 (c!1172786 lt!2376834) Nil!65144)))))

(declare-fun b!6420427 () Bool)

(declare-fun e!3895560 () Bool)

(declare-fun e!3895557 () Bool)

(assert (=> b!6420427 (= e!3895560 e!3895557)))

(declare-fun res!2638746 () Bool)

(assert (=> b!6420427 (= res!2638746 (matchRSpec!3424 (regOne!33159 lt!2376834) s!2326))))

(assert (=> b!6420427 (=> res!2638746 e!3895557)))

(declare-fun call!552024 () Bool)

(declare-fun c!1172902 () Bool)

(declare-fun bm!552018 () Bool)

(assert (=> bm!552018 (= call!552024 (Exists!3393 (ite c!1172902 lambda!354714 lambda!354715)))))

(declare-fun b!6420428 () Bool)

(assert (=> b!6420428 (= e!3895557 (matchRSpec!3424 (regTwo!33159 lt!2376834) s!2326))))

(declare-fun b!6420429 () Bool)

(declare-fun e!3895555 () Bool)

(declare-fun call!552023 () Bool)

(assert (=> b!6420429 (= e!3895555 call!552023)))

(declare-fun b!6420430 () Bool)

(assert (=> b!6420430 (= e!3895555 e!3895556)))

(declare-fun res!2638745 () Bool)

(assert (=> b!6420430 (= res!2638745 (not ((_ is EmptyLang!16323) lt!2376834)))))

(assert (=> b!6420430 (=> (not res!2638745) (not e!3895556))))

(declare-fun b!6420431 () Bool)

(declare-fun c!1172899 () Bool)

(assert (=> b!6420431 (= c!1172899 ((_ is Union!16323) lt!2376834))))

(assert (=> b!6420431 (= e!3895558 e!3895560)))

(declare-fun d!2012975 () Bool)

(declare-fun c!1172900 () Bool)

(assert (=> d!2012975 (= c!1172900 ((_ is EmptyExpr!16323) lt!2376834))))

(assert (=> d!2012975 (= (matchRSpec!3424 lt!2376834 s!2326) e!3895555)))

(declare-fun e!3895561 () Bool)

(assert (=> b!6420425 (= e!3895561 call!552024)))

(declare-fun b!6420432 () Bool)

(assert (=> b!6420432 (= e!3895560 e!3895561)))

(assert (=> b!6420432 (= c!1172902 ((_ is Star!16323) lt!2376834))))

(declare-fun bm!552019 () Bool)

(assert (=> bm!552019 (= call!552023 (isEmpty!37302 s!2326))))

(declare-fun e!3895559 () Bool)

(assert (=> b!6420433 (= e!3895559 call!552024)))

(declare-fun b!6420434 () Bool)

(declare-fun res!2638747 () Bool)

(assert (=> b!6420434 (=> res!2638747 e!3895559)))

(assert (=> b!6420434 (= res!2638747 call!552023)))

(assert (=> b!6420434 (= e!3895561 e!3895559)))

(assert (= (and d!2012975 c!1172900) b!6420429))

(assert (= (and d!2012975 (not c!1172900)) b!6420430))

(assert (= (and b!6420430 res!2638745) b!6420424))

(assert (= (and b!6420424 c!1172901) b!6420426))

(assert (= (and b!6420424 (not c!1172901)) b!6420431))

(assert (= (and b!6420431 c!1172899) b!6420427))

(assert (= (and b!6420431 (not c!1172899)) b!6420432))

(assert (= (and b!6420427 (not res!2638746)) b!6420428))

(assert (= (and b!6420432 c!1172902) b!6420434))

(assert (= (and b!6420432 (not c!1172902)) b!6420425))

(assert (= (and b!6420434 (not res!2638747)) b!6420433))

(assert (= (or b!6420433 b!6420425) bm!552018))

(assert (= (or b!6420429 b!6420434) bm!552019))

(declare-fun m!7215058 () Bool)

(assert (=> b!6420427 m!7215058))

(declare-fun m!7215060 () Bool)

(assert (=> bm!552018 m!7215060))

(declare-fun m!7215062 () Bool)

(assert (=> b!6420428 m!7215062))

(assert (=> bm!552019 m!7214988))

(assert (=> b!6420024 d!2012975))

(declare-fun d!2012995 () Bool)

(assert (=> d!2012995 (= (matchR!8506 lt!2376834 s!2326) (matchRSpec!3424 lt!2376834 s!2326))))

(declare-fun lt!2376883 () Unit!158623)

(declare-fun choose!47702 (Regex!16323 List!65268) Unit!158623)

(assert (=> d!2012995 (= lt!2376883 (choose!47702 lt!2376834 s!2326))))

(assert (=> d!2012995 (validRegex!8059 lt!2376834)))

(assert (=> d!2012995 (= (mainMatchTheorem!3424 lt!2376834 s!2326) lt!2376883)))

(declare-fun bs!1614277 () Bool)

(assert (= bs!1614277 d!2012995))

(assert (=> bs!1614277 m!7214810))

(assert (=> bs!1614277 m!7214812))

(declare-fun m!7215064 () Bool)

(assert (=> bs!1614277 m!7215064))

(assert (=> bs!1614277 m!7214990))

(assert (=> b!6420024 d!2012995))

(declare-fun bs!1614285 () Bool)

(declare-fun d!2012997 () Bool)

(assert (= bs!1614285 (and d!2012997 d!2012923)))

(declare-fun lambda!354724 () Int)

(assert (=> bs!1614285 (= lambda!354724 lambda!354688)))

(declare-fun bs!1614286 () Bool)

(assert (= bs!1614286 (and d!2012997 d!2012933)))

(assert (=> bs!1614286 (= lambda!354724 lambda!354697)))

(declare-fun bs!1614287 () Bool)

(assert (= bs!1614287 (and d!2012997 d!2012945)))

(assert (=> bs!1614287 (= lambda!354724 lambda!354703)))

(declare-fun b!6420501 () Bool)

(declare-fun e!3895606 () Bool)

(declare-fun lt!2376887 () Regex!16323)

(assert (=> b!6420501 (= e!3895606 (= lt!2376887 (head!13137 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun b!6420502 () Bool)

(declare-fun e!3895605 () Bool)

(declare-fun isEmptyExpr!1723 (Regex!16323) Bool)

(assert (=> b!6420502 (= e!3895605 (isEmptyExpr!1723 lt!2376887))))

(declare-fun b!6420503 () Bool)

(declare-fun e!3895601 () Bool)

(assert (=> b!6420503 (= e!3895601 e!3895605)))

(declare-fun c!1172931 () Bool)

(assert (=> b!6420503 (= c!1172931 (isEmpty!37300 (exprs!6207 (h!71594 zl!343))))))

(declare-fun b!6420504 () Bool)

(declare-fun e!3895602 () Regex!16323)

(assert (=> b!6420504 (= e!3895602 EmptyExpr!16323)))

(declare-fun b!6420505 () Bool)

(declare-fun e!3895603 () Regex!16323)

(assert (=> b!6420505 (= e!3895603 (h!71593 (exprs!6207 (h!71594 zl!343))))))

(declare-fun b!6420506 () Bool)

(declare-fun e!3895604 () Bool)

(assert (=> b!6420506 (= e!3895604 (isEmpty!37300 (t!378883 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun b!6420507 () Bool)

(declare-fun isConcat!1246 (Regex!16323) Bool)

(assert (=> b!6420507 (= e!3895606 (isConcat!1246 lt!2376887))))

(declare-fun b!6420508 () Bool)

(assert (=> b!6420508 (= e!3895603 e!3895602)))

(declare-fun c!1172929 () Bool)

(assert (=> b!6420508 (= c!1172929 ((_ is Cons!65145) (exprs!6207 (h!71594 zl!343))))))

(declare-fun b!6420509 () Bool)

(assert (=> b!6420509 (= e!3895605 e!3895606)))

(declare-fun c!1172930 () Bool)

(assert (=> b!6420509 (= c!1172930 (isEmpty!37300 (tail!12222 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun b!6420500 () Bool)

(assert (=> b!6420500 (= e!3895602 (Concat!25168 (h!71593 (exprs!6207 (h!71594 zl!343))) (generalisedConcat!1920 (t!378883 (exprs!6207 (h!71594 zl!343))))))))

(assert (=> d!2012997 e!3895601))

(declare-fun res!2638761 () Bool)

(assert (=> d!2012997 (=> (not res!2638761) (not e!3895601))))

(assert (=> d!2012997 (= res!2638761 (validRegex!8059 lt!2376887))))

(assert (=> d!2012997 (= lt!2376887 e!3895603)))

(declare-fun c!1172932 () Bool)

(assert (=> d!2012997 (= c!1172932 e!3895604)))

(declare-fun res!2638762 () Bool)

(assert (=> d!2012997 (=> (not res!2638762) (not e!3895604))))

(assert (=> d!2012997 (= res!2638762 ((_ is Cons!65145) (exprs!6207 (h!71594 zl!343))))))

(assert (=> d!2012997 (forall!15512 (exprs!6207 (h!71594 zl!343)) lambda!354724)))

(assert (=> d!2012997 (= (generalisedConcat!1920 (exprs!6207 (h!71594 zl!343))) lt!2376887)))

(assert (= (and d!2012997 res!2638762) b!6420506))

(assert (= (and d!2012997 c!1172932) b!6420505))

(assert (= (and d!2012997 (not c!1172932)) b!6420508))

(assert (= (and b!6420508 c!1172929) b!6420500))

(assert (= (and b!6420508 (not c!1172929)) b!6420504))

(assert (= (and d!2012997 res!2638761) b!6420503))

(assert (= (and b!6420503 c!1172931) b!6420502))

(assert (= (and b!6420503 (not c!1172931)) b!6420509))

(assert (= (and b!6420509 c!1172930) b!6420501))

(assert (= (and b!6420509 (not c!1172930)) b!6420507))

(declare-fun m!7215088 () Bool)

(assert (=> b!6420509 m!7215088))

(assert (=> b!6420509 m!7215088))

(declare-fun m!7215090 () Bool)

(assert (=> b!6420509 m!7215090))

(declare-fun m!7215092 () Bool)

(assert (=> b!6420502 m!7215092))

(declare-fun m!7215094 () Bool)

(assert (=> b!6420501 m!7215094))

(declare-fun m!7215096 () Bool)

(assert (=> b!6420507 m!7215096))

(declare-fun m!7215098 () Bool)

(assert (=> d!2012997 m!7215098))

(declare-fun m!7215100 () Bool)

(assert (=> d!2012997 m!7215100))

(assert (=> b!6420506 m!7214818))

(declare-fun m!7215102 () Bool)

(assert (=> b!6420503 m!7215102))

(declare-fun m!7215104 () Bool)

(assert (=> b!6420500 m!7215104))

(assert (=> b!6420045 d!2012997))

(declare-fun d!2013005 () Bool)

(assert (=> d!2013005 (= (isEmpty!37300 (t!378883 (exprs!6207 (h!71594 zl!343)))) ((_ is Nil!65145) (t!378883 (exprs!6207 (h!71594 zl!343)))))))

(assert (=> b!6420037 d!2013005))

(declare-fun d!2013007 () Bool)

(declare-fun lt!2376890 () Regex!16323)

(assert (=> d!2013007 (validRegex!8059 lt!2376890)))

(assert (=> d!2013007 (= lt!2376890 (generalisedUnion!2167 (unfocusZipperList!1744 zl!343)))))

(assert (=> d!2013007 (= (unfocusZipper!2065 zl!343) lt!2376890)))

(declare-fun bs!1614288 () Bool)

(assert (= bs!1614288 d!2013007))

(declare-fun m!7215106 () Bool)

(assert (=> bs!1614288 m!7215106))

(assert (=> bs!1614288 m!7214764))

(assert (=> bs!1614288 m!7214764))

(assert (=> bs!1614288 m!7214766))

(assert (=> b!6420017 d!2013007))

(declare-fun d!2013009 () Bool)

(declare-fun choose!47703 ((InoxSet Context!11414) Int) (InoxSet Context!11414))

(assert (=> d!2013009 (= (flatMap!1828 lt!2376802 lambda!354682) (choose!47703 lt!2376802 lambda!354682))))

(declare-fun bs!1614289 () Bool)

(assert (= bs!1614289 d!2013009))

(declare-fun m!7215108 () Bool)

(assert (=> bs!1614289 m!7215108))

(assert (=> b!6420036 d!2013009))

(declare-fun b!6420531 () Bool)

(declare-fun e!3895621 () (InoxSet Context!11414))

(assert (=> b!6420531 (= e!3895621 ((as const (Array Context!11414 Bool)) false))))

(declare-fun e!3895620 () (InoxSet Context!11414))

(declare-fun call!552030 () (InoxSet Context!11414))

(declare-fun b!6420532 () Bool)

(assert (=> b!6420532 (= e!3895620 ((_ map or) call!552030 (derivationStepZipperUp!1497 (Context!11415 (t!378883 (exprs!6207 lt!2376821))) (h!71592 s!2326))))))

(declare-fun d!2013011 () Bool)

(declare-fun c!1172941 () Bool)

(declare-fun e!3895622 () Bool)

(assert (=> d!2013011 (= c!1172941 e!3895622)))

(declare-fun res!2638768 () Bool)

(assert (=> d!2013011 (=> (not res!2638768) (not e!3895622))))

(assert (=> d!2013011 (= res!2638768 ((_ is Cons!65145) (exprs!6207 lt!2376821)))))

(assert (=> d!2013011 (= (derivationStepZipperUp!1497 lt!2376821 (h!71592 s!2326)) e!3895620)))

(declare-fun b!6420533 () Bool)

(assert (=> b!6420533 (= e!3895622 (nullable!6316 (h!71593 (exprs!6207 lt!2376821))))))

(declare-fun bm!552025 () Bool)

(assert (=> bm!552025 (= call!552030 (derivationStepZipperDown!1571 (h!71593 (exprs!6207 lt!2376821)) (Context!11415 (t!378883 (exprs!6207 lt!2376821))) (h!71592 s!2326)))))

(declare-fun b!6420534 () Bool)

(assert (=> b!6420534 (= e!3895621 call!552030)))

(declare-fun b!6420535 () Bool)

(assert (=> b!6420535 (= e!3895620 e!3895621)))

(declare-fun c!1172942 () Bool)

(assert (=> b!6420535 (= c!1172942 ((_ is Cons!65145) (exprs!6207 lt!2376821)))))

(assert (= (and d!2013011 res!2638768) b!6420533))

(assert (= (and d!2013011 c!1172941) b!6420532))

(assert (= (and d!2013011 (not c!1172941)) b!6420535))

(assert (= (and b!6420535 c!1172942) b!6420534))

(assert (= (and b!6420535 (not c!1172942)) b!6420531))

(assert (= (or b!6420532 b!6420534) bm!552025))

(declare-fun m!7215136 () Bool)

(assert (=> b!6420532 m!7215136))

(declare-fun m!7215138 () Bool)

(assert (=> b!6420533 m!7215138))

(declare-fun m!7215140 () Bool)

(assert (=> bm!552025 m!7215140))

(assert (=> b!6420036 d!2013011))

(declare-fun d!2013021 () Bool)

(declare-fun lt!2376893 () Regex!16323)

(assert (=> d!2013021 (validRegex!8059 lt!2376893)))

(assert (=> d!2013021 (= lt!2376893 (generalisedUnion!2167 (unfocusZipperList!1744 (Cons!65146 lt!2376821 Nil!65146))))))

(assert (=> d!2013021 (= (unfocusZipper!2065 (Cons!65146 lt!2376821 Nil!65146)) lt!2376893)))

(declare-fun bs!1614291 () Bool)

(assert (= bs!1614291 d!2013021))

(declare-fun m!7215142 () Bool)

(assert (=> bs!1614291 m!7215142))

(declare-fun m!7215144 () Bool)

(assert (=> bs!1614291 m!7215144))

(assert (=> bs!1614291 m!7215144))

(declare-fun m!7215146 () Bool)

(assert (=> bs!1614291 m!7215146))

(assert (=> b!6420036 d!2013021))

(declare-fun d!2013023 () Bool)

(declare-fun dynLambda!25878 (Int Context!11414) (InoxSet Context!11414))

(assert (=> d!2013023 (= (flatMap!1828 lt!2376811 lambda!354682) (dynLambda!25878 lambda!354682 lt!2376821))))

(declare-fun lt!2376896 () Unit!158623)

(declare-fun choose!47704 ((InoxSet Context!11414) Context!11414 Int) Unit!158623)

(assert (=> d!2013023 (= lt!2376896 (choose!47704 lt!2376811 lt!2376821 lambda!354682))))

(assert (=> d!2013023 (= lt!2376811 (store ((as const (Array Context!11414 Bool)) false) lt!2376821 true))))

(assert (=> d!2013023 (= (lemmaFlatMapOnSingletonSet!1354 lt!2376811 lt!2376821 lambda!354682) lt!2376896)))

(declare-fun b_lambda!244053 () Bool)

(assert (=> (not b_lambda!244053) (not d!2013023)))

(declare-fun bs!1614292 () Bool)

(assert (= bs!1614292 d!2013023))

(assert (=> bs!1614292 m!7214778))

(declare-fun m!7215148 () Bool)

(assert (=> bs!1614292 m!7215148))

(declare-fun m!7215150 () Bool)

(assert (=> bs!1614292 m!7215150))

(assert (=> bs!1614292 m!7214784))

(assert (=> b!6420036 d!2013023))

(declare-fun d!2013025 () Bool)

(assert (=> d!2013025 (= (flatMap!1828 lt!2376802 lambda!354682) (dynLambda!25878 lambda!354682 lt!2376829))))

(declare-fun lt!2376897 () Unit!158623)

(assert (=> d!2013025 (= lt!2376897 (choose!47704 lt!2376802 lt!2376829 lambda!354682))))

(assert (=> d!2013025 (= lt!2376802 (store ((as const (Array Context!11414 Bool)) false) lt!2376829 true))))

(assert (=> d!2013025 (= (lemmaFlatMapOnSingletonSet!1354 lt!2376802 lt!2376829 lambda!354682) lt!2376897)))

(declare-fun b_lambda!244055 () Bool)

(assert (=> (not b_lambda!244055) (not d!2013025)))

(declare-fun bs!1614293 () Bool)

(assert (= bs!1614293 d!2013025))

(assert (=> bs!1614293 m!7214768))

(declare-fun m!7215152 () Bool)

(assert (=> bs!1614293 m!7215152))

(declare-fun m!7215154 () Bool)

(assert (=> bs!1614293 m!7215154))

(assert (=> bs!1614293 m!7214774))

(assert (=> b!6420036 d!2013025))

(declare-fun d!2013027 () Bool)

(assert (=> d!2013027 (= (flatMap!1828 lt!2376811 lambda!354682) (choose!47703 lt!2376811 lambda!354682))))

(declare-fun bs!1614294 () Bool)

(assert (= bs!1614294 d!2013027))

(declare-fun m!7215156 () Bool)

(assert (=> bs!1614294 m!7215156))

(assert (=> b!6420036 d!2013027))

(declare-fun b!6420554 () Bool)

(declare-fun e!3895638 () (InoxSet Context!11414))

(assert (=> b!6420554 (= e!3895638 ((as const (Array Context!11414 Bool)) false))))

(declare-fun b!6420555 () Bool)

(declare-fun e!3895637 () (InoxSet Context!11414))

(declare-fun call!552037 () (InoxSet Context!11414))

(assert (=> b!6420555 (= e!3895637 ((_ map or) call!552037 (derivationStepZipperUp!1497 (Context!11415 (t!378883 (exprs!6207 lt!2376829))) (h!71592 s!2326))))))

(declare-fun d!2013029 () Bool)

(declare-fun c!1172947 () Bool)

(declare-fun e!3895639 () Bool)

(assert (=> d!2013029 (= c!1172947 e!3895639)))

(declare-fun res!2638779 () Bool)

(assert (=> d!2013029 (=> (not res!2638779) (not e!3895639))))

(assert (=> d!2013029 (= res!2638779 ((_ is Cons!65145) (exprs!6207 lt!2376829)))))

(assert (=> d!2013029 (= (derivationStepZipperUp!1497 lt!2376829 (h!71592 s!2326)) e!3895637)))

(declare-fun b!6420556 () Bool)

(assert (=> b!6420556 (= e!3895639 (nullable!6316 (h!71593 (exprs!6207 lt!2376829))))))

(declare-fun bm!552032 () Bool)

(assert (=> bm!552032 (= call!552037 (derivationStepZipperDown!1571 (h!71593 (exprs!6207 lt!2376829)) (Context!11415 (t!378883 (exprs!6207 lt!2376829))) (h!71592 s!2326)))))

(declare-fun b!6420557 () Bool)

(assert (=> b!6420557 (= e!3895638 call!552037)))

(declare-fun b!6420558 () Bool)

(assert (=> b!6420558 (= e!3895637 e!3895638)))

(declare-fun c!1172948 () Bool)

(assert (=> b!6420558 (= c!1172948 ((_ is Cons!65145) (exprs!6207 lt!2376829)))))

(assert (= (and d!2013029 res!2638779) b!6420556))

(assert (= (and d!2013029 c!1172947) b!6420555))

(assert (= (and d!2013029 (not c!1172947)) b!6420558))

(assert (= (and b!6420558 c!1172948) b!6420557))

(assert (= (and b!6420558 (not c!1172948)) b!6420554))

(assert (= (or b!6420555 b!6420557) bm!552032))

(declare-fun m!7215158 () Bool)

(assert (=> b!6420555 m!7215158))

(declare-fun m!7215160 () Bool)

(assert (=> b!6420556 m!7215160))

(declare-fun m!7215162 () Bool)

(assert (=> bm!552032 m!7215162))

(assert (=> b!6420036 d!2013029))

(declare-fun bs!1614295 () Bool)

(declare-fun b!6420568 () Bool)

(assert (= bs!1614295 (and b!6420568 b!6420425)))

(declare-fun lambda!354725 () Int)

(assert (=> bs!1614295 (not (= lambda!354725 lambda!354715))))

(declare-fun bs!1614296 () Bool)

(assert (= bs!1614296 (and b!6420568 b!6420053)))

(assert (=> bs!1614296 (not (= lambda!354725 lambda!354684))))

(declare-fun bs!1614297 () Bool)

(assert (= bs!1614297 (and b!6420568 b!6420026)))

(assert (=> bs!1614297 (not (= lambda!354725 lambda!354681))))

(declare-fun bs!1614298 () Bool)

(assert (= bs!1614298 (and b!6420568 b!6420433)))

(assert (=> bs!1614298 (= (and (= (reg!16652 r!7292) (reg!16652 lt!2376834)) (= r!7292 lt!2376834)) (= lambda!354725 lambda!354714))))

(assert (=> bs!1614296 (not (= lambda!354725 lambda!354683))))

(assert (=> bs!1614297 (not (= lambda!354725 lambda!354680))))

(declare-fun bs!1614299 () Bool)

(assert (= bs!1614299 (and b!6420568 b!6420030)))

(assert (=> bs!1614299 (not (= lambda!354725 lambda!354685))))

(assert (=> b!6420568 true))

(assert (=> b!6420568 true))

(declare-fun bs!1614300 () Bool)

(declare-fun b!6420560 () Bool)

(assert (= bs!1614300 (and b!6420560 b!6420568)))

(declare-fun lambda!354726 () Int)

(assert (=> bs!1614300 (not (= lambda!354726 lambda!354725))))

(declare-fun bs!1614302 () Bool)

(assert (= bs!1614302 (and b!6420560 b!6420425)))

(assert (=> bs!1614302 (= (and (= (regOne!33158 r!7292) (regOne!33158 lt!2376834)) (= (regTwo!33158 r!7292) (regTwo!33158 lt!2376834))) (= lambda!354726 lambda!354715))))

(declare-fun bs!1614303 () Bool)

(assert (= bs!1614303 (and b!6420560 b!6420053)))

(assert (=> bs!1614303 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354726 lambda!354684))))

(declare-fun bs!1614304 () Bool)

(assert (= bs!1614304 (and b!6420560 b!6420026)))

(assert (=> bs!1614304 (= lambda!354726 lambda!354681)))

(declare-fun bs!1614305 () Bool)

(assert (= bs!1614305 (and b!6420560 b!6420433)))

(assert (=> bs!1614305 (not (= lambda!354726 lambda!354714))))

(assert (=> bs!1614303 (not (= lambda!354726 lambda!354683))))

(assert (=> bs!1614304 (not (= lambda!354726 lambda!354680))))

(declare-fun bs!1614306 () Bool)

(assert (= bs!1614306 (and b!6420560 b!6420030)))

(assert (=> bs!1614306 (not (= lambda!354726 lambda!354685))))

(assert (=> b!6420560 true))

(assert (=> b!6420560 true))

(declare-fun b!6420559 () Bool)

(declare-fun c!1172951 () Bool)

(assert (=> b!6420559 (= c!1172951 ((_ is ElementMatch!16323) r!7292))))

(declare-fun e!3895641 () Bool)

(declare-fun e!3895643 () Bool)

(assert (=> b!6420559 (= e!3895641 e!3895643)))

(declare-fun b!6420561 () Bool)

(assert (=> b!6420561 (= e!3895643 (= s!2326 (Cons!65144 (c!1172786 r!7292) Nil!65144)))))

(declare-fun b!6420562 () Bool)

(declare-fun e!3895645 () Bool)

(declare-fun e!3895642 () Bool)

(assert (=> b!6420562 (= e!3895645 e!3895642)))

(declare-fun res!2638781 () Bool)

(assert (=> b!6420562 (= res!2638781 (matchRSpec!3424 (regOne!33159 r!7292) s!2326))))

(assert (=> b!6420562 (=> res!2638781 e!3895642)))

(declare-fun call!552039 () Bool)

(declare-fun bm!552033 () Bool)

(declare-fun c!1172952 () Bool)

(assert (=> bm!552033 (= call!552039 (Exists!3393 (ite c!1172952 lambda!354725 lambda!354726)))))

(declare-fun b!6420563 () Bool)

(assert (=> b!6420563 (= e!3895642 (matchRSpec!3424 (regTwo!33159 r!7292) s!2326))))

(declare-fun b!6420564 () Bool)

(declare-fun e!3895640 () Bool)

(declare-fun call!552038 () Bool)

(assert (=> b!6420564 (= e!3895640 call!552038)))

(declare-fun b!6420565 () Bool)

(assert (=> b!6420565 (= e!3895640 e!3895641)))

(declare-fun res!2638780 () Bool)

(assert (=> b!6420565 (= res!2638780 (not ((_ is EmptyLang!16323) r!7292)))))

(assert (=> b!6420565 (=> (not res!2638780) (not e!3895641))))

(declare-fun b!6420566 () Bool)

(declare-fun c!1172949 () Bool)

(assert (=> b!6420566 (= c!1172949 ((_ is Union!16323) r!7292))))

(assert (=> b!6420566 (= e!3895643 e!3895645)))

(declare-fun d!2013031 () Bool)

(declare-fun c!1172950 () Bool)

(assert (=> d!2013031 (= c!1172950 ((_ is EmptyExpr!16323) r!7292))))

(assert (=> d!2013031 (= (matchRSpec!3424 r!7292 s!2326) e!3895640)))

(declare-fun e!3895646 () Bool)

(assert (=> b!6420560 (= e!3895646 call!552039)))

(declare-fun b!6420567 () Bool)

(assert (=> b!6420567 (= e!3895645 e!3895646)))

(assert (=> b!6420567 (= c!1172952 ((_ is Star!16323) r!7292))))

(declare-fun bm!552034 () Bool)

(assert (=> bm!552034 (= call!552038 (isEmpty!37302 s!2326))))

(declare-fun e!3895644 () Bool)

(assert (=> b!6420568 (= e!3895644 call!552039)))

(declare-fun b!6420569 () Bool)

(declare-fun res!2638782 () Bool)

(assert (=> b!6420569 (=> res!2638782 e!3895644)))

(assert (=> b!6420569 (= res!2638782 call!552038)))

(assert (=> b!6420569 (= e!3895646 e!3895644)))

(assert (= (and d!2013031 c!1172950) b!6420564))

(assert (= (and d!2013031 (not c!1172950)) b!6420565))

(assert (= (and b!6420565 res!2638780) b!6420559))

(assert (= (and b!6420559 c!1172951) b!6420561))

(assert (= (and b!6420559 (not c!1172951)) b!6420566))

(assert (= (and b!6420566 c!1172949) b!6420562))

(assert (= (and b!6420566 (not c!1172949)) b!6420567))

(assert (= (and b!6420562 (not res!2638781)) b!6420563))

(assert (= (and b!6420567 c!1172952) b!6420569))

(assert (= (and b!6420567 (not c!1172952)) b!6420560))

(assert (= (and b!6420569 (not res!2638782)) b!6420568))

(assert (= (or b!6420568 b!6420560) bm!552033))

(assert (= (or b!6420564 b!6420569) bm!552034))

(declare-fun m!7215178 () Bool)

(assert (=> b!6420562 m!7215178))

(declare-fun m!7215180 () Bool)

(assert (=> bm!552033 m!7215180))

(declare-fun m!7215182 () Bool)

(assert (=> b!6420563 m!7215182))

(assert (=> bm!552034 m!7214988))

(assert (=> b!6420016 d!2013031))

(declare-fun b!6420599 () Bool)

(declare-fun res!2638797 () Bool)

(declare-fun e!3895674 () Bool)

(assert (=> b!6420599 (=> res!2638797 e!3895674)))

(assert (=> b!6420599 (= res!2638797 (not (isEmpty!37302 (tail!12221 s!2326))))))

(declare-fun b!6420600 () Bool)

(assert (=> b!6420600 (= e!3895674 (not (= (head!13136 s!2326) (c!1172786 r!7292))))))

(declare-fun b!6420601 () Bool)

(declare-fun e!3895669 () Bool)

(assert (=> b!6420601 (= e!3895669 (= (head!13136 s!2326) (c!1172786 r!7292)))))

(declare-fun b!6420602 () Bool)

(declare-fun e!3895673 () Bool)

(assert (=> b!6420602 (= e!3895673 e!3895674)))

(declare-fun res!2638796 () Bool)

(assert (=> b!6420602 (=> res!2638796 e!3895674)))

(declare-fun call!552048 () Bool)

(assert (=> b!6420602 (= res!2638796 call!552048)))

(declare-fun d!2013039 () Bool)

(declare-fun e!3895668 () Bool)

(assert (=> d!2013039 e!3895668))

(declare-fun c!1172963 () Bool)

(assert (=> d!2013039 (= c!1172963 ((_ is EmptyExpr!16323) r!7292))))

(declare-fun lt!2376899 () Bool)

(declare-fun e!3895671 () Bool)

(assert (=> d!2013039 (= lt!2376899 e!3895671)))

(declare-fun c!1172961 () Bool)

(assert (=> d!2013039 (= c!1172961 (isEmpty!37302 s!2326))))

(assert (=> d!2013039 (validRegex!8059 r!7292)))

(assert (=> d!2013039 (= (matchR!8506 r!7292 s!2326) lt!2376899)))

(declare-fun bm!552043 () Bool)

(assert (=> bm!552043 (= call!552048 (isEmpty!37302 s!2326))))

(declare-fun b!6420603 () Bool)

(declare-fun res!2638801 () Bool)

(declare-fun e!3895672 () Bool)

(assert (=> b!6420603 (=> res!2638801 e!3895672)))

(assert (=> b!6420603 (= res!2638801 e!3895669)))

(declare-fun res!2638803 () Bool)

(assert (=> b!6420603 (=> (not res!2638803) (not e!3895669))))

(assert (=> b!6420603 (= res!2638803 lt!2376899)))

(declare-fun b!6420604 () Bool)

(assert (=> b!6420604 (= e!3895672 e!3895673)))

(declare-fun res!2638798 () Bool)

(assert (=> b!6420604 (=> (not res!2638798) (not e!3895673))))

(assert (=> b!6420604 (= res!2638798 (not lt!2376899))))

(declare-fun b!6420605 () Bool)

(assert (=> b!6420605 (= e!3895671 (nullable!6316 r!7292))))

(declare-fun b!6420606 () Bool)

(declare-fun res!2638800 () Bool)

(assert (=> b!6420606 (=> (not res!2638800) (not e!3895669))))

(assert (=> b!6420606 (= res!2638800 (isEmpty!37302 (tail!12221 s!2326)))))

(declare-fun b!6420607 () Bool)

(declare-fun res!2638799 () Bool)

(assert (=> b!6420607 (=> (not res!2638799) (not e!3895669))))

(assert (=> b!6420607 (= res!2638799 (not call!552048))))

(declare-fun b!6420608 () Bool)

(declare-fun e!3895670 () Bool)

(assert (=> b!6420608 (= e!3895668 e!3895670)))

(declare-fun c!1172962 () Bool)

(assert (=> b!6420608 (= c!1172962 ((_ is EmptyLang!16323) r!7292))))

(declare-fun b!6420609 () Bool)

(assert (=> b!6420609 (= e!3895671 (matchR!8506 (derivativeStep!5027 r!7292 (head!13136 s!2326)) (tail!12221 s!2326)))))

(declare-fun b!6420610 () Bool)

(assert (=> b!6420610 (= e!3895668 (= lt!2376899 call!552048))))

(declare-fun b!6420611 () Bool)

(declare-fun res!2638802 () Bool)

(assert (=> b!6420611 (=> res!2638802 e!3895672)))

(assert (=> b!6420611 (= res!2638802 (not ((_ is ElementMatch!16323) r!7292)))))

(assert (=> b!6420611 (= e!3895670 e!3895672)))

(declare-fun b!6420612 () Bool)

(assert (=> b!6420612 (= e!3895670 (not lt!2376899))))

(assert (= (and d!2013039 c!1172961) b!6420605))

(assert (= (and d!2013039 (not c!1172961)) b!6420609))

(assert (= (and d!2013039 c!1172963) b!6420610))

(assert (= (and d!2013039 (not c!1172963)) b!6420608))

(assert (= (and b!6420608 c!1172962) b!6420612))

(assert (= (and b!6420608 (not c!1172962)) b!6420611))

(assert (= (and b!6420611 (not res!2638802)) b!6420603))

(assert (= (and b!6420603 res!2638803) b!6420607))

(assert (= (and b!6420607 res!2638799) b!6420606))

(assert (= (and b!6420606 res!2638800) b!6420601))

(assert (= (and b!6420603 (not res!2638801)) b!6420604))

(assert (= (and b!6420604 res!2638798) b!6420602))

(assert (= (and b!6420602 (not res!2638796)) b!6420599))

(assert (= (and b!6420599 (not res!2638797)) b!6420600))

(assert (= (or b!6420610 b!6420602 b!6420607) bm!552043))

(declare-fun m!7215184 () Bool)

(assert (=> b!6420605 m!7215184))

(assert (=> b!6420606 m!7214984))

(assert (=> b!6420606 m!7214984))

(assert (=> b!6420606 m!7214986))

(assert (=> d!2013039 m!7214988))

(assert (=> d!2013039 m!7214822))

(assert (=> b!6420601 m!7214992))

(assert (=> b!6420600 m!7214992))

(assert (=> b!6420609 m!7214992))

(assert (=> b!6420609 m!7214992))

(declare-fun m!7215186 () Bool)

(assert (=> b!6420609 m!7215186))

(assert (=> b!6420609 m!7214984))

(assert (=> b!6420609 m!7215186))

(assert (=> b!6420609 m!7214984))

(declare-fun m!7215188 () Bool)

(assert (=> b!6420609 m!7215188))

(assert (=> b!6420599 m!7214984))

(assert (=> b!6420599 m!7214984))

(assert (=> b!6420599 m!7214986))

(assert (=> bm!552043 m!7214988))

(assert (=> b!6420016 d!2013039))

(declare-fun d!2013041 () Bool)

(assert (=> d!2013041 (= (matchR!8506 r!7292 s!2326) (matchRSpec!3424 r!7292 s!2326))))

(declare-fun lt!2376900 () Unit!158623)

(assert (=> d!2013041 (= lt!2376900 (choose!47702 r!7292 s!2326))))

(assert (=> d!2013041 (validRegex!8059 r!7292)))

(assert (=> d!2013041 (= (mainMatchTheorem!3424 r!7292 s!2326) lt!2376900)))

(declare-fun bs!1614312 () Bool)

(assert (= bs!1614312 d!2013041))

(assert (=> bs!1614312 m!7214806))

(assert (=> bs!1614312 m!7214804))

(declare-fun m!7215190 () Bool)

(assert (=> bs!1614312 m!7215190))

(assert (=> bs!1614312 m!7214822))

(assert (=> b!6420016 d!2013041))

(declare-fun d!2013043 () Bool)

(assert (=> d!2013043 (= (isEmpty!37301 (t!378884 zl!343)) ((_ is Nil!65146) (t!378884 zl!343)))))

(assert (=> b!6420039 d!2013043))

(declare-fun d!2013045 () Bool)

(declare-fun e!3895677 () Bool)

(assert (=> d!2013045 e!3895677))

(declare-fun res!2638806 () Bool)

(assert (=> d!2013045 (=> (not res!2638806) (not e!3895677))))

(declare-fun lt!2376903 () List!65270)

(declare-fun noDuplicate!2152 (List!65270) Bool)

(assert (=> d!2013045 (= res!2638806 (noDuplicate!2152 lt!2376903))))

(declare-fun choose!47706 ((InoxSet Context!11414)) List!65270)

(assert (=> d!2013045 (= lt!2376903 (choose!47706 z!1189))))

(assert (=> d!2013045 (= (toList!10107 z!1189) lt!2376903)))

(declare-fun b!6420615 () Bool)

(declare-fun content!12359 (List!65270) (InoxSet Context!11414))

(assert (=> b!6420615 (= e!3895677 (= (content!12359 lt!2376903) z!1189))))

(assert (= (and d!2013045 res!2638806) b!6420615))

(declare-fun m!7215198 () Bool)

(assert (=> d!2013045 m!7215198))

(declare-fun m!7215200 () Bool)

(assert (=> d!2013045 m!7215200))

(declare-fun m!7215202 () Bool)

(assert (=> b!6420615 m!7215202))

(assert (=> b!6420018 d!2013045))

(declare-fun bs!1614320 () Bool)

(declare-fun d!2013049 () Bool)

(assert (= bs!1614320 (and d!2013049 d!2012923)))

(declare-fun lambda!354729 () Int)

(assert (=> bs!1614320 (= lambda!354729 lambda!354688)))

(declare-fun bs!1614321 () Bool)

(assert (= bs!1614321 (and d!2013049 d!2012933)))

(assert (=> bs!1614321 (= lambda!354729 lambda!354697)))

(declare-fun bs!1614322 () Bool)

(assert (= bs!1614322 (and d!2013049 d!2012945)))

(assert (=> bs!1614322 (= lambda!354729 lambda!354703)))

(declare-fun bs!1614323 () Bool)

(assert (= bs!1614323 (and d!2013049 d!2012997)))

(assert (=> bs!1614323 (= lambda!354729 lambda!354724)))

(assert (=> d!2013049 (= (inv!84054 setElem!43822) (forall!15512 (exprs!6207 setElem!43822) lambda!354729))))

(declare-fun bs!1614324 () Bool)

(assert (= bs!1614324 d!2013049))

(declare-fun m!7215206 () Bool)

(assert (=> bs!1614324 m!7215206))

(assert (=> setNonEmpty!43822 d!2013049))

(declare-fun d!2013053 () Bool)

(declare-fun isEmpty!37303 (Option!16214) Bool)

(assert (=> d!2013053 (= (isDefined!12917 lt!2376818) (not (isEmpty!37303 lt!2376818)))))

(declare-fun bs!1614325 () Bool)

(assert (= bs!1614325 d!2013053))

(declare-fun m!7215208 () Bool)

(assert (=> bs!1614325 m!7215208))

(assert (=> b!6420053 d!2013053))

(declare-fun d!2013055 () Bool)

(declare-fun choose!47707 (Int) Bool)

(assert (=> d!2013055 (= (Exists!3393 lambda!354683) (choose!47707 lambda!354683))))

(declare-fun bs!1614326 () Bool)

(assert (= bs!1614326 d!2013055))

(declare-fun m!7215210 () Bool)

(assert (=> bs!1614326 m!7215210))

(assert (=> b!6420053 d!2013055))

(declare-fun d!2013057 () Bool)

(assert (=> d!2013057 (= (get!22568 lt!2376818) (v!52386 lt!2376818))))

(assert (=> b!6420053 d!2013057))

(declare-fun bs!1614335 () Bool)

(declare-fun d!2013059 () Bool)

(assert (= bs!1614335 (and d!2013059 b!6420568)))

(declare-fun lambda!354735 () Int)

(assert (=> bs!1614335 (not (= lambda!354735 lambda!354725))))

(declare-fun bs!1614336 () Bool)

(assert (= bs!1614336 (and d!2013059 b!6420425)))

(assert (=> bs!1614336 (not (= lambda!354735 lambda!354715))))

(declare-fun bs!1614337 () Bool)

(assert (= bs!1614337 (and d!2013059 b!6420560)))

(assert (=> bs!1614337 (not (= lambda!354735 lambda!354726))))

(declare-fun bs!1614338 () Bool)

(assert (= bs!1614338 (and d!2013059 b!6420053)))

(assert (=> bs!1614338 (not (= lambda!354735 lambda!354684))))

(declare-fun bs!1614339 () Bool)

(assert (= bs!1614339 (and d!2013059 b!6420026)))

(assert (=> bs!1614339 (not (= lambda!354735 lambda!354681))))

(declare-fun bs!1614340 () Bool)

(assert (= bs!1614340 (and d!2013059 b!6420433)))

(assert (=> bs!1614340 (not (= lambda!354735 lambda!354714))))

(assert (=> bs!1614338 (= lambda!354735 lambda!354683)))

(assert (=> bs!1614339 (= (= lt!2376810 (regOne!33158 r!7292)) (= lambda!354735 lambda!354680))))

(declare-fun bs!1614341 () Bool)

(assert (= bs!1614341 (and d!2013059 b!6420030)))

(assert (=> bs!1614341 (= (and (= s!2326 (_1!36605 lt!2376824)) (= lt!2376810 (reg!16652 (regOne!33158 r!7292))) (= (regTwo!33158 r!7292) lt!2376810)) (= lambda!354735 lambda!354685))))

(assert (=> d!2013059 true))

(assert (=> d!2013059 true))

(assert (=> d!2013059 true))

(assert (=> d!2013059 (= (isDefined!12917 (findConcatSeparation!2628 lt!2376810 (regTwo!33158 r!7292) Nil!65144 s!2326 s!2326)) (Exists!3393 lambda!354735))))

(declare-fun lt!2376909 () Unit!158623)

(declare-fun choose!47708 (Regex!16323 Regex!16323 List!65268) Unit!158623)

(assert (=> d!2013059 (= lt!2376909 (choose!47708 lt!2376810 (regTwo!33158 r!7292) s!2326))))

(assert (=> d!2013059 (validRegex!8059 lt!2376810)))

(assert (=> d!2013059 (= (lemmaFindConcatSeparationEquivalentToExists!2392 lt!2376810 (regTwo!33158 r!7292) s!2326) lt!2376909)))

(declare-fun bs!1614342 () Bool)

(assert (= bs!1614342 d!2013059))

(declare-fun m!7215216 () Bool)

(assert (=> bs!1614342 m!7215216))

(declare-fun m!7215218 () Bool)

(assert (=> bs!1614342 m!7215218))

(assert (=> bs!1614342 m!7214732))

(declare-fun m!7215220 () Bool)

(assert (=> bs!1614342 m!7215220))

(declare-fun m!7215222 () Bool)

(assert (=> bs!1614342 m!7215222))

(assert (=> bs!1614342 m!7214732))

(assert (=> b!6420053 d!2013059))

(declare-fun d!2013063 () Bool)

(declare-fun e!3895686 () Bool)

(assert (=> d!2013063 e!3895686))

(declare-fun res!2638820 () Bool)

(assert (=> d!2013063 (=> (not res!2638820) (not e!3895686))))

(declare-fun lt!2376912 () List!65268)

(declare-fun content!12360 (List!65268) (InoxSet C!32916))

(assert (=> d!2013063 (= res!2638820 (= (content!12360 lt!2376912) ((_ map or) (content!12360 (_1!36605 lt!2376824)) (content!12360 (_2!36605 lt!2376824)))))))

(declare-fun e!3895687 () List!65268)

(assert (=> d!2013063 (= lt!2376912 e!3895687)))

(declare-fun c!1172966 () Bool)

(assert (=> d!2013063 (= c!1172966 ((_ is Nil!65144) (_1!36605 lt!2376824)))))

(assert (=> d!2013063 (= (++!14391 (_1!36605 lt!2376824) (_2!36605 lt!2376824)) lt!2376912)))

(declare-fun b!6420632 () Bool)

(assert (=> b!6420632 (= e!3895687 (_2!36605 lt!2376824))))

(declare-fun b!6420633 () Bool)

(assert (=> b!6420633 (= e!3895687 (Cons!65144 (h!71592 (_1!36605 lt!2376824)) (++!14391 (t!378882 (_1!36605 lt!2376824)) (_2!36605 lt!2376824))))))

(declare-fun b!6420634 () Bool)

(declare-fun res!2638819 () Bool)

(assert (=> b!6420634 (=> (not res!2638819) (not e!3895686))))

(declare-fun size!40381 (List!65268) Int)

(assert (=> b!6420634 (= res!2638819 (= (size!40381 lt!2376912) (+ (size!40381 (_1!36605 lt!2376824)) (size!40381 (_2!36605 lt!2376824)))))))

(declare-fun b!6420635 () Bool)

(assert (=> b!6420635 (= e!3895686 (or (not (= (_2!36605 lt!2376824) Nil!65144)) (= lt!2376912 (_1!36605 lt!2376824))))))

(assert (= (and d!2013063 c!1172966) b!6420632))

(assert (= (and d!2013063 (not c!1172966)) b!6420633))

(assert (= (and d!2013063 res!2638820) b!6420634))

(assert (= (and b!6420634 res!2638819) b!6420635))

(declare-fun m!7215224 () Bool)

(assert (=> d!2013063 m!7215224))

(declare-fun m!7215226 () Bool)

(assert (=> d!2013063 m!7215226))

(declare-fun m!7215228 () Bool)

(assert (=> d!2013063 m!7215228))

(declare-fun m!7215230 () Bool)

(assert (=> b!6420633 m!7215230))

(declare-fun m!7215232 () Bool)

(assert (=> b!6420634 m!7215232))

(declare-fun m!7215234 () Bool)

(assert (=> b!6420634 m!7215234))

(declare-fun m!7215236 () Bool)

(assert (=> b!6420634 m!7215236))

(assert (=> b!6420053 d!2013063))

(declare-fun d!2013065 () Bool)

(assert (=> d!2013065 (= (Exists!3393 lambda!354684) (choose!47707 lambda!354684))))

(declare-fun bs!1614343 () Bool)

(assert (= bs!1614343 d!2013065))

(declare-fun m!7215238 () Bool)

(assert (=> bs!1614343 m!7215238))

(assert (=> b!6420053 d!2013065))

(declare-fun bs!1614345 () Bool)

(declare-fun d!2013067 () Bool)

(assert (= bs!1614345 (and d!2013067 b!6420425)))

(declare-fun lambda!354740 () Int)

(assert (=> bs!1614345 (not (= lambda!354740 lambda!354715))))

(declare-fun bs!1614346 () Bool)

(assert (= bs!1614346 (and d!2013067 b!6420560)))

(assert (=> bs!1614346 (not (= lambda!354740 lambda!354726))))

(declare-fun bs!1614347 () Bool)

(assert (= bs!1614347 (and d!2013067 b!6420568)))

(assert (=> bs!1614347 (not (= lambda!354740 lambda!354725))))

(declare-fun bs!1614348 () Bool)

(assert (= bs!1614348 (and d!2013067 d!2013059)))

(assert (=> bs!1614348 (= lambda!354740 lambda!354735)))

(declare-fun bs!1614349 () Bool)

(assert (= bs!1614349 (and d!2013067 b!6420053)))

(assert (=> bs!1614349 (not (= lambda!354740 lambda!354684))))

(declare-fun bs!1614350 () Bool)

(assert (= bs!1614350 (and d!2013067 b!6420026)))

(assert (=> bs!1614350 (not (= lambda!354740 lambda!354681))))

(declare-fun bs!1614351 () Bool)

(assert (= bs!1614351 (and d!2013067 b!6420433)))

(assert (=> bs!1614351 (not (= lambda!354740 lambda!354714))))

(assert (=> bs!1614349 (= lambda!354740 lambda!354683)))

(assert (=> bs!1614350 (= (= lt!2376810 (regOne!33158 r!7292)) (= lambda!354740 lambda!354680))))

(declare-fun bs!1614352 () Bool)

(assert (= bs!1614352 (and d!2013067 b!6420030)))

(assert (=> bs!1614352 (= (and (= s!2326 (_1!36605 lt!2376824)) (= lt!2376810 (reg!16652 (regOne!33158 r!7292))) (= (regTwo!33158 r!7292) lt!2376810)) (= lambda!354740 lambda!354685))))

(assert (=> d!2013067 true))

(assert (=> d!2013067 true))

(assert (=> d!2013067 true))

(declare-fun lambda!354742 () Int)

(assert (=> bs!1614345 (= (and (= lt!2376810 (regOne!33158 lt!2376834)) (= (regTwo!33158 r!7292) (regTwo!33158 lt!2376834))) (= lambda!354742 lambda!354715))))

(assert (=> bs!1614346 (= (= lt!2376810 (regOne!33158 r!7292)) (= lambda!354742 lambda!354726))))

(declare-fun bs!1614359 () Bool)

(assert (= bs!1614359 d!2013067))

(assert (=> bs!1614359 (not (= lambda!354742 lambda!354740))))

(assert (=> bs!1614347 (not (= lambda!354742 lambda!354725))))

(assert (=> bs!1614348 (not (= lambda!354742 lambda!354735))))

(assert (=> bs!1614349 (= lambda!354742 lambda!354684)))

(assert (=> bs!1614350 (= (= lt!2376810 (regOne!33158 r!7292)) (= lambda!354742 lambda!354681))))

(assert (=> bs!1614351 (not (= lambda!354742 lambda!354714))))

(assert (=> bs!1614349 (not (= lambda!354742 lambda!354683))))

(assert (=> bs!1614350 (not (= lambda!354742 lambda!354680))))

(assert (=> bs!1614352 (not (= lambda!354742 lambda!354685))))

(assert (=> d!2013067 true))

(assert (=> d!2013067 true))

(assert (=> d!2013067 true))

(assert (=> d!2013067 (= (Exists!3393 lambda!354740) (Exists!3393 lambda!354742))))

(declare-fun lt!2376924 () Unit!158623)

(declare-fun choose!47709 (Regex!16323 Regex!16323 List!65268) Unit!158623)

(assert (=> d!2013067 (= lt!2376924 (choose!47709 lt!2376810 (regTwo!33158 r!7292) s!2326))))

(assert (=> d!2013067 (validRegex!8059 lt!2376810)))

(assert (=> d!2013067 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1930 lt!2376810 (regTwo!33158 r!7292) s!2326) lt!2376924)))

(declare-fun m!7215300 () Bool)

(assert (=> bs!1614359 m!7215300))

(declare-fun m!7215302 () Bool)

(assert (=> bs!1614359 m!7215302))

(declare-fun m!7215304 () Bool)

(assert (=> bs!1614359 m!7215304))

(assert (=> bs!1614359 m!7215222))

(assert (=> b!6420053 d!2013067))

(declare-fun b!6420729 () Bool)

(declare-fun e!3895739 () Bool)

(assert (=> b!6420729 (= e!3895739 (matchR!8506 (regTwo!33158 r!7292) s!2326))))

(declare-fun b!6420730 () Bool)

(declare-fun e!3895741 () Bool)

(declare-fun lt!2376938 () Option!16214)

(assert (=> b!6420730 (= e!3895741 (not (isDefined!12917 lt!2376938)))))

(declare-fun b!6420731 () Bool)

(declare-fun res!2638877 () Bool)

(declare-fun e!3895737 () Bool)

(assert (=> b!6420731 (=> (not res!2638877) (not e!3895737))))

(assert (=> b!6420731 (= res!2638877 (matchR!8506 lt!2376810 (_1!36605 (get!22568 lt!2376938))))))

(declare-fun b!6420732 () Bool)

(declare-fun lt!2376940 () Unit!158623)

(declare-fun lt!2376939 () Unit!158623)

(assert (=> b!6420732 (= lt!2376940 lt!2376939)))

(assert (=> b!6420732 (= (++!14391 (++!14391 Nil!65144 (Cons!65144 (h!71592 s!2326) Nil!65144)) (t!378882 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2485 (List!65268 C!32916 List!65268 List!65268) Unit!158623)

(assert (=> b!6420732 (= lt!2376939 (lemmaMoveElementToOtherListKeepsConcatEq!2485 Nil!65144 (h!71592 s!2326) (t!378882 s!2326) s!2326))))

(declare-fun e!3895738 () Option!16214)

(assert (=> b!6420732 (= e!3895738 (findConcatSeparation!2628 lt!2376810 (regTwo!33158 r!7292) (++!14391 Nil!65144 (Cons!65144 (h!71592 s!2326) Nil!65144)) (t!378882 s!2326) s!2326))))

(declare-fun b!6420733 () Bool)

(declare-fun res!2638876 () Bool)

(assert (=> b!6420733 (=> (not res!2638876) (not e!3895737))))

(assert (=> b!6420733 (= res!2638876 (matchR!8506 (regTwo!33158 r!7292) (_2!36605 (get!22568 lt!2376938))))))

(declare-fun b!6420734 () Bool)

(assert (=> b!6420734 (= e!3895738 None!16213)))

(declare-fun b!6420735 () Bool)

(declare-fun e!3895740 () Option!16214)

(assert (=> b!6420735 (= e!3895740 (Some!16213 (tuple2!66605 Nil!65144 s!2326)))))

(declare-fun b!6420736 () Bool)

(assert (=> b!6420736 (= e!3895740 e!3895738)))

(declare-fun c!1172986 () Bool)

(assert (=> b!6420736 (= c!1172986 ((_ is Nil!65144) s!2326))))

(declare-fun b!6420737 () Bool)

(assert (=> b!6420737 (= e!3895737 (= (++!14391 (_1!36605 (get!22568 lt!2376938)) (_2!36605 (get!22568 lt!2376938))) s!2326))))

(declare-fun d!2013085 () Bool)

(assert (=> d!2013085 e!3895741))

(declare-fun res!2638879 () Bool)

(assert (=> d!2013085 (=> res!2638879 e!3895741)))

(assert (=> d!2013085 (= res!2638879 e!3895737)))

(declare-fun res!2638878 () Bool)

(assert (=> d!2013085 (=> (not res!2638878) (not e!3895737))))

(assert (=> d!2013085 (= res!2638878 (isDefined!12917 lt!2376938))))

(assert (=> d!2013085 (= lt!2376938 e!3895740)))

(declare-fun c!1172987 () Bool)

(assert (=> d!2013085 (= c!1172987 e!3895739)))

(declare-fun res!2638880 () Bool)

(assert (=> d!2013085 (=> (not res!2638880) (not e!3895739))))

(assert (=> d!2013085 (= res!2638880 (matchR!8506 lt!2376810 Nil!65144))))

(assert (=> d!2013085 (validRegex!8059 lt!2376810)))

(assert (=> d!2013085 (= (findConcatSeparation!2628 lt!2376810 (regTwo!33158 r!7292) Nil!65144 s!2326 s!2326) lt!2376938)))

(assert (= (and d!2013085 res!2638880) b!6420729))

(assert (= (and d!2013085 c!1172987) b!6420735))

(assert (= (and d!2013085 (not c!1172987)) b!6420736))

(assert (= (and b!6420736 c!1172986) b!6420734))

(assert (= (and b!6420736 (not c!1172986)) b!6420732))

(assert (= (and d!2013085 res!2638878) b!6420731))

(assert (= (and b!6420731 res!2638877) b!6420733))

(assert (= (and b!6420733 res!2638876) b!6420737))

(assert (= (and d!2013085 (not res!2638879)) b!6420730))

(declare-fun m!7215328 () Bool)

(assert (=> b!6420732 m!7215328))

(assert (=> b!6420732 m!7215328))

(declare-fun m!7215330 () Bool)

(assert (=> b!6420732 m!7215330))

(declare-fun m!7215332 () Bool)

(assert (=> b!6420732 m!7215332))

(assert (=> b!6420732 m!7215328))

(declare-fun m!7215334 () Bool)

(assert (=> b!6420732 m!7215334))

(declare-fun m!7215336 () Bool)

(assert (=> b!6420733 m!7215336))

(declare-fun m!7215338 () Bool)

(assert (=> b!6420733 m!7215338))

(declare-fun m!7215340 () Bool)

(assert (=> d!2013085 m!7215340))

(declare-fun m!7215342 () Bool)

(assert (=> d!2013085 m!7215342))

(assert (=> d!2013085 m!7215222))

(assert (=> b!6420731 m!7215336))

(declare-fun m!7215344 () Bool)

(assert (=> b!6420731 m!7215344))

(assert (=> b!6420737 m!7215336))

(declare-fun m!7215346 () Bool)

(assert (=> b!6420737 m!7215346))

(assert (=> b!6420730 m!7215340))

(declare-fun m!7215348 () Bool)

(assert (=> b!6420729 m!7215348))

(assert (=> b!6420053 d!2013085))

(declare-fun e!3895744 () Bool)

(declare-fun d!2013093 () Bool)

(assert (=> d!2013093 (= (matchZipper!2335 ((_ map or) lt!2376837 lt!2376832) (t!378882 s!2326)) e!3895744)))

(declare-fun res!2638883 () Bool)

(assert (=> d!2013093 (=> res!2638883 e!3895744)))

(assert (=> d!2013093 (= res!2638883 (matchZipper!2335 lt!2376837 (t!378882 s!2326)))))

(declare-fun lt!2376944 () Unit!158623)

(declare-fun choose!47711 ((InoxSet Context!11414) (InoxSet Context!11414) List!65268) Unit!158623)

(assert (=> d!2013093 (= lt!2376944 (choose!47711 lt!2376837 lt!2376832 (t!378882 s!2326)))))

(assert (=> d!2013093 (= (lemmaZipperConcatMatchesSameAsBothZippers!1154 lt!2376837 lt!2376832 (t!378882 s!2326)) lt!2376944)))

(declare-fun b!6420740 () Bool)

(assert (=> b!6420740 (= e!3895744 (matchZipper!2335 lt!2376832 (t!378882 s!2326)))))

(assert (= (and d!2013093 (not res!2638883)) b!6420740))

(assert (=> d!2013093 m!7214760))

(assert (=> d!2013093 m!7214758))

(declare-fun m!7215350 () Bool)

(assert (=> d!2013093 m!7215350))

(assert (=> b!6420740 m!7214788))

(assert (=> b!6420051 d!2013093))

(declare-fun d!2013095 () Bool)

(declare-fun c!1172996 () Bool)

(assert (=> d!2013095 (= c!1172996 (isEmpty!37302 (t!378882 s!2326)))))

(declare-fun e!3895759 () Bool)

(assert (=> d!2013095 (= (matchZipper!2335 lt!2376837 (t!378882 s!2326)) e!3895759)))

(declare-fun b!6420765 () Bool)

(declare-fun nullableZipper!2088 ((InoxSet Context!11414)) Bool)

(assert (=> b!6420765 (= e!3895759 (nullableZipper!2088 lt!2376837))))

(declare-fun b!6420766 () Bool)

(assert (=> b!6420766 (= e!3895759 (matchZipper!2335 (derivationStepZipper!2289 lt!2376837 (head!13136 (t!378882 s!2326))) (tail!12221 (t!378882 s!2326))))))

(assert (= (and d!2013095 c!1172996) b!6420765))

(assert (= (and d!2013095 (not c!1172996)) b!6420766))

(declare-fun m!7215382 () Bool)

(assert (=> d!2013095 m!7215382))

(declare-fun m!7215384 () Bool)

(assert (=> b!6420765 m!7215384))

(declare-fun m!7215386 () Bool)

(assert (=> b!6420766 m!7215386))

(assert (=> b!6420766 m!7215386))

(declare-fun m!7215388 () Bool)

(assert (=> b!6420766 m!7215388))

(declare-fun m!7215390 () Bool)

(assert (=> b!6420766 m!7215390))

(assert (=> b!6420766 m!7215388))

(assert (=> b!6420766 m!7215390))

(declare-fun m!7215392 () Bool)

(assert (=> b!6420766 m!7215392))

(assert (=> b!6420051 d!2013095))

(declare-fun d!2013105 () Bool)

(declare-fun c!1172997 () Bool)

(assert (=> d!2013105 (= c!1172997 (isEmpty!37302 (t!378882 s!2326)))))

(declare-fun e!3895760 () Bool)

(assert (=> d!2013105 (= (matchZipper!2335 ((_ map or) lt!2376837 lt!2376832) (t!378882 s!2326)) e!3895760)))

(declare-fun b!6420767 () Bool)

(assert (=> b!6420767 (= e!3895760 (nullableZipper!2088 ((_ map or) lt!2376837 lt!2376832)))))

(declare-fun b!6420768 () Bool)

(assert (=> b!6420768 (= e!3895760 (matchZipper!2335 (derivationStepZipper!2289 ((_ map or) lt!2376837 lt!2376832) (head!13136 (t!378882 s!2326))) (tail!12221 (t!378882 s!2326))))))

(assert (= (and d!2013105 c!1172997) b!6420767))

(assert (= (and d!2013105 (not c!1172997)) b!6420768))

(assert (=> d!2013105 m!7215382))

(declare-fun m!7215394 () Bool)

(assert (=> b!6420767 m!7215394))

(assert (=> b!6420768 m!7215386))

(assert (=> b!6420768 m!7215386))

(declare-fun m!7215396 () Bool)

(assert (=> b!6420768 m!7215396))

(assert (=> b!6420768 m!7215390))

(assert (=> b!6420768 m!7215396))

(assert (=> b!6420768 m!7215390))

(declare-fun m!7215398 () Bool)

(assert (=> b!6420768 m!7215398))

(assert (=> b!6420051 d!2013105))

(declare-fun b!6420769 () Bool)

(declare-fun res!2638893 () Bool)

(declare-fun e!3895767 () Bool)

(assert (=> b!6420769 (=> res!2638893 e!3895767)))

(assert (=> b!6420769 (= res!2638893 (not (isEmpty!37302 (tail!12221 (_1!36605 lt!2376824)))))))

(declare-fun b!6420770 () Bool)

(assert (=> b!6420770 (= e!3895767 (not (= (head!13136 (_1!36605 lt!2376824)) (c!1172786 lt!2376810))))))

(declare-fun b!6420771 () Bool)

(declare-fun e!3895762 () Bool)

(assert (=> b!6420771 (= e!3895762 (= (head!13136 (_1!36605 lt!2376824)) (c!1172786 lt!2376810)))))

(declare-fun b!6420772 () Bool)

(declare-fun e!3895766 () Bool)

(assert (=> b!6420772 (= e!3895766 e!3895767)))

(declare-fun res!2638892 () Bool)

(assert (=> b!6420772 (=> res!2638892 e!3895767)))

(declare-fun call!552052 () Bool)

(assert (=> b!6420772 (= res!2638892 call!552052)))

(declare-fun d!2013107 () Bool)

(declare-fun e!3895761 () Bool)

(assert (=> d!2013107 e!3895761))

(declare-fun c!1173000 () Bool)

(assert (=> d!2013107 (= c!1173000 ((_ is EmptyExpr!16323) lt!2376810))))

(declare-fun lt!2376948 () Bool)

(declare-fun e!3895764 () Bool)

(assert (=> d!2013107 (= lt!2376948 e!3895764)))

(declare-fun c!1172998 () Bool)

(assert (=> d!2013107 (= c!1172998 (isEmpty!37302 (_1!36605 lt!2376824)))))

(assert (=> d!2013107 (validRegex!8059 lt!2376810)))

(assert (=> d!2013107 (= (matchR!8506 lt!2376810 (_1!36605 lt!2376824)) lt!2376948)))

(declare-fun bm!552047 () Bool)

(assert (=> bm!552047 (= call!552052 (isEmpty!37302 (_1!36605 lt!2376824)))))

(declare-fun b!6420773 () Bool)

(declare-fun res!2638897 () Bool)

(declare-fun e!3895765 () Bool)

(assert (=> b!6420773 (=> res!2638897 e!3895765)))

(assert (=> b!6420773 (= res!2638897 e!3895762)))

(declare-fun res!2638899 () Bool)

(assert (=> b!6420773 (=> (not res!2638899) (not e!3895762))))

(assert (=> b!6420773 (= res!2638899 lt!2376948)))

(declare-fun b!6420774 () Bool)

(assert (=> b!6420774 (= e!3895765 e!3895766)))

(declare-fun res!2638894 () Bool)

(assert (=> b!6420774 (=> (not res!2638894) (not e!3895766))))

(assert (=> b!6420774 (= res!2638894 (not lt!2376948))))

(declare-fun b!6420775 () Bool)

(assert (=> b!6420775 (= e!3895764 (nullable!6316 lt!2376810))))

(declare-fun b!6420776 () Bool)

(declare-fun res!2638896 () Bool)

(assert (=> b!6420776 (=> (not res!2638896) (not e!3895762))))

(assert (=> b!6420776 (= res!2638896 (isEmpty!37302 (tail!12221 (_1!36605 lt!2376824))))))

(declare-fun b!6420777 () Bool)

(declare-fun res!2638895 () Bool)

(assert (=> b!6420777 (=> (not res!2638895) (not e!3895762))))

(assert (=> b!6420777 (= res!2638895 (not call!552052))))

(declare-fun b!6420778 () Bool)

(declare-fun e!3895763 () Bool)

(assert (=> b!6420778 (= e!3895761 e!3895763)))

(declare-fun c!1172999 () Bool)

(assert (=> b!6420778 (= c!1172999 ((_ is EmptyLang!16323) lt!2376810))))

(declare-fun b!6420779 () Bool)

(assert (=> b!6420779 (= e!3895764 (matchR!8506 (derivativeStep!5027 lt!2376810 (head!13136 (_1!36605 lt!2376824))) (tail!12221 (_1!36605 lt!2376824))))))

(declare-fun b!6420780 () Bool)

(assert (=> b!6420780 (= e!3895761 (= lt!2376948 call!552052))))

(declare-fun b!6420781 () Bool)

(declare-fun res!2638898 () Bool)

(assert (=> b!6420781 (=> res!2638898 e!3895765)))

(assert (=> b!6420781 (= res!2638898 (not ((_ is ElementMatch!16323) lt!2376810)))))

(assert (=> b!6420781 (= e!3895763 e!3895765)))

(declare-fun b!6420782 () Bool)

(assert (=> b!6420782 (= e!3895763 (not lt!2376948))))

(assert (= (and d!2013107 c!1172998) b!6420775))

(assert (= (and d!2013107 (not c!1172998)) b!6420779))

(assert (= (and d!2013107 c!1173000) b!6420780))

(assert (= (and d!2013107 (not c!1173000)) b!6420778))

(assert (= (and b!6420778 c!1172999) b!6420782))

(assert (= (and b!6420778 (not c!1172999)) b!6420781))

(assert (= (and b!6420781 (not res!2638898)) b!6420773))

(assert (= (and b!6420773 res!2638899) b!6420777))

(assert (= (and b!6420777 res!2638895) b!6420776))

(assert (= (and b!6420776 res!2638896) b!6420771))

(assert (= (and b!6420773 (not res!2638897)) b!6420774))

(assert (= (and b!6420774 res!2638894) b!6420772))

(assert (= (and b!6420772 (not res!2638892)) b!6420769))

(assert (= (and b!6420769 (not res!2638893)) b!6420770))

(assert (= (or b!6420780 b!6420772 b!6420777) bm!552047))

(declare-fun m!7215400 () Bool)

(assert (=> b!6420775 m!7215400))

(declare-fun m!7215402 () Bool)

(assert (=> b!6420776 m!7215402))

(assert (=> b!6420776 m!7215402))

(declare-fun m!7215404 () Bool)

(assert (=> b!6420776 m!7215404))

(assert (=> d!2013107 m!7214816))

(assert (=> d!2013107 m!7215222))

(declare-fun m!7215406 () Bool)

(assert (=> b!6420771 m!7215406))

(assert (=> b!6420770 m!7215406))

(assert (=> b!6420779 m!7215406))

(assert (=> b!6420779 m!7215406))

(declare-fun m!7215408 () Bool)

(assert (=> b!6420779 m!7215408))

(assert (=> b!6420779 m!7215402))

(assert (=> b!6420779 m!7215408))

(assert (=> b!6420779 m!7215402))

(declare-fun m!7215410 () Bool)

(assert (=> b!6420779 m!7215410))

(assert (=> b!6420769 m!7215402))

(assert (=> b!6420769 m!7215402))

(assert (=> b!6420769 m!7215404))

(assert (=> bm!552047 m!7214816))

(assert (=> b!6420055 d!2013107))

(declare-fun d!2013109 () Bool)

(declare-fun lt!2376949 () Regex!16323)

(assert (=> d!2013109 (validRegex!8059 lt!2376949)))

(assert (=> d!2013109 (= lt!2376949 (generalisedUnion!2167 (unfocusZipperList!1744 (Cons!65146 lt!2376831 Nil!65146))))))

(assert (=> d!2013109 (= (unfocusZipper!2065 (Cons!65146 lt!2376831 Nil!65146)) lt!2376949)))

(declare-fun bs!1614391 () Bool)

(assert (= bs!1614391 d!2013109))

(declare-fun m!7215412 () Bool)

(assert (=> bs!1614391 m!7215412))

(declare-fun m!7215414 () Bool)

(assert (=> bs!1614391 m!7215414))

(assert (=> bs!1614391 m!7215414))

(declare-fun m!7215416 () Bool)

(assert (=> bs!1614391 m!7215416))

(assert (=> b!6420033 d!2013109))

(declare-fun b!6420828 () Bool)

(declare-fun e!3895796 () (InoxSet Context!11414))

(declare-fun e!3895792 () (InoxSet Context!11414))

(assert (=> b!6420828 (= e!3895796 e!3895792)))

(declare-fun c!1173018 () Bool)

(assert (=> b!6420828 (= c!1173018 ((_ is Union!16323) (reg!16652 (regOne!33158 r!7292))))))

(declare-fun d!2013111 () Bool)

(declare-fun c!1173016 () Bool)

(assert (=> d!2013111 (= c!1173016 (and ((_ is ElementMatch!16323) (reg!16652 (regOne!33158 r!7292))) (= (c!1172786 (reg!16652 (regOne!33158 r!7292))) (h!71592 s!2326))))))

(assert (=> d!2013111 (= (derivationStepZipperDown!1571 (reg!16652 (regOne!33158 r!7292)) lt!2376829 (h!71592 s!2326)) e!3895796)))

(declare-fun b!6420829 () Bool)

(declare-fun e!3895793 () (InoxSet Context!11414))

(declare-fun call!552066 () (InoxSet Context!11414))

(declare-fun call!552070 () (InoxSet Context!11414))

(assert (=> b!6420829 (= e!3895793 ((_ map or) call!552066 call!552070))))

(declare-fun bm!552061 () Bool)

(declare-fun call!552071 () (InoxSet Context!11414))

(assert (=> bm!552061 (= call!552070 call!552071)))

(declare-fun b!6420830 () Bool)

(declare-fun e!3895794 () (InoxSet Context!11414))

(assert (=> b!6420830 (= e!3895794 ((as const (Array Context!11414 Bool)) false))))

(declare-fun b!6420831 () Bool)

(declare-fun c!1173019 () Bool)

(assert (=> b!6420831 (= c!1173019 ((_ is Star!16323) (reg!16652 (regOne!33158 r!7292))))))

(declare-fun e!3895795 () (InoxSet Context!11414))

(assert (=> b!6420831 (= e!3895795 e!3895794)))

(declare-fun b!6420832 () Bool)

(assert (=> b!6420832 (= e!3895796 (store ((as const (Array Context!11414 Bool)) false) lt!2376829 true))))

(declare-fun b!6420833 () Bool)

(declare-fun c!1173020 () Bool)

(declare-fun e!3895797 () Bool)

(assert (=> b!6420833 (= c!1173020 e!3895797)))

(declare-fun res!2638915 () Bool)

(assert (=> b!6420833 (=> (not res!2638915) (not e!3895797))))

(assert (=> b!6420833 (= res!2638915 ((_ is Concat!25168) (reg!16652 (regOne!33158 r!7292))))))

(assert (=> b!6420833 (= e!3895792 e!3895793)))

(declare-fun bm!552062 () Bool)

(declare-fun call!552069 () (InoxSet Context!11414))

(assert (=> bm!552062 (= call!552069 call!552070)))

(declare-fun b!6420834 () Bool)

(assert (=> b!6420834 (= e!3895797 (nullable!6316 (regOne!33158 (reg!16652 (regOne!33158 r!7292)))))))

(declare-fun call!552067 () List!65269)

(declare-fun bm!552063 () Bool)

(declare-fun c!1173017 () Bool)

(assert (=> bm!552063 (= call!552071 (derivationStepZipperDown!1571 (ite c!1173018 (regOne!33159 (reg!16652 (regOne!33158 r!7292))) (ite c!1173020 (regTwo!33158 (reg!16652 (regOne!33158 r!7292))) (ite c!1173017 (regOne!33158 (reg!16652 (regOne!33158 r!7292))) (reg!16652 (reg!16652 (regOne!33158 r!7292)))))) (ite (or c!1173018 c!1173020) lt!2376829 (Context!11415 call!552067)) (h!71592 s!2326)))))

(declare-fun b!6420835 () Bool)

(assert (=> b!6420835 (= e!3895794 call!552069)))

(declare-fun b!6420836 () Bool)

(assert (=> b!6420836 (= e!3895793 e!3895795)))

(assert (=> b!6420836 (= c!1173017 ((_ is Concat!25168) (reg!16652 (regOne!33158 r!7292))))))

(declare-fun call!552068 () List!65269)

(declare-fun bm!552064 () Bool)

(assert (=> bm!552064 (= call!552066 (derivationStepZipperDown!1571 (ite c!1173018 (regTwo!33159 (reg!16652 (regOne!33158 r!7292))) (regOne!33158 (reg!16652 (regOne!33158 r!7292)))) (ite c!1173018 lt!2376829 (Context!11415 call!552068)) (h!71592 s!2326)))))

(declare-fun b!6420837 () Bool)

(assert (=> b!6420837 (= e!3895792 ((_ map or) call!552071 call!552066))))

(declare-fun bm!552065 () Bool)

(declare-fun $colon$colon!2184 (List!65269 Regex!16323) List!65269)

(assert (=> bm!552065 (= call!552068 ($colon$colon!2184 (exprs!6207 lt!2376829) (ite (or c!1173020 c!1173017) (regTwo!33158 (reg!16652 (regOne!33158 r!7292))) (reg!16652 (regOne!33158 r!7292)))))))

(declare-fun bm!552066 () Bool)

(assert (=> bm!552066 (= call!552067 call!552068)))

(declare-fun b!6420838 () Bool)

(assert (=> b!6420838 (= e!3895795 call!552069)))

(assert (= (and d!2013111 c!1173016) b!6420832))

(assert (= (and d!2013111 (not c!1173016)) b!6420828))

(assert (= (and b!6420828 c!1173018) b!6420837))

(assert (= (and b!6420828 (not c!1173018)) b!6420833))

(assert (= (and b!6420833 res!2638915) b!6420834))

(assert (= (and b!6420833 c!1173020) b!6420829))

(assert (= (and b!6420833 (not c!1173020)) b!6420836))

(assert (= (and b!6420836 c!1173017) b!6420838))

(assert (= (and b!6420836 (not c!1173017)) b!6420831))

(assert (= (and b!6420831 c!1173019) b!6420835))

(assert (= (and b!6420831 (not c!1173019)) b!6420830))

(assert (= (or b!6420838 b!6420835) bm!552066))

(assert (= (or b!6420838 b!6420835) bm!552062))

(assert (= (or b!6420829 bm!552066) bm!552065))

(assert (= (or b!6420829 bm!552062) bm!552061))

(assert (= (or b!6420837 b!6420829) bm!552064))

(assert (= (or b!6420837 bm!552061) bm!552063))

(declare-fun m!7215456 () Bool)

(assert (=> bm!552065 m!7215456))

(declare-fun m!7215458 () Bool)

(assert (=> bm!552063 m!7215458))

(declare-fun m!7215460 () Bool)

(assert (=> bm!552064 m!7215460))

(assert (=> b!6420832 m!7214774))

(declare-fun m!7215462 () Bool)

(assert (=> b!6420834 m!7215462))

(assert (=> b!6420054 d!2013111))

(declare-fun d!2013127 () Bool)

(declare-fun nullableFct!2262 (Regex!16323) Bool)

(assert (=> d!2013127 (= (nullable!6316 (regOne!33158 (regOne!33158 r!7292))) (nullableFct!2262 (regOne!33158 (regOne!33158 r!7292))))))

(declare-fun bs!1614432 () Bool)

(assert (= bs!1614432 d!2013127))

(declare-fun m!7215464 () Bool)

(assert (=> bs!1614432 m!7215464))

(assert (=> b!6420034 d!2013127))

(declare-fun d!2013129 () Bool)

(assert (=> d!2013129 (= (isEmpty!37302 (_1!36605 lt!2376824)) ((_ is Nil!65144) (_1!36605 lt!2376824)))))

(assert (=> b!6420047 d!2013129))

(declare-fun d!2013131 () Bool)

(declare-fun c!1173021 () Bool)

(assert (=> d!2013131 (= c!1173021 (isEmpty!37302 (t!378882 s!2326)))))

(declare-fun e!3895798 () Bool)

(assert (=> d!2013131 (= (matchZipper!2335 lt!2376832 (t!378882 s!2326)) e!3895798)))

(declare-fun b!6420839 () Bool)

(assert (=> b!6420839 (= e!3895798 (nullableZipper!2088 lt!2376832))))

(declare-fun b!6420840 () Bool)

(assert (=> b!6420840 (= e!3895798 (matchZipper!2335 (derivationStepZipper!2289 lt!2376832 (head!13136 (t!378882 s!2326))) (tail!12221 (t!378882 s!2326))))))

(assert (= (and d!2013131 c!1173021) b!6420839))

(assert (= (and d!2013131 (not c!1173021)) b!6420840))

(assert (=> d!2013131 m!7215382))

(declare-fun m!7215466 () Bool)

(assert (=> b!6420839 m!7215466))

(assert (=> b!6420840 m!7215386))

(assert (=> b!6420840 m!7215386))

(declare-fun m!7215468 () Bool)

(assert (=> b!6420840 m!7215468))

(assert (=> b!6420840 m!7215390))

(assert (=> b!6420840 m!7215468))

(assert (=> b!6420840 m!7215390))

(declare-fun m!7215470 () Bool)

(assert (=> b!6420840 m!7215470))

(assert (=> b!6420027 d!2013131))

(declare-fun b!6420841 () Bool)

(declare-fun e!3895801 () Bool)

(assert (=> b!6420841 (= e!3895801 (matchR!8506 (regTwo!33158 r!7292) s!2326))))

(declare-fun b!6420842 () Bool)

(declare-fun e!3895803 () Bool)

(declare-fun lt!2376957 () Option!16214)

(assert (=> b!6420842 (= e!3895803 (not (isDefined!12917 lt!2376957)))))

(declare-fun b!6420843 () Bool)

(declare-fun res!2638917 () Bool)

(declare-fun e!3895799 () Bool)

(assert (=> b!6420843 (=> (not res!2638917) (not e!3895799))))

(assert (=> b!6420843 (= res!2638917 (matchR!8506 (regOne!33158 r!7292) (_1!36605 (get!22568 lt!2376957))))))

(declare-fun b!6420844 () Bool)

(declare-fun lt!2376959 () Unit!158623)

(declare-fun lt!2376958 () Unit!158623)

(assert (=> b!6420844 (= lt!2376959 lt!2376958)))

(assert (=> b!6420844 (= (++!14391 (++!14391 Nil!65144 (Cons!65144 (h!71592 s!2326) Nil!65144)) (t!378882 s!2326)) s!2326)))

(assert (=> b!6420844 (= lt!2376958 (lemmaMoveElementToOtherListKeepsConcatEq!2485 Nil!65144 (h!71592 s!2326) (t!378882 s!2326) s!2326))))

(declare-fun e!3895800 () Option!16214)

(assert (=> b!6420844 (= e!3895800 (findConcatSeparation!2628 (regOne!33158 r!7292) (regTwo!33158 r!7292) (++!14391 Nil!65144 (Cons!65144 (h!71592 s!2326) Nil!65144)) (t!378882 s!2326) s!2326))))

(declare-fun b!6420845 () Bool)

(declare-fun res!2638916 () Bool)

(assert (=> b!6420845 (=> (not res!2638916) (not e!3895799))))

(assert (=> b!6420845 (= res!2638916 (matchR!8506 (regTwo!33158 r!7292) (_2!36605 (get!22568 lt!2376957))))))

(declare-fun b!6420846 () Bool)

(assert (=> b!6420846 (= e!3895800 None!16213)))

(declare-fun b!6420847 () Bool)

(declare-fun e!3895802 () Option!16214)

(assert (=> b!6420847 (= e!3895802 (Some!16213 (tuple2!66605 Nil!65144 s!2326)))))

(declare-fun b!6420848 () Bool)

(assert (=> b!6420848 (= e!3895802 e!3895800)))

(declare-fun c!1173022 () Bool)

(assert (=> b!6420848 (= c!1173022 ((_ is Nil!65144) s!2326))))

(declare-fun b!6420849 () Bool)

(assert (=> b!6420849 (= e!3895799 (= (++!14391 (_1!36605 (get!22568 lt!2376957)) (_2!36605 (get!22568 lt!2376957))) s!2326))))

(declare-fun d!2013133 () Bool)

(assert (=> d!2013133 e!3895803))

(declare-fun res!2638919 () Bool)

(assert (=> d!2013133 (=> res!2638919 e!3895803)))

(assert (=> d!2013133 (= res!2638919 e!3895799)))

(declare-fun res!2638918 () Bool)

(assert (=> d!2013133 (=> (not res!2638918) (not e!3895799))))

(assert (=> d!2013133 (= res!2638918 (isDefined!12917 lt!2376957))))

(assert (=> d!2013133 (= lt!2376957 e!3895802)))

(declare-fun c!1173023 () Bool)

(assert (=> d!2013133 (= c!1173023 e!3895801)))

(declare-fun res!2638920 () Bool)

(assert (=> d!2013133 (=> (not res!2638920) (not e!3895801))))

(assert (=> d!2013133 (= res!2638920 (matchR!8506 (regOne!33158 r!7292) Nil!65144))))

(assert (=> d!2013133 (validRegex!8059 (regOne!33158 r!7292))))

(assert (=> d!2013133 (= (findConcatSeparation!2628 (regOne!33158 r!7292) (regTwo!33158 r!7292) Nil!65144 s!2326 s!2326) lt!2376957)))

(assert (= (and d!2013133 res!2638920) b!6420841))

(assert (= (and d!2013133 c!1173023) b!6420847))

(assert (= (and d!2013133 (not c!1173023)) b!6420848))

(assert (= (and b!6420848 c!1173022) b!6420846))

(assert (= (and b!6420848 (not c!1173022)) b!6420844))

(assert (= (and d!2013133 res!2638918) b!6420843))

(assert (= (and b!6420843 res!2638917) b!6420845))

(assert (= (and b!6420845 res!2638916) b!6420849))

(assert (= (and d!2013133 (not res!2638919)) b!6420842))

(assert (=> b!6420844 m!7215328))

(assert (=> b!6420844 m!7215328))

(assert (=> b!6420844 m!7215330))

(assert (=> b!6420844 m!7215332))

(assert (=> b!6420844 m!7215328))

(declare-fun m!7215472 () Bool)

(assert (=> b!6420844 m!7215472))

(declare-fun m!7215474 () Bool)

(assert (=> b!6420845 m!7215474))

(declare-fun m!7215476 () Bool)

(assert (=> b!6420845 m!7215476))

(declare-fun m!7215478 () Bool)

(assert (=> d!2013133 m!7215478))

(declare-fun m!7215480 () Bool)

(assert (=> d!2013133 m!7215480))

(declare-fun m!7215482 () Bool)

(assert (=> d!2013133 m!7215482))

(assert (=> b!6420843 m!7215474))

(declare-fun m!7215484 () Bool)

(assert (=> b!6420843 m!7215484))

(assert (=> b!6420849 m!7215474))

(declare-fun m!7215486 () Bool)

(assert (=> b!6420849 m!7215486))

(assert (=> b!6420842 m!7215478))

(assert (=> b!6420841 m!7215348))

(assert (=> b!6420026 d!2013133))

(declare-fun d!2013135 () Bool)

(assert (=> d!2013135 (= (Exists!3393 lambda!354680) (choose!47707 lambda!354680))))

(declare-fun bs!1614434 () Bool)

(assert (= bs!1614434 d!2013135))

(declare-fun m!7215488 () Bool)

(assert (=> bs!1614434 m!7215488))

(assert (=> b!6420026 d!2013135))

(declare-fun d!2013137 () Bool)

(assert (=> d!2013137 (= (Exists!3393 lambda!354681) (choose!47707 lambda!354681))))

(declare-fun bs!1614435 () Bool)

(assert (= bs!1614435 d!2013137))

(declare-fun m!7215490 () Bool)

(assert (=> bs!1614435 m!7215490))

(assert (=> b!6420026 d!2013137))

(declare-fun bs!1614436 () Bool)

(declare-fun d!2013139 () Bool)

(assert (= bs!1614436 (and d!2013139 b!6420425)))

(declare-fun lambda!354755 () Int)

(assert (=> bs!1614436 (not (= lambda!354755 lambda!354715))))

(declare-fun bs!1614438 () Bool)

(assert (= bs!1614438 (and d!2013139 b!6420560)))

(assert (=> bs!1614438 (not (= lambda!354755 lambda!354726))))

(declare-fun bs!1614439 () Bool)

(assert (= bs!1614439 (and d!2013139 d!2013067)))

(assert (=> bs!1614439 (not (= lambda!354755 lambda!354742))))

(assert (=> bs!1614439 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354755 lambda!354740))))

(declare-fun bs!1614440 () Bool)

(assert (= bs!1614440 (and d!2013139 b!6420568)))

(assert (=> bs!1614440 (not (= lambda!354755 lambda!354725))))

(declare-fun bs!1614441 () Bool)

(assert (= bs!1614441 (and d!2013139 d!2013059)))

(assert (=> bs!1614441 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354755 lambda!354735))))

(declare-fun bs!1614442 () Bool)

(assert (= bs!1614442 (and d!2013139 b!6420053)))

(assert (=> bs!1614442 (not (= lambda!354755 lambda!354684))))

(declare-fun bs!1614443 () Bool)

(assert (= bs!1614443 (and d!2013139 b!6420026)))

(assert (=> bs!1614443 (not (= lambda!354755 lambda!354681))))

(declare-fun bs!1614444 () Bool)

(assert (= bs!1614444 (and d!2013139 b!6420433)))

(assert (=> bs!1614444 (not (= lambda!354755 lambda!354714))))

(assert (=> bs!1614442 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354755 lambda!354683))))

(assert (=> bs!1614443 (= lambda!354755 lambda!354680)))

(declare-fun bs!1614445 () Bool)

(assert (= bs!1614445 (and d!2013139 b!6420030)))

(assert (=> bs!1614445 (= (and (= s!2326 (_1!36605 lt!2376824)) (= (regOne!33158 r!7292) (reg!16652 (regOne!33158 r!7292))) (= (regTwo!33158 r!7292) lt!2376810)) (= lambda!354755 lambda!354685))))

(assert (=> d!2013139 true))

(assert (=> d!2013139 true))

(assert (=> d!2013139 true))

(assert (=> d!2013139 (= (isDefined!12917 (findConcatSeparation!2628 (regOne!33158 r!7292) (regTwo!33158 r!7292) Nil!65144 s!2326 s!2326)) (Exists!3393 lambda!354755))))

(declare-fun lt!2376960 () Unit!158623)

(assert (=> d!2013139 (= lt!2376960 (choose!47708 (regOne!33158 r!7292) (regTwo!33158 r!7292) s!2326))))

(assert (=> d!2013139 (validRegex!8059 (regOne!33158 r!7292))))

(assert (=> d!2013139 (= (lemmaFindConcatSeparationEquivalentToExists!2392 (regOne!33158 r!7292) (regTwo!33158 r!7292) s!2326) lt!2376960)))

(declare-fun bs!1614446 () Bool)

(assert (= bs!1614446 d!2013139))

(declare-fun m!7215500 () Bool)

(assert (=> bs!1614446 m!7215500))

(declare-fun m!7215502 () Bool)

(assert (=> bs!1614446 m!7215502))

(assert (=> bs!1614446 m!7214716))

(assert (=> bs!1614446 m!7214718))

(assert (=> bs!1614446 m!7215482))

(assert (=> bs!1614446 m!7214716))

(assert (=> b!6420026 d!2013139))

(declare-fun bs!1614447 () Bool)

(declare-fun d!2013143 () Bool)

(assert (= bs!1614447 (and d!2013143 d!2013139)))

(declare-fun lambda!354756 () Int)

(assert (=> bs!1614447 (= lambda!354756 lambda!354755)))

(declare-fun bs!1614448 () Bool)

(assert (= bs!1614448 (and d!2013143 b!6420425)))

(assert (=> bs!1614448 (not (= lambda!354756 lambda!354715))))

(declare-fun bs!1614449 () Bool)

(assert (= bs!1614449 (and d!2013143 b!6420560)))

(assert (=> bs!1614449 (not (= lambda!354756 lambda!354726))))

(declare-fun bs!1614450 () Bool)

(assert (= bs!1614450 (and d!2013143 d!2013067)))

(assert (=> bs!1614450 (not (= lambda!354756 lambda!354742))))

(assert (=> bs!1614450 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354756 lambda!354740))))

(declare-fun bs!1614451 () Bool)

(assert (= bs!1614451 (and d!2013143 b!6420568)))

(assert (=> bs!1614451 (not (= lambda!354756 lambda!354725))))

(declare-fun bs!1614452 () Bool)

(assert (= bs!1614452 (and d!2013143 d!2013059)))

(assert (=> bs!1614452 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354756 lambda!354735))))

(declare-fun bs!1614453 () Bool)

(assert (= bs!1614453 (and d!2013143 b!6420053)))

(assert (=> bs!1614453 (not (= lambda!354756 lambda!354684))))

(declare-fun bs!1614454 () Bool)

(assert (= bs!1614454 (and d!2013143 b!6420026)))

(assert (=> bs!1614454 (not (= lambda!354756 lambda!354681))))

(declare-fun bs!1614455 () Bool)

(assert (= bs!1614455 (and d!2013143 b!6420433)))

(assert (=> bs!1614455 (not (= lambda!354756 lambda!354714))))

(assert (=> bs!1614453 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354756 lambda!354683))))

(assert (=> bs!1614454 (= lambda!354756 lambda!354680)))

(declare-fun bs!1614456 () Bool)

(assert (= bs!1614456 (and d!2013143 b!6420030)))

(assert (=> bs!1614456 (= (and (= s!2326 (_1!36605 lt!2376824)) (= (regOne!33158 r!7292) (reg!16652 (regOne!33158 r!7292))) (= (regTwo!33158 r!7292) lt!2376810)) (= lambda!354756 lambda!354685))))

(assert (=> d!2013143 true))

(assert (=> d!2013143 true))

(assert (=> d!2013143 true))

(declare-fun lambda!354757 () Int)

(assert (=> bs!1614447 (not (= lambda!354757 lambda!354755))))

(declare-fun bs!1614457 () Bool)

(assert (= bs!1614457 d!2013143))

(assert (=> bs!1614457 (not (= lambda!354757 lambda!354756))))

(assert (=> bs!1614448 (= (and (= (regOne!33158 r!7292) (regOne!33158 lt!2376834)) (= (regTwo!33158 r!7292) (regTwo!33158 lt!2376834))) (= lambda!354757 lambda!354715))))

(assert (=> bs!1614449 (= lambda!354757 lambda!354726)))

(assert (=> bs!1614450 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354757 lambda!354742))))

(assert (=> bs!1614450 (not (= lambda!354757 lambda!354740))))

(assert (=> bs!1614451 (not (= lambda!354757 lambda!354725))))

(assert (=> bs!1614452 (not (= lambda!354757 lambda!354735))))

(assert (=> bs!1614453 (= (= (regOne!33158 r!7292) lt!2376810) (= lambda!354757 lambda!354684))))

(assert (=> bs!1614454 (= lambda!354757 lambda!354681)))

(assert (=> bs!1614455 (not (= lambda!354757 lambda!354714))))

(assert (=> bs!1614453 (not (= lambda!354757 lambda!354683))))

(assert (=> bs!1614454 (not (= lambda!354757 lambda!354680))))

(assert (=> bs!1614456 (not (= lambda!354757 lambda!354685))))

(assert (=> d!2013143 true))

(assert (=> d!2013143 true))

(assert (=> d!2013143 true))

(assert (=> d!2013143 (= (Exists!3393 lambda!354756) (Exists!3393 lambda!354757))))

(declare-fun lt!2376961 () Unit!158623)

(assert (=> d!2013143 (= lt!2376961 (choose!47709 (regOne!33158 r!7292) (regTwo!33158 r!7292) s!2326))))

(assert (=> d!2013143 (validRegex!8059 (regOne!33158 r!7292))))

(assert (=> d!2013143 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1930 (regOne!33158 r!7292) (regTwo!33158 r!7292) s!2326) lt!2376961)))

(declare-fun m!7215508 () Bool)

(assert (=> bs!1614457 m!7215508))

(declare-fun m!7215510 () Bool)

(assert (=> bs!1614457 m!7215510))

(declare-fun m!7215512 () Bool)

(assert (=> bs!1614457 m!7215512))

(assert (=> bs!1614457 m!7215482))

(assert (=> b!6420026 d!2013143))

(declare-fun d!2013153 () Bool)

(assert (=> d!2013153 (= (isDefined!12917 (findConcatSeparation!2628 (regOne!33158 r!7292) (regTwo!33158 r!7292) Nil!65144 s!2326 s!2326)) (not (isEmpty!37303 (findConcatSeparation!2628 (regOne!33158 r!7292) (regTwo!33158 r!7292) Nil!65144 s!2326 s!2326))))))

(declare-fun bs!1614462 () Bool)

(assert (= bs!1614462 d!2013153))

(assert (=> bs!1614462 m!7214716))

(declare-fun m!7215514 () Bool)

(assert (=> bs!1614462 m!7215514))

(assert (=> b!6420026 d!2013153))

(declare-fun d!2013155 () Bool)

(declare-fun c!1173024 () Bool)

(assert (=> d!2013155 (= c!1173024 (isEmpty!37302 s!2326))))

(declare-fun e!3895827 () Bool)

(assert (=> d!2013155 (= (matchZipper!2335 lt!2376815 s!2326) e!3895827)))

(declare-fun b!6420904 () Bool)

(assert (=> b!6420904 (= e!3895827 (nullableZipper!2088 lt!2376815))))

(declare-fun b!6420905 () Bool)

(assert (=> b!6420905 (= e!3895827 (matchZipper!2335 (derivationStepZipper!2289 lt!2376815 (head!13136 s!2326)) (tail!12221 s!2326)))))

(assert (= (and d!2013155 c!1173024) b!6420904))

(assert (= (and d!2013155 (not c!1173024)) b!6420905))

(assert (=> d!2013155 m!7214988))

(declare-fun m!7215516 () Bool)

(assert (=> b!6420904 m!7215516))

(assert (=> b!6420905 m!7214992))

(assert (=> b!6420905 m!7214992))

(declare-fun m!7215518 () Bool)

(assert (=> b!6420905 m!7215518))

(assert (=> b!6420905 m!7214984))

(assert (=> b!6420905 m!7215518))

(assert (=> b!6420905 m!7214984))

(declare-fun m!7215520 () Bool)

(assert (=> b!6420905 m!7215520))

(assert (=> b!6420029 d!2013155))

(declare-fun d!2013157 () Bool)

(declare-fun c!1173025 () Bool)

(assert (=> d!2013157 (= c!1173025 (isEmpty!37302 (t!378882 s!2326)))))

(declare-fun e!3895828 () Bool)

(assert (=> d!2013157 (= (matchZipper!2335 lt!2376822 (t!378882 s!2326)) e!3895828)))

(declare-fun b!6420906 () Bool)

(assert (=> b!6420906 (= e!3895828 (nullableZipper!2088 lt!2376822))))

(declare-fun b!6420907 () Bool)

(assert (=> b!6420907 (= e!3895828 (matchZipper!2335 (derivationStepZipper!2289 lt!2376822 (head!13136 (t!378882 s!2326))) (tail!12221 (t!378882 s!2326))))))

(assert (= (and d!2013157 c!1173025) b!6420906))

(assert (= (and d!2013157 (not c!1173025)) b!6420907))

(assert (=> d!2013157 m!7215382))

(declare-fun m!7215522 () Bool)

(assert (=> b!6420906 m!7215522))

(assert (=> b!6420907 m!7215386))

(assert (=> b!6420907 m!7215386))

(declare-fun m!7215524 () Bool)

(assert (=> b!6420907 m!7215524))

(assert (=> b!6420907 m!7215390))

(assert (=> b!6420907 m!7215524))

(assert (=> b!6420907 m!7215390))

(declare-fun m!7215526 () Bool)

(assert (=> b!6420907 m!7215526))

(assert (=> b!6420029 d!2013157))

(declare-fun b!6420908 () Bool)

(declare-fun e!3895830 () (InoxSet Context!11414))

(assert (=> b!6420908 (= e!3895830 ((as const (Array Context!11414 Bool)) false))))

(declare-fun b!6420909 () Bool)

(declare-fun call!552072 () (InoxSet Context!11414))

(declare-fun e!3895829 () (InoxSet Context!11414))

(assert (=> b!6420909 (= e!3895829 ((_ map or) call!552072 (derivationStepZipperUp!1497 (Context!11415 (t!378883 (exprs!6207 lt!2376828))) (h!71592 s!2326))))))

(declare-fun d!2013159 () Bool)

(declare-fun c!1173026 () Bool)

(declare-fun e!3895831 () Bool)

(assert (=> d!2013159 (= c!1173026 e!3895831)))

(declare-fun res!2638921 () Bool)

(assert (=> d!2013159 (=> (not res!2638921) (not e!3895831))))

(assert (=> d!2013159 (= res!2638921 ((_ is Cons!65145) (exprs!6207 lt!2376828)))))

(assert (=> d!2013159 (= (derivationStepZipperUp!1497 lt!2376828 (h!71592 s!2326)) e!3895829)))

(declare-fun b!6420910 () Bool)

(assert (=> b!6420910 (= e!3895831 (nullable!6316 (h!71593 (exprs!6207 lt!2376828))))))

(declare-fun bm!552067 () Bool)

(assert (=> bm!552067 (= call!552072 (derivationStepZipperDown!1571 (h!71593 (exprs!6207 lt!2376828)) (Context!11415 (t!378883 (exprs!6207 lt!2376828))) (h!71592 s!2326)))))

(declare-fun b!6420911 () Bool)

(assert (=> b!6420911 (= e!3895830 call!552072)))

(declare-fun b!6420912 () Bool)

(assert (=> b!6420912 (= e!3895829 e!3895830)))

(declare-fun c!1173027 () Bool)

(assert (=> b!6420912 (= c!1173027 ((_ is Cons!65145) (exprs!6207 lt!2376828)))))

(assert (= (and d!2013159 res!2638921) b!6420910))

(assert (= (and d!2013159 c!1173026) b!6420909))

(assert (= (and d!2013159 (not c!1173026)) b!6420912))

(assert (= (and b!6420912 c!1173027) b!6420911))

(assert (= (and b!6420912 (not c!1173027)) b!6420908))

(assert (= (or b!6420909 b!6420911) bm!552067))

(declare-fun m!7215528 () Bool)

(assert (=> b!6420909 m!7215528))

(declare-fun m!7215530 () Bool)

(assert (=> b!6420910 m!7215530))

(declare-fun m!7215532 () Bool)

(assert (=> bm!552067 m!7215532))

(assert (=> b!6420050 d!2013159))

(declare-fun d!2013161 () Bool)

(assert (=> d!2013161 (= (nullable!6316 (h!71593 (exprs!6207 (h!71594 zl!343)))) (nullableFct!2262 (h!71593 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun bs!1614463 () Bool)

(assert (= bs!1614463 d!2013161))

(declare-fun m!7215534 () Bool)

(assert (=> bs!1614463 m!7215534))

(assert (=> b!6420050 d!2013161))

(declare-fun b!6420913 () Bool)

(declare-fun e!3895833 () (InoxSet Context!11414))

(assert (=> b!6420913 (= e!3895833 ((as const (Array Context!11414 Bool)) false))))

(declare-fun call!552073 () (InoxSet Context!11414))

(declare-fun e!3895832 () (InoxSet Context!11414))

(declare-fun b!6420914 () Bool)

(assert (=> b!6420914 (= e!3895832 ((_ map or) call!552073 (derivationStepZipperUp!1497 (Context!11415 (t!378883 (exprs!6207 (Context!11415 (Cons!65145 (h!71593 (exprs!6207 (h!71594 zl!343))) (t!378883 (exprs!6207 (h!71594 zl!343)))))))) (h!71592 s!2326))))))

(declare-fun d!2013163 () Bool)

(declare-fun c!1173028 () Bool)

(declare-fun e!3895834 () Bool)

(assert (=> d!2013163 (= c!1173028 e!3895834)))

(declare-fun res!2638922 () Bool)

(assert (=> d!2013163 (=> (not res!2638922) (not e!3895834))))

(assert (=> d!2013163 (= res!2638922 ((_ is Cons!65145) (exprs!6207 (Context!11415 (Cons!65145 (h!71593 (exprs!6207 (h!71594 zl!343))) (t!378883 (exprs!6207 (h!71594 zl!343))))))))))

(assert (=> d!2013163 (= (derivationStepZipperUp!1497 (Context!11415 (Cons!65145 (h!71593 (exprs!6207 (h!71594 zl!343))) (t!378883 (exprs!6207 (h!71594 zl!343))))) (h!71592 s!2326)) e!3895832)))

(declare-fun b!6420915 () Bool)

(assert (=> b!6420915 (= e!3895834 (nullable!6316 (h!71593 (exprs!6207 (Context!11415 (Cons!65145 (h!71593 (exprs!6207 (h!71594 zl!343))) (t!378883 (exprs!6207 (h!71594 zl!343)))))))))))

(declare-fun bm!552068 () Bool)

(assert (=> bm!552068 (= call!552073 (derivationStepZipperDown!1571 (h!71593 (exprs!6207 (Context!11415 (Cons!65145 (h!71593 (exprs!6207 (h!71594 zl!343))) (t!378883 (exprs!6207 (h!71594 zl!343))))))) (Context!11415 (t!378883 (exprs!6207 (Context!11415 (Cons!65145 (h!71593 (exprs!6207 (h!71594 zl!343))) (t!378883 (exprs!6207 (h!71594 zl!343)))))))) (h!71592 s!2326)))))

(declare-fun b!6420916 () Bool)

(assert (=> b!6420916 (= e!3895833 call!552073)))

(declare-fun b!6420917 () Bool)

(assert (=> b!6420917 (= e!3895832 e!3895833)))

(declare-fun c!1173029 () Bool)

(assert (=> b!6420917 (= c!1173029 ((_ is Cons!65145) (exprs!6207 (Context!11415 (Cons!65145 (h!71593 (exprs!6207 (h!71594 zl!343))) (t!378883 (exprs!6207 (h!71594 zl!343))))))))))

(assert (= (and d!2013163 res!2638922) b!6420915))

(assert (= (and d!2013163 c!1173028) b!6420914))

(assert (= (and d!2013163 (not c!1173028)) b!6420917))

(assert (= (and b!6420917 c!1173029) b!6420916))

(assert (= (and b!6420917 (not c!1173029)) b!6420913))

(assert (= (or b!6420914 b!6420916) bm!552068))

(declare-fun m!7215536 () Bool)

(assert (=> b!6420914 m!7215536))

(declare-fun m!7215538 () Bool)

(assert (=> b!6420915 m!7215538))

(declare-fun m!7215540 () Bool)

(assert (=> bm!552068 m!7215540))

(assert (=> b!6420050 d!2013163))

(declare-fun d!2013165 () Bool)

(assert (=> d!2013165 (= (flatMap!1828 z!1189 lambda!354682) (dynLambda!25878 lambda!354682 (h!71594 zl!343)))))

(declare-fun lt!2376962 () Unit!158623)

(assert (=> d!2013165 (= lt!2376962 (choose!47704 z!1189 (h!71594 zl!343) lambda!354682))))

(assert (=> d!2013165 (= z!1189 (store ((as const (Array Context!11414 Bool)) false) (h!71594 zl!343) true))))

(assert (=> d!2013165 (= (lemmaFlatMapOnSingletonSet!1354 z!1189 (h!71594 zl!343) lambda!354682) lt!2376962)))

(declare-fun b_lambda!244065 () Bool)

(assert (=> (not b_lambda!244065) (not d!2013165)))

(declare-fun bs!1614464 () Bool)

(assert (= bs!1614464 d!2013165))

(assert (=> bs!1614464 m!7214692))

(declare-fun m!7215542 () Bool)

(assert (=> bs!1614464 m!7215542))

(declare-fun m!7215544 () Bool)

(assert (=> bs!1614464 m!7215544))

(declare-fun m!7215546 () Bool)

(assert (=> bs!1614464 m!7215546))

(assert (=> b!6420050 d!2013165))

(declare-fun b!6420918 () Bool)

(declare-fun e!3895836 () (InoxSet Context!11414))

(assert (=> b!6420918 (= e!3895836 ((as const (Array Context!11414 Bool)) false))))

(declare-fun b!6420919 () Bool)

(declare-fun call!552074 () (InoxSet Context!11414))

(declare-fun e!3895835 () (InoxSet Context!11414))

(assert (=> b!6420919 (= e!3895835 ((_ map or) call!552074 (derivationStepZipperUp!1497 (Context!11415 (t!378883 (exprs!6207 (h!71594 zl!343)))) (h!71592 s!2326))))))

(declare-fun d!2013167 () Bool)

(declare-fun c!1173030 () Bool)

(declare-fun e!3895837 () Bool)

(assert (=> d!2013167 (= c!1173030 e!3895837)))

(declare-fun res!2638923 () Bool)

(assert (=> d!2013167 (=> (not res!2638923) (not e!3895837))))

(assert (=> d!2013167 (= res!2638923 ((_ is Cons!65145) (exprs!6207 (h!71594 zl!343))))))

(assert (=> d!2013167 (= (derivationStepZipperUp!1497 (h!71594 zl!343) (h!71592 s!2326)) e!3895835)))

(declare-fun b!6420920 () Bool)

(assert (=> b!6420920 (= e!3895837 (nullable!6316 (h!71593 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun bm!552069 () Bool)

(assert (=> bm!552069 (= call!552074 (derivationStepZipperDown!1571 (h!71593 (exprs!6207 (h!71594 zl!343))) (Context!11415 (t!378883 (exprs!6207 (h!71594 zl!343)))) (h!71592 s!2326)))))

(declare-fun b!6420921 () Bool)

(assert (=> b!6420921 (= e!3895836 call!552074)))

(declare-fun b!6420922 () Bool)

(assert (=> b!6420922 (= e!3895835 e!3895836)))

(declare-fun c!1173031 () Bool)

(assert (=> b!6420922 (= c!1173031 ((_ is Cons!65145) (exprs!6207 (h!71594 zl!343))))))

(assert (= (and d!2013167 res!2638923) b!6420920))

(assert (= (and d!2013167 c!1173030) b!6420919))

(assert (= (and d!2013167 (not c!1173030)) b!6420922))

(assert (= (and b!6420922 c!1173031) b!6420921))

(assert (= (and b!6420922 (not c!1173031)) b!6420918))

(assert (= (or b!6420919 b!6420921) bm!552069))

(declare-fun m!7215548 () Bool)

(assert (=> b!6420919 m!7215548))

(assert (=> b!6420920 m!7214698))

(declare-fun m!7215550 () Bool)

(assert (=> bm!552069 m!7215550))

(assert (=> b!6420050 d!2013167))

(declare-fun d!2013169 () Bool)

(assert (=> d!2013169 (= (flatMap!1828 z!1189 lambda!354682) (choose!47703 z!1189 lambda!354682))))

(declare-fun bs!1614465 () Bool)

(assert (= bs!1614465 d!2013169))

(declare-fun m!7215552 () Bool)

(assert (=> bs!1614465 m!7215552))

(assert (=> b!6420050 d!2013169))

(declare-fun b!6420923 () Bool)

(declare-fun e!3895842 () (InoxSet Context!11414))

(declare-fun e!3895838 () (InoxSet Context!11414))

(assert (=> b!6420923 (= e!3895842 e!3895838)))

(declare-fun c!1173034 () Bool)

(assert (=> b!6420923 (= c!1173034 ((_ is Union!16323) (h!71593 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun d!2013171 () Bool)

(declare-fun c!1173032 () Bool)

(assert (=> d!2013171 (= c!1173032 (and ((_ is ElementMatch!16323) (h!71593 (exprs!6207 (h!71594 zl!343)))) (= (c!1172786 (h!71593 (exprs!6207 (h!71594 zl!343)))) (h!71592 s!2326))))))

(assert (=> d!2013171 (= (derivationStepZipperDown!1571 (h!71593 (exprs!6207 (h!71594 zl!343))) lt!2376828 (h!71592 s!2326)) e!3895842)))

(declare-fun b!6420924 () Bool)

(declare-fun e!3895839 () (InoxSet Context!11414))

(declare-fun call!552075 () (InoxSet Context!11414))

(declare-fun call!552079 () (InoxSet Context!11414))

(assert (=> b!6420924 (= e!3895839 ((_ map or) call!552075 call!552079))))

(declare-fun bm!552070 () Bool)

(declare-fun call!552080 () (InoxSet Context!11414))

(assert (=> bm!552070 (= call!552079 call!552080)))

(declare-fun b!6420925 () Bool)

(declare-fun e!3895840 () (InoxSet Context!11414))

(assert (=> b!6420925 (= e!3895840 ((as const (Array Context!11414 Bool)) false))))

(declare-fun b!6420926 () Bool)

(declare-fun c!1173035 () Bool)

(assert (=> b!6420926 (= c!1173035 ((_ is Star!16323) (h!71593 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun e!3895841 () (InoxSet Context!11414))

(assert (=> b!6420926 (= e!3895841 e!3895840)))

(declare-fun b!6420927 () Bool)

(assert (=> b!6420927 (= e!3895842 (store ((as const (Array Context!11414 Bool)) false) lt!2376828 true))))

(declare-fun b!6420928 () Bool)

(declare-fun c!1173036 () Bool)

(declare-fun e!3895843 () Bool)

(assert (=> b!6420928 (= c!1173036 e!3895843)))

(declare-fun res!2638924 () Bool)

(assert (=> b!6420928 (=> (not res!2638924) (not e!3895843))))

(assert (=> b!6420928 (= res!2638924 ((_ is Concat!25168) (h!71593 (exprs!6207 (h!71594 zl!343)))))))

(assert (=> b!6420928 (= e!3895838 e!3895839)))

(declare-fun bm!552071 () Bool)

(declare-fun call!552078 () (InoxSet Context!11414))

(assert (=> bm!552071 (= call!552078 call!552079)))

(declare-fun b!6420929 () Bool)

(assert (=> b!6420929 (= e!3895843 (nullable!6316 (regOne!33158 (h!71593 (exprs!6207 (h!71594 zl!343))))))))

(declare-fun call!552076 () List!65269)

(declare-fun c!1173033 () Bool)

(declare-fun bm!552072 () Bool)

(assert (=> bm!552072 (= call!552080 (derivationStepZipperDown!1571 (ite c!1173034 (regOne!33159 (h!71593 (exprs!6207 (h!71594 zl!343)))) (ite c!1173036 (regTwo!33158 (h!71593 (exprs!6207 (h!71594 zl!343)))) (ite c!1173033 (regOne!33158 (h!71593 (exprs!6207 (h!71594 zl!343)))) (reg!16652 (h!71593 (exprs!6207 (h!71594 zl!343))))))) (ite (or c!1173034 c!1173036) lt!2376828 (Context!11415 call!552076)) (h!71592 s!2326)))))

(declare-fun b!6420930 () Bool)

(assert (=> b!6420930 (= e!3895840 call!552078)))

(declare-fun b!6420931 () Bool)

(assert (=> b!6420931 (= e!3895839 e!3895841)))

(assert (=> b!6420931 (= c!1173033 ((_ is Concat!25168) (h!71593 (exprs!6207 (h!71594 zl!343)))))))

(declare-fun call!552077 () List!65269)

(declare-fun bm!552073 () Bool)

(assert (=> bm!552073 (= call!552075 (derivationStepZipperDown!1571 (ite c!1173034 (regTwo!33159 (h!71593 (exprs!6207 (h!71594 zl!343)))) (regOne!33158 (h!71593 (exprs!6207 (h!71594 zl!343))))) (ite c!1173034 lt!2376828 (Context!11415 call!552077)) (h!71592 s!2326)))))

(declare-fun b!6420932 () Bool)

(assert (=> b!6420932 (= e!3895838 ((_ map or) call!552080 call!552075))))

(declare-fun bm!552074 () Bool)

(assert (=> bm!552074 (= call!552077 ($colon$colon!2184 (exprs!6207 lt!2376828) (ite (or c!1173036 c!1173033) (regTwo!33158 (h!71593 (exprs!6207 (h!71594 zl!343)))) (h!71593 (exprs!6207 (h!71594 zl!343))))))))

(declare-fun bm!552075 () Bool)

(assert (=> bm!552075 (= call!552076 call!552077)))

(declare-fun b!6420933 () Bool)

(assert (=> b!6420933 (= e!3895841 call!552078)))

(assert (= (and d!2013171 c!1173032) b!6420927))

(assert (= (and d!2013171 (not c!1173032)) b!6420923))

(assert (= (and b!6420923 c!1173034) b!6420932))

(assert (= (and b!6420923 (not c!1173034)) b!6420928))

(assert (= (and b!6420928 res!2638924) b!6420929))

(assert (= (and b!6420928 c!1173036) b!6420924))

(assert (= (and b!6420928 (not c!1173036)) b!6420931))

(assert (= (and b!6420931 c!1173033) b!6420933))

(assert (= (and b!6420931 (not c!1173033)) b!6420926))

(assert (= (and b!6420926 c!1173035) b!6420930))

(assert (= (and b!6420926 (not c!1173035)) b!6420925))

(assert (= (or b!6420933 b!6420930) bm!552075))

(assert (= (or b!6420933 b!6420930) bm!552071))

(assert (= (or b!6420924 bm!552075) bm!552074))

(assert (= (or b!6420924 bm!552071) bm!552070))

(assert (= (or b!6420932 b!6420924) bm!552073))

(assert (= (or b!6420932 bm!552070) bm!552072))

(declare-fun m!7215554 () Bool)

(assert (=> bm!552074 m!7215554))

(declare-fun m!7215556 () Bool)

(assert (=> bm!552072 m!7215556))

(declare-fun m!7215558 () Bool)

(assert (=> bm!552073 m!7215558))

(declare-fun m!7215560 () Bool)

(assert (=> b!6420927 m!7215560))

(declare-fun m!7215562 () Bool)

(assert (=> b!6420929 m!7215562))

(assert (=> b!6420050 d!2013171))

(declare-fun d!2013173 () Bool)

(assert (=> d!2013173 (= (matchR!8506 lt!2376810 (_1!36605 lt!2376824)) (matchRSpec!3424 lt!2376810 (_1!36605 lt!2376824)))))

(declare-fun lt!2376963 () Unit!158623)

(assert (=> d!2013173 (= lt!2376963 (choose!47702 lt!2376810 (_1!36605 lt!2376824)))))

(assert (=> d!2013173 (validRegex!8059 lt!2376810)))

(assert (=> d!2013173 (= (mainMatchTheorem!3424 lt!2376810 (_1!36605 lt!2376824)) lt!2376963)))

(declare-fun bs!1614466 () Bool)

(assert (= bs!1614466 d!2013173))

(assert (=> bs!1614466 m!7214704))

(assert (=> bs!1614466 m!7214742))

(declare-fun m!7215564 () Bool)

(assert (=> bs!1614466 m!7215564))

(assert (=> bs!1614466 m!7215222))

(assert (=> b!6420030 d!2013173))

(declare-fun b!6420934 () Bool)

(declare-fun e!3895848 () Bool)

(declare-fun e!3895847 () Bool)

(assert (=> b!6420934 (= e!3895848 e!3895847)))

(declare-fun c!1173038 () Bool)

(assert (=> b!6420934 (= c!1173038 ((_ is Star!16323) (reg!16652 (regOne!33158 r!7292))))))

(declare-fun bm!552076 () Bool)

(declare-fun call!552081 () Bool)

(declare-fun c!1173037 () Bool)

(assert (=> bm!552076 (= call!552081 (validRegex!8059 (ite c!1173037 (regOne!33159 (reg!16652 (regOne!33158 r!7292))) (regOne!33158 (reg!16652 (regOne!33158 r!7292))))))))

(declare-fun b!6420935 () Bool)

(declare-fun res!2638925 () Bool)

(declare-fun e!3895845 () Bool)

(assert (=> b!6420935 (=> (not res!2638925) (not e!3895845))))

(assert (=> b!6420935 (= res!2638925 call!552081)))

(declare-fun e!3895846 () Bool)

(assert (=> b!6420935 (= e!3895846 e!3895845)))

(declare-fun b!6420936 () Bool)

(declare-fun call!552082 () Bool)

(assert (=> b!6420936 (= e!3895845 call!552082)))

(declare-fun call!552083 () Bool)

(declare-fun bm!552077 () Bool)

(assert (=> bm!552077 (= call!552083 (validRegex!8059 (ite c!1173038 (reg!16652 (reg!16652 (regOne!33158 r!7292))) (ite c!1173037 (regTwo!33159 (reg!16652 (regOne!33158 r!7292))) (regTwo!33158 (reg!16652 (regOne!33158 r!7292)))))))))

(declare-fun b!6420937 () Bool)

(declare-fun e!3895844 () Bool)

(declare-fun e!3895849 () Bool)

(assert (=> b!6420937 (= e!3895844 e!3895849)))

(declare-fun res!2638926 () Bool)

(assert (=> b!6420937 (=> (not res!2638926) (not e!3895849))))

(assert (=> b!6420937 (= res!2638926 call!552081)))

(declare-fun b!6420938 () Bool)

(declare-fun e!3895850 () Bool)

(assert (=> b!6420938 (= e!3895847 e!3895850)))

(declare-fun res!2638928 () Bool)

(assert (=> b!6420938 (= res!2638928 (not (nullable!6316 (reg!16652 (reg!16652 (regOne!33158 r!7292))))))))

(assert (=> b!6420938 (=> (not res!2638928) (not e!3895850))))

(declare-fun d!2013175 () Bool)

(declare-fun res!2638927 () Bool)

(assert (=> d!2013175 (=> res!2638927 e!3895848)))

(assert (=> d!2013175 (= res!2638927 ((_ is ElementMatch!16323) (reg!16652 (regOne!33158 r!7292))))))

(assert (=> d!2013175 (= (validRegex!8059 (reg!16652 (regOne!33158 r!7292))) e!3895848)))

(declare-fun b!6420939 () Bool)

(declare-fun res!2638929 () Bool)

(assert (=> b!6420939 (=> res!2638929 e!3895844)))

(assert (=> b!6420939 (= res!2638929 (not ((_ is Concat!25168) (reg!16652 (regOne!33158 r!7292)))))))

(assert (=> b!6420939 (= e!3895846 e!3895844)))

(declare-fun b!6420940 () Bool)

(assert (=> b!6420940 (= e!3895850 call!552083)))

(declare-fun b!6420941 () Bool)

(assert (=> b!6420941 (= e!3895849 call!552082)))

(declare-fun b!6420942 () Bool)

(assert (=> b!6420942 (= e!3895847 e!3895846)))

(assert (=> b!6420942 (= c!1173037 ((_ is Union!16323) (reg!16652 (regOne!33158 r!7292))))))

(declare-fun bm!552078 () Bool)

(assert (=> bm!552078 (= call!552082 call!552083)))

(assert (= (and d!2013175 (not res!2638927)) b!6420934))

(assert (= (and b!6420934 c!1173038) b!6420938))

(assert (= (and b!6420934 (not c!1173038)) b!6420942))

(assert (= (and b!6420938 res!2638928) b!6420940))

(assert (= (and b!6420942 c!1173037) b!6420935))

(assert (= (and b!6420942 (not c!1173037)) b!6420939))

(assert (= (and b!6420935 res!2638925) b!6420936))

(assert (= (and b!6420939 (not res!2638929)) b!6420937))

(assert (= (and b!6420937 res!2638926) b!6420941))

(assert (= (or b!6420936 b!6420941) bm!552078))

(assert (= (or b!6420935 b!6420937) bm!552076))

(assert (= (or b!6420940 bm!552078) bm!552077))

(declare-fun m!7215566 () Bool)

(assert (=> bm!552076 m!7215566))

(declare-fun m!7215568 () Bool)

(assert (=> bm!552077 m!7215568))

(declare-fun m!7215570 () Bool)

(assert (=> b!6420938 m!7215570))

(assert (=> b!6420030 d!2013175))

(declare-fun d!2013177 () Bool)

(assert (=> d!2013177 (= (Exists!3393 lambda!354685) (choose!47707 lambda!354685))))

(declare-fun bs!1614467 () Bool)

(assert (= bs!1614467 d!2013177))

(declare-fun m!7215572 () Bool)

(assert (=> bs!1614467 m!7215572))

(assert (=> b!6420030 d!2013177))

(declare-fun bs!1614468 () Bool)

(declare-fun b!6420952 () Bool)

(assert (= bs!1614468 (and b!6420952 d!2013139)))

(declare-fun lambda!354758 () Int)

(assert (=> bs!1614468 (not (= lambda!354758 lambda!354755))))

(declare-fun bs!1614469 () Bool)

(assert (= bs!1614469 (and b!6420952 d!2013143)))

(assert (=> bs!1614469 (not (= lambda!354758 lambda!354756))))

(declare-fun bs!1614470 () Bool)

(assert (= bs!1614470 (and b!6420952 b!6420425)))

(assert (=> bs!1614470 (not (= lambda!354758 lambda!354715))))

(declare-fun bs!1614471 () Bool)

(assert (= bs!1614471 (and b!6420952 b!6420560)))

(assert (=> bs!1614471 (not (= lambda!354758 lambda!354726))))

(declare-fun bs!1614472 () Bool)

(assert (= bs!1614472 (and b!6420952 d!2013067)))

(assert (=> bs!1614472 (not (= lambda!354758 lambda!354742))))

(assert (=> bs!1614469 (not (= lambda!354758 lambda!354757))))

(assert (=> bs!1614472 (not (= lambda!354758 lambda!354740))))

(declare-fun bs!1614473 () Bool)

(assert (= bs!1614473 (and b!6420952 b!6420568)))

(assert (=> bs!1614473 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 lt!2376810) (reg!16652 r!7292)) (= lt!2376810 r!7292)) (= lambda!354758 lambda!354725))))

(declare-fun bs!1614474 () Bool)

(assert (= bs!1614474 (and b!6420952 d!2013059)))

(assert (=> bs!1614474 (not (= lambda!354758 lambda!354735))))

(declare-fun bs!1614475 () Bool)

(assert (= bs!1614475 (and b!6420952 b!6420053)))

(assert (=> bs!1614475 (not (= lambda!354758 lambda!354684))))

(declare-fun bs!1614476 () Bool)

(assert (= bs!1614476 (and b!6420952 b!6420026)))

(assert (=> bs!1614476 (not (= lambda!354758 lambda!354681))))

(declare-fun bs!1614477 () Bool)

(assert (= bs!1614477 (and b!6420952 b!6420433)))

(assert (=> bs!1614477 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 lt!2376810) (reg!16652 lt!2376834)) (= lt!2376810 lt!2376834)) (= lambda!354758 lambda!354714))))

(assert (=> bs!1614475 (not (= lambda!354758 lambda!354683))))

(assert (=> bs!1614476 (not (= lambda!354758 lambda!354680))))

(declare-fun bs!1614478 () Bool)

(assert (= bs!1614478 (and b!6420952 b!6420030)))

(assert (=> bs!1614478 (not (= lambda!354758 lambda!354685))))

(assert (=> b!6420952 true))

(assert (=> b!6420952 true))

(declare-fun bs!1614479 () Bool)

(declare-fun b!6420944 () Bool)

(assert (= bs!1614479 (and b!6420944 d!2013139)))

(declare-fun lambda!354759 () Int)

(assert (=> bs!1614479 (not (= lambda!354759 lambda!354755))))

(declare-fun bs!1614480 () Bool)

(assert (= bs!1614480 (and b!6420944 d!2013143)))

(assert (=> bs!1614480 (not (= lambda!354759 lambda!354756))))

(declare-fun bs!1614481 () Bool)

(assert (= bs!1614481 (and b!6420944 b!6420425)))

(assert (=> bs!1614481 (= (and (= (_1!36605 lt!2376824) s!2326) (= (regOne!33158 lt!2376810) (regOne!33158 lt!2376834)) (= (regTwo!33158 lt!2376810) (regTwo!33158 lt!2376834))) (= lambda!354759 lambda!354715))))

(declare-fun bs!1614482 () Bool)

(assert (= bs!1614482 (and b!6420944 d!2013067)))

(assert (=> bs!1614482 (= (and (= (_1!36605 lt!2376824) s!2326) (= (regOne!33158 lt!2376810) lt!2376810) (= (regTwo!33158 lt!2376810) (regTwo!33158 r!7292))) (= lambda!354759 lambda!354742))))

(assert (=> bs!1614480 (= (and (= (_1!36605 lt!2376824) s!2326) (= (regOne!33158 lt!2376810) (regOne!33158 r!7292)) (= (regTwo!33158 lt!2376810) (regTwo!33158 r!7292))) (= lambda!354759 lambda!354757))))

(assert (=> bs!1614482 (not (= lambda!354759 lambda!354740))))

(declare-fun bs!1614483 () Bool)

(assert (= bs!1614483 (and b!6420944 b!6420568)))

(assert (=> bs!1614483 (not (= lambda!354759 lambda!354725))))

(declare-fun bs!1614484 () Bool)

(assert (= bs!1614484 (and b!6420944 d!2013059)))

(assert (=> bs!1614484 (not (= lambda!354759 lambda!354735))))

(declare-fun bs!1614485 () Bool)

(assert (= bs!1614485 (and b!6420944 b!6420053)))

(assert (=> bs!1614485 (= (and (= (_1!36605 lt!2376824) s!2326) (= (regOne!33158 lt!2376810) lt!2376810) (= (regTwo!33158 lt!2376810) (regTwo!33158 r!7292))) (= lambda!354759 lambda!354684))))

(declare-fun bs!1614486 () Bool)

(assert (= bs!1614486 (and b!6420944 b!6420026)))

(assert (=> bs!1614486 (= (and (= (_1!36605 lt!2376824) s!2326) (= (regOne!33158 lt!2376810) (regOne!33158 r!7292)) (= (regTwo!33158 lt!2376810) (regTwo!33158 r!7292))) (= lambda!354759 lambda!354681))))

(declare-fun bs!1614487 () Bool)

(assert (= bs!1614487 (and b!6420944 b!6420560)))

(assert (=> bs!1614487 (= (and (= (_1!36605 lt!2376824) s!2326) (= (regOne!33158 lt!2376810) (regOne!33158 r!7292)) (= (regTwo!33158 lt!2376810) (regTwo!33158 r!7292))) (= lambda!354759 lambda!354726))))

(declare-fun bs!1614488 () Bool)

(assert (= bs!1614488 (and b!6420944 b!6420952)))

(assert (=> bs!1614488 (not (= lambda!354759 lambda!354758))))

(declare-fun bs!1614489 () Bool)

(assert (= bs!1614489 (and b!6420944 b!6420433)))

(assert (=> bs!1614489 (not (= lambda!354759 lambda!354714))))

(assert (=> bs!1614485 (not (= lambda!354759 lambda!354683))))

(assert (=> bs!1614486 (not (= lambda!354759 lambda!354680))))

(declare-fun bs!1614490 () Bool)

(assert (= bs!1614490 (and b!6420944 b!6420030)))

(assert (=> bs!1614490 (not (= lambda!354759 lambda!354685))))

(assert (=> b!6420944 true))

(assert (=> b!6420944 true))

(declare-fun b!6420943 () Bool)

(declare-fun c!1173041 () Bool)

(assert (=> b!6420943 (= c!1173041 ((_ is ElementMatch!16323) lt!2376810))))

(declare-fun e!3895852 () Bool)

(declare-fun e!3895854 () Bool)

(assert (=> b!6420943 (= e!3895852 e!3895854)))

(declare-fun b!6420945 () Bool)

(assert (=> b!6420945 (= e!3895854 (= (_1!36605 lt!2376824) (Cons!65144 (c!1172786 lt!2376810) Nil!65144)))))

(declare-fun b!6420946 () Bool)

(declare-fun e!3895856 () Bool)

(declare-fun e!3895853 () Bool)

(assert (=> b!6420946 (= e!3895856 e!3895853)))

(declare-fun res!2638931 () Bool)

(assert (=> b!6420946 (= res!2638931 (matchRSpec!3424 (regOne!33159 lt!2376810) (_1!36605 lt!2376824)))))

(assert (=> b!6420946 (=> res!2638931 e!3895853)))

(declare-fun call!552085 () Bool)

(declare-fun c!1173042 () Bool)

(declare-fun bm!552079 () Bool)

(assert (=> bm!552079 (= call!552085 (Exists!3393 (ite c!1173042 lambda!354758 lambda!354759)))))

(declare-fun b!6420947 () Bool)

(assert (=> b!6420947 (= e!3895853 (matchRSpec!3424 (regTwo!33159 lt!2376810) (_1!36605 lt!2376824)))))

(declare-fun b!6420948 () Bool)

(declare-fun e!3895851 () Bool)

(declare-fun call!552084 () Bool)

(assert (=> b!6420948 (= e!3895851 call!552084)))

(declare-fun b!6420949 () Bool)

(assert (=> b!6420949 (= e!3895851 e!3895852)))

(declare-fun res!2638930 () Bool)

(assert (=> b!6420949 (= res!2638930 (not ((_ is EmptyLang!16323) lt!2376810)))))

(assert (=> b!6420949 (=> (not res!2638930) (not e!3895852))))

(declare-fun b!6420950 () Bool)

(declare-fun c!1173039 () Bool)

(assert (=> b!6420950 (= c!1173039 ((_ is Union!16323) lt!2376810))))

(assert (=> b!6420950 (= e!3895854 e!3895856)))

(declare-fun d!2013179 () Bool)

(declare-fun c!1173040 () Bool)

(assert (=> d!2013179 (= c!1173040 ((_ is EmptyExpr!16323) lt!2376810))))

(assert (=> d!2013179 (= (matchRSpec!3424 lt!2376810 (_1!36605 lt!2376824)) e!3895851)))

(declare-fun e!3895857 () Bool)

(assert (=> b!6420944 (= e!3895857 call!552085)))

(declare-fun b!6420951 () Bool)

(assert (=> b!6420951 (= e!3895856 e!3895857)))

(assert (=> b!6420951 (= c!1173042 ((_ is Star!16323) lt!2376810))))

(declare-fun bm!552080 () Bool)

(assert (=> bm!552080 (= call!552084 (isEmpty!37302 (_1!36605 lt!2376824)))))

(declare-fun e!3895855 () Bool)

(assert (=> b!6420952 (= e!3895855 call!552085)))

(declare-fun b!6420953 () Bool)

(declare-fun res!2638932 () Bool)

(assert (=> b!6420953 (=> res!2638932 e!3895855)))

(assert (=> b!6420953 (= res!2638932 call!552084)))

(assert (=> b!6420953 (= e!3895857 e!3895855)))

(assert (= (and d!2013179 c!1173040) b!6420948))

(assert (= (and d!2013179 (not c!1173040)) b!6420949))

(assert (= (and b!6420949 res!2638930) b!6420943))

(assert (= (and b!6420943 c!1173041) b!6420945))

(assert (= (and b!6420943 (not c!1173041)) b!6420950))

(assert (= (and b!6420950 c!1173039) b!6420946))

(assert (= (and b!6420950 (not c!1173039)) b!6420951))

(assert (= (and b!6420946 (not res!2638931)) b!6420947))

(assert (= (and b!6420951 c!1173042) b!6420953))

(assert (= (and b!6420951 (not c!1173042)) b!6420944))

(assert (= (and b!6420953 (not res!2638932)) b!6420952))

(assert (= (or b!6420952 b!6420944) bm!552079))

(assert (= (or b!6420948 b!6420953) bm!552080))

(declare-fun m!7215574 () Bool)

(assert (=> b!6420946 m!7215574))

(declare-fun m!7215576 () Bool)

(assert (=> bm!552079 m!7215576))

(declare-fun m!7215578 () Bool)

(assert (=> b!6420947 m!7215578))

(assert (=> bm!552080 m!7214816))

(assert (=> b!6420030 d!2013179))

(declare-fun b!6420954 () Bool)

(declare-fun e!3895860 () Bool)

(assert (=> b!6420954 (= e!3895860 (matchR!8506 lt!2376810 (_1!36605 lt!2376824)))))

(declare-fun b!6420955 () Bool)

(declare-fun e!3895862 () Bool)

(declare-fun lt!2376964 () Option!16214)

(assert (=> b!6420955 (= e!3895862 (not (isDefined!12917 lt!2376964)))))

(declare-fun b!6420956 () Bool)

(declare-fun res!2638934 () Bool)

(declare-fun e!3895858 () Bool)

(assert (=> b!6420956 (=> (not res!2638934) (not e!3895858))))

(assert (=> b!6420956 (= res!2638934 (matchR!8506 (reg!16652 (regOne!33158 r!7292)) (_1!36605 (get!22568 lt!2376964))))))

(declare-fun b!6420957 () Bool)

(declare-fun lt!2376966 () Unit!158623)

(declare-fun lt!2376965 () Unit!158623)

(assert (=> b!6420957 (= lt!2376966 lt!2376965)))

(assert (=> b!6420957 (= (++!14391 (++!14391 Nil!65144 (Cons!65144 (h!71592 (_1!36605 lt!2376824)) Nil!65144)) (t!378882 (_1!36605 lt!2376824))) (_1!36605 lt!2376824))))

(assert (=> b!6420957 (= lt!2376965 (lemmaMoveElementToOtherListKeepsConcatEq!2485 Nil!65144 (h!71592 (_1!36605 lt!2376824)) (t!378882 (_1!36605 lt!2376824)) (_1!36605 lt!2376824)))))

(declare-fun e!3895859 () Option!16214)

(assert (=> b!6420957 (= e!3895859 (findConcatSeparation!2628 (reg!16652 (regOne!33158 r!7292)) lt!2376810 (++!14391 Nil!65144 (Cons!65144 (h!71592 (_1!36605 lt!2376824)) Nil!65144)) (t!378882 (_1!36605 lt!2376824)) (_1!36605 lt!2376824)))))

(declare-fun b!6420958 () Bool)

(declare-fun res!2638933 () Bool)

(assert (=> b!6420958 (=> (not res!2638933) (not e!3895858))))

(assert (=> b!6420958 (= res!2638933 (matchR!8506 lt!2376810 (_2!36605 (get!22568 lt!2376964))))))

(declare-fun b!6420959 () Bool)

(assert (=> b!6420959 (= e!3895859 None!16213)))

(declare-fun b!6420960 () Bool)

(declare-fun e!3895861 () Option!16214)

(assert (=> b!6420960 (= e!3895861 (Some!16213 (tuple2!66605 Nil!65144 (_1!36605 lt!2376824))))))

(declare-fun b!6420961 () Bool)

(assert (=> b!6420961 (= e!3895861 e!3895859)))

(declare-fun c!1173043 () Bool)

(assert (=> b!6420961 (= c!1173043 ((_ is Nil!65144) (_1!36605 lt!2376824)))))

(declare-fun b!6420962 () Bool)

(assert (=> b!6420962 (= e!3895858 (= (++!14391 (_1!36605 (get!22568 lt!2376964)) (_2!36605 (get!22568 lt!2376964))) (_1!36605 lt!2376824)))))

(declare-fun d!2013181 () Bool)

(assert (=> d!2013181 e!3895862))

(declare-fun res!2638936 () Bool)

(assert (=> d!2013181 (=> res!2638936 e!3895862)))

(assert (=> d!2013181 (= res!2638936 e!3895858)))

(declare-fun res!2638935 () Bool)

(assert (=> d!2013181 (=> (not res!2638935) (not e!3895858))))

(assert (=> d!2013181 (= res!2638935 (isDefined!12917 lt!2376964))))

(assert (=> d!2013181 (= lt!2376964 e!3895861)))

(declare-fun c!1173044 () Bool)

(assert (=> d!2013181 (= c!1173044 e!3895860)))

(declare-fun res!2638937 () Bool)

(assert (=> d!2013181 (=> (not res!2638937) (not e!3895860))))

(assert (=> d!2013181 (= res!2638937 (matchR!8506 (reg!16652 (regOne!33158 r!7292)) Nil!65144))))

(assert (=> d!2013181 (validRegex!8059 (reg!16652 (regOne!33158 r!7292)))))

(assert (=> d!2013181 (= (findConcatSeparation!2628 (reg!16652 (regOne!33158 r!7292)) lt!2376810 Nil!65144 (_1!36605 lt!2376824) (_1!36605 lt!2376824)) lt!2376964)))

(assert (= (and d!2013181 res!2638937) b!6420954))

(assert (= (and d!2013181 c!1173044) b!6420960))

(assert (= (and d!2013181 (not c!1173044)) b!6420961))

(assert (= (and b!6420961 c!1173043) b!6420959))

(assert (= (and b!6420961 (not c!1173043)) b!6420957))

(assert (= (and d!2013181 res!2638935) b!6420956))

(assert (= (and b!6420956 res!2638934) b!6420958))

(assert (= (and b!6420958 res!2638933) b!6420962))

(assert (= (and d!2013181 (not res!2638936)) b!6420955))

(declare-fun m!7215580 () Bool)

(assert (=> b!6420957 m!7215580))

(assert (=> b!6420957 m!7215580))

(declare-fun m!7215582 () Bool)

(assert (=> b!6420957 m!7215582))

(declare-fun m!7215584 () Bool)

(assert (=> b!6420957 m!7215584))

(assert (=> b!6420957 m!7215580))

(declare-fun m!7215586 () Bool)

(assert (=> b!6420957 m!7215586))

(declare-fun m!7215588 () Bool)

(assert (=> b!6420958 m!7215588))

(declare-fun m!7215590 () Bool)

(assert (=> b!6420958 m!7215590))

(declare-fun m!7215592 () Bool)

(assert (=> d!2013181 m!7215592))

(declare-fun m!7215594 () Bool)

(assert (=> d!2013181 m!7215594))

(assert (=> d!2013181 m!7214738))

(assert (=> b!6420956 m!7215588))

(declare-fun m!7215596 () Bool)

(assert (=> b!6420956 m!7215596))

(assert (=> b!6420962 m!7215588))

(declare-fun m!7215598 () Bool)

(assert (=> b!6420962 m!7215598))

(assert (=> b!6420955 m!7215592))

(assert (=> b!6420954 m!7214704))

(assert (=> b!6420030 d!2013181))

(declare-fun d!2013183 () Bool)

(assert (=> d!2013183 (= (isDefined!12917 (findConcatSeparation!2628 (reg!16652 (regOne!33158 r!7292)) lt!2376810 Nil!65144 (_1!36605 lt!2376824) (_1!36605 lt!2376824))) (not (isEmpty!37303 (findConcatSeparation!2628 (reg!16652 (regOne!33158 r!7292)) lt!2376810 Nil!65144 (_1!36605 lt!2376824) (_1!36605 lt!2376824)))))))

(declare-fun bs!1614491 () Bool)

(assert (= bs!1614491 d!2013183))

(assert (=> bs!1614491 m!7214746))

(declare-fun m!7215600 () Bool)

(assert (=> bs!1614491 m!7215600))

(assert (=> b!6420030 d!2013183))

(declare-fun bs!1614492 () Bool)

(declare-fun d!2013185 () Bool)

(assert (= bs!1614492 (and d!2013185 d!2013139)))

(declare-fun lambda!354760 () Int)

(assert (=> bs!1614492 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 (regOne!33158 r!7292)) (regOne!33158 r!7292)) (= lt!2376810 (regTwo!33158 r!7292))) (= lambda!354760 lambda!354755))))

(declare-fun bs!1614493 () Bool)

(assert (= bs!1614493 (and d!2013185 d!2013143)))

(assert (=> bs!1614493 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 (regOne!33158 r!7292)) (regOne!33158 r!7292)) (= lt!2376810 (regTwo!33158 r!7292))) (= lambda!354760 lambda!354756))))

(declare-fun bs!1614494 () Bool)

(assert (= bs!1614494 (and d!2013185 b!6420425)))

(assert (=> bs!1614494 (not (= lambda!354760 lambda!354715))))

(declare-fun bs!1614495 () Bool)

(assert (= bs!1614495 (and d!2013185 d!2013067)))

(assert (=> bs!1614495 (not (= lambda!354760 lambda!354742))))

(assert (=> bs!1614493 (not (= lambda!354760 lambda!354757))))

(declare-fun bs!1614496 () Bool)

(assert (= bs!1614496 (and d!2013185 b!6420568)))

(assert (=> bs!1614496 (not (= lambda!354760 lambda!354725))))

(declare-fun bs!1614497 () Bool)

(assert (= bs!1614497 (and d!2013185 d!2013059)))

(assert (=> bs!1614497 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 (regOne!33158 r!7292)) lt!2376810) (= lt!2376810 (regTwo!33158 r!7292))) (= lambda!354760 lambda!354735))))

(declare-fun bs!1614498 () Bool)

(assert (= bs!1614498 (and d!2013185 b!6420053)))

(assert (=> bs!1614498 (not (= lambda!354760 lambda!354684))))

(declare-fun bs!1614499 () Bool)

(assert (= bs!1614499 (and d!2013185 b!6420026)))

(assert (=> bs!1614499 (not (= lambda!354760 lambda!354681))))

(declare-fun bs!1614500 () Bool)

(assert (= bs!1614500 (and d!2013185 b!6420560)))

(assert (=> bs!1614500 (not (= lambda!354760 lambda!354726))))

(declare-fun bs!1614501 () Bool)

(assert (= bs!1614501 (and d!2013185 b!6420952)))

(assert (=> bs!1614501 (not (= lambda!354760 lambda!354758))))

(declare-fun bs!1614502 () Bool)

(assert (= bs!1614502 (and d!2013185 b!6420433)))

(assert (=> bs!1614502 (not (= lambda!354760 lambda!354714))))

(assert (=> bs!1614498 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 (regOne!33158 r!7292)) lt!2376810) (= lt!2376810 (regTwo!33158 r!7292))) (= lambda!354760 lambda!354683))))

(declare-fun bs!1614503 () Bool)

(assert (= bs!1614503 (and d!2013185 b!6420944)))

(assert (=> bs!1614503 (not (= lambda!354760 lambda!354759))))

(assert (=> bs!1614495 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 (regOne!33158 r!7292)) lt!2376810) (= lt!2376810 (regTwo!33158 r!7292))) (= lambda!354760 lambda!354740))))

(assert (=> bs!1614499 (= (and (= (_1!36605 lt!2376824) s!2326) (= (reg!16652 (regOne!33158 r!7292)) (regOne!33158 r!7292)) (= lt!2376810 (regTwo!33158 r!7292))) (= lambda!354760 lambda!354680))))

(declare-fun bs!1614504 () Bool)

(assert (= bs!1614504 (and d!2013185 b!6420030)))

(assert (=> bs!1614504 (= lambda!354760 lambda!354685)))

(assert (=> d!2013185 true))

(assert (=> d!2013185 true))

(assert (=> d!2013185 true))

(assert (=> d!2013185 (= (isDefined!12917 (findConcatSeparation!2628 (reg!16652 (regOne!33158 r!7292)) lt!2376810 Nil!65144 (_1!36605 lt!2376824) (_1!36605 lt!2376824))) (Exists!3393 lambda!354760))))

(declare-fun lt!2376967 () Unit!158623)

(assert (=> d!2013185 (= lt!2376967 (choose!47708 (reg!16652 (regOne!33158 r!7292)) lt!2376810 (_1!36605 lt!2376824)))))

(assert (=> d!2013185 (validRegex!8059 (reg!16652 (regOne!33158 r!7292)))))

(assert (=> d!2013185 (= (lemmaFindConcatSeparationEquivalentToExists!2392 (reg!16652 (regOne!33158 r!7292)) lt!2376810 (_1!36605 lt!2376824)) lt!2376967)))

(declare-fun bs!1614505 () Bool)

(assert (= bs!1614505 d!2013185))

(declare-fun m!7215602 () Bool)

(assert (=> bs!1614505 m!7215602))

(declare-fun m!7215604 () Bool)

(assert (=> bs!1614505 m!7215604))

(assert (=> bs!1614505 m!7214746))

(assert (=> bs!1614505 m!7214748))

(assert (=> bs!1614505 m!7214738))

(assert (=> bs!1614505 m!7214746))

(assert (=> b!6420030 d!2013185))

(declare-fun d!2013187 () Bool)

(assert (=> d!2013187 (= (flatMap!1828 lt!2376815 lambda!354682) (choose!47703 lt!2376815 lambda!354682))))

(declare-fun bs!1614506 () Bool)

(assert (= bs!1614506 d!2013187))

(declare-fun m!7215606 () Bool)

(assert (=> bs!1614506 m!7215606))

(assert (=> b!6420028 d!2013187))

(declare-fun b!6420963 () Bool)

(declare-fun e!3895864 () (InoxSet Context!11414))

(assert (=> b!6420963 (= e!3895864 ((as const (Array Context!11414 Bool)) false))))

(declare-fun call!552086 () (InoxSet Context!11414))

(declare-fun b!6420964 () Bool)

(declare-fun e!3895863 () (InoxSet Context!11414))

(assert (=> b!6420964 (= e!3895863 ((_ map or) call!552086 (derivationStepZipperUp!1497 (Context!11415 (t!378883 (exprs!6207 lt!2376831))) (h!71592 s!2326))))))

(declare-fun d!2013189 () Bool)

(declare-fun c!1173045 () Bool)

(declare-fun e!3895865 () Bool)

(assert (=> d!2013189 (= c!1173045 e!3895865)))

(declare-fun res!2638938 () Bool)

(assert (=> d!2013189 (=> (not res!2638938) (not e!3895865))))

(assert (=> d!2013189 (= res!2638938 ((_ is Cons!65145) (exprs!6207 lt!2376831)))))

(assert (=> d!2013189 (= (derivationStepZipperUp!1497 lt!2376831 (h!71592 s!2326)) e!3895863)))

(declare-fun b!6420965 () Bool)

(assert (=> b!6420965 (= e!3895865 (nullable!6316 (h!71593 (exprs!6207 lt!2376831))))))

(declare-fun bm!552081 () Bool)

(assert (=> bm!552081 (= call!552086 (derivationStepZipperDown!1571 (h!71593 (exprs!6207 lt!2376831)) (Context!11415 (t!378883 (exprs!6207 lt!2376831))) (h!71592 s!2326)))))

(declare-fun b!6420966 () Bool)

(assert (=> b!6420966 (= e!3895864 call!552086)))

(declare-fun b!6420967 () Bool)

(assert (=> b!6420967 (= e!3895863 e!3895864)))

(declare-fun c!1173046 () Bool)

(assert (=> b!6420967 (= c!1173046 ((_ is Cons!65145) (exprs!6207 lt!2376831)))))

(assert (= (and d!2013189 res!2638938) b!6420965))

(assert (= (and d!2013189 c!1173045) b!6420964))

(assert (= (and d!2013189 (not c!1173045)) b!6420967))

(assert (= (and b!6420967 c!1173046) b!6420966))

(assert (= (and b!6420967 (not c!1173046)) b!6420963))

(assert (= (or b!6420964 b!6420966) bm!552081))

(declare-fun m!7215608 () Bool)

(assert (=> b!6420964 m!7215608))

(declare-fun m!7215610 () Bool)

(assert (=> b!6420965 m!7215610))

(declare-fun m!7215612 () Bool)

(assert (=> bm!552081 m!7215612))

(assert (=> b!6420028 d!2013189))

(declare-fun d!2013191 () Bool)

(assert (=> d!2013191 (= (flatMap!1828 lt!2376815 lambda!354682) (dynLambda!25878 lambda!354682 lt!2376831))))

(declare-fun lt!2376968 () Unit!158623)

(assert (=> d!2013191 (= lt!2376968 (choose!47704 lt!2376815 lt!2376831 lambda!354682))))

(assert (=> d!2013191 (= lt!2376815 (store ((as const (Array Context!11414 Bool)) false) lt!2376831 true))))

(assert (=> d!2013191 (= (lemmaFlatMapOnSingletonSet!1354 lt!2376815 lt!2376831 lambda!354682) lt!2376968)))

(declare-fun b_lambda!244067 () Bool)

(assert (=> (not b_lambda!244067) (not d!2013191)))

(declare-fun bs!1614507 () Bool)

(assert (= bs!1614507 d!2013191))

(assert (=> bs!1614507 m!7214802))

(declare-fun m!7215614 () Bool)

(assert (=> bs!1614507 m!7215614))

(declare-fun m!7215616 () Bool)

(assert (=> bs!1614507 m!7215616))

(assert (=> bs!1614507 m!7214800))

(assert (=> b!6420028 d!2013191))

(declare-fun bs!1614508 () Bool)

(declare-fun d!2013193 () Bool)

(assert (= bs!1614508 (and d!2013193 b!6420050)))

(declare-fun lambda!354763 () Int)

(assert (=> bs!1614508 (= lambda!354763 lambda!354682)))

(assert (=> d!2013193 true))

(assert (=> d!2013193 (= (derivationStepZipper!2289 lt!2376815 (h!71592 s!2326)) (flatMap!1828 lt!2376815 lambda!354763))))

(declare-fun bs!1614509 () Bool)

(assert (= bs!1614509 d!2013193))

(declare-fun m!7215618 () Bool)

(assert (=> bs!1614509 m!7215618))

(assert (=> b!6420028 d!2013193))

(declare-fun b!6420974 () Bool)

(declare-fun e!3895868 () Bool)

(declare-fun tp!1782805 () Bool)

(declare-fun tp!1782806 () Bool)

(assert (=> b!6420974 (= e!3895868 (and tp!1782805 tp!1782806))))

(assert (=> b!6420052 (= tp!1782737 e!3895868)))

(assert (= (and b!6420052 ((_ is Cons!65145) (exprs!6207 setElem!43822))) b!6420974))

(declare-fun b!6420986 () Bool)

(declare-fun e!3895871 () Bool)

(declare-fun tp!1782819 () Bool)

(declare-fun tp!1782818 () Bool)

(assert (=> b!6420986 (= e!3895871 (and tp!1782819 tp!1782818))))

(declare-fun b!6420985 () Bool)

(assert (=> b!6420985 (= e!3895871 tp_is_empty!41899)))

(assert (=> b!6420032 (= tp!1782734 e!3895871)))

(declare-fun b!6420988 () Bool)

(declare-fun tp!1782821 () Bool)

(declare-fun tp!1782820 () Bool)

(assert (=> b!6420988 (= e!3895871 (and tp!1782821 tp!1782820))))

(declare-fun b!6420987 () Bool)

(declare-fun tp!1782817 () Bool)

(assert (=> b!6420987 (= e!3895871 tp!1782817)))

(assert (= (and b!6420032 ((_ is ElementMatch!16323) (regOne!33159 r!7292))) b!6420985))

(assert (= (and b!6420032 ((_ is Concat!25168) (regOne!33159 r!7292))) b!6420986))

(assert (= (and b!6420032 ((_ is Star!16323) (regOne!33159 r!7292))) b!6420987))

(assert (= (and b!6420032 ((_ is Union!16323) (regOne!33159 r!7292))) b!6420988))

(declare-fun b!6420990 () Bool)

(declare-fun e!3895872 () Bool)

(declare-fun tp!1782824 () Bool)

(declare-fun tp!1782823 () Bool)

(assert (=> b!6420990 (= e!3895872 (and tp!1782824 tp!1782823))))

(declare-fun b!6420989 () Bool)

(assert (=> b!6420989 (= e!3895872 tp_is_empty!41899)))

(assert (=> b!6420032 (= tp!1782739 e!3895872)))

(declare-fun b!6420992 () Bool)

(declare-fun tp!1782826 () Bool)

(declare-fun tp!1782825 () Bool)

(assert (=> b!6420992 (= e!3895872 (and tp!1782826 tp!1782825))))

(declare-fun b!6420991 () Bool)

(declare-fun tp!1782822 () Bool)

(assert (=> b!6420991 (= e!3895872 tp!1782822)))

(assert (= (and b!6420032 ((_ is ElementMatch!16323) (regTwo!33159 r!7292))) b!6420989))

(assert (= (and b!6420032 ((_ is Concat!25168) (regTwo!33159 r!7292))) b!6420990))

(assert (= (and b!6420032 ((_ is Star!16323) (regTwo!33159 r!7292))) b!6420991))

(assert (= (and b!6420032 ((_ is Union!16323) (regTwo!33159 r!7292))) b!6420992))

(declare-fun b!6421000 () Bool)

(declare-fun e!3895878 () Bool)

(declare-fun tp!1782831 () Bool)

(assert (=> b!6421000 (= e!3895878 tp!1782831)))

(declare-fun e!3895877 () Bool)

(declare-fun tp!1782832 () Bool)

(declare-fun b!6420999 () Bool)

(assert (=> b!6420999 (= e!3895877 (and (inv!84054 (h!71594 (t!378884 zl!343))) e!3895878 tp!1782832))))

(assert (=> b!6420042 (= tp!1782733 e!3895877)))

(assert (= b!6420999 b!6421000))

(assert (= (and b!6420042 ((_ is Cons!65146) (t!378884 zl!343))) b!6420999))

(declare-fun m!7215620 () Bool)

(assert (=> b!6420999 m!7215620))

(declare-fun b!6421005 () Bool)

(declare-fun e!3895881 () Bool)

(declare-fun tp!1782835 () Bool)

(assert (=> b!6421005 (= e!3895881 (and tp_is_empty!41899 tp!1782835))))

(assert (=> b!6420048 (= tp!1782735 e!3895881)))

(assert (= (and b!6420048 ((_ is Cons!65144) (t!378882 s!2326))) b!6421005))

(declare-fun b!6421006 () Bool)

(declare-fun e!3895882 () Bool)

(declare-fun tp!1782836 () Bool)

(declare-fun tp!1782837 () Bool)

(assert (=> b!6421006 (= e!3895882 (and tp!1782836 tp!1782837))))

(assert (=> b!6420043 (= tp!1782742 e!3895882)))

(assert (= (and b!6420043 ((_ is Cons!65145) (exprs!6207 (h!71594 zl!343)))) b!6421006))

(declare-fun condSetEmpty!43828 () Bool)

(assert (=> setNonEmpty!43822 (= condSetEmpty!43828 (= setRest!43822 ((as const (Array Context!11414 Bool)) false)))))

(declare-fun setRes!43828 () Bool)

(assert (=> setNonEmpty!43822 (= tp!1782741 setRes!43828)))

(declare-fun setIsEmpty!43828 () Bool)

(assert (=> setIsEmpty!43828 setRes!43828))

(declare-fun setElem!43828 () Context!11414)

(declare-fun setNonEmpty!43828 () Bool)

(declare-fun tp!1782843 () Bool)

(declare-fun e!3895885 () Bool)

(assert (=> setNonEmpty!43828 (= setRes!43828 (and tp!1782843 (inv!84054 setElem!43828) e!3895885))))

(declare-fun setRest!43828 () (InoxSet Context!11414))

(assert (=> setNonEmpty!43828 (= setRest!43822 ((_ map or) (store ((as const (Array Context!11414 Bool)) false) setElem!43828 true) setRest!43828))))

(declare-fun b!6421011 () Bool)

(declare-fun tp!1782842 () Bool)

(assert (=> b!6421011 (= e!3895885 tp!1782842)))

(assert (= (and setNonEmpty!43822 condSetEmpty!43828) setIsEmpty!43828))

(assert (= (and setNonEmpty!43822 (not condSetEmpty!43828)) setNonEmpty!43828))

(assert (= setNonEmpty!43828 b!6421011))

(declare-fun m!7215622 () Bool)

(assert (=> setNonEmpty!43828 m!7215622))

(declare-fun b!6421013 () Bool)

(declare-fun e!3895886 () Bool)

(declare-fun tp!1782846 () Bool)

(declare-fun tp!1782845 () Bool)

(assert (=> b!6421013 (= e!3895886 (and tp!1782846 tp!1782845))))

(declare-fun b!6421012 () Bool)

(assert (=> b!6421012 (= e!3895886 tp_is_empty!41899)))

(assert (=> b!6420023 (= tp!1782740 e!3895886)))

(declare-fun b!6421015 () Bool)

(declare-fun tp!1782848 () Bool)

(declare-fun tp!1782847 () Bool)

(assert (=> b!6421015 (= e!3895886 (and tp!1782848 tp!1782847))))

(declare-fun b!6421014 () Bool)

(declare-fun tp!1782844 () Bool)

(assert (=> b!6421014 (= e!3895886 tp!1782844)))

(assert (= (and b!6420023 ((_ is ElementMatch!16323) (regOne!33158 r!7292))) b!6421012))

(assert (= (and b!6420023 ((_ is Concat!25168) (regOne!33158 r!7292))) b!6421013))

(assert (= (and b!6420023 ((_ is Star!16323) (regOne!33158 r!7292))) b!6421014))

(assert (= (and b!6420023 ((_ is Union!16323) (regOne!33158 r!7292))) b!6421015))

(declare-fun b!6421017 () Bool)

(declare-fun e!3895887 () Bool)

(declare-fun tp!1782851 () Bool)

(declare-fun tp!1782850 () Bool)

(assert (=> b!6421017 (= e!3895887 (and tp!1782851 tp!1782850))))

(declare-fun b!6421016 () Bool)

(assert (=> b!6421016 (= e!3895887 tp_is_empty!41899)))

(assert (=> b!6420023 (= tp!1782736 e!3895887)))

(declare-fun b!6421019 () Bool)

(declare-fun tp!1782853 () Bool)

(declare-fun tp!1782852 () Bool)

(assert (=> b!6421019 (= e!3895887 (and tp!1782853 tp!1782852))))

(declare-fun b!6421018 () Bool)

(declare-fun tp!1782849 () Bool)

(assert (=> b!6421018 (= e!3895887 tp!1782849)))

(assert (= (and b!6420023 ((_ is ElementMatch!16323) (regTwo!33158 r!7292))) b!6421016))

(assert (= (and b!6420023 ((_ is Concat!25168) (regTwo!33158 r!7292))) b!6421017))

(assert (= (and b!6420023 ((_ is Star!16323) (regTwo!33158 r!7292))) b!6421018))

(assert (= (and b!6420023 ((_ is Union!16323) (regTwo!33158 r!7292))) b!6421019))

(declare-fun b!6421021 () Bool)

(declare-fun e!3895888 () Bool)

(declare-fun tp!1782856 () Bool)

(declare-fun tp!1782855 () Bool)

(assert (=> b!6421021 (= e!3895888 (and tp!1782856 tp!1782855))))

(declare-fun b!6421020 () Bool)

(assert (=> b!6421020 (= e!3895888 tp_is_empty!41899)))

(assert (=> b!6420049 (= tp!1782738 e!3895888)))

(declare-fun b!6421023 () Bool)

(declare-fun tp!1782858 () Bool)

(declare-fun tp!1782857 () Bool)

(assert (=> b!6421023 (= e!3895888 (and tp!1782858 tp!1782857))))

(declare-fun b!6421022 () Bool)

(declare-fun tp!1782854 () Bool)

(assert (=> b!6421022 (= e!3895888 tp!1782854)))

(assert (= (and b!6420049 ((_ is ElementMatch!16323) (reg!16652 r!7292))) b!6421020))

(assert (= (and b!6420049 ((_ is Concat!25168) (reg!16652 r!7292))) b!6421021))

(assert (= (and b!6420049 ((_ is Star!16323) (reg!16652 r!7292))) b!6421022))

(assert (= (and b!6420049 ((_ is Union!16323) (reg!16652 r!7292))) b!6421023))

(declare-fun b_lambda!244069 () Bool)

(assert (= b_lambda!244067 (or b!6420050 b_lambda!244069)))

(declare-fun bs!1614510 () Bool)

(declare-fun d!2013195 () Bool)

(assert (= bs!1614510 (and d!2013195 b!6420050)))

(assert (=> bs!1614510 (= (dynLambda!25878 lambda!354682 lt!2376831) (derivationStepZipperUp!1497 lt!2376831 (h!71592 s!2326)))))

(assert (=> bs!1614510 m!7214796))

(assert (=> d!2013191 d!2013195))

(declare-fun b_lambda!244071 () Bool)

(assert (= b_lambda!244065 (or b!6420050 b_lambda!244071)))

(declare-fun bs!1614511 () Bool)

(declare-fun d!2013197 () Bool)

(assert (= bs!1614511 (and d!2013197 b!6420050)))

(assert (=> bs!1614511 (= (dynLambda!25878 lambda!354682 (h!71594 zl!343)) (derivationStepZipperUp!1497 (h!71594 zl!343) (h!71592 s!2326)))))

(assert (=> bs!1614511 m!7214694))

(assert (=> d!2013165 d!2013197))

(declare-fun b_lambda!244073 () Bool)

(assert (= b_lambda!244055 (or b!6420050 b_lambda!244073)))

(declare-fun bs!1614512 () Bool)

(declare-fun d!2013199 () Bool)

(assert (= bs!1614512 (and d!2013199 b!6420050)))

(assert (=> bs!1614512 (= (dynLambda!25878 lambda!354682 lt!2376829) (derivationStepZipperUp!1497 lt!2376829 (h!71592 s!2326)))))

(assert (=> bs!1614512 m!7214782))

(assert (=> d!2013025 d!2013199))

(declare-fun b_lambda!244075 () Bool)

(assert (= b_lambda!244053 (or b!6420050 b_lambda!244075)))

(declare-fun bs!1614513 () Bool)

(declare-fun d!2013201 () Bool)

(assert (= bs!1614513 (and d!2013201 b!6420050)))

(assert (=> bs!1614513 (= (dynLambda!25878 lambda!354682 lt!2376821) (derivationStepZipperUp!1497 lt!2376821 (h!71592 s!2326)))))

(assert (=> bs!1614513 m!7214770))

(assert (=> d!2013023 d!2013201))

(check-sat (not b!6420776) (not d!2013135) (not b!6420326) (not d!2013107) (not d!2012945) (not d!2013041) (not b!6421015) (not bm!552019) (not bs!1614512) (not d!2013009) (not d!2013085) (not b!6420962) (not b!6420301) (not b!6420775) (not bm!552076) (not b!6420920) (not b!6420733) (not d!2013187) (not b!6420305) (not b!6420309) (not d!2013143) (not b!6420609) (not b!6421014) (not b!6420990) (not d!2013173) (not bm!552067) (not b!6421011) (not d!2013059) (not b!6420988) (not b!6420907) (not b!6420555) (not d!2013191) (not b!6420633) (not d!2013093) (not b!6420634) (not b!6420605) (not bm!552081) (not b!6421018) (not bm!552065) (not b!6420987) (not b!6421019) (not b!6420533) (not d!2013067) (not b!6420842) (not b!6420729) (not b!6420731) (not b!6420337) (not bs!1614510) (not b!6421006) (not b_lambda!244073) (not b!6420904) (not bm!552074) (not b!6420954) (not b!6420910) (not bm!552025) (not d!2013155) (not d!2012965) (not bm!552034) (not bm!552032) (not b!6420957) (not b!6420300) (not b!6420601) (not b!6420428) (not b!6420964) (not d!2012997) (not b!6420843) (not d!2013007) (not bm!552073) (not d!2013027) (not bm!552018) (not d!2012923) (not b!6420509) (not b!6420214) (not b!6420213) (not b!6420770) (not b!6420556) (not d!2013025) (not d!2013183) (not b!6420839) (not b!6420507) (not b!6420766) (not b!6420991) (not b!6420331) (not bm!552069) (not d!2012933) (not b!6420914) (not b!6421005) (not setNonEmpty!43828) (not bm!551999) (not b!6420600) (not b!6420503) (not b!6420730) (not b!6420844) (not d!2013063) (not b!6420779) (not bm!552077) (not b!6420615) (not d!2013039) (not b!6420219) (not b_lambda!244075) (not d!2013109) (not d!2013153) (not b!6420906) (not d!2013095) (not b!6420223) (not b!6420834) (not bm!552007) (not b!6420302) (not b_lambda!244071) (not d!2013021) (not b!6420909) (not d!2013053) (not b!6420501) (not d!2013193) (not b!6420330) (not d!2012969) (not bm!551990) (not b!6420958) (not b!6420599) (not b!6420737) (not b!6420767) (not d!2013169) (not b!6420986) (not b!6420220) (not d!2013055) (not bm!552072) (not b!6420336) (not b!6420532) (not b!6420500) (not b!6420929) (not b!6420340) (not b!6421013) tp_is_empty!41899 (not b!6420771) (not d!2013133) (not b!6420506) (not b!6421000) (not b!6421023) (not d!2013165) (not b!6420992) (not b!6420768) (not b!6420845) (not bm!552047) (not bm!552064) (not d!2013181) (not d!2013177) (not b!6420306) (not bm!552068) (not b!6420765) (not d!2013049) (not d!2013045) (not b!6421022) (not b!6420974) (not b!6420999) (not bs!1614513) (not d!2013185) (not b!6420947) (not b!6420919) (not b!6420215) (not bm!552043) (not d!2013127) (not b_lambda!244069) (not bm!552080) (not d!2013157) (not b!6420502) (not bm!552063) (not d!2013105) (not bm!552079) (not d!2012927) (not b!6421021) (not d!2013023) (not b!6420841) (not d!2013065) (not b!6420915) (not b!6420563) (not b!6420955) (not b!6420946) (not b!6420956) (not b!6421017) (not b!6420849) (not b!6420606) (not bm!552000) (not d!2013139) (not b!6420427) (not d!2013131) (not b!6420905) (not b!6420732) (not bm!552033) (not b!6420840) (not d!2013137) (not b!6420260) (not d!2013161) (not b!6420562) (not b!6420740) (not b!6420938) (not b!6420332) (not b!6420769) (not d!2012995) (not b!6420304) (not b!6420965) (not bs!1614511))
(check-sat)
