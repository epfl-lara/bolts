; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!640802 () Bool)

(assert start!640802)

(declare-fun b!6535614 () Bool)

(assert (=> b!6535614 true))

(assert (=> b!6535614 true))

(declare-fun lambda!362660 () Int)

(declare-fun lambda!362659 () Int)

(assert (=> b!6535614 (not (= lambda!362660 lambda!362659))))

(assert (=> b!6535614 true))

(assert (=> b!6535614 true))

(declare-fun b!6535611 () Bool)

(assert (=> b!6535611 true))

(declare-fun b!6535601 () Bool)

(assert (=> b!6535601 true))

(declare-fun res!2681586 () Bool)

(declare-fun e!3957777 () Bool)

(assert (=> start!640802 (=> (not res!2681586) (not e!3957777))))

(declare-datatypes ((C!33088 0))(
  ( (C!33089 (val!26246 Int)) )
))
(declare-datatypes ((Regex!16409 0))(
  ( (ElementMatch!16409 (c!1199720 C!33088)) (Concat!25254 (regOne!33330 Regex!16409) (regTwo!33330 Regex!16409)) (EmptyExpr!16409) (Star!16409 (reg!16738 Regex!16409)) (EmptyLang!16409) (Union!16409 (regOne!33331 Regex!16409) (regTwo!33331 Regex!16409)) )
))
(declare-fun r!7292 () Regex!16409)

(declare-fun validRegex!8145 (Regex!16409) Bool)

(assert (=> start!640802 (= res!2681586 (validRegex!8145 r!7292))))

(assert (=> start!640802 e!3957777))

(declare-fun e!3957766 () Bool)

(assert (=> start!640802 e!3957766))

(declare-fun condSetEmpty!44586 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65526 0))(
  ( (Nil!65402) (Cons!65402 (h!71850 Regex!16409) (t!379166 List!65526)) )
))
(declare-datatypes ((Context!11586 0))(
  ( (Context!11587 (exprs!6293 List!65526)) )
))
(declare-fun z!1189 () (InoxSet Context!11586))

(assert (=> start!640802 (= condSetEmpty!44586 (= z!1189 ((as const (Array Context!11586 Bool)) false)))))

(declare-fun setRes!44586 () Bool)

(assert (=> start!640802 setRes!44586))

(declare-fun e!3957780 () Bool)

(assert (=> start!640802 e!3957780))

(declare-fun e!3957770 () Bool)

(assert (=> start!640802 e!3957770))

(declare-fun b!6535587 () Bool)

(declare-fun tp!1808397 () Bool)

(assert (=> b!6535587 (= e!3957766 tp!1808397)))

(declare-fun b!6535588 () Bool)

(declare-datatypes ((Unit!158971 0))(
  ( (Unit!158972) )
))
(declare-fun e!3957779 () Unit!158971)

(declare-fun Unit!158973 () Unit!158971)

(assert (=> b!6535588 (= e!3957779 Unit!158973)))

(declare-fun b!6535589 () Bool)

(declare-fun res!2681584 () Bool)

(declare-fun e!3957781 () Bool)

(assert (=> b!6535589 (=> res!2681584 e!3957781)))

(declare-datatypes ((List!65527 0))(
  ( (Nil!65403) (Cons!65403 (h!71851 Context!11586) (t!379167 List!65527)) )
))
(declare-fun zl!343 () List!65527)

(declare-fun generalisedConcat!2006 (List!65526) Regex!16409)

(assert (=> b!6535589 (= res!2681584 (not (= r!7292 (generalisedConcat!2006 (exprs!6293 (h!71851 zl!343))))))))

(declare-fun b!6535590 () Bool)

(declare-fun e!3957769 () Bool)

(declare-fun e!3957774 () Bool)

(assert (=> b!6535590 (= e!3957769 e!3957774)))

(declare-fun res!2681583 () Bool)

(assert (=> b!6535590 (=> res!2681583 e!3957774)))

(declare-fun lt!2398304 () (InoxSet Context!11586))

(declare-fun lt!2398310 () (InoxSet Context!11586))

(assert (=> b!6535590 (= res!2681583 (not (= lt!2398304 lt!2398310)))))

(declare-fun lt!2398301 () Context!11586)

(declare-datatypes ((List!65528 0))(
  ( (Nil!65404) (Cons!65404 (h!71852 C!33088) (t!379168 List!65528)) )
))
(declare-fun s!2326 () List!65528)

(declare-fun derivationStepZipperDown!1657 (Regex!16409 Context!11586 C!33088) (InoxSet Context!11586))

(assert (=> b!6535590 (= lt!2398310 (derivationStepZipperDown!1657 (reg!16738 (regOne!33330 r!7292)) lt!2398301 (h!71852 s!2326)))))

(declare-fun lt!2398305 () List!65526)

(assert (=> b!6535590 (= lt!2398301 (Context!11587 lt!2398305))))

(declare-fun lt!2398339 () Regex!16409)

(assert (=> b!6535590 (= lt!2398305 (Cons!65402 lt!2398339 (t!379166 (exprs!6293 (h!71851 zl!343)))))))

(assert (=> b!6535590 (= lt!2398339 (Star!16409 (reg!16738 (regOne!33330 r!7292))))))

(declare-fun b!6535591 () Bool)

(declare-fun res!2681566 () Bool)

(declare-fun e!3957775 () Bool)

(assert (=> b!6535591 (=> res!2681566 e!3957775)))

(declare-fun lt!2398328 () (InoxSet Context!11586))

(declare-fun lt!2398345 () List!65527)

(declare-fun toList!10193 ((InoxSet Context!11586)) List!65527)

(assert (=> b!6535591 (= res!2681566 (not (= (toList!10193 lt!2398328) lt!2398345)))))

(declare-fun b!6535592 () Bool)

(declare-fun e!3957768 () Bool)

(declare-fun e!3957773 () Bool)

(assert (=> b!6535592 (= e!3957768 e!3957773)))

(declare-fun res!2681592 () Bool)

(assert (=> b!6535592 (=> res!2681592 e!3957773)))

(declare-fun lt!2398308 () List!65528)

(assert (=> b!6535592 (= res!2681592 (not (= s!2326 lt!2398308)))))

(declare-datatypes ((tuple2!66776 0))(
  ( (tuple2!66777 (_1!36691 List!65528) (_2!36691 List!65528)) )
))
(declare-fun lt!2398319 () tuple2!66776)

(declare-fun ++!14520 (List!65528 List!65528) List!65528)

(assert (=> b!6535592 (= lt!2398308 (++!14520 (_1!36691 lt!2398319) (_2!36691 lt!2398319)))))

(declare-datatypes ((Option!16300 0))(
  ( (None!16299) (Some!16299 (v!52482 tuple2!66776)) )
))
(declare-fun lt!2398332 () Option!16300)

(declare-fun get!22695 (Option!16300) tuple2!66776)

(assert (=> b!6535592 (= lt!2398319 (get!22695 lt!2398332))))

(declare-fun isDefined!13003 (Option!16300) Bool)

(assert (=> b!6535592 (isDefined!13003 lt!2398332)))

(declare-fun lt!2398323 () (InoxSet Context!11586))

(declare-fun findConcatSeparationZippers!174 ((InoxSet Context!11586) (InoxSet Context!11586) List!65528 List!65528 List!65528) Option!16300)

(assert (=> b!6535592 (= lt!2398332 (findConcatSeparationZippers!174 lt!2398323 lt!2398328 Nil!65404 s!2326 s!2326))))

(declare-fun lt!2398340 () Unit!158971)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!174 ((InoxSet Context!11586) Context!11586 List!65528) Unit!158971)

(assert (=> b!6535592 (= lt!2398340 (lemmaConcatZipperMatchesStringThenFindConcatDefined!174 lt!2398323 lt!2398301 s!2326))))

(declare-fun b!6535593 () Bool)

(declare-fun res!2681594 () Bool)

(assert (=> b!6535593 (=> res!2681594 e!3957781)))

(get-info :version)

(assert (=> b!6535593 (= res!2681594 (not ((_ is Cons!65402) (exprs!6293 (h!71851 zl!343)))))))

(declare-fun b!6535594 () Bool)

(declare-fun e!3957778 () Bool)

(declare-fun tp!1808399 () Bool)

(assert (=> b!6535594 (= e!3957778 tp!1808399)))

(declare-fun b!6535595 () Bool)

(declare-fun res!2681572 () Bool)

(assert (=> b!6535595 (=> res!2681572 e!3957769)))

(declare-fun e!3957776 () Bool)

(assert (=> b!6535595 (= res!2681572 e!3957776)))

(declare-fun res!2681573 () Bool)

(assert (=> b!6535595 (=> (not res!2681573) (not e!3957776))))

(assert (=> b!6535595 (= res!2681573 ((_ is Concat!25254) (regOne!33330 r!7292)))))

(declare-fun b!6535596 () Bool)

(declare-fun tp_is_empty!42071 () Bool)

(declare-fun tp!1808401 () Bool)

(assert (=> b!6535596 (= e!3957770 (and tp_is_empty!42071 tp!1808401))))

(declare-fun b!6535597 () Bool)

(declare-fun e!3957763 () Bool)

(declare-fun lt!2398318 () (InoxSet Context!11586))

(declare-fun matchZipper!2421 ((InoxSet Context!11586) List!65528) Bool)

(assert (=> b!6535597 (= e!3957763 (not (matchZipper!2421 lt!2398318 (t!379168 s!2326))))))

(declare-fun b!6535598 () Bool)

(declare-fun e!3957759 () Bool)

(assert (=> b!6535598 (= e!3957759 (not e!3957781))))

(declare-fun res!2681570 () Bool)

(assert (=> b!6535598 (=> res!2681570 e!3957781)))

(assert (=> b!6535598 (= res!2681570 (not ((_ is Cons!65403) zl!343)))))

(declare-fun lt!2398342 () Bool)

(declare-fun matchRSpec!3510 (Regex!16409 List!65528) Bool)

(assert (=> b!6535598 (= lt!2398342 (matchRSpec!3510 r!7292 s!2326))))

(declare-fun matchR!8592 (Regex!16409 List!65528) Bool)

(assert (=> b!6535598 (= lt!2398342 (matchR!8592 r!7292 s!2326))))

(declare-fun lt!2398312 () Unit!158971)

(declare-fun mainMatchTheorem!3510 (Regex!16409 List!65528) Unit!158971)

(assert (=> b!6535598 (= lt!2398312 (mainMatchTheorem!3510 r!7292 s!2326))))

(declare-fun b!6535599 () Bool)

(declare-fun tp!1808400 () Bool)

(declare-fun tp!1808402 () Bool)

(assert (=> b!6535599 (= e!3957766 (and tp!1808400 tp!1808402))))

(declare-fun tp!1808396 () Bool)

(declare-fun setNonEmpty!44586 () Bool)

(declare-fun setElem!44586 () Context!11586)

(declare-fun inv!84269 (Context!11586) Bool)

(assert (=> setNonEmpty!44586 (= setRes!44586 (and tp!1808396 (inv!84269 setElem!44586) e!3957778))))

(declare-fun setRest!44586 () (InoxSet Context!11586))

(assert (=> setNonEmpty!44586 (= z!1189 ((_ map or) (store ((as const (Array Context!11586 Bool)) false) setElem!44586 true) setRest!44586))))

(declare-fun b!6535600 () Bool)

(declare-fun res!2681565 () Bool)

(declare-fun e!3957782 () Bool)

(assert (=> b!6535600 (=> res!2681565 e!3957782)))

(declare-fun lt!2398307 () Bool)

(declare-fun lt!2398346 () Bool)

(assert (=> b!6535600 (= res!2681565 (or (not lt!2398307) (not lt!2398346)))))

(assert (=> b!6535601 (= e!3957782 e!3957768)))

(declare-fun res!2681563 () Bool)

(assert (=> b!6535601 (=> res!2681563 e!3957768)))

(declare-fun lt!2398341 () (InoxSet Context!11586))

(declare-fun appendTo!170 ((InoxSet Context!11586) Context!11586) (InoxSet Context!11586))

(assert (=> b!6535601 (= res!2681563 (not (= (appendTo!170 lt!2398323 lt!2398301) lt!2398341)))))

(declare-fun lt!2398344 () List!65526)

(declare-fun lambda!362662 () Int)

(declare-fun map!14922 ((InoxSet Context!11586) Int) (InoxSet Context!11586))

(declare-fun ++!14521 (List!65526 List!65526) List!65526)

(assert (=> b!6535601 (= (map!14922 lt!2398323 lambda!362662) (store ((as const (Array Context!11586 Bool)) false) (Context!11587 (++!14521 lt!2398344 lt!2398305)) true))))

(declare-fun lambda!362663 () Int)

(declare-fun lt!2398326 () Unit!158971)

(declare-fun lemmaConcatPreservesForall!382 (List!65526 List!65526 Int) Unit!158971)

(assert (=> b!6535601 (= lt!2398326 (lemmaConcatPreservesForall!382 lt!2398344 lt!2398305 lambda!362663))))

(declare-fun lt!2398330 () Context!11586)

(declare-fun lt!2398299 () Unit!158971)

(declare-fun lemmaMapOnSingletonSet!192 ((InoxSet Context!11586) Context!11586 Int) Unit!158971)

(assert (=> b!6535601 (= lt!2398299 (lemmaMapOnSingletonSet!192 lt!2398323 lt!2398330 lambda!362662))))

(declare-fun b!6535602 () Bool)

(declare-fun res!2681579 () Bool)

(assert (=> b!6535602 (=> res!2681579 e!3957769)))

(assert (=> b!6535602 (= res!2681579 (or ((_ is Concat!25254) (regOne!33330 r!7292)) (not ((_ is Star!16409) (regOne!33330 r!7292)))))))

(declare-fun b!6535603 () Bool)

(declare-fun res!2681589 () Bool)

(assert (=> b!6535603 (=> res!2681589 e!3957773)))

(assert (=> b!6535603 (= res!2681589 (not (matchZipper!2421 lt!2398328 (_2!36691 lt!2398319))))))

(declare-fun b!6535604 () Bool)

(declare-fun res!2681560 () Bool)

(declare-fun e!3957761 () Bool)

(assert (=> b!6535604 (=> res!2681560 e!3957761)))

(declare-fun isEmpty!37621 (List!65526) Bool)

(assert (=> b!6535604 (= res!2681560 (isEmpty!37621 (t!379166 (exprs!6293 (h!71851 zl!343)))))))

(declare-fun b!6535605 () Bool)

(declare-fun e!3957762 () Bool)

(declare-fun e!3957758 () Bool)

(assert (=> b!6535605 (= e!3957762 e!3957758)))

(declare-fun res!2681588 () Bool)

(assert (=> b!6535605 (=> res!2681588 e!3957758)))

(declare-fun lt!2398322 () Regex!16409)

(assert (=> b!6535605 (= res!2681588 (not (= r!7292 lt!2398322)))))

(assert (=> b!6535605 (= lt!2398322 (Concat!25254 lt!2398339 (regTwo!33330 r!7292)))))

(declare-fun b!6535606 () Bool)

(declare-fun res!2681581 () Bool)

(assert (=> b!6535606 (=> res!2681581 e!3957781)))

(declare-fun generalisedUnion!2253 (List!65526) Regex!16409)

(declare-fun unfocusZipperList!1830 (List!65527) List!65526)

(assert (=> b!6535606 (= res!2681581 (not (= r!7292 (generalisedUnion!2253 (unfocusZipperList!1830 zl!343)))))))

(declare-fun b!6535607 () Bool)

(declare-fun e!3957757 () Bool)

(declare-fun e!3957765 () Bool)

(assert (=> b!6535607 (= e!3957757 e!3957765)))

(declare-fun res!2681577 () Bool)

(assert (=> b!6535607 (=> res!2681577 e!3957765)))

(assert (=> b!6535607 (= res!2681577 lt!2398342)))

(declare-fun lt!2398331 () Regex!16409)

(assert (=> b!6535607 (= (matchR!8592 lt!2398331 s!2326) (matchRSpec!3510 lt!2398331 s!2326))))

(declare-fun lt!2398325 () Unit!158971)

(assert (=> b!6535607 (= lt!2398325 (mainMatchTheorem!3510 lt!2398331 s!2326))))

(declare-fun b!6535608 () Bool)

(declare-fun tp!1808403 () Bool)

(declare-fun e!3957771 () Bool)

(assert (=> b!6535608 (= e!3957780 (and (inv!84269 (h!71851 zl!343)) e!3957771 tp!1808403))))

(declare-fun b!6535609 () Bool)

(assert (=> b!6535609 (= e!3957766 tp_is_empty!42071)))

(declare-fun b!6535610 () Bool)

(declare-fun e!3957767 () Bool)

(assert (=> b!6535610 (= e!3957767 (matchZipper!2421 lt!2398318 (t!379168 s!2326)))))

(assert (=> b!6535611 (= e!3957761 e!3957769)))

(declare-fun res!2681582 () Bool)

(assert (=> b!6535611 (=> res!2681582 e!3957769)))

(assert (=> b!6535611 (= res!2681582 (or (and ((_ is ElementMatch!16409) (regOne!33330 r!7292)) (= (c!1199720 (regOne!33330 r!7292)) (h!71852 s!2326))) ((_ is Union!16409) (regOne!33330 r!7292))))))

(declare-fun lt!2398300 () Unit!158971)

(assert (=> b!6535611 (= lt!2398300 e!3957779)))

(declare-fun c!1199719 () Bool)

(declare-fun lt!2398321 () Bool)

(assert (=> b!6535611 (= c!1199719 lt!2398321)))

(declare-fun nullable!6402 (Regex!16409) Bool)

(assert (=> b!6535611 (= lt!2398321 (nullable!6402 (h!71850 (exprs!6293 (h!71851 zl!343)))))))

(declare-fun lambda!362661 () Int)

(declare-fun flatMap!1914 ((InoxSet Context!11586) Int) (InoxSet Context!11586))

(declare-fun derivationStepZipperUp!1583 (Context!11586 C!33088) (InoxSet Context!11586))

(assert (=> b!6535611 (= (flatMap!1914 z!1189 lambda!362661) (derivationStepZipperUp!1583 (h!71851 zl!343) (h!71852 s!2326)))))

(declare-fun lt!2398337 () Unit!158971)

(declare-fun lemmaFlatMapOnSingletonSet!1440 ((InoxSet Context!11586) Context!11586 Int) Unit!158971)

(assert (=> b!6535611 (= lt!2398337 (lemmaFlatMapOnSingletonSet!1440 z!1189 (h!71851 zl!343) lambda!362661))))

(declare-fun lt!2398316 () Context!11586)

(assert (=> b!6535611 (= lt!2398318 (derivationStepZipperUp!1583 lt!2398316 (h!71852 s!2326)))))

(assert (=> b!6535611 (= lt!2398304 (derivationStepZipperDown!1657 (h!71850 (exprs!6293 (h!71851 zl!343))) lt!2398316 (h!71852 s!2326)))))

(assert (=> b!6535611 (= lt!2398316 (Context!11587 (t!379166 (exprs!6293 (h!71851 zl!343)))))))

(declare-fun lt!2398314 () (InoxSet Context!11586))

(assert (=> b!6535611 (= lt!2398314 (derivationStepZipperUp!1583 (Context!11587 (Cons!65402 (h!71850 (exprs!6293 (h!71851 zl!343))) (t!379166 (exprs!6293 (h!71851 zl!343))))) (h!71852 s!2326)))))

(declare-fun b!6535612 () Bool)

(declare-fun e!3957764 () Bool)

(assert (=> b!6535612 (= e!3957774 e!3957764)))

(declare-fun res!2681561 () Bool)

(assert (=> b!6535612 (=> res!2681561 e!3957764)))

(declare-fun lt!2398335 () (InoxSet Context!11586))

(assert (=> b!6535612 (= res!2681561 (not (= lt!2398335 lt!2398310)))))

(declare-fun lt!2398334 () Context!11586)

(assert (=> b!6535612 (= (flatMap!1914 lt!2398341 lambda!362661) (derivationStepZipperUp!1583 lt!2398334 (h!71852 s!2326)))))

(declare-fun lt!2398338 () Unit!158971)

(assert (=> b!6535612 (= lt!2398338 (lemmaFlatMapOnSingletonSet!1440 lt!2398341 lt!2398334 lambda!362661))))

(declare-fun lt!2398302 () (InoxSet Context!11586))

(assert (=> b!6535612 (= lt!2398302 (derivationStepZipperUp!1583 lt!2398334 (h!71852 s!2326)))))

(declare-fun derivationStepZipper!2375 ((InoxSet Context!11586) C!33088) (InoxSet Context!11586))

(assert (=> b!6535612 (= lt!2398335 (derivationStepZipper!2375 lt!2398341 (h!71852 s!2326)))))

(assert (=> b!6535612 (= lt!2398341 (store ((as const (Array Context!11586 Bool)) false) lt!2398334 true))))

(assert (=> b!6535612 (= lt!2398334 (Context!11587 (Cons!65402 (reg!16738 (regOne!33330 r!7292)) lt!2398305)))))

(declare-fun b!6535613 () Bool)

(assert (=> b!6535613 (= e!3957773 e!3957775)))

(declare-fun res!2681567 () Bool)

(assert (=> b!6535613 (=> res!2681567 e!3957775)))

(assert (=> b!6535613 (= res!2681567 (not (validRegex!8145 lt!2398322)))))

(assert (=> b!6535613 (matchR!8592 (reg!16738 (regOne!33330 r!7292)) (_1!36691 lt!2398319))))

(declare-fun lt!2398336 () List!65527)

(declare-fun lt!2398317 () Unit!158971)

(declare-fun theoremZipperRegexEquiv!845 ((InoxSet Context!11586) List!65527 Regex!16409 List!65528) Unit!158971)

(assert (=> b!6535613 (= lt!2398317 (theoremZipperRegexEquiv!845 lt!2398323 lt!2398336 (reg!16738 (regOne!33330 r!7292)) (_1!36691 lt!2398319)))))

(assert (=> b!6535613 (matchZipper!2421 (store ((as const (Array Context!11586 Bool)) false) (Context!11587 (++!14521 lt!2398344 lt!2398305)) true) lt!2398308)))

(declare-fun lt!2398306 () Unit!158971)

(assert (=> b!6535613 (= lt!2398306 (lemmaConcatPreservesForall!382 lt!2398344 lt!2398305 lambda!362663))))

(declare-fun lt!2398313 () Unit!158971)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!190 (Context!11586 Context!11586 List!65528 List!65528) Unit!158971)

(assert (=> b!6535613 (= lt!2398313 (lemmaConcatenateContextMatchesConcatOfStrings!190 lt!2398330 lt!2398301 (_1!36691 lt!2398319) (_2!36691 lt!2398319)))))

(assert (=> b!6535614 (= e!3957781 e!3957761)))

(declare-fun res!2681568 () Bool)

(assert (=> b!6535614 (=> res!2681568 e!3957761)))

(declare-fun lt!2398320 () Bool)

(assert (=> b!6535614 (= res!2681568 (or (not (= lt!2398342 lt!2398320)) ((_ is Nil!65404) s!2326)))))

(declare-fun Exists!3479 (Int) Bool)

(assert (=> b!6535614 (= (Exists!3479 lambda!362659) (Exists!3479 lambda!362660))))

(declare-fun lt!2398324 () Unit!158971)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2016 (Regex!16409 Regex!16409 List!65528) Unit!158971)

(assert (=> b!6535614 (= lt!2398324 (lemmaExistCutMatchRandMatchRSpecEquivalent!2016 (regOne!33330 r!7292) (regTwo!33330 r!7292) s!2326))))

(assert (=> b!6535614 (= lt!2398320 (Exists!3479 lambda!362659))))

(declare-fun findConcatSeparation!2714 (Regex!16409 Regex!16409 List!65528 List!65528 List!65528) Option!16300)

(assert (=> b!6535614 (= lt!2398320 (isDefined!13003 (findConcatSeparation!2714 (regOne!33330 r!7292) (regTwo!33330 r!7292) Nil!65404 s!2326 s!2326)))))

(declare-fun lt!2398303 () Unit!158971)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2478 (Regex!16409 Regex!16409 List!65528) Unit!158971)

(assert (=> b!6535614 (= lt!2398303 (lemmaFindConcatSeparationEquivalentToExists!2478 (regOne!33330 r!7292) (regTwo!33330 r!7292) s!2326))))

(declare-fun b!6535615 () Bool)

(declare-fun tp!1808398 () Bool)

(assert (=> b!6535615 (= e!3957771 tp!1808398)))

(declare-fun b!6535616 () Bool)

(assert (=> b!6535616 (= e!3957777 e!3957759)))

(declare-fun res!2681580 () Bool)

(assert (=> b!6535616 (=> (not res!2681580) (not e!3957759))))

(declare-fun lt!2398343 () Regex!16409)

(assert (=> b!6535616 (= res!2681580 (= r!7292 lt!2398343))))

(declare-fun unfocusZipper!2151 (List!65527) Regex!16409)

(assert (=> b!6535616 (= lt!2398343 (unfocusZipper!2151 zl!343))))

(declare-fun b!6535617 () Bool)

(declare-fun res!2681587 () Bool)

(assert (=> b!6535617 (=> res!2681587 e!3957781)))

(declare-fun isEmpty!37622 (List!65527) Bool)

(assert (=> b!6535617 (= res!2681587 (not (isEmpty!37622 (t!379167 zl!343))))))

(declare-fun b!6535618 () Bool)

(assert (=> b!6535618 (= e!3957764 e!3957762)))

(declare-fun res!2681578 () Bool)

(assert (=> b!6535618 (=> res!2681578 e!3957762)))

(assert (=> b!6535618 (= res!2681578 (not (= lt!2398346 (matchZipper!2421 lt!2398335 (t!379168 s!2326)))))))

(assert (=> b!6535618 (= lt!2398346 (matchZipper!2421 lt!2398341 s!2326))))

(declare-fun setIsEmpty!44586 () Bool)

(assert (=> setIsEmpty!44586 setRes!44586))

(declare-fun b!6535619 () Bool)

(declare-fun res!2681569 () Bool)

(assert (=> b!6535619 (=> (not res!2681569) (not e!3957777))))

(assert (=> b!6535619 (= res!2681569 (= (toList!10193 z!1189) zl!343))))

(declare-fun b!6535620 () Bool)

(assert (=> b!6535620 (= e!3957765 e!3957782)))

(declare-fun res!2681593 () Bool)

(assert (=> b!6535620 (=> res!2681593 e!3957782)))

(assert (=> b!6535620 (= res!2681593 e!3957763)))

(declare-fun res!2681571 () Bool)

(assert (=> b!6535620 (=> (not res!2681571) (not e!3957763))))

(assert (=> b!6535620 (= res!2681571 (not lt!2398307))))

(assert (=> b!6535620 (= lt!2398307 (matchZipper!2421 lt!2398304 (t!379168 s!2326)))))

(declare-fun b!6535621 () Bool)

(declare-fun tp!1808395 () Bool)

(declare-fun tp!1808394 () Bool)

(assert (=> b!6535621 (= e!3957766 (and tp!1808395 tp!1808394))))

(declare-fun b!6535622 () Bool)

(declare-fun lt!2398327 () Regex!16409)

(assert (=> b!6535622 (= e!3957775 (= lt!2398322 lt!2398327))))

(declare-fun b!6535623 () Bool)

(declare-fun res!2681562 () Bool)

(assert (=> b!6535623 (=> res!2681562 e!3957765)))

(assert (=> b!6535623 (= res!2681562 (not (matchZipper!2421 z!1189 s!2326)))))

(declare-fun b!6535624 () Bool)

(declare-fun e!3957772 () Bool)

(assert (=> b!6535624 (= e!3957758 e!3957772)))

(declare-fun res!2681575 () Bool)

(assert (=> b!6535624 (=> res!2681575 e!3957772)))

(assert (=> b!6535624 (= res!2681575 (not (= (unfocusZipper!2151 (Cons!65403 lt!2398334 Nil!65403)) lt!2398331)))))

(assert (=> b!6535624 (= lt!2398331 (Concat!25254 (reg!16738 (regOne!33330 r!7292)) lt!2398322))))

(declare-fun b!6535625 () Bool)

(declare-fun res!2681564 () Bool)

(assert (=> b!6535625 (=> res!2681564 e!3957762)))

(assert (=> b!6535625 (= res!2681564 (not (= lt!2398343 r!7292)))))

(declare-fun b!6535626 () Bool)

(declare-fun Unit!158974 () Unit!158971)

(assert (=> b!6535626 (= e!3957779 Unit!158974)))

(declare-fun lt!2398333 () Unit!158971)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1240 ((InoxSet Context!11586) (InoxSet Context!11586) List!65528) Unit!158971)

(assert (=> b!6535626 (= lt!2398333 (lemmaZipperConcatMatchesSameAsBothZippers!1240 lt!2398304 lt!2398318 (t!379168 s!2326)))))

(declare-fun res!2681576 () Bool)

(assert (=> b!6535626 (= res!2681576 (matchZipper!2421 lt!2398304 (t!379168 s!2326)))))

(assert (=> b!6535626 (=> res!2681576 e!3957767)))

(assert (=> b!6535626 (= (matchZipper!2421 ((_ map or) lt!2398304 lt!2398318) (t!379168 s!2326)) e!3957767)))

(declare-fun b!6535627 () Bool)

(declare-fun res!2681574 () Bool)

(assert (=> b!6535627 (=> res!2681574 e!3957765)))

(assert (=> b!6535627 (= res!2681574 (not lt!2398321))))

(declare-fun b!6535628 () Bool)

(declare-fun res!2681585 () Bool)

(assert (=> b!6535628 (=> res!2681585 e!3957773)))

(assert (=> b!6535628 (= res!2681585 (not (matchZipper!2421 lt!2398323 (_1!36691 lt!2398319))))))

(declare-fun b!6535629 () Bool)

(assert (=> b!6535629 (= e!3957776 (nullable!6402 (regOne!33330 (regOne!33330 r!7292))))))

(declare-fun b!6535630 () Bool)

(declare-fun e!3957760 () Bool)

(assert (=> b!6535630 (= e!3957772 e!3957760)))

(declare-fun res!2681590 () Bool)

(assert (=> b!6535630 (=> res!2681590 e!3957760)))

(assert (=> b!6535630 (= res!2681590 (not (= (unfocusZipper!2151 lt!2398336) (reg!16738 (regOne!33330 r!7292)))))))

(assert (=> b!6535630 (= lt!2398336 (Cons!65403 lt!2398330 Nil!65403))))

(assert (=> b!6535630 (= (flatMap!1914 lt!2398328 lambda!362661) (derivationStepZipperUp!1583 lt!2398301 (h!71852 s!2326)))))

(declare-fun lt!2398315 () Unit!158971)

(assert (=> b!6535630 (= lt!2398315 (lemmaFlatMapOnSingletonSet!1440 lt!2398328 lt!2398301 lambda!362661))))

(assert (=> b!6535630 (= (flatMap!1914 lt!2398323 lambda!362661) (derivationStepZipperUp!1583 lt!2398330 (h!71852 s!2326)))))

(declare-fun lt!2398311 () Unit!158971)

(assert (=> b!6535630 (= lt!2398311 (lemmaFlatMapOnSingletonSet!1440 lt!2398323 lt!2398330 lambda!362661))))

(declare-fun lt!2398309 () (InoxSet Context!11586))

(assert (=> b!6535630 (= lt!2398309 (derivationStepZipperUp!1583 lt!2398301 (h!71852 s!2326)))))

(declare-fun lt!2398329 () (InoxSet Context!11586))

(assert (=> b!6535630 (= lt!2398329 (derivationStepZipperUp!1583 lt!2398330 (h!71852 s!2326)))))

(assert (=> b!6535630 (= lt!2398328 (store ((as const (Array Context!11586 Bool)) false) lt!2398301 true))))

(assert (=> b!6535630 (= lt!2398323 (store ((as const (Array Context!11586 Bool)) false) lt!2398330 true))))

(assert (=> b!6535630 (= lt!2398330 (Context!11587 lt!2398344))))

(assert (=> b!6535630 (= lt!2398344 (Cons!65402 (reg!16738 (regOne!33330 r!7292)) Nil!65402))))

(declare-fun b!6535631 () Bool)

(assert (=> b!6535631 (= e!3957760 e!3957757)))

(declare-fun res!2681591 () Bool)

(assert (=> b!6535631 (=> res!2681591 e!3957757)))

(assert (=> b!6535631 (= res!2681591 (not (= lt!2398327 lt!2398322)))))

(assert (=> b!6535631 (= lt!2398327 (unfocusZipper!2151 lt!2398345))))

(assert (=> b!6535631 (= lt!2398345 (Cons!65403 lt!2398301 Nil!65403))))

(declare-fun b!6535632 () Bool)

(declare-fun res!2681559 () Bool)

(assert (=> b!6535632 (=> res!2681559 e!3957781)))

(assert (=> b!6535632 (= res!2681559 (or ((_ is EmptyExpr!16409) r!7292) ((_ is EmptyLang!16409) r!7292) ((_ is ElementMatch!16409) r!7292) ((_ is Union!16409) r!7292) (not ((_ is Concat!25254) r!7292))))))

(assert (= (and start!640802 res!2681586) b!6535619))

(assert (= (and b!6535619 res!2681569) b!6535616))

(assert (= (and b!6535616 res!2681580) b!6535598))

(assert (= (and b!6535598 (not res!2681570)) b!6535617))

(assert (= (and b!6535617 (not res!2681587)) b!6535589))

(assert (= (and b!6535589 (not res!2681584)) b!6535593))

(assert (= (and b!6535593 (not res!2681594)) b!6535606))

(assert (= (and b!6535606 (not res!2681581)) b!6535632))

(assert (= (and b!6535632 (not res!2681559)) b!6535614))

(assert (= (and b!6535614 (not res!2681568)) b!6535604))

(assert (= (and b!6535604 (not res!2681560)) b!6535611))

(assert (= (and b!6535611 c!1199719) b!6535626))

(assert (= (and b!6535611 (not c!1199719)) b!6535588))

(assert (= (and b!6535626 (not res!2681576)) b!6535610))

(assert (= (and b!6535611 (not res!2681582)) b!6535595))

(assert (= (and b!6535595 res!2681573) b!6535629))

(assert (= (and b!6535595 (not res!2681572)) b!6535602))

(assert (= (and b!6535602 (not res!2681579)) b!6535590))

(assert (= (and b!6535590 (not res!2681583)) b!6535612))

(assert (= (and b!6535612 (not res!2681561)) b!6535618))

(assert (= (and b!6535618 (not res!2681578)) b!6535625))

(assert (= (and b!6535625 (not res!2681564)) b!6535605))

(assert (= (and b!6535605 (not res!2681588)) b!6535624))

(assert (= (and b!6535624 (not res!2681575)) b!6535630))

(assert (= (and b!6535630 (not res!2681590)) b!6535631))

(assert (= (and b!6535631 (not res!2681591)) b!6535607))

(assert (= (and b!6535607 (not res!2681577)) b!6535623))

(assert (= (and b!6535623 (not res!2681562)) b!6535627))

(assert (= (and b!6535627 (not res!2681574)) b!6535620))

(assert (= (and b!6535620 res!2681571) b!6535597))

(assert (= (and b!6535620 (not res!2681593)) b!6535600))

(assert (= (and b!6535600 (not res!2681565)) b!6535601))

(assert (= (and b!6535601 (not res!2681563)) b!6535592))

(assert (= (and b!6535592 (not res!2681592)) b!6535628))

(assert (= (and b!6535628 (not res!2681585)) b!6535603))

(assert (= (and b!6535603 (not res!2681589)) b!6535613))

(assert (= (and b!6535613 (not res!2681567)) b!6535591))

(assert (= (and b!6535591 (not res!2681566)) b!6535622))

(assert (= (and start!640802 ((_ is ElementMatch!16409) r!7292)) b!6535609))

(assert (= (and start!640802 ((_ is Concat!25254) r!7292)) b!6535599))

(assert (= (and start!640802 ((_ is Star!16409) r!7292)) b!6535587))

(assert (= (and start!640802 ((_ is Union!16409) r!7292)) b!6535621))

(assert (= (and start!640802 condSetEmpty!44586) setIsEmpty!44586))

(assert (= (and start!640802 (not condSetEmpty!44586)) setNonEmpty!44586))

(assert (= setNonEmpty!44586 b!6535594))

(assert (= b!6535608 b!6535615))

(assert (= (and start!640802 ((_ is Cons!65403) zl!343)) b!6535608))

(assert (= (and start!640802 ((_ is Cons!65404) s!2326)) b!6535596))

(declare-fun m!7318878 () Bool)

(assert (=> b!6535601 m!7318878))

(declare-fun m!7318880 () Bool)

(assert (=> b!6535601 m!7318880))

(declare-fun m!7318882 () Bool)

(assert (=> b!6535601 m!7318882))

(declare-fun m!7318884 () Bool)

(assert (=> b!6535601 m!7318884))

(declare-fun m!7318886 () Bool)

(assert (=> b!6535601 m!7318886))

(declare-fun m!7318888 () Bool)

(assert (=> b!6535601 m!7318888))

(declare-fun m!7318890 () Bool)

(assert (=> b!6535619 m!7318890))

(declare-fun m!7318892 () Bool)

(assert (=> b!6535607 m!7318892))

(declare-fun m!7318894 () Bool)

(assert (=> b!6535607 m!7318894))

(declare-fun m!7318896 () Bool)

(assert (=> b!6535607 m!7318896))

(declare-fun m!7318898 () Bool)

(assert (=> b!6535616 m!7318898))

(declare-fun m!7318900 () Bool)

(assert (=> b!6535614 m!7318900))

(declare-fun m!7318902 () Bool)

(assert (=> b!6535614 m!7318902))

(declare-fun m!7318904 () Bool)

(assert (=> b!6535614 m!7318904))

(declare-fun m!7318906 () Bool)

(assert (=> b!6535614 m!7318906))

(declare-fun m!7318908 () Bool)

(assert (=> b!6535614 m!7318908))

(assert (=> b!6535614 m!7318900))

(assert (=> b!6535614 m!7318906))

(declare-fun m!7318910 () Bool)

(assert (=> b!6535614 m!7318910))

(declare-fun m!7318912 () Bool)

(assert (=> b!6535612 m!7318912))

(declare-fun m!7318914 () Bool)

(assert (=> b!6535612 m!7318914))

(declare-fun m!7318916 () Bool)

(assert (=> b!6535612 m!7318916))

(declare-fun m!7318918 () Bool)

(assert (=> b!6535612 m!7318918))

(declare-fun m!7318920 () Bool)

(assert (=> b!6535612 m!7318920))

(declare-fun m!7318922 () Bool)

(assert (=> b!6535603 m!7318922))

(declare-fun m!7318924 () Bool)

(assert (=> b!6535598 m!7318924))

(declare-fun m!7318926 () Bool)

(assert (=> b!6535598 m!7318926))

(declare-fun m!7318928 () Bool)

(assert (=> b!6535598 m!7318928))

(declare-fun m!7318930 () Bool)

(assert (=> b!6535608 m!7318930))

(declare-fun m!7318932 () Bool)

(assert (=> b!6535618 m!7318932))

(declare-fun m!7318934 () Bool)

(assert (=> b!6535618 m!7318934))

(declare-fun m!7318936 () Bool)

(assert (=> b!6535628 m!7318936))

(declare-fun m!7318938 () Bool)

(assert (=> b!6535590 m!7318938))

(declare-fun m!7318940 () Bool)

(assert (=> b!6535610 m!7318940))

(declare-fun m!7318942 () Bool)

(assert (=> b!6535592 m!7318942))

(declare-fun m!7318944 () Bool)

(assert (=> b!6535592 m!7318944))

(declare-fun m!7318946 () Bool)

(assert (=> b!6535592 m!7318946))

(declare-fun m!7318948 () Bool)

(assert (=> b!6535592 m!7318948))

(declare-fun m!7318950 () Bool)

(assert (=> b!6535592 m!7318950))

(declare-fun m!7318952 () Bool)

(assert (=> b!6535617 m!7318952))

(declare-fun m!7318954 () Bool)

(assert (=> b!6535589 m!7318954))

(declare-fun m!7318956 () Bool)

(assert (=> b!6535604 m!7318956))

(assert (=> b!6535597 m!7318940))

(declare-fun m!7318958 () Bool)

(assert (=> b!6535606 m!7318958))

(assert (=> b!6535606 m!7318958))

(declare-fun m!7318960 () Bool)

(assert (=> b!6535606 m!7318960))

(declare-fun m!7318962 () Bool)

(assert (=> setNonEmpty!44586 m!7318962))

(declare-fun m!7318964 () Bool)

(assert (=> b!6535591 m!7318964))

(declare-fun m!7318966 () Bool)

(assert (=> b!6535611 m!7318966))

(declare-fun m!7318968 () Bool)

(assert (=> b!6535611 m!7318968))

(declare-fun m!7318970 () Bool)

(assert (=> b!6535611 m!7318970))

(declare-fun m!7318972 () Bool)

(assert (=> b!6535611 m!7318972))

(declare-fun m!7318974 () Bool)

(assert (=> b!6535611 m!7318974))

(declare-fun m!7318976 () Bool)

(assert (=> b!6535611 m!7318976))

(declare-fun m!7318978 () Bool)

(assert (=> b!6535611 m!7318978))

(declare-fun m!7318980 () Bool)

(assert (=> b!6535629 m!7318980))

(declare-fun m!7318982 () Bool)

(assert (=> start!640802 m!7318982))

(declare-fun m!7318984 () Bool)

(assert (=> b!6535623 m!7318984))

(declare-fun m!7318986 () Bool)

(assert (=> b!6535630 m!7318986))

(declare-fun m!7318988 () Bool)

(assert (=> b!6535630 m!7318988))

(declare-fun m!7318990 () Bool)

(assert (=> b!6535630 m!7318990))

(declare-fun m!7318992 () Bool)

(assert (=> b!6535630 m!7318992))

(declare-fun m!7318994 () Bool)

(assert (=> b!6535630 m!7318994))

(declare-fun m!7318996 () Bool)

(assert (=> b!6535630 m!7318996))

(declare-fun m!7318998 () Bool)

(assert (=> b!6535630 m!7318998))

(declare-fun m!7319000 () Bool)

(assert (=> b!6535630 m!7319000))

(declare-fun m!7319002 () Bool)

(assert (=> b!6535630 m!7319002))

(declare-fun m!7319004 () Bool)

(assert (=> b!6535626 m!7319004))

(declare-fun m!7319006 () Bool)

(assert (=> b!6535626 m!7319006))

(declare-fun m!7319008 () Bool)

(assert (=> b!6535626 m!7319008))

(declare-fun m!7319010 () Bool)

(assert (=> b!6535624 m!7319010))

(declare-fun m!7319012 () Bool)

(assert (=> b!6535631 m!7319012))

(assert (=> b!6535620 m!7319006))

(declare-fun m!7319014 () Bool)

(assert (=> b!6535613 m!7319014))

(declare-fun m!7319016 () Bool)

(assert (=> b!6535613 m!7319016))

(assert (=> b!6535613 m!7318880))

(declare-fun m!7319018 () Bool)

(assert (=> b!6535613 m!7319018))

(assert (=> b!6535613 m!7318880))

(declare-fun m!7319020 () Bool)

(assert (=> b!6535613 m!7319020))

(assert (=> b!6535613 m!7318886))

(assert (=> b!6535613 m!7318888))

(declare-fun m!7319022 () Bool)

(assert (=> b!6535613 m!7319022))

(check-sat (not b!6535594) (not b!6535597) (not b!6535606) (not b!6535604) (not setNonEmpty!44586) (not b!6535615) (not b!6535608) (not b!6535592) (not b!6535621) (not start!640802) (not b!6535630) tp_is_empty!42071 (not b!6535598) (not b!6535613) (not b!6535623) (not b!6535614) (not b!6535589) (not b!6535629) (not b!6535607) (not b!6535599) (not b!6535590) (not b!6535612) (not b!6535628) (not b!6535617) (not b!6535601) (not b!6535603) (not b!6535626) (not b!6535619) (not b!6535620) (not b!6535596) (not b!6535618) (not b!6535610) (not b!6535616) (not b!6535631) (not b!6535624) (not b!6535611) (not b!6535591) (not b!6535587))
(check-sat)
