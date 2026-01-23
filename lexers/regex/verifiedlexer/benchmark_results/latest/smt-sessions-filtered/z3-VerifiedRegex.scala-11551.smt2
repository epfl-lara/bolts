; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!636310 () Bool)

(assert start!636310)

(declare-fun b!6464830 () Bool)

(assert (=> b!6464830 true))

(assert (=> b!6464830 true))

(declare-fun lambda!357368 () Int)

(declare-fun lambda!357367 () Int)

(assert (=> b!6464830 (not (= lambda!357368 lambda!357367))))

(assert (=> b!6464830 true))

(assert (=> b!6464830 true))

(declare-fun b!6464829 () Bool)

(assert (=> b!6464829 true))

(declare-fun bs!1636355 () Bool)

(declare-fun b!6464817 () Bool)

(assert (= bs!1636355 (and b!6464817 b!6464830)))

(declare-datatypes ((C!32968 0))(
  ( (C!32969 (val!26186 Int)) )
))
(declare-datatypes ((Regex!16349 0))(
  ( (ElementMatch!16349 (c!1183271 C!32968)) (Concat!25194 (regOne!33210 Regex!16349) (regTwo!33210 Regex!16349)) (EmptyExpr!16349) (Star!16349 (reg!16678 Regex!16349)) (EmptyLang!16349) (Union!16349 (regOne!33211 Regex!16349) (regTwo!33211 Regex!16349)) )
))
(declare-fun r!7292 () Regex!16349)

(declare-fun lt!2383834 () Regex!16349)

(declare-fun lambda!357370 () Int)

(assert (=> bs!1636355 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357370 lambda!357367))))

(assert (=> bs!1636355 (not (= lambda!357370 lambda!357368))))

(assert (=> b!6464817 true))

(assert (=> b!6464817 true))

(assert (=> b!6464817 true))

(declare-fun lambda!357371 () Int)

(assert (=> bs!1636355 (not (= lambda!357371 lambda!357367))))

(assert (=> bs!1636355 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357371 lambda!357368))))

(assert (=> b!6464817 (not (= lambda!357371 lambda!357370))))

(assert (=> b!6464817 true))

(assert (=> b!6464817 true))

(assert (=> b!6464817 true))

(declare-fun bs!1636356 () Bool)

(declare-fun b!6464855 () Bool)

(assert (= bs!1636356 (and b!6464855 b!6464830)))

(declare-datatypes ((List!65346 0))(
  ( (Nil!65222) (Cons!65222 (h!71670 C!32968) (t!378968 List!65346)) )
))
(declare-fun s!2326 () List!65346)

(declare-fun lambda!357372 () Int)

(declare-datatypes ((tuple2!66656 0))(
  ( (tuple2!66657 (_1!36631 List!65346) (_2!36631 List!65346)) )
))
(declare-fun lt!2383796 () tuple2!66656)

(assert (=> bs!1636356 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357372 lambda!357367))))

(assert (=> bs!1636356 (not (= lambda!357372 lambda!357368))))

(declare-fun bs!1636357 () Bool)

(assert (= bs!1636357 (and b!6464855 b!6464817)))

(assert (=> bs!1636357 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) lt!2383834) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357372 lambda!357370))))

(assert (=> bs!1636357 (not (= lambda!357372 lambda!357371))))

(assert (=> b!6464855 true))

(assert (=> b!6464855 true))

(assert (=> b!6464855 true))

(declare-fun lambda!357373 () Int)

(assert (=> b!6464855 (not (= lambda!357373 lambda!357372))))

(assert (=> bs!1636356 (not (= lambda!357373 lambda!357367))))

(assert (=> bs!1636357 (not (= lambda!357373 lambda!357370))))

(assert (=> bs!1636357 (not (= lambda!357373 lambda!357371))))

(assert (=> bs!1636356 (not (= lambda!357373 lambda!357368))))

(assert (=> b!6464855 true))

(assert (=> b!6464855 true))

(assert (=> b!6464855 true))

(declare-fun lambda!357374 () Int)

(assert (=> b!6464855 (not (= lambda!357374 lambda!357373))))

(assert (=> b!6464855 (not (= lambda!357374 lambda!357372))))

(assert (=> bs!1636356 (not (= lambda!357374 lambda!357367))))

(assert (=> bs!1636357 (not (= lambda!357374 lambda!357370))))

(assert (=> bs!1636357 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) lt!2383834) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357374 lambda!357371))))

(assert (=> bs!1636356 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357374 lambda!357368))))

(assert (=> b!6464855 true))

(assert (=> b!6464855 true))

(assert (=> b!6464855 true))

(declare-fun e!3919475 () Bool)

(declare-fun e!3919480 () Bool)

(assert (=> b!6464817 (= e!3919475 e!3919480)))

(declare-fun res!2655020 () Bool)

(assert (=> b!6464817 (=> res!2655020 e!3919480)))

(declare-fun ++!14417 (List!65346 List!65346) List!65346)

(assert (=> b!6464817 (= res!2655020 (not (= (++!14417 (_1!36631 lt!2383796) (_2!36631 lt!2383796)) s!2326)))))

(declare-datatypes ((Option!16240 0))(
  ( (None!16239) (Some!16239 (v!52416 tuple2!66656)) )
))
(declare-fun lt!2383809 () Option!16240)

(declare-fun get!22607 (Option!16240) tuple2!66656)

(assert (=> b!6464817 (= lt!2383796 (get!22607 lt!2383809))))

(declare-fun Exists!3419 (Int) Bool)

(assert (=> b!6464817 (= (Exists!3419 lambda!357370) (Exists!3419 lambda!357371))))

(declare-datatypes ((Unit!158727 0))(
  ( (Unit!158728) )
))
(declare-fun lt!2383806 () Unit!158727)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1956 (Regex!16349 Regex!16349 List!65346) Unit!158727)

(assert (=> b!6464817 (= lt!2383806 (lemmaExistCutMatchRandMatchRSpecEquivalent!1956 lt!2383834 (regTwo!33210 r!7292) s!2326))))

(declare-fun isDefined!12943 (Option!16240) Bool)

(assert (=> b!6464817 (= (isDefined!12943 lt!2383809) (Exists!3419 lambda!357370))))

(declare-fun findConcatSeparation!2654 (Regex!16349 Regex!16349 List!65346 List!65346 List!65346) Option!16240)

(assert (=> b!6464817 (= lt!2383809 (findConcatSeparation!2654 lt!2383834 (regTwo!33210 r!7292) Nil!65222 s!2326 s!2326))))

(declare-fun lt!2383833 () Unit!158727)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2418 (Regex!16349 Regex!16349 List!65346) Unit!158727)

(assert (=> b!6464817 (= lt!2383833 (lemmaFindConcatSeparationEquivalentToExists!2418 lt!2383834 (regTwo!33210 r!7292) s!2326))))

(declare-fun b!6464818 () Bool)

(declare-fun e!3919472 () Bool)

(declare-fun tp!1792683 () Bool)

(assert (=> b!6464818 (= e!3919472 tp!1792683)))

(declare-fun b!6464819 () Bool)

(declare-fun res!2654999 () Bool)

(declare-fun e!3919467 () Bool)

(assert (=> b!6464819 (=> res!2654999 e!3919467)))

(declare-fun lt!2383814 () tuple2!66656)

(declare-fun matchR!8532 (Regex!16349 List!65346) Bool)

(assert (=> b!6464819 (= res!2654999 (not (matchR!8532 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814))))))

(declare-fun b!6464820 () Bool)

(declare-fun e!3919466 () Bool)

(declare-fun nullable!6342 (Regex!16349) Bool)

(assert (=> b!6464820 (= e!3919466 (nullable!6342 (regOne!33210 (regOne!33210 r!7292))))))

(declare-fun b!6464821 () Bool)

(declare-fun e!3919474 () Bool)

(assert (=> b!6464821 (= e!3919467 e!3919474)))

(declare-fun res!2655009 () Bool)

(assert (=> b!6464821 (=> res!2655009 e!3919474)))

(declare-fun lt!2383807 () Regex!16349)

(declare-fun validRegex!8085 (Regex!16349) Bool)

(assert (=> b!6464821 (= res!2655009 (not (validRegex!8085 lt!2383807)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65347 0))(
  ( (Nil!65223) (Cons!65223 (h!71671 Regex!16349) (t!378969 List!65347)) )
))
(declare-datatypes ((Context!11466 0))(
  ( (Context!11467 (exprs!6233 List!65347)) )
))
(declare-fun lt!2383805 () (InoxSet Context!11466))

(declare-fun matchZipper!2361 ((InoxSet Context!11466) List!65346) Bool)

(assert (=> b!6464821 (matchZipper!2361 lt!2383805 (_1!36631 lt!2383814))))

(declare-datatypes ((List!65348 0))(
  ( (Nil!65224) (Cons!65224 (h!71672 Context!11466) (t!378970 List!65348)) )
))
(declare-fun lt!2383835 () List!65348)

(declare-fun lt!2383810 () Unit!158727)

(declare-fun theoremZipperRegexEquiv!815 ((InoxSet Context!11466) List!65348 Regex!16349 List!65346) Unit!158727)

(assert (=> b!6464821 (= lt!2383810 (theoremZipperRegexEquiv!815 lt!2383805 lt!2383835 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814)))))

(declare-fun lt!2383823 () List!65346)

(assert (=> b!6464821 (matchR!8532 lt!2383807 lt!2383823)))

(declare-fun lt!2383820 () Unit!158727)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!312 (Regex!16349 Regex!16349 List!65346 List!65346) Unit!158727)

(assert (=> b!6464821 (= lt!2383820 (lemmaTwoRegexMatchThenConcatMatchesConcatString!312 lt!2383834 (regTwo!33210 r!7292) (_2!36631 lt!2383814) (_2!36631 lt!2383796)))))

(declare-fun lt!2383829 () List!65346)

(assert (=> b!6464821 (matchR!8532 lt!2383834 lt!2383829)))

(declare-fun lt!2383838 () Unit!158727)

(declare-fun lemmaStarApp!126 (Regex!16349 List!65346 List!65346) Unit!158727)

(assert (=> b!6464821 (= lt!2383838 (lemmaStarApp!126 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814) (_2!36631 lt!2383814)))))

(declare-fun b!6464822 () Bool)

(declare-fun res!2655029 () Bool)

(declare-fun e!3919464 () Bool)

(assert (=> b!6464822 (=> res!2655029 e!3919464)))

(declare-fun lt!2383797 () (InoxSet Context!11466))

(declare-fun lt!2383819 () (InoxSet Context!11466))

(assert (=> b!6464822 (= res!2655029 (not (= (matchZipper!2361 lt!2383819 s!2326) (matchZipper!2361 lt!2383797 (t!378968 s!2326)))))))

(declare-fun b!6464823 () Bool)

(declare-fun res!2655017 () Bool)

(declare-fun e!3919483 () Bool)

(assert (=> b!6464823 (=> res!2655017 e!3919483)))

(declare-fun zl!343 () List!65348)

(declare-fun isEmpty!37400 (List!65347) Bool)

(assert (=> b!6464823 (= res!2655017 (isEmpty!37400 (t!378969 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun b!6464824 () Bool)

(declare-fun e!3919469 () Bool)

(declare-fun tp_is_empty!41951 () Bool)

(declare-fun tp!1792685 () Bool)

(assert (=> b!6464824 (= e!3919469 (and tp_is_empty!41951 tp!1792685))))

(declare-fun setIsEmpty!44057 () Bool)

(declare-fun setRes!44057 () Bool)

(assert (=> setIsEmpty!44057 setRes!44057))

(declare-fun b!6464825 () Bool)

(declare-fun e!3919481 () Bool)

(declare-fun lt!2383802 () (InoxSet Context!11466))

(assert (=> b!6464825 (= e!3919481 (matchZipper!2361 lt!2383802 (t!378968 s!2326)))))

(declare-fun b!6464826 () Bool)

(declare-fun res!2655016 () Bool)

(declare-fun e!3919477 () Bool)

(assert (=> b!6464826 (=> (not res!2655016) (not e!3919477))))

(declare-fun z!1189 () (InoxSet Context!11466))

(declare-fun toList!10133 ((InoxSet Context!11466)) List!65348)

(assert (=> b!6464826 (= res!2655016 (= (toList!10133 z!1189) zl!343))))

(declare-fun b!6464827 () Bool)

(declare-fun res!2655006 () Bool)

(declare-fun e!3919476 () Bool)

(assert (=> b!6464827 (=> res!2655006 e!3919476)))

(get-info :version)

(assert (=> b!6464827 (= res!2655006 (or ((_ is Concat!25194) (regOne!33210 r!7292)) (not ((_ is Star!16349) (regOne!33210 r!7292)))))))

(declare-fun b!6464828 () Bool)

(declare-fun res!2655021 () Bool)

(assert (=> b!6464828 (=> res!2655021 e!3919464)))

(declare-fun lt!2383789 () Regex!16349)

(assert (=> b!6464828 (= res!2655021 (not (= lt!2383789 r!7292)))))

(assert (=> b!6464829 (= e!3919483 e!3919476)))

(declare-fun res!2655002 () Bool)

(assert (=> b!6464829 (=> res!2655002 e!3919476)))

(assert (=> b!6464829 (= res!2655002 (or (and ((_ is ElementMatch!16349) (regOne!33210 r!7292)) (= (c!1183271 (regOne!33210 r!7292)) (h!71670 s!2326))) ((_ is Union!16349) (regOne!33210 r!7292))))))

(declare-fun lt!2383824 () Unit!158727)

(declare-fun e!3919473 () Unit!158727)

(assert (=> b!6464829 (= lt!2383824 e!3919473)))

(declare-fun c!1183270 () Bool)

(assert (=> b!6464829 (= c!1183270 (nullable!6342 (h!71671 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun lambda!357369 () Int)

(declare-fun flatMap!1854 ((InoxSet Context!11466) Int) (InoxSet Context!11466))

(declare-fun derivationStepZipperUp!1523 (Context!11466 C!32968) (InoxSet Context!11466))

(assert (=> b!6464829 (= (flatMap!1854 z!1189 lambda!357369) (derivationStepZipperUp!1523 (h!71672 zl!343) (h!71670 s!2326)))))

(declare-fun lt!2383815 () Unit!158727)

(declare-fun lemmaFlatMapOnSingletonSet!1380 ((InoxSet Context!11466) Context!11466 Int) Unit!158727)

(assert (=> b!6464829 (= lt!2383815 (lemmaFlatMapOnSingletonSet!1380 z!1189 (h!71672 zl!343) lambda!357369))))

(declare-fun lt!2383803 () Context!11466)

(assert (=> b!6464829 (= lt!2383802 (derivationStepZipperUp!1523 lt!2383803 (h!71670 s!2326)))))

(declare-fun lt!2383792 () (InoxSet Context!11466))

(declare-fun derivationStepZipperDown!1597 (Regex!16349 Context!11466 C!32968) (InoxSet Context!11466))

(assert (=> b!6464829 (= lt!2383792 (derivationStepZipperDown!1597 (h!71671 (exprs!6233 (h!71672 zl!343))) lt!2383803 (h!71670 s!2326)))))

(assert (=> b!6464829 (= lt!2383803 (Context!11467 (t!378969 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun lt!2383836 () (InoxSet Context!11466))

(assert (=> b!6464829 (= lt!2383836 (derivationStepZipperUp!1523 (Context!11467 (Cons!65223 (h!71671 (exprs!6233 (h!71672 zl!343))) (t!378969 (exprs!6233 (h!71672 zl!343))))) (h!71670 s!2326)))))

(declare-fun e!3919465 () Bool)

(assert (=> b!6464830 (= e!3919465 e!3919483)))

(declare-fun res!2655001 () Bool)

(assert (=> b!6464830 (=> res!2655001 e!3919483)))

(declare-fun lt!2383795 () Bool)

(declare-fun lt!2383799 () Bool)

(assert (=> b!6464830 (= res!2655001 (or (not (= lt!2383799 lt!2383795)) ((_ is Nil!65222) s!2326)))))

(assert (=> b!6464830 (= (Exists!3419 lambda!357367) (Exists!3419 lambda!357368))))

(declare-fun lt!2383798 () Unit!158727)

(assert (=> b!6464830 (= lt!2383798 (lemmaExistCutMatchRandMatchRSpecEquivalent!1956 (regOne!33210 r!7292) (regTwo!33210 r!7292) s!2326))))

(assert (=> b!6464830 (= lt!2383795 (Exists!3419 lambda!357367))))

(assert (=> b!6464830 (= lt!2383795 (isDefined!12943 (findConcatSeparation!2654 (regOne!33210 r!7292) (regTwo!33210 r!7292) Nil!65222 s!2326 s!2326)))))

(declare-fun lt!2383825 () Unit!158727)

(assert (=> b!6464830 (= lt!2383825 (lemmaFindConcatSeparationEquivalentToExists!2418 (regOne!33210 r!7292) (regTwo!33210 r!7292) s!2326))))

(declare-fun b!6464831 () Bool)

(declare-fun res!2654998 () Bool)

(assert (=> b!6464831 (=> res!2654998 e!3919476)))

(assert (=> b!6464831 (= res!2654998 e!3919466)))

(declare-fun res!2655026 () Bool)

(assert (=> b!6464831 (=> (not res!2655026) (not e!3919466))))

(assert (=> b!6464831 (= res!2655026 ((_ is Concat!25194) (regOne!33210 r!7292)))))

(declare-fun res!2655013 () Bool)

(assert (=> start!636310 (=> (not res!2655013) (not e!3919477))))

(assert (=> start!636310 (= res!2655013 (validRegex!8085 r!7292))))

(assert (=> start!636310 e!3919477))

(assert (=> start!636310 e!3919472))

(declare-fun condSetEmpty!44057 () Bool)

(assert (=> start!636310 (= condSetEmpty!44057 (= z!1189 ((as const (Array Context!11466 Bool)) false)))))

(assert (=> start!636310 setRes!44057))

(declare-fun e!3919460 () Bool)

(assert (=> start!636310 e!3919460))

(assert (=> start!636310 e!3919469))

(declare-fun b!6464832 () Bool)

(declare-fun tp!1792689 () Bool)

(declare-fun tp!1792686 () Bool)

(assert (=> b!6464832 (= e!3919472 (and tp!1792689 tp!1792686))))

(declare-fun b!6464833 () Bool)

(declare-fun e!3919482 () Bool)

(declare-fun e!3919479 () Bool)

(assert (=> b!6464833 (= e!3919482 e!3919479)))

(declare-fun res!2655003 () Bool)

(assert (=> b!6464833 (=> res!2655003 e!3919479)))

(declare-fun lt!2383816 () List!65348)

(declare-fun unfocusZipper!2091 (List!65348) Regex!16349)

(assert (=> b!6464833 (= res!2655003 (not (= (unfocusZipper!2091 lt!2383816) lt!2383807)))))

(declare-fun lt!2383801 () Context!11466)

(assert (=> b!6464833 (= lt!2383816 (Cons!65224 lt!2383801 Nil!65224))))

(declare-fun b!6464834 () Bool)

(declare-fun e!3919484 () Bool)

(assert (=> b!6464834 (= e!3919464 e!3919484)))

(declare-fun res!2655030 () Bool)

(assert (=> b!6464834 (=> res!2655030 e!3919484)))

(assert (=> b!6464834 (= res!2655030 (not (= r!7292 lt!2383807)))))

(assert (=> b!6464834 (= lt!2383807 (Concat!25194 lt!2383834 (regTwo!33210 r!7292)))))

(declare-fun b!6464835 () Bool)

(declare-fun res!2655011 () Bool)

(assert (=> b!6464835 (=> res!2655011 e!3919465)))

(declare-fun generalisedUnion!2193 (List!65347) Regex!16349)

(declare-fun unfocusZipperList!1770 (List!65348) List!65347)

(assert (=> b!6464835 (= res!2655011 (not (= r!7292 (generalisedUnion!2193 (unfocusZipperList!1770 zl!343)))))))

(declare-fun b!6464836 () Bool)

(assert (=> b!6464836 (= e!3919472 tp_is_empty!41951)))

(declare-fun b!6464837 () Bool)

(declare-fun res!2655018 () Bool)

(assert (=> b!6464837 (=> res!2655018 e!3919480)))

(declare-fun isEmpty!37401 (List!65346) Bool)

(assert (=> b!6464837 (= res!2655018 (isEmpty!37401 (_1!36631 lt!2383796)))))

(declare-fun b!6464838 () Bool)

(declare-fun e!3919471 () Bool)

(assert (=> b!6464838 (= e!3919477 e!3919471)))

(declare-fun res!2655004 () Bool)

(assert (=> b!6464838 (=> (not res!2655004) (not e!3919471))))

(assert (=> b!6464838 (= res!2655004 (= r!7292 lt!2383789))))

(assert (=> b!6464838 (= lt!2383789 (unfocusZipper!2091 zl!343))))

(declare-fun setNonEmpty!44057 () Bool)

(declare-fun tp!1792688 () Bool)

(declare-fun e!3919470 () Bool)

(declare-fun setElem!44057 () Context!11466)

(declare-fun inv!84119 (Context!11466) Bool)

(assert (=> setNonEmpty!44057 (= setRes!44057 (and tp!1792688 (inv!84119 setElem!44057) e!3919470))))

(declare-fun setRest!44057 () (InoxSet Context!11466))

(assert (=> setNonEmpty!44057 (= z!1189 ((_ map or) (store ((as const (Array Context!11466 Bool)) false) setElem!44057 true) setRest!44057))))

(declare-fun b!6464839 () Bool)

(declare-fun e!3919462 () Bool)

(assert (=> b!6464839 (= e!3919484 e!3919462)))

(declare-fun res!2654997 () Bool)

(assert (=> b!6464839 (=> res!2654997 e!3919462)))

(declare-fun lt!2383818 () Context!11466)

(declare-fun lt!2383832 () Regex!16349)

(assert (=> b!6464839 (= res!2654997 (not (= (unfocusZipper!2091 (Cons!65224 lt!2383818 Nil!65224)) lt!2383832)))))

(assert (=> b!6464839 (= lt!2383832 (Concat!25194 (reg!16678 (regOne!33210 r!7292)) lt!2383807))))

(declare-fun b!6464840 () Bool)

(declare-fun Unit!158729 () Unit!158727)

(assert (=> b!6464840 (= e!3919473 Unit!158729)))

(declare-fun b!6464841 () Bool)

(declare-fun e!3919468 () Bool)

(assert (=> b!6464841 (= e!3919468 e!3919467)))

(declare-fun res!2655019 () Bool)

(assert (=> b!6464841 (=> res!2655019 e!3919467)))

(declare-fun lt!2383793 () List!65346)

(assert (=> b!6464841 (= res!2655019 (not (= lt!2383793 s!2326)))))

(assert (=> b!6464841 (= lt!2383793 (++!14417 (_1!36631 lt!2383814) lt!2383823))))

(assert (=> b!6464841 (= lt!2383793 (++!14417 lt!2383829 (_2!36631 lt!2383796)))))

(assert (=> b!6464841 (= lt!2383823 (++!14417 (_2!36631 lt!2383814) (_2!36631 lt!2383796)))))

(declare-fun lt!2383808 () Unit!158727)

(declare-fun lemmaConcatAssociativity!2920 (List!65346 List!65346 List!65346) Unit!158727)

(assert (=> b!6464841 (= lt!2383808 (lemmaConcatAssociativity!2920 (_1!36631 lt!2383814) (_2!36631 lt!2383814) (_2!36631 lt!2383796)))))

(declare-fun b!6464842 () Bool)

(declare-fun Unit!158730 () Unit!158727)

(assert (=> b!6464842 (= e!3919473 Unit!158730)))

(declare-fun lt!2383811 () Unit!158727)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1180 ((InoxSet Context!11466) (InoxSet Context!11466) List!65346) Unit!158727)

(assert (=> b!6464842 (= lt!2383811 (lemmaZipperConcatMatchesSameAsBothZippers!1180 lt!2383792 lt!2383802 (t!378968 s!2326)))))

(declare-fun res!2655005 () Bool)

(assert (=> b!6464842 (= res!2655005 (matchZipper!2361 lt!2383792 (t!378968 s!2326)))))

(assert (=> b!6464842 (=> res!2655005 e!3919481)))

(assert (=> b!6464842 (= (matchZipper!2361 ((_ map or) lt!2383792 lt!2383802) (t!378968 s!2326)) e!3919481)))

(declare-fun b!6464843 () Bool)

(declare-fun lt!2383787 () (InoxSet Context!11466))

(assert (=> b!6464843 (= e!3919474 (= (toList!10133 lt!2383787) lt!2383816))))

(declare-fun b!6464844 () Bool)

(assert (=> b!6464844 (= e!3919471 (not e!3919465))))

(declare-fun res!2655027 () Bool)

(assert (=> b!6464844 (=> res!2655027 e!3919465)))

(assert (=> b!6464844 (= res!2655027 (not ((_ is Cons!65224) zl!343)))))

(declare-fun lt!2383830 () Bool)

(assert (=> b!6464844 (= lt!2383799 lt!2383830)))

(declare-fun matchRSpec!3450 (Regex!16349 List!65346) Bool)

(assert (=> b!6464844 (= lt!2383830 (matchRSpec!3450 r!7292 s!2326))))

(assert (=> b!6464844 (= lt!2383799 (matchR!8532 r!7292 s!2326))))

(declare-fun lt!2383828 () Unit!158727)

(declare-fun mainMatchTheorem!3450 (Regex!16349 List!65346) Unit!158727)

(assert (=> b!6464844 (= lt!2383828 (mainMatchTheorem!3450 r!7292 s!2326))))

(declare-fun b!6464845 () Bool)

(declare-fun e!3919463 () Bool)

(assert (=> b!6464845 (= e!3919463 e!3919464)))

(declare-fun res!2655022 () Bool)

(assert (=> b!6464845 (=> res!2655022 e!3919464)))

(declare-fun lt!2383831 () (InoxSet Context!11466))

(assert (=> b!6464845 (= res!2655022 (not (= lt!2383797 lt!2383831)))))

(assert (=> b!6464845 (= (flatMap!1854 lt!2383819 lambda!357369) (derivationStepZipperUp!1523 lt!2383818 (h!71670 s!2326)))))

(declare-fun lt!2383813 () Unit!158727)

(assert (=> b!6464845 (= lt!2383813 (lemmaFlatMapOnSingletonSet!1380 lt!2383819 lt!2383818 lambda!357369))))

(declare-fun lt!2383791 () (InoxSet Context!11466))

(assert (=> b!6464845 (= lt!2383791 (derivationStepZipperUp!1523 lt!2383818 (h!71670 s!2326)))))

(declare-fun derivationStepZipper!2315 ((InoxSet Context!11466) C!32968) (InoxSet Context!11466))

(assert (=> b!6464845 (= lt!2383797 (derivationStepZipper!2315 lt!2383819 (h!71670 s!2326)))))

(assert (=> b!6464845 (= lt!2383819 (store ((as const (Array Context!11466 Bool)) false) lt!2383818 true))))

(declare-fun lt!2383794 () List!65347)

(assert (=> b!6464845 (= lt!2383818 (Context!11467 (Cons!65223 (reg!16678 (regOne!33210 r!7292)) lt!2383794)))))

(declare-fun b!6464846 () Bool)

(declare-fun res!2655010 () Bool)

(assert (=> b!6464846 (=> res!2655010 e!3919465)))

(assert (=> b!6464846 (= res!2655010 (or ((_ is EmptyExpr!16349) r!7292) ((_ is EmptyLang!16349) r!7292) ((_ is ElementMatch!16349) r!7292) ((_ is Union!16349) r!7292) (not ((_ is Concat!25194) r!7292))))))

(declare-fun b!6464847 () Bool)

(assert (=> b!6464847 (= e!3919476 e!3919463)))

(declare-fun res!2655025 () Bool)

(assert (=> b!6464847 (=> res!2655025 e!3919463)))

(assert (=> b!6464847 (= res!2655025 (not (= lt!2383792 lt!2383831)))))

(assert (=> b!6464847 (= lt!2383831 (derivationStepZipperDown!1597 (reg!16678 (regOne!33210 r!7292)) lt!2383801 (h!71670 s!2326)))))

(assert (=> b!6464847 (= lt!2383801 (Context!11467 lt!2383794))))

(assert (=> b!6464847 (= lt!2383794 (Cons!65223 lt!2383834 (t!378969 (exprs!6233 (h!71672 zl!343)))))))

(assert (=> b!6464847 (= lt!2383834 (Star!16349 (reg!16678 (regOne!33210 r!7292))))))

(declare-fun b!6464848 () Bool)

(declare-fun res!2655000 () Bool)

(assert (=> b!6464848 (=> res!2655000 e!3919467)))

(assert (=> b!6464848 (= res!2655000 (not (matchR!8532 lt!2383834 (_2!36631 lt!2383814))))))

(declare-fun b!6464849 () Bool)

(declare-fun res!2655023 () Bool)

(assert (=> b!6464849 (=> res!2655023 e!3919465)))

(declare-fun generalisedConcat!1946 (List!65347) Regex!16349)

(assert (=> b!6464849 (= res!2655023 (not (= r!7292 (generalisedConcat!1946 (exprs!6233 (h!71672 zl!343))))))))

(declare-fun b!6464850 () Bool)

(declare-fun e!3919478 () Bool)

(declare-fun tp!1792691 () Bool)

(assert (=> b!6464850 (= e!3919478 tp!1792691)))

(declare-fun b!6464851 () Bool)

(declare-fun res!2655015 () Bool)

(assert (=> b!6464851 (=> res!2655015 e!3919465)))

(declare-fun isEmpty!37402 (List!65348) Bool)

(assert (=> b!6464851 (= res!2655015 (not (isEmpty!37402 (t!378970 zl!343))))))

(declare-fun b!6464852 () Bool)

(declare-fun res!2655024 () Bool)

(assert (=> b!6464852 (=> res!2655024 e!3919480)))

(assert (=> b!6464852 (= res!2655024 (not (matchR!8532 lt!2383834 (_1!36631 lt!2383796))))))

(declare-fun b!6464853 () Bool)

(declare-fun tp!1792684 () Bool)

(declare-fun tp!1792692 () Bool)

(assert (=> b!6464853 (= e!3919472 (and tp!1792684 tp!1792692))))

(declare-fun b!6464854 () Bool)

(declare-fun res!2655028 () Bool)

(assert (=> b!6464854 (=> res!2655028 e!3919465)))

(assert (=> b!6464854 (= res!2655028 (not ((_ is Cons!65223) (exprs!6233 (h!71672 zl!343)))))))

(assert (=> b!6464855 (= e!3919480 e!3919468)))

(declare-fun res!2654996 () Bool)

(assert (=> b!6464855 (=> res!2654996 e!3919468)))

(assert (=> b!6464855 (= res!2654996 (not (= (_1!36631 lt!2383796) lt!2383829)))))

(assert (=> b!6464855 (= lt!2383829 (++!14417 (_1!36631 lt!2383814) (_2!36631 lt!2383814)))))

(declare-fun lt!2383837 () Option!16240)

(assert (=> b!6464855 (= lt!2383814 (get!22607 lt!2383837))))

(assert (=> b!6464855 (= (Exists!3419 lambda!357372) (Exists!3419 lambda!357374))))

(declare-fun lt!2383826 () Unit!158727)

(assert (=> b!6464855 (= lt!2383826 (lemmaExistCutMatchRandMatchRSpecEquivalent!1956 (reg!16678 (regOne!33210 r!7292)) lt!2383834 (_1!36631 lt!2383796)))))

(assert (=> b!6464855 (= (Exists!3419 lambda!357372) (Exists!3419 lambda!357373))))

(declare-fun lt!2383822 () Unit!158727)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!640 (Regex!16349 List!65346) Unit!158727)

(assert (=> b!6464855 (= lt!2383822 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!640 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383796)))))

(assert (=> b!6464855 (= (isDefined!12943 lt!2383837) (Exists!3419 lambda!357372))))

(assert (=> b!6464855 (= lt!2383837 (findConcatSeparation!2654 (reg!16678 (regOne!33210 r!7292)) lt!2383834 Nil!65222 (_1!36631 lt!2383796) (_1!36631 lt!2383796)))))

(declare-fun lt!2383800 () Unit!158727)

(assert (=> b!6464855 (= lt!2383800 (lemmaFindConcatSeparationEquivalentToExists!2418 (reg!16678 (regOne!33210 r!7292)) lt!2383834 (_1!36631 lt!2383796)))))

(assert (=> b!6464855 (matchRSpec!3450 lt!2383834 (_1!36631 lt!2383796))))

(declare-fun lt!2383788 () Unit!158727)

(assert (=> b!6464855 (= lt!2383788 (mainMatchTheorem!3450 lt!2383834 (_1!36631 lt!2383796)))))

(declare-fun b!6464856 () Bool)

(declare-fun tp!1792687 () Bool)

(assert (=> b!6464856 (= e!3919460 (and (inv!84119 (h!71672 zl!343)) e!3919478 tp!1792687))))

(declare-fun b!6464857 () Bool)

(declare-fun res!2655008 () Bool)

(assert (=> b!6464857 (=> res!2655008 e!3919480)))

(assert (=> b!6464857 (= res!2655008 (not (matchR!8532 (regTwo!33210 r!7292) (_2!36631 lt!2383796))))))

(declare-fun b!6464858 () Bool)

(assert (=> b!6464858 (= e!3919479 e!3919475)))

(declare-fun res!2655012 () Bool)

(assert (=> b!6464858 (=> res!2655012 e!3919475)))

(assert (=> b!6464858 (= res!2655012 (not lt!2383799))))

(declare-fun e!3919461 () Bool)

(assert (=> b!6464858 e!3919461))

(declare-fun res!2655014 () Bool)

(assert (=> b!6464858 (=> (not res!2655014) (not e!3919461))))

(assert (=> b!6464858 (= res!2655014 (= (matchR!8532 lt!2383832 s!2326) (matchRSpec!3450 lt!2383832 s!2326)))))

(declare-fun lt!2383804 () Unit!158727)

(assert (=> b!6464858 (= lt!2383804 (mainMatchTheorem!3450 lt!2383832 s!2326))))

(declare-fun b!6464859 () Bool)

(assert (=> b!6464859 (= e!3919462 e!3919482)))

(declare-fun res!2655007 () Bool)

(assert (=> b!6464859 (=> res!2655007 e!3919482)))

(assert (=> b!6464859 (= res!2655007 (not (= (unfocusZipper!2091 lt!2383835) (reg!16678 (regOne!33210 r!7292)))))))

(declare-fun lt!2383817 () Context!11466)

(assert (=> b!6464859 (= lt!2383835 (Cons!65224 lt!2383817 Nil!65224))))

(assert (=> b!6464859 (= (flatMap!1854 lt!2383787 lambda!357369) (derivationStepZipperUp!1523 lt!2383801 (h!71670 s!2326)))))

(declare-fun lt!2383827 () Unit!158727)

(assert (=> b!6464859 (= lt!2383827 (lemmaFlatMapOnSingletonSet!1380 lt!2383787 lt!2383801 lambda!357369))))

(assert (=> b!6464859 (= (flatMap!1854 lt!2383805 lambda!357369) (derivationStepZipperUp!1523 lt!2383817 (h!71670 s!2326)))))

(declare-fun lt!2383790 () Unit!158727)

(assert (=> b!6464859 (= lt!2383790 (lemmaFlatMapOnSingletonSet!1380 lt!2383805 lt!2383817 lambda!357369))))

(declare-fun lt!2383821 () (InoxSet Context!11466))

(assert (=> b!6464859 (= lt!2383821 (derivationStepZipperUp!1523 lt!2383801 (h!71670 s!2326)))))

(declare-fun lt!2383812 () (InoxSet Context!11466))

(assert (=> b!6464859 (= lt!2383812 (derivationStepZipperUp!1523 lt!2383817 (h!71670 s!2326)))))

(assert (=> b!6464859 (= lt!2383787 (store ((as const (Array Context!11466 Bool)) false) lt!2383801 true))))

(assert (=> b!6464859 (= lt!2383805 (store ((as const (Array Context!11466 Bool)) false) lt!2383817 true))))

(assert (=> b!6464859 (= lt!2383817 (Context!11467 (Cons!65223 (reg!16678 (regOne!33210 r!7292)) Nil!65223)))))

(declare-fun b!6464860 () Bool)

(assert (=> b!6464860 (= e!3919461 (or (not lt!2383799) lt!2383830))))

(declare-fun b!6464861 () Bool)

(declare-fun tp!1792690 () Bool)

(assert (=> b!6464861 (= e!3919470 tp!1792690)))

(assert (= (and start!636310 res!2655013) b!6464826))

(assert (= (and b!6464826 res!2655016) b!6464838))

(assert (= (and b!6464838 res!2655004) b!6464844))

(assert (= (and b!6464844 (not res!2655027)) b!6464851))

(assert (= (and b!6464851 (not res!2655015)) b!6464849))

(assert (= (and b!6464849 (not res!2655023)) b!6464854))

(assert (= (and b!6464854 (not res!2655028)) b!6464835))

(assert (= (and b!6464835 (not res!2655011)) b!6464846))

(assert (= (and b!6464846 (not res!2655010)) b!6464830))

(assert (= (and b!6464830 (not res!2655001)) b!6464823))

(assert (= (and b!6464823 (not res!2655017)) b!6464829))

(assert (= (and b!6464829 c!1183270) b!6464842))

(assert (= (and b!6464829 (not c!1183270)) b!6464840))

(assert (= (and b!6464842 (not res!2655005)) b!6464825))

(assert (= (and b!6464829 (not res!2655002)) b!6464831))

(assert (= (and b!6464831 res!2655026) b!6464820))

(assert (= (and b!6464831 (not res!2654998)) b!6464827))

(assert (= (and b!6464827 (not res!2655006)) b!6464847))

(assert (= (and b!6464847 (not res!2655025)) b!6464845))

(assert (= (and b!6464845 (not res!2655022)) b!6464822))

(assert (= (and b!6464822 (not res!2655029)) b!6464828))

(assert (= (and b!6464828 (not res!2655021)) b!6464834))

(assert (= (and b!6464834 (not res!2655030)) b!6464839))

(assert (= (and b!6464839 (not res!2654997)) b!6464859))

(assert (= (and b!6464859 (not res!2655007)) b!6464833))

(assert (= (and b!6464833 (not res!2655003)) b!6464858))

(assert (= (and b!6464858 res!2655014) b!6464860))

(assert (= (and b!6464858 (not res!2655012)) b!6464817))

(assert (= (and b!6464817 (not res!2655020)) b!6464852))

(assert (= (and b!6464852 (not res!2655024)) b!6464857))

(assert (= (and b!6464857 (not res!2655008)) b!6464837))

(assert (= (and b!6464837 (not res!2655018)) b!6464855))

(assert (= (and b!6464855 (not res!2654996)) b!6464841))

(assert (= (and b!6464841 (not res!2655019)) b!6464819))

(assert (= (and b!6464819 (not res!2654999)) b!6464848))

(assert (= (and b!6464848 (not res!2655000)) b!6464821))

(assert (= (and b!6464821 (not res!2655009)) b!6464843))

(assert (= (and start!636310 ((_ is ElementMatch!16349) r!7292)) b!6464836))

(assert (= (and start!636310 ((_ is Concat!25194) r!7292)) b!6464832))

(assert (= (and start!636310 ((_ is Star!16349) r!7292)) b!6464818))

(assert (= (and start!636310 ((_ is Union!16349) r!7292)) b!6464853))

(assert (= (and start!636310 condSetEmpty!44057) setIsEmpty!44057))

(assert (= (and start!636310 (not condSetEmpty!44057)) setNonEmpty!44057))

(assert (= setNonEmpty!44057 b!6464861))

(assert (= b!6464856 b!6464850))

(assert (= (and start!636310 ((_ is Cons!65224) zl!343)) b!6464856))

(assert (= (and start!636310 ((_ is Cons!65222) s!2326)) b!6464824))

(declare-fun m!7253794 () Bool)

(assert (=> b!6464830 m!7253794))

(declare-fun m!7253796 () Bool)

(assert (=> b!6464830 m!7253796))

(declare-fun m!7253798 () Bool)

(assert (=> b!6464830 m!7253798))

(declare-fun m!7253800 () Bool)

(assert (=> b!6464830 m!7253800))

(declare-fun m!7253802 () Bool)

(assert (=> b!6464830 m!7253802))

(assert (=> b!6464830 m!7253794))

(assert (=> b!6464830 m!7253798))

(declare-fun m!7253804 () Bool)

(assert (=> b!6464830 m!7253804))

(declare-fun m!7253806 () Bool)

(assert (=> b!6464837 m!7253806))

(declare-fun m!7253808 () Bool)

(assert (=> b!6464848 m!7253808))

(declare-fun m!7253810 () Bool)

(assert (=> b!6464841 m!7253810))

(declare-fun m!7253812 () Bool)

(assert (=> b!6464841 m!7253812))

(declare-fun m!7253814 () Bool)

(assert (=> b!6464841 m!7253814))

(declare-fun m!7253816 () Bool)

(assert (=> b!6464841 m!7253816))

(declare-fun m!7253818 () Bool)

(assert (=> b!6464839 m!7253818))

(declare-fun m!7253820 () Bool)

(assert (=> b!6464852 m!7253820))

(declare-fun m!7253822 () Bool)

(assert (=> b!6464826 m!7253822))

(declare-fun m!7253824 () Bool)

(assert (=> b!6464825 m!7253824))

(declare-fun m!7253826 () Bool)

(assert (=> b!6464833 m!7253826))

(declare-fun m!7253828 () Bool)

(assert (=> b!6464821 m!7253828))

(declare-fun m!7253830 () Bool)

(assert (=> b!6464821 m!7253830))

(declare-fun m!7253832 () Bool)

(assert (=> b!6464821 m!7253832))

(declare-fun m!7253834 () Bool)

(assert (=> b!6464821 m!7253834))

(declare-fun m!7253836 () Bool)

(assert (=> b!6464821 m!7253836))

(declare-fun m!7253838 () Bool)

(assert (=> b!6464821 m!7253838))

(declare-fun m!7253840 () Bool)

(assert (=> b!6464821 m!7253840))

(declare-fun m!7253842 () Bool)

(assert (=> b!6464842 m!7253842))

(declare-fun m!7253844 () Bool)

(assert (=> b!6464842 m!7253844))

(declare-fun m!7253846 () Bool)

(assert (=> b!6464842 m!7253846))

(declare-fun m!7253848 () Bool)

(assert (=> b!6464823 m!7253848))

(declare-fun m!7253850 () Bool)

(assert (=> b!6464835 m!7253850))

(assert (=> b!6464835 m!7253850))

(declare-fun m!7253852 () Bool)

(assert (=> b!6464835 m!7253852))

(declare-fun m!7253854 () Bool)

(assert (=> b!6464849 m!7253854))

(declare-fun m!7253856 () Bool)

(assert (=> b!6464858 m!7253856))

(declare-fun m!7253858 () Bool)

(assert (=> b!6464858 m!7253858))

(declare-fun m!7253860 () Bool)

(assert (=> b!6464858 m!7253860))

(declare-fun m!7253862 () Bool)

(assert (=> b!6464845 m!7253862))

(declare-fun m!7253864 () Bool)

(assert (=> b!6464845 m!7253864))

(declare-fun m!7253866 () Bool)

(assert (=> b!6464845 m!7253866))

(declare-fun m!7253868 () Bool)

(assert (=> b!6464845 m!7253868))

(declare-fun m!7253870 () Bool)

(assert (=> b!6464845 m!7253870))

(declare-fun m!7253872 () Bool)

(assert (=> b!6464822 m!7253872))

(declare-fun m!7253874 () Bool)

(assert (=> b!6464822 m!7253874))

(declare-fun m!7253876 () Bool)

(assert (=> b!6464856 m!7253876))

(declare-fun m!7253878 () Bool)

(assert (=> setNonEmpty!44057 m!7253878))

(declare-fun m!7253880 () Bool)

(assert (=> b!6464857 m!7253880))

(declare-fun m!7253882 () Bool)

(assert (=> b!6464843 m!7253882))

(declare-fun m!7253884 () Bool)

(assert (=> b!6464819 m!7253884))

(declare-fun m!7253886 () Bool)

(assert (=> b!6464859 m!7253886))

(declare-fun m!7253888 () Bool)

(assert (=> b!6464859 m!7253888))

(declare-fun m!7253890 () Bool)

(assert (=> b!6464859 m!7253890))

(declare-fun m!7253892 () Bool)

(assert (=> b!6464859 m!7253892))

(declare-fun m!7253894 () Bool)

(assert (=> b!6464859 m!7253894))

(declare-fun m!7253896 () Bool)

(assert (=> b!6464859 m!7253896))

(declare-fun m!7253898 () Bool)

(assert (=> b!6464859 m!7253898))

(declare-fun m!7253900 () Bool)

(assert (=> b!6464859 m!7253900))

(declare-fun m!7253902 () Bool)

(assert (=> b!6464859 m!7253902))

(declare-fun m!7253904 () Bool)

(assert (=> b!6464855 m!7253904))

(declare-fun m!7253906 () Bool)

(assert (=> b!6464855 m!7253906))

(declare-fun m!7253908 () Bool)

(assert (=> b!6464855 m!7253908))

(declare-fun m!7253910 () Bool)

(assert (=> b!6464855 m!7253910))

(declare-fun m!7253912 () Bool)

(assert (=> b!6464855 m!7253912))

(assert (=> b!6464855 m!7253912))

(assert (=> b!6464855 m!7253912))

(declare-fun m!7253914 () Bool)

(assert (=> b!6464855 m!7253914))

(declare-fun m!7253916 () Bool)

(assert (=> b!6464855 m!7253916))

(declare-fun m!7253918 () Bool)

(assert (=> b!6464855 m!7253918))

(declare-fun m!7253920 () Bool)

(assert (=> b!6464855 m!7253920))

(declare-fun m!7253922 () Bool)

(assert (=> b!6464855 m!7253922))

(declare-fun m!7253924 () Bool)

(assert (=> b!6464855 m!7253924))

(declare-fun m!7253926 () Bool)

(assert (=> b!6464855 m!7253926))

(declare-fun m!7253928 () Bool)

(assert (=> b!6464820 m!7253928))

(declare-fun m!7253930 () Bool)

(assert (=> start!636310 m!7253930))

(declare-fun m!7253932 () Bool)

(assert (=> b!6464838 m!7253932))

(declare-fun m!7253934 () Bool)

(assert (=> b!6464817 m!7253934))

(declare-fun m!7253936 () Bool)

(assert (=> b!6464817 m!7253936))

(declare-fun m!7253938 () Bool)

(assert (=> b!6464817 m!7253938))

(declare-fun m!7253940 () Bool)

(assert (=> b!6464817 m!7253940))

(assert (=> b!6464817 m!7253936))

(declare-fun m!7253942 () Bool)

(assert (=> b!6464817 m!7253942))

(declare-fun m!7253944 () Bool)

(assert (=> b!6464817 m!7253944))

(declare-fun m!7253946 () Bool)

(assert (=> b!6464817 m!7253946))

(declare-fun m!7253948 () Bool)

(assert (=> b!6464817 m!7253948))

(declare-fun m!7253950 () Bool)

(assert (=> b!6464829 m!7253950))

(declare-fun m!7253952 () Bool)

(assert (=> b!6464829 m!7253952))

(declare-fun m!7253954 () Bool)

(assert (=> b!6464829 m!7253954))

(declare-fun m!7253956 () Bool)

(assert (=> b!6464829 m!7253956))

(declare-fun m!7253958 () Bool)

(assert (=> b!6464829 m!7253958))

(declare-fun m!7253960 () Bool)

(assert (=> b!6464829 m!7253960))

(declare-fun m!7253962 () Bool)

(assert (=> b!6464829 m!7253962))

(declare-fun m!7253964 () Bool)

(assert (=> b!6464851 m!7253964))

(declare-fun m!7253966 () Bool)

(assert (=> b!6464844 m!7253966))

(declare-fun m!7253968 () Bool)

(assert (=> b!6464844 m!7253968))

(declare-fun m!7253970 () Bool)

(assert (=> b!6464844 m!7253970))

(declare-fun m!7253972 () Bool)

(assert (=> b!6464847 m!7253972))

(check-sat (not b!6464844) (not b!6464833) (not b!6464818) (not b!6464847) (not b!6464857) (not start!636310) (not b!6464853) (not b!6464852) (not b!6464841) (not b!6464845) (not setNonEmpty!44057) (not b!6464859) (not b!6464850) (not b!6464837) (not b!6464825) (not b!6464856) (not b!6464843) (not b!6464858) (not b!6464849) (not b!6464822) (not b!6464826) (not b!6464829) tp_is_empty!41951 (not b!6464839) (not b!6464838) (not b!6464817) (not b!6464851) (not b!6464821) (not b!6464820) (not b!6464835) (not b!6464824) (not b!6464832) (not b!6464830) (not b!6464861) (not b!6464855) (not b!6464819) (not b!6464823) (not b!6464848) (not b!6464842))
(check-sat)
(get-model)

(declare-fun d!2027652 () Bool)

(declare-fun choose!47949 (Int) Bool)

(assert (=> d!2027652 (= (Exists!3419 lambda!357368) (choose!47949 lambda!357368))))

(declare-fun bs!1636379 () Bool)

(assert (= bs!1636379 d!2027652))

(declare-fun m!7254172 () Bool)

(assert (=> bs!1636379 m!7254172))

(assert (=> b!6464830 d!2027652))

(declare-fun bs!1636392 () Bool)

(declare-fun d!2027660 () Bool)

(assert (= bs!1636392 (and d!2027660 b!6464855)))

(declare-fun lambda!357398 () Int)

(assert (=> bs!1636392 (not (= lambda!357398 lambda!357373))))

(assert (=> bs!1636392 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 r!7292) (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357398 lambda!357372))))

(declare-fun bs!1636393 () Bool)

(assert (= bs!1636393 (and d!2027660 b!6464830)))

(assert (=> bs!1636393 (= lambda!357398 lambda!357367)))

(declare-fun bs!1636394 () Bool)

(assert (= bs!1636394 (and d!2027660 b!6464817)))

(assert (=> bs!1636394 (= (= (regOne!33210 r!7292) lt!2383834) (= lambda!357398 lambda!357370))))

(assert (=> bs!1636394 (not (= lambda!357398 lambda!357371))))

(assert (=> bs!1636393 (not (= lambda!357398 lambda!357368))))

(assert (=> bs!1636392 (not (= lambda!357398 lambda!357374))))

(assert (=> d!2027660 true))

(assert (=> d!2027660 true))

(assert (=> d!2027660 true))

(assert (=> d!2027660 (= (isDefined!12943 (findConcatSeparation!2654 (regOne!33210 r!7292) (regTwo!33210 r!7292) Nil!65222 s!2326 s!2326)) (Exists!3419 lambda!357398))))

(declare-fun lt!2383885 () Unit!158727)

(declare-fun choose!47950 (Regex!16349 Regex!16349 List!65346) Unit!158727)

(assert (=> d!2027660 (= lt!2383885 (choose!47950 (regOne!33210 r!7292) (regTwo!33210 r!7292) s!2326))))

(assert (=> d!2027660 (validRegex!8085 (regOne!33210 r!7292))))

(assert (=> d!2027660 (= (lemmaFindConcatSeparationEquivalentToExists!2418 (regOne!33210 r!7292) (regTwo!33210 r!7292) s!2326) lt!2383885)))

(declare-fun bs!1636396 () Bool)

(assert (= bs!1636396 d!2027660))

(declare-fun m!7254178 () Bool)

(assert (=> bs!1636396 m!7254178))

(declare-fun m!7254180 () Bool)

(assert (=> bs!1636396 m!7254180))

(assert (=> bs!1636396 m!7253798))

(assert (=> bs!1636396 m!7253800))

(assert (=> bs!1636396 m!7253798))

(declare-fun m!7254186 () Bool)

(assert (=> bs!1636396 m!7254186))

(assert (=> b!6464830 d!2027660))

(declare-fun b!6465203 () Bool)

(declare-fun e!3919669 () Option!16240)

(assert (=> b!6465203 (= e!3919669 None!16239)))

(declare-fun b!6465204 () Bool)

(declare-fun e!3919673 () Option!16240)

(assert (=> b!6465204 (= e!3919673 (Some!16239 (tuple2!66657 Nil!65222 s!2326)))))

(declare-fun b!6465206 () Bool)

(declare-fun res!2655174 () Bool)

(declare-fun e!3919672 () Bool)

(assert (=> b!6465206 (=> (not res!2655174) (not e!3919672))))

(declare-fun lt!2383902 () Option!16240)

(assert (=> b!6465206 (= res!2655174 (matchR!8532 (regOne!33210 r!7292) (_1!36631 (get!22607 lt!2383902))))))

(declare-fun b!6465207 () Bool)

(declare-fun lt!2383901 () Unit!158727)

(declare-fun lt!2383900 () Unit!158727)

(assert (=> b!6465207 (= lt!2383901 lt!2383900)))

(assert (=> b!6465207 (= (++!14417 (++!14417 Nil!65222 (Cons!65222 (h!71670 s!2326) Nil!65222)) (t!378968 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2508 (List!65346 C!32968 List!65346 List!65346) Unit!158727)

(assert (=> b!6465207 (= lt!2383900 (lemmaMoveElementToOtherListKeepsConcatEq!2508 Nil!65222 (h!71670 s!2326) (t!378968 s!2326) s!2326))))

(assert (=> b!6465207 (= e!3919669 (findConcatSeparation!2654 (regOne!33210 r!7292) (regTwo!33210 r!7292) (++!14417 Nil!65222 (Cons!65222 (h!71670 s!2326) Nil!65222)) (t!378968 s!2326) s!2326))))

(declare-fun b!6465208 () Bool)

(declare-fun res!2655176 () Bool)

(assert (=> b!6465208 (=> (not res!2655176) (not e!3919672))))

(assert (=> b!6465208 (= res!2655176 (matchR!8532 (regTwo!33210 r!7292) (_2!36631 (get!22607 lt!2383902))))))

(declare-fun b!6465209 () Bool)

(declare-fun e!3919670 () Bool)

(assert (=> b!6465209 (= e!3919670 (not (isDefined!12943 lt!2383902)))))

(declare-fun b!6465210 () Bool)

(declare-fun e!3919671 () Bool)

(assert (=> b!6465210 (= e!3919671 (matchR!8532 (regTwo!33210 r!7292) s!2326))))

(declare-fun b!6465211 () Bool)

(assert (=> b!6465211 (= e!3919672 (= (++!14417 (_1!36631 (get!22607 lt!2383902)) (_2!36631 (get!22607 lt!2383902))) s!2326))))

(declare-fun d!2027666 () Bool)

(assert (=> d!2027666 e!3919670))

(declare-fun res!2655175 () Bool)

(assert (=> d!2027666 (=> res!2655175 e!3919670)))

(assert (=> d!2027666 (= res!2655175 e!3919672)))

(declare-fun res!2655178 () Bool)

(assert (=> d!2027666 (=> (not res!2655178) (not e!3919672))))

(assert (=> d!2027666 (= res!2655178 (isDefined!12943 lt!2383902))))

(assert (=> d!2027666 (= lt!2383902 e!3919673)))

(declare-fun c!1183368 () Bool)

(assert (=> d!2027666 (= c!1183368 e!3919671)))

(declare-fun res!2655177 () Bool)

(assert (=> d!2027666 (=> (not res!2655177) (not e!3919671))))

(assert (=> d!2027666 (= res!2655177 (matchR!8532 (regOne!33210 r!7292) Nil!65222))))

(assert (=> d!2027666 (validRegex!8085 (regOne!33210 r!7292))))

(assert (=> d!2027666 (= (findConcatSeparation!2654 (regOne!33210 r!7292) (regTwo!33210 r!7292) Nil!65222 s!2326 s!2326) lt!2383902)))

(declare-fun b!6465205 () Bool)

(assert (=> b!6465205 (= e!3919673 e!3919669)))

(declare-fun c!1183369 () Bool)

(assert (=> b!6465205 (= c!1183369 ((_ is Nil!65222) s!2326))))

(assert (= (and d!2027666 res!2655177) b!6465210))

(assert (= (and d!2027666 c!1183368) b!6465204))

(assert (= (and d!2027666 (not c!1183368)) b!6465205))

(assert (= (and b!6465205 c!1183369) b!6465203))

(assert (= (and b!6465205 (not c!1183369)) b!6465207))

(assert (= (and d!2027666 res!2655178) b!6465206))

(assert (= (and b!6465206 res!2655174) b!6465208))

(assert (= (and b!6465208 res!2655176) b!6465211))

(assert (= (and d!2027666 (not res!2655175)) b!6465209))

(declare-fun m!7254274 () Bool)

(assert (=> b!6465208 m!7254274))

(declare-fun m!7254276 () Bool)

(assert (=> b!6465208 m!7254276))

(assert (=> b!6465211 m!7254274))

(declare-fun m!7254278 () Bool)

(assert (=> b!6465211 m!7254278))

(declare-fun m!7254280 () Bool)

(assert (=> b!6465207 m!7254280))

(assert (=> b!6465207 m!7254280))

(declare-fun m!7254282 () Bool)

(assert (=> b!6465207 m!7254282))

(declare-fun m!7254284 () Bool)

(assert (=> b!6465207 m!7254284))

(assert (=> b!6465207 m!7254280))

(declare-fun m!7254286 () Bool)

(assert (=> b!6465207 m!7254286))

(declare-fun m!7254288 () Bool)

(assert (=> d!2027666 m!7254288))

(declare-fun m!7254290 () Bool)

(assert (=> d!2027666 m!7254290))

(assert (=> d!2027666 m!7254178))

(assert (=> b!6465209 m!7254288))

(declare-fun m!7254292 () Bool)

(assert (=> b!6465210 m!7254292))

(assert (=> b!6465206 m!7254274))

(declare-fun m!7254294 () Bool)

(assert (=> b!6465206 m!7254294))

(assert (=> b!6464830 d!2027666))

(declare-fun d!2027712 () Bool)

(assert (=> d!2027712 (= (Exists!3419 lambda!357367) (choose!47949 lambda!357367))))

(declare-fun bs!1636422 () Bool)

(assert (= bs!1636422 d!2027712))

(declare-fun m!7254296 () Bool)

(assert (=> bs!1636422 m!7254296))

(assert (=> b!6464830 d!2027712))

(declare-fun bs!1636426 () Bool)

(declare-fun d!2027714 () Bool)

(assert (= bs!1636426 (and d!2027714 b!6464855)))

(declare-fun lambda!357409 () Int)

(assert (=> bs!1636426 (not (= lambda!357409 lambda!357373))))

(declare-fun bs!1636427 () Bool)

(assert (= bs!1636427 (and d!2027714 b!6464830)))

(assert (=> bs!1636427 (= lambda!357409 lambda!357367)))

(declare-fun bs!1636428 () Bool)

(assert (= bs!1636428 (and d!2027714 b!6464817)))

(assert (=> bs!1636428 (= (= (regOne!33210 r!7292) lt!2383834) (= lambda!357409 lambda!357370))))

(assert (=> bs!1636428 (not (= lambda!357409 lambda!357371))))

(assert (=> bs!1636427 (not (= lambda!357409 lambda!357368))))

(assert (=> bs!1636426 (not (= lambda!357409 lambda!357374))))

(declare-fun bs!1636429 () Bool)

(assert (= bs!1636429 (and d!2027714 d!2027660)))

(assert (=> bs!1636429 (= lambda!357409 lambda!357398)))

(assert (=> bs!1636426 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 r!7292) (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357409 lambda!357372))))

(assert (=> d!2027714 true))

(assert (=> d!2027714 true))

(assert (=> d!2027714 true))

(declare-fun lambda!357410 () Int)

(assert (=> bs!1636426 (not (= lambda!357410 lambda!357373))))

(assert (=> bs!1636427 (not (= lambda!357410 lambda!357367))))

(assert (=> bs!1636428 (not (= lambda!357410 lambda!357370))))

(assert (=> bs!1636428 (= (= (regOne!33210 r!7292) lt!2383834) (= lambda!357410 lambda!357371))))

(declare-fun bs!1636430 () Bool)

(assert (= bs!1636430 d!2027714))

(assert (=> bs!1636430 (not (= lambda!357410 lambda!357409))))

(assert (=> bs!1636427 (= lambda!357410 lambda!357368)))

(assert (=> bs!1636426 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 r!7292) (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357410 lambda!357374))))

(assert (=> bs!1636429 (not (= lambda!357410 lambda!357398))))

(assert (=> bs!1636426 (not (= lambda!357410 lambda!357372))))

(assert (=> d!2027714 true))

(assert (=> d!2027714 true))

(assert (=> d!2027714 true))

(assert (=> d!2027714 (= (Exists!3419 lambda!357409) (Exists!3419 lambda!357410))))

(declare-fun lt!2383910 () Unit!158727)

(declare-fun choose!47951 (Regex!16349 Regex!16349 List!65346) Unit!158727)

(assert (=> d!2027714 (= lt!2383910 (choose!47951 (regOne!33210 r!7292) (regTwo!33210 r!7292) s!2326))))

(assert (=> d!2027714 (validRegex!8085 (regOne!33210 r!7292))))

(assert (=> d!2027714 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1956 (regOne!33210 r!7292) (regTwo!33210 r!7292) s!2326) lt!2383910)))

(declare-fun m!7254368 () Bool)

(assert (=> bs!1636430 m!7254368))

(declare-fun m!7254370 () Bool)

(assert (=> bs!1636430 m!7254370))

(declare-fun m!7254372 () Bool)

(assert (=> bs!1636430 m!7254372))

(assert (=> bs!1636430 m!7254178))

(assert (=> b!6464830 d!2027714))

(declare-fun d!2027736 () Bool)

(declare-fun isEmpty!37404 (Option!16240) Bool)

(assert (=> d!2027736 (= (isDefined!12943 (findConcatSeparation!2654 (regOne!33210 r!7292) (regTwo!33210 r!7292) Nil!65222 s!2326 s!2326)) (not (isEmpty!37404 (findConcatSeparation!2654 (regOne!33210 r!7292) (regTwo!33210 r!7292) Nil!65222 s!2326 s!2326))))))

(declare-fun bs!1636431 () Bool)

(assert (= bs!1636431 d!2027736))

(assert (=> bs!1636431 m!7253798))

(declare-fun m!7254378 () Bool)

(assert (=> bs!1636431 m!7254378))

(assert (=> b!6464830 d!2027736))

(declare-fun d!2027740 () Bool)

(assert (=> d!2027740 (= (isEmpty!37402 (t!378970 zl!343)) ((_ is Nil!65224) (t!378970 zl!343)))))

(assert (=> b!6464851 d!2027740))

(declare-fun b!6465334 () Bool)

(declare-fun e!3919751 () (InoxSet Context!11466))

(declare-fun call!558669 () (InoxSet Context!11466))

(assert (=> b!6465334 (= e!3919751 call!558669)))

(declare-fun d!2027742 () Bool)

(declare-fun c!1183401 () Bool)

(declare-fun e!3919750 () Bool)

(assert (=> d!2027742 (= c!1183401 e!3919750)))

(declare-fun res!2655239 () Bool)

(assert (=> d!2027742 (=> (not res!2655239) (not e!3919750))))

(assert (=> d!2027742 (= res!2655239 ((_ is Cons!65223) (exprs!6233 lt!2383803)))))

(declare-fun e!3919749 () (InoxSet Context!11466))

(assert (=> d!2027742 (= (derivationStepZipperUp!1523 lt!2383803 (h!71670 s!2326)) e!3919749)))

(declare-fun b!6465335 () Bool)

(assert (=> b!6465335 (= e!3919749 e!3919751)))

(declare-fun c!1183402 () Bool)

(assert (=> b!6465335 (= c!1183402 ((_ is Cons!65223) (exprs!6233 lt!2383803)))))

(declare-fun b!6465336 () Bool)

(assert (=> b!6465336 (= e!3919750 (nullable!6342 (h!71671 (exprs!6233 lt!2383803))))))

(declare-fun b!6465337 () Bool)

(assert (=> b!6465337 (= e!3919749 ((_ map or) call!558669 (derivationStepZipperUp!1523 (Context!11467 (t!378969 (exprs!6233 lt!2383803))) (h!71670 s!2326))))))

(declare-fun b!6465338 () Bool)

(assert (=> b!6465338 (= e!3919751 ((as const (Array Context!11466 Bool)) false))))

(declare-fun bm!558664 () Bool)

(assert (=> bm!558664 (= call!558669 (derivationStepZipperDown!1597 (h!71671 (exprs!6233 lt!2383803)) (Context!11467 (t!378969 (exprs!6233 lt!2383803))) (h!71670 s!2326)))))

(assert (= (and d!2027742 res!2655239) b!6465336))

(assert (= (and d!2027742 c!1183401) b!6465337))

(assert (= (and d!2027742 (not c!1183401)) b!6465335))

(assert (= (and b!6465335 c!1183402) b!6465334))

(assert (= (and b!6465335 (not c!1183402)) b!6465338))

(assert (= (or b!6465337 b!6465334) bm!558664))

(declare-fun m!7254404 () Bool)

(assert (=> b!6465336 m!7254404))

(declare-fun m!7254406 () Bool)

(assert (=> b!6465337 m!7254406))

(declare-fun m!7254408 () Bool)

(assert (=> bm!558664 m!7254408))

(assert (=> b!6464829 d!2027742))

(declare-fun d!2027750 () Bool)

(declare-fun choose!47952 ((InoxSet Context!11466) Int) (InoxSet Context!11466))

(assert (=> d!2027750 (= (flatMap!1854 z!1189 lambda!357369) (choose!47952 z!1189 lambda!357369))))

(declare-fun bs!1636433 () Bool)

(assert (= bs!1636433 d!2027750))

(declare-fun m!7254424 () Bool)

(assert (=> bs!1636433 m!7254424))

(assert (=> b!6464829 d!2027750))

(declare-fun d!2027754 () Bool)

(declare-fun nullableFct!2283 (Regex!16349) Bool)

(assert (=> d!2027754 (= (nullable!6342 (h!71671 (exprs!6233 (h!71672 zl!343)))) (nullableFct!2283 (h!71671 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun bs!1636434 () Bool)

(assert (= bs!1636434 d!2027754))

(declare-fun m!7254432 () Bool)

(assert (=> bs!1636434 m!7254432))

(assert (=> b!6464829 d!2027754))

(declare-fun b!6465355 () Bool)

(declare-fun e!3919762 () (InoxSet Context!11466))

(declare-fun call!558671 () (InoxSet Context!11466))

(assert (=> b!6465355 (= e!3919762 call!558671)))

(declare-fun d!2027758 () Bool)

(declare-fun c!1183407 () Bool)

(declare-fun e!3919761 () Bool)

(assert (=> d!2027758 (= c!1183407 e!3919761)))

(declare-fun res!2655248 () Bool)

(assert (=> d!2027758 (=> (not res!2655248) (not e!3919761))))

(assert (=> d!2027758 (= res!2655248 ((_ is Cons!65223) (exprs!6233 (Context!11467 (Cons!65223 (h!71671 (exprs!6233 (h!71672 zl!343))) (t!378969 (exprs!6233 (h!71672 zl!343))))))))))

(declare-fun e!3919760 () (InoxSet Context!11466))

(assert (=> d!2027758 (= (derivationStepZipperUp!1523 (Context!11467 (Cons!65223 (h!71671 (exprs!6233 (h!71672 zl!343))) (t!378969 (exprs!6233 (h!71672 zl!343))))) (h!71670 s!2326)) e!3919760)))

(declare-fun b!6465356 () Bool)

(assert (=> b!6465356 (= e!3919760 e!3919762)))

(declare-fun c!1183408 () Bool)

(assert (=> b!6465356 (= c!1183408 ((_ is Cons!65223) (exprs!6233 (Context!11467 (Cons!65223 (h!71671 (exprs!6233 (h!71672 zl!343))) (t!378969 (exprs!6233 (h!71672 zl!343))))))))))

(declare-fun b!6465357 () Bool)

(assert (=> b!6465357 (= e!3919761 (nullable!6342 (h!71671 (exprs!6233 (Context!11467 (Cons!65223 (h!71671 (exprs!6233 (h!71672 zl!343))) (t!378969 (exprs!6233 (h!71672 zl!343)))))))))))

(declare-fun b!6465358 () Bool)

(assert (=> b!6465358 (= e!3919760 ((_ map or) call!558671 (derivationStepZipperUp!1523 (Context!11467 (t!378969 (exprs!6233 (Context!11467 (Cons!65223 (h!71671 (exprs!6233 (h!71672 zl!343))) (t!378969 (exprs!6233 (h!71672 zl!343)))))))) (h!71670 s!2326))))))

(declare-fun b!6465359 () Bool)

(assert (=> b!6465359 (= e!3919762 ((as const (Array Context!11466 Bool)) false))))

(declare-fun bm!558666 () Bool)

(assert (=> bm!558666 (= call!558671 (derivationStepZipperDown!1597 (h!71671 (exprs!6233 (Context!11467 (Cons!65223 (h!71671 (exprs!6233 (h!71672 zl!343))) (t!378969 (exprs!6233 (h!71672 zl!343))))))) (Context!11467 (t!378969 (exprs!6233 (Context!11467 (Cons!65223 (h!71671 (exprs!6233 (h!71672 zl!343))) (t!378969 (exprs!6233 (h!71672 zl!343)))))))) (h!71670 s!2326)))))

(assert (= (and d!2027758 res!2655248) b!6465357))

(assert (= (and d!2027758 c!1183407) b!6465358))

(assert (= (and d!2027758 (not c!1183407)) b!6465356))

(assert (= (and b!6465356 c!1183408) b!6465355))

(assert (= (and b!6465356 (not c!1183408)) b!6465359))

(assert (= (or b!6465358 b!6465355) bm!558666))

(declare-fun m!7254434 () Bool)

(assert (=> b!6465357 m!7254434))

(declare-fun m!7254436 () Bool)

(assert (=> b!6465358 m!7254436))

(declare-fun m!7254438 () Bool)

(assert (=> bm!558666 m!7254438))

(assert (=> b!6464829 d!2027758))

(declare-fun d!2027760 () Bool)

(declare-fun dynLambda!25909 (Int Context!11466) (InoxSet Context!11466))

(assert (=> d!2027760 (= (flatMap!1854 z!1189 lambda!357369) (dynLambda!25909 lambda!357369 (h!71672 zl!343)))))

(declare-fun lt!2383921 () Unit!158727)

(declare-fun choose!47953 ((InoxSet Context!11466) Context!11466 Int) Unit!158727)

(assert (=> d!2027760 (= lt!2383921 (choose!47953 z!1189 (h!71672 zl!343) lambda!357369))))

(assert (=> d!2027760 (= z!1189 (store ((as const (Array Context!11466 Bool)) false) (h!71672 zl!343) true))))

(assert (=> d!2027760 (= (lemmaFlatMapOnSingletonSet!1380 z!1189 (h!71672 zl!343) lambda!357369) lt!2383921)))

(declare-fun b_lambda!245105 () Bool)

(assert (=> (not b_lambda!245105) (not d!2027760)))

(declare-fun bs!1636435 () Bool)

(assert (= bs!1636435 d!2027760))

(assert (=> bs!1636435 m!7253952))

(declare-fun m!7254440 () Bool)

(assert (=> bs!1636435 m!7254440))

(declare-fun m!7254442 () Bool)

(assert (=> bs!1636435 m!7254442))

(declare-fun m!7254444 () Bool)

(assert (=> bs!1636435 m!7254444))

(assert (=> b!6464829 d!2027760))

(declare-fun b!6465395 () Bool)

(declare-fun e!3919786 () (InoxSet Context!11466))

(declare-fun e!3919783 () (InoxSet Context!11466))

(assert (=> b!6465395 (= e!3919786 e!3919783)))

(declare-fun c!1183425 () Bool)

(assert (=> b!6465395 (= c!1183425 ((_ is Union!16349) (h!71671 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun b!6465396 () Bool)

(declare-fun call!558685 () (InoxSet Context!11466))

(declare-fun call!558688 () (InoxSet Context!11466))

(assert (=> b!6465396 (= e!3919783 ((_ map or) call!558685 call!558688))))

(declare-fun bm!558679 () Bool)

(declare-fun call!558684 () List!65347)

(assert (=> bm!558679 (= call!558688 (derivationStepZipperDown!1597 (ite c!1183425 (regTwo!33211 (h!71671 (exprs!6233 (h!71672 zl!343)))) (regOne!33210 (h!71671 (exprs!6233 (h!71672 zl!343))))) (ite c!1183425 lt!2383803 (Context!11467 call!558684)) (h!71670 s!2326)))))

(declare-fun bm!558680 () Bool)

(declare-fun call!558689 () List!65347)

(assert (=> bm!558680 (= call!558689 call!558684)))

(declare-fun b!6465397 () Bool)

(declare-fun e!3919784 () Bool)

(assert (=> b!6465397 (= e!3919784 (nullable!6342 (regOne!33210 (h!71671 (exprs!6233 (h!71672 zl!343))))))))

(declare-fun b!6465398 () Bool)

(declare-fun e!3919782 () (InoxSet Context!11466))

(assert (=> b!6465398 (= e!3919782 ((as const (Array Context!11466 Bool)) false))))

(declare-fun d!2027762 () Bool)

(declare-fun c!1183426 () Bool)

(assert (=> d!2027762 (= c!1183426 (and ((_ is ElementMatch!16349) (h!71671 (exprs!6233 (h!71672 zl!343)))) (= (c!1183271 (h!71671 (exprs!6233 (h!71672 zl!343)))) (h!71670 s!2326))))))

(assert (=> d!2027762 (= (derivationStepZipperDown!1597 (h!71671 (exprs!6233 (h!71672 zl!343))) lt!2383803 (h!71670 s!2326)) e!3919786)))

(declare-fun c!1183424 () Bool)

(declare-fun c!1183422 () Bool)

(declare-fun bm!558681 () Bool)

(declare-fun $colon$colon!2205 (List!65347 Regex!16349) List!65347)

(assert (=> bm!558681 (= call!558684 ($colon$colon!2205 (exprs!6233 lt!2383803) (ite (or c!1183422 c!1183424) (regTwo!33210 (h!71671 (exprs!6233 (h!71672 zl!343)))) (h!71671 (exprs!6233 (h!71672 zl!343))))))))

(declare-fun b!6465399 () Bool)

(declare-fun e!3919787 () (InoxSet Context!11466))

(declare-fun e!3919785 () (InoxSet Context!11466))

(assert (=> b!6465399 (= e!3919787 e!3919785)))

(assert (=> b!6465399 (= c!1183424 ((_ is Concat!25194) (h!71671 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun bm!558682 () Bool)

(declare-fun call!558686 () (InoxSet Context!11466))

(assert (=> bm!558682 (= call!558686 call!558685)))

(declare-fun b!6465400 () Bool)

(declare-fun call!558687 () (InoxSet Context!11466))

(assert (=> b!6465400 (= e!3919782 call!558687)))

(declare-fun b!6465401 () Bool)

(declare-fun c!1183423 () Bool)

(assert (=> b!6465401 (= c!1183423 ((_ is Star!16349) (h!71671 (exprs!6233 (h!71672 zl!343)))))))

(assert (=> b!6465401 (= e!3919785 e!3919782)))

(declare-fun b!6465402 () Bool)

(assert (=> b!6465402 (= e!3919786 (store ((as const (Array Context!11466 Bool)) false) lt!2383803 true))))

(declare-fun b!6465403 () Bool)

(assert (=> b!6465403 (= e!3919785 call!558687)))

(declare-fun bm!558683 () Bool)

(assert (=> bm!558683 (= call!558687 call!558686)))

(declare-fun bm!558684 () Bool)

(assert (=> bm!558684 (= call!558685 (derivationStepZipperDown!1597 (ite c!1183425 (regOne!33211 (h!71671 (exprs!6233 (h!71672 zl!343)))) (ite c!1183422 (regTwo!33210 (h!71671 (exprs!6233 (h!71672 zl!343)))) (ite c!1183424 (regOne!33210 (h!71671 (exprs!6233 (h!71672 zl!343)))) (reg!16678 (h!71671 (exprs!6233 (h!71672 zl!343))))))) (ite (or c!1183425 c!1183422) lt!2383803 (Context!11467 call!558689)) (h!71670 s!2326)))))

(declare-fun b!6465404 () Bool)

(assert (=> b!6465404 (= c!1183422 e!3919784)))

(declare-fun res!2655258 () Bool)

(assert (=> b!6465404 (=> (not res!2655258) (not e!3919784))))

(assert (=> b!6465404 (= res!2655258 ((_ is Concat!25194) (h!71671 (exprs!6233 (h!71672 zl!343)))))))

(assert (=> b!6465404 (= e!3919783 e!3919787)))

(declare-fun b!6465405 () Bool)

(assert (=> b!6465405 (= e!3919787 ((_ map or) call!558688 call!558686))))

(assert (= (and d!2027762 c!1183426) b!6465402))

(assert (= (and d!2027762 (not c!1183426)) b!6465395))

(assert (= (and b!6465395 c!1183425) b!6465396))

(assert (= (and b!6465395 (not c!1183425)) b!6465404))

(assert (= (and b!6465404 res!2655258) b!6465397))

(assert (= (and b!6465404 c!1183422) b!6465405))

(assert (= (and b!6465404 (not c!1183422)) b!6465399))

(assert (= (and b!6465399 c!1183424) b!6465403))

(assert (= (and b!6465399 (not c!1183424)) b!6465401))

(assert (= (and b!6465401 c!1183423) b!6465400))

(assert (= (and b!6465401 (not c!1183423)) b!6465398))

(assert (= (or b!6465403 b!6465400) bm!558680))

(assert (= (or b!6465403 b!6465400) bm!558683))

(assert (= (or b!6465405 bm!558680) bm!558681))

(assert (= (or b!6465405 bm!558683) bm!558682))

(assert (= (or b!6465396 b!6465405) bm!558679))

(assert (= (or b!6465396 bm!558682) bm!558684))

(declare-fun m!7254488 () Bool)

(assert (=> bm!558679 m!7254488))

(declare-fun m!7254490 () Bool)

(assert (=> bm!558681 m!7254490))

(declare-fun m!7254492 () Bool)

(assert (=> b!6465397 m!7254492))

(declare-fun m!7254494 () Bool)

(assert (=> bm!558684 m!7254494))

(declare-fun m!7254496 () Bool)

(assert (=> b!6465402 m!7254496))

(assert (=> b!6464829 d!2027762))

(declare-fun b!6465406 () Bool)

(declare-fun e!3919790 () (InoxSet Context!11466))

(declare-fun call!558690 () (InoxSet Context!11466))

(assert (=> b!6465406 (= e!3919790 call!558690)))

(declare-fun d!2027776 () Bool)

(declare-fun c!1183427 () Bool)

(declare-fun e!3919789 () Bool)

(assert (=> d!2027776 (= c!1183427 e!3919789)))

(declare-fun res!2655259 () Bool)

(assert (=> d!2027776 (=> (not res!2655259) (not e!3919789))))

(assert (=> d!2027776 (= res!2655259 ((_ is Cons!65223) (exprs!6233 (h!71672 zl!343))))))

(declare-fun e!3919788 () (InoxSet Context!11466))

(assert (=> d!2027776 (= (derivationStepZipperUp!1523 (h!71672 zl!343) (h!71670 s!2326)) e!3919788)))

(declare-fun b!6465407 () Bool)

(assert (=> b!6465407 (= e!3919788 e!3919790)))

(declare-fun c!1183428 () Bool)

(assert (=> b!6465407 (= c!1183428 ((_ is Cons!65223) (exprs!6233 (h!71672 zl!343))))))

(declare-fun b!6465408 () Bool)

(assert (=> b!6465408 (= e!3919789 (nullable!6342 (h!71671 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun b!6465409 () Bool)

(assert (=> b!6465409 (= e!3919788 ((_ map or) call!558690 (derivationStepZipperUp!1523 (Context!11467 (t!378969 (exprs!6233 (h!71672 zl!343)))) (h!71670 s!2326))))))

(declare-fun b!6465410 () Bool)

(assert (=> b!6465410 (= e!3919790 ((as const (Array Context!11466 Bool)) false))))

(declare-fun bm!558685 () Bool)

(assert (=> bm!558685 (= call!558690 (derivationStepZipperDown!1597 (h!71671 (exprs!6233 (h!71672 zl!343))) (Context!11467 (t!378969 (exprs!6233 (h!71672 zl!343)))) (h!71670 s!2326)))))

(assert (= (and d!2027776 res!2655259) b!6465408))

(assert (= (and d!2027776 c!1183427) b!6465409))

(assert (= (and d!2027776 (not c!1183427)) b!6465407))

(assert (= (and b!6465407 c!1183428) b!6465406))

(assert (= (and b!6465407 (not c!1183428)) b!6465410))

(assert (= (or b!6465409 b!6465406) bm!558685))

(assert (=> b!6465408 m!7253960))

(declare-fun m!7254498 () Bool)

(assert (=> b!6465409 m!7254498))

(declare-fun m!7254500 () Bool)

(assert (=> bm!558685 m!7254500))

(assert (=> b!6464829 d!2027776))

(declare-fun b!6465441 () Bool)

(declare-fun e!3919807 () Bool)

(declare-fun e!3919808 () Bool)

(assert (=> b!6465441 (= e!3919807 e!3919808)))

(declare-fun c!1183437 () Bool)

(declare-fun tail!12266 (List!65347) List!65347)

(assert (=> b!6465441 (= c!1183437 (isEmpty!37400 (tail!12266 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun b!6465442 () Bool)

(declare-fun e!3919812 () Regex!16349)

(assert (=> b!6465442 (= e!3919812 (h!71671 (exprs!6233 (h!71672 zl!343))))))

(declare-fun b!6465443 () Bool)

(declare-fun e!3919810 () Bool)

(assert (=> b!6465443 (= e!3919810 e!3919807)))

(declare-fun c!1183439 () Bool)

(assert (=> b!6465443 (= c!1183439 (isEmpty!37400 (exprs!6233 (h!71672 zl!343))))))

(declare-fun b!6465444 () Bool)

(declare-fun e!3919811 () Regex!16349)

(assert (=> b!6465444 (= e!3919811 (Concat!25194 (h!71671 (exprs!6233 (h!71672 zl!343))) (generalisedConcat!1946 (t!378969 (exprs!6233 (h!71672 zl!343))))))))

(declare-fun b!6465445 () Bool)

(assert (=> b!6465445 (= e!3919812 e!3919811)))

(declare-fun c!1183440 () Bool)

(assert (=> b!6465445 (= c!1183440 ((_ is Cons!65223) (exprs!6233 (h!71672 zl!343))))))

(declare-fun b!6465446 () Bool)

(declare-fun lt!2383935 () Regex!16349)

(declare-fun head!13181 (List!65347) Regex!16349)

(assert (=> b!6465446 (= e!3919808 (= lt!2383935 (head!13181 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun b!6465447 () Bool)

(assert (=> b!6465447 (= e!3919811 EmptyExpr!16349)))

(declare-fun b!6465448 () Bool)

(declare-fun isConcat!1268 (Regex!16349) Bool)

(assert (=> b!6465448 (= e!3919808 (isConcat!1268 lt!2383935))))

(declare-fun b!6465449 () Bool)

(declare-fun isEmptyExpr!1745 (Regex!16349) Bool)

(assert (=> b!6465449 (= e!3919807 (isEmptyExpr!1745 lt!2383935))))

(declare-fun b!6465450 () Bool)

(declare-fun e!3919809 () Bool)

(assert (=> b!6465450 (= e!3919809 (isEmpty!37400 (t!378969 (exprs!6233 (h!71672 zl!343)))))))

(declare-fun d!2027778 () Bool)

(assert (=> d!2027778 e!3919810))

(declare-fun res!2655273 () Bool)

(assert (=> d!2027778 (=> (not res!2655273) (not e!3919810))))

(assert (=> d!2027778 (= res!2655273 (validRegex!8085 lt!2383935))))

(assert (=> d!2027778 (= lt!2383935 e!3919812)))

(declare-fun c!1183438 () Bool)

(assert (=> d!2027778 (= c!1183438 e!3919809)))

(declare-fun res!2655272 () Bool)

(assert (=> d!2027778 (=> (not res!2655272) (not e!3919809))))

(assert (=> d!2027778 (= res!2655272 ((_ is Cons!65223) (exprs!6233 (h!71672 zl!343))))))

(declare-fun lambda!357420 () Int)

(declare-fun forall!15536 (List!65347 Int) Bool)

(assert (=> d!2027778 (forall!15536 (exprs!6233 (h!71672 zl!343)) lambda!357420)))

(assert (=> d!2027778 (= (generalisedConcat!1946 (exprs!6233 (h!71672 zl!343))) lt!2383935)))

(assert (= (and d!2027778 res!2655272) b!6465450))

(assert (= (and d!2027778 c!1183438) b!6465442))

(assert (= (and d!2027778 (not c!1183438)) b!6465445))

(assert (= (and b!6465445 c!1183440) b!6465444))

(assert (= (and b!6465445 (not c!1183440)) b!6465447))

(assert (= (and d!2027778 res!2655273) b!6465443))

(assert (= (and b!6465443 c!1183439) b!6465449))

(assert (= (and b!6465443 (not c!1183439)) b!6465441))

(assert (= (and b!6465441 c!1183437) b!6465446))

(assert (= (and b!6465441 (not c!1183437)) b!6465448))

(declare-fun m!7254502 () Bool)

(assert (=> b!6465446 m!7254502))

(declare-fun m!7254504 () Bool)

(assert (=> b!6465444 m!7254504))

(assert (=> b!6465450 m!7253848))

(declare-fun m!7254506 () Bool)

(assert (=> b!6465441 m!7254506))

(assert (=> b!6465441 m!7254506))

(declare-fun m!7254508 () Bool)

(assert (=> b!6465441 m!7254508))

(declare-fun m!7254510 () Bool)

(assert (=> b!6465449 m!7254510))

(declare-fun m!7254512 () Bool)

(assert (=> b!6465448 m!7254512))

(declare-fun m!7254514 () Bool)

(assert (=> d!2027778 m!7254514))

(declare-fun m!7254516 () Bool)

(assert (=> d!2027778 m!7254516))

(declare-fun m!7254518 () Bool)

(assert (=> b!6465443 m!7254518))

(assert (=> b!6464849 d!2027778))

(declare-fun d!2027780 () Bool)

(declare-fun lt!2383939 () Regex!16349)

(assert (=> d!2027780 (validRegex!8085 lt!2383939)))

(assert (=> d!2027780 (= lt!2383939 (generalisedUnion!2193 (unfocusZipperList!1770 lt!2383816)))))

(assert (=> d!2027780 (= (unfocusZipper!2091 lt!2383816) lt!2383939)))

(declare-fun bs!1636467 () Bool)

(assert (= bs!1636467 d!2027780))

(declare-fun m!7254520 () Bool)

(assert (=> bs!1636467 m!7254520))

(declare-fun m!7254522 () Bool)

(assert (=> bs!1636467 m!7254522))

(assert (=> bs!1636467 m!7254522))

(declare-fun m!7254524 () Bool)

(assert (=> bs!1636467 m!7254524))

(assert (=> b!6464833 d!2027780))

(declare-fun b!6465490 () Bool)

(declare-fun e!3919836 () Bool)

(declare-fun head!13182 (List!65346) C!32968)

(assert (=> b!6465490 (= e!3919836 (not (= (head!13182 (_1!36631 lt!2383796)) (c!1183271 lt!2383834))))))

(declare-fun b!6465491 () Bool)

(declare-fun res!2655302 () Bool)

(assert (=> b!6465491 (=> res!2655302 e!3919836)))

(declare-fun tail!12267 (List!65346) List!65346)

(assert (=> b!6465491 (= res!2655302 (not (isEmpty!37401 (tail!12267 (_1!36631 lt!2383796)))))))

(declare-fun b!6465492 () Bool)

(declare-fun e!3919834 () Bool)

(declare-fun e!3919837 () Bool)

(assert (=> b!6465492 (= e!3919834 e!3919837)))

(declare-fun res!2655297 () Bool)

(assert (=> b!6465492 (=> (not res!2655297) (not e!3919837))))

(declare-fun lt!2383942 () Bool)

(assert (=> b!6465492 (= res!2655297 (not lt!2383942))))

(declare-fun b!6465493 () Bool)

(declare-fun res!2655296 () Bool)

(declare-fun e!3919835 () Bool)

(assert (=> b!6465493 (=> (not res!2655296) (not e!3919835))))

(declare-fun call!558695 () Bool)

(assert (=> b!6465493 (= res!2655296 (not call!558695))))

(declare-fun bm!558690 () Bool)

(assert (=> bm!558690 (= call!558695 (isEmpty!37401 (_1!36631 lt!2383796)))))

(declare-fun b!6465494 () Bool)

(assert (=> b!6465494 (= e!3919835 (= (head!13182 (_1!36631 lt!2383796)) (c!1183271 lt!2383834)))))

(declare-fun d!2027782 () Bool)

(declare-fun e!3919840 () Bool)

(assert (=> d!2027782 e!3919840))

(declare-fun c!1183452 () Bool)

(assert (=> d!2027782 (= c!1183452 ((_ is EmptyExpr!16349) lt!2383834))))

(declare-fun e!3919838 () Bool)

(assert (=> d!2027782 (= lt!2383942 e!3919838)))

(declare-fun c!1183451 () Bool)

(assert (=> d!2027782 (= c!1183451 (isEmpty!37401 (_1!36631 lt!2383796)))))

(assert (=> d!2027782 (validRegex!8085 lt!2383834)))

(assert (=> d!2027782 (= (matchR!8532 lt!2383834 (_1!36631 lt!2383796)) lt!2383942)))

(declare-fun b!6465495 () Bool)

(assert (=> b!6465495 (= e!3919840 (= lt!2383942 call!558695))))

(declare-fun b!6465496 () Bool)

(declare-fun e!3919839 () Bool)

(assert (=> b!6465496 (= e!3919840 e!3919839)))

(declare-fun c!1183453 () Bool)

(assert (=> b!6465496 (= c!1183453 ((_ is EmptyLang!16349) lt!2383834))))

(declare-fun b!6465497 () Bool)

(declare-fun res!2655300 () Bool)

(assert (=> b!6465497 (=> res!2655300 e!3919834)))

(assert (=> b!6465497 (= res!2655300 (not ((_ is ElementMatch!16349) lt!2383834)))))

(assert (=> b!6465497 (= e!3919839 e!3919834)))

(declare-fun b!6465498 () Bool)

(declare-fun derivativeStep!5049 (Regex!16349 C!32968) Regex!16349)

(assert (=> b!6465498 (= e!3919838 (matchR!8532 (derivativeStep!5049 lt!2383834 (head!13182 (_1!36631 lt!2383796))) (tail!12267 (_1!36631 lt!2383796))))))

(declare-fun b!6465499 () Bool)

(declare-fun res!2655298 () Bool)

(assert (=> b!6465499 (=> (not res!2655298) (not e!3919835))))

(assert (=> b!6465499 (= res!2655298 (isEmpty!37401 (tail!12267 (_1!36631 lt!2383796))))))

(declare-fun b!6465500 () Bool)

(assert (=> b!6465500 (= e!3919837 e!3919836)))

(declare-fun res!2655299 () Bool)

(assert (=> b!6465500 (=> res!2655299 e!3919836)))

(assert (=> b!6465500 (= res!2655299 call!558695)))

(declare-fun b!6465501 () Bool)

(declare-fun res!2655301 () Bool)

(assert (=> b!6465501 (=> res!2655301 e!3919834)))

(assert (=> b!6465501 (= res!2655301 e!3919835)))

(declare-fun res!2655295 () Bool)

(assert (=> b!6465501 (=> (not res!2655295) (not e!3919835))))

(assert (=> b!6465501 (= res!2655295 lt!2383942)))

(declare-fun b!6465502 () Bool)

(assert (=> b!6465502 (= e!3919838 (nullable!6342 lt!2383834))))

(declare-fun b!6465503 () Bool)

(assert (=> b!6465503 (= e!3919839 (not lt!2383942))))

(assert (= (and d!2027782 c!1183451) b!6465502))

(assert (= (and d!2027782 (not c!1183451)) b!6465498))

(assert (= (and d!2027782 c!1183452) b!6465495))

(assert (= (and d!2027782 (not c!1183452)) b!6465496))

(assert (= (and b!6465496 c!1183453) b!6465503))

(assert (= (and b!6465496 (not c!1183453)) b!6465497))

(assert (= (and b!6465497 (not res!2655300)) b!6465501))

(assert (= (and b!6465501 res!2655295) b!6465493))

(assert (= (and b!6465493 res!2655296) b!6465499))

(assert (= (and b!6465499 res!2655298) b!6465494))

(assert (= (and b!6465501 (not res!2655301)) b!6465492))

(assert (= (and b!6465492 res!2655297) b!6465500))

(assert (= (and b!6465500 (not res!2655299)) b!6465491))

(assert (= (and b!6465491 (not res!2655302)) b!6465490))

(assert (= (or b!6465495 b!6465493 b!6465500) bm!558690))

(assert (=> bm!558690 m!7253806))

(declare-fun m!7254542 () Bool)

(assert (=> b!6465502 m!7254542))

(declare-fun m!7254544 () Bool)

(assert (=> b!6465491 m!7254544))

(assert (=> b!6465491 m!7254544))

(declare-fun m!7254546 () Bool)

(assert (=> b!6465491 m!7254546))

(declare-fun m!7254548 () Bool)

(assert (=> b!6465494 m!7254548))

(assert (=> b!6465490 m!7254548))

(assert (=> b!6465498 m!7254548))

(assert (=> b!6465498 m!7254548))

(declare-fun m!7254550 () Bool)

(assert (=> b!6465498 m!7254550))

(assert (=> b!6465498 m!7254544))

(assert (=> b!6465498 m!7254550))

(assert (=> b!6465498 m!7254544))

(declare-fun m!7254552 () Bool)

(assert (=> b!6465498 m!7254552))

(assert (=> b!6465499 m!7254544))

(assert (=> b!6465499 m!7254544))

(assert (=> b!6465499 m!7254546))

(assert (=> d!2027782 m!7253806))

(declare-fun m!7254554 () Bool)

(assert (=> d!2027782 m!7254554))

(assert (=> b!6464852 d!2027782))

(declare-fun bs!1636506 () Bool)

(declare-fun d!2027792 () Bool)

(assert (= bs!1636506 (and d!2027792 d!2027778)))

(declare-fun lambda!357428 () Int)

(assert (=> bs!1636506 (= lambda!357428 lambda!357420)))

(assert (=> d!2027792 (= (inv!84119 (h!71672 zl!343)) (forall!15536 (exprs!6233 (h!71672 zl!343)) lambda!357428))))

(declare-fun bs!1636509 () Bool)

(assert (= bs!1636509 d!2027792))

(declare-fun m!7254562 () Bool)

(assert (=> bs!1636509 m!7254562))

(assert (=> b!6464856 d!2027792))

(declare-fun bs!1636522 () Bool)

(declare-fun d!2027802 () Bool)

(assert (= bs!1636522 (and d!2027802 d!2027778)))

(declare-fun lambda!357433 () Int)

(assert (=> bs!1636522 (= lambda!357433 lambda!357420)))

(declare-fun bs!1636524 () Bool)

(assert (= bs!1636524 (and d!2027802 d!2027792)))

(assert (=> bs!1636524 (= lambda!357433 lambda!357428)))

(declare-fun b!6465537 () Bool)

(declare-fun e!3919861 () Bool)

(declare-fun lt!2383952 () Regex!16349)

(declare-fun isUnion!1182 (Regex!16349) Bool)

(assert (=> b!6465537 (= e!3919861 (isUnion!1182 lt!2383952))))

(declare-fun b!6465538 () Bool)

(declare-fun e!3919864 () Regex!16349)

(declare-fun e!3919863 () Regex!16349)

(assert (=> b!6465538 (= e!3919864 e!3919863)))

(declare-fun c!1183467 () Bool)

(assert (=> b!6465538 (= c!1183467 ((_ is Cons!65223) (unfocusZipperList!1770 zl!343)))))

(declare-fun b!6465539 () Bool)

(assert (=> b!6465539 (= e!3919861 (= lt!2383952 (head!13181 (unfocusZipperList!1770 zl!343))))))

(declare-fun b!6465540 () Bool)

(assert (=> b!6465540 (= e!3919864 (h!71671 (unfocusZipperList!1770 zl!343)))))

(declare-fun b!6465541 () Bool)

(declare-fun e!3919865 () Bool)

(assert (=> b!6465541 (= e!3919865 (isEmpty!37400 (t!378969 (unfocusZipperList!1770 zl!343))))))

(declare-fun e!3919862 () Bool)

(assert (=> d!2027802 e!3919862))

(declare-fun res!2655314 () Bool)

(assert (=> d!2027802 (=> (not res!2655314) (not e!3919862))))

(assert (=> d!2027802 (= res!2655314 (validRegex!8085 lt!2383952))))

(assert (=> d!2027802 (= lt!2383952 e!3919864)))

(declare-fun c!1183466 () Bool)

(assert (=> d!2027802 (= c!1183466 e!3919865)))

(declare-fun res!2655315 () Bool)

(assert (=> d!2027802 (=> (not res!2655315) (not e!3919865))))

(assert (=> d!2027802 (= res!2655315 ((_ is Cons!65223) (unfocusZipperList!1770 zl!343)))))

(assert (=> d!2027802 (forall!15536 (unfocusZipperList!1770 zl!343) lambda!357433)))

(assert (=> d!2027802 (= (generalisedUnion!2193 (unfocusZipperList!1770 zl!343)) lt!2383952)))

(declare-fun b!6465542 () Bool)

(declare-fun e!3919860 () Bool)

(declare-fun isEmptyLang!1752 (Regex!16349) Bool)

(assert (=> b!6465542 (= e!3919860 (isEmptyLang!1752 lt!2383952))))

(declare-fun b!6465543 () Bool)

(assert (=> b!6465543 (= e!3919860 e!3919861)))

(declare-fun c!1183468 () Bool)

(assert (=> b!6465543 (= c!1183468 (isEmpty!37400 (tail!12266 (unfocusZipperList!1770 zl!343))))))

(declare-fun b!6465544 () Bool)

(assert (=> b!6465544 (= e!3919863 EmptyLang!16349)))

(declare-fun b!6465545 () Bool)

(assert (=> b!6465545 (= e!3919862 e!3919860)))

(declare-fun c!1183465 () Bool)

(assert (=> b!6465545 (= c!1183465 (isEmpty!37400 (unfocusZipperList!1770 zl!343)))))

(declare-fun b!6465546 () Bool)

(assert (=> b!6465546 (= e!3919863 (Union!16349 (h!71671 (unfocusZipperList!1770 zl!343)) (generalisedUnion!2193 (t!378969 (unfocusZipperList!1770 zl!343)))))))

(assert (= (and d!2027802 res!2655315) b!6465541))

(assert (= (and d!2027802 c!1183466) b!6465540))

(assert (= (and d!2027802 (not c!1183466)) b!6465538))

(assert (= (and b!6465538 c!1183467) b!6465546))

(assert (= (and b!6465538 (not c!1183467)) b!6465544))

(assert (= (and d!2027802 res!2655314) b!6465545))

(assert (= (and b!6465545 c!1183465) b!6465542))

(assert (= (and b!6465545 (not c!1183465)) b!6465543))

(assert (= (and b!6465543 c!1183468) b!6465539))

(assert (= (and b!6465543 (not c!1183468)) b!6465537))

(declare-fun m!7254594 () Bool)

(assert (=> b!6465542 m!7254594))

(declare-fun m!7254596 () Bool)

(assert (=> b!6465537 m!7254596))

(assert (=> b!6465543 m!7253850))

(declare-fun m!7254598 () Bool)

(assert (=> b!6465543 m!7254598))

(assert (=> b!6465543 m!7254598))

(declare-fun m!7254600 () Bool)

(assert (=> b!6465543 m!7254600))

(declare-fun m!7254602 () Bool)

(assert (=> b!6465541 m!7254602))

(assert (=> b!6465545 m!7253850))

(declare-fun m!7254604 () Bool)

(assert (=> b!6465545 m!7254604))

(declare-fun m!7254606 () Bool)

(assert (=> b!6465546 m!7254606))

(declare-fun m!7254608 () Bool)

(assert (=> d!2027802 m!7254608))

(assert (=> d!2027802 m!7253850))

(declare-fun m!7254610 () Bool)

(assert (=> d!2027802 m!7254610))

(assert (=> b!6465539 m!7253850))

(declare-fun m!7254612 () Bool)

(assert (=> b!6465539 m!7254612))

(assert (=> b!6464835 d!2027802))

(declare-fun bs!1636539 () Bool)

(declare-fun d!2027812 () Bool)

(assert (= bs!1636539 (and d!2027812 d!2027778)))

(declare-fun lambda!357436 () Int)

(assert (=> bs!1636539 (= lambda!357436 lambda!357420)))

(declare-fun bs!1636540 () Bool)

(assert (= bs!1636540 (and d!2027812 d!2027792)))

(assert (=> bs!1636540 (= lambda!357436 lambda!357428)))

(declare-fun bs!1636541 () Bool)

(assert (= bs!1636541 (and d!2027812 d!2027802)))

(assert (=> bs!1636541 (= lambda!357436 lambda!357433)))

(declare-fun lt!2383955 () List!65347)

(assert (=> d!2027812 (forall!15536 lt!2383955 lambda!357436)))

(declare-fun e!3919868 () List!65347)

(assert (=> d!2027812 (= lt!2383955 e!3919868)))

(declare-fun c!1183471 () Bool)

(assert (=> d!2027812 (= c!1183471 ((_ is Cons!65224) zl!343))))

(assert (=> d!2027812 (= (unfocusZipperList!1770 zl!343) lt!2383955)))

(declare-fun b!6465551 () Bool)

(assert (=> b!6465551 (= e!3919868 (Cons!65223 (generalisedConcat!1946 (exprs!6233 (h!71672 zl!343))) (unfocusZipperList!1770 (t!378970 zl!343))))))

(declare-fun b!6465552 () Bool)

(assert (=> b!6465552 (= e!3919868 Nil!65223)))

(assert (= (and d!2027812 c!1183471) b!6465551))

(assert (= (and d!2027812 (not c!1183471)) b!6465552))

(declare-fun m!7254624 () Bool)

(assert (=> d!2027812 m!7254624))

(assert (=> b!6465551 m!7253854))

(declare-fun m!7254626 () Bool)

(assert (=> b!6465551 m!7254626))

(assert (=> b!6464835 d!2027812))

(declare-fun d!2027820 () Bool)

(assert (=> d!2027820 (= (Exists!3419 lambda!357373) (choose!47949 lambda!357373))))

(declare-fun bs!1636542 () Bool)

(assert (= bs!1636542 d!2027820))

(declare-fun m!7254628 () Bool)

(assert (=> bs!1636542 m!7254628))

(assert (=> b!6464855 d!2027820))

(declare-fun d!2027822 () Bool)

(assert (=> d!2027822 (= (get!22607 lt!2383837) (v!52416 lt!2383837))))

(assert (=> b!6464855 d!2027822))

(declare-fun bs!1636543 () Bool)

(declare-fun d!2027824 () Bool)

(assert (= bs!1636543 (and d!2027824 b!6464855)))

(declare-fun lambda!357437 () Int)

(assert (=> bs!1636543 (not (= lambda!357437 lambda!357373))))

(declare-fun bs!1636544 () Bool)

(assert (= bs!1636544 (and d!2027824 b!6464830)))

(assert (=> bs!1636544 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357437 lambda!357367))))

(declare-fun bs!1636545 () Bool)

(assert (= bs!1636545 (and d!2027824 b!6464817)))

(assert (=> bs!1636545 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) lt!2383834) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357437 lambda!357370))))

(declare-fun bs!1636546 () Bool)

(assert (= bs!1636546 (and d!2027824 d!2027714)))

(assert (=> bs!1636546 (not (= lambda!357437 lambda!357410))))

(assert (=> bs!1636545 (not (= lambda!357437 lambda!357371))))

(assert (=> bs!1636546 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357437 lambda!357409))))

(assert (=> bs!1636544 (not (= lambda!357437 lambda!357368))))

(assert (=> bs!1636543 (not (= lambda!357437 lambda!357374))))

(declare-fun bs!1636547 () Bool)

(assert (= bs!1636547 (and d!2027824 d!2027660)))

(assert (=> bs!1636547 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357437 lambda!357398))))

(assert (=> bs!1636543 (= lambda!357437 lambda!357372)))

(assert (=> d!2027824 true))

(assert (=> d!2027824 true))

(assert (=> d!2027824 true))

(assert (=> d!2027824 (= (isDefined!12943 (findConcatSeparation!2654 (reg!16678 (regOne!33210 r!7292)) lt!2383834 Nil!65222 (_1!36631 lt!2383796) (_1!36631 lt!2383796))) (Exists!3419 lambda!357437))))

(declare-fun lt!2383956 () Unit!158727)

(assert (=> d!2027824 (= lt!2383956 (choose!47950 (reg!16678 (regOne!33210 r!7292)) lt!2383834 (_1!36631 lt!2383796)))))

(assert (=> d!2027824 (validRegex!8085 (reg!16678 (regOne!33210 r!7292)))))

(assert (=> d!2027824 (= (lemmaFindConcatSeparationEquivalentToExists!2418 (reg!16678 (regOne!33210 r!7292)) lt!2383834 (_1!36631 lt!2383796)) lt!2383956)))

(declare-fun bs!1636548 () Bool)

(assert (= bs!1636548 d!2027824))

(declare-fun m!7254630 () Bool)

(assert (=> bs!1636548 m!7254630))

(declare-fun m!7254632 () Bool)

(assert (=> bs!1636548 m!7254632))

(assert (=> bs!1636548 m!7253916))

(declare-fun m!7254634 () Bool)

(assert (=> bs!1636548 m!7254634))

(assert (=> bs!1636548 m!7253916))

(declare-fun m!7254636 () Bool)

(assert (=> bs!1636548 m!7254636))

(assert (=> b!6464855 d!2027824))

(declare-fun bs!1636560 () Bool)

(declare-fun b!6465684 () Bool)

(assert (= bs!1636560 (and b!6465684 b!6464855)))

(declare-fun lambda!357448 () Int)

(assert (=> bs!1636560 (= (= (reg!16678 lt!2383834) (reg!16678 (regOne!33210 r!7292))) (= lambda!357448 lambda!357373))))

(declare-fun bs!1636561 () Bool)

(assert (= bs!1636561 (and b!6465684 b!6464830)))

(assert (=> bs!1636561 (not (= lambda!357448 lambda!357367))))

(declare-fun bs!1636562 () Bool)

(assert (= bs!1636562 (and b!6465684 d!2027824)))

(assert (=> bs!1636562 (not (= lambda!357448 lambda!357437))))

(declare-fun bs!1636563 () Bool)

(assert (= bs!1636563 (and b!6465684 b!6464817)))

(assert (=> bs!1636563 (not (= lambda!357448 lambda!357370))))

(declare-fun bs!1636564 () Bool)

(assert (= bs!1636564 (and b!6465684 d!2027714)))

(assert (=> bs!1636564 (not (= lambda!357448 lambda!357410))))

(assert (=> bs!1636563 (not (= lambda!357448 lambda!357371))))

(assert (=> bs!1636564 (not (= lambda!357448 lambda!357409))))

(assert (=> bs!1636561 (not (= lambda!357448 lambda!357368))))

(assert (=> bs!1636560 (not (= lambda!357448 lambda!357374))))

(declare-fun bs!1636565 () Bool)

(assert (= bs!1636565 (and b!6465684 d!2027660)))

(assert (=> bs!1636565 (not (= lambda!357448 lambda!357398))))

(assert (=> bs!1636560 (not (= lambda!357448 lambda!357372))))

(assert (=> b!6465684 true))

(assert (=> b!6465684 true))

(declare-fun bs!1636566 () Bool)

(declare-fun b!6465674 () Bool)

(assert (= bs!1636566 (and b!6465674 b!6464855)))

(declare-fun lambda!357449 () Int)

(assert (=> bs!1636566 (not (= lambda!357449 lambda!357373))))

(declare-fun bs!1636567 () Bool)

(assert (= bs!1636567 (and b!6465674 b!6464830)))

(assert (=> bs!1636567 (not (= lambda!357449 lambda!357367))))

(declare-fun bs!1636568 () Bool)

(assert (= bs!1636568 (and b!6465674 d!2027824)))

(assert (=> bs!1636568 (not (= lambda!357449 lambda!357437))))

(declare-fun bs!1636569 () Bool)

(assert (= bs!1636569 (and b!6465674 b!6465684)))

(assert (=> bs!1636569 (not (= lambda!357449 lambda!357448))))

(declare-fun bs!1636570 () Bool)

(assert (= bs!1636570 (and b!6465674 b!6464817)))

(assert (=> bs!1636570 (not (= lambda!357449 lambda!357370))))

(declare-fun bs!1636571 () Bool)

(assert (= bs!1636571 (and b!6465674 d!2027714)))

(assert (=> bs!1636571 (= (and (= (_1!36631 lt!2383796) s!2326) (= (regOne!33210 lt!2383834) (regOne!33210 r!7292)) (= (regTwo!33210 lt!2383834) (regTwo!33210 r!7292))) (= lambda!357449 lambda!357410))))

(assert (=> bs!1636570 (= (and (= (_1!36631 lt!2383796) s!2326) (= (regOne!33210 lt!2383834) lt!2383834) (= (regTwo!33210 lt!2383834) (regTwo!33210 r!7292))) (= lambda!357449 lambda!357371))))

(assert (=> bs!1636571 (not (= lambda!357449 lambda!357409))))

(assert (=> bs!1636567 (= (and (= (_1!36631 lt!2383796) s!2326) (= (regOne!33210 lt!2383834) (regOne!33210 r!7292)) (= (regTwo!33210 lt!2383834) (regTwo!33210 r!7292))) (= lambda!357449 lambda!357368))))

(assert (=> bs!1636566 (= (and (= (regOne!33210 lt!2383834) (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 lt!2383834) lt!2383834)) (= lambda!357449 lambda!357374))))

(declare-fun bs!1636572 () Bool)

(assert (= bs!1636572 (and b!6465674 d!2027660)))

(assert (=> bs!1636572 (not (= lambda!357449 lambda!357398))))

(assert (=> bs!1636566 (not (= lambda!357449 lambda!357372))))

(assert (=> b!6465674 true))

(assert (=> b!6465674 true))

(declare-fun e!3919933 () Bool)

(declare-fun call!558701 () Bool)

(assert (=> b!6465674 (= e!3919933 call!558701)))

(declare-fun b!6465675 () Bool)

(declare-fun e!3919930 () Bool)

(declare-fun e!3919932 () Bool)

(assert (=> b!6465675 (= e!3919930 e!3919932)))

(declare-fun res!2655339 () Bool)

(assert (=> b!6465675 (= res!2655339 (matchRSpec!3450 (regOne!33211 lt!2383834) (_1!36631 lt!2383796)))))

(assert (=> b!6465675 (=> res!2655339 e!3919932)))

(declare-fun b!6465676 () Bool)

(declare-fun c!1183496 () Bool)

(assert (=> b!6465676 (= c!1183496 ((_ is ElementMatch!16349) lt!2383834))))

(declare-fun e!3919935 () Bool)

(declare-fun e!3919936 () Bool)

(assert (=> b!6465676 (= e!3919935 e!3919936)))

(declare-fun bm!558695 () Bool)

(declare-fun c!1183497 () Bool)

(assert (=> bm!558695 (= call!558701 (Exists!3419 (ite c!1183497 lambda!357448 lambda!357449)))))

(declare-fun bm!558696 () Bool)

(declare-fun call!558700 () Bool)

(assert (=> bm!558696 (= call!558700 (isEmpty!37401 (_1!36631 lt!2383796)))))

(declare-fun d!2027826 () Bool)

(declare-fun c!1183498 () Bool)

(assert (=> d!2027826 (= c!1183498 ((_ is EmptyExpr!16349) lt!2383834))))

(declare-fun e!3919931 () Bool)

(assert (=> d!2027826 (= (matchRSpec!3450 lt!2383834 (_1!36631 lt!2383796)) e!3919931)))

(declare-fun b!6465677 () Bool)

(declare-fun res!2655338 () Bool)

(declare-fun e!3919934 () Bool)

(assert (=> b!6465677 (=> res!2655338 e!3919934)))

(assert (=> b!6465677 (= res!2655338 call!558700)))

(assert (=> b!6465677 (= e!3919933 e!3919934)))

(declare-fun b!6465678 () Bool)

(assert (=> b!6465678 (= e!3919931 call!558700)))

(declare-fun b!6465679 () Bool)

(declare-fun c!1183495 () Bool)

(assert (=> b!6465679 (= c!1183495 ((_ is Union!16349) lt!2383834))))

(assert (=> b!6465679 (= e!3919936 e!3919930)))

(declare-fun b!6465680 () Bool)

(assert (=> b!6465680 (= e!3919932 (matchRSpec!3450 (regTwo!33211 lt!2383834) (_1!36631 lt!2383796)))))

(declare-fun b!6465681 () Bool)

(assert (=> b!6465681 (= e!3919930 e!3919933)))

(assert (=> b!6465681 (= c!1183497 ((_ is Star!16349) lt!2383834))))

(declare-fun b!6465682 () Bool)

(assert (=> b!6465682 (= e!3919931 e!3919935)))

(declare-fun res!2655340 () Bool)

(assert (=> b!6465682 (= res!2655340 (not ((_ is EmptyLang!16349) lt!2383834)))))

(assert (=> b!6465682 (=> (not res!2655340) (not e!3919935))))

(declare-fun b!6465683 () Bool)

(assert (=> b!6465683 (= e!3919936 (= (_1!36631 lt!2383796) (Cons!65222 (c!1183271 lt!2383834) Nil!65222)))))

(assert (=> b!6465684 (= e!3919934 call!558701)))

(assert (= (and d!2027826 c!1183498) b!6465678))

(assert (= (and d!2027826 (not c!1183498)) b!6465682))

(assert (= (and b!6465682 res!2655340) b!6465676))

(assert (= (and b!6465676 c!1183496) b!6465683))

(assert (= (and b!6465676 (not c!1183496)) b!6465679))

(assert (= (and b!6465679 c!1183495) b!6465675))

(assert (= (and b!6465679 (not c!1183495)) b!6465681))

(assert (= (and b!6465675 (not res!2655339)) b!6465680))

(assert (= (and b!6465681 c!1183497) b!6465677))

(assert (= (and b!6465681 (not c!1183497)) b!6465674))

(assert (= (and b!6465677 (not res!2655338)) b!6465684))

(assert (= (or b!6465684 b!6465674) bm!558695))

(assert (= (or b!6465678 b!6465677) bm!558696))

(declare-fun m!7254666 () Bool)

(assert (=> b!6465675 m!7254666))

(declare-fun m!7254668 () Bool)

(assert (=> bm!558695 m!7254668))

(assert (=> bm!558696 m!7253806))

(declare-fun m!7254670 () Bool)

(assert (=> b!6465680 m!7254670))

(assert (=> b!6464855 d!2027826))

(declare-fun d!2027838 () Bool)

(assert (=> d!2027838 (= (isDefined!12943 lt!2383837) (not (isEmpty!37404 lt!2383837)))))

(declare-fun bs!1636573 () Bool)

(assert (= bs!1636573 d!2027838))

(declare-fun m!7254672 () Bool)

(assert (=> bs!1636573 m!7254672))

(assert (=> b!6464855 d!2027838))

(declare-fun d!2027840 () Bool)

(assert (=> d!2027840 (= (matchR!8532 lt!2383834 (_1!36631 lt!2383796)) (matchRSpec!3450 lt!2383834 (_1!36631 lt!2383796)))))

(declare-fun lt!2383965 () Unit!158727)

(declare-fun choose!47954 (Regex!16349 List!65346) Unit!158727)

(assert (=> d!2027840 (= lt!2383965 (choose!47954 lt!2383834 (_1!36631 lt!2383796)))))

(assert (=> d!2027840 (validRegex!8085 lt!2383834)))

(assert (=> d!2027840 (= (mainMatchTheorem!3450 lt!2383834 (_1!36631 lt!2383796)) lt!2383965)))

(declare-fun bs!1636574 () Bool)

(assert (= bs!1636574 d!2027840))

(assert (=> bs!1636574 m!7253820))

(assert (=> bs!1636574 m!7253914))

(declare-fun m!7254674 () Bool)

(assert (=> bs!1636574 m!7254674))

(assert (=> bs!1636574 m!7254554))

(assert (=> b!6464855 d!2027840))

(declare-fun d!2027842 () Bool)

(assert (=> d!2027842 (= (Exists!3419 lambda!357374) (choose!47949 lambda!357374))))

(declare-fun bs!1636575 () Bool)

(assert (= bs!1636575 d!2027842))

(declare-fun m!7254676 () Bool)

(assert (=> bs!1636575 m!7254676))

(assert (=> b!6464855 d!2027842))

(declare-fun d!2027844 () Bool)

(assert (=> d!2027844 (= (Exists!3419 lambda!357372) (choose!47949 lambda!357372))))

(declare-fun bs!1636576 () Bool)

(assert (= bs!1636576 d!2027844))

(declare-fun m!7254678 () Bool)

(assert (=> bs!1636576 m!7254678))

(assert (=> b!6464855 d!2027844))

(declare-fun b!6465686 () Bool)

(declare-fun e!3919938 () Option!16240)

(assert (=> b!6465686 (= e!3919938 None!16239)))

(declare-fun b!6465687 () Bool)

(declare-fun e!3919942 () Option!16240)

(assert (=> b!6465687 (= e!3919942 (Some!16239 (tuple2!66657 Nil!65222 (_1!36631 lt!2383796))))))

(declare-fun b!6465689 () Bool)

(declare-fun res!2655341 () Bool)

(declare-fun e!3919941 () Bool)

(assert (=> b!6465689 (=> (not res!2655341) (not e!3919941))))

(declare-fun lt!2383968 () Option!16240)

(assert (=> b!6465689 (= res!2655341 (matchR!8532 (reg!16678 (regOne!33210 r!7292)) (_1!36631 (get!22607 lt!2383968))))))

(declare-fun b!6465690 () Bool)

(declare-fun lt!2383967 () Unit!158727)

(declare-fun lt!2383966 () Unit!158727)

(assert (=> b!6465690 (= lt!2383967 lt!2383966)))

(assert (=> b!6465690 (= (++!14417 (++!14417 Nil!65222 (Cons!65222 (h!71670 (_1!36631 lt!2383796)) Nil!65222)) (t!378968 (_1!36631 lt!2383796))) (_1!36631 lt!2383796))))

(assert (=> b!6465690 (= lt!2383966 (lemmaMoveElementToOtherListKeepsConcatEq!2508 Nil!65222 (h!71670 (_1!36631 lt!2383796)) (t!378968 (_1!36631 lt!2383796)) (_1!36631 lt!2383796)))))

(assert (=> b!6465690 (= e!3919938 (findConcatSeparation!2654 (reg!16678 (regOne!33210 r!7292)) lt!2383834 (++!14417 Nil!65222 (Cons!65222 (h!71670 (_1!36631 lt!2383796)) Nil!65222)) (t!378968 (_1!36631 lt!2383796)) (_1!36631 lt!2383796)))))

(declare-fun b!6465691 () Bool)

(declare-fun res!2655343 () Bool)

(assert (=> b!6465691 (=> (not res!2655343) (not e!3919941))))

(assert (=> b!6465691 (= res!2655343 (matchR!8532 lt!2383834 (_2!36631 (get!22607 lt!2383968))))))

(declare-fun b!6465692 () Bool)

(declare-fun e!3919939 () Bool)

(assert (=> b!6465692 (= e!3919939 (not (isDefined!12943 lt!2383968)))))

(declare-fun b!6465693 () Bool)

(declare-fun e!3919940 () Bool)

(assert (=> b!6465693 (= e!3919940 (matchR!8532 lt!2383834 (_1!36631 lt!2383796)))))

(declare-fun b!6465694 () Bool)

(assert (=> b!6465694 (= e!3919941 (= (++!14417 (_1!36631 (get!22607 lt!2383968)) (_2!36631 (get!22607 lt!2383968))) (_1!36631 lt!2383796)))))

(declare-fun d!2027846 () Bool)

(assert (=> d!2027846 e!3919939))

(declare-fun res!2655342 () Bool)

(assert (=> d!2027846 (=> res!2655342 e!3919939)))

(assert (=> d!2027846 (= res!2655342 e!3919941)))

(declare-fun res!2655345 () Bool)

(assert (=> d!2027846 (=> (not res!2655345) (not e!3919941))))

(assert (=> d!2027846 (= res!2655345 (isDefined!12943 lt!2383968))))

(assert (=> d!2027846 (= lt!2383968 e!3919942)))

(declare-fun c!1183499 () Bool)

(assert (=> d!2027846 (= c!1183499 e!3919940)))

(declare-fun res!2655344 () Bool)

(assert (=> d!2027846 (=> (not res!2655344) (not e!3919940))))

(assert (=> d!2027846 (= res!2655344 (matchR!8532 (reg!16678 (regOne!33210 r!7292)) Nil!65222))))

(assert (=> d!2027846 (validRegex!8085 (reg!16678 (regOne!33210 r!7292)))))

(assert (=> d!2027846 (= (findConcatSeparation!2654 (reg!16678 (regOne!33210 r!7292)) lt!2383834 Nil!65222 (_1!36631 lt!2383796) (_1!36631 lt!2383796)) lt!2383968)))

(declare-fun b!6465688 () Bool)

(assert (=> b!6465688 (= e!3919942 e!3919938)))

(declare-fun c!1183500 () Bool)

(assert (=> b!6465688 (= c!1183500 ((_ is Nil!65222) (_1!36631 lt!2383796)))))

(assert (= (and d!2027846 res!2655344) b!6465693))

(assert (= (and d!2027846 c!1183499) b!6465687))

(assert (= (and d!2027846 (not c!1183499)) b!6465688))

(assert (= (and b!6465688 c!1183500) b!6465686))

(assert (= (and b!6465688 (not c!1183500)) b!6465690))

(assert (= (and d!2027846 res!2655345) b!6465689))

(assert (= (and b!6465689 res!2655341) b!6465691))

(assert (= (and b!6465691 res!2655343) b!6465694))

(assert (= (and d!2027846 (not res!2655342)) b!6465692))

(declare-fun m!7254680 () Bool)

(assert (=> b!6465691 m!7254680))

(declare-fun m!7254682 () Bool)

(assert (=> b!6465691 m!7254682))

(assert (=> b!6465694 m!7254680))

(declare-fun m!7254684 () Bool)

(assert (=> b!6465694 m!7254684))

(declare-fun m!7254686 () Bool)

(assert (=> b!6465690 m!7254686))

(assert (=> b!6465690 m!7254686))

(declare-fun m!7254688 () Bool)

(assert (=> b!6465690 m!7254688))

(declare-fun m!7254690 () Bool)

(assert (=> b!6465690 m!7254690))

(assert (=> b!6465690 m!7254686))

(declare-fun m!7254692 () Bool)

(assert (=> b!6465690 m!7254692))

(declare-fun m!7254694 () Bool)

(assert (=> d!2027846 m!7254694))

(declare-fun m!7254696 () Bool)

(assert (=> d!2027846 m!7254696))

(assert (=> d!2027846 m!7254630))

(assert (=> b!6465692 m!7254694))

(assert (=> b!6465693 m!7253820))

(assert (=> b!6465689 m!7254680))

(declare-fun m!7254698 () Bool)

(assert (=> b!6465689 m!7254698))

(assert (=> b!6464855 d!2027846))

(declare-fun bs!1636577 () Bool)

(declare-fun d!2027848 () Bool)

(assert (= bs!1636577 (and d!2027848 b!6464855)))

(declare-fun lambda!357454 () Int)

(assert (=> bs!1636577 (not (= lambda!357454 lambda!357373))))

(declare-fun bs!1636578 () Bool)

(assert (= bs!1636578 (and d!2027848 b!6464830)))

(assert (=> bs!1636578 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= (Star!16349 (reg!16678 (regOne!33210 r!7292))) (regTwo!33210 r!7292))) (= lambda!357454 lambda!357367))))

(declare-fun bs!1636579 () Bool)

(assert (= bs!1636579 (and d!2027848 d!2027824)))

(assert (=> bs!1636579 (= (= (Star!16349 (reg!16678 (regOne!33210 r!7292))) lt!2383834) (= lambda!357454 lambda!357437))))

(declare-fun bs!1636580 () Bool)

(assert (= bs!1636580 (and d!2027848 b!6465684)))

(assert (=> bs!1636580 (not (= lambda!357454 lambda!357448))))

(declare-fun bs!1636581 () Bool)

(assert (= bs!1636581 (and d!2027848 b!6464817)))

(assert (=> bs!1636581 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) lt!2383834) (= (Star!16349 (reg!16678 (regOne!33210 r!7292))) (regTwo!33210 r!7292))) (= lambda!357454 lambda!357370))))

(declare-fun bs!1636582 () Bool)

(assert (= bs!1636582 (and d!2027848 d!2027714)))

(assert (=> bs!1636582 (not (= lambda!357454 lambda!357410))))

(assert (=> bs!1636581 (not (= lambda!357454 lambda!357371))))

(assert (=> bs!1636582 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= (Star!16349 (reg!16678 (regOne!33210 r!7292))) (regTwo!33210 r!7292))) (= lambda!357454 lambda!357409))))

(assert (=> bs!1636578 (not (= lambda!357454 lambda!357368))))

(assert (=> bs!1636577 (not (= lambda!357454 lambda!357374))))

(declare-fun bs!1636583 () Bool)

(assert (= bs!1636583 (and d!2027848 b!6465674)))

(assert (=> bs!1636583 (not (= lambda!357454 lambda!357449))))

(declare-fun bs!1636584 () Bool)

(assert (= bs!1636584 (and d!2027848 d!2027660)))

(assert (=> bs!1636584 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= (Star!16349 (reg!16678 (regOne!33210 r!7292))) (regTwo!33210 r!7292))) (= lambda!357454 lambda!357398))))

(assert (=> bs!1636577 (= (= (Star!16349 (reg!16678 (regOne!33210 r!7292))) lt!2383834) (= lambda!357454 lambda!357372))))

(assert (=> d!2027848 true))

(assert (=> d!2027848 true))

(declare-fun lambda!357455 () Int)

(assert (=> bs!1636577 (= (= (Star!16349 (reg!16678 (regOne!33210 r!7292))) lt!2383834) (= lambda!357455 lambda!357373))))

(assert (=> bs!1636578 (not (= lambda!357455 lambda!357367))))

(assert (=> bs!1636579 (not (= lambda!357455 lambda!357437))))

(assert (=> bs!1636580 (= (and (= (reg!16678 (regOne!33210 r!7292)) (reg!16678 lt!2383834)) (= (Star!16349 (reg!16678 (regOne!33210 r!7292))) lt!2383834)) (= lambda!357455 lambda!357448))))

(assert (=> bs!1636581 (not (= lambda!357455 lambda!357370))))

(assert (=> bs!1636582 (not (= lambda!357455 lambda!357410))))

(assert (=> bs!1636581 (not (= lambda!357455 lambda!357371))))

(assert (=> bs!1636582 (not (= lambda!357455 lambda!357409))))

(assert (=> bs!1636578 (not (= lambda!357455 lambda!357368))))

(assert (=> bs!1636577 (not (= lambda!357455 lambda!357374))))

(assert (=> bs!1636584 (not (= lambda!357455 lambda!357398))))

(assert (=> bs!1636577 (not (= lambda!357455 lambda!357372))))

(declare-fun bs!1636585 () Bool)

(assert (= bs!1636585 d!2027848))

(assert (=> bs!1636585 (not (= lambda!357455 lambda!357454))))

(assert (=> bs!1636583 (not (= lambda!357455 lambda!357449))))

(assert (=> d!2027848 true))

(assert (=> d!2027848 true))

(assert (=> d!2027848 (= (Exists!3419 lambda!357454) (Exists!3419 lambda!357455))))

(declare-fun lt!2383971 () Unit!158727)

(declare-fun choose!47956 (Regex!16349 List!65346) Unit!158727)

(assert (=> d!2027848 (= lt!2383971 (choose!47956 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383796)))))

(assert (=> d!2027848 (validRegex!8085 (reg!16678 (regOne!33210 r!7292)))))

(assert (=> d!2027848 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!640 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383796)) lt!2383971)))

(declare-fun m!7254700 () Bool)

(assert (=> bs!1636585 m!7254700))

(declare-fun m!7254702 () Bool)

(assert (=> bs!1636585 m!7254702))

(declare-fun m!7254704 () Bool)

(assert (=> bs!1636585 m!7254704))

(assert (=> bs!1636585 m!7254630))

(assert (=> b!6464855 d!2027848))

(declare-fun bs!1636586 () Bool)

(declare-fun d!2027850 () Bool)

(assert (= bs!1636586 (and d!2027850 b!6464855)))

(declare-fun lambda!357456 () Int)

(assert (=> bs!1636586 (not (= lambda!357456 lambda!357373))))

(declare-fun bs!1636587 () Bool)

(assert (= bs!1636587 (and d!2027850 b!6464830)))

(assert (=> bs!1636587 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357456 lambda!357367))))

(declare-fun bs!1636588 () Bool)

(assert (= bs!1636588 (and d!2027850 b!6465684)))

(assert (=> bs!1636588 (not (= lambda!357456 lambda!357448))))

(declare-fun bs!1636589 () Bool)

(assert (= bs!1636589 (and d!2027850 b!6464817)))

(assert (=> bs!1636589 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) lt!2383834) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357456 lambda!357370))))

(declare-fun bs!1636590 () Bool)

(assert (= bs!1636590 (and d!2027850 d!2027714)))

(assert (=> bs!1636590 (not (= lambda!357456 lambda!357410))))

(assert (=> bs!1636589 (not (= lambda!357456 lambda!357371))))

(assert (=> bs!1636590 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357456 lambda!357409))))

(assert (=> bs!1636587 (not (= lambda!357456 lambda!357368))))

(assert (=> bs!1636586 (not (= lambda!357456 lambda!357374))))

(declare-fun bs!1636591 () Bool)

(assert (= bs!1636591 (and d!2027850 d!2027660)))

(assert (=> bs!1636591 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357456 lambda!357398))))

(assert (=> bs!1636586 (= lambda!357456 lambda!357372)))

(declare-fun bs!1636592 () Bool)

(assert (= bs!1636592 (and d!2027850 d!2027848)))

(assert (=> bs!1636592 (not (= lambda!357456 lambda!357455))))

(declare-fun bs!1636593 () Bool)

(assert (= bs!1636593 (and d!2027850 d!2027824)))

(assert (=> bs!1636593 (= lambda!357456 lambda!357437)))

(assert (=> bs!1636592 (= (= lt!2383834 (Star!16349 (reg!16678 (regOne!33210 r!7292)))) (= lambda!357456 lambda!357454))))

(declare-fun bs!1636594 () Bool)

(assert (= bs!1636594 (and d!2027850 b!6465674)))

(assert (=> bs!1636594 (not (= lambda!357456 lambda!357449))))

(assert (=> d!2027850 true))

(assert (=> d!2027850 true))

(assert (=> d!2027850 true))

(declare-fun lambda!357457 () Int)

(assert (=> bs!1636586 (not (= lambda!357457 lambda!357373))))

(assert (=> bs!1636587 (not (= lambda!357457 lambda!357367))))

(assert (=> bs!1636588 (not (= lambda!357457 lambda!357448))))

(assert (=> bs!1636589 (not (= lambda!357457 lambda!357370))))

(assert (=> bs!1636590 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357457 lambda!357410))))

(assert (=> bs!1636589 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) lt!2383834) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357457 lambda!357371))))

(assert (=> bs!1636590 (not (= lambda!357457 lambda!357409))))

(assert (=> bs!1636587 (= (and (= (_1!36631 lt!2383796) s!2326) (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 r!7292)) (= lt!2383834 (regTwo!33210 r!7292))) (= lambda!357457 lambda!357368))))

(assert (=> bs!1636586 (= lambda!357457 lambda!357374)))

(declare-fun bs!1636595 () Bool)

(assert (= bs!1636595 d!2027850))

(assert (=> bs!1636595 (not (= lambda!357457 lambda!357456))))

(assert (=> bs!1636591 (not (= lambda!357457 lambda!357398))))

(assert (=> bs!1636586 (not (= lambda!357457 lambda!357372))))

(assert (=> bs!1636592 (not (= lambda!357457 lambda!357455))))

(assert (=> bs!1636593 (not (= lambda!357457 lambda!357437))))

(assert (=> bs!1636592 (not (= lambda!357457 lambda!357454))))

(assert (=> bs!1636594 (= (and (= (reg!16678 (regOne!33210 r!7292)) (regOne!33210 lt!2383834)) (= lt!2383834 (regTwo!33210 lt!2383834))) (= lambda!357457 lambda!357449))))

(assert (=> d!2027850 true))

(assert (=> d!2027850 true))

(assert (=> d!2027850 true))

(assert (=> d!2027850 (= (Exists!3419 lambda!357456) (Exists!3419 lambda!357457))))

(declare-fun lt!2383972 () Unit!158727)

(assert (=> d!2027850 (= lt!2383972 (choose!47951 (reg!16678 (regOne!33210 r!7292)) lt!2383834 (_1!36631 lt!2383796)))))

(assert (=> d!2027850 (validRegex!8085 (reg!16678 (regOne!33210 r!7292)))))

(assert (=> d!2027850 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1956 (reg!16678 (regOne!33210 r!7292)) lt!2383834 (_1!36631 lt!2383796)) lt!2383972)))

(declare-fun m!7254706 () Bool)

(assert (=> bs!1636595 m!7254706))

(declare-fun m!7254708 () Bool)

(assert (=> bs!1636595 m!7254708))

(declare-fun m!7254710 () Bool)

(assert (=> bs!1636595 m!7254710))

(assert (=> bs!1636595 m!7254630))

(assert (=> b!6464855 d!2027850))

(declare-fun b!6465716 () Bool)

(declare-fun e!3919951 () Bool)

(declare-fun lt!2383975 () List!65346)

(assert (=> b!6465716 (= e!3919951 (or (not (= (_2!36631 lt!2383814) Nil!65222)) (= lt!2383975 (_1!36631 lt!2383814))))))

(declare-fun b!6465714 () Bool)

(declare-fun e!3919952 () List!65346)

(assert (=> b!6465714 (= e!3919952 (Cons!65222 (h!71670 (_1!36631 lt!2383814)) (++!14417 (t!378968 (_1!36631 lt!2383814)) (_2!36631 lt!2383814))))))

(declare-fun b!6465715 () Bool)

(declare-fun res!2655360 () Bool)

(assert (=> b!6465715 (=> (not res!2655360) (not e!3919951))))

(declare-fun size!40404 (List!65346) Int)

(assert (=> b!6465715 (= res!2655360 (= (size!40404 lt!2383975) (+ (size!40404 (_1!36631 lt!2383814)) (size!40404 (_2!36631 lt!2383814)))))))

(declare-fun b!6465713 () Bool)

(assert (=> b!6465713 (= e!3919952 (_2!36631 lt!2383814))))

(declare-fun d!2027852 () Bool)

(assert (=> d!2027852 e!3919951))

(declare-fun res!2655361 () Bool)

(assert (=> d!2027852 (=> (not res!2655361) (not e!3919951))))

(declare-fun content!12404 (List!65346) (InoxSet C!32968))

(assert (=> d!2027852 (= res!2655361 (= (content!12404 lt!2383975) ((_ map or) (content!12404 (_1!36631 lt!2383814)) (content!12404 (_2!36631 lt!2383814)))))))

(assert (=> d!2027852 (= lt!2383975 e!3919952)))

(declare-fun c!1183503 () Bool)

(assert (=> d!2027852 (= c!1183503 ((_ is Nil!65222) (_1!36631 lt!2383814)))))

(assert (=> d!2027852 (= (++!14417 (_1!36631 lt!2383814) (_2!36631 lt!2383814)) lt!2383975)))

(assert (= (and d!2027852 c!1183503) b!6465713))

(assert (= (and d!2027852 (not c!1183503)) b!6465714))

(assert (= (and d!2027852 res!2655361) b!6465715))

(assert (= (and b!6465715 res!2655360) b!6465716))

(declare-fun m!7254712 () Bool)

(assert (=> b!6465714 m!7254712))

(declare-fun m!7254714 () Bool)

(assert (=> b!6465715 m!7254714))

(declare-fun m!7254716 () Bool)

(assert (=> b!6465715 m!7254716))

(declare-fun m!7254718 () Bool)

(assert (=> b!6465715 m!7254718))

(declare-fun m!7254720 () Bool)

(assert (=> d!2027852 m!7254720))

(declare-fun m!7254722 () Bool)

(assert (=> d!2027852 m!7254722))

(declare-fun m!7254724 () Bool)

(assert (=> d!2027852 m!7254724))

(assert (=> b!6464855 d!2027852))

(declare-fun d!2027854 () Bool)

(declare-fun lt!2383976 () Regex!16349)

(assert (=> d!2027854 (validRegex!8085 lt!2383976)))

(assert (=> d!2027854 (= lt!2383976 (generalisedUnion!2193 (unfocusZipperList!1770 zl!343)))))

(assert (=> d!2027854 (= (unfocusZipper!2091 zl!343) lt!2383976)))

(declare-fun bs!1636596 () Bool)

(assert (= bs!1636596 d!2027854))

(declare-fun m!7254726 () Bool)

(assert (=> bs!1636596 m!7254726))

(assert (=> bs!1636596 m!7253850))

(assert (=> bs!1636596 m!7253850))

(assert (=> bs!1636596 m!7253852))

(assert (=> b!6464838 d!2027854))

(declare-fun bs!1636597 () Bool)

(declare-fun d!2027856 () Bool)

(assert (= bs!1636597 (and d!2027856 d!2027778)))

(declare-fun lambda!357458 () Int)

(assert (=> bs!1636597 (= lambda!357458 lambda!357420)))

(declare-fun bs!1636598 () Bool)

(assert (= bs!1636598 (and d!2027856 d!2027792)))

(assert (=> bs!1636598 (= lambda!357458 lambda!357428)))

(declare-fun bs!1636599 () Bool)

(assert (= bs!1636599 (and d!2027856 d!2027802)))

(assert (=> bs!1636599 (= lambda!357458 lambda!357433)))

(declare-fun bs!1636600 () Bool)

(assert (= bs!1636600 (and d!2027856 d!2027812)))

(assert (=> bs!1636600 (= lambda!357458 lambda!357436)))

(assert (=> d!2027856 (= (inv!84119 setElem!44057) (forall!15536 (exprs!6233 setElem!44057) lambda!357458))))

(declare-fun bs!1636601 () Bool)

(assert (= bs!1636601 d!2027856))

(declare-fun m!7254728 () Bool)

(assert (=> bs!1636601 m!7254728))

(assert (=> setNonEmpty!44057 d!2027856))

(declare-fun b!6465717 () Bool)

(declare-fun e!3919955 () (InoxSet Context!11466))

(declare-fun call!558702 () (InoxSet Context!11466))

(assert (=> b!6465717 (= e!3919955 call!558702)))

(declare-fun d!2027858 () Bool)

(declare-fun c!1183504 () Bool)

(declare-fun e!3919954 () Bool)

(assert (=> d!2027858 (= c!1183504 e!3919954)))

(declare-fun res!2655362 () Bool)

(assert (=> d!2027858 (=> (not res!2655362) (not e!3919954))))

(assert (=> d!2027858 (= res!2655362 ((_ is Cons!65223) (exprs!6233 lt!2383817)))))

(declare-fun e!3919953 () (InoxSet Context!11466))

(assert (=> d!2027858 (= (derivationStepZipperUp!1523 lt!2383817 (h!71670 s!2326)) e!3919953)))

(declare-fun b!6465718 () Bool)

(assert (=> b!6465718 (= e!3919953 e!3919955)))

(declare-fun c!1183505 () Bool)

(assert (=> b!6465718 (= c!1183505 ((_ is Cons!65223) (exprs!6233 lt!2383817)))))

(declare-fun b!6465719 () Bool)

(assert (=> b!6465719 (= e!3919954 (nullable!6342 (h!71671 (exprs!6233 lt!2383817))))))

(declare-fun b!6465720 () Bool)

(assert (=> b!6465720 (= e!3919953 ((_ map or) call!558702 (derivationStepZipperUp!1523 (Context!11467 (t!378969 (exprs!6233 lt!2383817))) (h!71670 s!2326))))))

(declare-fun b!6465721 () Bool)

(assert (=> b!6465721 (= e!3919955 ((as const (Array Context!11466 Bool)) false))))

(declare-fun bm!558697 () Bool)

(assert (=> bm!558697 (= call!558702 (derivationStepZipperDown!1597 (h!71671 (exprs!6233 lt!2383817)) (Context!11467 (t!378969 (exprs!6233 lt!2383817))) (h!71670 s!2326)))))

(assert (= (and d!2027858 res!2655362) b!6465719))

(assert (= (and d!2027858 c!1183504) b!6465720))

(assert (= (and d!2027858 (not c!1183504)) b!6465718))

(assert (= (and b!6465718 c!1183505) b!6465717))

(assert (= (and b!6465718 (not c!1183505)) b!6465721))

(assert (= (or b!6465720 b!6465717) bm!558697))

(declare-fun m!7254730 () Bool)

(assert (=> b!6465719 m!7254730))

(declare-fun m!7254732 () Bool)

(assert (=> b!6465720 m!7254732))

(declare-fun m!7254734 () Bool)

(assert (=> bm!558697 m!7254734))

(assert (=> b!6464859 d!2027858))

(declare-fun d!2027860 () Bool)

(assert (=> d!2027860 (= (flatMap!1854 lt!2383787 lambda!357369) (choose!47952 lt!2383787 lambda!357369))))

(declare-fun bs!1636602 () Bool)

(assert (= bs!1636602 d!2027860))

(declare-fun m!7254736 () Bool)

(assert (=> bs!1636602 m!7254736))

(assert (=> b!6464859 d!2027860))

(declare-fun b!6465722 () Bool)

(declare-fun e!3919958 () (InoxSet Context!11466))

(declare-fun call!558703 () (InoxSet Context!11466))

(assert (=> b!6465722 (= e!3919958 call!558703)))

(declare-fun d!2027862 () Bool)

(declare-fun c!1183506 () Bool)

(declare-fun e!3919957 () Bool)

(assert (=> d!2027862 (= c!1183506 e!3919957)))

(declare-fun res!2655363 () Bool)

(assert (=> d!2027862 (=> (not res!2655363) (not e!3919957))))

(assert (=> d!2027862 (= res!2655363 ((_ is Cons!65223) (exprs!6233 lt!2383801)))))

(declare-fun e!3919956 () (InoxSet Context!11466))

(assert (=> d!2027862 (= (derivationStepZipperUp!1523 lt!2383801 (h!71670 s!2326)) e!3919956)))

(declare-fun b!6465723 () Bool)

(assert (=> b!6465723 (= e!3919956 e!3919958)))

(declare-fun c!1183507 () Bool)

(assert (=> b!6465723 (= c!1183507 ((_ is Cons!65223) (exprs!6233 lt!2383801)))))

(declare-fun b!6465724 () Bool)

(assert (=> b!6465724 (= e!3919957 (nullable!6342 (h!71671 (exprs!6233 lt!2383801))))))

(declare-fun b!6465725 () Bool)

(assert (=> b!6465725 (= e!3919956 ((_ map or) call!558703 (derivationStepZipperUp!1523 (Context!11467 (t!378969 (exprs!6233 lt!2383801))) (h!71670 s!2326))))))

(declare-fun b!6465726 () Bool)

(assert (=> b!6465726 (= e!3919958 ((as const (Array Context!11466 Bool)) false))))

(declare-fun bm!558698 () Bool)

(assert (=> bm!558698 (= call!558703 (derivationStepZipperDown!1597 (h!71671 (exprs!6233 lt!2383801)) (Context!11467 (t!378969 (exprs!6233 lt!2383801))) (h!71670 s!2326)))))

(assert (= (and d!2027862 res!2655363) b!6465724))

(assert (= (and d!2027862 c!1183506) b!6465725))

(assert (= (and d!2027862 (not c!1183506)) b!6465723))

(assert (= (and b!6465723 c!1183507) b!6465722))

(assert (= (and b!6465723 (not c!1183507)) b!6465726))

(assert (= (or b!6465725 b!6465722) bm!558698))

(declare-fun m!7254738 () Bool)

(assert (=> b!6465724 m!7254738))

(declare-fun m!7254740 () Bool)

(assert (=> b!6465725 m!7254740))

(declare-fun m!7254742 () Bool)

(assert (=> bm!558698 m!7254742))

(assert (=> b!6464859 d!2027862))

(declare-fun d!2027864 () Bool)

(assert (=> d!2027864 (= (flatMap!1854 lt!2383805 lambda!357369) (choose!47952 lt!2383805 lambda!357369))))

(declare-fun bs!1636603 () Bool)

(assert (= bs!1636603 d!2027864))

(declare-fun m!7254744 () Bool)

(assert (=> bs!1636603 m!7254744))

(assert (=> b!6464859 d!2027864))

(declare-fun d!2027866 () Bool)

(declare-fun lt!2383977 () Regex!16349)

(assert (=> d!2027866 (validRegex!8085 lt!2383977)))

(assert (=> d!2027866 (= lt!2383977 (generalisedUnion!2193 (unfocusZipperList!1770 lt!2383835)))))

(assert (=> d!2027866 (= (unfocusZipper!2091 lt!2383835) lt!2383977)))

(declare-fun bs!1636604 () Bool)

(assert (= bs!1636604 d!2027866))

(declare-fun m!7254746 () Bool)

(assert (=> bs!1636604 m!7254746))

(declare-fun m!7254748 () Bool)

(assert (=> bs!1636604 m!7254748))

(assert (=> bs!1636604 m!7254748))

(declare-fun m!7254750 () Bool)

(assert (=> bs!1636604 m!7254750))

(assert (=> b!6464859 d!2027866))

(declare-fun d!2027868 () Bool)

(assert (=> d!2027868 (= (flatMap!1854 lt!2383805 lambda!357369) (dynLambda!25909 lambda!357369 lt!2383817))))

(declare-fun lt!2383978 () Unit!158727)

(assert (=> d!2027868 (= lt!2383978 (choose!47953 lt!2383805 lt!2383817 lambda!357369))))

(assert (=> d!2027868 (= lt!2383805 (store ((as const (Array Context!11466 Bool)) false) lt!2383817 true))))

(assert (=> d!2027868 (= (lemmaFlatMapOnSingletonSet!1380 lt!2383805 lt!2383817 lambda!357369) lt!2383978)))

(declare-fun b_lambda!245115 () Bool)

(assert (=> (not b_lambda!245115) (not d!2027868)))

(declare-fun bs!1636605 () Bool)

(assert (= bs!1636605 d!2027868))

(assert (=> bs!1636605 m!7253892))

(declare-fun m!7254752 () Bool)

(assert (=> bs!1636605 m!7254752))

(declare-fun m!7254754 () Bool)

(assert (=> bs!1636605 m!7254754))

(assert (=> bs!1636605 m!7253898))

(assert (=> b!6464859 d!2027868))

(declare-fun d!2027870 () Bool)

(assert (=> d!2027870 (= (flatMap!1854 lt!2383787 lambda!357369) (dynLambda!25909 lambda!357369 lt!2383801))))

(declare-fun lt!2383979 () Unit!158727)

(assert (=> d!2027870 (= lt!2383979 (choose!47953 lt!2383787 lt!2383801 lambda!357369))))

(assert (=> d!2027870 (= lt!2383787 (store ((as const (Array Context!11466 Bool)) false) lt!2383801 true))))

(assert (=> d!2027870 (= (lemmaFlatMapOnSingletonSet!1380 lt!2383787 lt!2383801 lambda!357369) lt!2383979)))

(declare-fun b_lambda!245117 () Bool)

(assert (=> (not b_lambda!245117) (not d!2027870)))

(declare-fun bs!1636606 () Bool)

(assert (= bs!1636606 d!2027870))

(assert (=> bs!1636606 m!7253900))

(declare-fun m!7254756 () Bool)

(assert (=> bs!1636606 m!7254756))

(declare-fun m!7254758 () Bool)

(assert (=> bs!1636606 m!7254758))

(assert (=> bs!1636606 m!7253890))

(assert (=> b!6464859 d!2027870))

(declare-fun d!2027872 () Bool)

(assert (=> d!2027872 (= (isEmpty!37401 (_1!36631 lt!2383796)) ((_ is Nil!65222) (_1!36631 lt!2383796)))))

(assert (=> b!6464837 d!2027872))

(declare-fun b!6465727 () Bool)

(declare-fun e!3919961 () Bool)

(assert (=> b!6465727 (= e!3919961 (not (= (head!13182 (_2!36631 lt!2383796)) (c!1183271 (regTwo!33210 r!7292)))))))

(declare-fun b!6465728 () Bool)

(declare-fun res!2655371 () Bool)

(assert (=> b!6465728 (=> res!2655371 e!3919961)))

(assert (=> b!6465728 (= res!2655371 (not (isEmpty!37401 (tail!12267 (_2!36631 lt!2383796)))))))

(declare-fun b!6465729 () Bool)

(declare-fun e!3919959 () Bool)

(declare-fun e!3919962 () Bool)

(assert (=> b!6465729 (= e!3919959 e!3919962)))

(declare-fun res!2655366 () Bool)

(assert (=> b!6465729 (=> (not res!2655366) (not e!3919962))))

(declare-fun lt!2383980 () Bool)

(assert (=> b!6465729 (= res!2655366 (not lt!2383980))))

(declare-fun b!6465730 () Bool)

(declare-fun res!2655365 () Bool)

(declare-fun e!3919960 () Bool)

(assert (=> b!6465730 (=> (not res!2655365) (not e!3919960))))

(declare-fun call!558704 () Bool)

(assert (=> b!6465730 (= res!2655365 (not call!558704))))

(declare-fun bm!558699 () Bool)

(assert (=> bm!558699 (= call!558704 (isEmpty!37401 (_2!36631 lt!2383796)))))

(declare-fun b!6465731 () Bool)

(assert (=> b!6465731 (= e!3919960 (= (head!13182 (_2!36631 lt!2383796)) (c!1183271 (regTwo!33210 r!7292))))))

(declare-fun d!2027874 () Bool)

(declare-fun e!3919965 () Bool)

(assert (=> d!2027874 e!3919965))

(declare-fun c!1183509 () Bool)

(assert (=> d!2027874 (= c!1183509 ((_ is EmptyExpr!16349) (regTwo!33210 r!7292)))))

(declare-fun e!3919963 () Bool)

(assert (=> d!2027874 (= lt!2383980 e!3919963)))

(declare-fun c!1183508 () Bool)

(assert (=> d!2027874 (= c!1183508 (isEmpty!37401 (_2!36631 lt!2383796)))))

(assert (=> d!2027874 (validRegex!8085 (regTwo!33210 r!7292))))

(assert (=> d!2027874 (= (matchR!8532 (regTwo!33210 r!7292) (_2!36631 lt!2383796)) lt!2383980)))

(declare-fun b!6465732 () Bool)

(assert (=> b!6465732 (= e!3919965 (= lt!2383980 call!558704))))

(declare-fun b!6465733 () Bool)

(declare-fun e!3919964 () Bool)

(assert (=> b!6465733 (= e!3919965 e!3919964)))

(declare-fun c!1183510 () Bool)

(assert (=> b!6465733 (= c!1183510 ((_ is EmptyLang!16349) (regTwo!33210 r!7292)))))

(declare-fun b!6465734 () Bool)

(declare-fun res!2655369 () Bool)

(assert (=> b!6465734 (=> res!2655369 e!3919959)))

(assert (=> b!6465734 (= res!2655369 (not ((_ is ElementMatch!16349) (regTwo!33210 r!7292))))))

(assert (=> b!6465734 (= e!3919964 e!3919959)))

(declare-fun b!6465735 () Bool)

(assert (=> b!6465735 (= e!3919963 (matchR!8532 (derivativeStep!5049 (regTwo!33210 r!7292) (head!13182 (_2!36631 lt!2383796))) (tail!12267 (_2!36631 lt!2383796))))))

(declare-fun b!6465736 () Bool)

(declare-fun res!2655367 () Bool)

(assert (=> b!6465736 (=> (not res!2655367) (not e!3919960))))

(assert (=> b!6465736 (= res!2655367 (isEmpty!37401 (tail!12267 (_2!36631 lt!2383796))))))

(declare-fun b!6465737 () Bool)

(assert (=> b!6465737 (= e!3919962 e!3919961)))

(declare-fun res!2655368 () Bool)

(assert (=> b!6465737 (=> res!2655368 e!3919961)))

(assert (=> b!6465737 (= res!2655368 call!558704)))

(declare-fun b!6465738 () Bool)

(declare-fun res!2655370 () Bool)

(assert (=> b!6465738 (=> res!2655370 e!3919959)))

(assert (=> b!6465738 (= res!2655370 e!3919960)))

(declare-fun res!2655364 () Bool)

(assert (=> b!6465738 (=> (not res!2655364) (not e!3919960))))

(assert (=> b!6465738 (= res!2655364 lt!2383980)))

(declare-fun b!6465739 () Bool)

(assert (=> b!6465739 (= e!3919963 (nullable!6342 (regTwo!33210 r!7292)))))

(declare-fun b!6465740 () Bool)

(assert (=> b!6465740 (= e!3919964 (not lt!2383980))))

(assert (= (and d!2027874 c!1183508) b!6465739))

(assert (= (and d!2027874 (not c!1183508)) b!6465735))

(assert (= (and d!2027874 c!1183509) b!6465732))

(assert (= (and d!2027874 (not c!1183509)) b!6465733))

(assert (= (and b!6465733 c!1183510) b!6465740))

(assert (= (and b!6465733 (not c!1183510)) b!6465734))

(assert (= (and b!6465734 (not res!2655369)) b!6465738))

(assert (= (and b!6465738 res!2655364) b!6465730))

(assert (= (and b!6465730 res!2655365) b!6465736))

(assert (= (and b!6465736 res!2655367) b!6465731))

(assert (= (and b!6465738 (not res!2655370)) b!6465729))

(assert (= (and b!6465729 res!2655366) b!6465737))

(assert (= (and b!6465737 (not res!2655368)) b!6465728))

(assert (= (and b!6465728 (not res!2655371)) b!6465727))

(assert (= (or b!6465732 b!6465730 b!6465737) bm!558699))

(declare-fun m!7254760 () Bool)

(assert (=> bm!558699 m!7254760))

(declare-fun m!7254762 () Bool)

(assert (=> b!6465739 m!7254762))

(declare-fun m!7254764 () Bool)

(assert (=> b!6465728 m!7254764))

(assert (=> b!6465728 m!7254764))

(declare-fun m!7254766 () Bool)

(assert (=> b!6465728 m!7254766))

(declare-fun m!7254768 () Bool)

(assert (=> b!6465731 m!7254768))

(assert (=> b!6465727 m!7254768))

(assert (=> b!6465735 m!7254768))

(assert (=> b!6465735 m!7254768))

(declare-fun m!7254770 () Bool)

(assert (=> b!6465735 m!7254770))

(assert (=> b!6465735 m!7254764))

(assert (=> b!6465735 m!7254770))

(assert (=> b!6465735 m!7254764))

(declare-fun m!7254772 () Bool)

(assert (=> b!6465735 m!7254772))

(assert (=> b!6465736 m!7254764))

(assert (=> b!6465736 m!7254764))

(assert (=> b!6465736 m!7254766))

(assert (=> d!2027874 m!7254760))

(declare-fun m!7254774 () Bool)

(assert (=> d!2027874 m!7254774))

(assert (=> b!6464857 d!2027874))

(declare-fun b!6465741 () Bool)

(declare-fun e!3919968 () Bool)

(assert (=> b!6465741 (= e!3919968 (not (= (head!13182 s!2326) (c!1183271 lt!2383832))))))

(declare-fun b!6465742 () Bool)

(declare-fun res!2655379 () Bool)

(assert (=> b!6465742 (=> res!2655379 e!3919968)))

(assert (=> b!6465742 (= res!2655379 (not (isEmpty!37401 (tail!12267 s!2326))))))

(declare-fun b!6465743 () Bool)

(declare-fun e!3919966 () Bool)

(declare-fun e!3919969 () Bool)

(assert (=> b!6465743 (= e!3919966 e!3919969)))

(declare-fun res!2655374 () Bool)

(assert (=> b!6465743 (=> (not res!2655374) (not e!3919969))))

(declare-fun lt!2383981 () Bool)

(assert (=> b!6465743 (= res!2655374 (not lt!2383981))))

(declare-fun b!6465744 () Bool)

(declare-fun res!2655373 () Bool)

(declare-fun e!3919967 () Bool)

(assert (=> b!6465744 (=> (not res!2655373) (not e!3919967))))

(declare-fun call!558705 () Bool)

(assert (=> b!6465744 (= res!2655373 (not call!558705))))

(declare-fun bm!558700 () Bool)

(assert (=> bm!558700 (= call!558705 (isEmpty!37401 s!2326))))

(declare-fun b!6465745 () Bool)

(assert (=> b!6465745 (= e!3919967 (= (head!13182 s!2326) (c!1183271 lt!2383832)))))

(declare-fun d!2027876 () Bool)

(declare-fun e!3919972 () Bool)

(assert (=> d!2027876 e!3919972))

(declare-fun c!1183512 () Bool)

(assert (=> d!2027876 (= c!1183512 ((_ is EmptyExpr!16349) lt!2383832))))

(declare-fun e!3919970 () Bool)

(assert (=> d!2027876 (= lt!2383981 e!3919970)))

(declare-fun c!1183511 () Bool)

(assert (=> d!2027876 (= c!1183511 (isEmpty!37401 s!2326))))

(assert (=> d!2027876 (validRegex!8085 lt!2383832)))

(assert (=> d!2027876 (= (matchR!8532 lt!2383832 s!2326) lt!2383981)))

(declare-fun b!6465746 () Bool)

(assert (=> b!6465746 (= e!3919972 (= lt!2383981 call!558705))))

(declare-fun b!6465747 () Bool)

(declare-fun e!3919971 () Bool)

(assert (=> b!6465747 (= e!3919972 e!3919971)))

(declare-fun c!1183513 () Bool)

(assert (=> b!6465747 (= c!1183513 ((_ is EmptyLang!16349) lt!2383832))))

(declare-fun b!6465748 () Bool)

(declare-fun res!2655377 () Bool)

(assert (=> b!6465748 (=> res!2655377 e!3919966)))

(assert (=> b!6465748 (= res!2655377 (not ((_ is ElementMatch!16349) lt!2383832)))))

(assert (=> b!6465748 (= e!3919971 e!3919966)))

(declare-fun b!6465749 () Bool)

(assert (=> b!6465749 (= e!3919970 (matchR!8532 (derivativeStep!5049 lt!2383832 (head!13182 s!2326)) (tail!12267 s!2326)))))

(declare-fun b!6465750 () Bool)

(declare-fun res!2655375 () Bool)

(assert (=> b!6465750 (=> (not res!2655375) (not e!3919967))))

(assert (=> b!6465750 (= res!2655375 (isEmpty!37401 (tail!12267 s!2326)))))

(declare-fun b!6465751 () Bool)

(assert (=> b!6465751 (= e!3919969 e!3919968)))

(declare-fun res!2655376 () Bool)

(assert (=> b!6465751 (=> res!2655376 e!3919968)))

(assert (=> b!6465751 (= res!2655376 call!558705)))

(declare-fun b!6465752 () Bool)

(declare-fun res!2655378 () Bool)

(assert (=> b!6465752 (=> res!2655378 e!3919966)))

(assert (=> b!6465752 (= res!2655378 e!3919967)))

(declare-fun res!2655372 () Bool)

(assert (=> b!6465752 (=> (not res!2655372) (not e!3919967))))

(assert (=> b!6465752 (= res!2655372 lt!2383981)))

(declare-fun b!6465753 () Bool)

(assert (=> b!6465753 (= e!3919970 (nullable!6342 lt!2383832))))

(declare-fun b!6465754 () Bool)

(assert (=> b!6465754 (= e!3919971 (not lt!2383981))))

(assert (= (and d!2027876 c!1183511) b!6465753))

(assert (= (and d!2027876 (not c!1183511)) b!6465749))

(assert (= (and d!2027876 c!1183512) b!6465746))

(assert (= (and d!2027876 (not c!1183512)) b!6465747))

(assert (= (and b!6465747 c!1183513) b!6465754))

(assert (= (and b!6465747 (not c!1183513)) b!6465748))

(assert (= (and b!6465748 (not res!2655377)) b!6465752))

(assert (= (and b!6465752 res!2655372) b!6465744))

(assert (= (and b!6465744 res!2655373) b!6465750))

(assert (= (and b!6465750 res!2655375) b!6465745))

(assert (= (and b!6465752 (not res!2655378)) b!6465743))

(assert (= (and b!6465743 res!2655374) b!6465751))

(assert (= (and b!6465751 (not res!2655376)) b!6465742))

(assert (= (and b!6465742 (not res!2655379)) b!6465741))

(assert (= (or b!6465746 b!6465744 b!6465751) bm!558700))

(declare-fun m!7254776 () Bool)

(assert (=> bm!558700 m!7254776))

(declare-fun m!7254778 () Bool)

(assert (=> b!6465753 m!7254778))

(declare-fun m!7254780 () Bool)

(assert (=> b!6465742 m!7254780))

(assert (=> b!6465742 m!7254780))

(declare-fun m!7254782 () Bool)

(assert (=> b!6465742 m!7254782))

(declare-fun m!7254784 () Bool)

(assert (=> b!6465745 m!7254784))

(assert (=> b!6465741 m!7254784))

(assert (=> b!6465749 m!7254784))

(assert (=> b!6465749 m!7254784))

(declare-fun m!7254786 () Bool)

(assert (=> b!6465749 m!7254786))

(assert (=> b!6465749 m!7254780))

(assert (=> b!6465749 m!7254786))

(assert (=> b!6465749 m!7254780))

(declare-fun m!7254788 () Bool)

(assert (=> b!6465749 m!7254788))

(assert (=> b!6465750 m!7254780))

(assert (=> b!6465750 m!7254780))

(assert (=> b!6465750 m!7254782))

(assert (=> d!2027876 m!7254776))

(declare-fun m!7254790 () Bool)

(assert (=> d!2027876 m!7254790))

(assert (=> b!6464858 d!2027876))

(declare-fun bs!1636607 () Bool)

(declare-fun b!6465765 () Bool)

(assert (= bs!1636607 (and b!6465765 b!6464855)))

(declare-fun lambda!357459 () Int)

(assert (=> bs!1636607 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (reg!16678 lt!2383832) (reg!16678 (regOne!33210 r!7292))) (= lt!2383832 lt!2383834)) (= lambda!357459 lambda!357373))))

(declare-fun bs!1636608 () Bool)

(assert (= bs!1636608 (and b!6465765 b!6464830)))

(assert (=> bs!1636608 (not (= lambda!357459 lambda!357367))))

(declare-fun bs!1636609 () Bool)

(assert (= bs!1636609 (and b!6465765 b!6464817)))

(assert (=> bs!1636609 (not (= lambda!357459 lambda!357370))))

(declare-fun bs!1636610 () Bool)

(assert (= bs!1636610 (and b!6465765 d!2027714)))

(assert (=> bs!1636610 (not (= lambda!357459 lambda!357410))))

(assert (=> bs!1636609 (not (= lambda!357459 lambda!357371))))

(assert (=> bs!1636610 (not (= lambda!357459 lambda!357409))))

(assert (=> bs!1636608 (not (= lambda!357459 lambda!357368))))

(assert (=> bs!1636607 (not (= lambda!357459 lambda!357374))))

(declare-fun bs!1636611 () Bool)

(assert (= bs!1636611 (and b!6465765 d!2027850)))

(assert (=> bs!1636611 (not (= lambda!357459 lambda!357456))))

(declare-fun bs!1636612 () Bool)

(assert (= bs!1636612 (and b!6465765 d!2027660)))

(assert (=> bs!1636612 (not (= lambda!357459 lambda!357398))))

(assert (=> bs!1636607 (not (= lambda!357459 lambda!357372))))

(declare-fun bs!1636613 () Bool)

(assert (= bs!1636613 (and b!6465765 d!2027848)))

(assert (=> bs!1636613 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (reg!16678 lt!2383832) (reg!16678 (regOne!33210 r!7292))) (= lt!2383832 (Star!16349 (reg!16678 (regOne!33210 r!7292))))) (= lambda!357459 lambda!357455))))

(declare-fun bs!1636614 () Bool)

(assert (= bs!1636614 (and b!6465765 d!2027824)))

(assert (=> bs!1636614 (not (= lambda!357459 lambda!357437))))

(declare-fun bs!1636615 () Bool)

(assert (= bs!1636615 (and b!6465765 b!6465684)))

(assert (=> bs!1636615 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (reg!16678 lt!2383832) (reg!16678 lt!2383834)) (= lt!2383832 lt!2383834)) (= lambda!357459 lambda!357448))))

(assert (=> bs!1636611 (not (= lambda!357459 lambda!357457))))

(assert (=> bs!1636613 (not (= lambda!357459 lambda!357454))))

(declare-fun bs!1636616 () Bool)

(assert (= bs!1636616 (and b!6465765 b!6465674)))

(assert (=> bs!1636616 (not (= lambda!357459 lambda!357449))))

(assert (=> b!6465765 true))

(assert (=> b!6465765 true))

(declare-fun bs!1636617 () Bool)

(declare-fun b!6465755 () Bool)

(assert (= bs!1636617 (and b!6465755 b!6464855)))

(declare-fun lambda!357460 () Int)

(assert (=> bs!1636617 (not (= lambda!357460 lambda!357373))))

(declare-fun bs!1636618 () Bool)

(assert (= bs!1636618 (and b!6465755 b!6464830)))

(assert (=> bs!1636618 (not (= lambda!357460 lambda!357367))))

(declare-fun bs!1636619 () Bool)

(assert (= bs!1636619 (and b!6465755 b!6464817)))

(assert (=> bs!1636619 (not (= lambda!357460 lambda!357370))))

(declare-fun bs!1636620 () Bool)

(assert (= bs!1636620 (and b!6465755 d!2027714)))

(assert (=> bs!1636620 (= (and (= (regOne!33210 lt!2383832) (regOne!33210 r!7292)) (= (regTwo!33210 lt!2383832) (regTwo!33210 r!7292))) (= lambda!357460 lambda!357410))))

(assert (=> bs!1636619 (= (and (= (regOne!33210 lt!2383832) lt!2383834) (= (regTwo!33210 lt!2383832) (regTwo!33210 r!7292))) (= lambda!357460 lambda!357371))))

(assert (=> bs!1636618 (= (and (= (regOne!33210 lt!2383832) (regOne!33210 r!7292)) (= (regTwo!33210 lt!2383832) (regTwo!33210 r!7292))) (= lambda!357460 lambda!357368))))

(assert (=> bs!1636617 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 lt!2383832) (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 lt!2383832) lt!2383834)) (= lambda!357460 lambda!357374))))

(declare-fun bs!1636621 () Bool)

(assert (= bs!1636621 (and b!6465755 d!2027850)))

(assert (=> bs!1636621 (not (= lambda!357460 lambda!357456))))

(declare-fun bs!1636622 () Bool)

(assert (= bs!1636622 (and b!6465755 d!2027660)))

(assert (=> bs!1636622 (not (= lambda!357460 lambda!357398))))

(assert (=> bs!1636617 (not (= lambda!357460 lambda!357372))))

(declare-fun bs!1636623 () Bool)

(assert (= bs!1636623 (and b!6465755 d!2027848)))

(assert (=> bs!1636623 (not (= lambda!357460 lambda!357455))))

(declare-fun bs!1636624 () Bool)

(assert (= bs!1636624 (and b!6465755 d!2027824)))

(assert (=> bs!1636624 (not (= lambda!357460 lambda!357437))))

(declare-fun bs!1636625 () Bool)

(assert (= bs!1636625 (and b!6465755 b!6465684)))

(assert (=> bs!1636625 (not (= lambda!357460 lambda!357448))))

(assert (=> bs!1636621 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 lt!2383832) (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 lt!2383832) lt!2383834)) (= lambda!357460 lambda!357457))))

(declare-fun bs!1636626 () Bool)

(assert (= bs!1636626 (and b!6465755 b!6465765)))

(assert (=> bs!1636626 (not (= lambda!357460 lambda!357459))))

(assert (=> bs!1636620 (not (= lambda!357460 lambda!357409))))

(assert (=> bs!1636623 (not (= lambda!357460 lambda!357454))))

(declare-fun bs!1636627 () Bool)

(assert (= bs!1636627 (and b!6465755 b!6465674)))

(assert (=> bs!1636627 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 lt!2383832) (regOne!33210 lt!2383834)) (= (regTwo!33210 lt!2383832) (regTwo!33210 lt!2383834))) (= lambda!357460 lambda!357449))))

(assert (=> b!6465755 true))

(assert (=> b!6465755 true))

(declare-fun e!3919976 () Bool)

(declare-fun call!558707 () Bool)

(assert (=> b!6465755 (= e!3919976 call!558707)))

(declare-fun b!6465756 () Bool)

(declare-fun e!3919973 () Bool)

(declare-fun e!3919975 () Bool)

(assert (=> b!6465756 (= e!3919973 e!3919975)))

(declare-fun res!2655381 () Bool)

(assert (=> b!6465756 (= res!2655381 (matchRSpec!3450 (regOne!33211 lt!2383832) s!2326))))

(assert (=> b!6465756 (=> res!2655381 e!3919975)))

(declare-fun b!6465757 () Bool)

(declare-fun c!1183515 () Bool)

(assert (=> b!6465757 (= c!1183515 ((_ is ElementMatch!16349) lt!2383832))))

(declare-fun e!3919978 () Bool)

(declare-fun e!3919979 () Bool)

(assert (=> b!6465757 (= e!3919978 e!3919979)))

(declare-fun c!1183516 () Bool)

(declare-fun bm!558701 () Bool)

(assert (=> bm!558701 (= call!558707 (Exists!3419 (ite c!1183516 lambda!357459 lambda!357460)))))

(declare-fun bm!558702 () Bool)

(declare-fun call!558706 () Bool)

(assert (=> bm!558702 (= call!558706 (isEmpty!37401 s!2326))))

(declare-fun d!2027878 () Bool)

(declare-fun c!1183517 () Bool)

(assert (=> d!2027878 (= c!1183517 ((_ is EmptyExpr!16349) lt!2383832))))

(declare-fun e!3919974 () Bool)

(assert (=> d!2027878 (= (matchRSpec!3450 lt!2383832 s!2326) e!3919974)))

(declare-fun b!6465758 () Bool)

(declare-fun res!2655380 () Bool)

(declare-fun e!3919977 () Bool)

(assert (=> b!6465758 (=> res!2655380 e!3919977)))

(assert (=> b!6465758 (= res!2655380 call!558706)))

(assert (=> b!6465758 (= e!3919976 e!3919977)))

(declare-fun b!6465759 () Bool)

(assert (=> b!6465759 (= e!3919974 call!558706)))

(declare-fun b!6465760 () Bool)

(declare-fun c!1183514 () Bool)

(assert (=> b!6465760 (= c!1183514 ((_ is Union!16349) lt!2383832))))

(assert (=> b!6465760 (= e!3919979 e!3919973)))

(declare-fun b!6465761 () Bool)

(assert (=> b!6465761 (= e!3919975 (matchRSpec!3450 (regTwo!33211 lt!2383832) s!2326))))

(declare-fun b!6465762 () Bool)

(assert (=> b!6465762 (= e!3919973 e!3919976)))

(assert (=> b!6465762 (= c!1183516 ((_ is Star!16349) lt!2383832))))

(declare-fun b!6465763 () Bool)

(assert (=> b!6465763 (= e!3919974 e!3919978)))

(declare-fun res!2655382 () Bool)

(assert (=> b!6465763 (= res!2655382 (not ((_ is EmptyLang!16349) lt!2383832)))))

(assert (=> b!6465763 (=> (not res!2655382) (not e!3919978))))

(declare-fun b!6465764 () Bool)

(assert (=> b!6465764 (= e!3919979 (= s!2326 (Cons!65222 (c!1183271 lt!2383832) Nil!65222)))))

(assert (=> b!6465765 (= e!3919977 call!558707)))

(assert (= (and d!2027878 c!1183517) b!6465759))

(assert (= (and d!2027878 (not c!1183517)) b!6465763))

(assert (= (and b!6465763 res!2655382) b!6465757))

(assert (= (and b!6465757 c!1183515) b!6465764))

(assert (= (and b!6465757 (not c!1183515)) b!6465760))

(assert (= (and b!6465760 c!1183514) b!6465756))

(assert (= (and b!6465760 (not c!1183514)) b!6465762))

(assert (= (and b!6465756 (not res!2655381)) b!6465761))

(assert (= (and b!6465762 c!1183516) b!6465758))

(assert (= (and b!6465762 (not c!1183516)) b!6465755))

(assert (= (and b!6465758 (not res!2655380)) b!6465765))

(assert (= (or b!6465765 b!6465755) bm!558701))

(assert (= (or b!6465759 b!6465758) bm!558702))

(declare-fun m!7254792 () Bool)

(assert (=> b!6465756 m!7254792))

(declare-fun m!7254794 () Bool)

(assert (=> bm!558701 m!7254794))

(assert (=> bm!558702 m!7254776))

(declare-fun m!7254796 () Bool)

(assert (=> b!6465761 m!7254796))

(assert (=> b!6464858 d!2027878))

(declare-fun d!2027880 () Bool)

(assert (=> d!2027880 (= (matchR!8532 lt!2383832 s!2326) (matchRSpec!3450 lt!2383832 s!2326))))

(declare-fun lt!2383982 () Unit!158727)

(assert (=> d!2027880 (= lt!2383982 (choose!47954 lt!2383832 s!2326))))

(assert (=> d!2027880 (validRegex!8085 lt!2383832)))

(assert (=> d!2027880 (= (mainMatchTheorem!3450 lt!2383832 s!2326) lt!2383982)))

(declare-fun bs!1636628 () Bool)

(assert (= bs!1636628 d!2027880))

(assert (=> bs!1636628 m!7253856))

(assert (=> bs!1636628 m!7253858))

(declare-fun m!7254798 () Bool)

(assert (=> bs!1636628 m!7254798))

(assert (=> bs!1636628 m!7254790))

(assert (=> b!6464858 d!2027880))

(declare-fun d!2027882 () Bool)

(assert (=> d!2027882 (= (get!22607 lt!2383809) (v!52416 lt!2383809))))

(assert (=> b!6464817 d!2027882))

(declare-fun bs!1636629 () Bool)

(declare-fun d!2027884 () Bool)

(assert (= bs!1636629 (and d!2027884 b!6464855)))

(declare-fun lambda!357461 () Int)

(assert (=> bs!1636629 (not (= lambda!357461 lambda!357373))))

(declare-fun bs!1636630 () Bool)

(assert (= bs!1636630 (and d!2027884 b!6464830)))

(assert (=> bs!1636630 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357461 lambda!357367))))

(declare-fun bs!1636631 () Bool)

(assert (= bs!1636631 (and d!2027884 b!6464817)))

(assert (=> bs!1636631 (= lambda!357461 lambda!357370)))

(declare-fun bs!1636632 () Bool)

(assert (= bs!1636632 (and d!2027884 d!2027714)))

(assert (=> bs!1636632 (not (= lambda!357461 lambda!357410))))

(assert (=> bs!1636631 (not (= lambda!357461 lambda!357371))))

(assert (=> bs!1636630 (not (= lambda!357461 lambda!357368))))

(declare-fun bs!1636633 () Bool)

(assert (= bs!1636633 (and d!2027884 b!6465755)))

(assert (=> bs!1636633 (not (= lambda!357461 lambda!357460))))

(assert (=> bs!1636629 (not (= lambda!357461 lambda!357374))))

(declare-fun bs!1636634 () Bool)

(assert (= bs!1636634 (and d!2027884 d!2027850)))

(assert (=> bs!1636634 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357461 lambda!357456))))

(declare-fun bs!1636635 () Bool)

(assert (= bs!1636635 (and d!2027884 d!2027660)))

(assert (=> bs!1636635 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357461 lambda!357398))))

(assert (=> bs!1636629 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357461 lambda!357372))))

(declare-fun bs!1636636 () Bool)

(assert (= bs!1636636 (and d!2027884 d!2027848)))

(assert (=> bs!1636636 (not (= lambda!357461 lambda!357455))))

(declare-fun bs!1636637 () Bool)

(assert (= bs!1636637 (and d!2027884 d!2027824)))

(assert (=> bs!1636637 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357461 lambda!357437))))

(declare-fun bs!1636638 () Bool)

(assert (= bs!1636638 (and d!2027884 b!6465684)))

(assert (=> bs!1636638 (not (= lambda!357461 lambda!357448))))

(assert (=> bs!1636634 (not (= lambda!357461 lambda!357457))))

(declare-fun bs!1636639 () Bool)

(assert (= bs!1636639 (and d!2027884 b!6465765)))

(assert (=> bs!1636639 (not (= lambda!357461 lambda!357459))))

(assert (=> bs!1636632 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357461 lambda!357409))))

(assert (=> bs!1636636 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) (Star!16349 (reg!16678 (regOne!33210 r!7292))))) (= lambda!357461 lambda!357454))))

(declare-fun bs!1636640 () Bool)

(assert (= bs!1636640 (and d!2027884 b!6465674)))

(assert (=> bs!1636640 (not (= lambda!357461 lambda!357449))))

(assert (=> d!2027884 true))

(assert (=> d!2027884 true))

(assert (=> d!2027884 true))

(assert (=> d!2027884 (= (isDefined!12943 (findConcatSeparation!2654 lt!2383834 (regTwo!33210 r!7292) Nil!65222 s!2326 s!2326)) (Exists!3419 lambda!357461))))

(declare-fun lt!2383983 () Unit!158727)

(assert (=> d!2027884 (= lt!2383983 (choose!47950 lt!2383834 (regTwo!33210 r!7292) s!2326))))

(assert (=> d!2027884 (validRegex!8085 lt!2383834)))

(assert (=> d!2027884 (= (lemmaFindConcatSeparationEquivalentToExists!2418 lt!2383834 (regTwo!33210 r!7292) s!2326) lt!2383983)))

(declare-fun bs!1636641 () Bool)

(assert (= bs!1636641 d!2027884))

(assert (=> bs!1636641 m!7254554))

(declare-fun m!7254800 () Bool)

(assert (=> bs!1636641 m!7254800))

(assert (=> bs!1636641 m!7253938))

(declare-fun m!7254802 () Bool)

(assert (=> bs!1636641 m!7254802))

(assert (=> bs!1636641 m!7253938))

(declare-fun m!7254804 () Bool)

(assert (=> bs!1636641 m!7254804))

(assert (=> b!6464817 d!2027884))

(declare-fun b!6465769 () Bool)

(declare-fun e!3919980 () Bool)

(declare-fun lt!2383984 () List!65346)

(assert (=> b!6465769 (= e!3919980 (or (not (= (_2!36631 lt!2383796) Nil!65222)) (= lt!2383984 (_1!36631 lt!2383796))))))

(declare-fun b!6465767 () Bool)

(declare-fun e!3919981 () List!65346)

(assert (=> b!6465767 (= e!3919981 (Cons!65222 (h!71670 (_1!36631 lt!2383796)) (++!14417 (t!378968 (_1!36631 lt!2383796)) (_2!36631 lt!2383796))))))

(declare-fun b!6465768 () Bool)

(declare-fun res!2655383 () Bool)

(assert (=> b!6465768 (=> (not res!2655383) (not e!3919980))))

(assert (=> b!6465768 (= res!2655383 (= (size!40404 lt!2383984) (+ (size!40404 (_1!36631 lt!2383796)) (size!40404 (_2!36631 lt!2383796)))))))

(declare-fun b!6465766 () Bool)

(assert (=> b!6465766 (= e!3919981 (_2!36631 lt!2383796))))

(declare-fun d!2027886 () Bool)

(assert (=> d!2027886 e!3919980))

(declare-fun res!2655384 () Bool)

(assert (=> d!2027886 (=> (not res!2655384) (not e!3919980))))

(assert (=> d!2027886 (= res!2655384 (= (content!12404 lt!2383984) ((_ map or) (content!12404 (_1!36631 lt!2383796)) (content!12404 (_2!36631 lt!2383796)))))))

(assert (=> d!2027886 (= lt!2383984 e!3919981)))

(declare-fun c!1183518 () Bool)

(assert (=> d!2027886 (= c!1183518 ((_ is Nil!65222) (_1!36631 lt!2383796)))))

(assert (=> d!2027886 (= (++!14417 (_1!36631 lt!2383796) (_2!36631 lt!2383796)) lt!2383984)))

(assert (= (and d!2027886 c!1183518) b!6465766))

(assert (= (and d!2027886 (not c!1183518)) b!6465767))

(assert (= (and d!2027886 res!2655384) b!6465768))

(assert (= (and b!6465768 res!2655383) b!6465769))

(declare-fun m!7254806 () Bool)

(assert (=> b!6465767 m!7254806))

(declare-fun m!7254808 () Bool)

(assert (=> b!6465768 m!7254808))

(declare-fun m!7254810 () Bool)

(assert (=> b!6465768 m!7254810))

(declare-fun m!7254812 () Bool)

(assert (=> b!6465768 m!7254812))

(declare-fun m!7254814 () Bool)

(assert (=> d!2027886 m!7254814))

(declare-fun m!7254816 () Bool)

(assert (=> d!2027886 m!7254816))

(declare-fun m!7254818 () Bool)

(assert (=> d!2027886 m!7254818))

(assert (=> b!6464817 d!2027886))

(declare-fun b!6465770 () Bool)

(declare-fun e!3919982 () Option!16240)

(assert (=> b!6465770 (= e!3919982 None!16239)))

(declare-fun b!6465771 () Bool)

(declare-fun e!3919986 () Option!16240)

(assert (=> b!6465771 (= e!3919986 (Some!16239 (tuple2!66657 Nil!65222 s!2326)))))

(declare-fun b!6465773 () Bool)

(declare-fun res!2655385 () Bool)

(declare-fun e!3919985 () Bool)

(assert (=> b!6465773 (=> (not res!2655385) (not e!3919985))))

(declare-fun lt!2383987 () Option!16240)

(assert (=> b!6465773 (= res!2655385 (matchR!8532 lt!2383834 (_1!36631 (get!22607 lt!2383987))))))

(declare-fun b!6465774 () Bool)

(declare-fun lt!2383986 () Unit!158727)

(declare-fun lt!2383985 () Unit!158727)

(assert (=> b!6465774 (= lt!2383986 lt!2383985)))

(assert (=> b!6465774 (= (++!14417 (++!14417 Nil!65222 (Cons!65222 (h!71670 s!2326) Nil!65222)) (t!378968 s!2326)) s!2326)))

(assert (=> b!6465774 (= lt!2383985 (lemmaMoveElementToOtherListKeepsConcatEq!2508 Nil!65222 (h!71670 s!2326) (t!378968 s!2326) s!2326))))

(assert (=> b!6465774 (= e!3919982 (findConcatSeparation!2654 lt!2383834 (regTwo!33210 r!7292) (++!14417 Nil!65222 (Cons!65222 (h!71670 s!2326) Nil!65222)) (t!378968 s!2326) s!2326))))

(declare-fun b!6465775 () Bool)

(declare-fun res!2655387 () Bool)

(assert (=> b!6465775 (=> (not res!2655387) (not e!3919985))))

(assert (=> b!6465775 (= res!2655387 (matchR!8532 (regTwo!33210 r!7292) (_2!36631 (get!22607 lt!2383987))))))

(declare-fun b!6465776 () Bool)

(declare-fun e!3919983 () Bool)

(assert (=> b!6465776 (= e!3919983 (not (isDefined!12943 lt!2383987)))))

(declare-fun b!6465777 () Bool)

(declare-fun e!3919984 () Bool)

(assert (=> b!6465777 (= e!3919984 (matchR!8532 (regTwo!33210 r!7292) s!2326))))

(declare-fun b!6465778 () Bool)

(assert (=> b!6465778 (= e!3919985 (= (++!14417 (_1!36631 (get!22607 lt!2383987)) (_2!36631 (get!22607 lt!2383987))) s!2326))))

(declare-fun d!2027888 () Bool)

(assert (=> d!2027888 e!3919983))

(declare-fun res!2655386 () Bool)

(assert (=> d!2027888 (=> res!2655386 e!3919983)))

(assert (=> d!2027888 (= res!2655386 e!3919985)))

(declare-fun res!2655389 () Bool)

(assert (=> d!2027888 (=> (not res!2655389) (not e!3919985))))

(assert (=> d!2027888 (= res!2655389 (isDefined!12943 lt!2383987))))

(assert (=> d!2027888 (= lt!2383987 e!3919986)))

(declare-fun c!1183519 () Bool)

(assert (=> d!2027888 (= c!1183519 e!3919984)))

(declare-fun res!2655388 () Bool)

(assert (=> d!2027888 (=> (not res!2655388) (not e!3919984))))

(assert (=> d!2027888 (= res!2655388 (matchR!8532 lt!2383834 Nil!65222))))

(assert (=> d!2027888 (validRegex!8085 lt!2383834)))

(assert (=> d!2027888 (= (findConcatSeparation!2654 lt!2383834 (regTwo!33210 r!7292) Nil!65222 s!2326 s!2326) lt!2383987)))

(declare-fun b!6465772 () Bool)

(assert (=> b!6465772 (= e!3919986 e!3919982)))

(declare-fun c!1183520 () Bool)

(assert (=> b!6465772 (= c!1183520 ((_ is Nil!65222) s!2326))))

(assert (= (and d!2027888 res!2655388) b!6465777))

(assert (= (and d!2027888 c!1183519) b!6465771))

(assert (= (and d!2027888 (not c!1183519)) b!6465772))

(assert (= (and b!6465772 c!1183520) b!6465770))

(assert (= (and b!6465772 (not c!1183520)) b!6465774))

(assert (= (and d!2027888 res!2655389) b!6465773))

(assert (= (and b!6465773 res!2655385) b!6465775))

(assert (= (and b!6465775 res!2655387) b!6465778))

(assert (= (and d!2027888 (not res!2655386)) b!6465776))

(declare-fun m!7254820 () Bool)

(assert (=> b!6465775 m!7254820))

(declare-fun m!7254822 () Bool)

(assert (=> b!6465775 m!7254822))

(assert (=> b!6465778 m!7254820))

(declare-fun m!7254824 () Bool)

(assert (=> b!6465778 m!7254824))

(assert (=> b!6465774 m!7254280))

(assert (=> b!6465774 m!7254280))

(assert (=> b!6465774 m!7254282))

(assert (=> b!6465774 m!7254284))

(assert (=> b!6465774 m!7254280))

(declare-fun m!7254826 () Bool)

(assert (=> b!6465774 m!7254826))

(declare-fun m!7254828 () Bool)

(assert (=> d!2027888 m!7254828))

(declare-fun m!7254830 () Bool)

(assert (=> d!2027888 m!7254830))

(assert (=> d!2027888 m!7254554))

(assert (=> b!6465776 m!7254828))

(assert (=> b!6465777 m!7254292))

(assert (=> b!6465773 m!7254820))

(declare-fun m!7254832 () Bool)

(assert (=> b!6465773 m!7254832))

(assert (=> b!6464817 d!2027888))

(declare-fun d!2027890 () Bool)

(assert (=> d!2027890 (= (Exists!3419 lambda!357371) (choose!47949 lambda!357371))))

(declare-fun bs!1636642 () Bool)

(assert (= bs!1636642 d!2027890))

(declare-fun m!7254834 () Bool)

(assert (=> bs!1636642 m!7254834))

(assert (=> b!6464817 d!2027890))

(declare-fun bs!1636643 () Bool)

(declare-fun d!2027892 () Bool)

(assert (= bs!1636643 (and d!2027892 d!2027884)))

(declare-fun lambda!357462 () Int)

(assert (=> bs!1636643 (= lambda!357462 lambda!357461)))

(declare-fun bs!1636644 () Bool)

(assert (= bs!1636644 (and d!2027892 b!6464855)))

(assert (=> bs!1636644 (not (= lambda!357462 lambda!357373))))

(declare-fun bs!1636645 () Bool)

(assert (= bs!1636645 (and d!2027892 b!6464830)))

(assert (=> bs!1636645 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357462 lambda!357367))))

(declare-fun bs!1636646 () Bool)

(assert (= bs!1636646 (and d!2027892 b!6464817)))

(assert (=> bs!1636646 (= lambda!357462 lambda!357370)))

(declare-fun bs!1636647 () Bool)

(assert (= bs!1636647 (and d!2027892 d!2027714)))

(assert (=> bs!1636647 (not (= lambda!357462 lambda!357410))))

(assert (=> bs!1636646 (not (= lambda!357462 lambda!357371))))

(assert (=> bs!1636645 (not (= lambda!357462 lambda!357368))))

(declare-fun bs!1636648 () Bool)

(assert (= bs!1636648 (and d!2027892 b!6465755)))

(assert (=> bs!1636648 (not (= lambda!357462 lambda!357460))))

(assert (=> bs!1636644 (not (= lambda!357462 lambda!357374))))

(declare-fun bs!1636649 () Bool)

(assert (= bs!1636649 (and d!2027892 d!2027850)))

(assert (=> bs!1636649 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357462 lambda!357456))))

(declare-fun bs!1636650 () Bool)

(assert (= bs!1636650 (and d!2027892 d!2027660)))

(assert (=> bs!1636650 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357462 lambda!357398))))

(assert (=> bs!1636644 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357462 lambda!357372))))

(declare-fun bs!1636651 () Bool)

(assert (= bs!1636651 (and d!2027892 d!2027848)))

(assert (=> bs!1636651 (not (= lambda!357462 lambda!357455))))

(declare-fun bs!1636652 () Bool)

(assert (= bs!1636652 (and d!2027892 d!2027824)))

(assert (=> bs!1636652 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357462 lambda!357437))))

(declare-fun bs!1636653 () Bool)

(assert (= bs!1636653 (and d!2027892 b!6465684)))

(assert (=> bs!1636653 (not (= lambda!357462 lambda!357448))))

(assert (=> bs!1636649 (not (= lambda!357462 lambda!357457))))

(declare-fun bs!1636654 () Bool)

(assert (= bs!1636654 (and d!2027892 b!6465765)))

(assert (=> bs!1636654 (not (= lambda!357462 lambda!357459))))

(assert (=> bs!1636647 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357462 lambda!357409))))

(assert (=> bs!1636651 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) (Star!16349 (reg!16678 (regOne!33210 r!7292))))) (= lambda!357462 lambda!357454))))

(declare-fun bs!1636655 () Bool)

(assert (= bs!1636655 (and d!2027892 b!6465674)))

(assert (=> bs!1636655 (not (= lambda!357462 lambda!357449))))

(assert (=> d!2027892 true))

(assert (=> d!2027892 true))

(assert (=> d!2027892 true))

(declare-fun lambda!357463 () Int)

(assert (=> bs!1636643 (not (= lambda!357463 lambda!357461))))

(assert (=> bs!1636644 (not (= lambda!357463 lambda!357373))))

(assert (=> bs!1636645 (not (= lambda!357463 lambda!357367))))

(assert (=> bs!1636646 (not (= lambda!357463 lambda!357370))))

(assert (=> bs!1636647 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357463 lambda!357410))))

(assert (=> bs!1636645 (= (= lt!2383834 (regOne!33210 r!7292)) (= lambda!357463 lambda!357368))))

(assert (=> bs!1636648 (= (and (= lt!2383834 (regOne!33210 lt!2383832)) (= (regTwo!33210 r!7292) (regTwo!33210 lt!2383832))) (= lambda!357463 lambda!357460))))

(assert (=> bs!1636644 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357463 lambda!357374))))

(assert (=> bs!1636649 (not (= lambda!357463 lambda!357456))))

(assert (=> bs!1636650 (not (= lambda!357463 lambda!357398))))

(assert (=> bs!1636644 (not (= lambda!357463 lambda!357372))))

(assert (=> bs!1636651 (not (= lambda!357463 lambda!357455))))

(assert (=> bs!1636652 (not (= lambda!357463 lambda!357437))))

(assert (=> bs!1636653 (not (= lambda!357463 lambda!357448))))

(assert (=> bs!1636649 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357463 lambda!357457))))

(declare-fun bs!1636656 () Bool)

(assert (= bs!1636656 d!2027892))

(assert (=> bs!1636656 (not (= lambda!357463 lambda!357462))))

(assert (=> bs!1636646 (= lambda!357463 lambda!357371)))

(assert (=> bs!1636654 (not (= lambda!357463 lambda!357459))))

(assert (=> bs!1636647 (not (= lambda!357463 lambda!357409))))

(assert (=> bs!1636651 (not (= lambda!357463 lambda!357454))))

(assert (=> bs!1636655 (= (and (= s!2326 (_1!36631 lt!2383796)) (= lt!2383834 (regOne!33210 lt!2383834)) (= (regTwo!33210 r!7292) (regTwo!33210 lt!2383834))) (= lambda!357463 lambda!357449))))

(assert (=> d!2027892 true))

(assert (=> d!2027892 true))

(assert (=> d!2027892 true))

(assert (=> d!2027892 (= (Exists!3419 lambda!357462) (Exists!3419 lambda!357463))))

(declare-fun lt!2383988 () Unit!158727)

(assert (=> d!2027892 (= lt!2383988 (choose!47951 lt!2383834 (regTwo!33210 r!7292) s!2326))))

(assert (=> d!2027892 (validRegex!8085 lt!2383834)))

(assert (=> d!2027892 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1956 lt!2383834 (regTwo!33210 r!7292) s!2326) lt!2383988)))

(declare-fun m!7254836 () Bool)

(assert (=> bs!1636656 m!7254836))

(declare-fun m!7254838 () Bool)

(assert (=> bs!1636656 m!7254838))

(declare-fun m!7254840 () Bool)

(assert (=> bs!1636656 m!7254840))

(assert (=> bs!1636656 m!7254554))

(assert (=> b!6464817 d!2027892))

(declare-fun d!2027894 () Bool)

(assert (=> d!2027894 (= (Exists!3419 lambda!357370) (choose!47949 lambda!357370))))

(declare-fun bs!1636657 () Bool)

(assert (= bs!1636657 d!2027894))

(declare-fun m!7254842 () Bool)

(assert (=> bs!1636657 m!7254842))

(assert (=> b!6464817 d!2027894))

(declare-fun d!2027896 () Bool)

(assert (=> d!2027896 (= (isDefined!12943 lt!2383809) (not (isEmpty!37404 lt!2383809)))))

(declare-fun bs!1636658 () Bool)

(assert (= bs!1636658 d!2027896))

(declare-fun m!7254844 () Bool)

(assert (=> bs!1636658 m!7254844))

(assert (=> b!6464817 d!2027896))

(declare-fun b!6465779 () Bool)

(declare-fun e!3919989 () Bool)

(assert (=> b!6465779 (= e!3919989 (not (= (head!13182 lt!2383829) (c!1183271 lt!2383834))))))

(declare-fun b!6465780 () Bool)

(declare-fun res!2655397 () Bool)

(assert (=> b!6465780 (=> res!2655397 e!3919989)))

(assert (=> b!6465780 (= res!2655397 (not (isEmpty!37401 (tail!12267 lt!2383829))))))

(declare-fun b!6465781 () Bool)

(declare-fun e!3919987 () Bool)

(declare-fun e!3919990 () Bool)

(assert (=> b!6465781 (= e!3919987 e!3919990)))

(declare-fun res!2655392 () Bool)

(assert (=> b!6465781 (=> (not res!2655392) (not e!3919990))))

(declare-fun lt!2383989 () Bool)

(assert (=> b!6465781 (= res!2655392 (not lt!2383989))))

(declare-fun b!6465782 () Bool)

(declare-fun res!2655391 () Bool)

(declare-fun e!3919988 () Bool)

(assert (=> b!6465782 (=> (not res!2655391) (not e!3919988))))

(declare-fun call!558708 () Bool)

(assert (=> b!6465782 (= res!2655391 (not call!558708))))

(declare-fun bm!558703 () Bool)

(assert (=> bm!558703 (= call!558708 (isEmpty!37401 lt!2383829))))

(declare-fun b!6465783 () Bool)

(assert (=> b!6465783 (= e!3919988 (= (head!13182 lt!2383829) (c!1183271 lt!2383834)))))

(declare-fun d!2027898 () Bool)

(declare-fun e!3919993 () Bool)

(assert (=> d!2027898 e!3919993))

(declare-fun c!1183522 () Bool)

(assert (=> d!2027898 (= c!1183522 ((_ is EmptyExpr!16349) lt!2383834))))

(declare-fun e!3919991 () Bool)

(assert (=> d!2027898 (= lt!2383989 e!3919991)))

(declare-fun c!1183521 () Bool)

(assert (=> d!2027898 (= c!1183521 (isEmpty!37401 lt!2383829))))

(assert (=> d!2027898 (validRegex!8085 lt!2383834)))

(assert (=> d!2027898 (= (matchR!8532 lt!2383834 lt!2383829) lt!2383989)))

(declare-fun b!6465784 () Bool)

(assert (=> b!6465784 (= e!3919993 (= lt!2383989 call!558708))))

(declare-fun b!6465785 () Bool)

(declare-fun e!3919992 () Bool)

(assert (=> b!6465785 (= e!3919993 e!3919992)))

(declare-fun c!1183523 () Bool)

(assert (=> b!6465785 (= c!1183523 ((_ is EmptyLang!16349) lt!2383834))))

(declare-fun b!6465786 () Bool)

(declare-fun res!2655395 () Bool)

(assert (=> b!6465786 (=> res!2655395 e!3919987)))

(assert (=> b!6465786 (= res!2655395 (not ((_ is ElementMatch!16349) lt!2383834)))))

(assert (=> b!6465786 (= e!3919992 e!3919987)))

(declare-fun b!6465787 () Bool)

(assert (=> b!6465787 (= e!3919991 (matchR!8532 (derivativeStep!5049 lt!2383834 (head!13182 lt!2383829)) (tail!12267 lt!2383829)))))

(declare-fun b!6465788 () Bool)

(declare-fun res!2655393 () Bool)

(assert (=> b!6465788 (=> (not res!2655393) (not e!3919988))))

(assert (=> b!6465788 (= res!2655393 (isEmpty!37401 (tail!12267 lt!2383829)))))

(declare-fun b!6465789 () Bool)

(assert (=> b!6465789 (= e!3919990 e!3919989)))

(declare-fun res!2655394 () Bool)

(assert (=> b!6465789 (=> res!2655394 e!3919989)))

(assert (=> b!6465789 (= res!2655394 call!558708)))

(declare-fun b!6465790 () Bool)

(declare-fun res!2655396 () Bool)

(assert (=> b!6465790 (=> res!2655396 e!3919987)))

(assert (=> b!6465790 (= res!2655396 e!3919988)))

(declare-fun res!2655390 () Bool)

(assert (=> b!6465790 (=> (not res!2655390) (not e!3919988))))

(assert (=> b!6465790 (= res!2655390 lt!2383989)))

(declare-fun b!6465791 () Bool)

(assert (=> b!6465791 (= e!3919991 (nullable!6342 lt!2383834))))

(declare-fun b!6465792 () Bool)

(assert (=> b!6465792 (= e!3919992 (not lt!2383989))))

(assert (= (and d!2027898 c!1183521) b!6465791))

(assert (= (and d!2027898 (not c!1183521)) b!6465787))

(assert (= (and d!2027898 c!1183522) b!6465784))

(assert (= (and d!2027898 (not c!1183522)) b!6465785))

(assert (= (and b!6465785 c!1183523) b!6465792))

(assert (= (and b!6465785 (not c!1183523)) b!6465786))

(assert (= (and b!6465786 (not res!2655395)) b!6465790))

(assert (= (and b!6465790 res!2655390) b!6465782))

(assert (= (and b!6465782 res!2655391) b!6465788))

(assert (= (and b!6465788 res!2655393) b!6465783))

(assert (= (and b!6465790 (not res!2655396)) b!6465781))

(assert (= (and b!6465781 res!2655392) b!6465789))

(assert (= (and b!6465789 (not res!2655394)) b!6465780))

(assert (= (and b!6465780 (not res!2655397)) b!6465779))

(assert (= (or b!6465784 b!6465782 b!6465789) bm!558703))

(declare-fun m!7254846 () Bool)

(assert (=> bm!558703 m!7254846))

(assert (=> b!6465791 m!7254542))

(declare-fun m!7254848 () Bool)

(assert (=> b!6465780 m!7254848))

(assert (=> b!6465780 m!7254848))

(declare-fun m!7254850 () Bool)

(assert (=> b!6465780 m!7254850))

(declare-fun m!7254852 () Bool)

(assert (=> b!6465783 m!7254852))

(assert (=> b!6465779 m!7254852))

(assert (=> b!6465787 m!7254852))

(assert (=> b!6465787 m!7254852))

(declare-fun m!7254854 () Bool)

(assert (=> b!6465787 m!7254854))

(assert (=> b!6465787 m!7254848))

(assert (=> b!6465787 m!7254854))

(assert (=> b!6465787 m!7254848))

(declare-fun m!7254856 () Bool)

(assert (=> b!6465787 m!7254856))

(assert (=> b!6465788 m!7254848))

(assert (=> b!6465788 m!7254848))

(assert (=> b!6465788 m!7254850))

(assert (=> d!2027898 m!7254846))

(assert (=> d!2027898 m!7254554))

(assert (=> b!6464821 d!2027898))

(declare-fun d!2027900 () Bool)

(assert (=> d!2027900 (= (matchR!8532 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814)) (matchZipper!2361 lt!2383805 (_1!36631 lt!2383814)))))

(declare-fun lt!2383992 () Unit!158727)

(declare-fun choose!47960 ((InoxSet Context!11466) List!65348 Regex!16349 List!65346) Unit!158727)

(assert (=> d!2027900 (= lt!2383992 (choose!47960 lt!2383805 lt!2383835 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814)))))

(assert (=> d!2027900 (validRegex!8085 (reg!16678 (regOne!33210 r!7292)))))

(assert (=> d!2027900 (= (theoremZipperRegexEquiv!815 lt!2383805 lt!2383835 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814)) lt!2383992)))

(declare-fun bs!1636659 () Bool)

(assert (= bs!1636659 d!2027900))

(assert (=> bs!1636659 m!7253884))

(assert (=> bs!1636659 m!7253838))

(declare-fun m!7254858 () Bool)

(assert (=> bs!1636659 m!7254858))

(assert (=> bs!1636659 m!7254630))

(assert (=> b!6464821 d!2027900))

(declare-fun d!2027902 () Bool)

(assert (=> d!2027902 (matchR!8532 (Concat!25194 lt!2383834 (regTwo!33210 r!7292)) (++!14417 (_2!36631 lt!2383814) (_2!36631 lt!2383796)))))

(declare-fun lt!2383995 () Unit!158727)

(declare-fun choose!47961 (Regex!16349 Regex!16349 List!65346 List!65346) Unit!158727)

(assert (=> d!2027902 (= lt!2383995 (choose!47961 lt!2383834 (regTwo!33210 r!7292) (_2!36631 lt!2383814) (_2!36631 lt!2383796)))))

(declare-fun e!3919996 () Bool)

(assert (=> d!2027902 e!3919996))

(declare-fun res!2655400 () Bool)

(assert (=> d!2027902 (=> (not res!2655400) (not e!3919996))))

(assert (=> d!2027902 (= res!2655400 (validRegex!8085 lt!2383834))))

(assert (=> d!2027902 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!312 lt!2383834 (regTwo!33210 r!7292) (_2!36631 lt!2383814) (_2!36631 lt!2383796)) lt!2383995)))

(declare-fun b!6465795 () Bool)

(assert (=> b!6465795 (= e!3919996 (validRegex!8085 (regTwo!33210 r!7292)))))

(assert (= (and d!2027902 res!2655400) b!6465795))

(assert (=> d!2027902 m!7253814))

(assert (=> d!2027902 m!7253814))

(declare-fun m!7254860 () Bool)

(assert (=> d!2027902 m!7254860))

(declare-fun m!7254862 () Bool)

(assert (=> d!2027902 m!7254862))

(assert (=> d!2027902 m!7254554))

(assert (=> b!6465795 m!7254774))

(assert (=> b!6464821 d!2027902))

(declare-fun b!6465796 () Bool)

(declare-fun e!3919999 () Bool)

(assert (=> b!6465796 (= e!3919999 (not (= (head!13182 lt!2383823) (c!1183271 lt!2383807))))))

(declare-fun b!6465797 () Bool)

(declare-fun res!2655408 () Bool)

(assert (=> b!6465797 (=> res!2655408 e!3919999)))

(assert (=> b!6465797 (= res!2655408 (not (isEmpty!37401 (tail!12267 lt!2383823))))))

(declare-fun b!6465798 () Bool)

(declare-fun e!3919997 () Bool)

(declare-fun e!3920000 () Bool)

(assert (=> b!6465798 (= e!3919997 e!3920000)))

(declare-fun res!2655403 () Bool)

(assert (=> b!6465798 (=> (not res!2655403) (not e!3920000))))

(declare-fun lt!2383996 () Bool)

(assert (=> b!6465798 (= res!2655403 (not lt!2383996))))

(declare-fun b!6465799 () Bool)

(declare-fun res!2655402 () Bool)

(declare-fun e!3919998 () Bool)

(assert (=> b!6465799 (=> (not res!2655402) (not e!3919998))))

(declare-fun call!558709 () Bool)

(assert (=> b!6465799 (= res!2655402 (not call!558709))))

(declare-fun bm!558704 () Bool)

(assert (=> bm!558704 (= call!558709 (isEmpty!37401 lt!2383823))))

(declare-fun b!6465800 () Bool)

(assert (=> b!6465800 (= e!3919998 (= (head!13182 lt!2383823) (c!1183271 lt!2383807)))))

(declare-fun d!2027904 () Bool)

(declare-fun e!3920003 () Bool)

(assert (=> d!2027904 e!3920003))

(declare-fun c!1183525 () Bool)

(assert (=> d!2027904 (= c!1183525 ((_ is EmptyExpr!16349) lt!2383807))))

(declare-fun e!3920001 () Bool)

(assert (=> d!2027904 (= lt!2383996 e!3920001)))

(declare-fun c!1183524 () Bool)

(assert (=> d!2027904 (= c!1183524 (isEmpty!37401 lt!2383823))))

(assert (=> d!2027904 (validRegex!8085 lt!2383807)))

(assert (=> d!2027904 (= (matchR!8532 lt!2383807 lt!2383823) lt!2383996)))

(declare-fun b!6465801 () Bool)

(assert (=> b!6465801 (= e!3920003 (= lt!2383996 call!558709))))

(declare-fun b!6465802 () Bool)

(declare-fun e!3920002 () Bool)

(assert (=> b!6465802 (= e!3920003 e!3920002)))

(declare-fun c!1183526 () Bool)

(assert (=> b!6465802 (= c!1183526 ((_ is EmptyLang!16349) lt!2383807))))

(declare-fun b!6465803 () Bool)

(declare-fun res!2655406 () Bool)

(assert (=> b!6465803 (=> res!2655406 e!3919997)))

(assert (=> b!6465803 (= res!2655406 (not ((_ is ElementMatch!16349) lt!2383807)))))

(assert (=> b!6465803 (= e!3920002 e!3919997)))

(declare-fun b!6465804 () Bool)

(assert (=> b!6465804 (= e!3920001 (matchR!8532 (derivativeStep!5049 lt!2383807 (head!13182 lt!2383823)) (tail!12267 lt!2383823)))))

(declare-fun b!6465805 () Bool)

(declare-fun res!2655404 () Bool)

(assert (=> b!6465805 (=> (not res!2655404) (not e!3919998))))

(assert (=> b!6465805 (= res!2655404 (isEmpty!37401 (tail!12267 lt!2383823)))))

(declare-fun b!6465806 () Bool)

(assert (=> b!6465806 (= e!3920000 e!3919999)))

(declare-fun res!2655405 () Bool)

(assert (=> b!6465806 (=> res!2655405 e!3919999)))

(assert (=> b!6465806 (= res!2655405 call!558709)))

(declare-fun b!6465807 () Bool)

(declare-fun res!2655407 () Bool)

(assert (=> b!6465807 (=> res!2655407 e!3919997)))

(assert (=> b!6465807 (= res!2655407 e!3919998)))

(declare-fun res!2655401 () Bool)

(assert (=> b!6465807 (=> (not res!2655401) (not e!3919998))))

(assert (=> b!6465807 (= res!2655401 lt!2383996)))

(declare-fun b!6465808 () Bool)

(assert (=> b!6465808 (= e!3920001 (nullable!6342 lt!2383807))))

(declare-fun b!6465809 () Bool)

(assert (=> b!6465809 (= e!3920002 (not lt!2383996))))

(assert (= (and d!2027904 c!1183524) b!6465808))

(assert (= (and d!2027904 (not c!1183524)) b!6465804))

(assert (= (and d!2027904 c!1183525) b!6465801))

(assert (= (and d!2027904 (not c!1183525)) b!6465802))

(assert (= (and b!6465802 c!1183526) b!6465809))

(assert (= (and b!6465802 (not c!1183526)) b!6465803))

(assert (= (and b!6465803 (not res!2655406)) b!6465807))

(assert (= (and b!6465807 res!2655401) b!6465799))

(assert (= (and b!6465799 res!2655402) b!6465805))

(assert (= (and b!6465805 res!2655404) b!6465800))

(assert (= (and b!6465807 (not res!2655407)) b!6465798))

(assert (= (and b!6465798 res!2655403) b!6465806))

(assert (= (and b!6465806 (not res!2655405)) b!6465797))

(assert (= (and b!6465797 (not res!2655408)) b!6465796))

(assert (= (or b!6465801 b!6465799 b!6465806) bm!558704))

(declare-fun m!7254864 () Bool)

(assert (=> bm!558704 m!7254864))

(declare-fun m!7254866 () Bool)

(assert (=> b!6465808 m!7254866))

(declare-fun m!7254868 () Bool)

(assert (=> b!6465797 m!7254868))

(assert (=> b!6465797 m!7254868))

(declare-fun m!7254870 () Bool)

(assert (=> b!6465797 m!7254870))

(declare-fun m!7254872 () Bool)

(assert (=> b!6465800 m!7254872))

(assert (=> b!6465796 m!7254872))

(assert (=> b!6465804 m!7254872))

(assert (=> b!6465804 m!7254872))

(declare-fun m!7254874 () Bool)

(assert (=> b!6465804 m!7254874))

(assert (=> b!6465804 m!7254868))

(assert (=> b!6465804 m!7254874))

(assert (=> b!6465804 m!7254868))

(declare-fun m!7254876 () Bool)

(assert (=> b!6465804 m!7254876))

(assert (=> b!6465805 m!7254868))

(assert (=> b!6465805 m!7254868))

(assert (=> b!6465805 m!7254870))

(assert (=> d!2027904 m!7254864))

(assert (=> d!2027904 m!7253828))

(assert (=> b!6464821 d!2027904))

(declare-fun d!2027906 () Bool)

(declare-fun c!1183529 () Bool)

(assert (=> d!2027906 (= c!1183529 (isEmpty!37401 (_1!36631 lt!2383814)))))

(declare-fun e!3920006 () Bool)

(assert (=> d!2027906 (= (matchZipper!2361 lt!2383805 (_1!36631 lt!2383814)) e!3920006)))

(declare-fun b!6465814 () Bool)

(declare-fun nullableZipper!2110 ((InoxSet Context!11466)) Bool)

(assert (=> b!6465814 (= e!3920006 (nullableZipper!2110 lt!2383805))))

(declare-fun b!6465815 () Bool)

(assert (=> b!6465815 (= e!3920006 (matchZipper!2361 (derivationStepZipper!2315 lt!2383805 (head!13182 (_1!36631 lt!2383814))) (tail!12267 (_1!36631 lt!2383814))))))

(assert (= (and d!2027906 c!1183529) b!6465814))

(assert (= (and d!2027906 (not c!1183529)) b!6465815))

(declare-fun m!7254878 () Bool)

(assert (=> d!2027906 m!7254878))

(declare-fun m!7254880 () Bool)

(assert (=> b!6465814 m!7254880))

(declare-fun m!7254882 () Bool)

(assert (=> b!6465815 m!7254882))

(assert (=> b!6465815 m!7254882))

(declare-fun m!7254884 () Bool)

(assert (=> b!6465815 m!7254884))

(declare-fun m!7254886 () Bool)

(assert (=> b!6465815 m!7254886))

(assert (=> b!6465815 m!7254884))

(assert (=> b!6465815 m!7254886))

(declare-fun m!7254888 () Bool)

(assert (=> b!6465815 m!7254888))

(assert (=> b!6464821 d!2027906))

(declare-fun d!2027908 () Bool)

(assert (=> d!2027908 (matchR!8532 (Star!16349 (reg!16678 (regOne!33210 r!7292))) (++!14417 (_1!36631 lt!2383814) (_2!36631 lt!2383814)))))

(declare-fun lt!2383999 () Unit!158727)

(declare-fun choose!47962 (Regex!16349 List!65346 List!65346) Unit!158727)

(assert (=> d!2027908 (= lt!2383999 (choose!47962 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814) (_2!36631 lt!2383814)))))

(assert (=> d!2027908 (validRegex!8085 (Star!16349 (reg!16678 (regOne!33210 r!7292))))))

(assert (=> d!2027908 (= (lemmaStarApp!126 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814) (_2!36631 lt!2383814)) lt!2383999)))

(declare-fun bs!1636660 () Bool)

(assert (= bs!1636660 d!2027908))

(assert (=> bs!1636660 m!7253924))

(assert (=> bs!1636660 m!7253924))

(declare-fun m!7254890 () Bool)

(assert (=> bs!1636660 m!7254890))

(declare-fun m!7254892 () Bool)

(assert (=> bs!1636660 m!7254892))

(declare-fun m!7254894 () Bool)

(assert (=> bs!1636660 m!7254894))

(assert (=> b!6464821 d!2027908))

(declare-fun b!6465834 () Bool)

(declare-fun e!3920027 () Bool)

(declare-fun call!558716 () Bool)

(assert (=> b!6465834 (= e!3920027 call!558716)))

(declare-fun b!6465835 () Bool)

(declare-fun res!2655419 () Bool)

(declare-fun e!3920026 () Bool)

(assert (=> b!6465835 (=> (not res!2655419) (not e!3920026))))

(declare-fun call!558717 () Bool)

(assert (=> b!6465835 (= res!2655419 call!558717)))

(declare-fun e!3920025 () Bool)

(assert (=> b!6465835 (= e!3920025 e!3920026)))

(declare-fun b!6465836 () Bool)

(declare-fun e!3920023 () Bool)

(declare-fun e!3920021 () Bool)

(assert (=> b!6465836 (= e!3920023 e!3920021)))

(declare-fun res!2655422 () Bool)

(assert (=> b!6465836 (=> (not res!2655422) (not e!3920021))))

(assert (=> b!6465836 (= res!2655422 call!558717)))

(declare-fun b!6465837 () Bool)

(declare-fun e!3920024 () Bool)

(assert (=> b!6465837 (= e!3920024 e!3920027)))

(declare-fun res!2655423 () Bool)

(assert (=> b!6465837 (= res!2655423 (not (nullable!6342 (reg!16678 lt!2383807))))))

(assert (=> b!6465837 (=> (not res!2655423) (not e!3920027))))

(declare-fun bm!558712 () Bool)

(declare-fun call!558718 () Bool)

(declare-fun c!1183534 () Bool)

(assert (=> bm!558712 (= call!558718 (validRegex!8085 (ite c!1183534 (regTwo!33211 lt!2383807) (regTwo!33210 lt!2383807))))))

(declare-fun b!6465838 () Bool)

(assert (=> b!6465838 (= e!3920026 call!558718)))

(declare-fun b!6465839 () Bool)

(assert (=> b!6465839 (= e!3920024 e!3920025)))

(assert (=> b!6465839 (= c!1183534 ((_ is Union!16349) lt!2383807))))

(declare-fun b!6465840 () Bool)

(declare-fun res!2655420 () Bool)

(assert (=> b!6465840 (=> res!2655420 e!3920023)))

(assert (=> b!6465840 (= res!2655420 (not ((_ is Concat!25194) lt!2383807)))))

(assert (=> b!6465840 (= e!3920025 e!3920023)))

(declare-fun bm!558713 () Bool)

(declare-fun c!1183535 () Bool)

(assert (=> bm!558713 (= call!558716 (validRegex!8085 (ite c!1183535 (reg!16678 lt!2383807) (ite c!1183534 (regOne!33211 lt!2383807) (regOne!33210 lt!2383807)))))))

(declare-fun b!6465841 () Bool)

(declare-fun e!3920022 () Bool)

(assert (=> b!6465841 (= e!3920022 e!3920024)))

(assert (=> b!6465841 (= c!1183535 ((_ is Star!16349) lt!2383807))))

(declare-fun b!6465842 () Bool)

(assert (=> b!6465842 (= e!3920021 call!558718)))

(declare-fun d!2027910 () Bool)

(declare-fun res!2655421 () Bool)

(assert (=> d!2027910 (=> res!2655421 e!3920022)))

(assert (=> d!2027910 (= res!2655421 ((_ is ElementMatch!16349) lt!2383807))))

(assert (=> d!2027910 (= (validRegex!8085 lt!2383807) e!3920022)))

(declare-fun bm!558711 () Bool)

(assert (=> bm!558711 (= call!558717 call!558716)))

(assert (= (and d!2027910 (not res!2655421)) b!6465841))

(assert (= (and b!6465841 c!1183535) b!6465837))

(assert (= (and b!6465841 (not c!1183535)) b!6465839))

(assert (= (and b!6465837 res!2655423) b!6465834))

(assert (= (and b!6465839 c!1183534) b!6465835))

(assert (= (and b!6465839 (not c!1183534)) b!6465840))

(assert (= (and b!6465835 res!2655419) b!6465838))

(assert (= (and b!6465840 (not res!2655420)) b!6465836))

(assert (= (and b!6465836 res!2655422) b!6465842))

(assert (= (or b!6465838 b!6465842) bm!558712))

(assert (= (or b!6465835 b!6465836) bm!558711))

(assert (= (or b!6465834 bm!558711) bm!558713))

(declare-fun m!7254896 () Bool)

(assert (=> b!6465837 m!7254896))

(declare-fun m!7254898 () Bool)

(assert (=> bm!558712 m!7254898))

(declare-fun m!7254900 () Bool)

(assert (=> bm!558713 m!7254900))

(assert (=> b!6464821 d!2027910))

(declare-fun b!6465843 () Bool)

(declare-fun e!3920030 () Bool)

(assert (=> b!6465843 (= e!3920030 (not (= (head!13182 (_1!36631 lt!2383814)) (c!1183271 (reg!16678 (regOne!33210 r!7292))))))))

(declare-fun b!6465844 () Bool)

(declare-fun res!2655431 () Bool)

(assert (=> b!6465844 (=> res!2655431 e!3920030)))

(assert (=> b!6465844 (= res!2655431 (not (isEmpty!37401 (tail!12267 (_1!36631 lt!2383814)))))))

(declare-fun b!6465845 () Bool)

(declare-fun e!3920028 () Bool)

(declare-fun e!3920031 () Bool)

(assert (=> b!6465845 (= e!3920028 e!3920031)))

(declare-fun res!2655426 () Bool)

(assert (=> b!6465845 (=> (not res!2655426) (not e!3920031))))

(declare-fun lt!2384000 () Bool)

(assert (=> b!6465845 (= res!2655426 (not lt!2384000))))

(declare-fun b!6465846 () Bool)

(declare-fun res!2655425 () Bool)

(declare-fun e!3920029 () Bool)

(assert (=> b!6465846 (=> (not res!2655425) (not e!3920029))))

(declare-fun call!558719 () Bool)

(assert (=> b!6465846 (= res!2655425 (not call!558719))))

(declare-fun bm!558714 () Bool)

(assert (=> bm!558714 (= call!558719 (isEmpty!37401 (_1!36631 lt!2383814)))))

(declare-fun b!6465847 () Bool)

(assert (=> b!6465847 (= e!3920029 (= (head!13182 (_1!36631 lt!2383814)) (c!1183271 (reg!16678 (regOne!33210 r!7292)))))))

(declare-fun d!2027912 () Bool)

(declare-fun e!3920034 () Bool)

(assert (=> d!2027912 e!3920034))

(declare-fun c!1183537 () Bool)

(assert (=> d!2027912 (= c!1183537 ((_ is EmptyExpr!16349) (reg!16678 (regOne!33210 r!7292))))))

(declare-fun e!3920032 () Bool)

(assert (=> d!2027912 (= lt!2384000 e!3920032)))

(declare-fun c!1183536 () Bool)

(assert (=> d!2027912 (= c!1183536 (isEmpty!37401 (_1!36631 lt!2383814)))))

(assert (=> d!2027912 (validRegex!8085 (reg!16678 (regOne!33210 r!7292)))))

(assert (=> d!2027912 (= (matchR!8532 (reg!16678 (regOne!33210 r!7292)) (_1!36631 lt!2383814)) lt!2384000)))

(declare-fun b!6465848 () Bool)

(assert (=> b!6465848 (= e!3920034 (= lt!2384000 call!558719))))

(declare-fun b!6465849 () Bool)

(declare-fun e!3920033 () Bool)

(assert (=> b!6465849 (= e!3920034 e!3920033)))

(declare-fun c!1183538 () Bool)

(assert (=> b!6465849 (= c!1183538 ((_ is EmptyLang!16349) (reg!16678 (regOne!33210 r!7292))))))

(declare-fun b!6465850 () Bool)

(declare-fun res!2655429 () Bool)

(assert (=> b!6465850 (=> res!2655429 e!3920028)))

(assert (=> b!6465850 (= res!2655429 (not ((_ is ElementMatch!16349) (reg!16678 (regOne!33210 r!7292)))))))

(assert (=> b!6465850 (= e!3920033 e!3920028)))

(declare-fun b!6465851 () Bool)

(assert (=> b!6465851 (= e!3920032 (matchR!8532 (derivativeStep!5049 (reg!16678 (regOne!33210 r!7292)) (head!13182 (_1!36631 lt!2383814))) (tail!12267 (_1!36631 lt!2383814))))))

(declare-fun b!6465852 () Bool)

(declare-fun res!2655427 () Bool)

(assert (=> b!6465852 (=> (not res!2655427) (not e!3920029))))

(assert (=> b!6465852 (= res!2655427 (isEmpty!37401 (tail!12267 (_1!36631 lt!2383814))))))

(declare-fun b!6465853 () Bool)

(assert (=> b!6465853 (= e!3920031 e!3920030)))

(declare-fun res!2655428 () Bool)

(assert (=> b!6465853 (=> res!2655428 e!3920030)))

(assert (=> b!6465853 (= res!2655428 call!558719)))

(declare-fun b!6465854 () Bool)

(declare-fun res!2655430 () Bool)

(assert (=> b!6465854 (=> res!2655430 e!3920028)))

(assert (=> b!6465854 (= res!2655430 e!3920029)))

(declare-fun res!2655424 () Bool)

(assert (=> b!6465854 (=> (not res!2655424) (not e!3920029))))

(assert (=> b!6465854 (= res!2655424 lt!2384000)))

(declare-fun b!6465855 () Bool)

(assert (=> b!6465855 (= e!3920032 (nullable!6342 (reg!16678 (regOne!33210 r!7292))))))

(declare-fun b!6465856 () Bool)

(assert (=> b!6465856 (= e!3920033 (not lt!2384000))))

(assert (= (and d!2027912 c!1183536) b!6465855))

(assert (= (and d!2027912 (not c!1183536)) b!6465851))

(assert (= (and d!2027912 c!1183537) b!6465848))

(assert (= (and d!2027912 (not c!1183537)) b!6465849))

(assert (= (and b!6465849 c!1183538) b!6465856))

(assert (= (and b!6465849 (not c!1183538)) b!6465850))

(assert (= (and b!6465850 (not res!2655429)) b!6465854))

(assert (= (and b!6465854 res!2655424) b!6465846))

(assert (= (and b!6465846 res!2655425) b!6465852))

(assert (= (and b!6465852 res!2655427) b!6465847))

(assert (= (and b!6465854 (not res!2655430)) b!6465845))

(assert (= (and b!6465845 res!2655426) b!6465853))

(assert (= (and b!6465853 (not res!2655428)) b!6465844))

(assert (= (and b!6465844 (not res!2655431)) b!6465843))

(assert (= (or b!6465848 b!6465846 b!6465853) bm!558714))

(assert (=> bm!558714 m!7254878))

(declare-fun m!7254902 () Bool)

(assert (=> b!6465855 m!7254902))

(assert (=> b!6465844 m!7254886))

(assert (=> b!6465844 m!7254886))

(declare-fun m!7254904 () Bool)

(assert (=> b!6465844 m!7254904))

(assert (=> b!6465847 m!7254882))

(assert (=> b!6465843 m!7254882))

(assert (=> b!6465851 m!7254882))

(assert (=> b!6465851 m!7254882))

(declare-fun m!7254906 () Bool)

(assert (=> b!6465851 m!7254906))

(assert (=> b!6465851 m!7254886))

(assert (=> b!6465851 m!7254906))

(assert (=> b!6465851 m!7254886))

(declare-fun m!7254908 () Bool)

(assert (=> b!6465851 m!7254908))

(assert (=> b!6465852 m!7254886))

(assert (=> b!6465852 m!7254886))

(assert (=> b!6465852 m!7254904))

(assert (=> d!2027912 m!7254878))

(assert (=> d!2027912 m!7254630))

(assert (=> b!6464819 d!2027912))

(declare-fun d!2027914 () Bool)

(assert (=> d!2027914 (= (nullable!6342 (regOne!33210 (regOne!33210 r!7292))) (nullableFct!2283 (regOne!33210 (regOne!33210 r!7292))))))

(declare-fun bs!1636661 () Bool)

(assert (= bs!1636661 d!2027914))

(declare-fun m!7254910 () Bool)

(assert (=> bs!1636661 m!7254910))

(assert (=> b!6464820 d!2027914))

(declare-fun d!2027916 () Bool)

(declare-fun lt!2384001 () Regex!16349)

(assert (=> d!2027916 (validRegex!8085 lt!2384001)))

(assert (=> d!2027916 (= lt!2384001 (generalisedUnion!2193 (unfocusZipperList!1770 (Cons!65224 lt!2383818 Nil!65224))))))

(assert (=> d!2027916 (= (unfocusZipper!2091 (Cons!65224 lt!2383818 Nil!65224)) lt!2384001)))

(declare-fun bs!1636662 () Bool)

(assert (= bs!1636662 d!2027916))

(declare-fun m!7254912 () Bool)

(assert (=> bs!1636662 m!7254912))

(declare-fun m!7254914 () Bool)

(assert (=> bs!1636662 m!7254914))

(assert (=> bs!1636662 m!7254914))

(declare-fun m!7254916 () Bool)

(assert (=> bs!1636662 m!7254916))

(assert (=> b!6464839 d!2027916))

(declare-fun d!2027918 () Bool)

(assert (=> d!2027918 (= (isEmpty!37400 (t!378969 (exprs!6233 (h!71672 zl!343)))) ((_ is Nil!65223) (t!378969 (exprs!6233 (h!71672 zl!343)))))))

(assert (=> b!6464823 d!2027918))

(declare-fun b!6465857 () Bool)

(declare-fun e!3920041 () Bool)

(declare-fun call!558720 () Bool)

(assert (=> b!6465857 (= e!3920041 call!558720)))

(declare-fun b!6465858 () Bool)

(declare-fun res!2655432 () Bool)

(declare-fun e!3920040 () Bool)

(assert (=> b!6465858 (=> (not res!2655432) (not e!3920040))))

(declare-fun call!558721 () Bool)

(assert (=> b!6465858 (= res!2655432 call!558721)))

(declare-fun e!3920039 () Bool)

(assert (=> b!6465858 (= e!3920039 e!3920040)))

(declare-fun b!6465859 () Bool)

(declare-fun e!3920037 () Bool)

(declare-fun e!3920035 () Bool)

(assert (=> b!6465859 (= e!3920037 e!3920035)))

(declare-fun res!2655435 () Bool)

(assert (=> b!6465859 (=> (not res!2655435) (not e!3920035))))

(assert (=> b!6465859 (= res!2655435 call!558721)))

(declare-fun b!6465860 () Bool)

(declare-fun e!3920038 () Bool)

(assert (=> b!6465860 (= e!3920038 e!3920041)))

(declare-fun res!2655436 () Bool)

(assert (=> b!6465860 (= res!2655436 (not (nullable!6342 (reg!16678 r!7292))))))

(assert (=> b!6465860 (=> (not res!2655436) (not e!3920041))))

(declare-fun bm!558716 () Bool)

(declare-fun call!558722 () Bool)

(declare-fun c!1183539 () Bool)

(assert (=> bm!558716 (= call!558722 (validRegex!8085 (ite c!1183539 (regTwo!33211 r!7292) (regTwo!33210 r!7292))))))

(declare-fun b!6465861 () Bool)

(assert (=> b!6465861 (= e!3920040 call!558722)))

(declare-fun b!6465862 () Bool)

(assert (=> b!6465862 (= e!3920038 e!3920039)))

(assert (=> b!6465862 (= c!1183539 ((_ is Union!16349) r!7292))))

(declare-fun b!6465863 () Bool)

(declare-fun res!2655433 () Bool)

(assert (=> b!6465863 (=> res!2655433 e!3920037)))

(assert (=> b!6465863 (= res!2655433 (not ((_ is Concat!25194) r!7292)))))

(assert (=> b!6465863 (= e!3920039 e!3920037)))

(declare-fun bm!558717 () Bool)

(declare-fun c!1183540 () Bool)

(assert (=> bm!558717 (= call!558720 (validRegex!8085 (ite c!1183540 (reg!16678 r!7292) (ite c!1183539 (regOne!33211 r!7292) (regOne!33210 r!7292)))))))

(declare-fun b!6465864 () Bool)

(declare-fun e!3920036 () Bool)

(assert (=> b!6465864 (= e!3920036 e!3920038)))

(assert (=> b!6465864 (= c!1183540 ((_ is Star!16349) r!7292))))

(declare-fun b!6465865 () Bool)

(assert (=> b!6465865 (= e!3920035 call!558722)))

(declare-fun d!2027920 () Bool)

(declare-fun res!2655434 () Bool)

(assert (=> d!2027920 (=> res!2655434 e!3920036)))

(assert (=> d!2027920 (= res!2655434 ((_ is ElementMatch!16349) r!7292))))

(assert (=> d!2027920 (= (validRegex!8085 r!7292) e!3920036)))

(declare-fun bm!558715 () Bool)

(assert (=> bm!558715 (= call!558721 call!558720)))

(assert (= (and d!2027920 (not res!2655434)) b!6465864))

(assert (= (and b!6465864 c!1183540) b!6465860))

(assert (= (and b!6465864 (not c!1183540)) b!6465862))

(assert (= (and b!6465860 res!2655436) b!6465857))

(assert (= (and b!6465862 c!1183539) b!6465858))

(assert (= (and b!6465862 (not c!1183539)) b!6465863))

(assert (= (and b!6465858 res!2655432) b!6465861))

(assert (= (and b!6465863 (not res!2655433)) b!6465859))

(assert (= (and b!6465859 res!2655435) b!6465865))

(assert (= (or b!6465861 b!6465865) bm!558716))

(assert (= (or b!6465858 b!6465859) bm!558715))

(assert (= (or b!6465857 bm!558715) bm!558717))

(declare-fun m!7254918 () Bool)

(assert (=> b!6465860 m!7254918))

(declare-fun m!7254920 () Bool)

(assert (=> bm!558716 m!7254920))

(declare-fun m!7254922 () Bool)

(assert (=> bm!558717 m!7254922))

(assert (=> start!636310 d!2027920))

(declare-fun d!2027922 () Bool)

(declare-fun e!3920044 () Bool)

(assert (=> d!2027922 e!3920044))

(declare-fun res!2655439 () Bool)

(assert (=> d!2027922 (=> (not res!2655439) (not e!3920044))))

(declare-fun lt!2384004 () List!65348)

(declare-fun noDuplicate!2174 (List!65348) Bool)

(assert (=> d!2027922 (= res!2655439 (noDuplicate!2174 lt!2384004))))

(declare-fun choose!47963 ((InoxSet Context!11466)) List!65348)

(assert (=> d!2027922 (= lt!2384004 (choose!47963 lt!2383787))))

(assert (=> d!2027922 (= (toList!10133 lt!2383787) lt!2384004)))

(declare-fun b!6465868 () Bool)

(declare-fun content!12405 (List!65348) (InoxSet Context!11466))

(assert (=> b!6465868 (= e!3920044 (= (content!12405 lt!2384004) lt!2383787))))

(assert (= (and d!2027922 res!2655439) b!6465868))

(declare-fun m!7254924 () Bool)

(assert (=> d!2027922 m!7254924))

(declare-fun m!7254926 () Bool)

(assert (=> d!2027922 m!7254926))

(declare-fun m!7254928 () Bool)

(assert (=> b!6465868 m!7254928))

(assert (=> b!6464843 d!2027922))

(declare-fun d!2027924 () Bool)

(declare-fun c!1183541 () Bool)

(assert (=> d!2027924 (= c!1183541 (isEmpty!37401 s!2326))))

(declare-fun e!3920045 () Bool)

(assert (=> d!2027924 (= (matchZipper!2361 lt!2383819 s!2326) e!3920045)))

(declare-fun b!6465869 () Bool)

(assert (=> b!6465869 (= e!3920045 (nullableZipper!2110 lt!2383819))))

(declare-fun b!6465870 () Bool)

(assert (=> b!6465870 (= e!3920045 (matchZipper!2361 (derivationStepZipper!2315 lt!2383819 (head!13182 s!2326)) (tail!12267 s!2326)))))

(assert (= (and d!2027924 c!1183541) b!6465869))

(assert (= (and d!2027924 (not c!1183541)) b!6465870))

(assert (=> d!2027924 m!7254776))

(declare-fun m!7254930 () Bool)

(assert (=> b!6465869 m!7254930))

(assert (=> b!6465870 m!7254784))

(assert (=> b!6465870 m!7254784))

(declare-fun m!7254932 () Bool)

(assert (=> b!6465870 m!7254932))

(assert (=> b!6465870 m!7254780))

(assert (=> b!6465870 m!7254932))

(assert (=> b!6465870 m!7254780))

(declare-fun m!7254934 () Bool)

(assert (=> b!6465870 m!7254934))

(assert (=> b!6464822 d!2027924))

(declare-fun d!2027926 () Bool)

(declare-fun c!1183542 () Bool)

(assert (=> d!2027926 (= c!1183542 (isEmpty!37401 (t!378968 s!2326)))))

(declare-fun e!3920046 () Bool)

(assert (=> d!2027926 (= (matchZipper!2361 lt!2383797 (t!378968 s!2326)) e!3920046)))

(declare-fun b!6465871 () Bool)

(assert (=> b!6465871 (= e!3920046 (nullableZipper!2110 lt!2383797))))

(declare-fun b!6465872 () Bool)

(assert (=> b!6465872 (= e!3920046 (matchZipper!2361 (derivationStepZipper!2315 lt!2383797 (head!13182 (t!378968 s!2326))) (tail!12267 (t!378968 s!2326))))))

(assert (= (and d!2027926 c!1183542) b!6465871))

(assert (= (and d!2027926 (not c!1183542)) b!6465872))

(declare-fun m!7254936 () Bool)

(assert (=> d!2027926 m!7254936))

(declare-fun m!7254938 () Bool)

(assert (=> b!6465871 m!7254938))

(declare-fun m!7254940 () Bool)

(assert (=> b!6465872 m!7254940))

(assert (=> b!6465872 m!7254940))

(declare-fun m!7254942 () Bool)

(assert (=> b!6465872 m!7254942))

(declare-fun m!7254944 () Bool)

(assert (=> b!6465872 m!7254944))

(assert (=> b!6465872 m!7254942))

(assert (=> b!6465872 m!7254944))

(declare-fun m!7254946 () Bool)

(assert (=> b!6465872 m!7254946))

(assert (=> b!6464822 d!2027926))

(declare-fun b!6465876 () Bool)

(declare-fun e!3920047 () Bool)

(declare-fun lt!2384005 () List!65346)

(assert (=> b!6465876 (= e!3920047 (or (not (= lt!2383823 Nil!65222)) (= lt!2384005 (_1!36631 lt!2383814))))))

(declare-fun b!6465874 () Bool)

(declare-fun e!3920048 () List!65346)

(assert (=> b!6465874 (= e!3920048 (Cons!65222 (h!71670 (_1!36631 lt!2383814)) (++!14417 (t!378968 (_1!36631 lt!2383814)) lt!2383823)))))

(declare-fun b!6465875 () Bool)

(declare-fun res!2655440 () Bool)

(assert (=> b!6465875 (=> (not res!2655440) (not e!3920047))))

(assert (=> b!6465875 (= res!2655440 (= (size!40404 lt!2384005) (+ (size!40404 (_1!36631 lt!2383814)) (size!40404 lt!2383823))))))

(declare-fun b!6465873 () Bool)

(assert (=> b!6465873 (= e!3920048 lt!2383823)))

(declare-fun d!2027928 () Bool)

(assert (=> d!2027928 e!3920047))

(declare-fun res!2655441 () Bool)

(assert (=> d!2027928 (=> (not res!2655441) (not e!3920047))))

(assert (=> d!2027928 (= res!2655441 (= (content!12404 lt!2384005) ((_ map or) (content!12404 (_1!36631 lt!2383814)) (content!12404 lt!2383823))))))

(assert (=> d!2027928 (= lt!2384005 e!3920048)))

(declare-fun c!1183543 () Bool)

(assert (=> d!2027928 (= c!1183543 ((_ is Nil!65222) (_1!36631 lt!2383814)))))

(assert (=> d!2027928 (= (++!14417 (_1!36631 lt!2383814) lt!2383823) lt!2384005)))

(assert (= (and d!2027928 c!1183543) b!6465873))

(assert (= (and d!2027928 (not c!1183543)) b!6465874))

(assert (= (and d!2027928 res!2655441) b!6465875))

(assert (= (and b!6465875 res!2655440) b!6465876))

(declare-fun m!7254948 () Bool)

(assert (=> b!6465874 m!7254948))

(declare-fun m!7254950 () Bool)

(assert (=> b!6465875 m!7254950))

(assert (=> b!6465875 m!7254716))

(declare-fun m!7254952 () Bool)

(assert (=> b!6465875 m!7254952))

(declare-fun m!7254954 () Bool)

(assert (=> d!2027928 m!7254954))

(assert (=> d!2027928 m!7254722))

(declare-fun m!7254956 () Bool)

(assert (=> d!2027928 m!7254956))

(assert (=> b!6464841 d!2027928))

(declare-fun b!6465880 () Bool)

(declare-fun e!3920049 () Bool)

(declare-fun lt!2384006 () List!65346)

(assert (=> b!6465880 (= e!3920049 (or (not (= (_2!36631 lt!2383796) Nil!65222)) (= lt!2384006 lt!2383829)))))

(declare-fun b!6465878 () Bool)

(declare-fun e!3920050 () List!65346)

(assert (=> b!6465878 (= e!3920050 (Cons!65222 (h!71670 lt!2383829) (++!14417 (t!378968 lt!2383829) (_2!36631 lt!2383796))))))

(declare-fun b!6465879 () Bool)

(declare-fun res!2655442 () Bool)

(assert (=> b!6465879 (=> (not res!2655442) (not e!3920049))))

(assert (=> b!6465879 (= res!2655442 (= (size!40404 lt!2384006) (+ (size!40404 lt!2383829) (size!40404 (_2!36631 lt!2383796)))))))

(declare-fun b!6465877 () Bool)

(assert (=> b!6465877 (= e!3920050 (_2!36631 lt!2383796))))

(declare-fun d!2027930 () Bool)

(assert (=> d!2027930 e!3920049))

(declare-fun res!2655443 () Bool)

(assert (=> d!2027930 (=> (not res!2655443) (not e!3920049))))

(assert (=> d!2027930 (= res!2655443 (= (content!12404 lt!2384006) ((_ map or) (content!12404 lt!2383829) (content!12404 (_2!36631 lt!2383796)))))))

(assert (=> d!2027930 (= lt!2384006 e!3920050)))

(declare-fun c!1183544 () Bool)

(assert (=> d!2027930 (= c!1183544 ((_ is Nil!65222) lt!2383829))))

(assert (=> d!2027930 (= (++!14417 lt!2383829 (_2!36631 lt!2383796)) lt!2384006)))

(assert (= (and d!2027930 c!1183544) b!6465877))

(assert (= (and d!2027930 (not c!1183544)) b!6465878))

(assert (= (and d!2027930 res!2655443) b!6465879))

(assert (= (and b!6465879 res!2655442) b!6465880))

(declare-fun m!7254958 () Bool)

(assert (=> b!6465878 m!7254958))

(declare-fun m!7254960 () Bool)

(assert (=> b!6465879 m!7254960))

(declare-fun m!7254962 () Bool)

(assert (=> b!6465879 m!7254962))

(assert (=> b!6465879 m!7254812))

(declare-fun m!7254964 () Bool)

(assert (=> d!2027930 m!7254964))

(declare-fun m!7254966 () Bool)

(assert (=> d!2027930 m!7254966))

(assert (=> d!2027930 m!7254818))

(assert (=> b!6464841 d!2027930))

(declare-fun lt!2384007 () List!65346)

(declare-fun e!3920051 () Bool)

(declare-fun b!6465884 () Bool)

(assert (=> b!6465884 (= e!3920051 (or (not (= (_2!36631 lt!2383796) Nil!65222)) (= lt!2384007 (_2!36631 lt!2383814))))))

(declare-fun b!6465882 () Bool)

(declare-fun e!3920052 () List!65346)

(assert (=> b!6465882 (= e!3920052 (Cons!65222 (h!71670 (_2!36631 lt!2383814)) (++!14417 (t!378968 (_2!36631 lt!2383814)) (_2!36631 lt!2383796))))))

(declare-fun b!6465883 () Bool)

(declare-fun res!2655444 () Bool)

(assert (=> b!6465883 (=> (not res!2655444) (not e!3920051))))

(assert (=> b!6465883 (= res!2655444 (= (size!40404 lt!2384007) (+ (size!40404 (_2!36631 lt!2383814)) (size!40404 (_2!36631 lt!2383796)))))))

(declare-fun b!6465881 () Bool)

(assert (=> b!6465881 (= e!3920052 (_2!36631 lt!2383796))))

(declare-fun d!2027932 () Bool)

(assert (=> d!2027932 e!3920051))

(declare-fun res!2655445 () Bool)

(assert (=> d!2027932 (=> (not res!2655445) (not e!3920051))))

(assert (=> d!2027932 (= res!2655445 (= (content!12404 lt!2384007) ((_ map or) (content!12404 (_2!36631 lt!2383814)) (content!12404 (_2!36631 lt!2383796)))))))

(assert (=> d!2027932 (= lt!2384007 e!3920052)))

(declare-fun c!1183545 () Bool)

(assert (=> d!2027932 (= c!1183545 ((_ is Nil!65222) (_2!36631 lt!2383814)))))

(assert (=> d!2027932 (= (++!14417 (_2!36631 lt!2383814) (_2!36631 lt!2383796)) lt!2384007)))

(assert (= (and d!2027932 c!1183545) b!6465881))

(assert (= (and d!2027932 (not c!1183545)) b!6465882))

(assert (= (and d!2027932 res!2655445) b!6465883))

(assert (= (and b!6465883 res!2655444) b!6465884))

(declare-fun m!7254968 () Bool)

(assert (=> b!6465882 m!7254968))

(declare-fun m!7254970 () Bool)

(assert (=> b!6465883 m!7254970))

(assert (=> b!6465883 m!7254718))

(assert (=> b!6465883 m!7254812))

(declare-fun m!7254972 () Bool)

(assert (=> d!2027932 m!7254972))

(assert (=> d!2027932 m!7254724))

(assert (=> d!2027932 m!7254818))

(assert (=> b!6464841 d!2027932))

(declare-fun d!2027934 () Bool)

(assert (=> d!2027934 (= (++!14417 (++!14417 (_1!36631 lt!2383814) (_2!36631 lt!2383814)) (_2!36631 lt!2383796)) (++!14417 (_1!36631 lt!2383814) (++!14417 (_2!36631 lt!2383814) (_2!36631 lt!2383796))))))

(declare-fun lt!2384010 () Unit!158727)

(declare-fun choose!47964 (List!65346 List!65346 List!65346) Unit!158727)

(assert (=> d!2027934 (= lt!2384010 (choose!47964 (_1!36631 lt!2383814) (_2!36631 lt!2383814) (_2!36631 lt!2383796)))))

(assert (=> d!2027934 (= (lemmaConcatAssociativity!2920 (_1!36631 lt!2383814) (_2!36631 lt!2383814) (_2!36631 lt!2383796)) lt!2384010)))

(declare-fun bs!1636663 () Bool)

(assert (= bs!1636663 d!2027934))

(assert (=> bs!1636663 m!7253814))

(declare-fun m!7254974 () Bool)

(assert (=> bs!1636663 m!7254974))

(declare-fun m!7254976 () Bool)

(assert (=> bs!1636663 m!7254976))

(assert (=> bs!1636663 m!7253814))

(assert (=> bs!1636663 m!7253924))

(declare-fun m!7254978 () Bool)

(assert (=> bs!1636663 m!7254978))

(assert (=> bs!1636663 m!7253924))

(assert (=> b!6464841 d!2027934))

(declare-fun e!3920055 () Bool)

(declare-fun d!2027936 () Bool)

(assert (=> d!2027936 (= (matchZipper!2361 ((_ map or) lt!2383792 lt!2383802) (t!378968 s!2326)) e!3920055)))

(declare-fun res!2655448 () Bool)

(assert (=> d!2027936 (=> res!2655448 e!3920055)))

(assert (=> d!2027936 (= res!2655448 (matchZipper!2361 lt!2383792 (t!378968 s!2326)))))

(declare-fun lt!2384013 () Unit!158727)

(declare-fun choose!47965 ((InoxSet Context!11466) (InoxSet Context!11466) List!65346) Unit!158727)

(assert (=> d!2027936 (= lt!2384013 (choose!47965 lt!2383792 lt!2383802 (t!378968 s!2326)))))

(assert (=> d!2027936 (= (lemmaZipperConcatMatchesSameAsBothZippers!1180 lt!2383792 lt!2383802 (t!378968 s!2326)) lt!2384013)))

(declare-fun b!6465887 () Bool)

(assert (=> b!6465887 (= e!3920055 (matchZipper!2361 lt!2383802 (t!378968 s!2326)))))

(assert (= (and d!2027936 (not res!2655448)) b!6465887))

(assert (=> d!2027936 m!7253846))

(assert (=> d!2027936 m!7253844))

(declare-fun m!7254980 () Bool)

(assert (=> d!2027936 m!7254980))

(assert (=> b!6465887 m!7253824))

(assert (=> b!6464842 d!2027936))

(declare-fun d!2027938 () Bool)

(declare-fun c!1183546 () Bool)

(assert (=> d!2027938 (= c!1183546 (isEmpty!37401 (t!378968 s!2326)))))

(declare-fun e!3920056 () Bool)

(assert (=> d!2027938 (= (matchZipper!2361 lt!2383792 (t!378968 s!2326)) e!3920056)))

(declare-fun b!6465888 () Bool)

(assert (=> b!6465888 (= e!3920056 (nullableZipper!2110 lt!2383792))))

(declare-fun b!6465889 () Bool)

(assert (=> b!6465889 (= e!3920056 (matchZipper!2361 (derivationStepZipper!2315 lt!2383792 (head!13182 (t!378968 s!2326))) (tail!12267 (t!378968 s!2326))))))

(assert (= (and d!2027938 c!1183546) b!6465888))

(assert (= (and d!2027938 (not c!1183546)) b!6465889))

(assert (=> d!2027938 m!7254936))

(declare-fun m!7254982 () Bool)

(assert (=> b!6465888 m!7254982))

(assert (=> b!6465889 m!7254940))

(assert (=> b!6465889 m!7254940))

(declare-fun m!7254984 () Bool)

(assert (=> b!6465889 m!7254984))

(assert (=> b!6465889 m!7254944))

(assert (=> b!6465889 m!7254984))

(assert (=> b!6465889 m!7254944))

(declare-fun m!7254986 () Bool)

(assert (=> b!6465889 m!7254986))

(assert (=> b!6464842 d!2027938))

(declare-fun d!2027940 () Bool)

(declare-fun c!1183547 () Bool)

(assert (=> d!2027940 (= c!1183547 (isEmpty!37401 (t!378968 s!2326)))))

(declare-fun e!3920057 () Bool)

(assert (=> d!2027940 (= (matchZipper!2361 ((_ map or) lt!2383792 lt!2383802) (t!378968 s!2326)) e!3920057)))

(declare-fun b!6465890 () Bool)

(assert (=> b!6465890 (= e!3920057 (nullableZipper!2110 ((_ map or) lt!2383792 lt!2383802)))))

(declare-fun b!6465891 () Bool)

(assert (=> b!6465891 (= e!3920057 (matchZipper!2361 (derivationStepZipper!2315 ((_ map or) lt!2383792 lt!2383802) (head!13182 (t!378968 s!2326))) (tail!12267 (t!378968 s!2326))))))

(assert (= (and d!2027940 c!1183547) b!6465890))

(assert (= (and d!2027940 (not c!1183547)) b!6465891))

(assert (=> d!2027940 m!7254936))

(declare-fun m!7254988 () Bool)

(assert (=> b!6465890 m!7254988))

(assert (=> b!6465891 m!7254940))

(assert (=> b!6465891 m!7254940))

(declare-fun m!7254990 () Bool)

(assert (=> b!6465891 m!7254990))

(assert (=> b!6465891 m!7254944))

(assert (=> b!6465891 m!7254990))

(assert (=> b!6465891 m!7254944))

(declare-fun m!7254992 () Bool)

(assert (=> b!6465891 m!7254992))

(assert (=> b!6464842 d!2027940))

(declare-fun d!2027942 () Bool)

(declare-fun c!1183548 () Bool)

(assert (=> d!2027942 (= c!1183548 (isEmpty!37401 (t!378968 s!2326)))))

(declare-fun e!3920058 () Bool)

(assert (=> d!2027942 (= (matchZipper!2361 lt!2383802 (t!378968 s!2326)) e!3920058)))

(declare-fun b!6465892 () Bool)

(assert (=> b!6465892 (= e!3920058 (nullableZipper!2110 lt!2383802))))

(declare-fun b!6465893 () Bool)

(assert (=> b!6465893 (= e!3920058 (matchZipper!2361 (derivationStepZipper!2315 lt!2383802 (head!13182 (t!378968 s!2326))) (tail!12267 (t!378968 s!2326))))))

(assert (= (and d!2027942 c!1183548) b!6465892))

(assert (= (and d!2027942 (not c!1183548)) b!6465893))

(assert (=> d!2027942 m!7254936))

(declare-fun m!7254994 () Bool)

(assert (=> b!6465892 m!7254994))

(assert (=> b!6465893 m!7254940))

(assert (=> b!6465893 m!7254940))

(declare-fun m!7254996 () Bool)

(assert (=> b!6465893 m!7254996))

(assert (=> b!6465893 m!7254944))

(assert (=> b!6465893 m!7254996))

(assert (=> b!6465893 m!7254944))

(declare-fun m!7254998 () Bool)

(assert (=> b!6465893 m!7254998))

(assert (=> b!6464825 d!2027942))

(declare-fun d!2027944 () Bool)

(assert (=> d!2027944 (= (flatMap!1854 lt!2383819 lambda!357369) (choose!47952 lt!2383819 lambda!357369))))

(declare-fun bs!1636664 () Bool)

(assert (= bs!1636664 d!2027944))

(declare-fun m!7255000 () Bool)

(assert (=> bs!1636664 m!7255000))

(assert (=> b!6464845 d!2027944))

(declare-fun b!6465894 () Bool)

(declare-fun e!3920061 () (InoxSet Context!11466))

(declare-fun call!558723 () (InoxSet Context!11466))

(assert (=> b!6465894 (= e!3920061 call!558723)))

(declare-fun d!2027946 () Bool)

(declare-fun c!1183549 () Bool)

(declare-fun e!3920060 () Bool)

(assert (=> d!2027946 (= c!1183549 e!3920060)))

(declare-fun res!2655449 () Bool)

(assert (=> d!2027946 (=> (not res!2655449) (not e!3920060))))

(assert (=> d!2027946 (= res!2655449 ((_ is Cons!65223) (exprs!6233 lt!2383818)))))

(declare-fun e!3920059 () (InoxSet Context!11466))

(assert (=> d!2027946 (= (derivationStepZipperUp!1523 lt!2383818 (h!71670 s!2326)) e!3920059)))

(declare-fun b!6465895 () Bool)

(assert (=> b!6465895 (= e!3920059 e!3920061)))

(declare-fun c!1183550 () Bool)

(assert (=> b!6465895 (= c!1183550 ((_ is Cons!65223) (exprs!6233 lt!2383818)))))

(declare-fun b!6465896 () Bool)

(assert (=> b!6465896 (= e!3920060 (nullable!6342 (h!71671 (exprs!6233 lt!2383818))))))

(declare-fun b!6465897 () Bool)

(assert (=> b!6465897 (= e!3920059 ((_ map or) call!558723 (derivationStepZipperUp!1523 (Context!11467 (t!378969 (exprs!6233 lt!2383818))) (h!71670 s!2326))))))

(declare-fun b!6465898 () Bool)

(assert (=> b!6465898 (= e!3920061 ((as const (Array Context!11466 Bool)) false))))

(declare-fun bm!558718 () Bool)

(assert (=> bm!558718 (= call!558723 (derivationStepZipperDown!1597 (h!71671 (exprs!6233 lt!2383818)) (Context!11467 (t!378969 (exprs!6233 lt!2383818))) (h!71670 s!2326)))))

(assert (= (and d!2027946 res!2655449) b!6465896))

(assert (= (and d!2027946 c!1183549) b!6465897))

(assert (= (and d!2027946 (not c!1183549)) b!6465895))

(assert (= (and b!6465895 c!1183550) b!6465894))

(assert (= (and b!6465895 (not c!1183550)) b!6465898))

(assert (= (or b!6465897 b!6465894) bm!558718))

(declare-fun m!7255002 () Bool)

(assert (=> b!6465896 m!7255002))

(declare-fun m!7255004 () Bool)

(assert (=> b!6465897 m!7255004))

(declare-fun m!7255006 () Bool)

(assert (=> bm!558718 m!7255006))

(assert (=> b!6464845 d!2027946))

(declare-fun d!2027948 () Bool)

(assert (=> d!2027948 (= (flatMap!1854 lt!2383819 lambda!357369) (dynLambda!25909 lambda!357369 lt!2383818))))

(declare-fun lt!2384014 () Unit!158727)

(assert (=> d!2027948 (= lt!2384014 (choose!47953 lt!2383819 lt!2383818 lambda!357369))))

(assert (=> d!2027948 (= lt!2383819 (store ((as const (Array Context!11466 Bool)) false) lt!2383818 true))))

(assert (=> d!2027948 (= (lemmaFlatMapOnSingletonSet!1380 lt!2383819 lt!2383818 lambda!357369) lt!2384014)))

(declare-fun b_lambda!245119 () Bool)

(assert (=> (not b_lambda!245119) (not d!2027948)))

(declare-fun bs!1636665 () Bool)

(assert (= bs!1636665 d!2027948))

(assert (=> bs!1636665 m!7253866))

(declare-fun m!7255008 () Bool)

(assert (=> bs!1636665 m!7255008))

(declare-fun m!7255010 () Bool)

(assert (=> bs!1636665 m!7255010))

(assert (=> bs!1636665 m!7253868))

(assert (=> b!6464845 d!2027948))

(declare-fun bs!1636666 () Bool)

(declare-fun d!2027950 () Bool)

(assert (= bs!1636666 (and d!2027950 b!6464829)))

(declare-fun lambda!357466 () Int)

(assert (=> bs!1636666 (= lambda!357466 lambda!357369)))

(assert (=> d!2027950 true))

(assert (=> d!2027950 (= (derivationStepZipper!2315 lt!2383819 (h!71670 s!2326)) (flatMap!1854 lt!2383819 lambda!357466))))

(declare-fun bs!1636667 () Bool)

(assert (= bs!1636667 d!2027950))

(declare-fun m!7255012 () Bool)

(assert (=> bs!1636667 m!7255012))

(assert (=> b!6464845 d!2027950))

(declare-fun bs!1636668 () Bool)

(declare-fun b!6465911 () Bool)

(assert (= bs!1636668 (and b!6465911 d!2027884)))

(declare-fun lambda!357467 () Int)

(assert (=> bs!1636668 (not (= lambda!357467 lambda!357461))))

(declare-fun bs!1636669 () Bool)

(assert (= bs!1636669 (and b!6465911 b!6464855)))

(assert (=> bs!1636669 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (reg!16678 r!7292) (reg!16678 (regOne!33210 r!7292))) (= r!7292 lt!2383834)) (= lambda!357467 lambda!357373))))

(declare-fun bs!1636670 () Bool)

(assert (= bs!1636670 (and b!6465911 b!6464817)))

(assert (=> bs!1636670 (not (= lambda!357467 lambda!357370))))

(declare-fun bs!1636671 () Bool)

(assert (= bs!1636671 (and b!6465911 d!2027714)))

(assert (=> bs!1636671 (not (= lambda!357467 lambda!357410))))

(declare-fun bs!1636672 () Bool)

(assert (= bs!1636672 (and b!6465911 b!6464830)))

(assert (=> bs!1636672 (not (= lambda!357467 lambda!357368))))

(declare-fun bs!1636673 () Bool)

(assert (= bs!1636673 (and b!6465911 b!6465755)))

(assert (=> bs!1636673 (not (= lambda!357467 lambda!357460))))

(assert (=> bs!1636669 (not (= lambda!357467 lambda!357374))))

(declare-fun bs!1636674 () Bool)

(assert (= bs!1636674 (and b!6465911 d!2027850)))

(assert (=> bs!1636674 (not (= lambda!357467 lambda!357456))))

(declare-fun bs!1636675 () Bool)

(assert (= bs!1636675 (and b!6465911 d!2027660)))

(assert (=> bs!1636675 (not (= lambda!357467 lambda!357398))))

(assert (=> bs!1636669 (not (= lambda!357467 lambda!357372))))

(declare-fun bs!1636676 () Bool)

(assert (= bs!1636676 (and b!6465911 d!2027892)))

(assert (=> bs!1636676 (not (= lambda!357467 lambda!357463))))

(assert (=> bs!1636672 (not (= lambda!357467 lambda!357367))))

(declare-fun bs!1636677 () Bool)

(assert (= bs!1636677 (and b!6465911 d!2027848)))

(assert (=> bs!1636677 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (reg!16678 r!7292) (reg!16678 (regOne!33210 r!7292))) (= r!7292 (Star!16349 (reg!16678 (regOne!33210 r!7292))))) (= lambda!357467 lambda!357455))))

(declare-fun bs!1636678 () Bool)

(assert (= bs!1636678 (and b!6465911 d!2027824)))

(assert (=> bs!1636678 (not (= lambda!357467 lambda!357437))))

(declare-fun bs!1636679 () Bool)

(assert (= bs!1636679 (and b!6465911 b!6465684)))

(assert (=> bs!1636679 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (reg!16678 r!7292) (reg!16678 lt!2383834)) (= r!7292 lt!2383834)) (= lambda!357467 lambda!357448))))

(assert (=> bs!1636674 (not (= lambda!357467 lambda!357457))))

(assert (=> bs!1636676 (not (= lambda!357467 lambda!357462))))

(assert (=> bs!1636670 (not (= lambda!357467 lambda!357371))))

(declare-fun bs!1636680 () Bool)

(assert (= bs!1636680 (and b!6465911 b!6465765)))

(assert (=> bs!1636680 (= (and (= (reg!16678 r!7292) (reg!16678 lt!2383832)) (= r!7292 lt!2383832)) (= lambda!357467 lambda!357459))))

(assert (=> bs!1636671 (not (= lambda!357467 lambda!357409))))

(assert (=> bs!1636677 (not (= lambda!357467 lambda!357454))))

(declare-fun bs!1636681 () Bool)

(assert (= bs!1636681 (and b!6465911 b!6465674)))

(assert (=> bs!1636681 (not (= lambda!357467 lambda!357449))))

(assert (=> b!6465911 true))

(assert (=> b!6465911 true))

(declare-fun bs!1636682 () Bool)

(declare-fun b!6465901 () Bool)

(assert (= bs!1636682 (and b!6465901 d!2027884)))

(declare-fun lambda!357468 () Int)

(assert (=> bs!1636682 (not (= lambda!357468 lambda!357461))))

(declare-fun bs!1636683 () Bool)

(assert (= bs!1636683 (and b!6465901 b!6464855)))

(assert (=> bs!1636683 (not (= lambda!357468 lambda!357373))))

(declare-fun bs!1636684 () Bool)

(assert (= bs!1636684 (and b!6465901 b!6465911)))

(assert (=> bs!1636684 (not (= lambda!357468 lambda!357467))))

(declare-fun bs!1636685 () Bool)

(assert (= bs!1636685 (and b!6465901 b!6464817)))

(assert (=> bs!1636685 (not (= lambda!357468 lambda!357370))))

(declare-fun bs!1636686 () Bool)

(assert (= bs!1636686 (and b!6465901 d!2027714)))

(assert (=> bs!1636686 (= lambda!357468 lambda!357410)))

(declare-fun bs!1636687 () Bool)

(assert (= bs!1636687 (and b!6465901 b!6464830)))

(assert (=> bs!1636687 (= lambda!357468 lambda!357368)))

(declare-fun bs!1636688 () Bool)

(assert (= bs!1636688 (and b!6465901 b!6465755)))

(assert (=> bs!1636688 (= (and (= (regOne!33210 r!7292) (regOne!33210 lt!2383832)) (= (regTwo!33210 r!7292) (regTwo!33210 lt!2383832))) (= lambda!357468 lambda!357460))))

(assert (=> bs!1636683 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 r!7292) (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357468 lambda!357374))))

(declare-fun bs!1636689 () Bool)

(assert (= bs!1636689 (and b!6465901 d!2027850)))

(assert (=> bs!1636689 (not (= lambda!357468 lambda!357456))))

(declare-fun bs!1636690 () Bool)

(assert (= bs!1636690 (and b!6465901 d!2027660)))

(assert (=> bs!1636690 (not (= lambda!357468 lambda!357398))))

(assert (=> bs!1636683 (not (= lambda!357468 lambda!357372))))

(declare-fun bs!1636691 () Bool)

(assert (= bs!1636691 (and b!6465901 d!2027892)))

(assert (=> bs!1636691 (= (= (regOne!33210 r!7292) lt!2383834) (= lambda!357468 lambda!357463))))

(assert (=> bs!1636687 (not (= lambda!357468 lambda!357367))))

(declare-fun bs!1636692 () Bool)

(assert (= bs!1636692 (and b!6465901 d!2027848)))

(assert (=> bs!1636692 (not (= lambda!357468 lambda!357455))))

(declare-fun bs!1636693 () Bool)

(assert (= bs!1636693 (and b!6465901 d!2027824)))

(assert (=> bs!1636693 (not (= lambda!357468 lambda!357437))))

(declare-fun bs!1636694 () Bool)

(assert (= bs!1636694 (and b!6465901 b!6465684)))

(assert (=> bs!1636694 (not (= lambda!357468 lambda!357448))))

(assert (=> bs!1636689 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 r!7292) (reg!16678 (regOne!33210 r!7292))) (= (regTwo!33210 r!7292) lt!2383834)) (= lambda!357468 lambda!357457))))

(assert (=> bs!1636691 (not (= lambda!357468 lambda!357462))))

(assert (=> bs!1636685 (= (= (regOne!33210 r!7292) lt!2383834) (= lambda!357468 lambda!357371))))

(declare-fun bs!1636695 () Bool)

(assert (= bs!1636695 (and b!6465901 b!6465765)))

(assert (=> bs!1636695 (not (= lambda!357468 lambda!357459))))

(assert (=> bs!1636686 (not (= lambda!357468 lambda!357409))))

(assert (=> bs!1636692 (not (= lambda!357468 lambda!357454))))

(declare-fun bs!1636696 () Bool)

(assert (= bs!1636696 (and b!6465901 b!6465674)))

(assert (=> bs!1636696 (= (and (= s!2326 (_1!36631 lt!2383796)) (= (regOne!33210 r!7292) (regOne!33210 lt!2383834)) (= (regTwo!33210 r!7292) (regTwo!33210 lt!2383834))) (= lambda!357468 lambda!357449))))

(assert (=> b!6465901 true))

(assert (=> b!6465901 true))

(declare-fun e!3920065 () Bool)

(declare-fun call!558725 () Bool)

(assert (=> b!6465901 (= e!3920065 call!558725)))

(declare-fun b!6465902 () Bool)

(declare-fun e!3920062 () Bool)

(declare-fun e!3920064 () Bool)

(assert (=> b!6465902 (= e!3920062 e!3920064)))

(declare-fun res!2655451 () Bool)

(assert (=> b!6465902 (= res!2655451 (matchRSpec!3450 (regOne!33211 r!7292) s!2326))))

(assert (=> b!6465902 (=> res!2655451 e!3920064)))

(declare-fun b!6465903 () Bool)

(declare-fun c!1183554 () Bool)

(assert (=> b!6465903 (= c!1183554 ((_ is ElementMatch!16349) r!7292))))

(declare-fun e!3920067 () Bool)

(declare-fun e!3920068 () Bool)

(assert (=> b!6465903 (= e!3920067 e!3920068)))

(declare-fun bm!558719 () Bool)

(declare-fun c!1183555 () Bool)

(assert (=> bm!558719 (= call!558725 (Exists!3419 (ite c!1183555 lambda!357467 lambda!357468)))))

(declare-fun bm!558720 () Bool)

(declare-fun call!558724 () Bool)

(assert (=> bm!558720 (= call!558724 (isEmpty!37401 s!2326))))

(declare-fun d!2027952 () Bool)

(declare-fun c!1183556 () Bool)

(assert (=> d!2027952 (= c!1183556 ((_ is EmptyExpr!16349) r!7292))))

(declare-fun e!3920063 () Bool)

(assert (=> d!2027952 (= (matchRSpec!3450 r!7292 s!2326) e!3920063)))

(declare-fun b!6465904 () Bool)

(declare-fun res!2655450 () Bool)

(declare-fun e!3920066 () Bool)

(assert (=> b!6465904 (=> res!2655450 e!3920066)))

(assert (=> b!6465904 (= res!2655450 call!558724)))

(assert (=> b!6465904 (= e!3920065 e!3920066)))

(declare-fun b!6465905 () Bool)

(assert (=> b!6465905 (= e!3920063 call!558724)))

(declare-fun b!6465906 () Bool)

(declare-fun c!1183553 () Bool)

(assert (=> b!6465906 (= c!1183553 ((_ is Union!16349) r!7292))))

(assert (=> b!6465906 (= e!3920068 e!3920062)))

(declare-fun b!6465907 () Bool)

(assert (=> b!6465907 (= e!3920064 (matchRSpec!3450 (regTwo!33211 r!7292) s!2326))))

(declare-fun b!6465908 () Bool)

(assert (=> b!6465908 (= e!3920062 e!3920065)))

(assert (=> b!6465908 (= c!1183555 ((_ is Star!16349) r!7292))))

(declare-fun b!6465909 () Bool)

(assert (=> b!6465909 (= e!3920063 e!3920067)))

(declare-fun res!2655452 () Bool)

(assert (=> b!6465909 (= res!2655452 (not ((_ is EmptyLang!16349) r!7292)))))

(assert (=> b!6465909 (=> (not res!2655452) (not e!3920067))))

(declare-fun b!6465910 () Bool)

(assert (=> b!6465910 (= e!3920068 (= s!2326 (Cons!65222 (c!1183271 r!7292) Nil!65222)))))

(assert (=> b!6465911 (= e!3920066 call!558725)))

(assert (= (and d!2027952 c!1183556) b!6465905))

(assert (= (and d!2027952 (not c!1183556)) b!6465909))

(assert (= (and b!6465909 res!2655452) b!6465903))

(assert (= (and b!6465903 c!1183554) b!6465910))

(assert (= (and b!6465903 (not c!1183554)) b!6465906))

(assert (= (and b!6465906 c!1183553) b!6465902))

(assert (= (and b!6465906 (not c!1183553)) b!6465908))

(assert (= (and b!6465902 (not res!2655451)) b!6465907))

(assert (= (and b!6465908 c!1183555) b!6465904))

(assert (= (and b!6465908 (not c!1183555)) b!6465901))

(assert (= (and b!6465904 (not res!2655450)) b!6465911))

(assert (= (or b!6465911 b!6465901) bm!558719))

(assert (= (or b!6465905 b!6465904) bm!558720))

(declare-fun m!7255014 () Bool)

(assert (=> b!6465902 m!7255014))

(declare-fun m!7255016 () Bool)

(assert (=> bm!558719 m!7255016))

(assert (=> bm!558720 m!7254776))

(declare-fun m!7255018 () Bool)

(assert (=> b!6465907 m!7255018))

(assert (=> b!6464844 d!2027952))

(declare-fun b!6465912 () Bool)

(declare-fun e!3920071 () Bool)

(assert (=> b!6465912 (= e!3920071 (not (= (head!13182 s!2326) (c!1183271 r!7292))))))

(declare-fun b!6465913 () Bool)

(declare-fun res!2655460 () Bool)

(assert (=> b!6465913 (=> res!2655460 e!3920071)))

(assert (=> b!6465913 (= res!2655460 (not (isEmpty!37401 (tail!12267 s!2326))))))

(declare-fun b!6465914 () Bool)

(declare-fun e!3920069 () Bool)

(declare-fun e!3920072 () Bool)

(assert (=> b!6465914 (= e!3920069 e!3920072)))

(declare-fun res!2655455 () Bool)

(assert (=> b!6465914 (=> (not res!2655455) (not e!3920072))))

(declare-fun lt!2384015 () Bool)

(assert (=> b!6465914 (= res!2655455 (not lt!2384015))))

(declare-fun b!6465915 () Bool)

(declare-fun res!2655454 () Bool)

(declare-fun e!3920070 () Bool)

(assert (=> b!6465915 (=> (not res!2655454) (not e!3920070))))

(declare-fun call!558726 () Bool)

(assert (=> b!6465915 (= res!2655454 (not call!558726))))

(declare-fun bm!558721 () Bool)

(assert (=> bm!558721 (= call!558726 (isEmpty!37401 s!2326))))

(declare-fun b!6465916 () Bool)

(assert (=> b!6465916 (= e!3920070 (= (head!13182 s!2326) (c!1183271 r!7292)))))

(declare-fun d!2027954 () Bool)

(declare-fun e!3920075 () Bool)

(assert (=> d!2027954 e!3920075))

(declare-fun c!1183558 () Bool)

(assert (=> d!2027954 (= c!1183558 ((_ is EmptyExpr!16349) r!7292))))

(declare-fun e!3920073 () Bool)

(assert (=> d!2027954 (= lt!2384015 e!3920073)))

(declare-fun c!1183557 () Bool)

(assert (=> d!2027954 (= c!1183557 (isEmpty!37401 s!2326))))

(assert (=> d!2027954 (validRegex!8085 r!7292)))

(assert (=> d!2027954 (= (matchR!8532 r!7292 s!2326) lt!2384015)))

(declare-fun b!6465917 () Bool)

(assert (=> b!6465917 (= e!3920075 (= lt!2384015 call!558726))))

(declare-fun b!6465918 () Bool)

(declare-fun e!3920074 () Bool)

(assert (=> b!6465918 (= e!3920075 e!3920074)))

(declare-fun c!1183559 () Bool)

(assert (=> b!6465918 (= c!1183559 ((_ is EmptyLang!16349) r!7292))))

(declare-fun b!6465919 () Bool)

(declare-fun res!2655458 () Bool)

(assert (=> b!6465919 (=> res!2655458 e!3920069)))

(assert (=> b!6465919 (= res!2655458 (not ((_ is ElementMatch!16349) r!7292)))))

(assert (=> b!6465919 (= e!3920074 e!3920069)))

(declare-fun b!6465920 () Bool)

(assert (=> b!6465920 (= e!3920073 (matchR!8532 (derivativeStep!5049 r!7292 (head!13182 s!2326)) (tail!12267 s!2326)))))

(declare-fun b!6465921 () Bool)

(declare-fun res!2655456 () Bool)

(assert (=> b!6465921 (=> (not res!2655456) (not e!3920070))))

(assert (=> b!6465921 (= res!2655456 (isEmpty!37401 (tail!12267 s!2326)))))

(declare-fun b!6465922 () Bool)

(assert (=> b!6465922 (= e!3920072 e!3920071)))

(declare-fun res!2655457 () Bool)

(assert (=> b!6465922 (=> res!2655457 e!3920071)))

(assert (=> b!6465922 (= res!2655457 call!558726)))

(declare-fun b!6465923 () Bool)

(declare-fun res!2655459 () Bool)

(assert (=> b!6465923 (=> res!2655459 e!3920069)))

(assert (=> b!6465923 (= res!2655459 e!3920070)))

(declare-fun res!2655453 () Bool)

(assert (=> b!6465923 (=> (not res!2655453) (not e!3920070))))

(assert (=> b!6465923 (= res!2655453 lt!2384015)))

(declare-fun b!6465924 () Bool)

(assert (=> b!6465924 (= e!3920073 (nullable!6342 r!7292))))

(declare-fun b!6465925 () Bool)

(assert (=> b!6465925 (= e!3920074 (not lt!2384015))))

(assert (= (and d!2027954 c!1183557) b!6465924))

(assert (= (and d!2027954 (not c!1183557)) b!6465920))

(assert (= (and d!2027954 c!1183558) b!6465917))

(assert (= (and d!2027954 (not c!1183558)) b!6465918))

(assert (= (and b!6465918 c!1183559) b!6465925))

(assert (= (and b!6465918 (not c!1183559)) b!6465919))

(assert (= (and b!6465919 (not res!2655458)) b!6465923))

(assert (= (and b!6465923 res!2655453) b!6465915))

(assert (= (and b!6465915 res!2655454) b!6465921))

(assert (= (and b!6465921 res!2655456) b!6465916))

(assert (= (and b!6465923 (not res!2655459)) b!6465914))

(assert (= (and b!6465914 res!2655455) b!6465922))

(assert (= (and b!6465922 (not res!2655457)) b!6465913))

(assert (= (and b!6465913 (not res!2655460)) b!6465912))

(assert (= (or b!6465917 b!6465915 b!6465922) bm!558721))

(assert (=> bm!558721 m!7254776))

(declare-fun m!7255020 () Bool)

(assert (=> b!6465924 m!7255020))

(assert (=> b!6465913 m!7254780))

(assert (=> b!6465913 m!7254780))

(assert (=> b!6465913 m!7254782))

(assert (=> b!6465916 m!7254784))

(assert (=> b!6465912 m!7254784))

(assert (=> b!6465920 m!7254784))

(assert (=> b!6465920 m!7254784))

(declare-fun m!7255022 () Bool)

(assert (=> b!6465920 m!7255022))

(assert (=> b!6465920 m!7254780))

(assert (=> b!6465920 m!7255022))

(assert (=> b!6465920 m!7254780))

(declare-fun m!7255024 () Bool)

(assert (=> b!6465920 m!7255024))

(assert (=> b!6465921 m!7254780))

(assert (=> b!6465921 m!7254780))

(assert (=> b!6465921 m!7254782))

(assert (=> d!2027954 m!7254776))

(assert (=> d!2027954 m!7253930))

(assert (=> b!6464844 d!2027954))

(declare-fun d!2027956 () Bool)

(assert (=> d!2027956 (= (matchR!8532 r!7292 s!2326) (matchRSpec!3450 r!7292 s!2326))))

(declare-fun lt!2384016 () Unit!158727)

(assert (=> d!2027956 (= lt!2384016 (choose!47954 r!7292 s!2326))))

(assert (=> d!2027956 (validRegex!8085 r!7292)))

(assert (=> d!2027956 (= (mainMatchTheorem!3450 r!7292 s!2326) lt!2384016)))

(declare-fun bs!1636697 () Bool)

(assert (= bs!1636697 d!2027956))

(assert (=> bs!1636697 m!7253968))

(assert (=> bs!1636697 m!7253966))

(declare-fun m!7255026 () Bool)

(assert (=> bs!1636697 m!7255026))

(assert (=> bs!1636697 m!7253930))

(assert (=> b!6464844 d!2027956))

(declare-fun b!6465926 () Bool)

(declare-fun e!3920078 () Bool)

(assert (=> b!6465926 (= e!3920078 (not (= (head!13182 (_2!36631 lt!2383814)) (c!1183271 lt!2383834))))))

(declare-fun b!6465927 () Bool)

(declare-fun res!2655468 () Bool)

(assert (=> b!6465927 (=> res!2655468 e!3920078)))

(assert (=> b!6465927 (= res!2655468 (not (isEmpty!37401 (tail!12267 (_2!36631 lt!2383814)))))))

(declare-fun b!6465928 () Bool)

(declare-fun e!3920076 () Bool)

(declare-fun e!3920079 () Bool)

(assert (=> b!6465928 (= e!3920076 e!3920079)))

(declare-fun res!2655463 () Bool)

(assert (=> b!6465928 (=> (not res!2655463) (not e!3920079))))

(declare-fun lt!2384017 () Bool)

(assert (=> b!6465928 (= res!2655463 (not lt!2384017))))

(declare-fun b!6465929 () Bool)

(declare-fun res!2655462 () Bool)

(declare-fun e!3920077 () Bool)

(assert (=> b!6465929 (=> (not res!2655462) (not e!3920077))))

(declare-fun call!558727 () Bool)

(assert (=> b!6465929 (= res!2655462 (not call!558727))))

(declare-fun bm!558722 () Bool)

(assert (=> bm!558722 (= call!558727 (isEmpty!37401 (_2!36631 lt!2383814)))))

(declare-fun b!6465930 () Bool)

(assert (=> b!6465930 (= e!3920077 (= (head!13182 (_2!36631 lt!2383814)) (c!1183271 lt!2383834)))))

(declare-fun d!2027958 () Bool)

(declare-fun e!3920082 () Bool)

(assert (=> d!2027958 e!3920082))

(declare-fun c!1183561 () Bool)

(assert (=> d!2027958 (= c!1183561 ((_ is EmptyExpr!16349) lt!2383834))))

(declare-fun e!3920080 () Bool)

(assert (=> d!2027958 (= lt!2384017 e!3920080)))

(declare-fun c!1183560 () Bool)

(assert (=> d!2027958 (= c!1183560 (isEmpty!37401 (_2!36631 lt!2383814)))))

(assert (=> d!2027958 (validRegex!8085 lt!2383834)))

(assert (=> d!2027958 (= (matchR!8532 lt!2383834 (_2!36631 lt!2383814)) lt!2384017)))

(declare-fun b!6465931 () Bool)

(assert (=> b!6465931 (= e!3920082 (= lt!2384017 call!558727))))

(declare-fun b!6465932 () Bool)

(declare-fun e!3920081 () Bool)

(assert (=> b!6465932 (= e!3920082 e!3920081)))

(declare-fun c!1183562 () Bool)

(assert (=> b!6465932 (= c!1183562 ((_ is EmptyLang!16349) lt!2383834))))

(declare-fun b!6465933 () Bool)

(declare-fun res!2655466 () Bool)

(assert (=> b!6465933 (=> res!2655466 e!3920076)))

(assert (=> b!6465933 (= res!2655466 (not ((_ is ElementMatch!16349) lt!2383834)))))

(assert (=> b!6465933 (= e!3920081 e!3920076)))

(declare-fun b!6465934 () Bool)

(assert (=> b!6465934 (= e!3920080 (matchR!8532 (derivativeStep!5049 lt!2383834 (head!13182 (_2!36631 lt!2383814))) (tail!12267 (_2!36631 lt!2383814))))))

(declare-fun b!6465935 () Bool)

(declare-fun res!2655464 () Bool)

(assert (=> b!6465935 (=> (not res!2655464) (not e!3920077))))

(assert (=> b!6465935 (= res!2655464 (isEmpty!37401 (tail!12267 (_2!36631 lt!2383814))))))

(declare-fun b!6465936 () Bool)

(assert (=> b!6465936 (= e!3920079 e!3920078)))

(declare-fun res!2655465 () Bool)

(assert (=> b!6465936 (=> res!2655465 e!3920078)))

(assert (=> b!6465936 (= res!2655465 call!558727)))

(declare-fun b!6465937 () Bool)

(declare-fun res!2655467 () Bool)

(assert (=> b!6465937 (=> res!2655467 e!3920076)))

(assert (=> b!6465937 (= res!2655467 e!3920077)))

(declare-fun res!2655461 () Bool)

(assert (=> b!6465937 (=> (not res!2655461) (not e!3920077))))

(assert (=> b!6465937 (= res!2655461 lt!2384017)))

(declare-fun b!6465938 () Bool)

(assert (=> b!6465938 (= e!3920080 (nullable!6342 lt!2383834))))

(declare-fun b!6465939 () Bool)

(assert (=> b!6465939 (= e!3920081 (not lt!2384017))))

(assert (= (and d!2027958 c!1183560) b!6465938))

(assert (= (and d!2027958 (not c!1183560)) b!6465934))

(assert (= (and d!2027958 c!1183561) b!6465931))

(assert (= (and d!2027958 (not c!1183561)) b!6465932))

(assert (= (and b!6465932 c!1183562) b!6465939))

(assert (= (and b!6465932 (not c!1183562)) b!6465933))

(assert (= (and b!6465933 (not res!2655466)) b!6465937))

(assert (= (and b!6465937 res!2655461) b!6465929))

(assert (= (and b!6465929 res!2655462) b!6465935))

(assert (= (and b!6465935 res!2655464) b!6465930))

(assert (= (and b!6465937 (not res!2655467)) b!6465928))

(assert (= (and b!6465928 res!2655463) b!6465936))

(assert (= (and b!6465936 (not res!2655465)) b!6465927))

(assert (= (and b!6465927 (not res!2655468)) b!6465926))

(assert (= (or b!6465931 b!6465929 b!6465936) bm!558722))

(declare-fun m!7255028 () Bool)

(assert (=> bm!558722 m!7255028))

(assert (=> b!6465938 m!7254542))

(declare-fun m!7255030 () Bool)

(assert (=> b!6465927 m!7255030))

(assert (=> b!6465927 m!7255030))

(declare-fun m!7255032 () Bool)

(assert (=> b!6465927 m!7255032))

(declare-fun m!7255034 () Bool)

(assert (=> b!6465930 m!7255034))

(assert (=> b!6465926 m!7255034))

(assert (=> b!6465934 m!7255034))

(assert (=> b!6465934 m!7255034))

(declare-fun m!7255036 () Bool)

(assert (=> b!6465934 m!7255036))

(assert (=> b!6465934 m!7255030))

(assert (=> b!6465934 m!7255036))

(assert (=> b!6465934 m!7255030))

(declare-fun m!7255038 () Bool)

(assert (=> b!6465934 m!7255038))

(assert (=> b!6465935 m!7255030))

(assert (=> b!6465935 m!7255030))

(assert (=> b!6465935 m!7255032))

(assert (=> d!2027958 m!7255028))

(assert (=> d!2027958 m!7254554))

(assert (=> b!6464848 d!2027958))

(declare-fun d!2027960 () Bool)

(declare-fun e!3920083 () Bool)

(assert (=> d!2027960 e!3920083))

(declare-fun res!2655469 () Bool)

(assert (=> d!2027960 (=> (not res!2655469) (not e!3920083))))

(declare-fun lt!2384018 () List!65348)

(assert (=> d!2027960 (= res!2655469 (noDuplicate!2174 lt!2384018))))

(assert (=> d!2027960 (= lt!2384018 (choose!47963 z!1189))))

(assert (=> d!2027960 (= (toList!10133 z!1189) lt!2384018)))

(declare-fun b!6465940 () Bool)

(assert (=> b!6465940 (= e!3920083 (= (content!12405 lt!2384018) z!1189))))

(assert (= (and d!2027960 res!2655469) b!6465940))

(declare-fun m!7255040 () Bool)

(assert (=> d!2027960 m!7255040))

(declare-fun m!7255042 () Bool)

(assert (=> d!2027960 m!7255042))

(declare-fun m!7255044 () Bool)

(assert (=> b!6465940 m!7255044))

(assert (=> b!6464826 d!2027960))

(declare-fun b!6465941 () Bool)

(declare-fun e!3920088 () (InoxSet Context!11466))

(declare-fun e!3920085 () (InoxSet Context!11466))

(assert (=> b!6465941 (= e!3920088 e!3920085)))

(declare-fun c!1183566 () Bool)

(assert (=> b!6465941 (= c!1183566 ((_ is Union!16349) (reg!16678 (regOne!33210 r!7292))))))

(declare-fun b!6465942 () Bool)

(declare-fun call!558729 () (InoxSet Context!11466))

(declare-fun call!558732 () (InoxSet Context!11466))

(assert (=> b!6465942 (= e!3920085 ((_ map or) call!558729 call!558732))))

(declare-fun call!558728 () List!65347)

(declare-fun bm!558723 () Bool)

(assert (=> bm!558723 (= call!558732 (derivationStepZipperDown!1597 (ite c!1183566 (regTwo!33211 (reg!16678 (regOne!33210 r!7292))) (regOne!33210 (reg!16678 (regOne!33210 r!7292)))) (ite c!1183566 lt!2383801 (Context!11467 call!558728)) (h!71670 s!2326)))))

(declare-fun bm!558724 () Bool)

(declare-fun call!558733 () List!65347)

(assert (=> bm!558724 (= call!558733 call!558728)))

(declare-fun b!6465943 () Bool)

(declare-fun e!3920086 () Bool)

(assert (=> b!6465943 (= e!3920086 (nullable!6342 (regOne!33210 (reg!16678 (regOne!33210 r!7292)))))))

(declare-fun b!6465944 () Bool)

(declare-fun e!3920084 () (InoxSet Context!11466))

(assert (=> b!6465944 (= e!3920084 ((as const (Array Context!11466 Bool)) false))))

(declare-fun d!2027962 () Bool)

(declare-fun c!1183567 () Bool)

(assert (=> d!2027962 (= c!1183567 (and ((_ is ElementMatch!16349) (reg!16678 (regOne!33210 r!7292))) (= (c!1183271 (reg!16678 (regOne!33210 r!7292))) (h!71670 s!2326))))))

(assert (=> d!2027962 (= (derivationStepZipperDown!1597 (reg!16678 (regOne!33210 r!7292)) lt!2383801 (h!71670 s!2326)) e!3920088)))

(declare-fun c!1183565 () Bool)

(declare-fun bm!558725 () Bool)

(declare-fun c!1183563 () Bool)

(assert (=> bm!558725 (= call!558728 ($colon$colon!2205 (exprs!6233 lt!2383801) (ite (or c!1183563 c!1183565) (regTwo!33210 (reg!16678 (regOne!33210 r!7292))) (reg!16678 (regOne!33210 r!7292)))))))

(declare-fun b!6465945 () Bool)

(declare-fun e!3920089 () (InoxSet Context!11466))

(declare-fun e!3920087 () (InoxSet Context!11466))

(assert (=> b!6465945 (= e!3920089 e!3920087)))

(assert (=> b!6465945 (= c!1183565 ((_ is Concat!25194) (reg!16678 (regOne!33210 r!7292))))))

(declare-fun bm!558726 () Bool)

(declare-fun call!558730 () (InoxSet Context!11466))

(assert (=> bm!558726 (= call!558730 call!558729)))

(declare-fun b!6465946 () Bool)

(declare-fun call!558731 () (InoxSet Context!11466))

(assert (=> b!6465946 (= e!3920084 call!558731)))

(declare-fun b!6465947 () Bool)

(declare-fun c!1183564 () Bool)

(assert (=> b!6465947 (= c!1183564 ((_ is Star!16349) (reg!16678 (regOne!33210 r!7292))))))

(assert (=> b!6465947 (= e!3920087 e!3920084)))

(declare-fun b!6465948 () Bool)

(assert (=> b!6465948 (= e!3920088 (store ((as const (Array Context!11466 Bool)) false) lt!2383801 true))))

(declare-fun b!6465949 () Bool)

(assert (=> b!6465949 (= e!3920087 call!558731)))

(declare-fun bm!558727 () Bool)

(assert (=> bm!558727 (= call!558731 call!558730)))

(declare-fun bm!558728 () Bool)

(assert (=> bm!558728 (= call!558729 (derivationStepZipperDown!1597 (ite c!1183566 (regOne!33211 (reg!16678 (regOne!33210 r!7292))) (ite c!1183563 (regTwo!33210 (reg!16678 (regOne!33210 r!7292))) (ite c!1183565 (regOne!33210 (reg!16678 (regOne!33210 r!7292))) (reg!16678 (reg!16678 (regOne!33210 r!7292)))))) (ite (or c!1183566 c!1183563) lt!2383801 (Context!11467 call!558733)) (h!71670 s!2326)))))

(declare-fun b!6465950 () Bool)

(assert (=> b!6465950 (= c!1183563 e!3920086)))

(declare-fun res!2655470 () Bool)

(assert (=> b!6465950 (=> (not res!2655470) (not e!3920086))))

(assert (=> b!6465950 (= res!2655470 ((_ is Concat!25194) (reg!16678 (regOne!33210 r!7292))))))

(assert (=> b!6465950 (= e!3920085 e!3920089)))

(declare-fun b!6465951 () Bool)

(assert (=> b!6465951 (= e!3920089 ((_ map or) call!558732 call!558730))))

(assert (= (and d!2027962 c!1183567) b!6465948))

(assert (= (and d!2027962 (not c!1183567)) b!6465941))

(assert (= (and b!6465941 c!1183566) b!6465942))

(assert (= (and b!6465941 (not c!1183566)) b!6465950))

(assert (= (and b!6465950 res!2655470) b!6465943))

(assert (= (and b!6465950 c!1183563) b!6465951))

(assert (= (and b!6465950 (not c!1183563)) b!6465945))

(assert (= (and b!6465945 c!1183565) b!6465949))

(assert (= (and b!6465945 (not c!1183565)) b!6465947))

(assert (= (and b!6465947 c!1183564) b!6465946))

(assert (= (and b!6465947 (not c!1183564)) b!6465944))

(assert (= (or b!6465949 b!6465946) bm!558724))

(assert (= (or b!6465949 b!6465946) bm!558727))

(assert (= (or b!6465951 bm!558724) bm!558725))

(assert (= (or b!6465951 bm!558727) bm!558726))

(assert (= (or b!6465942 b!6465951) bm!558723))

(assert (= (or b!6465942 bm!558726) bm!558728))

(declare-fun m!7255046 () Bool)

(assert (=> bm!558723 m!7255046))

(declare-fun m!7255048 () Bool)

(assert (=> bm!558725 m!7255048))

(declare-fun m!7255050 () Bool)

(assert (=> b!6465943 m!7255050))

(declare-fun m!7255052 () Bool)

(assert (=> bm!558728 m!7255052))

(assert (=> b!6465948 m!7253890))

(assert (=> b!6464847 d!2027962))

(declare-fun b!6465959 () Bool)

(declare-fun e!3920095 () Bool)

(declare-fun tp!1792755 () Bool)

(assert (=> b!6465959 (= e!3920095 tp!1792755)))

(declare-fun e!3920094 () Bool)

(declare-fun b!6465958 () Bool)

(declare-fun tp!1792756 () Bool)

(assert (=> b!6465958 (= e!3920094 (and (inv!84119 (h!71672 (t!378970 zl!343))) e!3920095 tp!1792756))))

(assert (=> b!6464856 (= tp!1792687 e!3920094)))

(assert (= b!6465958 b!6465959))

(assert (= (and b!6464856 ((_ is Cons!65224) (t!378970 zl!343))) b!6465958))

(declare-fun m!7255054 () Bool)

(assert (=> b!6465958 m!7255054))

(declare-fun b!6465964 () Bool)

(declare-fun e!3920098 () Bool)

(declare-fun tp!1792761 () Bool)

(declare-fun tp!1792762 () Bool)

(assert (=> b!6465964 (= e!3920098 (and tp!1792761 tp!1792762))))

(assert (=> b!6464861 (= tp!1792690 e!3920098)))

(assert (= (and b!6464861 ((_ is Cons!65223) (exprs!6233 setElem!44057))) b!6465964))

(declare-fun b!6465965 () Bool)

(declare-fun e!3920099 () Bool)

(declare-fun tp!1792763 () Bool)

(declare-fun tp!1792764 () Bool)

(assert (=> b!6465965 (= e!3920099 (and tp!1792763 tp!1792764))))

(assert (=> b!6464850 (= tp!1792691 e!3920099)))

(assert (= (and b!6464850 ((_ is Cons!65223) (exprs!6233 (h!71672 zl!343)))) b!6465965))

(declare-fun b!6465979 () Bool)

(declare-fun e!3920102 () Bool)

(declare-fun tp!1792779 () Bool)

(declare-fun tp!1792776 () Bool)

(assert (=> b!6465979 (= e!3920102 (and tp!1792779 tp!1792776))))

(declare-fun b!6465978 () Bool)

(declare-fun tp!1792777 () Bool)

(assert (=> b!6465978 (= e!3920102 tp!1792777)))

(declare-fun b!6465977 () Bool)

(declare-fun tp!1792775 () Bool)

(declare-fun tp!1792778 () Bool)

(assert (=> b!6465977 (= e!3920102 (and tp!1792775 tp!1792778))))

(assert (=> b!6464818 (= tp!1792683 e!3920102)))

(declare-fun b!6465976 () Bool)

(assert (=> b!6465976 (= e!3920102 tp_is_empty!41951)))

(assert (= (and b!6464818 ((_ is ElementMatch!16349) (reg!16678 r!7292))) b!6465976))

(assert (= (and b!6464818 ((_ is Concat!25194) (reg!16678 r!7292))) b!6465977))

(assert (= (and b!6464818 ((_ is Star!16349) (reg!16678 r!7292))) b!6465978))

(assert (= (and b!6464818 ((_ is Union!16349) (reg!16678 r!7292))) b!6465979))

(declare-fun b!6465983 () Bool)

(declare-fun e!3920103 () Bool)

(declare-fun tp!1792784 () Bool)

(declare-fun tp!1792781 () Bool)

(assert (=> b!6465983 (= e!3920103 (and tp!1792784 tp!1792781))))

(declare-fun b!6465982 () Bool)

(declare-fun tp!1792782 () Bool)

(assert (=> b!6465982 (= e!3920103 tp!1792782)))

(declare-fun b!6465981 () Bool)

(declare-fun tp!1792780 () Bool)

(declare-fun tp!1792783 () Bool)

(assert (=> b!6465981 (= e!3920103 (and tp!1792780 tp!1792783))))

(assert (=> b!6464853 (= tp!1792684 e!3920103)))

(declare-fun b!6465980 () Bool)

(assert (=> b!6465980 (= e!3920103 tp_is_empty!41951)))

(assert (= (and b!6464853 ((_ is ElementMatch!16349) (regOne!33211 r!7292))) b!6465980))

(assert (= (and b!6464853 ((_ is Concat!25194) (regOne!33211 r!7292))) b!6465981))

(assert (= (and b!6464853 ((_ is Star!16349) (regOne!33211 r!7292))) b!6465982))

(assert (= (and b!6464853 ((_ is Union!16349) (regOne!33211 r!7292))) b!6465983))

(declare-fun b!6465987 () Bool)

(declare-fun e!3920104 () Bool)

(declare-fun tp!1792789 () Bool)

(declare-fun tp!1792786 () Bool)

(assert (=> b!6465987 (= e!3920104 (and tp!1792789 tp!1792786))))

(declare-fun b!6465986 () Bool)

(declare-fun tp!1792787 () Bool)

(assert (=> b!6465986 (= e!3920104 tp!1792787)))

(declare-fun b!6465985 () Bool)

(declare-fun tp!1792785 () Bool)

(declare-fun tp!1792788 () Bool)

(assert (=> b!6465985 (= e!3920104 (and tp!1792785 tp!1792788))))

(assert (=> b!6464853 (= tp!1792692 e!3920104)))

(declare-fun b!6465984 () Bool)

(assert (=> b!6465984 (= e!3920104 tp_is_empty!41951)))

(assert (= (and b!6464853 ((_ is ElementMatch!16349) (regTwo!33211 r!7292))) b!6465984))

(assert (= (and b!6464853 ((_ is Concat!25194) (regTwo!33211 r!7292))) b!6465985))

(assert (= (and b!6464853 ((_ is Star!16349) (regTwo!33211 r!7292))) b!6465986))

(assert (= (and b!6464853 ((_ is Union!16349) (regTwo!33211 r!7292))) b!6465987))

(declare-fun condSetEmpty!44063 () Bool)

(assert (=> setNonEmpty!44057 (= condSetEmpty!44063 (= setRest!44057 ((as const (Array Context!11466 Bool)) false)))))

(declare-fun setRes!44063 () Bool)

(assert (=> setNonEmpty!44057 (= tp!1792688 setRes!44063)))

(declare-fun setIsEmpty!44063 () Bool)

(assert (=> setIsEmpty!44063 setRes!44063))

(declare-fun setNonEmpty!44063 () Bool)

(declare-fun setElem!44063 () Context!11466)

(declare-fun e!3920107 () Bool)

(declare-fun tp!1792795 () Bool)

(assert (=> setNonEmpty!44063 (= setRes!44063 (and tp!1792795 (inv!84119 setElem!44063) e!3920107))))

(declare-fun setRest!44063 () (InoxSet Context!11466))

(assert (=> setNonEmpty!44063 (= setRest!44057 ((_ map or) (store ((as const (Array Context!11466 Bool)) false) setElem!44063 true) setRest!44063))))

(declare-fun b!6465992 () Bool)

(declare-fun tp!1792794 () Bool)

(assert (=> b!6465992 (= e!3920107 tp!1792794)))

(assert (= (and setNonEmpty!44057 condSetEmpty!44063) setIsEmpty!44063))

(assert (= (and setNonEmpty!44057 (not condSetEmpty!44063)) setNonEmpty!44063))

(assert (= setNonEmpty!44063 b!6465992))

(declare-fun m!7255056 () Bool)

(assert (=> setNonEmpty!44063 m!7255056))

(declare-fun b!6465997 () Bool)

(declare-fun e!3920110 () Bool)

(declare-fun tp!1792798 () Bool)

(assert (=> b!6465997 (= e!3920110 (and tp_is_empty!41951 tp!1792798))))

(assert (=> b!6464824 (= tp!1792685 e!3920110)))

(assert (= (and b!6464824 ((_ is Cons!65222) (t!378968 s!2326))) b!6465997))

(declare-fun b!6466001 () Bool)

(declare-fun e!3920111 () Bool)

(declare-fun tp!1792803 () Bool)

(declare-fun tp!1792800 () Bool)

(assert (=> b!6466001 (= e!3920111 (and tp!1792803 tp!1792800))))

(declare-fun b!6466000 () Bool)

(declare-fun tp!1792801 () Bool)

(assert (=> b!6466000 (= e!3920111 tp!1792801)))

(declare-fun b!6465999 () Bool)

(declare-fun tp!1792799 () Bool)

(declare-fun tp!1792802 () Bool)

(assert (=> b!6465999 (= e!3920111 (and tp!1792799 tp!1792802))))

(assert (=> b!6464832 (= tp!1792689 e!3920111)))

(declare-fun b!6465998 () Bool)

(assert (=> b!6465998 (= e!3920111 tp_is_empty!41951)))

(assert (= (and b!6464832 ((_ is ElementMatch!16349) (regOne!33210 r!7292))) b!6465998))

(assert (= (and b!6464832 ((_ is Concat!25194) (regOne!33210 r!7292))) b!6465999))

(assert (= (and b!6464832 ((_ is Star!16349) (regOne!33210 r!7292))) b!6466000))

(assert (= (and b!6464832 ((_ is Union!16349) (regOne!33210 r!7292))) b!6466001))

(declare-fun b!6466005 () Bool)

(declare-fun e!3920112 () Bool)

(declare-fun tp!1792808 () Bool)

(declare-fun tp!1792805 () Bool)

(assert (=> b!6466005 (= e!3920112 (and tp!1792808 tp!1792805))))

(declare-fun b!6466004 () Bool)

(declare-fun tp!1792806 () Bool)

(assert (=> b!6466004 (= e!3920112 tp!1792806)))

(declare-fun b!6466003 () Bool)

(declare-fun tp!1792804 () Bool)

(declare-fun tp!1792807 () Bool)

(assert (=> b!6466003 (= e!3920112 (and tp!1792804 tp!1792807))))

(assert (=> b!6464832 (= tp!1792686 e!3920112)))

(declare-fun b!6466002 () Bool)

(assert (=> b!6466002 (= e!3920112 tp_is_empty!41951)))

(assert (= (and b!6464832 ((_ is ElementMatch!16349) (regTwo!33210 r!7292))) b!6466002))

(assert (= (and b!6464832 ((_ is Concat!25194) (regTwo!33210 r!7292))) b!6466003))

(assert (= (and b!6464832 ((_ is Star!16349) (regTwo!33210 r!7292))) b!6466004))

(assert (= (and b!6464832 ((_ is Union!16349) (regTwo!33210 r!7292))) b!6466005))

(declare-fun b_lambda!245121 () Bool)

(assert (= b_lambda!245105 (or b!6464829 b_lambda!245121)))

(declare-fun bs!1636698 () Bool)

(declare-fun d!2027964 () Bool)

(assert (= bs!1636698 (and d!2027964 b!6464829)))

(assert (=> bs!1636698 (= (dynLambda!25909 lambda!357369 (h!71672 zl!343)) (derivationStepZipperUp!1523 (h!71672 zl!343) (h!71670 s!2326)))))

(assert (=> bs!1636698 m!7253954))

(assert (=> d!2027760 d!2027964))

(declare-fun b_lambda!245123 () Bool)

(assert (= b_lambda!245117 (or b!6464829 b_lambda!245123)))

(declare-fun bs!1636699 () Bool)

(declare-fun d!2027966 () Bool)

(assert (= bs!1636699 (and d!2027966 b!6464829)))

(assert (=> bs!1636699 (= (dynLambda!25909 lambda!357369 lt!2383801) (derivationStepZipperUp!1523 lt!2383801 (h!71670 s!2326)))))

(assert (=> bs!1636699 m!7253888))

(assert (=> d!2027870 d!2027966))

(declare-fun b_lambda!245125 () Bool)

(assert (= b_lambda!245119 (or b!6464829 b_lambda!245125)))

(declare-fun bs!1636700 () Bool)

(declare-fun d!2027968 () Bool)

(assert (= bs!1636700 (and d!2027968 b!6464829)))

(assert (=> bs!1636700 (= (dynLambda!25909 lambda!357369 lt!2383818) (derivationStepZipperUp!1523 lt!2383818 (h!71670 s!2326)))))

(assert (=> bs!1636700 m!7253870))

(assert (=> d!2027948 d!2027968))

(declare-fun b_lambda!245127 () Bool)

(assert (= b_lambda!245115 (or b!6464829 b_lambda!245127)))

(declare-fun bs!1636701 () Bool)

(declare-fun d!2027970 () Bool)

(assert (= bs!1636701 (and d!2027970 b!6464829)))

(assert (=> bs!1636701 (= (dynLambda!25909 lambda!357369 lt!2383817) (derivationStepZipperUp!1523 lt!2383817 (h!71670 s!2326)))))

(assert (=> bs!1636701 m!7253894))

(assert (=> d!2027868 d!2027970))

(check-sat (not b!6465913) (not b!6465844) (not d!2027914) (not bs!1636700) (not bm!558704) (not b!6465776) (not b!6465714) (not b!6465890) (not b!6465958) (not setNonEmpty!44063) (not bm!558679) (not d!2027902) (not b!6465986) (not d!2027956) (not d!2027930) (not d!2027846) (not b!6465788) (not b!6465443) (not b!6465897) (not b!6466003) (not b!6465893) (not b!6465916) (not b!6465720) (not b!6465499) (not b!6465979) (not b!6465889) (not d!2027660) (not b!6465693) (not bm!558716) (not d!2027712) (not d!2027896) (not b!6465985) (not bm!558713) (not b!6465409) (not b!6465808) (not d!2027812) (not b!6465795) (not b!6465739) (not b!6465724) (not b!6465741) (not b!6465943) (not b!6465767) (not b!6465725) (not bm!558723) (not d!2027888) (not bm!558695) (not b!6465847) (not b!6465814) (not b!6465715) (not b!6465888) (not b!6465940) (not b!6465675) (not b!6465907) (not d!2027844) (not bm!558698) (not b!6465450) (not d!2027736) (not b!6465494) (not b!6465805) (not b!6465756) (not bm!558719) (not bm!558684) (not b!6465796) (not b!6465870) (not d!2027906) (not d!2027870) (not d!2027916) (not b!6465959) (not bs!1636701) (not d!2027754) (not b!6465408) (not b!6465883) (not b!6465800) (not b!6465912) (not b!6465869) (not b!6465774) (not b!6465446) (not b!6465872) (not b!6465815) (not b!6465878) (not b!6465543) (not d!2027848) (not b!6465987) (not d!2027874) (not d!2027782) (not d!2027838) (not bs!1636698) (not bm!558717) (not d!2027856) (not b!6465783) (not b!6465787) (not b!6465938) (not bm!558721) (not d!2027894) (not b!6465837) (not b!6465965) (not b!6465745) (not d!2027922) (not b!6465978) (not b!6465692) (not b!6465337) (not b!6465690) (not bm!558728) (not b!6465689) tp_is_empty!41951 (not b!6465750) (not d!2027860) (not d!2027864) (not d!2027890) (not b!6465871) (not d!2027948) (not b!6465860) (not bm!558722) (not b!6465775) (not bm!558697) (not bm!558685) (not bm!558720) (not d!2027652) (not d!2027852) (not b_lambda!245125) (not b!6465727) (not b!6465892) (not b!6465539) (not b!6465444) (not b!6465753) (not d!2027938) (not b!6465882) (not d!2027792) (not d!2027854) (not bm!558690) (not d!2027884) (not d!2027824) (not b!6465887) (not b!6465999) (not bm!558701) (not b!6465921) (not b!6465902) (not b_lambda!245121) (not b!6465780) (not b!6465778) (not bm!558666) (not d!2027908) (not b!6465397) (not bm!558681) (not b!6465992) (not b!6465736) (not b!6465982) (not b!6466000) (not b!6465791) (not b!6465541) (not b!6465997) (not b!6465211) (not d!2027924) (not b!6465875) (not b!6465545) (not b!6465927) (not b!6465855) (not b!6465498) (not b!6465761) (not b!6465542) (not d!2027892) (not d!2027944) (not d!2027714) (not b!6465358) (not b!6465777) (not b!6465983) (not b!6465843) (not d!2027802) (not b!6465502) (not b!6465209) (not d!2027900) (not d!2027904) (not b!6465357) (not b!6465728) (not b!6465924) (not d!2027898) (not b!6465735) (not d!2027666) (not b!6466005) (not bm!558725) (not b!6465694) (not b!6465851) (not b!6465896) (not d!2027934) (not b!6465207) (not d!2027750) (not b!6465926) (not b!6465981) (not d!2027840) (not bm!558712) (not b!6465742) (not b!6465490) (not d!2027842) (not b!6465731) (not d!2027950) (not d!2027866) (not b!6465448) (not d!2027928) (not b_lambda!245127) (not d!2027932) (not b!6466001) (not b!6465779) (not b!6465491) (not b!6465441) (not d!2027760) (not d!2027876) (not d!2027926) (not b!6465537) (not b!6465546) (not b!6465934) (not b!6465935) (not b!6465336) (not bm!558699) (not bm!558714) (not d!2027936) (not b!6466004) (not b!6465879) (not d!2027820) (not b!6465691) (not b!6465920) (not d!2027942) (not bs!1636699) (not b!6465208) (not d!2027778) (not b!6465551) (not b!6465449) (not b!6465868) (not b!6465977) (not b!6465210) (not b!6465852) (not b!6465719) (not d!2027850) (not bm!558702) (not b!6465930) (not d!2027886) (not b!6465680) (not d!2027880) (not b!6465964) (not b_lambda!245123) (not d!2027954) (not d!2027940) (not bm!558700) (not bm!558696) (not b!6465773) (not b!6465749) (not b!6465891) (not b!6465797) (not b!6465874) (not d!2027960) (not b!6465206) (not d!2027868) (not d!2027912) (not d!2027958) (not d!2027780) (not b!6465804) (not bm!558664) (not b!6465768) (not bm!558718) (not bm!558703))
(check-sat)
