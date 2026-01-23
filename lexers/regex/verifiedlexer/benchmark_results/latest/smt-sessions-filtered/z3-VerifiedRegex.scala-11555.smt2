; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!637002 () Bool)

(assert start!637002)

(declare-fun b!6480086 () Bool)

(assert (=> b!6480086 true))

(assert (=> b!6480086 true))

(declare-fun lambda!358306 () Int)

(declare-fun lambda!358305 () Int)

(assert (=> b!6480086 (not (= lambda!358306 lambda!358305))))

(assert (=> b!6480086 true))

(assert (=> b!6480086 true))

(declare-fun b!6480095 () Bool)

(assert (=> b!6480095 true))

(declare-fun bs!1644087 () Bool)

(declare-fun b!6480102 () Bool)

(assert (= bs!1644087 (and b!6480102 b!6480086)))

(declare-datatypes ((C!32984 0))(
  ( (C!32985 (val!26194 Int)) )
))
(declare-datatypes ((Regex!16357 0))(
  ( (ElementMatch!16357 (c!1187033 C!32984)) (Concat!25202 (regOne!33226 Regex!16357) (regTwo!33226 Regex!16357)) (EmptyExpr!16357) (Star!16357 (reg!16686 Regex!16357)) (EmptyLang!16357) (Union!16357 (regOne!33227 Regex!16357) (regTwo!33227 Regex!16357)) )
))
(declare-fun r!7292 () Regex!16357)

(declare-fun lt!2386306 () Regex!16357)

(declare-fun lambda!358308 () Int)

(assert (=> bs!1644087 (= (= lt!2386306 (regOne!33226 r!7292)) (= lambda!358308 lambda!358305))))

(assert (=> bs!1644087 (not (= lambda!358308 lambda!358306))))

(assert (=> b!6480102 true))

(assert (=> b!6480102 true))

(assert (=> b!6480102 true))

(declare-fun lambda!358309 () Int)

(assert (=> bs!1644087 (not (= lambda!358309 lambda!358305))))

(assert (=> bs!1644087 (= (= lt!2386306 (regOne!33226 r!7292)) (= lambda!358309 lambda!358306))))

(assert (=> b!6480102 (not (= lambda!358309 lambda!358308))))

(assert (=> b!6480102 true))

(assert (=> b!6480102 true))

(assert (=> b!6480102 true))

(declare-fun bs!1644088 () Bool)

(declare-fun b!6480072 () Bool)

(assert (= bs!1644088 (and b!6480072 b!6480086)))

(declare-datatypes ((List!65370 0))(
  ( (Nil!65246) (Cons!65246 (h!71694 C!32984) (t!378996 List!65370)) )
))
(declare-fun s!2326 () List!65370)

(declare-fun lambda!358310 () Int)

(declare-datatypes ((tuple2!66672 0))(
  ( (tuple2!66673 (_1!36639 List!65370) (_2!36639 List!65370)) )
))
(declare-fun lt!2386317 () tuple2!66672)

(assert (=> bs!1644088 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 r!7292)) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358310 lambda!358305))))

(assert (=> bs!1644088 (not (= lambda!358310 lambda!358306))))

(declare-fun bs!1644089 () Bool)

(assert (= bs!1644089 (and b!6480072 b!6480102)))

(assert (=> bs!1644089 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358310 lambda!358308))))

(assert (=> bs!1644089 (not (= lambda!358310 lambda!358309))))

(assert (=> b!6480072 true))

(assert (=> b!6480072 true))

(assert (=> b!6480072 true))

(declare-fun lambda!358311 () Int)

(assert (=> bs!1644089 (not (= lambda!358311 lambda!358309))))

(assert (=> bs!1644088 (not (= lambda!358311 lambda!358306))))

(assert (=> bs!1644089 (not (= lambda!358311 lambda!358308))))

(assert (=> b!6480072 (not (= lambda!358311 lambda!358310))))

(assert (=> bs!1644088 (not (= lambda!358311 lambda!358305))))

(assert (=> b!6480072 true))

(assert (=> b!6480072 true))

(assert (=> b!6480072 true))

(declare-fun lambda!358312 () Int)

(assert (=> bs!1644089 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358312 lambda!358309))))

(assert (=> b!6480072 (not (= lambda!358312 lambda!358311))))

(assert (=> bs!1644088 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 r!7292)) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358312 lambda!358306))))

(assert (=> bs!1644089 (not (= lambda!358312 lambda!358308))))

(assert (=> b!6480072 (not (= lambda!358312 lambda!358310))))

(assert (=> bs!1644088 (not (= lambda!358312 lambda!358305))))

(assert (=> b!6480072 true))

(assert (=> b!6480072 true))

(assert (=> b!6480072 true))

(declare-fun b!6480070 () Bool)

(declare-fun res!2660772 () Bool)

(declare-fun e!3927793 () Bool)

(assert (=> b!6480070 (=> res!2660772 e!3927793)))

(get-info :version)

(assert (=> b!6480070 (= res!2660772 (or ((_ is Concat!25202) (regOne!33226 r!7292)) (not ((_ is Star!16357) (regOne!33226 r!7292)))))))

(declare-fun b!6480071 () Bool)

(declare-fun res!2660779 () Bool)

(assert (=> b!6480071 (=> res!2660779 e!3927793)))

(declare-fun e!3927800 () Bool)

(assert (=> b!6480071 (= res!2660779 e!3927800)))

(declare-fun res!2660767 () Bool)

(assert (=> b!6480071 (=> (not res!2660767) (not e!3927800))))

(assert (=> b!6480071 (= res!2660767 ((_ is Concat!25202) (regOne!33226 r!7292)))))

(declare-fun e!3927791 () Bool)

(declare-fun e!3927814 () Bool)

(assert (=> b!6480072 (= e!3927791 e!3927814)))

(declare-fun res!2660796 () Bool)

(assert (=> b!6480072 (=> res!2660796 e!3927814)))

(declare-fun lt!2386309 () List!65370)

(assert (=> b!6480072 (= res!2660796 (not (= (_1!36639 lt!2386317) lt!2386309)))))

(declare-fun lt!2386299 () tuple2!66672)

(declare-fun ++!14425 (List!65370 List!65370) List!65370)

(assert (=> b!6480072 (= lt!2386309 (++!14425 (_1!36639 lt!2386299) (_2!36639 lt!2386299)))))

(declare-datatypes ((Option!16248 0))(
  ( (None!16247) (Some!16247 (v!52426 tuple2!66672)) )
))
(declare-fun lt!2386321 () Option!16248)

(declare-fun get!22619 (Option!16248) tuple2!66672)

(assert (=> b!6480072 (= lt!2386299 (get!22619 lt!2386321))))

(declare-fun Exists!3427 (Int) Bool)

(assert (=> b!6480072 (= (Exists!3427 lambda!358310) (Exists!3427 lambda!358312))))

(declare-datatypes ((Unit!158759 0))(
  ( (Unit!158760) )
))
(declare-fun lt!2386329 () Unit!158759)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1964 (Regex!16357 Regex!16357 List!65370) Unit!158759)

(assert (=> b!6480072 (= lt!2386329 (lemmaExistCutMatchRandMatchRSpecEquivalent!1964 (reg!16686 (regOne!33226 r!7292)) lt!2386306 (_1!36639 lt!2386317)))))

(assert (=> b!6480072 (= (Exists!3427 lambda!358310) (Exists!3427 lambda!358311))))

(declare-fun lt!2386331 () Unit!158759)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!648 (Regex!16357 List!65370) Unit!158759)

(assert (=> b!6480072 (= lt!2386331 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!648 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386317)))))

(declare-fun isDefined!12951 (Option!16248) Bool)

(assert (=> b!6480072 (= (isDefined!12951 lt!2386321) (Exists!3427 lambda!358310))))

(declare-fun findConcatSeparation!2662 (Regex!16357 Regex!16357 List!65370 List!65370 List!65370) Option!16248)

(assert (=> b!6480072 (= lt!2386321 (findConcatSeparation!2662 (reg!16686 (regOne!33226 r!7292)) lt!2386306 Nil!65246 (_1!36639 lt!2386317) (_1!36639 lt!2386317)))))

(declare-fun lt!2386324 () Unit!158759)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2426 (Regex!16357 Regex!16357 List!65370) Unit!158759)

(assert (=> b!6480072 (= lt!2386324 (lemmaFindConcatSeparationEquivalentToExists!2426 (reg!16686 (regOne!33226 r!7292)) lt!2386306 (_1!36639 lt!2386317)))))

(declare-fun matchRSpec!3458 (Regex!16357 List!65370) Bool)

(assert (=> b!6480072 (matchRSpec!3458 lt!2386306 (_1!36639 lt!2386317))))

(declare-fun lt!2386336 () Unit!158759)

(declare-fun mainMatchTheorem!3458 (Regex!16357 List!65370) Unit!158759)

(assert (=> b!6480072 (= lt!2386336 (mainMatchTheorem!3458 lt!2386306 (_1!36639 lt!2386317)))))

(declare-fun b!6480073 () Bool)

(declare-fun res!2660782 () Bool)

(declare-fun e!3927798 () Bool)

(assert (=> b!6480073 (=> res!2660782 e!3927798)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65371 0))(
  ( (Nil!65247) (Cons!65247 (h!71695 Regex!16357) (t!378997 List!65371)) )
))
(declare-datatypes ((Context!11482 0))(
  ( (Context!11483 (exprs!6241 List!65371)) )
))
(declare-fun lt!2386347 () (InoxSet Context!11482))

(declare-fun lt!2386338 () (InoxSet Context!11482))

(declare-fun matchZipper!2369 ((InoxSet Context!11482) List!65370) Bool)

(assert (=> b!6480073 (= res!2660782 (not (= (matchZipper!2369 lt!2386347 s!2326) (matchZipper!2369 lt!2386338 (t!378996 s!2326)))))))

(declare-fun b!6480074 () Bool)

(declare-fun nullable!6350 (Regex!16357) Bool)

(assert (=> b!6480074 (= e!3927800 (nullable!6350 (regOne!33226 (regOne!33226 r!7292))))))

(declare-fun b!6480075 () Bool)

(declare-fun e!3927809 () Unit!158759)

(declare-fun Unit!158761 () Unit!158759)

(assert (=> b!6480075 (= e!3927809 Unit!158761)))

(declare-fun b!6480076 () Bool)

(declare-fun e!3927811 () Bool)

(declare-fun lt!2386300 () Context!11482)

(declare-fun inv!84139 (Context!11482) Bool)

(assert (=> b!6480076 (= e!3927811 (inv!84139 lt!2386300))))

(declare-fun lt!2386337 () (InoxSet Context!11482))

(declare-fun lt!2386302 () List!65370)

(assert (=> b!6480076 (matchZipper!2369 lt!2386337 lt!2386302)))

(declare-fun lt!2386310 () Regex!16357)

(declare-datatypes ((List!65372 0))(
  ( (Nil!65248) (Cons!65248 (h!71696 Context!11482) (t!378998 List!65372)) )
))
(declare-fun lt!2386343 () List!65372)

(declare-fun lt!2386346 () Unit!158759)

(declare-fun theoremZipperRegexEquiv!823 ((InoxSet Context!11482) List!65372 Regex!16357 List!65370) Unit!158759)

(assert (=> b!6480076 (= lt!2386346 (theoremZipperRegexEquiv!823 lt!2386337 lt!2386343 lt!2386310 lt!2386302))))

(declare-fun lt!2386348 () (InoxSet Context!11482))

(assert (=> b!6480076 (matchZipper!2369 lt!2386348 (_1!36639 lt!2386299))))

(declare-fun lt!2386312 () List!65372)

(declare-fun lt!2386319 () Unit!158759)

(assert (=> b!6480076 (= lt!2386319 (theoremZipperRegexEquiv!823 lt!2386348 lt!2386312 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299)))))

(declare-fun matchR!8540 (Regex!16357 List!65370) Bool)

(assert (=> b!6480076 (matchR!8540 lt!2386310 lt!2386302)))

(declare-fun lt!2386323 () Unit!158759)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!320 (Regex!16357 Regex!16357 List!65370 List!65370) Unit!158759)

(assert (=> b!6480076 (= lt!2386323 (lemmaTwoRegexMatchThenConcatMatchesConcatString!320 lt!2386306 (regTwo!33226 r!7292) (_2!36639 lt!2386299) (_2!36639 lt!2386317)))))

(assert (=> b!6480076 (matchR!8540 lt!2386306 lt!2386309)))

(declare-fun lt!2386345 () Unit!158759)

(declare-fun lemmaStarApp!134 (Regex!16357 List!65370 List!65370) Unit!158759)

(assert (=> b!6480076 (= lt!2386345 (lemmaStarApp!134 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299) (_2!36639 lt!2386299)))))

(declare-fun b!6480077 () Bool)

(declare-fun res!2660764 () Bool)

(declare-fun e!3927803 () Bool)

(assert (=> b!6480077 (=> res!2660764 e!3927803)))

(assert (=> b!6480077 (= res!2660764 (or ((_ is EmptyExpr!16357) r!7292) ((_ is EmptyLang!16357) r!7292) ((_ is ElementMatch!16357) r!7292) ((_ is Union!16357) r!7292) (not ((_ is Concat!25202) r!7292))))))

(declare-fun b!6480078 () Bool)

(declare-fun e!3927802 () Bool)

(declare-fun e!3927807 () Bool)

(assert (=> b!6480078 (= e!3927802 e!3927807)))

(declare-fun res!2660768 () Bool)

(assert (=> b!6480078 (=> res!2660768 e!3927807)))

(declare-fun lt!2386341 () Bool)

(assert (=> b!6480078 (= res!2660768 (not lt!2386341))))

(declare-fun e!3927795 () Bool)

(assert (=> b!6480078 e!3927795))

(declare-fun res!2660795 () Bool)

(assert (=> b!6480078 (=> (not res!2660795) (not e!3927795))))

(declare-fun lt!2386332 () Regex!16357)

(assert (=> b!6480078 (= res!2660795 (= (matchR!8540 lt!2386332 s!2326) (matchRSpec!3458 lt!2386332 s!2326)))))

(declare-fun lt!2386307 () Unit!158759)

(assert (=> b!6480078 (= lt!2386307 (mainMatchTheorem!3458 lt!2386332 s!2326))))

(declare-fun e!3927797 () Bool)

(declare-fun e!3927794 () Bool)

(declare-fun zl!343 () List!65372)

(declare-fun tp!1795417 () Bool)

(declare-fun b!6480079 () Bool)

(assert (=> b!6480079 (= e!3927797 (and (inv!84139 (h!71696 zl!343)) e!3927794 tp!1795417))))

(declare-fun b!6480080 () Bool)

(declare-fun res!2660766 () Bool)

(declare-fun e!3927808 () Bool)

(assert (=> b!6480080 (=> res!2660766 e!3927808)))

(declare-fun isEmpty!37430 (List!65371) Bool)

(assert (=> b!6480080 (= res!2660766 (isEmpty!37430 (t!378997 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun b!6480081 () Bool)

(declare-fun e!3927813 () Bool)

(declare-fun tp!1795423 () Bool)

(declare-fun tp!1795420 () Bool)

(assert (=> b!6480081 (= e!3927813 (and tp!1795423 tp!1795420))))

(declare-fun b!6480082 () Bool)

(declare-fun e!3927796 () Bool)

(declare-fun tp!1795415 () Bool)

(assert (=> b!6480082 (= e!3927796 tp!1795415)))

(declare-fun b!6480083 () Bool)

(declare-fun res!2660790 () Bool)

(assert (=> b!6480083 (=> res!2660790 e!3927803)))

(declare-fun generalisedUnion!2201 (List!65371) Regex!16357)

(declare-fun unfocusZipperList!1778 (List!65372) List!65371)

(assert (=> b!6480083 (= res!2660790 (not (= r!7292 (generalisedUnion!2201 (unfocusZipperList!1778 zl!343)))))))

(declare-fun b!6480084 () Bool)

(declare-fun e!3927805 () Bool)

(declare-fun lt!2386301 () (InoxSet Context!11482))

(assert (=> b!6480084 (= e!3927805 (matchZipper!2369 lt!2386301 (t!378996 s!2326)))))

(declare-fun b!6480085 () Bool)

(assert (=> b!6480085 (= e!3927814 e!3927811)))

(declare-fun res!2660778 () Bool)

(assert (=> b!6480085 (=> res!2660778 e!3927811)))

(declare-fun lt!2386304 () List!65370)

(assert (=> b!6480085 (= res!2660778 (not (= lt!2386304 s!2326)))))

(assert (=> b!6480085 (= lt!2386304 (++!14425 (_1!36639 lt!2386299) lt!2386302))))

(assert (=> b!6480085 (= lt!2386304 (++!14425 lt!2386309 (_2!36639 lt!2386317)))))

(assert (=> b!6480085 (= lt!2386302 (++!14425 (_2!36639 lt!2386299) (_2!36639 lt!2386317)))))

(declare-fun lt!2386313 () Unit!158759)

(declare-fun lemmaConcatAssociativity!2928 (List!65370 List!65370 List!65370) Unit!158759)

(assert (=> b!6480085 (= lt!2386313 (lemmaConcatAssociativity!2928 (_1!36639 lt!2386299) (_2!36639 lt!2386299) (_2!36639 lt!2386317)))))

(assert (=> b!6480086 (= e!3927803 e!3927808)))

(declare-fun res!2660785 () Bool)

(assert (=> b!6480086 (=> res!2660785 e!3927808)))

(declare-fun lt!2386333 () Bool)

(assert (=> b!6480086 (= res!2660785 (or (not (= lt!2386341 lt!2386333)) ((_ is Nil!65246) s!2326)))))

(assert (=> b!6480086 (= (Exists!3427 lambda!358305) (Exists!3427 lambda!358306))))

(declare-fun lt!2386334 () Unit!158759)

(assert (=> b!6480086 (= lt!2386334 (lemmaExistCutMatchRandMatchRSpecEquivalent!1964 (regOne!33226 r!7292) (regTwo!33226 r!7292) s!2326))))

(assert (=> b!6480086 (= lt!2386333 (Exists!3427 lambda!358305))))

(assert (=> b!6480086 (= lt!2386333 (isDefined!12951 (findConcatSeparation!2662 (regOne!33226 r!7292) (regTwo!33226 r!7292) Nil!65246 s!2326 s!2326)))))

(declare-fun lt!2386350 () Unit!158759)

(assert (=> b!6480086 (= lt!2386350 (lemmaFindConcatSeparationEquivalentToExists!2426 (regOne!33226 r!7292) (regTwo!33226 r!7292) s!2326))))

(declare-fun b!6480087 () Bool)

(declare-fun e!3927801 () Bool)

(assert (=> b!6480087 (= e!3927801 e!3927798)))

(declare-fun res!2660792 () Bool)

(assert (=> b!6480087 (=> res!2660792 e!3927798)))

(declare-fun lt!2386305 () (InoxSet Context!11482))

(assert (=> b!6480087 (= res!2660792 (not (= lt!2386338 lt!2386305)))))

(declare-fun lambda!358307 () Int)

(declare-fun lt!2386330 () Context!11482)

(declare-fun flatMap!1862 ((InoxSet Context!11482) Int) (InoxSet Context!11482))

(declare-fun derivationStepZipperUp!1531 (Context!11482 C!32984) (InoxSet Context!11482))

(assert (=> b!6480087 (= (flatMap!1862 lt!2386347 lambda!358307) (derivationStepZipperUp!1531 lt!2386330 (h!71694 s!2326)))))

(declare-fun lt!2386316 () Unit!158759)

(declare-fun lemmaFlatMapOnSingletonSet!1388 ((InoxSet Context!11482) Context!11482 Int) Unit!158759)

(assert (=> b!6480087 (= lt!2386316 (lemmaFlatMapOnSingletonSet!1388 lt!2386347 lt!2386330 lambda!358307))))

(declare-fun lt!2386308 () (InoxSet Context!11482))

(assert (=> b!6480087 (= lt!2386308 (derivationStepZipperUp!1531 lt!2386330 (h!71694 s!2326)))))

(declare-fun derivationStepZipper!2323 ((InoxSet Context!11482) C!32984) (InoxSet Context!11482))

(assert (=> b!6480087 (= lt!2386338 (derivationStepZipper!2323 lt!2386347 (h!71694 s!2326)))))

(assert (=> b!6480087 (= lt!2386347 (store ((as const (Array Context!11482 Bool)) false) lt!2386330 true))))

(declare-fun lt!2386318 () List!65371)

(assert (=> b!6480087 (= lt!2386330 (Context!11483 (Cons!65247 (reg!16686 (regOne!33226 r!7292)) lt!2386318)))))

(declare-fun b!6480088 () Bool)

(declare-fun tp_is_empty!41967 () Bool)

(assert (=> b!6480088 (= e!3927813 tp_is_empty!41967)))

(declare-fun b!6480089 () Bool)

(declare-fun res!2660789 () Bool)

(assert (=> b!6480089 (=> res!2660789 e!3927811)))

(assert (=> b!6480089 (= res!2660789 (not (matchR!8540 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299))))))

(declare-fun b!6480090 () Bool)

(declare-fun tp!1795419 () Bool)

(assert (=> b!6480090 (= e!3927794 tp!1795419)))

(declare-fun b!6480091 () Bool)

(declare-fun res!2660788 () Bool)

(assert (=> b!6480091 (=> res!2660788 e!3927803)))

(declare-fun isEmpty!37431 (List!65372) Bool)

(assert (=> b!6480091 (= res!2660788 (not (isEmpty!37431 (t!378998 zl!343))))))

(declare-fun b!6480092 () Bool)

(declare-fun lt!2386344 () Bool)

(assert (=> b!6480092 (= e!3927795 (or (not lt!2386341) lt!2386344))))

(declare-fun b!6480093 () Bool)

(declare-fun e!3927799 () Bool)

(assert (=> b!6480093 (= e!3927799 e!3927802)))

(declare-fun res!2660783 () Bool)

(assert (=> b!6480093 (=> res!2660783 e!3927802)))

(declare-fun unfocusZipper!2099 (List!65372) Regex!16357)

(assert (=> b!6480093 (= res!2660783 (not (= (unfocusZipper!2099 lt!2386343) lt!2386310)))))

(assert (=> b!6480093 (= lt!2386343 (Cons!65248 lt!2386300 Nil!65248))))

(declare-fun b!6480094 () Bool)

(declare-fun e!3927806 () Bool)

(declare-fun e!3927810 () Bool)

(assert (=> b!6480094 (= e!3927806 e!3927810)))

(declare-fun res!2660771 () Bool)

(assert (=> b!6480094 (=> res!2660771 e!3927810)))

(assert (=> b!6480094 (= res!2660771 (not (= (unfocusZipper!2099 (Cons!65248 lt!2386330 Nil!65248)) lt!2386332)))))

(assert (=> b!6480094 (= lt!2386332 (Concat!25202 (reg!16686 (regOne!33226 r!7292)) lt!2386310))))

(assert (=> b!6480095 (= e!3927808 e!3927793)))

(declare-fun res!2660763 () Bool)

(assert (=> b!6480095 (=> res!2660763 e!3927793)))

(assert (=> b!6480095 (= res!2660763 (or (and ((_ is ElementMatch!16357) (regOne!33226 r!7292)) (= (c!1187033 (regOne!33226 r!7292)) (h!71694 s!2326))) ((_ is Union!16357) (regOne!33226 r!7292))))))

(declare-fun lt!2386342 () Unit!158759)

(assert (=> b!6480095 (= lt!2386342 e!3927809)))

(declare-fun c!1187032 () Bool)

(assert (=> b!6480095 (= c!1187032 (nullable!6350 (h!71695 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11482))

(assert (=> b!6480095 (= (flatMap!1862 z!1189 lambda!358307) (derivationStepZipperUp!1531 (h!71696 zl!343) (h!71694 s!2326)))))

(declare-fun lt!2386325 () Unit!158759)

(assert (=> b!6480095 (= lt!2386325 (lemmaFlatMapOnSingletonSet!1388 z!1189 (h!71696 zl!343) lambda!358307))))

(declare-fun lt!2386328 () Context!11482)

(assert (=> b!6480095 (= lt!2386301 (derivationStepZipperUp!1531 lt!2386328 (h!71694 s!2326)))))

(declare-fun lt!2386311 () (InoxSet Context!11482))

(declare-fun derivationStepZipperDown!1605 (Regex!16357 Context!11482 C!32984) (InoxSet Context!11482))

(assert (=> b!6480095 (= lt!2386311 (derivationStepZipperDown!1605 (h!71695 (exprs!6241 (h!71696 zl!343))) lt!2386328 (h!71694 s!2326)))))

(assert (=> b!6480095 (= lt!2386328 (Context!11483 (t!378997 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun lt!2386340 () (InoxSet Context!11482))

(assert (=> b!6480095 (= lt!2386340 (derivationStepZipperUp!1531 (Context!11483 (Cons!65247 (h!71695 (exprs!6241 (h!71696 zl!343))) (t!378997 (exprs!6241 (h!71696 zl!343))))) (h!71694 s!2326)))))

(declare-fun b!6480096 () Bool)

(declare-fun Unit!158762 () Unit!158759)

(assert (=> b!6480096 (= e!3927809 Unit!158762)))

(declare-fun lt!2386320 () Unit!158759)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1188 ((InoxSet Context!11482) (InoxSet Context!11482) List!65370) Unit!158759)

(assert (=> b!6480096 (= lt!2386320 (lemmaZipperConcatMatchesSameAsBothZippers!1188 lt!2386311 lt!2386301 (t!378996 s!2326)))))

(declare-fun res!2660775 () Bool)

(assert (=> b!6480096 (= res!2660775 (matchZipper!2369 lt!2386311 (t!378996 s!2326)))))

(assert (=> b!6480096 (=> res!2660775 e!3927805)))

(assert (=> b!6480096 (= (matchZipper!2369 ((_ map or) lt!2386311 lt!2386301) (t!378996 s!2326)) e!3927805)))

(declare-fun b!6480097 () Bool)

(assert (=> b!6480097 (= e!3927810 e!3927799)))

(declare-fun res!2660770 () Bool)

(assert (=> b!6480097 (=> res!2660770 e!3927799)))

(assert (=> b!6480097 (= res!2660770 (not (= (unfocusZipper!2099 lt!2386312) (reg!16686 (regOne!33226 r!7292)))))))

(declare-fun lt!2386322 () Context!11482)

(assert (=> b!6480097 (= lt!2386312 (Cons!65248 lt!2386322 Nil!65248))))

(assert (=> b!6480097 (= (flatMap!1862 lt!2386337 lambda!358307) (derivationStepZipperUp!1531 lt!2386300 (h!71694 s!2326)))))

(declare-fun lt!2386315 () Unit!158759)

(assert (=> b!6480097 (= lt!2386315 (lemmaFlatMapOnSingletonSet!1388 lt!2386337 lt!2386300 lambda!358307))))

(assert (=> b!6480097 (= (flatMap!1862 lt!2386348 lambda!358307) (derivationStepZipperUp!1531 lt!2386322 (h!71694 s!2326)))))

(declare-fun lt!2386326 () Unit!158759)

(assert (=> b!6480097 (= lt!2386326 (lemmaFlatMapOnSingletonSet!1388 lt!2386348 lt!2386322 lambda!358307))))

(declare-fun lt!2386335 () (InoxSet Context!11482))

(assert (=> b!6480097 (= lt!2386335 (derivationStepZipperUp!1531 lt!2386300 (h!71694 s!2326)))))

(declare-fun lt!2386349 () (InoxSet Context!11482))

(assert (=> b!6480097 (= lt!2386349 (derivationStepZipperUp!1531 lt!2386322 (h!71694 s!2326)))))

(assert (=> b!6480097 (= lt!2386337 (store ((as const (Array Context!11482 Bool)) false) lt!2386300 true))))

(assert (=> b!6480097 (= lt!2386348 (store ((as const (Array Context!11482 Bool)) false) lt!2386322 true))))

(assert (=> b!6480097 (= lt!2386322 (Context!11483 (Cons!65247 (reg!16686 (regOne!33226 r!7292)) Nil!65247)))))

(declare-fun b!6480098 () Bool)

(declare-fun res!2660784 () Bool)

(assert (=> b!6480098 (=> res!2660784 e!3927798)))

(declare-fun lt!2386298 () Regex!16357)

(assert (=> b!6480098 (= res!2660784 (not (= lt!2386298 r!7292)))))

(declare-fun b!6480099 () Bool)

(declare-fun tp!1795416 () Bool)

(assert (=> b!6480099 (= e!3927813 tp!1795416)))

(declare-fun b!6480100 () Bool)

(declare-fun e!3927792 () Bool)

(declare-fun e!3927804 () Bool)

(assert (=> b!6480100 (= e!3927792 e!3927804)))

(declare-fun res!2660777 () Bool)

(assert (=> b!6480100 (=> (not res!2660777) (not e!3927804))))

(assert (=> b!6480100 (= res!2660777 (= r!7292 lt!2386298))))

(assert (=> b!6480100 (= lt!2386298 (unfocusZipper!2099 zl!343))))

(declare-fun b!6480101 () Bool)

(assert (=> b!6480101 (= e!3927804 (not e!3927803))))

(declare-fun res!2660769 () Bool)

(assert (=> b!6480101 (=> res!2660769 e!3927803)))

(assert (=> b!6480101 (= res!2660769 (not ((_ is Cons!65248) zl!343)))))

(assert (=> b!6480101 (= lt!2386341 lt!2386344)))

(assert (=> b!6480101 (= lt!2386344 (matchRSpec!3458 r!7292 s!2326))))

(assert (=> b!6480101 (= lt!2386341 (matchR!8540 r!7292 s!2326))))

(declare-fun lt!2386339 () Unit!158759)

(assert (=> b!6480101 (= lt!2386339 (mainMatchTheorem!3458 r!7292 s!2326))))

(assert (=> b!6480102 (= e!3927807 e!3927791)))

(declare-fun res!2660786 () Bool)

(assert (=> b!6480102 (=> res!2660786 e!3927791)))

(assert (=> b!6480102 (= res!2660786 (not (= (++!14425 (_1!36639 lt!2386317) (_2!36639 lt!2386317)) s!2326)))))

(declare-fun lt!2386314 () Option!16248)

(assert (=> b!6480102 (= lt!2386317 (get!22619 lt!2386314))))

(assert (=> b!6480102 (= (Exists!3427 lambda!358308) (Exists!3427 lambda!358309))))

(declare-fun lt!2386303 () Unit!158759)

(assert (=> b!6480102 (= lt!2386303 (lemmaExistCutMatchRandMatchRSpecEquivalent!1964 lt!2386306 (regTwo!33226 r!7292) s!2326))))

(assert (=> b!6480102 (= (isDefined!12951 lt!2386314) (Exists!3427 lambda!358308))))

(assert (=> b!6480102 (= lt!2386314 (findConcatSeparation!2662 lt!2386306 (regTwo!33226 r!7292) Nil!65246 s!2326 s!2326))))

(declare-fun lt!2386327 () Unit!158759)

(assert (=> b!6480102 (= lt!2386327 (lemmaFindConcatSeparationEquivalentToExists!2426 lt!2386306 (regTwo!33226 r!7292) s!2326))))

(declare-fun res!2660794 () Bool)

(assert (=> start!637002 (=> (not res!2660794) (not e!3927792))))

(declare-fun validRegex!8093 (Regex!16357) Bool)

(assert (=> start!637002 (= res!2660794 (validRegex!8093 r!7292))))

(assert (=> start!637002 e!3927792))

(assert (=> start!637002 e!3927813))

(declare-fun condSetEmpty!44139 () Bool)

(assert (=> start!637002 (= condSetEmpty!44139 (= z!1189 ((as const (Array Context!11482 Bool)) false)))))

(declare-fun setRes!44139 () Bool)

(assert (=> start!637002 setRes!44139))

(assert (=> start!637002 e!3927797))

(declare-fun e!3927812 () Bool)

(assert (=> start!637002 e!3927812))

(declare-fun b!6480103 () Bool)

(declare-fun res!2660776 () Bool)

(assert (=> b!6480103 (=> res!2660776 e!3927791)))

(assert (=> b!6480103 (= res!2660776 (not (matchR!8540 lt!2386306 (_1!36639 lt!2386317))))))

(declare-fun b!6480104 () Bool)

(declare-fun tp!1795418 () Bool)

(declare-fun tp!1795424 () Bool)

(assert (=> b!6480104 (= e!3927813 (and tp!1795418 tp!1795424))))

(declare-fun b!6480105 () Bool)

(declare-fun res!2660773 () Bool)

(assert (=> b!6480105 (=> res!2660773 e!3927791)))

(assert (=> b!6480105 (= res!2660773 (not (matchR!8540 (regTwo!33226 r!7292) (_2!36639 lt!2386317))))))

(declare-fun b!6480106 () Bool)

(declare-fun res!2660765 () Bool)

(assert (=> b!6480106 (=> res!2660765 e!3927791)))

(declare-fun isEmpty!37432 (List!65370) Bool)

(assert (=> b!6480106 (= res!2660765 (isEmpty!37432 (_1!36639 lt!2386317)))))

(declare-fun b!6480107 () Bool)

(declare-fun res!2660781 () Bool)

(assert (=> b!6480107 (=> res!2660781 e!3927803)))

(assert (=> b!6480107 (= res!2660781 (not ((_ is Cons!65247) (exprs!6241 (h!71696 zl!343)))))))

(declare-fun b!6480108 () Bool)

(declare-fun res!2660791 () Bool)

(assert (=> b!6480108 (=> (not res!2660791) (not e!3927792))))

(declare-fun toList!10141 ((InoxSet Context!11482)) List!65372)

(assert (=> b!6480108 (= res!2660791 (= (toList!10141 z!1189) zl!343))))

(declare-fun b!6480109 () Bool)

(assert (=> b!6480109 (= e!3927793 e!3927801)))

(declare-fun res!2660774 () Bool)

(assert (=> b!6480109 (=> res!2660774 e!3927801)))

(assert (=> b!6480109 (= res!2660774 (not (= lt!2386311 lt!2386305)))))

(assert (=> b!6480109 (= lt!2386305 (derivationStepZipperDown!1605 (reg!16686 (regOne!33226 r!7292)) lt!2386300 (h!71694 s!2326)))))

(assert (=> b!6480109 (= lt!2386300 (Context!11483 lt!2386318))))

(assert (=> b!6480109 (= lt!2386318 (Cons!65247 lt!2386306 (t!378997 (exprs!6241 (h!71696 zl!343)))))))

(assert (=> b!6480109 (= lt!2386306 (Star!16357 (reg!16686 (regOne!33226 r!7292))))))

(declare-fun b!6480110 () Bool)

(declare-fun tp!1795421 () Bool)

(assert (=> b!6480110 (= e!3927812 (and tp_is_empty!41967 tp!1795421))))

(declare-fun setIsEmpty!44139 () Bool)

(assert (=> setIsEmpty!44139 setRes!44139))

(declare-fun setElem!44139 () Context!11482)

(declare-fun tp!1795422 () Bool)

(declare-fun setNonEmpty!44139 () Bool)

(assert (=> setNonEmpty!44139 (= setRes!44139 (and tp!1795422 (inv!84139 setElem!44139) e!3927796))))

(declare-fun setRest!44139 () (InoxSet Context!11482))

(assert (=> setNonEmpty!44139 (= z!1189 ((_ map or) (store ((as const (Array Context!11482 Bool)) false) setElem!44139 true) setRest!44139))))

(declare-fun b!6480111 () Bool)

(declare-fun res!2660793 () Bool)

(assert (=> b!6480111 (=> res!2660793 e!3927803)))

(declare-fun generalisedConcat!1954 (List!65371) Regex!16357)

(assert (=> b!6480111 (= res!2660793 (not (= r!7292 (generalisedConcat!1954 (exprs!6241 (h!71696 zl!343))))))))

(declare-fun b!6480112 () Bool)

(assert (=> b!6480112 (= e!3927798 e!3927806)))

(declare-fun res!2660780 () Bool)

(assert (=> b!6480112 (=> res!2660780 e!3927806)))

(assert (=> b!6480112 (= res!2660780 (not (= r!7292 lt!2386310)))))

(assert (=> b!6480112 (= lt!2386310 (Concat!25202 lt!2386306 (regTwo!33226 r!7292)))))

(declare-fun b!6480113 () Bool)

(declare-fun res!2660787 () Bool)

(assert (=> b!6480113 (=> res!2660787 e!3927811)))

(assert (=> b!6480113 (= res!2660787 (not (matchR!8540 lt!2386306 (_2!36639 lt!2386299))))))

(assert (= (and start!637002 res!2660794) b!6480108))

(assert (= (and b!6480108 res!2660791) b!6480100))

(assert (= (and b!6480100 res!2660777) b!6480101))

(assert (= (and b!6480101 (not res!2660769)) b!6480091))

(assert (= (and b!6480091 (not res!2660788)) b!6480111))

(assert (= (and b!6480111 (not res!2660793)) b!6480107))

(assert (= (and b!6480107 (not res!2660781)) b!6480083))

(assert (= (and b!6480083 (not res!2660790)) b!6480077))

(assert (= (and b!6480077 (not res!2660764)) b!6480086))

(assert (= (and b!6480086 (not res!2660785)) b!6480080))

(assert (= (and b!6480080 (not res!2660766)) b!6480095))

(assert (= (and b!6480095 c!1187032) b!6480096))

(assert (= (and b!6480095 (not c!1187032)) b!6480075))

(assert (= (and b!6480096 (not res!2660775)) b!6480084))

(assert (= (and b!6480095 (not res!2660763)) b!6480071))

(assert (= (and b!6480071 res!2660767) b!6480074))

(assert (= (and b!6480071 (not res!2660779)) b!6480070))

(assert (= (and b!6480070 (not res!2660772)) b!6480109))

(assert (= (and b!6480109 (not res!2660774)) b!6480087))

(assert (= (and b!6480087 (not res!2660792)) b!6480073))

(assert (= (and b!6480073 (not res!2660782)) b!6480098))

(assert (= (and b!6480098 (not res!2660784)) b!6480112))

(assert (= (and b!6480112 (not res!2660780)) b!6480094))

(assert (= (and b!6480094 (not res!2660771)) b!6480097))

(assert (= (and b!6480097 (not res!2660770)) b!6480093))

(assert (= (and b!6480093 (not res!2660783)) b!6480078))

(assert (= (and b!6480078 res!2660795) b!6480092))

(assert (= (and b!6480078 (not res!2660768)) b!6480102))

(assert (= (and b!6480102 (not res!2660786)) b!6480103))

(assert (= (and b!6480103 (not res!2660776)) b!6480105))

(assert (= (and b!6480105 (not res!2660773)) b!6480106))

(assert (= (and b!6480106 (not res!2660765)) b!6480072))

(assert (= (and b!6480072 (not res!2660796)) b!6480085))

(assert (= (and b!6480085 (not res!2660778)) b!6480089))

(assert (= (and b!6480089 (not res!2660789)) b!6480113))

(assert (= (and b!6480113 (not res!2660787)) b!6480076))

(assert (= (and start!637002 ((_ is ElementMatch!16357) r!7292)) b!6480088))

(assert (= (and start!637002 ((_ is Concat!25202) r!7292)) b!6480081))

(assert (= (and start!637002 ((_ is Star!16357) r!7292)) b!6480099))

(assert (= (and start!637002 ((_ is Union!16357) r!7292)) b!6480104))

(assert (= (and start!637002 condSetEmpty!44139) setIsEmpty!44139))

(assert (= (and start!637002 (not condSetEmpty!44139)) setNonEmpty!44139))

(assert (= setNonEmpty!44139 b!6480082))

(assert (= b!6480079 b!6480090))

(assert (= (and start!637002 ((_ is Cons!65248) zl!343)) b!6480079))

(assert (= (and start!637002 ((_ is Cons!65246) s!2326)) b!6480110))

(declare-fun m!7268308 () Bool)

(assert (=> b!6480074 m!7268308))

(declare-fun m!7268310 () Bool)

(assert (=> b!6480080 m!7268310))

(declare-fun m!7268312 () Bool)

(assert (=> b!6480102 m!7268312))

(declare-fun m!7268314 () Bool)

(assert (=> b!6480102 m!7268314))

(declare-fun m!7268316 () Bool)

(assert (=> b!6480102 m!7268316))

(declare-fun m!7268318 () Bool)

(assert (=> b!6480102 m!7268318))

(declare-fun m!7268320 () Bool)

(assert (=> b!6480102 m!7268320))

(declare-fun m!7268322 () Bool)

(assert (=> b!6480102 m!7268322))

(declare-fun m!7268324 () Bool)

(assert (=> b!6480102 m!7268324))

(declare-fun m!7268326 () Bool)

(assert (=> b!6480102 m!7268326))

(assert (=> b!6480102 m!7268320))

(declare-fun m!7268328 () Bool)

(assert (=> b!6480086 m!7268328))

(declare-fun m!7268330 () Bool)

(assert (=> b!6480086 m!7268330))

(declare-fun m!7268332 () Bool)

(assert (=> b!6480086 m!7268332))

(declare-fun m!7268334 () Bool)

(assert (=> b!6480086 m!7268334))

(assert (=> b!6480086 m!7268332))

(declare-fun m!7268336 () Bool)

(assert (=> b!6480086 m!7268336))

(assert (=> b!6480086 m!7268328))

(declare-fun m!7268338 () Bool)

(assert (=> b!6480086 m!7268338))

(declare-fun m!7268340 () Bool)

(assert (=> b!6480091 m!7268340))

(declare-fun m!7268342 () Bool)

(assert (=> b!6480101 m!7268342))

(declare-fun m!7268344 () Bool)

(assert (=> b!6480101 m!7268344))

(declare-fun m!7268346 () Bool)

(assert (=> b!6480101 m!7268346))

(declare-fun m!7268348 () Bool)

(assert (=> b!6480072 m!7268348))

(declare-fun m!7268350 () Bool)

(assert (=> b!6480072 m!7268350))

(declare-fun m!7268352 () Bool)

(assert (=> b!6480072 m!7268352))

(declare-fun m!7268354 () Bool)

(assert (=> b!6480072 m!7268354))

(declare-fun m!7268356 () Bool)

(assert (=> b!6480072 m!7268356))

(declare-fun m!7268358 () Bool)

(assert (=> b!6480072 m!7268358))

(declare-fun m!7268360 () Bool)

(assert (=> b!6480072 m!7268360))

(declare-fun m!7268362 () Bool)

(assert (=> b!6480072 m!7268362))

(assert (=> b!6480072 m!7268362))

(declare-fun m!7268364 () Bool)

(assert (=> b!6480072 m!7268364))

(assert (=> b!6480072 m!7268362))

(declare-fun m!7268366 () Bool)

(assert (=> b!6480072 m!7268366))

(declare-fun m!7268368 () Bool)

(assert (=> b!6480072 m!7268368))

(declare-fun m!7268370 () Bool)

(assert (=> b!6480072 m!7268370))

(declare-fun m!7268372 () Bool)

(assert (=> b!6480106 m!7268372))

(declare-fun m!7268374 () Bool)

(assert (=> b!6480100 m!7268374))

(declare-fun m!7268376 () Bool)

(assert (=> start!637002 m!7268376))

(declare-fun m!7268378 () Bool)

(assert (=> b!6480089 m!7268378))

(declare-fun m!7268380 () Bool)

(assert (=> b!6480093 m!7268380))

(declare-fun m!7268382 () Bool)

(assert (=> b!6480084 m!7268382))

(declare-fun m!7268384 () Bool)

(assert (=> b!6480076 m!7268384))

(declare-fun m!7268386 () Bool)

(assert (=> b!6480076 m!7268386))

(declare-fun m!7268388 () Bool)

(assert (=> b!6480076 m!7268388))

(declare-fun m!7268390 () Bool)

(assert (=> b!6480076 m!7268390))

(declare-fun m!7268392 () Bool)

(assert (=> b!6480076 m!7268392))

(declare-fun m!7268394 () Bool)

(assert (=> b!6480076 m!7268394))

(declare-fun m!7268396 () Bool)

(assert (=> b!6480076 m!7268396))

(declare-fun m!7268398 () Bool)

(assert (=> b!6480076 m!7268398))

(declare-fun m!7268400 () Bool)

(assert (=> b!6480076 m!7268400))

(declare-fun m!7268402 () Bool)

(assert (=> b!6480079 m!7268402))

(declare-fun m!7268404 () Bool)

(assert (=> b!6480113 m!7268404))

(declare-fun m!7268406 () Bool)

(assert (=> b!6480103 m!7268406))

(declare-fun m!7268408 () Bool)

(assert (=> setNonEmpty!44139 m!7268408))

(declare-fun m!7268410 () Bool)

(assert (=> b!6480097 m!7268410))

(declare-fun m!7268412 () Bool)

(assert (=> b!6480097 m!7268412))

(declare-fun m!7268414 () Bool)

(assert (=> b!6480097 m!7268414))

(declare-fun m!7268416 () Bool)

(assert (=> b!6480097 m!7268416))

(declare-fun m!7268418 () Bool)

(assert (=> b!6480097 m!7268418))

(declare-fun m!7268420 () Bool)

(assert (=> b!6480097 m!7268420))

(declare-fun m!7268422 () Bool)

(assert (=> b!6480097 m!7268422))

(declare-fun m!7268424 () Bool)

(assert (=> b!6480097 m!7268424))

(declare-fun m!7268426 () Bool)

(assert (=> b!6480097 m!7268426))

(declare-fun m!7268428 () Bool)

(assert (=> b!6480083 m!7268428))

(assert (=> b!6480083 m!7268428))

(declare-fun m!7268430 () Bool)

(assert (=> b!6480083 m!7268430))

(declare-fun m!7268432 () Bool)

(assert (=> b!6480078 m!7268432))

(declare-fun m!7268434 () Bool)

(assert (=> b!6480078 m!7268434))

(declare-fun m!7268436 () Bool)

(assert (=> b!6480078 m!7268436))

(declare-fun m!7268438 () Bool)

(assert (=> b!6480108 m!7268438))

(declare-fun m!7268440 () Bool)

(assert (=> b!6480085 m!7268440))

(declare-fun m!7268442 () Bool)

(assert (=> b!6480085 m!7268442))

(declare-fun m!7268444 () Bool)

(assert (=> b!6480085 m!7268444))

(declare-fun m!7268446 () Bool)

(assert (=> b!6480085 m!7268446))

(declare-fun m!7268448 () Bool)

(assert (=> b!6480105 m!7268448))

(declare-fun m!7268450 () Bool)

(assert (=> b!6480095 m!7268450))

(declare-fun m!7268452 () Bool)

(assert (=> b!6480095 m!7268452))

(declare-fun m!7268454 () Bool)

(assert (=> b!6480095 m!7268454))

(declare-fun m!7268456 () Bool)

(assert (=> b!6480095 m!7268456))

(declare-fun m!7268458 () Bool)

(assert (=> b!6480095 m!7268458))

(declare-fun m!7268460 () Bool)

(assert (=> b!6480095 m!7268460))

(declare-fun m!7268462 () Bool)

(assert (=> b!6480095 m!7268462))

(declare-fun m!7268464 () Bool)

(assert (=> b!6480111 m!7268464))

(declare-fun m!7268466 () Bool)

(assert (=> b!6480087 m!7268466))

(declare-fun m!7268468 () Bool)

(assert (=> b!6480087 m!7268468))

(declare-fun m!7268470 () Bool)

(assert (=> b!6480087 m!7268470))

(declare-fun m!7268472 () Bool)

(assert (=> b!6480087 m!7268472))

(declare-fun m!7268474 () Bool)

(assert (=> b!6480087 m!7268474))

(declare-fun m!7268476 () Bool)

(assert (=> b!6480094 m!7268476))

(declare-fun m!7268478 () Bool)

(assert (=> b!6480073 m!7268478))

(declare-fun m!7268480 () Bool)

(assert (=> b!6480073 m!7268480))

(declare-fun m!7268482 () Bool)

(assert (=> b!6480109 m!7268482))

(declare-fun m!7268484 () Bool)

(assert (=> b!6480096 m!7268484))

(declare-fun m!7268486 () Bool)

(assert (=> b!6480096 m!7268486))

(declare-fun m!7268488 () Bool)

(assert (=> b!6480096 m!7268488))

(check-sat (not b!6480076) (not b!6480089) (not b!6480083) (not b!6480094) (not b!6480084) (not b!6480095) (not b!6480074) (not b!6480109) (not b!6480106) (not b!6480099) (not b!6480091) (not setNonEmpty!44139) (not b!6480113) (not b!6480111) (not b!6480090) (not b!6480097) (not b!6480079) (not b!6480103) (not b!6480082) (not b!6480104) (not start!637002) (not b!6480073) (not b!6480096) (not b!6480086) (not b!6480072) (not b!6480080) (not b!6480078) (not b!6480101) tp_is_empty!41967 (not b!6480087) (not b!6480100) (not b!6480110) (not b!6480105) (not b!6480093) (not b!6480108) (not b!6480102) (not b!6480085) (not b!6480081))
(check-sat)
(get-model)

(declare-fun d!2033298 () Bool)

(assert (=> d!2033298 (= (isEmpty!37430 (t!378997 (exprs!6241 (h!71696 zl!343)))) ((_ is Nil!65247) (t!378997 (exprs!6241 (h!71696 zl!343)))))))

(assert (=> b!6480080 d!2033298))

(declare-fun b!6480313 () Bool)

(declare-fun e!3927926 () Bool)

(declare-fun call!560919 () Bool)

(assert (=> b!6480313 (= e!3927926 call!560919)))

(declare-fun bm!560914 () Bool)

(declare-fun c!1187095 () Bool)

(declare-fun c!1187094 () Bool)

(assert (=> bm!560914 (= call!560919 (validRegex!8093 (ite c!1187094 (reg!16686 r!7292) (ite c!1187095 (regTwo!33227 r!7292) (regTwo!33226 r!7292)))))))

(declare-fun b!6480314 () Bool)

(declare-fun e!3927928 () Bool)

(assert (=> b!6480314 (= e!3927928 e!3927926)))

(declare-fun res!2660872 () Bool)

(assert (=> b!6480314 (= res!2660872 (not (nullable!6350 (reg!16686 r!7292))))))

(assert (=> b!6480314 (=> (not res!2660872) (not e!3927926))))

(declare-fun b!6480315 () Bool)

(declare-fun res!2660871 () Bool)

(declare-fun e!3927927 () Bool)

(assert (=> b!6480315 (=> res!2660871 e!3927927)))

(assert (=> b!6480315 (= res!2660871 (not ((_ is Concat!25202) r!7292)))))

(declare-fun e!3927924 () Bool)

(assert (=> b!6480315 (= e!3927924 e!3927927)))

(declare-fun b!6480316 () Bool)

(assert (=> b!6480316 (= e!3927928 e!3927924)))

(assert (=> b!6480316 (= c!1187095 ((_ is Union!16357) r!7292))))

(declare-fun b!6480317 () Bool)

(declare-fun e!3927925 () Bool)

(declare-fun call!560921 () Bool)

(assert (=> b!6480317 (= e!3927925 call!560921)))

(declare-fun b!6480318 () Bool)

(declare-fun res!2660870 () Bool)

(declare-fun e!3927929 () Bool)

(assert (=> b!6480318 (=> (not res!2660870) (not e!3927929))))

(declare-fun call!560920 () Bool)

(assert (=> b!6480318 (= res!2660870 call!560920)))

(assert (=> b!6480318 (= e!3927924 e!3927929)))

(declare-fun b!6480319 () Bool)

(assert (=> b!6480319 (= e!3927927 e!3927925)))

(declare-fun res!2660868 () Bool)

(assert (=> b!6480319 (=> (not res!2660868) (not e!3927925))))

(assert (=> b!6480319 (= res!2660868 call!560920)))

(declare-fun b!6480320 () Bool)

(declare-fun e!3927930 () Bool)

(assert (=> b!6480320 (= e!3927930 e!3927928)))

(assert (=> b!6480320 (= c!1187094 ((_ is Star!16357) r!7292))))

(declare-fun d!2033300 () Bool)

(declare-fun res!2660869 () Bool)

(assert (=> d!2033300 (=> res!2660869 e!3927930)))

(assert (=> d!2033300 (= res!2660869 ((_ is ElementMatch!16357) r!7292))))

(assert (=> d!2033300 (= (validRegex!8093 r!7292) e!3927930)))

(declare-fun b!6480321 () Bool)

(assert (=> b!6480321 (= e!3927929 call!560921)))

(declare-fun bm!560915 () Bool)

(assert (=> bm!560915 (= call!560921 call!560919)))

(declare-fun bm!560916 () Bool)

(assert (=> bm!560916 (= call!560920 (validRegex!8093 (ite c!1187095 (regOne!33227 r!7292) (regOne!33226 r!7292))))))

(assert (= (and d!2033300 (not res!2660869)) b!6480320))

(assert (= (and b!6480320 c!1187094) b!6480314))

(assert (= (and b!6480320 (not c!1187094)) b!6480316))

(assert (= (and b!6480314 res!2660872) b!6480313))

(assert (= (and b!6480316 c!1187095) b!6480318))

(assert (= (and b!6480316 (not c!1187095)) b!6480315))

(assert (= (and b!6480318 res!2660870) b!6480321))

(assert (= (and b!6480315 (not res!2660871)) b!6480319))

(assert (= (and b!6480319 res!2660868) b!6480317))

(assert (= (or b!6480321 b!6480317) bm!560915))

(assert (= (or b!6480318 b!6480319) bm!560916))

(assert (= (or b!6480313 bm!560915) bm!560914))

(declare-fun m!7268610 () Bool)

(assert (=> bm!560914 m!7268610))

(declare-fun m!7268612 () Bool)

(assert (=> b!6480314 m!7268612))

(declare-fun m!7268614 () Bool)

(assert (=> bm!560916 m!7268614))

(assert (=> start!637002 d!2033300))

(declare-fun bs!1644108 () Bool)

(declare-fun d!2033304 () Bool)

(assert (= bs!1644108 (and d!2033304 b!6480102)))

(declare-fun lambda!358321 () Int)

(assert (=> bs!1644108 (not (= lambda!358321 lambda!358309))))

(declare-fun bs!1644109 () Bool)

(assert (= bs!1644109 (and d!2033304 b!6480072)))

(assert (=> bs!1644109 (not (= lambda!358321 lambda!358311))))

(assert (=> bs!1644109 (not (= lambda!358321 lambda!358312))))

(declare-fun bs!1644110 () Bool)

(assert (= bs!1644110 (and d!2033304 b!6480086)))

(assert (=> bs!1644110 (not (= lambda!358321 lambda!358306))))

(assert (=> bs!1644108 (= lambda!358321 lambda!358308)))

(assert (=> bs!1644109 (= (and (= s!2326 (_1!36639 lt!2386317)) (= lt!2386306 (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358321 lambda!358310))))

(assert (=> bs!1644110 (= (= lt!2386306 (regOne!33226 r!7292)) (= lambda!358321 lambda!358305))))

(assert (=> d!2033304 true))

(assert (=> d!2033304 true))

(assert (=> d!2033304 true))

(assert (=> d!2033304 (= (isDefined!12951 (findConcatSeparation!2662 lt!2386306 (regTwo!33226 r!7292) Nil!65246 s!2326 s!2326)) (Exists!3427 lambda!358321))))

(declare-fun lt!2386372 () Unit!158759)

(declare-fun choose!48026 (Regex!16357 Regex!16357 List!65370) Unit!158759)

(assert (=> d!2033304 (= lt!2386372 (choose!48026 lt!2386306 (regTwo!33226 r!7292) s!2326))))

(assert (=> d!2033304 (validRegex!8093 lt!2386306)))

(assert (=> d!2033304 (= (lemmaFindConcatSeparationEquivalentToExists!2426 lt!2386306 (regTwo!33226 r!7292) s!2326) lt!2386372)))

(declare-fun bs!1644112 () Bool)

(assert (= bs!1644112 d!2033304))

(assert (=> bs!1644112 m!7268322))

(declare-fun m!7268644 () Bool)

(assert (=> bs!1644112 m!7268644))

(declare-fun m!7268646 () Bool)

(assert (=> bs!1644112 m!7268646))

(assert (=> bs!1644112 m!7268322))

(declare-fun m!7268648 () Bool)

(assert (=> bs!1644112 m!7268648))

(declare-fun m!7268650 () Bool)

(assert (=> bs!1644112 m!7268650))

(assert (=> b!6480102 d!2033304))

(declare-fun b!6480351 () Bool)

(declare-fun e!3927946 () Bool)

(declare-fun lt!2386376 () List!65370)

(assert (=> b!6480351 (= e!3927946 (or (not (= (_2!36639 lt!2386317) Nil!65246)) (= lt!2386376 (_1!36639 lt!2386317))))))

(declare-fun b!6480350 () Bool)

(declare-fun res!2660885 () Bool)

(assert (=> b!6480350 (=> (not res!2660885) (not e!3927946))))

(declare-fun size!40409 (List!65370) Int)

(assert (=> b!6480350 (= res!2660885 (= (size!40409 lt!2386376) (+ (size!40409 (_1!36639 lt!2386317)) (size!40409 (_2!36639 lt!2386317)))))))

(declare-fun b!6480349 () Bool)

(declare-fun e!3927945 () List!65370)

(assert (=> b!6480349 (= e!3927945 (Cons!65246 (h!71694 (_1!36639 lt!2386317)) (++!14425 (t!378996 (_1!36639 lt!2386317)) (_2!36639 lt!2386317))))))

(declare-fun b!6480348 () Bool)

(assert (=> b!6480348 (= e!3927945 (_2!36639 lt!2386317))))

(declare-fun d!2033322 () Bool)

(assert (=> d!2033322 e!3927946))

(declare-fun res!2660886 () Bool)

(assert (=> d!2033322 (=> (not res!2660886) (not e!3927946))))

(declare-fun content!12414 (List!65370) (InoxSet C!32984))

(assert (=> d!2033322 (= res!2660886 (= (content!12414 lt!2386376) ((_ map or) (content!12414 (_1!36639 lt!2386317)) (content!12414 (_2!36639 lt!2386317)))))))

(assert (=> d!2033322 (= lt!2386376 e!3927945)))

(declare-fun c!1187104 () Bool)

(assert (=> d!2033322 (= c!1187104 ((_ is Nil!65246) (_1!36639 lt!2386317)))))

(assert (=> d!2033322 (= (++!14425 (_1!36639 lt!2386317) (_2!36639 lt!2386317)) lt!2386376)))

(assert (= (and d!2033322 c!1187104) b!6480348))

(assert (= (and d!2033322 (not c!1187104)) b!6480349))

(assert (= (and d!2033322 res!2660886) b!6480350))

(assert (= (and b!6480350 res!2660885) b!6480351))

(declare-fun m!7268656 () Bool)

(assert (=> b!6480350 m!7268656))

(declare-fun m!7268658 () Bool)

(assert (=> b!6480350 m!7268658))

(declare-fun m!7268660 () Bool)

(assert (=> b!6480350 m!7268660))

(declare-fun m!7268662 () Bool)

(assert (=> b!6480349 m!7268662))

(declare-fun m!7268664 () Bool)

(assert (=> d!2033322 m!7268664))

(declare-fun m!7268666 () Bool)

(assert (=> d!2033322 m!7268666))

(declare-fun m!7268668 () Bool)

(assert (=> d!2033322 m!7268668))

(assert (=> b!6480102 d!2033322))

(declare-fun d!2033328 () Bool)

(declare-fun isEmpty!37433 (Option!16248) Bool)

(assert (=> d!2033328 (= (isDefined!12951 lt!2386314) (not (isEmpty!37433 lt!2386314)))))

(declare-fun bs!1644116 () Bool)

(assert (= bs!1644116 d!2033328))

(declare-fun m!7268670 () Bool)

(assert (=> bs!1644116 m!7268670))

(assert (=> b!6480102 d!2033328))

(declare-fun d!2033330 () Bool)

(assert (=> d!2033330 (= (get!22619 lt!2386314) (v!52426 lt!2386314))))

(assert (=> b!6480102 d!2033330))

(declare-fun d!2033332 () Bool)

(declare-fun choose!48027 (Int) Bool)

(assert (=> d!2033332 (= (Exists!3427 lambda!358308) (choose!48027 lambda!358308))))

(declare-fun bs!1644117 () Bool)

(assert (= bs!1644117 d!2033332))

(declare-fun m!7268672 () Bool)

(assert (=> bs!1644117 m!7268672))

(assert (=> b!6480102 d!2033332))

(declare-fun b!6480397 () Bool)

(declare-fun e!3927974 () Option!16248)

(declare-fun e!3927976 () Option!16248)

(assert (=> b!6480397 (= e!3927974 e!3927976)))

(declare-fun c!1187116 () Bool)

(assert (=> b!6480397 (= c!1187116 ((_ is Nil!65246) s!2326))))

(declare-fun b!6480399 () Bool)

(declare-fun e!3927972 () Bool)

(declare-fun lt!2386393 () Option!16248)

(assert (=> b!6480399 (= e!3927972 (= (++!14425 (_1!36639 (get!22619 lt!2386393)) (_2!36639 (get!22619 lt!2386393))) s!2326))))

(declare-fun b!6480400 () Bool)

(declare-fun e!3927973 () Bool)

(assert (=> b!6480400 (= e!3927973 (not (isDefined!12951 lt!2386393)))))

(declare-fun b!6480401 () Bool)

(declare-fun res!2660916 () Bool)

(assert (=> b!6480401 (=> (not res!2660916) (not e!3927972))))

(assert (=> b!6480401 (= res!2660916 (matchR!8540 (regTwo!33226 r!7292) (_2!36639 (get!22619 lt!2386393))))))

(declare-fun b!6480402 () Bool)

(assert (=> b!6480402 (= e!3927976 None!16247)))

(declare-fun b!6480403 () Bool)

(declare-fun res!2660912 () Bool)

(assert (=> b!6480403 (=> (not res!2660912) (not e!3927972))))

(assert (=> b!6480403 (= res!2660912 (matchR!8540 lt!2386306 (_1!36639 (get!22619 lt!2386393))))))

(declare-fun b!6480398 () Bool)

(declare-fun e!3927975 () Bool)

(assert (=> b!6480398 (= e!3927975 (matchR!8540 (regTwo!33226 r!7292) s!2326))))

(declare-fun d!2033334 () Bool)

(assert (=> d!2033334 e!3927973))

(declare-fun res!2660915 () Bool)

(assert (=> d!2033334 (=> res!2660915 e!3927973)))

(assert (=> d!2033334 (= res!2660915 e!3927972)))

(declare-fun res!2660913 () Bool)

(assert (=> d!2033334 (=> (not res!2660913) (not e!3927972))))

(assert (=> d!2033334 (= res!2660913 (isDefined!12951 lt!2386393))))

(assert (=> d!2033334 (= lt!2386393 e!3927974)))

(declare-fun c!1187115 () Bool)

(assert (=> d!2033334 (= c!1187115 e!3927975)))

(declare-fun res!2660914 () Bool)

(assert (=> d!2033334 (=> (not res!2660914) (not e!3927975))))

(assert (=> d!2033334 (= res!2660914 (matchR!8540 lt!2386306 Nil!65246))))

(assert (=> d!2033334 (validRegex!8093 lt!2386306)))

(assert (=> d!2033334 (= (findConcatSeparation!2662 lt!2386306 (regTwo!33226 r!7292) Nil!65246 s!2326 s!2326) lt!2386393)))

(declare-fun b!6480404 () Bool)

(assert (=> b!6480404 (= e!3927974 (Some!16247 (tuple2!66673 Nil!65246 s!2326)))))

(declare-fun b!6480405 () Bool)

(declare-fun lt!2386392 () Unit!158759)

(declare-fun lt!2386394 () Unit!158759)

(assert (=> b!6480405 (= lt!2386392 lt!2386394)))

(assert (=> b!6480405 (= (++!14425 (++!14425 Nil!65246 (Cons!65246 (h!71694 s!2326) Nil!65246)) (t!378996 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2513 (List!65370 C!32984 List!65370 List!65370) Unit!158759)

(assert (=> b!6480405 (= lt!2386394 (lemmaMoveElementToOtherListKeepsConcatEq!2513 Nil!65246 (h!71694 s!2326) (t!378996 s!2326) s!2326))))

(assert (=> b!6480405 (= e!3927976 (findConcatSeparation!2662 lt!2386306 (regTwo!33226 r!7292) (++!14425 Nil!65246 (Cons!65246 (h!71694 s!2326) Nil!65246)) (t!378996 s!2326) s!2326))))

(assert (= (and d!2033334 res!2660914) b!6480398))

(assert (= (and d!2033334 c!1187115) b!6480404))

(assert (= (and d!2033334 (not c!1187115)) b!6480397))

(assert (= (and b!6480397 c!1187116) b!6480402))

(assert (= (and b!6480397 (not c!1187116)) b!6480405))

(assert (= (and d!2033334 res!2660913) b!6480403))

(assert (= (and b!6480403 res!2660912) b!6480401))

(assert (= (and b!6480401 res!2660916) b!6480399))

(assert (= (and d!2033334 (not res!2660915)) b!6480400))

(declare-fun m!7268700 () Bool)

(assert (=> b!6480405 m!7268700))

(assert (=> b!6480405 m!7268700))

(declare-fun m!7268702 () Bool)

(assert (=> b!6480405 m!7268702))

(declare-fun m!7268704 () Bool)

(assert (=> b!6480405 m!7268704))

(assert (=> b!6480405 m!7268700))

(declare-fun m!7268706 () Bool)

(assert (=> b!6480405 m!7268706))

(declare-fun m!7268708 () Bool)

(assert (=> b!6480399 m!7268708))

(declare-fun m!7268710 () Bool)

(assert (=> b!6480399 m!7268710))

(assert (=> b!6480401 m!7268708))

(declare-fun m!7268712 () Bool)

(assert (=> b!6480401 m!7268712))

(assert (=> b!6480403 m!7268708))

(declare-fun m!7268714 () Bool)

(assert (=> b!6480403 m!7268714))

(declare-fun m!7268716 () Bool)

(assert (=> b!6480398 m!7268716))

(declare-fun m!7268718 () Bool)

(assert (=> b!6480400 m!7268718))

(assert (=> d!2033334 m!7268718))

(declare-fun m!7268720 () Bool)

(assert (=> d!2033334 m!7268720))

(assert (=> d!2033334 m!7268646))

(assert (=> b!6480102 d!2033334))

(declare-fun d!2033340 () Bool)

(assert (=> d!2033340 (= (Exists!3427 lambda!358309) (choose!48027 lambda!358309))))

(declare-fun bs!1644119 () Bool)

(assert (= bs!1644119 d!2033340))

(declare-fun m!7268722 () Bool)

(assert (=> bs!1644119 m!7268722))

(assert (=> b!6480102 d!2033340))

(declare-fun bs!1644126 () Bool)

(declare-fun d!2033342 () Bool)

(assert (= bs!1644126 (and d!2033342 b!6480102)))

(declare-fun lambda!358332 () Int)

(assert (=> bs!1644126 (not (= lambda!358332 lambda!358309))))

(declare-fun bs!1644127 () Bool)

(assert (= bs!1644127 (and d!2033342 b!6480072)))

(assert (=> bs!1644127 (not (= lambda!358332 lambda!358311))))

(assert (=> bs!1644127 (not (= lambda!358332 lambda!358312))))

(declare-fun bs!1644128 () Bool)

(assert (= bs!1644128 (and d!2033342 b!6480086)))

(assert (=> bs!1644128 (not (= lambda!358332 lambda!358306))))

(assert (=> bs!1644126 (= lambda!358332 lambda!358308)))

(declare-fun bs!1644129 () Bool)

(assert (= bs!1644129 (and d!2033342 d!2033304)))

(assert (=> bs!1644129 (= lambda!358332 lambda!358321)))

(assert (=> bs!1644127 (= (and (= s!2326 (_1!36639 lt!2386317)) (= lt!2386306 (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358332 lambda!358310))))

(assert (=> bs!1644128 (= (= lt!2386306 (regOne!33226 r!7292)) (= lambda!358332 lambda!358305))))

(assert (=> d!2033342 true))

(assert (=> d!2033342 true))

(assert (=> d!2033342 true))

(declare-fun lambda!358334 () Int)

(assert (=> bs!1644126 (= lambda!358334 lambda!358309)))

(assert (=> bs!1644127 (not (= lambda!358334 lambda!358311))))

(assert (=> bs!1644127 (= (and (= s!2326 (_1!36639 lt!2386317)) (= lt!2386306 (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358334 lambda!358312))))

(declare-fun bs!1644130 () Bool)

(assert (= bs!1644130 d!2033342))

(assert (=> bs!1644130 (not (= lambda!358334 lambda!358332))))

(assert (=> bs!1644128 (= (= lt!2386306 (regOne!33226 r!7292)) (= lambda!358334 lambda!358306))))

(assert (=> bs!1644126 (not (= lambda!358334 lambda!358308))))

(assert (=> bs!1644129 (not (= lambda!358334 lambda!358321))))

(assert (=> bs!1644127 (not (= lambda!358334 lambda!358310))))

(assert (=> bs!1644128 (not (= lambda!358334 lambda!358305))))

(assert (=> d!2033342 true))

(assert (=> d!2033342 true))

(assert (=> d!2033342 true))

(assert (=> d!2033342 (= (Exists!3427 lambda!358332) (Exists!3427 lambda!358334))))

(declare-fun lt!2386400 () Unit!158759)

(declare-fun choose!48028 (Regex!16357 Regex!16357 List!65370) Unit!158759)

(assert (=> d!2033342 (= lt!2386400 (choose!48028 lt!2386306 (regTwo!33226 r!7292) s!2326))))

(assert (=> d!2033342 (validRegex!8093 lt!2386306)))

(assert (=> d!2033342 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1964 lt!2386306 (regTwo!33226 r!7292) s!2326) lt!2386400)))

(declare-fun m!7268728 () Bool)

(assert (=> bs!1644130 m!7268728))

(declare-fun m!7268730 () Bool)

(assert (=> bs!1644130 m!7268730))

(declare-fun m!7268732 () Bool)

(assert (=> bs!1644130 m!7268732))

(assert (=> bs!1644130 m!7268646))

(assert (=> b!6480102 d!2033342))

(declare-fun d!2033346 () Bool)

(declare-fun lambda!358340 () Int)

(declare-fun forall!15541 (List!65371 Int) Bool)

(assert (=> d!2033346 (= (inv!84139 (h!71696 zl!343)) (forall!15541 (exprs!6241 (h!71696 zl!343)) lambda!358340))))

(declare-fun bs!1644131 () Bool)

(assert (= bs!1644131 d!2033346))

(declare-fun m!7268734 () Bool)

(assert (=> bs!1644131 m!7268734))

(assert (=> b!6480079 d!2033346))

(declare-fun d!2033348 () Bool)

(declare-fun lt!2386406 () Regex!16357)

(assert (=> d!2033348 (validRegex!8093 lt!2386406)))

(assert (=> d!2033348 (= lt!2386406 (generalisedUnion!2201 (unfocusZipperList!1778 zl!343)))))

(assert (=> d!2033348 (= (unfocusZipper!2099 zl!343) lt!2386406)))

(declare-fun bs!1644137 () Bool)

(assert (= bs!1644137 d!2033348))

(declare-fun m!7268736 () Bool)

(assert (=> bs!1644137 m!7268736))

(assert (=> bs!1644137 m!7268428))

(assert (=> bs!1644137 m!7268428))

(assert (=> bs!1644137 m!7268430))

(assert (=> b!6480100 d!2033348))

(declare-fun bs!1644141 () Bool)

(declare-fun b!6480492 () Bool)

(assert (= bs!1644141 (and b!6480492 b!6480102)))

(declare-fun lambda!358350 () Int)

(assert (=> bs!1644141 (not (= lambda!358350 lambda!358309))))

(declare-fun bs!1644142 () Bool)

(assert (= bs!1644142 (and b!6480492 b!6480072)))

(assert (=> bs!1644142 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (reg!16686 r!7292) (reg!16686 (regOne!33226 r!7292))) (= r!7292 lt!2386306)) (= lambda!358350 lambda!358311))))

(assert (=> bs!1644142 (not (= lambda!358350 lambda!358312))))

(declare-fun bs!1644143 () Bool)

(assert (= bs!1644143 (and b!6480492 d!2033342)))

(assert (=> bs!1644143 (not (= lambda!358350 lambda!358332))))

(declare-fun bs!1644144 () Bool)

(assert (= bs!1644144 (and b!6480492 b!6480086)))

(assert (=> bs!1644144 (not (= lambda!358350 lambda!358306))))

(assert (=> bs!1644143 (not (= lambda!358350 lambda!358334))))

(assert (=> bs!1644141 (not (= lambda!358350 lambda!358308))))

(declare-fun bs!1644145 () Bool)

(assert (= bs!1644145 (and b!6480492 d!2033304)))

(assert (=> bs!1644145 (not (= lambda!358350 lambda!358321))))

(assert (=> bs!1644142 (not (= lambda!358350 lambda!358310))))

(assert (=> bs!1644144 (not (= lambda!358350 lambda!358305))))

(assert (=> b!6480492 true))

(assert (=> b!6480492 true))

(declare-fun bs!1644146 () Bool)

(declare-fun b!6480496 () Bool)

(assert (= bs!1644146 (and b!6480496 b!6480102)))

(declare-fun lambda!358351 () Int)

(assert (=> bs!1644146 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358351 lambda!358309))))

(declare-fun bs!1644147 () Bool)

(assert (= bs!1644147 (and b!6480496 b!6480072)))

(assert (=> bs!1644147 (not (= lambda!358351 lambda!358311))))

(assert (=> bs!1644147 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358351 lambda!358312))))

(declare-fun bs!1644148 () Bool)

(assert (= bs!1644148 (and b!6480496 d!2033342)))

(assert (=> bs!1644148 (not (= lambda!358351 lambda!358332))))

(declare-fun bs!1644149 () Bool)

(assert (= bs!1644149 (and b!6480496 b!6480492)))

(assert (=> bs!1644149 (not (= lambda!358351 lambda!358350))))

(declare-fun bs!1644150 () Bool)

(assert (= bs!1644150 (and b!6480496 b!6480086)))

(assert (=> bs!1644150 (= lambda!358351 lambda!358306)))

(assert (=> bs!1644148 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358351 lambda!358334))))

(assert (=> bs!1644146 (not (= lambda!358351 lambda!358308))))

(declare-fun bs!1644151 () Bool)

(assert (= bs!1644151 (and b!6480496 d!2033304)))

(assert (=> bs!1644151 (not (= lambda!358351 lambda!358321))))

(assert (=> bs!1644147 (not (= lambda!358351 lambda!358310))))

(assert (=> bs!1644150 (not (= lambda!358351 lambda!358305))))

(assert (=> b!6480496 true))

(assert (=> b!6480496 true))

(declare-fun b!6480490 () Bool)

(declare-fun e!3928025 () Bool)

(declare-fun e!3928029 () Bool)

(assert (=> b!6480490 (= e!3928025 e!3928029)))

(declare-fun res!2660963 () Bool)

(assert (=> b!6480490 (= res!2660963 (matchRSpec!3458 (regOne!33227 r!7292) s!2326))))

(assert (=> b!6480490 (=> res!2660963 e!3928029)))

(declare-fun bm!560922 () Bool)

(declare-fun call!560928 () Bool)

(assert (=> bm!560922 (= call!560928 (isEmpty!37432 s!2326))))

(declare-fun b!6480491 () Bool)

(declare-fun e!3928031 () Bool)

(assert (=> b!6480491 (= e!3928025 e!3928031)))

(declare-fun c!1187139 () Bool)

(assert (=> b!6480491 (= c!1187139 ((_ is Star!16357) r!7292))))

(declare-fun e!3928027 () Bool)

(declare-fun call!560927 () Bool)

(assert (=> b!6480492 (= e!3928027 call!560927)))

(declare-fun b!6480493 () Bool)

(assert (=> b!6480493 (= e!3928029 (matchRSpec!3458 (regTwo!33227 r!7292) s!2326))))

(declare-fun bm!560923 () Bool)

(assert (=> bm!560923 (= call!560927 (Exists!3427 (ite c!1187139 lambda!358350 lambda!358351)))))

(declare-fun b!6480494 () Bool)

(declare-fun c!1187137 () Bool)

(assert (=> b!6480494 (= c!1187137 ((_ is Union!16357) r!7292))))

(declare-fun e!3928026 () Bool)

(assert (=> b!6480494 (= e!3928026 e!3928025)))

(declare-fun b!6480495 () Bool)

(declare-fun c!1187140 () Bool)

(assert (=> b!6480495 (= c!1187140 ((_ is ElementMatch!16357) r!7292))))

(declare-fun e!3928028 () Bool)

(assert (=> b!6480495 (= e!3928028 e!3928026)))

(assert (=> b!6480496 (= e!3928031 call!560927)))

(declare-fun d!2033350 () Bool)

(declare-fun c!1187138 () Bool)

(assert (=> d!2033350 (= c!1187138 ((_ is EmptyExpr!16357) r!7292))))

(declare-fun e!3928030 () Bool)

(assert (=> d!2033350 (= (matchRSpec!3458 r!7292 s!2326) e!3928030)))

(declare-fun b!6480497 () Bool)

(declare-fun res!2660961 () Bool)

(assert (=> b!6480497 (=> res!2660961 e!3928027)))

(assert (=> b!6480497 (= res!2660961 call!560928)))

(assert (=> b!6480497 (= e!3928031 e!3928027)))

(declare-fun b!6480498 () Bool)

(assert (=> b!6480498 (= e!3928030 e!3928028)))

(declare-fun res!2660962 () Bool)

(assert (=> b!6480498 (= res!2660962 (not ((_ is EmptyLang!16357) r!7292)))))

(assert (=> b!6480498 (=> (not res!2660962) (not e!3928028))))

(declare-fun b!6480499 () Bool)

(assert (=> b!6480499 (= e!3928026 (= s!2326 (Cons!65246 (c!1187033 r!7292) Nil!65246)))))

(declare-fun b!6480500 () Bool)

(assert (=> b!6480500 (= e!3928030 call!560928)))

(assert (= (and d!2033350 c!1187138) b!6480500))

(assert (= (and d!2033350 (not c!1187138)) b!6480498))

(assert (= (and b!6480498 res!2660962) b!6480495))

(assert (= (and b!6480495 c!1187140) b!6480499))

(assert (= (and b!6480495 (not c!1187140)) b!6480494))

(assert (= (and b!6480494 c!1187137) b!6480490))

(assert (= (and b!6480494 (not c!1187137)) b!6480491))

(assert (= (and b!6480490 (not res!2660963)) b!6480493))

(assert (= (and b!6480491 c!1187139) b!6480497))

(assert (= (and b!6480491 (not c!1187139)) b!6480496))

(assert (= (and b!6480497 (not res!2660961)) b!6480492))

(assert (= (or b!6480492 b!6480496) bm!560923))

(assert (= (or b!6480500 b!6480497) bm!560922))

(declare-fun m!7268778 () Bool)

(assert (=> b!6480490 m!7268778))

(declare-fun m!7268780 () Bool)

(assert (=> bm!560922 m!7268780))

(declare-fun m!7268782 () Bool)

(assert (=> b!6480493 m!7268782))

(declare-fun m!7268784 () Bool)

(assert (=> bm!560923 m!7268784))

(assert (=> b!6480101 d!2033350))

(declare-fun b!6480570 () Bool)

(declare-fun res!2661003 () Bool)

(declare-fun e!3928073 () Bool)

(assert (=> b!6480570 (=> res!2661003 e!3928073)))

(declare-fun e!3928071 () Bool)

(assert (=> b!6480570 (= res!2661003 e!3928071)))

(declare-fun res!2661004 () Bool)

(assert (=> b!6480570 (=> (not res!2661004) (not e!3928071))))

(declare-fun lt!2386427 () Bool)

(assert (=> b!6480570 (= res!2661004 lt!2386427)))

(declare-fun d!2033364 () Bool)

(declare-fun e!3928072 () Bool)

(assert (=> d!2033364 e!3928072))

(declare-fun c!1187159 () Bool)

(assert (=> d!2033364 (= c!1187159 ((_ is EmptyExpr!16357) r!7292))))

(declare-fun e!3928074 () Bool)

(assert (=> d!2033364 (= lt!2386427 e!3928074)))

(declare-fun c!1187161 () Bool)

(assert (=> d!2033364 (= c!1187161 (isEmpty!37432 s!2326))))

(assert (=> d!2033364 (validRegex!8093 r!7292)))

(assert (=> d!2033364 (= (matchR!8540 r!7292 s!2326) lt!2386427)))

(declare-fun b!6480571 () Bool)

(declare-fun res!2660998 () Bool)

(declare-fun e!3928069 () Bool)

(assert (=> b!6480571 (=> res!2660998 e!3928069)))

(declare-fun tail!12277 (List!65370) List!65370)

(assert (=> b!6480571 (= res!2660998 (not (isEmpty!37432 (tail!12277 s!2326))))))

(declare-fun b!6480572 () Bool)

(declare-fun e!3928068 () Bool)

(assert (=> b!6480572 (= e!3928073 e!3928068)))

(declare-fun res!2660997 () Bool)

(assert (=> b!6480572 (=> (not res!2660997) (not e!3928068))))

(assert (=> b!6480572 (= res!2660997 (not lt!2386427))))

(declare-fun b!6480573 () Bool)

(declare-fun head!13192 (List!65370) C!32984)

(assert (=> b!6480573 (= e!3928071 (= (head!13192 s!2326) (c!1187033 r!7292)))))

(declare-fun b!6480574 () Bool)

(assert (=> b!6480574 (= e!3928068 e!3928069)))

(declare-fun res!2661000 () Bool)

(assert (=> b!6480574 (=> res!2661000 e!3928069)))

(declare-fun call!560937 () Bool)

(assert (=> b!6480574 (= res!2661000 call!560937)))

(declare-fun b!6480575 () Bool)

(declare-fun e!3928070 () Bool)

(assert (=> b!6480575 (= e!3928072 e!3928070)))

(declare-fun c!1187160 () Bool)

(assert (=> b!6480575 (= c!1187160 ((_ is EmptyLang!16357) r!7292))))

(declare-fun bm!560932 () Bool)

(assert (=> bm!560932 (= call!560937 (isEmpty!37432 s!2326))))

(declare-fun b!6480576 () Bool)

(assert (=> b!6480576 (= e!3928070 (not lt!2386427))))

(declare-fun b!6480577 () Bool)

(declare-fun res!2660999 () Bool)

(assert (=> b!6480577 (=> (not res!2660999) (not e!3928071))))

(assert (=> b!6480577 (= res!2660999 (not call!560937))))

(declare-fun b!6480578 () Bool)

(declare-fun res!2661001 () Bool)

(assert (=> b!6480578 (=> res!2661001 e!3928073)))

(assert (=> b!6480578 (= res!2661001 (not ((_ is ElementMatch!16357) r!7292)))))

(assert (=> b!6480578 (= e!3928070 e!3928073)))

(declare-fun b!6480579 () Bool)

(assert (=> b!6480579 (= e!3928074 (nullable!6350 r!7292))))

(declare-fun b!6480580 () Bool)

(declare-fun derivativeStep!5055 (Regex!16357 C!32984) Regex!16357)

(assert (=> b!6480580 (= e!3928074 (matchR!8540 (derivativeStep!5055 r!7292 (head!13192 s!2326)) (tail!12277 s!2326)))))

(declare-fun b!6480581 () Bool)

(assert (=> b!6480581 (= e!3928072 (= lt!2386427 call!560937))))

(declare-fun b!6480582 () Bool)

(assert (=> b!6480582 (= e!3928069 (not (= (head!13192 s!2326) (c!1187033 r!7292))))))

(declare-fun b!6480583 () Bool)

(declare-fun res!2661002 () Bool)

(assert (=> b!6480583 (=> (not res!2661002) (not e!3928071))))

(assert (=> b!6480583 (= res!2661002 (isEmpty!37432 (tail!12277 s!2326)))))

(assert (= (and d!2033364 c!1187161) b!6480579))

(assert (= (and d!2033364 (not c!1187161)) b!6480580))

(assert (= (and d!2033364 c!1187159) b!6480581))

(assert (= (and d!2033364 (not c!1187159)) b!6480575))

(assert (= (and b!6480575 c!1187160) b!6480576))

(assert (= (and b!6480575 (not c!1187160)) b!6480578))

(assert (= (and b!6480578 (not res!2661001)) b!6480570))

(assert (= (and b!6480570 res!2661004) b!6480577))

(assert (= (and b!6480577 res!2660999) b!6480583))

(assert (= (and b!6480583 res!2661002) b!6480573))

(assert (= (and b!6480570 (not res!2661003)) b!6480572))

(assert (= (and b!6480572 res!2660997) b!6480574))

(assert (= (and b!6480574 (not res!2661000)) b!6480571))

(assert (= (and b!6480571 (not res!2660998)) b!6480582))

(assert (= (or b!6480581 b!6480574 b!6480577) bm!560932))

(declare-fun m!7268858 () Bool)

(assert (=> b!6480573 m!7268858))

(declare-fun m!7268860 () Bool)

(assert (=> b!6480583 m!7268860))

(assert (=> b!6480583 m!7268860))

(declare-fun m!7268862 () Bool)

(assert (=> b!6480583 m!7268862))

(assert (=> bm!560932 m!7268780))

(declare-fun m!7268864 () Bool)

(assert (=> b!6480579 m!7268864))

(assert (=> b!6480571 m!7268860))

(assert (=> b!6480571 m!7268860))

(assert (=> b!6480571 m!7268862))

(assert (=> b!6480582 m!7268858))

(assert (=> d!2033364 m!7268780))

(assert (=> d!2033364 m!7268376))

(assert (=> b!6480580 m!7268858))

(assert (=> b!6480580 m!7268858))

(declare-fun m!7268866 () Bool)

(assert (=> b!6480580 m!7268866))

(assert (=> b!6480580 m!7268860))

(assert (=> b!6480580 m!7268866))

(assert (=> b!6480580 m!7268860))

(declare-fun m!7268868 () Bool)

(assert (=> b!6480580 m!7268868))

(assert (=> b!6480101 d!2033364))

(declare-fun d!2033382 () Bool)

(assert (=> d!2033382 (= (matchR!8540 r!7292 s!2326) (matchRSpec!3458 r!7292 s!2326))))

(declare-fun lt!2386432 () Unit!158759)

(declare-fun choose!48031 (Regex!16357 List!65370) Unit!158759)

(assert (=> d!2033382 (= lt!2386432 (choose!48031 r!7292 s!2326))))

(assert (=> d!2033382 (validRegex!8093 r!7292)))

(assert (=> d!2033382 (= (mainMatchTheorem!3458 r!7292 s!2326) lt!2386432)))

(declare-fun bs!1644156 () Bool)

(assert (= bs!1644156 d!2033382))

(assert (=> bs!1644156 m!7268344))

(assert (=> bs!1644156 m!7268342))

(declare-fun m!7268870 () Bool)

(assert (=> bs!1644156 m!7268870))

(assert (=> bs!1644156 m!7268376))

(assert (=> b!6480101 d!2033382))

(declare-fun b!6480588 () Bool)

(declare-fun res!2661015 () Bool)

(declare-fun e!3928082 () Bool)

(assert (=> b!6480588 (=> res!2661015 e!3928082)))

(declare-fun e!3928080 () Bool)

(assert (=> b!6480588 (= res!2661015 e!3928080)))

(declare-fun res!2661016 () Bool)

(assert (=> b!6480588 (=> (not res!2661016) (not e!3928080))))

(declare-fun lt!2386433 () Bool)

(assert (=> b!6480588 (= res!2661016 lt!2386433)))

(declare-fun d!2033384 () Bool)

(declare-fun e!3928081 () Bool)

(assert (=> d!2033384 e!3928081))

(declare-fun c!1187162 () Bool)

(assert (=> d!2033384 (= c!1187162 ((_ is EmptyExpr!16357) lt!2386332))))

(declare-fun e!3928083 () Bool)

(assert (=> d!2033384 (= lt!2386433 e!3928083)))

(declare-fun c!1187164 () Bool)

(assert (=> d!2033384 (= c!1187164 (isEmpty!37432 s!2326))))

(assert (=> d!2033384 (validRegex!8093 lt!2386332)))

(assert (=> d!2033384 (= (matchR!8540 lt!2386332 s!2326) lt!2386433)))

(declare-fun b!6480589 () Bool)

(declare-fun res!2661010 () Bool)

(declare-fun e!3928078 () Bool)

(assert (=> b!6480589 (=> res!2661010 e!3928078)))

(assert (=> b!6480589 (= res!2661010 (not (isEmpty!37432 (tail!12277 s!2326))))))

(declare-fun b!6480590 () Bool)

(declare-fun e!3928077 () Bool)

(assert (=> b!6480590 (= e!3928082 e!3928077)))

(declare-fun res!2661009 () Bool)

(assert (=> b!6480590 (=> (not res!2661009) (not e!3928077))))

(assert (=> b!6480590 (= res!2661009 (not lt!2386433))))

(declare-fun b!6480591 () Bool)

(assert (=> b!6480591 (= e!3928080 (= (head!13192 s!2326) (c!1187033 lt!2386332)))))

(declare-fun b!6480592 () Bool)

(assert (=> b!6480592 (= e!3928077 e!3928078)))

(declare-fun res!2661012 () Bool)

(assert (=> b!6480592 (=> res!2661012 e!3928078)))

(declare-fun call!560938 () Bool)

(assert (=> b!6480592 (= res!2661012 call!560938)))

(declare-fun b!6480593 () Bool)

(declare-fun e!3928079 () Bool)

(assert (=> b!6480593 (= e!3928081 e!3928079)))

(declare-fun c!1187163 () Bool)

(assert (=> b!6480593 (= c!1187163 ((_ is EmptyLang!16357) lt!2386332))))

(declare-fun bm!560933 () Bool)

(assert (=> bm!560933 (= call!560938 (isEmpty!37432 s!2326))))

(declare-fun b!6480594 () Bool)

(assert (=> b!6480594 (= e!3928079 (not lt!2386433))))

(declare-fun b!6480595 () Bool)

(declare-fun res!2661011 () Bool)

(assert (=> b!6480595 (=> (not res!2661011) (not e!3928080))))

(assert (=> b!6480595 (= res!2661011 (not call!560938))))

(declare-fun b!6480596 () Bool)

(declare-fun res!2661013 () Bool)

(assert (=> b!6480596 (=> res!2661013 e!3928082)))

(assert (=> b!6480596 (= res!2661013 (not ((_ is ElementMatch!16357) lt!2386332)))))

(assert (=> b!6480596 (= e!3928079 e!3928082)))

(declare-fun b!6480597 () Bool)

(assert (=> b!6480597 (= e!3928083 (nullable!6350 lt!2386332))))

(declare-fun b!6480598 () Bool)

(assert (=> b!6480598 (= e!3928083 (matchR!8540 (derivativeStep!5055 lt!2386332 (head!13192 s!2326)) (tail!12277 s!2326)))))

(declare-fun b!6480599 () Bool)

(assert (=> b!6480599 (= e!3928081 (= lt!2386433 call!560938))))

(declare-fun b!6480600 () Bool)

(assert (=> b!6480600 (= e!3928078 (not (= (head!13192 s!2326) (c!1187033 lt!2386332))))))

(declare-fun b!6480601 () Bool)

(declare-fun res!2661014 () Bool)

(assert (=> b!6480601 (=> (not res!2661014) (not e!3928080))))

(assert (=> b!6480601 (= res!2661014 (isEmpty!37432 (tail!12277 s!2326)))))

(assert (= (and d!2033384 c!1187164) b!6480597))

(assert (= (and d!2033384 (not c!1187164)) b!6480598))

(assert (= (and d!2033384 c!1187162) b!6480599))

(assert (= (and d!2033384 (not c!1187162)) b!6480593))

(assert (= (and b!6480593 c!1187163) b!6480594))

(assert (= (and b!6480593 (not c!1187163)) b!6480596))

(assert (= (and b!6480596 (not res!2661013)) b!6480588))

(assert (= (and b!6480588 res!2661016) b!6480595))

(assert (= (and b!6480595 res!2661011) b!6480601))

(assert (= (and b!6480601 res!2661014) b!6480591))

(assert (= (and b!6480588 (not res!2661015)) b!6480590))

(assert (= (and b!6480590 res!2661009) b!6480592))

(assert (= (and b!6480592 (not res!2661012)) b!6480589))

(assert (= (and b!6480589 (not res!2661010)) b!6480600))

(assert (= (or b!6480599 b!6480592 b!6480595) bm!560933))

(assert (=> b!6480591 m!7268858))

(assert (=> b!6480601 m!7268860))

(assert (=> b!6480601 m!7268860))

(assert (=> b!6480601 m!7268862))

(assert (=> bm!560933 m!7268780))

(declare-fun m!7268872 () Bool)

(assert (=> b!6480597 m!7268872))

(assert (=> b!6480589 m!7268860))

(assert (=> b!6480589 m!7268860))

(assert (=> b!6480589 m!7268862))

(assert (=> b!6480600 m!7268858))

(assert (=> d!2033384 m!7268780))

(declare-fun m!7268874 () Bool)

(assert (=> d!2033384 m!7268874))

(assert (=> b!6480598 m!7268858))

(assert (=> b!6480598 m!7268858))

(declare-fun m!7268876 () Bool)

(assert (=> b!6480598 m!7268876))

(assert (=> b!6480598 m!7268860))

(assert (=> b!6480598 m!7268876))

(assert (=> b!6480598 m!7268860))

(declare-fun m!7268878 () Bool)

(assert (=> b!6480598 m!7268878))

(assert (=> b!6480078 d!2033384))

(declare-fun bs!1644157 () Bool)

(declare-fun b!6480604 () Bool)

(assert (= bs!1644157 (and b!6480604 b!6480102)))

(declare-fun lambda!358355 () Int)

(assert (=> bs!1644157 (not (= lambda!358355 lambda!358309))))

(declare-fun bs!1644158 () Bool)

(assert (= bs!1644158 (and b!6480604 b!6480072)))

(assert (=> bs!1644158 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (reg!16686 lt!2386332) (reg!16686 (regOne!33226 r!7292))) (= lt!2386332 lt!2386306)) (= lambda!358355 lambda!358311))))

(assert (=> bs!1644158 (not (= lambda!358355 lambda!358312))))

(declare-fun bs!1644159 () Bool)

(assert (= bs!1644159 (and b!6480604 b!6480492)))

(assert (=> bs!1644159 (= (and (= (reg!16686 lt!2386332) (reg!16686 r!7292)) (= lt!2386332 r!7292)) (= lambda!358355 lambda!358350))))

(declare-fun bs!1644160 () Bool)

(assert (= bs!1644160 (and b!6480604 b!6480086)))

(assert (=> bs!1644160 (not (= lambda!358355 lambda!358306))))

(declare-fun bs!1644161 () Bool)

(assert (= bs!1644161 (and b!6480604 d!2033342)))

(assert (=> bs!1644161 (not (= lambda!358355 lambda!358334))))

(assert (=> bs!1644157 (not (= lambda!358355 lambda!358308))))

(declare-fun bs!1644162 () Bool)

(assert (= bs!1644162 (and b!6480604 d!2033304)))

(assert (=> bs!1644162 (not (= lambda!358355 lambda!358321))))

(assert (=> bs!1644158 (not (= lambda!358355 lambda!358310))))

(assert (=> bs!1644160 (not (= lambda!358355 lambda!358305))))

(assert (=> bs!1644161 (not (= lambda!358355 lambda!358332))))

(declare-fun bs!1644163 () Bool)

(assert (= bs!1644163 (and b!6480604 b!6480496)))

(assert (=> bs!1644163 (not (= lambda!358355 lambda!358351))))

(assert (=> b!6480604 true))

(assert (=> b!6480604 true))

(declare-fun bs!1644164 () Bool)

(declare-fun b!6480608 () Bool)

(assert (= bs!1644164 (and b!6480608 b!6480102)))

(declare-fun lambda!358357 () Int)

(assert (=> bs!1644164 (= (and (= (regOne!33226 lt!2386332) lt!2386306) (= (regTwo!33226 lt!2386332) (regTwo!33226 r!7292))) (= lambda!358357 lambda!358309))))

(declare-fun bs!1644165 () Bool)

(assert (= bs!1644165 (and b!6480608 b!6480072)))

(assert (=> bs!1644165 (not (= lambda!358357 lambda!358311))))

(assert (=> bs!1644165 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 lt!2386332) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 lt!2386332) lt!2386306)) (= lambda!358357 lambda!358312))))

(declare-fun bs!1644168 () Bool)

(assert (= bs!1644168 (and b!6480608 b!6480492)))

(assert (=> bs!1644168 (not (= lambda!358357 lambda!358350))))

(declare-fun bs!1644170 () Bool)

(assert (= bs!1644170 (and b!6480608 d!2033342)))

(assert (=> bs!1644170 (= (and (= (regOne!33226 lt!2386332) lt!2386306) (= (regTwo!33226 lt!2386332) (regTwo!33226 r!7292))) (= lambda!358357 lambda!358334))))

(assert (=> bs!1644164 (not (= lambda!358357 lambda!358308))))

(declare-fun bs!1644172 () Bool)

(assert (= bs!1644172 (and b!6480608 d!2033304)))

(assert (=> bs!1644172 (not (= lambda!358357 lambda!358321))))

(assert (=> bs!1644165 (not (= lambda!358357 lambda!358310))))

(declare-fun bs!1644174 () Bool)

(assert (= bs!1644174 (and b!6480608 b!6480086)))

(assert (=> bs!1644174 (not (= lambda!358357 lambda!358305))))

(assert (=> bs!1644170 (not (= lambda!358357 lambda!358332))))

(declare-fun bs!1644176 () Bool)

(assert (= bs!1644176 (and b!6480608 b!6480496)))

(assert (=> bs!1644176 (= (and (= (regOne!33226 lt!2386332) (regOne!33226 r!7292)) (= (regTwo!33226 lt!2386332) (regTwo!33226 r!7292))) (= lambda!358357 lambda!358351))))

(declare-fun bs!1644178 () Bool)

(assert (= bs!1644178 (and b!6480608 b!6480604)))

(assert (=> bs!1644178 (not (= lambda!358357 lambda!358355))))

(assert (=> bs!1644174 (= (and (= (regOne!33226 lt!2386332) (regOne!33226 r!7292)) (= (regTwo!33226 lt!2386332) (regTwo!33226 r!7292))) (= lambda!358357 lambda!358306))))

(assert (=> b!6480608 true))

(assert (=> b!6480608 true))

(declare-fun b!6480602 () Bool)

(declare-fun e!3928084 () Bool)

(declare-fun e!3928088 () Bool)

(assert (=> b!6480602 (= e!3928084 e!3928088)))

(declare-fun res!2661019 () Bool)

(assert (=> b!6480602 (= res!2661019 (matchRSpec!3458 (regOne!33227 lt!2386332) s!2326))))

(assert (=> b!6480602 (=> res!2661019 e!3928088)))

(declare-fun bm!560934 () Bool)

(declare-fun call!560940 () Bool)

(assert (=> bm!560934 (= call!560940 (isEmpty!37432 s!2326))))

(declare-fun b!6480603 () Bool)

(declare-fun e!3928090 () Bool)

(assert (=> b!6480603 (= e!3928084 e!3928090)))

(declare-fun c!1187167 () Bool)

(assert (=> b!6480603 (= c!1187167 ((_ is Star!16357) lt!2386332))))

(declare-fun e!3928086 () Bool)

(declare-fun call!560939 () Bool)

(assert (=> b!6480604 (= e!3928086 call!560939)))

(declare-fun b!6480605 () Bool)

(assert (=> b!6480605 (= e!3928088 (matchRSpec!3458 (regTwo!33227 lt!2386332) s!2326))))

(declare-fun bm!560935 () Bool)

(assert (=> bm!560935 (= call!560939 (Exists!3427 (ite c!1187167 lambda!358355 lambda!358357)))))

(declare-fun b!6480606 () Bool)

(declare-fun c!1187165 () Bool)

(assert (=> b!6480606 (= c!1187165 ((_ is Union!16357) lt!2386332))))

(declare-fun e!3928085 () Bool)

(assert (=> b!6480606 (= e!3928085 e!3928084)))

(declare-fun b!6480607 () Bool)

(declare-fun c!1187168 () Bool)

(assert (=> b!6480607 (= c!1187168 ((_ is ElementMatch!16357) lt!2386332))))

(declare-fun e!3928087 () Bool)

(assert (=> b!6480607 (= e!3928087 e!3928085)))

(assert (=> b!6480608 (= e!3928090 call!560939)))

(declare-fun d!2033386 () Bool)

(declare-fun c!1187166 () Bool)

(assert (=> d!2033386 (= c!1187166 ((_ is EmptyExpr!16357) lt!2386332))))

(declare-fun e!3928089 () Bool)

(assert (=> d!2033386 (= (matchRSpec!3458 lt!2386332 s!2326) e!3928089)))

(declare-fun b!6480609 () Bool)

(declare-fun res!2661017 () Bool)

(assert (=> b!6480609 (=> res!2661017 e!3928086)))

(assert (=> b!6480609 (= res!2661017 call!560940)))

(assert (=> b!6480609 (= e!3928090 e!3928086)))

(declare-fun b!6480610 () Bool)

(assert (=> b!6480610 (= e!3928089 e!3928087)))

(declare-fun res!2661018 () Bool)

(assert (=> b!6480610 (= res!2661018 (not ((_ is EmptyLang!16357) lt!2386332)))))

(assert (=> b!6480610 (=> (not res!2661018) (not e!3928087))))

(declare-fun b!6480611 () Bool)

(assert (=> b!6480611 (= e!3928085 (= s!2326 (Cons!65246 (c!1187033 lt!2386332) Nil!65246)))))

(declare-fun b!6480612 () Bool)

(assert (=> b!6480612 (= e!3928089 call!560940)))

(assert (= (and d!2033386 c!1187166) b!6480612))

(assert (= (and d!2033386 (not c!1187166)) b!6480610))

(assert (= (and b!6480610 res!2661018) b!6480607))

(assert (= (and b!6480607 c!1187168) b!6480611))

(assert (= (and b!6480607 (not c!1187168)) b!6480606))

(assert (= (and b!6480606 c!1187165) b!6480602))

(assert (= (and b!6480606 (not c!1187165)) b!6480603))

(assert (= (and b!6480602 (not res!2661019)) b!6480605))

(assert (= (and b!6480603 c!1187167) b!6480609))

(assert (= (and b!6480603 (not c!1187167)) b!6480608))

(assert (= (and b!6480609 (not res!2661017)) b!6480604))

(assert (= (or b!6480604 b!6480608) bm!560935))

(assert (= (or b!6480612 b!6480609) bm!560934))

(declare-fun m!7268880 () Bool)

(assert (=> b!6480602 m!7268880))

(assert (=> bm!560934 m!7268780))

(declare-fun m!7268882 () Bool)

(assert (=> b!6480605 m!7268882))

(declare-fun m!7268884 () Bool)

(assert (=> bm!560935 m!7268884))

(assert (=> b!6480078 d!2033386))

(declare-fun d!2033388 () Bool)

(assert (=> d!2033388 (= (matchR!8540 lt!2386332 s!2326) (matchRSpec!3458 lt!2386332 s!2326))))

(declare-fun lt!2386435 () Unit!158759)

(assert (=> d!2033388 (= lt!2386435 (choose!48031 lt!2386332 s!2326))))

(assert (=> d!2033388 (validRegex!8093 lt!2386332)))

(assert (=> d!2033388 (= (mainMatchTheorem!3458 lt!2386332 s!2326) lt!2386435)))

(declare-fun bs!1644179 () Bool)

(assert (= bs!1644179 d!2033388))

(assert (=> bs!1644179 m!7268432))

(assert (=> bs!1644179 m!7268434))

(declare-fun m!7268886 () Bool)

(assert (=> bs!1644179 m!7268886))

(assert (=> bs!1644179 m!7268874))

(assert (=> b!6480078 d!2033388))

(declare-fun b!6480619 () Bool)

(declare-fun res!2661032 () Bool)

(declare-fun e!3928098 () Bool)

(assert (=> b!6480619 (=> res!2661032 e!3928098)))

(declare-fun e!3928096 () Bool)

(assert (=> b!6480619 (= res!2661032 e!3928096)))

(declare-fun res!2661033 () Bool)

(assert (=> b!6480619 (=> (not res!2661033) (not e!3928096))))

(declare-fun lt!2386436 () Bool)

(assert (=> b!6480619 (= res!2661033 lt!2386436)))

(declare-fun d!2033390 () Bool)

(declare-fun e!3928097 () Bool)

(assert (=> d!2033390 e!3928097))

(declare-fun c!1187169 () Bool)

(assert (=> d!2033390 (= c!1187169 ((_ is EmptyExpr!16357) lt!2386306))))

(declare-fun e!3928099 () Bool)

(assert (=> d!2033390 (= lt!2386436 e!3928099)))

(declare-fun c!1187171 () Bool)

(assert (=> d!2033390 (= c!1187171 (isEmpty!37432 lt!2386309))))

(assert (=> d!2033390 (validRegex!8093 lt!2386306)))

(assert (=> d!2033390 (= (matchR!8540 lt!2386306 lt!2386309) lt!2386436)))

(declare-fun b!6480620 () Bool)

(declare-fun res!2661027 () Bool)

(declare-fun e!3928094 () Bool)

(assert (=> b!6480620 (=> res!2661027 e!3928094)))

(assert (=> b!6480620 (= res!2661027 (not (isEmpty!37432 (tail!12277 lt!2386309))))))

(declare-fun b!6480621 () Bool)

(declare-fun e!3928093 () Bool)

(assert (=> b!6480621 (= e!3928098 e!3928093)))

(declare-fun res!2661026 () Bool)

(assert (=> b!6480621 (=> (not res!2661026) (not e!3928093))))

(assert (=> b!6480621 (= res!2661026 (not lt!2386436))))

(declare-fun b!6480622 () Bool)

(assert (=> b!6480622 (= e!3928096 (= (head!13192 lt!2386309) (c!1187033 lt!2386306)))))

(declare-fun b!6480623 () Bool)

(assert (=> b!6480623 (= e!3928093 e!3928094)))

(declare-fun res!2661029 () Bool)

(assert (=> b!6480623 (=> res!2661029 e!3928094)))

(declare-fun call!560941 () Bool)

(assert (=> b!6480623 (= res!2661029 call!560941)))

(declare-fun b!6480624 () Bool)

(declare-fun e!3928095 () Bool)

(assert (=> b!6480624 (= e!3928097 e!3928095)))

(declare-fun c!1187170 () Bool)

(assert (=> b!6480624 (= c!1187170 ((_ is EmptyLang!16357) lt!2386306))))

(declare-fun bm!560936 () Bool)

(assert (=> bm!560936 (= call!560941 (isEmpty!37432 lt!2386309))))

(declare-fun b!6480625 () Bool)

(assert (=> b!6480625 (= e!3928095 (not lt!2386436))))

(declare-fun b!6480626 () Bool)

(declare-fun res!2661028 () Bool)

(assert (=> b!6480626 (=> (not res!2661028) (not e!3928096))))

(assert (=> b!6480626 (= res!2661028 (not call!560941))))

(declare-fun b!6480627 () Bool)

(declare-fun res!2661030 () Bool)

(assert (=> b!6480627 (=> res!2661030 e!3928098)))

(assert (=> b!6480627 (= res!2661030 (not ((_ is ElementMatch!16357) lt!2386306)))))

(assert (=> b!6480627 (= e!3928095 e!3928098)))

(declare-fun b!6480628 () Bool)

(assert (=> b!6480628 (= e!3928099 (nullable!6350 lt!2386306))))

(declare-fun b!6480629 () Bool)

(assert (=> b!6480629 (= e!3928099 (matchR!8540 (derivativeStep!5055 lt!2386306 (head!13192 lt!2386309)) (tail!12277 lt!2386309)))))

(declare-fun b!6480630 () Bool)

(assert (=> b!6480630 (= e!3928097 (= lt!2386436 call!560941))))

(declare-fun b!6480631 () Bool)

(assert (=> b!6480631 (= e!3928094 (not (= (head!13192 lt!2386309) (c!1187033 lt!2386306))))))

(declare-fun b!6480632 () Bool)

(declare-fun res!2661031 () Bool)

(assert (=> b!6480632 (=> (not res!2661031) (not e!3928096))))

(assert (=> b!6480632 (= res!2661031 (isEmpty!37432 (tail!12277 lt!2386309)))))

(assert (= (and d!2033390 c!1187171) b!6480628))

(assert (= (and d!2033390 (not c!1187171)) b!6480629))

(assert (= (and d!2033390 c!1187169) b!6480630))

(assert (= (and d!2033390 (not c!1187169)) b!6480624))

(assert (= (and b!6480624 c!1187170) b!6480625))

(assert (= (and b!6480624 (not c!1187170)) b!6480627))

(assert (= (and b!6480627 (not res!2661030)) b!6480619))

(assert (= (and b!6480619 res!2661033) b!6480626))

(assert (= (and b!6480626 res!2661028) b!6480632))

(assert (= (and b!6480632 res!2661031) b!6480622))

(assert (= (and b!6480619 (not res!2661032)) b!6480621))

(assert (= (and b!6480621 res!2661026) b!6480623))

(assert (= (and b!6480623 (not res!2661029)) b!6480620))

(assert (= (and b!6480620 (not res!2661027)) b!6480631))

(assert (= (or b!6480630 b!6480623 b!6480626) bm!560936))

(declare-fun m!7268888 () Bool)

(assert (=> b!6480622 m!7268888))

(declare-fun m!7268890 () Bool)

(assert (=> b!6480632 m!7268890))

(assert (=> b!6480632 m!7268890))

(declare-fun m!7268892 () Bool)

(assert (=> b!6480632 m!7268892))

(declare-fun m!7268894 () Bool)

(assert (=> bm!560936 m!7268894))

(declare-fun m!7268896 () Bool)

(assert (=> b!6480628 m!7268896))

(assert (=> b!6480620 m!7268890))

(assert (=> b!6480620 m!7268890))

(assert (=> b!6480620 m!7268892))

(assert (=> b!6480631 m!7268888))

(assert (=> d!2033390 m!7268894))

(assert (=> d!2033390 m!7268646))

(assert (=> b!6480629 m!7268888))

(assert (=> b!6480629 m!7268888))

(declare-fun m!7268898 () Bool)

(assert (=> b!6480629 m!7268898))

(assert (=> b!6480629 m!7268890))

(assert (=> b!6480629 m!7268898))

(assert (=> b!6480629 m!7268890))

(declare-fun m!7268900 () Bool)

(assert (=> b!6480629 m!7268900))

(assert (=> b!6480076 d!2033390))

(declare-fun d!2033392 () Bool)

(declare-fun c!1187178 () Bool)

(assert (=> d!2033392 (= c!1187178 (isEmpty!37432 lt!2386302))))

(declare-fun e!3928109 () Bool)

(assert (=> d!2033392 (= (matchZipper!2369 lt!2386337 lt!2386302) e!3928109)))

(declare-fun b!6480648 () Bool)

(declare-fun nullableZipper!2116 ((InoxSet Context!11482)) Bool)

(assert (=> b!6480648 (= e!3928109 (nullableZipper!2116 lt!2386337))))

(declare-fun b!6480649 () Bool)

(assert (=> b!6480649 (= e!3928109 (matchZipper!2369 (derivationStepZipper!2323 lt!2386337 (head!13192 lt!2386302)) (tail!12277 lt!2386302)))))

(assert (= (and d!2033392 c!1187178) b!6480648))

(assert (= (and d!2033392 (not c!1187178)) b!6480649))

(declare-fun m!7268908 () Bool)

(assert (=> d!2033392 m!7268908))

(declare-fun m!7268910 () Bool)

(assert (=> b!6480648 m!7268910))

(declare-fun m!7268912 () Bool)

(assert (=> b!6480649 m!7268912))

(assert (=> b!6480649 m!7268912))

(declare-fun m!7268914 () Bool)

(assert (=> b!6480649 m!7268914))

(declare-fun m!7268916 () Bool)

(assert (=> b!6480649 m!7268916))

(assert (=> b!6480649 m!7268914))

(assert (=> b!6480649 m!7268916))

(declare-fun m!7268918 () Bool)

(assert (=> b!6480649 m!7268918))

(assert (=> b!6480076 d!2033392))

(declare-fun d!2033396 () Bool)

(assert (=> d!2033396 (= (matchR!8540 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299)) (matchZipper!2369 lt!2386348 (_1!36639 lt!2386299)))))

(declare-fun lt!2386440 () Unit!158759)

(declare-fun choose!48036 ((InoxSet Context!11482) List!65372 Regex!16357 List!65370) Unit!158759)

(assert (=> d!2033396 (= lt!2386440 (choose!48036 lt!2386348 lt!2386312 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299)))))

(assert (=> d!2033396 (validRegex!8093 (reg!16686 (regOne!33226 r!7292)))))

(assert (=> d!2033396 (= (theoremZipperRegexEquiv!823 lt!2386348 lt!2386312 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299)) lt!2386440)))

(declare-fun bs!1644209 () Bool)

(assert (= bs!1644209 d!2033396))

(assert (=> bs!1644209 m!7268378))

(assert (=> bs!1644209 m!7268394))

(declare-fun m!7268928 () Bool)

(assert (=> bs!1644209 m!7268928))

(declare-fun m!7268930 () Bool)

(assert (=> bs!1644209 m!7268930))

(assert (=> b!6480076 d!2033396))

(declare-fun d!2033402 () Bool)

(assert (=> d!2033402 (= (matchR!8540 lt!2386310 lt!2386302) (matchZipper!2369 lt!2386337 lt!2386302))))

(declare-fun lt!2386441 () Unit!158759)

(assert (=> d!2033402 (= lt!2386441 (choose!48036 lt!2386337 lt!2386343 lt!2386310 lt!2386302))))

(assert (=> d!2033402 (validRegex!8093 lt!2386310)))

(assert (=> d!2033402 (= (theoremZipperRegexEquiv!823 lt!2386337 lt!2386343 lt!2386310 lt!2386302) lt!2386441)))

(declare-fun bs!1644210 () Bool)

(assert (= bs!1644210 d!2033402))

(assert (=> bs!1644210 m!7268398))

(assert (=> bs!1644210 m!7268396))

(declare-fun m!7268932 () Bool)

(assert (=> bs!1644210 m!7268932))

(declare-fun m!7268934 () Bool)

(assert (=> bs!1644210 m!7268934))

(assert (=> b!6480076 d!2033402))

(declare-fun d!2033404 () Bool)

(assert (=> d!2033404 (matchR!8540 (Star!16357 (reg!16686 (regOne!33226 r!7292))) (++!14425 (_1!36639 lt!2386299) (_2!36639 lt!2386299)))))

(declare-fun lt!2386445 () Unit!158759)

(declare-fun choose!48037 (Regex!16357 List!65370 List!65370) Unit!158759)

(assert (=> d!2033404 (= lt!2386445 (choose!48037 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299) (_2!36639 lt!2386299)))))

(assert (=> d!2033404 (validRegex!8093 (Star!16357 (reg!16686 (regOne!33226 r!7292))))))

(assert (=> d!2033404 (= (lemmaStarApp!134 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299) (_2!36639 lt!2386299)) lt!2386445)))

(declare-fun bs!1644212 () Bool)

(assert (= bs!1644212 d!2033404))

(assert (=> bs!1644212 m!7268358))

(assert (=> bs!1644212 m!7268358))

(declare-fun m!7268950 () Bool)

(assert (=> bs!1644212 m!7268950))

(declare-fun m!7268952 () Bool)

(assert (=> bs!1644212 m!7268952))

(declare-fun m!7268954 () Bool)

(assert (=> bs!1644212 m!7268954))

(assert (=> b!6480076 d!2033404))

(declare-fun d!2033412 () Bool)

(assert (=> d!2033412 (matchR!8540 (Concat!25202 lt!2386306 (regTwo!33226 r!7292)) (++!14425 (_2!36639 lt!2386299) (_2!36639 lt!2386317)))))

(declare-fun lt!2386449 () Unit!158759)

(declare-fun choose!48038 (Regex!16357 Regex!16357 List!65370 List!65370) Unit!158759)

(assert (=> d!2033412 (= lt!2386449 (choose!48038 lt!2386306 (regTwo!33226 r!7292) (_2!36639 lt!2386299) (_2!36639 lt!2386317)))))

(declare-fun e!3928114 () Bool)

(assert (=> d!2033412 e!3928114))

(declare-fun res!2661041 () Bool)

(assert (=> d!2033412 (=> (not res!2661041) (not e!3928114))))

(assert (=> d!2033412 (= res!2661041 (validRegex!8093 lt!2386306))))

(assert (=> d!2033412 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!320 lt!2386306 (regTwo!33226 r!7292) (_2!36639 lt!2386299) (_2!36639 lt!2386317)) lt!2386449)))

(declare-fun b!6480656 () Bool)

(assert (=> b!6480656 (= e!3928114 (validRegex!8093 (regTwo!33226 r!7292)))))

(assert (= (and d!2033412 res!2661041) b!6480656))

(assert (=> d!2033412 m!7268444))

(assert (=> d!2033412 m!7268444))

(declare-fun m!7268962 () Bool)

(assert (=> d!2033412 m!7268962))

(declare-fun m!7268966 () Bool)

(assert (=> d!2033412 m!7268966))

(assert (=> d!2033412 m!7268646))

(declare-fun m!7268972 () Bool)

(assert (=> b!6480656 m!7268972))

(assert (=> b!6480076 d!2033412))

(declare-fun bs!1644227 () Bool)

(declare-fun d!2033420 () Bool)

(assert (= bs!1644227 (and d!2033420 d!2033346)))

(declare-fun lambda!358365 () Int)

(assert (=> bs!1644227 (= lambda!358365 lambda!358340)))

(assert (=> d!2033420 (= (inv!84139 lt!2386300) (forall!15541 (exprs!6241 lt!2386300) lambda!358365))))

(declare-fun bs!1644228 () Bool)

(assert (= bs!1644228 d!2033420))

(declare-fun m!7268976 () Bool)

(assert (=> bs!1644228 m!7268976))

(assert (=> b!6480076 d!2033420))

(declare-fun d!2033422 () Bool)

(declare-fun c!1187181 () Bool)

(assert (=> d!2033422 (= c!1187181 (isEmpty!37432 (_1!36639 lt!2386299)))))

(declare-fun e!3928116 () Bool)

(assert (=> d!2033422 (= (matchZipper!2369 lt!2386348 (_1!36639 lt!2386299)) e!3928116)))

(declare-fun b!6480659 () Bool)

(assert (=> b!6480659 (= e!3928116 (nullableZipper!2116 lt!2386348))))

(declare-fun b!6480660 () Bool)

(assert (=> b!6480660 (= e!3928116 (matchZipper!2369 (derivationStepZipper!2323 lt!2386348 (head!13192 (_1!36639 lt!2386299))) (tail!12277 (_1!36639 lt!2386299))))))

(assert (= (and d!2033422 c!1187181) b!6480659))

(assert (= (and d!2033422 (not c!1187181)) b!6480660))

(declare-fun m!7268984 () Bool)

(assert (=> d!2033422 m!7268984))

(declare-fun m!7268986 () Bool)

(assert (=> b!6480659 m!7268986))

(declare-fun m!7268990 () Bool)

(assert (=> b!6480660 m!7268990))

(assert (=> b!6480660 m!7268990))

(declare-fun m!7268994 () Bool)

(assert (=> b!6480660 m!7268994))

(declare-fun m!7268996 () Bool)

(assert (=> b!6480660 m!7268996))

(assert (=> b!6480660 m!7268994))

(assert (=> b!6480660 m!7268996))

(declare-fun m!7268998 () Bool)

(assert (=> b!6480660 m!7268998))

(assert (=> b!6480076 d!2033422))

(declare-fun b!6480663 () Bool)

(declare-fun res!2661048 () Bool)

(declare-fun e!3928123 () Bool)

(assert (=> b!6480663 (=> res!2661048 e!3928123)))

(declare-fun e!3928121 () Bool)

(assert (=> b!6480663 (= res!2661048 e!3928121)))

(declare-fun res!2661049 () Bool)

(assert (=> b!6480663 (=> (not res!2661049) (not e!3928121))))

(declare-fun lt!2386452 () Bool)

(assert (=> b!6480663 (= res!2661049 lt!2386452)))

(declare-fun d!2033428 () Bool)

(declare-fun e!3928122 () Bool)

(assert (=> d!2033428 e!3928122))

(declare-fun c!1187183 () Bool)

(assert (=> d!2033428 (= c!1187183 ((_ is EmptyExpr!16357) lt!2386310))))

(declare-fun e!3928124 () Bool)

(assert (=> d!2033428 (= lt!2386452 e!3928124)))

(declare-fun c!1187185 () Bool)

(assert (=> d!2033428 (= c!1187185 (isEmpty!37432 lt!2386302))))

(assert (=> d!2033428 (validRegex!8093 lt!2386310)))

(assert (=> d!2033428 (= (matchR!8540 lt!2386310 lt!2386302) lt!2386452)))

(declare-fun b!6480664 () Bool)

(declare-fun res!2661043 () Bool)

(declare-fun e!3928119 () Bool)

(assert (=> b!6480664 (=> res!2661043 e!3928119)))

(assert (=> b!6480664 (= res!2661043 (not (isEmpty!37432 (tail!12277 lt!2386302))))))

(declare-fun b!6480665 () Bool)

(declare-fun e!3928118 () Bool)

(assert (=> b!6480665 (= e!3928123 e!3928118)))

(declare-fun res!2661042 () Bool)

(assert (=> b!6480665 (=> (not res!2661042) (not e!3928118))))

(assert (=> b!6480665 (= res!2661042 (not lt!2386452))))

(declare-fun b!6480666 () Bool)

(assert (=> b!6480666 (= e!3928121 (= (head!13192 lt!2386302) (c!1187033 lt!2386310)))))

(declare-fun b!6480667 () Bool)

(assert (=> b!6480667 (= e!3928118 e!3928119)))

(declare-fun res!2661045 () Bool)

(assert (=> b!6480667 (=> res!2661045 e!3928119)))

(declare-fun call!560944 () Bool)

(assert (=> b!6480667 (= res!2661045 call!560944)))

(declare-fun b!6480668 () Bool)

(declare-fun e!3928120 () Bool)

(assert (=> b!6480668 (= e!3928122 e!3928120)))

(declare-fun c!1187184 () Bool)

(assert (=> b!6480668 (= c!1187184 ((_ is EmptyLang!16357) lt!2386310))))

(declare-fun bm!560939 () Bool)

(assert (=> bm!560939 (= call!560944 (isEmpty!37432 lt!2386302))))

(declare-fun b!6480669 () Bool)

(assert (=> b!6480669 (= e!3928120 (not lt!2386452))))

(declare-fun b!6480670 () Bool)

(declare-fun res!2661044 () Bool)

(assert (=> b!6480670 (=> (not res!2661044) (not e!3928121))))

(assert (=> b!6480670 (= res!2661044 (not call!560944))))

(declare-fun b!6480671 () Bool)

(declare-fun res!2661046 () Bool)

(assert (=> b!6480671 (=> res!2661046 e!3928123)))

(assert (=> b!6480671 (= res!2661046 (not ((_ is ElementMatch!16357) lt!2386310)))))

(assert (=> b!6480671 (= e!3928120 e!3928123)))

(declare-fun b!6480672 () Bool)

(assert (=> b!6480672 (= e!3928124 (nullable!6350 lt!2386310))))

(declare-fun b!6480673 () Bool)

(assert (=> b!6480673 (= e!3928124 (matchR!8540 (derivativeStep!5055 lt!2386310 (head!13192 lt!2386302)) (tail!12277 lt!2386302)))))

(declare-fun b!6480674 () Bool)

(assert (=> b!6480674 (= e!3928122 (= lt!2386452 call!560944))))

(declare-fun b!6480675 () Bool)

(assert (=> b!6480675 (= e!3928119 (not (= (head!13192 lt!2386302) (c!1187033 lt!2386310))))))

(declare-fun b!6480676 () Bool)

(declare-fun res!2661047 () Bool)

(assert (=> b!6480676 (=> (not res!2661047) (not e!3928121))))

(assert (=> b!6480676 (= res!2661047 (isEmpty!37432 (tail!12277 lt!2386302)))))

(assert (= (and d!2033428 c!1187185) b!6480672))

(assert (= (and d!2033428 (not c!1187185)) b!6480673))

(assert (= (and d!2033428 c!1187183) b!6480674))

(assert (= (and d!2033428 (not c!1187183)) b!6480668))

(assert (= (and b!6480668 c!1187184) b!6480669))

(assert (= (and b!6480668 (not c!1187184)) b!6480671))

(assert (= (and b!6480671 (not res!2661046)) b!6480663))

(assert (= (and b!6480663 res!2661049) b!6480670))

(assert (= (and b!6480670 res!2661044) b!6480676))

(assert (= (and b!6480676 res!2661047) b!6480666))

(assert (= (and b!6480663 (not res!2661048)) b!6480665))

(assert (= (and b!6480665 res!2661042) b!6480667))

(assert (= (and b!6480667 (not res!2661045)) b!6480664))

(assert (= (and b!6480664 (not res!2661043)) b!6480675))

(assert (= (or b!6480674 b!6480667 b!6480670) bm!560939))

(assert (=> b!6480666 m!7268912))

(assert (=> b!6480676 m!7268916))

(assert (=> b!6480676 m!7268916))

(declare-fun m!7269002 () Bool)

(assert (=> b!6480676 m!7269002))

(assert (=> bm!560939 m!7268908))

(declare-fun m!7269004 () Bool)

(assert (=> b!6480672 m!7269004))

(assert (=> b!6480664 m!7268916))

(assert (=> b!6480664 m!7268916))

(assert (=> b!6480664 m!7269002))

(assert (=> b!6480675 m!7268912))

(assert (=> d!2033428 m!7268908))

(assert (=> d!2033428 m!7268934))

(assert (=> b!6480673 m!7268912))

(assert (=> b!6480673 m!7268912))

(declare-fun m!7269006 () Bool)

(assert (=> b!6480673 m!7269006))

(assert (=> b!6480673 m!7268916))

(assert (=> b!6480673 m!7269006))

(assert (=> b!6480673 m!7268916))

(declare-fun m!7269008 () Bool)

(assert (=> b!6480673 m!7269008))

(assert (=> b!6480076 d!2033428))

(declare-fun e!3928134 () Bool)

(declare-fun d!2033434 () Bool)

(assert (=> d!2033434 (= (matchZipper!2369 ((_ map or) lt!2386311 lt!2386301) (t!378996 s!2326)) e!3928134)))

(declare-fun res!2661059 () Bool)

(assert (=> d!2033434 (=> res!2661059 e!3928134)))

(assert (=> d!2033434 (= res!2661059 (matchZipper!2369 lt!2386311 (t!378996 s!2326)))))

(declare-fun lt!2386460 () Unit!158759)

(declare-fun choose!48039 ((InoxSet Context!11482) (InoxSet Context!11482) List!65370) Unit!158759)

(assert (=> d!2033434 (= lt!2386460 (choose!48039 lt!2386311 lt!2386301 (t!378996 s!2326)))))

(assert (=> d!2033434 (= (lemmaZipperConcatMatchesSameAsBothZippers!1188 lt!2386311 lt!2386301 (t!378996 s!2326)) lt!2386460)))

(declare-fun b!6480692 () Bool)

(assert (=> b!6480692 (= e!3928134 (matchZipper!2369 lt!2386301 (t!378996 s!2326)))))

(assert (= (and d!2033434 (not res!2661059)) b!6480692))

(assert (=> d!2033434 m!7268488))

(assert (=> d!2033434 m!7268486))

(declare-fun m!7269040 () Bool)

(assert (=> d!2033434 m!7269040))

(assert (=> b!6480692 m!7268382))

(assert (=> b!6480096 d!2033434))

(declare-fun d!2033446 () Bool)

(declare-fun c!1187189 () Bool)

(assert (=> d!2033446 (= c!1187189 (isEmpty!37432 (t!378996 s!2326)))))

(declare-fun e!3928135 () Bool)

(assert (=> d!2033446 (= (matchZipper!2369 lt!2386311 (t!378996 s!2326)) e!3928135)))

(declare-fun b!6480693 () Bool)

(assert (=> b!6480693 (= e!3928135 (nullableZipper!2116 lt!2386311))))

(declare-fun b!6480694 () Bool)

(assert (=> b!6480694 (= e!3928135 (matchZipper!2369 (derivationStepZipper!2323 lt!2386311 (head!13192 (t!378996 s!2326))) (tail!12277 (t!378996 s!2326))))))

(assert (= (and d!2033446 c!1187189) b!6480693))

(assert (= (and d!2033446 (not c!1187189)) b!6480694))

(declare-fun m!7269042 () Bool)

(assert (=> d!2033446 m!7269042))

(declare-fun m!7269044 () Bool)

(assert (=> b!6480693 m!7269044))

(declare-fun m!7269046 () Bool)

(assert (=> b!6480694 m!7269046))

(assert (=> b!6480694 m!7269046))

(declare-fun m!7269048 () Bool)

(assert (=> b!6480694 m!7269048))

(declare-fun m!7269050 () Bool)

(assert (=> b!6480694 m!7269050))

(assert (=> b!6480694 m!7269048))

(assert (=> b!6480694 m!7269050))

(declare-fun m!7269052 () Bool)

(assert (=> b!6480694 m!7269052))

(assert (=> b!6480096 d!2033446))

(declare-fun d!2033448 () Bool)

(declare-fun c!1187190 () Bool)

(assert (=> d!2033448 (= c!1187190 (isEmpty!37432 (t!378996 s!2326)))))

(declare-fun e!3928136 () Bool)

(assert (=> d!2033448 (= (matchZipper!2369 ((_ map or) lt!2386311 lt!2386301) (t!378996 s!2326)) e!3928136)))

(declare-fun b!6480695 () Bool)

(assert (=> b!6480695 (= e!3928136 (nullableZipper!2116 ((_ map or) lt!2386311 lt!2386301)))))

(declare-fun b!6480696 () Bool)

(assert (=> b!6480696 (= e!3928136 (matchZipper!2369 (derivationStepZipper!2323 ((_ map or) lt!2386311 lt!2386301) (head!13192 (t!378996 s!2326))) (tail!12277 (t!378996 s!2326))))))

(assert (= (and d!2033448 c!1187190) b!6480695))

(assert (= (and d!2033448 (not c!1187190)) b!6480696))

(assert (=> d!2033448 m!7269042))

(declare-fun m!7269054 () Bool)

(assert (=> b!6480695 m!7269054))

(assert (=> b!6480696 m!7269046))

(assert (=> b!6480696 m!7269046))

(declare-fun m!7269056 () Bool)

(assert (=> b!6480696 m!7269056))

(assert (=> b!6480696 m!7269050))

(assert (=> b!6480696 m!7269056))

(assert (=> b!6480696 m!7269050))

(declare-fun m!7269058 () Bool)

(assert (=> b!6480696 m!7269058))

(assert (=> b!6480096 d!2033448))

(declare-fun d!2033450 () Bool)

(declare-fun choose!48041 ((InoxSet Context!11482) Int) (InoxSet Context!11482))

(assert (=> d!2033450 (= (flatMap!1862 lt!2386348 lambda!358307) (choose!48041 lt!2386348 lambda!358307))))

(declare-fun bs!1644246 () Bool)

(assert (= bs!1644246 d!2033450))

(declare-fun m!7269060 () Bool)

(assert (=> bs!1644246 m!7269060))

(assert (=> b!6480097 d!2033450))

(declare-fun d!2033452 () Bool)

(declare-fun dynLambda!25919 (Int Context!11482) (InoxSet Context!11482))

(assert (=> d!2033452 (= (flatMap!1862 lt!2386348 lambda!358307) (dynLambda!25919 lambda!358307 lt!2386322))))

(declare-fun lt!2386464 () Unit!158759)

(declare-fun choose!48042 ((InoxSet Context!11482) Context!11482 Int) Unit!158759)

(assert (=> d!2033452 (= lt!2386464 (choose!48042 lt!2386348 lt!2386322 lambda!358307))))

(assert (=> d!2033452 (= lt!2386348 (store ((as const (Array Context!11482 Bool)) false) lt!2386322 true))))

(assert (=> d!2033452 (= (lemmaFlatMapOnSingletonSet!1388 lt!2386348 lt!2386322 lambda!358307) lt!2386464)))

(declare-fun b_lambda!245481 () Bool)

(assert (=> (not b_lambda!245481) (not d!2033452)))

(declare-fun bs!1644251 () Bool)

(assert (= bs!1644251 d!2033452))

(assert (=> bs!1644251 m!7268426))

(declare-fun m!7269068 () Bool)

(assert (=> bs!1644251 m!7269068))

(declare-fun m!7269070 () Bool)

(assert (=> bs!1644251 m!7269070))

(assert (=> bs!1644251 m!7268420))

(assert (=> b!6480097 d!2033452))

(declare-fun d!2033456 () Bool)

(assert (=> d!2033456 (= (flatMap!1862 lt!2386337 lambda!358307) (dynLambda!25919 lambda!358307 lt!2386300))))

(declare-fun lt!2386465 () Unit!158759)

(assert (=> d!2033456 (= lt!2386465 (choose!48042 lt!2386337 lt!2386300 lambda!358307))))

(assert (=> d!2033456 (= lt!2386337 (store ((as const (Array Context!11482 Bool)) false) lt!2386300 true))))

(assert (=> d!2033456 (= (lemmaFlatMapOnSingletonSet!1388 lt!2386337 lt!2386300 lambda!358307) lt!2386465)))

(declare-fun b_lambda!245483 () Bool)

(assert (=> (not b_lambda!245483) (not d!2033456)))

(declare-fun bs!1644256 () Bool)

(assert (= bs!1644256 d!2033456))

(assert (=> bs!1644256 m!7268414))

(declare-fun m!7269072 () Bool)

(assert (=> bs!1644256 m!7269072))

(declare-fun m!7269074 () Bool)

(assert (=> bs!1644256 m!7269074))

(assert (=> bs!1644256 m!7268424))

(assert (=> b!6480097 d!2033456))

(declare-fun d!2033458 () Bool)

(assert (=> d!2033458 (= (flatMap!1862 lt!2386337 lambda!358307) (choose!48041 lt!2386337 lambda!358307))))

(declare-fun bs!1644257 () Bool)

(assert (= bs!1644257 d!2033458))

(declare-fun m!7269076 () Bool)

(assert (=> bs!1644257 m!7269076))

(assert (=> b!6480097 d!2033458))

(declare-fun b!6480718 () Bool)

(declare-fun e!3928151 () (InoxSet Context!11482))

(declare-fun call!560949 () (InoxSet Context!11482))

(assert (=> b!6480718 (= e!3928151 call!560949)))

(declare-fun b!6480719 () Bool)

(assert (=> b!6480719 (= e!3928151 ((as const (Array Context!11482 Bool)) false))))

(declare-fun d!2033460 () Bool)

(declare-fun c!1187199 () Bool)

(declare-fun e!3928150 () Bool)

(assert (=> d!2033460 (= c!1187199 e!3928150)))

(declare-fun res!2661065 () Bool)

(assert (=> d!2033460 (=> (not res!2661065) (not e!3928150))))

(assert (=> d!2033460 (= res!2661065 ((_ is Cons!65247) (exprs!6241 lt!2386322)))))

(declare-fun e!3928152 () (InoxSet Context!11482))

(assert (=> d!2033460 (= (derivationStepZipperUp!1531 lt!2386322 (h!71694 s!2326)) e!3928152)))

(declare-fun b!6480720 () Bool)

(assert (=> b!6480720 (= e!3928152 ((_ map or) call!560949 (derivationStepZipperUp!1531 (Context!11483 (t!378997 (exprs!6241 lt!2386322))) (h!71694 s!2326))))))

(declare-fun bm!560944 () Bool)

(assert (=> bm!560944 (= call!560949 (derivationStepZipperDown!1605 (h!71695 (exprs!6241 lt!2386322)) (Context!11483 (t!378997 (exprs!6241 lt!2386322))) (h!71694 s!2326)))))

(declare-fun b!6480721 () Bool)

(assert (=> b!6480721 (= e!3928150 (nullable!6350 (h!71695 (exprs!6241 lt!2386322))))))

(declare-fun b!6480722 () Bool)

(assert (=> b!6480722 (= e!3928152 e!3928151)))

(declare-fun c!1187200 () Bool)

(assert (=> b!6480722 (= c!1187200 ((_ is Cons!65247) (exprs!6241 lt!2386322)))))

(assert (= (and d!2033460 res!2661065) b!6480721))

(assert (= (and d!2033460 c!1187199) b!6480720))

(assert (= (and d!2033460 (not c!1187199)) b!6480722))

(assert (= (and b!6480722 c!1187200) b!6480718))

(assert (= (and b!6480722 (not c!1187200)) b!6480719))

(assert (= (or b!6480720 b!6480718) bm!560944))

(declare-fun m!7269086 () Bool)

(assert (=> b!6480720 m!7269086))

(declare-fun m!7269088 () Bool)

(assert (=> bm!560944 m!7269088))

(declare-fun m!7269090 () Bool)

(assert (=> b!6480721 m!7269090))

(assert (=> b!6480097 d!2033460))

(declare-fun b!6480723 () Bool)

(declare-fun e!3928154 () (InoxSet Context!11482))

(declare-fun call!560950 () (InoxSet Context!11482))

(assert (=> b!6480723 (= e!3928154 call!560950)))

(declare-fun b!6480724 () Bool)

(assert (=> b!6480724 (= e!3928154 ((as const (Array Context!11482 Bool)) false))))

(declare-fun d!2033466 () Bool)

(declare-fun c!1187201 () Bool)

(declare-fun e!3928153 () Bool)

(assert (=> d!2033466 (= c!1187201 e!3928153)))

(declare-fun res!2661066 () Bool)

(assert (=> d!2033466 (=> (not res!2661066) (not e!3928153))))

(assert (=> d!2033466 (= res!2661066 ((_ is Cons!65247) (exprs!6241 lt!2386300)))))

(declare-fun e!3928155 () (InoxSet Context!11482))

(assert (=> d!2033466 (= (derivationStepZipperUp!1531 lt!2386300 (h!71694 s!2326)) e!3928155)))

(declare-fun b!6480725 () Bool)

(assert (=> b!6480725 (= e!3928155 ((_ map or) call!560950 (derivationStepZipperUp!1531 (Context!11483 (t!378997 (exprs!6241 lt!2386300))) (h!71694 s!2326))))))

(declare-fun bm!560945 () Bool)

(assert (=> bm!560945 (= call!560950 (derivationStepZipperDown!1605 (h!71695 (exprs!6241 lt!2386300)) (Context!11483 (t!378997 (exprs!6241 lt!2386300))) (h!71694 s!2326)))))

(declare-fun b!6480726 () Bool)

(assert (=> b!6480726 (= e!3928153 (nullable!6350 (h!71695 (exprs!6241 lt!2386300))))))

(declare-fun b!6480727 () Bool)

(assert (=> b!6480727 (= e!3928155 e!3928154)))

(declare-fun c!1187202 () Bool)

(assert (=> b!6480727 (= c!1187202 ((_ is Cons!65247) (exprs!6241 lt!2386300)))))

(assert (= (and d!2033466 res!2661066) b!6480726))

(assert (= (and d!2033466 c!1187201) b!6480725))

(assert (= (and d!2033466 (not c!1187201)) b!6480727))

(assert (= (and b!6480727 c!1187202) b!6480723))

(assert (= (and b!6480727 (not c!1187202)) b!6480724))

(assert (= (or b!6480725 b!6480723) bm!560945))

(declare-fun m!7269092 () Bool)

(assert (=> b!6480725 m!7269092))

(declare-fun m!7269094 () Bool)

(assert (=> bm!560945 m!7269094))

(declare-fun m!7269096 () Bool)

(assert (=> b!6480726 m!7269096))

(assert (=> b!6480097 d!2033466))

(declare-fun d!2033468 () Bool)

(declare-fun lt!2386466 () Regex!16357)

(assert (=> d!2033468 (validRegex!8093 lt!2386466)))

(assert (=> d!2033468 (= lt!2386466 (generalisedUnion!2201 (unfocusZipperList!1778 lt!2386312)))))

(assert (=> d!2033468 (= (unfocusZipper!2099 lt!2386312) lt!2386466)))

(declare-fun bs!1644275 () Bool)

(assert (= bs!1644275 d!2033468))

(declare-fun m!7269098 () Bool)

(assert (=> bs!1644275 m!7269098))

(declare-fun m!7269100 () Bool)

(assert (=> bs!1644275 m!7269100))

(assert (=> bs!1644275 m!7269100))

(declare-fun m!7269102 () Bool)

(assert (=> bs!1644275 m!7269102))

(assert (=> b!6480097 d!2033468))

(declare-fun d!2033470 () Bool)

(assert (=> d!2033470 (= (flatMap!1862 z!1189 lambda!358307) (dynLambda!25919 lambda!358307 (h!71696 zl!343)))))

(declare-fun lt!2386467 () Unit!158759)

(assert (=> d!2033470 (= lt!2386467 (choose!48042 z!1189 (h!71696 zl!343) lambda!358307))))

(assert (=> d!2033470 (= z!1189 (store ((as const (Array Context!11482 Bool)) false) (h!71696 zl!343) true))))

(assert (=> d!2033470 (= (lemmaFlatMapOnSingletonSet!1388 z!1189 (h!71696 zl!343) lambda!358307) lt!2386467)))

(declare-fun b_lambda!245485 () Bool)

(assert (=> (not b_lambda!245485) (not d!2033470)))

(declare-fun bs!1644279 () Bool)

(assert (= bs!1644279 d!2033470))

(assert (=> bs!1644279 m!7268454))

(declare-fun m!7269104 () Bool)

(assert (=> bs!1644279 m!7269104))

(declare-fun m!7269106 () Bool)

(assert (=> bs!1644279 m!7269106))

(declare-fun m!7269108 () Bool)

(assert (=> bs!1644279 m!7269108))

(assert (=> b!6480095 d!2033470))

(declare-fun b!6480728 () Bool)

(declare-fun e!3928157 () (InoxSet Context!11482))

(declare-fun call!560951 () (InoxSet Context!11482))

(assert (=> b!6480728 (= e!3928157 call!560951)))

(declare-fun b!6480729 () Bool)

(assert (=> b!6480729 (= e!3928157 ((as const (Array Context!11482 Bool)) false))))

(declare-fun d!2033472 () Bool)

(declare-fun c!1187203 () Bool)

(declare-fun e!3928156 () Bool)

(assert (=> d!2033472 (= c!1187203 e!3928156)))

(declare-fun res!2661067 () Bool)

(assert (=> d!2033472 (=> (not res!2661067) (not e!3928156))))

(assert (=> d!2033472 (= res!2661067 ((_ is Cons!65247) (exprs!6241 (Context!11483 (Cons!65247 (h!71695 (exprs!6241 (h!71696 zl!343))) (t!378997 (exprs!6241 (h!71696 zl!343))))))))))

(declare-fun e!3928158 () (InoxSet Context!11482))

(assert (=> d!2033472 (= (derivationStepZipperUp!1531 (Context!11483 (Cons!65247 (h!71695 (exprs!6241 (h!71696 zl!343))) (t!378997 (exprs!6241 (h!71696 zl!343))))) (h!71694 s!2326)) e!3928158)))

(declare-fun b!6480730 () Bool)

(assert (=> b!6480730 (= e!3928158 ((_ map or) call!560951 (derivationStepZipperUp!1531 (Context!11483 (t!378997 (exprs!6241 (Context!11483 (Cons!65247 (h!71695 (exprs!6241 (h!71696 zl!343))) (t!378997 (exprs!6241 (h!71696 zl!343)))))))) (h!71694 s!2326))))))

(declare-fun bm!560946 () Bool)

(assert (=> bm!560946 (= call!560951 (derivationStepZipperDown!1605 (h!71695 (exprs!6241 (Context!11483 (Cons!65247 (h!71695 (exprs!6241 (h!71696 zl!343))) (t!378997 (exprs!6241 (h!71696 zl!343))))))) (Context!11483 (t!378997 (exprs!6241 (Context!11483 (Cons!65247 (h!71695 (exprs!6241 (h!71696 zl!343))) (t!378997 (exprs!6241 (h!71696 zl!343)))))))) (h!71694 s!2326)))))

(declare-fun b!6480731 () Bool)

(assert (=> b!6480731 (= e!3928156 (nullable!6350 (h!71695 (exprs!6241 (Context!11483 (Cons!65247 (h!71695 (exprs!6241 (h!71696 zl!343))) (t!378997 (exprs!6241 (h!71696 zl!343)))))))))))

(declare-fun b!6480732 () Bool)

(assert (=> b!6480732 (= e!3928158 e!3928157)))

(declare-fun c!1187204 () Bool)

(assert (=> b!6480732 (= c!1187204 ((_ is Cons!65247) (exprs!6241 (Context!11483 (Cons!65247 (h!71695 (exprs!6241 (h!71696 zl!343))) (t!378997 (exprs!6241 (h!71696 zl!343))))))))))

(assert (= (and d!2033472 res!2661067) b!6480731))

(assert (= (and d!2033472 c!1187203) b!6480730))

(assert (= (and d!2033472 (not c!1187203)) b!6480732))

(assert (= (and b!6480732 c!1187204) b!6480728))

(assert (= (and b!6480732 (not c!1187204)) b!6480729))

(assert (= (or b!6480730 b!6480728) bm!560946))

(declare-fun m!7269110 () Bool)

(assert (=> b!6480730 m!7269110))

(declare-fun m!7269112 () Bool)

(assert (=> bm!560946 m!7269112))

(declare-fun m!7269114 () Bool)

(assert (=> b!6480731 m!7269114))

(assert (=> b!6480095 d!2033472))

(declare-fun b!6480733 () Bool)

(declare-fun e!3928160 () (InoxSet Context!11482))

(declare-fun call!560952 () (InoxSet Context!11482))

(assert (=> b!6480733 (= e!3928160 call!560952)))

(declare-fun b!6480734 () Bool)

(assert (=> b!6480734 (= e!3928160 ((as const (Array Context!11482 Bool)) false))))

(declare-fun d!2033474 () Bool)

(declare-fun c!1187205 () Bool)

(declare-fun e!3928159 () Bool)

(assert (=> d!2033474 (= c!1187205 e!3928159)))

(declare-fun res!2661068 () Bool)

(assert (=> d!2033474 (=> (not res!2661068) (not e!3928159))))

(assert (=> d!2033474 (= res!2661068 ((_ is Cons!65247) (exprs!6241 (h!71696 zl!343))))))

(declare-fun e!3928161 () (InoxSet Context!11482))

(assert (=> d!2033474 (= (derivationStepZipperUp!1531 (h!71696 zl!343) (h!71694 s!2326)) e!3928161)))

(declare-fun b!6480735 () Bool)

(assert (=> b!6480735 (= e!3928161 ((_ map or) call!560952 (derivationStepZipperUp!1531 (Context!11483 (t!378997 (exprs!6241 (h!71696 zl!343)))) (h!71694 s!2326))))))

(declare-fun bm!560947 () Bool)

(assert (=> bm!560947 (= call!560952 (derivationStepZipperDown!1605 (h!71695 (exprs!6241 (h!71696 zl!343))) (Context!11483 (t!378997 (exprs!6241 (h!71696 zl!343)))) (h!71694 s!2326)))))

(declare-fun b!6480736 () Bool)

(assert (=> b!6480736 (= e!3928159 (nullable!6350 (h!71695 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun b!6480737 () Bool)

(assert (=> b!6480737 (= e!3928161 e!3928160)))

(declare-fun c!1187206 () Bool)

(assert (=> b!6480737 (= c!1187206 ((_ is Cons!65247) (exprs!6241 (h!71696 zl!343))))))

(assert (= (and d!2033474 res!2661068) b!6480736))

(assert (= (and d!2033474 c!1187205) b!6480735))

(assert (= (and d!2033474 (not c!1187205)) b!6480737))

(assert (= (and b!6480737 c!1187206) b!6480733))

(assert (= (and b!6480737 (not c!1187206)) b!6480734))

(assert (= (or b!6480735 b!6480733) bm!560947))

(declare-fun m!7269116 () Bool)

(assert (=> b!6480735 m!7269116))

(declare-fun m!7269118 () Bool)

(assert (=> bm!560947 m!7269118))

(assert (=> b!6480736 m!7268458))

(assert (=> b!6480095 d!2033474))

(declare-fun bm!560969 () Bool)

(declare-fun call!560975 () List!65371)

(declare-fun c!1187227 () Bool)

(declare-fun c!1187230 () Bool)

(declare-fun $colon$colon!2212 (List!65371 Regex!16357) List!65371)

(assert (=> bm!560969 (= call!560975 ($colon$colon!2212 (exprs!6241 lt!2386328) (ite (or c!1187227 c!1187230) (regTwo!33226 (h!71695 (exprs!6241 (h!71696 zl!343)))) (h!71695 (exprs!6241 (h!71696 zl!343))))))))

(declare-fun bm!560970 () Bool)

(declare-fun call!560973 () List!65371)

(assert (=> bm!560970 (= call!560973 call!560975)))

(declare-fun b!6480806 () Bool)

(declare-fun e!3928203 () Bool)

(assert (=> b!6480806 (= e!3928203 (nullable!6350 (regOne!33226 (h!71695 (exprs!6241 (h!71696 zl!343))))))))

(declare-fun call!560976 () (InoxSet Context!11482))

(declare-fun c!1187231 () Bool)

(declare-fun bm!560971 () Bool)

(assert (=> bm!560971 (= call!560976 (derivationStepZipperDown!1605 (ite c!1187231 (regTwo!33227 (h!71695 (exprs!6241 (h!71696 zl!343)))) (ite c!1187227 (regTwo!33226 (h!71695 (exprs!6241 (h!71696 zl!343)))) (ite c!1187230 (regOne!33226 (h!71695 (exprs!6241 (h!71696 zl!343)))) (reg!16686 (h!71695 (exprs!6241 (h!71696 zl!343))))))) (ite (or c!1187231 c!1187227) lt!2386328 (Context!11483 call!560973)) (h!71694 s!2326)))))

(declare-fun bm!560972 () Bool)

(declare-fun call!560974 () (InoxSet Context!11482))

(declare-fun call!560977 () (InoxSet Context!11482))

(assert (=> bm!560972 (= call!560974 call!560977)))

(declare-fun b!6480807 () Bool)

(declare-fun e!3928206 () (InoxSet Context!11482))

(declare-fun e!3928205 () (InoxSet Context!11482))

(assert (=> b!6480807 (= e!3928206 e!3928205)))

(assert (=> b!6480807 (= c!1187230 ((_ is Concat!25202) (h!71695 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun b!6480808 () Bool)

(assert (=> b!6480808 (= e!3928205 call!560974)))

(declare-fun b!6480809 () Bool)

(declare-fun c!1187229 () Bool)

(assert (=> b!6480809 (= c!1187229 ((_ is Star!16357) (h!71695 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun e!3928204 () (InoxSet Context!11482))

(assert (=> b!6480809 (= e!3928205 e!3928204)))

(declare-fun d!2033476 () Bool)

(declare-fun c!1187228 () Bool)

(assert (=> d!2033476 (= c!1187228 (and ((_ is ElementMatch!16357) (h!71695 (exprs!6241 (h!71696 zl!343)))) (= (c!1187033 (h!71695 (exprs!6241 (h!71696 zl!343)))) (h!71694 s!2326))))))

(declare-fun e!3928202 () (InoxSet Context!11482))

(assert (=> d!2033476 (= (derivationStepZipperDown!1605 (h!71695 (exprs!6241 (h!71696 zl!343))) lt!2386328 (h!71694 s!2326)) e!3928202)))

(declare-fun bm!560968 () Bool)

(assert (=> bm!560968 (= call!560977 call!560976)))

(declare-fun b!6480810 () Bool)

(declare-fun e!3928207 () (InoxSet Context!11482))

(declare-fun call!560978 () (InoxSet Context!11482))

(assert (=> b!6480810 (= e!3928207 ((_ map or) call!560978 call!560976))))

(declare-fun b!6480811 () Bool)

(assert (=> b!6480811 (= e!3928204 ((as const (Array Context!11482 Bool)) false))))

(declare-fun b!6480812 () Bool)

(assert (=> b!6480812 (= e!3928206 ((_ map or) call!560978 call!560977))))

(declare-fun b!6480813 () Bool)

(assert (=> b!6480813 (= e!3928202 e!3928207)))

(assert (=> b!6480813 (= c!1187231 ((_ is Union!16357) (h!71695 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun b!6480814 () Bool)

(assert (=> b!6480814 (= e!3928202 (store ((as const (Array Context!11482 Bool)) false) lt!2386328 true))))

(declare-fun b!6480815 () Bool)

(assert (=> b!6480815 (= e!3928204 call!560974)))

(declare-fun b!6480816 () Bool)

(assert (=> b!6480816 (= c!1187227 e!3928203)))

(declare-fun res!2661097 () Bool)

(assert (=> b!6480816 (=> (not res!2661097) (not e!3928203))))

(assert (=> b!6480816 (= res!2661097 ((_ is Concat!25202) (h!71695 (exprs!6241 (h!71696 zl!343)))))))

(assert (=> b!6480816 (= e!3928207 e!3928206)))

(declare-fun bm!560973 () Bool)

(assert (=> bm!560973 (= call!560978 (derivationStepZipperDown!1605 (ite c!1187231 (regOne!33227 (h!71695 (exprs!6241 (h!71696 zl!343)))) (regOne!33226 (h!71695 (exprs!6241 (h!71696 zl!343))))) (ite c!1187231 lt!2386328 (Context!11483 call!560975)) (h!71694 s!2326)))))

(assert (= (and d!2033476 c!1187228) b!6480814))

(assert (= (and d!2033476 (not c!1187228)) b!6480813))

(assert (= (and b!6480813 c!1187231) b!6480810))

(assert (= (and b!6480813 (not c!1187231)) b!6480816))

(assert (= (and b!6480816 res!2661097) b!6480806))

(assert (= (and b!6480816 c!1187227) b!6480812))

(assert (= (and b!6480816 (not c!1187227)) b!6480807))

(assert (= (and b!6480807 c!1187230) b!6480808))

(assert (= (and b!6480807 (not c!1187230)) b!6480809))

(assert (= (and b!6480809 c!1187229) b!6480815))

(assert (= (and b!6480809 (not c!1187229)) b!6480811))

(assert (= (or b!6480808 b!6480815) bm!560970))

(assert (= (or b!6480808 b!6480815) bm!560972))

(assert (= (or b!6480812 bm!560970) bm!560969))

(assert (= (or b!6480812 bm!560972) bm!560968))

(assert (= (or b!6480810 bm!560968) bm!560971))

(assert (= (or b!6480810 b!6480812) bm!560973))

(declare-fun m!7269148 () Bool)

(assert (=> bm!560973 m!7269148))

(declare-fun m!7269150 () Bool)

(assert (=> b!6480814 m!7269150))

(declare-fun m!7269152 () Bool)

(assert (=> b!6480806 m!7269152))

(declare-fun m!7269154 () Bool)

(assert (=> bm!560969 m!7269154))

(declare-fun m!7269156 () Bool)

(assert (=> bm!560971 m!7269156))

(assert (=> b!6480095 d!2033476))

(declare-fun d!2033488 () Bool)

(declare-fun nullableFct!2290 (Regex!16357) Bool)

(assert (=> d!2033488 (= (nullable!6350 (h!71695 (exprs!6241 (h!71696 zl!343)))) (nullableFct!2290 (h!71695 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun bs!1644299 () Bool)

(assert (= bs!1644299 d!2033488))

(declare-fun m!7269164 () Bool)

(assert (=> bs!1644299 m!7269164))

(assert (=> b!6480095 d!2033488))

(declare-fun d!2033492 () Bool)

(assert (=> d!2033492 (= (flatMap!1862 z!1189 lambda!358307) (choose!48041 z!1189 lambda!358307))))

(declare-fun bs!1644300 () Bool)

(assert (= bs!1644300 d!2033492))

(declare-fun m!7269166 () Bool)

(assert (=> bs!1644300 m!7269166))

(assert (=> b!6480095 d!2033492))

(declare-fun b!6480840 () Bool)

(declare-fun e!3928223 () (InoxSet Context!11482))

(declare-fun call!560983 () (InoxSet Context!11482))

(assert (=> b!6480840 (= e!3928223 call!560983)))

(declare-fun b!6480841 () Bool)

(assert (=> b!6480841 (= e!3928223 ((as const (Array Context!11482 Bool)) false))))

(declare-fun d!2033494 () Bool)

(declare-fun c!1187237 () Bool)

(declare-fun e!3928222 () Bool)

(assert (=> d!2033494 (= c!1187237 e!3928222)))

(declare-fun res!2661111 () Bool)

(assert (=> d!2033494 (=> (not res!2661111) (not e!3928222))))

(assert (=> d!2033494 (= res!2661111 ((_ is Cons!65247) (exprs!6241 lt!2386328)))))

(declare-fun e!3928224 () (InoxSet Context!11482))

(assert (=> d!2033494 (= (derivationStepZipperUp!1531 lt!2386328 (h!71694 s!2326)) e!3928224)))

(declare-fun b!6480842 () Bool)

(assert (=> b!6480842 (= e!3928224 ((_ map or) call!560983 (derivationStepZipperUp!1531 (Context!11483 (t!378997 (exprs!6241 lt!2386328))) (h!71694 s!2326))))))

(declare-fun bm!560978 () Bool)

(assert (=> bm!560978 (= call!560983 (derivationStepZipperDown!1605 (h!71695 (exprs!6241 lt!2386328)) (Context!11483 (t!378997 (exprs!6241 lt!2386328))) (h!71694 s!2326)))))

(declare-fun b!6480843 () Bool)

(assert (=> b!6480843 (= e!3928222 (nullable!6350 (h!71695 (exprs!6241 lt!2386328))))))

(declare-fun b!6480844 () Bool)

(assert (=> b!6480844 (= e!3928224 e!3928223)))

(declare-fun c!1187238 () Bool)

(assert (=> b!6480844 (= c!1187238 ((_ is Cons!65247) (exprs!6241 lt!2386328)))))

(assert (= (and d!2033494 res!2661111) b!6480843))

(assert (= (and d!2033494 c!1187237) b!6480842))

(assert (= (and d!2033494 (not c!1187237)) b!6480844))

(assert (= (and b!6480844 c!1187238) b!6480840))

(assert (= (and b!6480844 (not c!1187238)) b!6480841))

(assert (= (or b!6480842 b!6480840) bm!560978))

(declare-fun m!7269168 () Bool)

(assert (=> b!6480842 m!7269168))

(declare-fun m!7269174 () Bool)

(assert (=> bm!560978 m!7269174))

(declare-fun m!7269178 () Bool)

(assert (=> b!6480843 m!7269178))

(assert (=> b!6480095 d!2033494))

(declare-fun d!2033496 () Bool)

(assert (=> d!2033496 (= (nullable!6350 (regOne!33226 (regOne!33226 r!7292))) (nullableFct!2290 (regOne!33226 (regOne!33226 r!7292))))))

(declare-fun bs!1644301 () Bool)

(assert (= bs!1644301 d!2033496))

(declare-fun m!7269184 () Bool)

(assert (=> bs!1644301 m!7269184))

(assert (=> b!6480074 d!2033496))

(declare-fun b!6480845 () Bool)

(declare-fun res!2661118 () Bool)

(declare-fun e!3928230 () Bool)

(assert (=> b!6480845 (=> res!2661118 e!3928230)))

(declare-fun e!3928228 () Bool)

(assert (=> b!6480845 (= res!2661118 e!3928228)))

(declare-fun res!2661119 () Bool)

(assert (=> b!6480845 (=> (not res!2661119) (not e!3928228))))

(declare-fun lt!2386472 () Bool)

(assert (=> b!6480845 (= res!2661119 lt!2386472)))

(declare-fun d!2033498 () Bool)

(declare-fun e!3928229 () Bool)

(assert (=> d!2033498 e!3928229))

(declare-fun c!1187239 () Bool)

(assert (=> d!2033498 (= c!1187239 ((_ is EmptyExpr!16357) lt!2386306))))

(declare-fun e!3928231 () Bool)

(assert (=> d!2033498 (= lt!2386472 e!3928231)))

(declare-fun c!1187241 () Bool)

(assert (=> d!2033498 (= c!1187241 (isEmpty!37432 (_2!36639 lt!2386299)))))

(assert (=> d!2033498 (validRegex!8093 lt!2386306)))

(assert (=> d!2033498 (= (matchR!8540 lt!2386306 (_2!36639 lt!2386299)) lt!2386472)))

(declare-fun b!6480846 () Bool)

(declare-fun res!2661113 () Bool)

(declare-fun e!3928226 () Bool)

(assert (=> b!6480846 (=> res!2661113 e!3928226)))

(assert (=> b!6480846 (= res!2661113 (not (isEmpty!37432 (tail!12277 (_2!36639 lt!2386299)))))))

(declare-fun b!6480847 () Bool)

(declare-fun e!3928225 () Bool)

(assert (=> b!6480847 (= e!3928230 e!3928225)))

(declare-fun res!2661112 () Bool)

(assert (=> b!6480847 (=> (not res!2661112) (not e!3928225))))

(assert (=> b!6480847 (= res!2661112 (not lt!2386472))))

(declare-fun b!6480848 () Bool)

(assert (=> b!6480848 (= e!3928228 (= (head!13192 (_2!36639 lt!2386299)) (c!1187033 lt!2386306)))))

(declare-fun b!6480849 () Bool)

(assert (=> b!6480849 (= e!3928225 e!3928226)))

(declare-fun res!2661115 () Bool)

(assert (=> b!6480849 (=> res!2661115 e!3928226)))

(declare-fun call!560984 () Bool)

(assert (=> b!6480849 (= res!2661115 call!560984)))

(declare-fun b!6480850 () Bool)

(declare-fun e!3928227 () Bool)

(assert (=> b!6480850 (= e!3928229 e!3928227)))

(declare-fun c!1187240 () Bool)

(assert (=> b!6480850 (= c!1187240 ((_ is EmptyLang!16357) lt!2386306))))

(declare-fun bm!560979 () Bool)

(assert (=> bm!560979 (= call!560984 (isEmpty!37432 (_2!36639 lt!2386299)))))

(declare-fun b!6480851 () Bool)

(assert (=> b!6480851 (= e!3928227 (not lt!2386472))))

(declare-fun b!6480852 () Bool)

(declare-fun res!2661114 () Bool)

(assert (=> b!6480852 (=> (not res!2661114) (not e!3928228))))

(assert (=> b!6480852 (= res!2661114 (not call!560984))))

(declare-fun b!6480853 () Bool)

(declare-fun res!2661116 () Bool)

(assert (=> b!6480853 (=> res!2661116 e!3928230)))

(assert (=> b!6480853 (= res!2661116 (not ((_ is ElementMatch!16357) lt!2386306)))))

(assert (=> b!6480853 (= e!3928227 e!3928230)))

(declare-fun b!6480854 () Bool)

(assert (=> b!6480854 (= e!3928231 (nullable!6350 lt!2386306))))

(declare-fun b!6480855 () Bool)

(assert (=> b!6480855 (= e!3928231 (matchR!8540 (derivativeStep!5055 lt!2386306 (head!13192 (_2!36639 lt!2386299))) (tail!12277 (_2!36639 lt!2386299))))))

(declare-fun b!6480856 () Bool)

(assert (=> b!6480856 (= e!3928229 (= lt!2386472 call!560984))))

(declare-fun b!6480857 () Bool)

(assert (=> b!6480857 (= e!3928226 (not (= (head!13192 (_2!36639 lt!2386299)) (c!1187033 lt!2386306))))))

(declare-fun b!6480858 () Bool)

(declare-fun res!2661117 () Bool)

(assert (=> b!6480858 (=> (not res!2661117) (not e!3928228))))

(assert (=> b!6480858 (= res!2661117 (isEmpty!37432 (tail!12277 (_2!36639 lt!2386299))))))

(assert (= (and d!2033498 c!1187241) b!6480854))

(assert (= (and d!2033498 (not c!1187241)) b!6480855))

(assert (= (and d!2033498 c!1187239) b!6480856))

(assert (= (and d!2033498 (not c!1187239)) b!6480850))

(assert (= (and b!6480850 c!1187240) b!6480851))

(assert (= (and b!6480850 (not c!1187240)) b!6480853))

(assert (= (and b!6480853 (not res!2661116)) b!6480845))

(assert (= (and b!6480845 res!2661119) b!6480852))

(assert (= (and b!6480852 res!2661114) b!6480858))

(assert (= (and b!6480858 res!2661117) b!6480848))

(assert (= (and b!6480845 (not res!2661118)) b!6480847))

(assert (= (and b!6480847 res!2661112) b!6480849))

(assert (= (and b!6480849 (not res!2661115)) b!6480846))

(assert (= (and b!6480846 (not res!2661113)) b!6480857))

(assert (= (or b!6480856 b!6480849 b!6480852) bm!560979))

(declare-fun m!7269190 () Bool)

(assert (=> b!6480848 m!7269190))

(declare-fun m!7269192 () Bool)

(assert (=> b!6480858 m!7269192))

(assert (=> b!6480858 m!7269192))

(declare-fun m!7269194 () Bool)

(assert (=> b!6480858 m!7269194))

(declare-fun m!7269196 () Bool)

(assert (=> bm!560979 m!7269196))

(assert (=> b!6480854 m!7268896))

(assert (=> b!6480846 m!7269192))

(assert (=> b!6480846 m!7269192))

(assert (=> b!6480846 m!7269194))

(assert (=> b!6480857 m!7269190))

(assert (=> d!2033498 m!7269196))

(assert (=> d!2033498 m!7268646))

(assert (=> b!6480855 m!7269190))

(assert (=> b!6480855 m!7269190))

(declare-fun m!7269198 () Bool)

(assert (=> b!6480855 m!7269198))

(assert (=> b!6480855 m!7269192))

(assert (=> b!6480855 m!7269198))

(assert (=> b!6480855 m!7269192))

(declare-fun m!7269200 () Bool)

(assert (=> b!6480855 m!7269200))

(assert (=> b!6480113 d!2033498))

(declare-fun d!2033504 () Bool)

(assert (=> d!2033504 (= (Exists!3427 lambda!358311) (choose!48027 lambda!358311))))

(declare-fun bs!1644302 () Bool)

(assert (= bs!1644302 d!2033504))

(declare-fun m!7269202 () Bool)

(assert (=> bs!1644302 m!7269202))

(assert (=> b!6480072 d!2033504))

(declare-fun d!2033506 () Bool)

(assert (=> d!2033506 (= (get!22619 lt!2386321) (v!52426 lt!2386321))))

(assert (=> b!6480072 d!2033506))

(declare-fun d!2033508 () Bool)

(assert (=> d!2033508 (= (isDefined!12951 lt!2386321) (not (isEmpty!37433 lt!2386321)))))

(declare-fun bs!1644303 () Bool)

(assert (= bs!1644303 d!2033508))

(declare-fun m!7269204 () Bool)

(assert (=> bs!1644303 m!7269204))

(assert (=> b!6480072 d!2033508))

(declare-fun d!2033510 () Bool)

(assert (=> d!2033510 (= (Exists!3427 lambda!358312) (choose!48027 lambda!358312))))

(declare-fun bs!1644304 () Bool)

(assert (= bs!1644304 d!2033510))

(declare-fun m!7269206 () Bool)

(assert (=> bs!1644304 m!7269206))

(assert (=> b!6480072 d!2033510))

(declare-fun bs!1644307 () Bool)

(declare-fun d!2033512 () Bool)

(assert (= bs!1644307 (and d!2033512 b!6480102)))

(declare-fun lambda!358381 () Int)

(assert (=> bs!1644307 (not (= lambda!358381 lambda!358309))))

(declare-fun bs!1644308 () Bool)

(assert (= bs!1644308 (and d!2033512 b!6480072)))

(assert (=> bs!1644308 (not (= lambda!358381 lambda!358311))))

(declare-fun bs!1644309 () Bool)

(assert (= bs!1644309 (and d!2033512 b!6480608)))

(assert (=> bs!1644309 (not (= lambda!358381 lambda!358357))))

(assert (=> bs!1644308 (not (= lambda!358381 lambda!358312))))

(declare-fun bs!1644310 () Bool)

(assert (= bs!1644310 (and d!2033512 b!6480492)))

(assert (=> bs!1644310 (not (= lambda!358381 lambda!358350))))

(declare-fun bs!1644311 () Bool)

(assert (= bs!1644311 (and d!2033512 d!2033342)))

(assert (=> bs!1644311 (not (= lambda!358381 lambda!358334))))

(assert (=> bs!1644307 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= (Star!16357 (reg!16686 (regOne!33226 r!7292))) (regTwo!33226 r!7292))) (= lambda!358381 lambda!358308))))

(declare-fun bs!1644312 () Bool)

(assert (= bs!1644312 (and d!2033512 d!2033304)))

(assert (=> bs!1644312 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= (Star!16357 (reg!16686 (regOne!33226 r!7292))) (regTwo!33226 r!7292))) (= lambda!358381 lambda!358321))))

(assert (=> bs!1644308 (= (= (Star!16357 (reg!16686 (regOne!33226 r!7292))) lt!2386306) (= lambda!358381 lambda!358310))))

(declare-fun bs!1644313 () Bool)

(assert (= bs!1644313 (and d!2033512 b!6480086)))

(assert (=> bs!1644313 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 r!7292)) (= (Star!16357 (reg!16686 (regOne!33226 r!7292))) (regTwo!33226 r!7292))) (= lambda!358381 lambda!358305))))

(assert (=> bs!1644311 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= (Star!16357 (reg!16686 (regOne!33226 r!7292))) (regTwo!33226 r!7292))) (= lambda!358381 lambda!358332))))

(declare-fun bs!1644317 () Bool)

(assert (= bs!1644317 (and d!2033512 b!6480496)))

(assert (=> bs!1644317 (not (= lambda!358381 lambda!358351))))

(declare-fun bs!1644318 () Bool)

(assert (= bs!1644318 (and d!2033512 b!6480604)))

(assert (=> bs!1644318 (not (= lambda!358381 lambda!358355))))

(assert (=> bs!1644313 (not (= lambda!358381 lambda!358306))))

(assert (=> d!2033512 true))

(assert (=> d!2033512 true))

(declare-fun lambda!358385 () Int)

(assert (=> bs!1644308 (= (= (Star!16357 (reg!16686 (regOne!33226 r!7292))) lt!2386306) (= lambda!358385 lambda!358311))))

(assert (=> bs!1644309 (not (= lambda!358385 lambda!358357))))

(assert (=> bs!1644308 (not (= lambda!358385 lambda!358312))))

(assert (=> bs!1644310 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (reg!16686 r!7292)) (= (Star!16357 (reg!16686 (regOne!33226 r!7292))) r!7292)) (= lambda!358385 lambda!358350))))

(assert (=> bs!1644311 (not (= lambda!358385 lambda!358334))))

(assert (=> bs!1644307 (not (= lambda!358385 lambda!358308))))

(assert (=> bs!1644312 (not (= lambda!358385 lambda!358321))))

(assert (=> bs!1644307 (not (= lambda!358385 lambda!358309))))

(declare-fun bs!1644319 () Bool)

(assert (= bs!1644319 d!2033512))

(assert (=> bs!1644319 (not (= lambda!358385 lambda!358381))))

(assert (=> bs!1644308 (not (= lambda!358385 lambda!358310))))

(assert (=> bs!1644313 (not (= lambda!358385 lambda!358305))))

(assert (=> bs!1644311 (not (= lambda!358385 lambda!358332))))

(assert (=> bs!1644317 (not (= lambda!358385 lambda!358351))))

(assert (=> bs!1644318 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (reg!16686 lt!2386332)) (= (Star!16357 (reg!16686 (regOne!33226 r!7292))) lt!2386332)) (= lambda!358385 lambda!358355))))

(assert (=> bs!1644313 (not (= lambda!358385 lambda!358306))))

(assert (=> d!2033512 true))

(assert (=> d!2033512 true))

(assert (=> d!2033512 (= (Exists!3427 lambda!358381) (Exists!3427 lambda!358385))))

(declare-fun lt!2386480 () Unit!158759)

(declare-fun choose!48044 (Regex!16357 List!65370) Unit!158759)

(assert (=> d!2033512 (= lt!2386480 (choose!48044 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386317)))))

(assert (=> d!2033512 (validRegex!8093 (reg!16686 (regOne!33226 r!7292)))))

(assert (=> d!2033512 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!648 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386317)) lt!2386480)))

(declare-fun m!7269244 () Bool)

(assert (=> bs!1644319 m!7269244))

(declare-fun m!7269246 () Bool)

(assert (=> bs!1644319 m!7269246))

(declare-fun m!7269248 () Bool)

(assert (=> bs!1644319 m!7269248))

(assert (=> bs!1644319 m!7268930))

(assert (=> b!6480072 d!2033512))

(declare-fun d!2033520 () Bool)

(assert (=> d!2033520 (= (Exists!3427 lambda!358310) (choose!48027 lambda!358310))))

(declare-fun bs!1644320 () Bool)

(assert (= bs!1644320 d!2033520))

(declare-fun m!7269250 () Bool)

(assert (=> bs!1644320 m!7269250))

(assert (=> b!6480072 d!2033520))

(declare-fun bs!1644321 () Bool)

(declare-fun b!6480921 () Bool)

(assert (= bs!1644321 (and b!6480921 d!2033512)))

(declare-fun lambda!358386 () Int)

(assert (=> bs!1644321 (= (and (= (reg!16686 lt!2386306) (reg!16686 (regOne!33226 r!7292))) (= lt!2386306 (Star!16357 (reg!16686 (regOne!33226 r!7292))))) (= lambda!358386 lambda!358385))))

(declare-fun bs!1644322 () Bool)

(assert (= bs!1644322 (and b!6480921 b!6480072)))

(assert (=> bs!1644322 (= (= (reg!16686 lt!2386306) (reg!16686 (regOne!33226 r!7292))) (= lambda!358386 lambda!358311))))

(declare-fun bs!1644323 () Bool)

(assert (= bs!1644323 (and b!6480921 b!6480608)))

(assert (=> bs!1644323 (not (= lambda!358386 lambda!358357))))

(assert (=> bs!1644322 (not (= lambda!358386 lambda!358312))))

(declare-fun bs!1644324 () Bool)

(assert (= bs!1644324 (and b!6480921 b!6480492)))

(assert (=> bs!1644324 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 lt!2386306) (reg!16686 r!7292)) (= lt!2386306 r!7292)) (= lambda!358386 lambda!358350))))

(declare-fun bs!1644325 () Bool)

(assert (= bs!1644325 (and b!6480921 d!2033342)))

(assert (=> bs!1644325 (not (= lambda!358386 lambda!358334))))

(declare-fun bs!1644326 () Bool)

(assert (= bs!1644326 (and b!6480921 b!6480102)))

(assert (=> bs!1644326 (not (= lambda!358386 lambda!358308))))

(declare-fun bs!1644327 () Bool)

(assert (= bs!1644327 (and b!6480921 d!2033304)))

(assert (=> bs!1644327 (not (= lambda!358386 lambda!358321))))

(assert (=> bs!1644326 (not (= lambda!358386 lambda!358309))))

(assert (=> bs!1644321 (not (= lambda!358386 lambda!358381))))

(assert (=> bs!1644322 (not (= lambda!358386 lambda!358310))))

(declare-fun bs!1644328 () Bool)

(assert (= bs!1644328 (and b!6480921 b!6480086)))

(assert (=> bs!1644328 (not (= lambda!358386 lambda!358305))))

(assert (=> bs!1644325 (not (= lambda!358386 lambda!358332))))

(declare-fun bs!1644329 () Bool)

(assert (= bs!1644329 (and b!6480921 b!6480496)))

(assert (=> bs!1644329 (not (= lambda!358386 lambda!358351))))

(declare-fun bs!1644330 () Bool)

(assert (= bs!1644330 (and b!6480921 b!6480604)))

(assert (=> bs!1644330 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 lt!2386306) (reg!16686 lt!2386332)) (= lt!2386306 lt!2386332)) (= lambda!358386 lambda!358355))))

(assert (=> bs!1644328 (not (= lambda!358386 lambda!358306))))

(assert (=> b!6480921 true))

(assert (=> b!6480921 true))

(declare-fun bs!1644331 () Bool)

(declare-fun b!6480925 () Bool)

(assert (= bs!1644331 (and b!6480925 d!2033512)))

(declare-fun lambda!358387 () Int)

(assert (=> bs!1644331 (not (= lambda!358387 lambda!358385))))

(declare-fun bs!1644333 () Bool)

(assert (= bs!1644333 (and b!6480925 b!6480072)))

(assert (=> bs!1644333 (not (= lambda!358387 lambda!358311))))

(declare-fun bs!1644334 () Bool)

(assert (= bs!1644334 (and b!6480925 b!6480608)))

(assert (=> bs!1644334 (= (and (= (_1!36639 lt!2386317) s!2326) (= (regOne!33226 lt!2386306) (regOne!33226 lt!2386332)) (= (regTwo!33226 lt!2386306) (regTwo!33226 lt!2386332))) (= lambda!358387 lambda!358357))))

(declare-fun bs!1644335 () Bool)

(assert (= bs!1644335 (and b!6480925 b!6480921)))

(assert (=> bs!1644335 (not (= lambda!358387 lambda!358386))))

(assert (=> bs!1644333 (= (and (= (regOne!33226 lt!2386306) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 lt!2386306) lt!2386306)) (= lambda!358387 lambda!358312))))

(declare-fun bs!1644336 () Bool)

(assert (= bs!1644336 (and b!6480925 b!6480492)))

(assert (=> bs!1644336 (not (= lambda!358387 lambda!358350))))

(declare-fun bs!1644337 () Bool)

(assert (= bs!1644337 (and b!6480925 d!2033342)))

(assert (=> bs!1644337 (= (and (= (_1!36639 lt!2386317) s!2326) (= (regOne!33226 lt!2386306) lt!2386306) (= (regTwo!33226 lt!2386306) (regTwo!33226 r!7292))) (= lambda!358387 lambda!358334))))

(declare-fun bs!1644338 () Bool)

(assert (= bs!1644338 (and b!6480925 b!6480102)))

(assert (=> bs!1644338 (not (= lambda!358387 lambda!358308))))

(declare-fun bs!1644340 () Bool)

(assert (= bs!1644340 (and b!6480925 d!2033304)))

(assert (=> bs!1644340 (not (= lambda!358387 lambda!358321))))

(assert (=> bs!1644338 (= (and (= (_1!36639 lt!2386317) s!2326) (= (regOne!33226 lt!2386306) lt!2386306) (= (regTwo!33226 lt!2386306) (regTwo!33226 r!7292))) (= lambda!358387 lambda!358309))))

(assert (=> bs!1644331 (not (= lambda!358387 lambda!358381))))

(assert (=> bs!1644333 (not (= lambda!358387 lambda!358310))))

(declare-fun bs!1644341 () Bool)

(assert (= bs!1644341 (and b!6480925 b!6480086)))

(assert (=> bs!1644341 (not (= lambda!358387 lambda!358305))))

(assert (=> bs!1644337 (not (= lambda!358387 lambda!358332))))

(declare-fun bs!1644342 () Bool)

(assert (= bs!1644342 (and b!6480925 b!6480496)))

(assert (=> bs!1644342 (= (and (= (_1!36639 lt!2386317) s!2326) (= (regOne!33226 lt!2386306) (regOne!33226 r!7292)) (= (regTwo!33226 lt!2386306) (regTwo!33226 r!7292))) (= lambda!358387 lambda!358351))))

(declare-fun bs!1644343 () Bool)

(assert (= bs!1644343 (and b!6480925 b!6480604)))

(assert (=> bs!1644343 (not (= lambda!358387 lambda!358355))))

(assert (=> bs!1644341 (= (and (= (_1!36639 lt!2386317) s!2326) (= (regOne!33226 lt!2386306) (regOne!33226 r!7292)) (= (regTwo!33226 lt!2386306) (regTwo!33226 r!7292))) (= lambda!358387 lambda!358306))))

(assert (=> b!6480925 true))

(assert (=> b!6480925 true))

(declare-fun b!6480919 () Bool)

(declare-fun e!3928264 () Bool)

(declare-fun e!3928268 () Bool)

(assert (=> b!6480919 (= e!3928264 e!3928268)))

(declare-fun res!2661146 () Bool)

(assert (=> b!6480919 (= res!2661146 (matchRSpec!3458 (regOne!33227 lt!2386306) (_1!36639 lt!2386317)))))

(assert (=> b!6480919 (=> res!2661146 e!3928268)))

(declare-fun bm!560981 () Bool)

(declare-fun call!560987 () Bool)

(assert (=> bm!560981 (= call!560987 (isEmpty!37432 (_1!36639 lt!2386317)))))

(declare-fun b!6480920 () Bool)

(declare-fun e!3928270 () Bool)

(assert (=> b!6480920 (= e!3928264 e!3928270)))

(declare-fun c!1187262 () Bool)

(assert (=> b!6480920 (= c!1187262 ((_ is Star!16357) lt!2386306))))

(declare-fun e!3928266 () Bool)

(declare-fun call!560986 () Bool)

(assert (=> b!6480921 (= e!3928266 call!560986)))

(declare-fun b!6480922 () Bool)

(assert (=> b!6480922 (= e!3928268 (matchRSpec!3458 (regTwo!33227 lt!2386306) (_1!36639 lt!2386317)))))

(declare-fun bm!560982 () Bool)

(assert (=> bm!560982 (= call!560986 (Exists!3427 (ite c!1187262 lambda!358386 lambda!358387)))))

(declare-fun b!6480923 () Bool)

(declare-fun c!1187260 () Bool)

(assert (=> b!6480923 (= c!1187260 ((_ is Union!16357) lt!2386306))))

(declare-fun e!3928265 () Bool)

(assert (=> b!6480923 (= e!3928265 e!3928264)))

(declare-fun b!6480924 () Bool)

(declare-fun c!1187263 () Bool)

(assert (=> b!6480924 (= c!1187263 ((_ is ElementMatch!16357) lt!2386306))))

(declare-fun e!3928267 () Bool)

(assert (=> b!6480924 (= e!3928267 e!3928265)))

(assert (=> b!6480925 (= e!3928270 call!560986)))

(declare-fun d!2033522 () Bool)

(declare-fun c!1187261 () Bool)

(assert (=> d!2033522 (= c!1187261 ((_ is EmptyExpr!16357) lt!2386306))))

(declare-fun e!3928269 () Bool)

(assert (=> d!2033522 (= (matchRSpec!3458 lt!2386306 (_1!36639 lt!2386317)) e!3928269)))

(declare-fun b!6480926 () Bool)

(declare-fun res!2661144 () Bool)

(assert (=> b!6480926 (=> res!2661144 e!3928266)))

(assert (=> b!6480926 (= res!2661144 call!560987)))

(assert (=> b!6480926 (= e!3928270 e!3928266)))

(declare-fun b!6480927 () Bool)

(assert (=> b!6480927 (= e!3928269 e!3928267)))

(declare-fun res!2661145 () Bool)

(assert (=> b!6480927 (= res!2661145 (not ((_ is EmptyLang!16357) lt!2386306)))))

(assert (=> b!6480927 (=> (not res!2661145) (not e!3928267))))

(declare-fun b!6480928 () Bool)

(assert (=> b!6480928 (= e!3928265 (= (_1!36639 lt!2386317) (Cons!65246 (c!1187033 lt!2386306) Nil!65246)))))

(declare-fun b!6480929 () Bool)

(assert (=> b!6480929 (= e!3928269 call!560987)))

(assert (= (and d!2033522 c!1187261) b!6480929))

(assert (= (and d!2033522 (not c!1187261)) b!6480927))

(assert (= (and b!6480927 res!2661145) b!6480924))

(assert (= (and b!6480924 c!1187263) b!6480928))

(assert (= (and b!6480924 (not c!1187263)) b!6480923))

(assert (= (and b!6480923 c!1187260) b!6480919))

(assert (= (and b!6480923 (not c!1187260)) b!6480920))

(assert (= (and b!6480919 (not res!2661146)) b!6480922))

(assert (= (and b!6480920 c!1187262) b!6480926))

(assert (= (and b!6480920 (not c!1187262)) b!6480925))

(assert (= (and b!6480926 (not res!2661144)) b!6480921))

(assert (= (or b!6480921 b!6480925) bm!560982))

(assert (= (or b!6480929 b!6480926) bm!560981))

(declare-fun m!7269284 () Bool)

(assert (=> b!6480919 m!7269284))

(assert (=> bm!560981 m!7268372))

(declare-fun m!7269286 () Bool)

(assert (=> b!6480922 m!7269286))

(declare-fun m!7269288 () Bool)

(assert (=> bm!560982 m!7269288))

(assert (=> b!6480072 d!2033522))

(declare-fun b!6480951 () Bool)

(declare-fun e!3928281 () Bool)

(declare-fun lt!2386488 () List!65370)

(assert (=> b!6480951 (= e!3928281 (or (not (= (_2!36639 lt!2386299) Nil!65246)) (= lt!2386488 (_1!36639 lt!2386299))))))

(declare-fun b!6480950 () Bool)

(declare-fun res!2661155 () Bool)

(assert (=> b!6480950 (=> (not res!2661155) (not e!3928281))))

(assert (=> b!6480950 (= res!2661155 (= (size!40409 lt!2386488) (+ (size!40409 (_1!36639 lt!2386299)) (size!40409 (_2!36639 lt!2386299)))))))

(declare-fun b!6480949 () Bool)

(declare-fun e!3928280 () List!65370)

(assert (=> b!6480949 (= e!3928280 (Cons!65246 (h!71694 (_1!36639 lt!2386299)) (++!14425 (t!378996 (_1!36639 lt!2386299)) (_2!36639 lt!2386299))))))

(declare-fun b!6480948 () Bool)

(assert (=> b!6480948 (= e!3928280 (_2!36639 lt!2386299))))

(declare-fun d!2033534 () Bool)

(assert (=> d!2033534 e!3928281))

(declare-fun res!2661156 () Bool)

(assert (=> d!2033534 (=> (not res!2661156) (not e!3928281))))

(assert (=> d!2033534 (= res!2661156 (= (content!12414 lt!2386488) ((_ map or) (content!12414 (_1!36639 lt!2386299)) (content!12414 (_2!36639 lt!2386299)))))))

(assert (=> d!2033534 (= lt!2386488 e!3928280)))

(declare-fun c!1187269 () Bool)

(assert (=> d!2033534 (= c!1187269 ((_ is Nil!65246) (_1!36639 lt!2386299)))))

(assert (=> d!2033534 (= (++!14425 (_1!36639 lt!2386299) (_2!36639 lt!2386299)) lt!2386488)))

(assert (= (and d!2033534 c!1187269) b!6480948))

(assert (= (and d!2033534 (not c!1187269)) b!6480949))

(assert (= (and d!2033534 res!2661156) b!6480950))

(assert (= (and b!6480950 res!2661155) b!6480951))

(declare-fun m!7269292 () Bool)

(assert (=> b!6480950 m!7269292))

(declare-fun m!7269294 () Bool)

(assert (=> b!6480950 m!7269294))

(declare-fun m!7269296 () Bool)

(assert (=> b!6480950 m!7269296))

(declare-fun m!7269298 () Bool)

(assert (=> b!6480949 m!7269298))

(declare-fun m!7269300 () Bool)

(assert (=> d!2033534 m!7269300))

(declare-fun m!7269302 () Bool)

(assert (=> d!2033534 m!7269302))

(declare-fun m!7269304 () Bool)

(assert (=> d!2033534 m!7269304))

(assert (=> b!6480072 d!2033534))

(declare-fun bs!1644349 () Bool)

(declare-fun d!2033538 () Bool)

(assert (= bs!1644349 (and d!2033538 d!2033512)))

(declare-fun lambda!358389 () Int)

(assert (=> bs!1644349 (not (= lambda!358389 lambda!358385))))

(declare-fun bs!1644350 () Bool)

(assert (= bs!1644350 (and d!2033538 b!6480072)))

(assert (=> bs!1644350 (not (= lambda!358389 lambda!358311))))

(declare-fun bs!1644351 () Bool)

(assert (= bs!1644351 (and d!2033538 b!6480608)))

(assert (=> bs!1644351 (not (= lambda!358389 lambda!358357))))

(declare-fun bs!1644352 () Bool)

(assert (= bs!1644352 (and d!2033538 b!6480921)))

(assert (=> bs!1644352 (not (= lambda!358389 lambda!358386))))

(assert (=> bs!1644350 (not (= lambda!358389 lambda!358312))))

(declare-fun bs!1644353 () Bool)

(assert (= bs!1644353 (and d!2033538 b!6480492)))

(assert (=> bs!1644353 (not (= lambda!358389 lambda!358350))))

(declare-fun bs!1644354 () Bool)

(assert (= bs!1644354 (and d!2033538 d!2033342)))

(assert (=> bs!1644354 (not (= lambda!358389 lambda!358334))))

(declare-fun bs!1644355 () Bool)

(assert (= bs!1644355 (and d!2033538 b!6480925)))

(assert (=> bs!1644355 (not (= lambda!358389 lambda!358387))))

(declare-fun bs!1644356 () Bool)

(assert (= bs!1644356 (and d!2033538 b!6480102)))

(assert (=> bs!1644356 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358389 lambda!358308))))

(declare-fun bs!1644357 () Bool)

(assert (= bs!1644357 (and d!2033538 d!2033304)))

(assert (=> bs!1644357 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358389 lambda!358321))))

(assert (=> bs!1644356 (not (= lambda!358389 lambda!358309))))

(assert (=> bs!1644349 (= (= lt!2386306 (Star!16357 (reg!16686 (regOne!33226 r!7292)))) (= lambda!358389 lambda!358381))))

(assert (=> bs!1644350 (= lambda!358389 lambda!358310)))

(declare-fun bs!1644358 () Bool)

(assert (= bs!1644358 (and d!2033538 b!6480086)))

(assert (=> bs!1644358 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 r!7292)) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358389 lambda!358305))))

(assert (=> bs!1644354 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358389 lambda!358332))))

(declare-fun bs!1644359 () Bool)

(assert (= bs!1644359 (and d!2033538 b!6480496)))

(assert (=> bs!1644359 (not (= lambda!358389 lambda!358351))))

(declare-fun bs!1644360 () Bool)

(assert (= bs!1644360 (and d!2033538 b!6480604)))

(assert (=> bs!1644360 (not (= lambda!358389 lambda!358355))))

(assert (=> bs!1644358 (not (= lambda!358389 lambda!358306))))

(assert (=> d!2033538 true))

(assert (=> d!2033538 true))

(assert (=> d!2033538 true))

(declare-fun lambda!358390 () Int)

(assert (=> bs!1644349 (not (= lambda!358390 lambda!358385))))

(assert (=> bs!1644350 (not (= lambda!358390 lambda!358311))))

(assert (=> bs!1644351 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 lt!2386332)) (= lt!2386306 (regTwo!33226 lt!2386332))) (= lambda!358390 lambda!358357))))

(assert (=> bs!1644352 (not (= lambda!358390 lambda!358386))))

(assert (=> bs!1644350 (= lambda!358390 lambda!358312)))

(assert (=> bs!1644353 (not (= lambda!358390 lambda!358350))))

(assert (=> bs!1644354 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358390 lambda!358334))))

(assert (=> bs!1644355 (= (and (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 lt!2386306)) (= lt!2386306 (regTwo!33226 lt!2386306))) (= lambda!358390 lambda!358387))))

(assert (=> bs!1644356 (not (= lambda!358390 lambda!358308))))

(assert (=> bs!1644357 (not (= lambda!358390 lambda!358321))))

(assert (=> bs!1644356 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358390 lambda!358309))))

(assert (=> bs!1644349 (not (= lambda!358390 lambda!358381))))

(assert (=> bs!1644350 (not (= lambda!358390 lambda!358310))))

(assert (=> bs!1644358 (not (= lambda!358390 lambda!358305))))

(assert (=> bs!1644354 (not (= lambda!358390 lambda!358332))))

(assert (=> bs!1644359 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 r!7292)) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358390 lambda!358351))))

(declare-fun bs!1644362 () Bool)

(assert (= bs!1644362 d!2033538))

(assert (=> bs!1644362 (not (= lambda!358390 lambda!358389))))

(assert (=> bs!1644360 (not (= lambda!358390 lambda!358355))))

(assert (=> bs!1644358 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 r!7292)) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358390 lambda!358306))))

(assert (=> d!2033538 true))

(assert (=> d!2033538 true))

(assert (=> d!2033538 true))

(assert (=> d!2033538 (= (Exists!3427 lambda!358389) (Exists!3427 lambda!358390))))

(declare-fun lt!2386489 () Unit!158759)

(assert (=> d!2033538 (= lt!2386489 (choose!48028 (reg!16686 (regOne!33226 r!7292)) lt!2386306 (_1!36639 lt!2386317)))))

(assert (=> d!2033538 (validRegex!8093 (reg!16686 (regOne!33226 r!7292)))))

(assert (=> d!2033538 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1964 (reg!16686 (regOne!33226 r!7292)) lt!2386306 (_1!36639 lt!2386317)) lt!2386489)))

(declare-fun m!7269312 () Bool)

(assert (=> bs!1644362 m!7269312))

(declare-fun m!7269314 () Bool)

(assert (=> bs!1644362 m!7269314))

(declare-fun m!7269316 () Bool)

(assert (=> bs!1644362 m!7269316))

(assert (=> bs!1644362 m!7268930))

(assert (=> b!6480072 d!2033538))

(declare-fun b!6480952 () Bool)

(declare-fun e!3928284 () Option!16248)

(declare-fun e!3928286 () Option!16248)

(assert (=> b!6480952 (= e!3928284 e!3928286)))

(declare-fun c!1187271 () Bool)

(assert (=> b!6480952 (= c!1187271 ((_ is Nil!65246) (_1!36639 lt!2386317)))))

(declare-fun b!6480954 () Bool)

(declare-fun e!3928282 () Bool)

(declare-fun lt!2386494 () Option!16248)

(assert (=> b!6480954 (= e!3928282 (= (++!14425 (_1!36639 (get!22619 lt!2386494)) (_2!36639 (get!22619 lt!2386494))) (_1!36639 lt!2386317)))))

(declare-fun b!6480955 () Bool)

(declare-fun e!3928283 () Bool)

(assert (=> b!6480955 (= e!3928283 (not (isDefined!12951 lt!2386494)))))

(declare-fun b!6480956 () Bool)

(declare-fun res!2661161 () Bool)

(assert (=> b!6480956 (=> (not res!2661161) (not e!3928282))))

(assert (=> b!6480956 (= res!2661161 (matchR!8540 lt!2386306 (_2!36639 (get!22619 lt!2386494))))))

(declare-fun b!6480957 () Bool)

(assert (=> b!6480957 (= e!3928286 None!16247)))

(declare-fun b!6480960 () Bool)

(declare-fun res!2661157 () Bool)

(assert (=> b!6480960 (=> (not res!2661157) (not e!3928282))))

(assert (=> b!6480960 (= res!2661157 (matchR!8540 (reg!16686 (regOne!33226 r!7292)) (_1!36639 (get!22619 lt!2386494))))))

(declare-fun b!6480953 () Bool)

(declare-fun e!3928285 () Bool)

(assert (=> b!6480953 (= e!3928285 (matchR!8540 lt!2386306 (_1!36639 lt!2386317)))))

(declare-fun d!2033542 () Bool)

(assert (=> d!2033542 e!3928283))

(declare-fun res!2661160 () Bool)

(assert (=> d!2033542 (=> res!2661160 e!3928283)))

(assert (=> d!2033542 (= res!2661160 e!3928282)))

(declare-fun res!2661158 () Bool)

(assert (=> d!2033542 (=> (not res!2661158) (not e!3928282))))

(assert (=> d!2033542 (= res!2661158 (isDefined!12951 lt!2386494))))

(assert (=> d!2033542 (= lt!2386494 e!3928284)))

(declare-fun c!1187270 () Bool)

(assert (=> d!2033542 (= c!1187270 e!3928285)))

(declare-fun res!2661159 () Bool)

(assert (=> d!2033542 (=> (not res!2661159) (not e!3928285))))

(assert (=> d!2033542 (= res!2661159 (matchR!8540 (reg!16686 (regOne!33226 r!7292)) Nil!65246))))

(assert (=> d!2033542 (validRegex!8093 (reg!16686 (regOne!33226 r!7292)))))

(assert (=> d!2033542 (= (findConcatSeparation!2662 (reg!16686 (regOne!33226 r!7292)) lt!2386306 Nil!65246 (_1!36639 lt!2386317) (_1!36639 lt!2386317)) lt!2386494)))

(declare-fun b!6480961 () Bool)

(assert (=> b!6480961 (= e!3928284 (Some!16247 (tuple2!66673 Nil!65246 (_1!36639 lt!2386317))))))

(declare-fun b!6480962 () Bool)

(declare-fun lt!2386493 () Unit!158759)

(declare-fun lt!2386495 () Unit!158759)

(assert (=> b!6480962 (= lt!2386493 lt!2386495)))

(assert (=> b!6480962 (= (++!14425 (++!14425 Nil!65246 (Cons!65246 (h!71694 (_1!36639 lt!2386317)) Nil!65246)) (t!378996 (_1!36639 lt!2386317))) (_1!36639 lt!2386317))))

(assert (=> b!6480962 (= lt!2386495 (lemmaMoveElementToOtherListKeepsConcatEq!2513 Nil!65246 (h!71694 (_1!36639 lt!2386317)) (t!378996 (_1!36639 lt!2386317)) (_1!36639 lt!2386317)))))

(assert (=> b!6480962 (= e!3928286 (findConcatSeparation!2662 (reg!16686 (regOne!33226 r!7292)) lt!2386306 (++!14425 Nil!65246 (Cons!65246 (h!71694 (_1!36639 lt!2386317)) Nil!65246)) (t!378996 (_1!36639 lt!2386317)) (_1!36639 lt!2386317)))))

(assert (= (and d!2033542 res!2661159) b!6480953))

(assert (= (and d!2033542 c!1187270) b!6480961))

(assert (= (and d!2033542 (not c!1187270)) b!6480952))

(assert (= (and b!6480952 c!1187271) b!6480957))

(assert (= (and b!6480952 (not c!1187271)) b!6480962))

(assert (= (and d!2033542 res!2661158) b!6480960))

(assert (= (and b!6480960 res!2661157) b!6480956))

(assert (= (and b!6480956 res!2661161) b!6480954))

(assert (= (and d!2033542 (not res!2661160)) b!6480955))

(declare-fun m!7269318 () Bool)

(assert (=> b!6480962 m!7269318))

(assert (=> b!6480962 m!7269318))

(declare-fun m!7269320 () Bool)

(assert (=> b!6480962 m!7269320))

(declare-fun m!7269322 () Bool)

(assert (=> b!6480962 m!7269322))

(assert (=> b!6480962 m!7269318))

(declare-fun m!7269328 () Bool)

(assert (=> b!6480962 m!7269328))

(declare-fun m!7269332 () Bool)

(assert (=> b!6480954 m!7269332))

(declare-fun m!7269334 () Bool)

(assert (=> b!6480954 m!7269334))

(assert (=> b!6480956 m!7269332))

(declare-fun m!7269336 () Bool)

(assert (=> b!6480956 m!7269336))

(assert (=> b!6480960 m!7269332))

(declare-fun m!7269338 () Bool)

(assert (=> b!6480960 m!7269338))

(assert (=> b!6480953 m!7268406))

(declare-fun m!7269340 () Bool)

(assert (=> b!6480955 m!7269340))

(assert (=> d!2033542 m!7269340))

(declare-fun m!7269342 () Bool)

(assert (=> d!2033542 m!7269342))

(assert (=> d!2033542 m!7268930))

(assert (=> b!6480072 d!2033542))

(declare-fun bs!1644369 () Bool)

(declare-fun d!2033546 () Bool)

(assert (= bs!1644369 (and d!2033546 d!2033512)))

(declare-fun lambda!358392 () Int)

(assert (=> bs!1644369 (not (= lambda!358392 lambda!358385))))

(declare-fun bs!1644370 () Bool)

(assert (= bs!1644370 (and d!2033546 b!6480072)))

(assert (=> bs!1644370 (not (= lambda!358392 lambda!358311))))

(declare-fun bs!1644371 () Bool)

(assert (= bs!1644371 (and d!2033546 b!6480608)))

(assert (=> bs!1644371 (not (= lambda!358392 lambda!358357))))

(declare-fun bs!1644372 () Bool)

(assert (= bs!1644372 (and d!2033546 b!6480921)))

(assert (=> bs!1644372 (not (= lambda!358392 lambda!358386))))

(assert (=> bs!1644370 (not (= lambda!358392 lambda!358312))))

(declare-fun bs!1644373 () Bool)

(assert (= bs!1644373 (and d!2033546 b!6480492)))

(assert (=> bs!1644373 (not (= lambda!358392 lambda!358350))))

(declare-fun bs!1644374 () Bool)

(assert (= bs!1644374 (and d!2033546 d!2033538)))

(assert (=> bs!1644374 (not (= lambda!358392 lambda!358390))))

(declare-fun bs!1644375 () Bool)

(assert (= bs!1644375 (and d!2033546 d!2033342)))

(assert (=> bs!1644375 (not (= lambda!358392 lambda!358334))))

(declare-fun bs!1644376 () Bool)

(assert (= bs!1644376 (and d!2033546 b!6480925)))

(assert (=> bs!1644376 (not (= lambda!358392 lambda!358387))))

(declare-fun bs!1644377 () Bool)

(assert (= bs!1644377 (and d!2033546 b!6480102)))

(assert (=> bs!1644377 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358392 lambda!358308))))

(declare-fun bs!1644378 () Bool)

(assert (= bs!1644378 (and d!2033546 d!2033304)))

(assert (=> bs!1644378 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358392 lambda!358321))))

(assert (=> bs!1644377 (not (= lambda!358392 lambda!358309))))

(assert (=> bs!1644369 (= (= lt!2386306 (Star!16357 (reg!16686 (regOne!33226 r!7292)))) (= lambda!358392 lambda!358381))))

(assert (=> bs!1644370 (= lambda!358392 lambda!358310)))

(declare-fun bs!1644379 () Bool)

(assert (= bs!1644379 (and d!2033546 b!6480086)))

(assert (=> bs!1644379 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) (regOne!33226 r!7292)) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358392 lambda!358305))))

(assert (=> bs!1644375 (= (and (= (_1!36639 lt!2386317) s!2326) (= (reg!16686 (regOne!33226 r!7292)) lt!2386306) (= lt!2386306 (regTwo!33226 r!7292))) (= lambda!358392 lambda!358332))))

(declare-fun bs!1644380 () Bool)

(assert (= bs!1644380 (and d!2033546 b!6480496)))

(assert (=> bs!1644380 (not (= lambda!358392 lambda!358351))))

(assert (=> bs!1644374 (= lambda!358392 lambda!358389)))

(declare-fun bs!1644381 () Bool)

(assert (= bs!1644381 (and d!2033546 b!6480604)))

(assert (=> bs!1644381 (not (= lambda!358392 lambda!358355))))

(assert (=> bs!1644379 (not (= lambda!358392 lambda!358306))))

(assert (=> d!2033546 true))

(assert (=> d!2033546 true))

(assert (=> d!2033546 true))

(assert (=> d!2033546 (= (isDefined!12951 (findConcatSeparation!2662 (reg!16686 (regOne!33226 r!7292)) lt!2386306 Nil!65246 (_1!36639 lt!2386317) (_1!36639 lt!2386317))) (Exists!3427 lambda!358392))))

(declare-fun lt!2386499 () Unit!158759)

(assert (=> d!2033546 (= lt!2386499 (choose!48026 (reg!16686 (regOne!33226 r!7292)) lt!2386306 (_1!36639 lt!2386317)))))

(assert (=> d!2033546 (validRegex!8093 (reg!16686 (regOne!33226 r!7292)))))

(assert (=> d!2033546 (= (lemmaFindConcatSeparationEquivalentToExists!2426 (reg!16686 (regOne!33226 r!7292)) lt!2386306 (_1!36639 lt!2386317)) lt!2386499)))

(declare-fun bs!1644382 () Bool)

(assert (= bs!1644382 d!2033546))

(assert (=> bs!1644382 m!7268366))

(declare-fun m!7269360 () Bool)

(assert (=> bs!1644382 m!7269360))

(assert (=> bs!1644382 m!7268930))

(assert (=> bs!1644382 m!7268366))

(declare-fun m!7269362 () Bool)

(assert (=> bs!1644382 m!7269362))

(declare-fun m!7269364 () Bool)

(assert (=> bs!1644382 m!7269364))

(assert (=> b!6480072 d!2033546))

(declare-fun d!2033550 () Bool)

(assert (=> d!2033550 (= (matchR!8540 lt!2386306 (_1!36639 lt!2386317)) (matchRSpec!3458 lt!2386306 (_1!36639 lt!2386317)))))

(declare-fun lt!2386501 () Unit!158759)

(assert (=> d!2033550 (= lt!2386501 (choose!48031 lt!2386306 (_1!36639 lt!2386317)))))

(assert (=> d!2033550 (validRegex!8093 lt!2386306)))

(assert (=> d!2033550 (= (mainMatchTheorem!3458 lt!2386306 (_1!36639 lt!2386317)) lt!2386501)))

(declare-fun bs!1644383 () Bool)

(assert (= bs!1644383 d!2033550))

(assert (=> bs!1644383 m!7268406))

(assert (=> bs!1644383 m!7268354))

(declare-fun m!7269366 () Bool)

(assert (=> bs!1644383 m!7269366))

(assert (=> bs!1644383 m!7268646))

(assert (=> b!6480072 d!2033550))

(declare-fun d!2033552 () Bool)

(declare-fun c!1187275 () Bool)

(assert (=> d!2033552 (= c!1187275 (isEmpty!37432 s!2326))))

(declare-fun e!3928303 () Bool)

(assert (=> d!2033552 (= (matchZipper!2369 lt!2386347 s!2326) e!3928303)))

(declare-fun b!6480997 () Bool)

(assert (=> b!6480997 (= e!3928303 (nullableZipper!2116 lt!2386347))))

(declare-fun b!6480998 () Bool)

(assert (=> b!6480998 (= e!3928303 (matchZipper!2369 (derivationStepZipper!2323 lt!2386347 (head!13192 s!2326)) (tail!12277 s!2326)))))

(assert (= (and d!2033552 c!1187275) b!6480997))

(assert (= (and d!2033552 (not c!1187275)) b!6480998))

(assert (=> d!2033552 m!7268780))

(declare-fun m!7269368 () Bool)

(assert (=> b!6480997 m!7269368))

(assert (=> b!6480998 m!7268858))

(assert (=> b!6480998 m!7268858))

(declare-fun m!7269370 () Bool)

(assert (=> b!6480998 m!7269370))

(assert (=> b!6480998 m!7268860))

(assert (=> b!6480998 m!7269370))

(assert (=> b!6480998 m!7268860))

(declare-fun m!7269372 () Bool)

(assert (=> b!6480998 m!7269372))

(assert (=> b!6480073 d!2033552))

(declare-fun d!2033554 () Bool)

(declare-fun c!1187276 () Bool)

(assert (=> d!2033554 (= c!1187276 (isEmpty!37432 (t!378996 s!2326)))))

(declare-fun e!3928306 () Bool)

(assert (=> d!2033554 (= (matchZipper!2369 lt!2386338 (t!378996 s!2326)) e!3928306)))

(declare-fun b!6481007 () Bool)

(assert (=> b!6481007 (= e!3928306 (nullableZipper!2116 lt!2386338))))

(declare-fun b!6481008 () Bool)

(assert (=> b!6481008 (= e!3928306 (matchZipper!2369 (derivationStepZipper!2323 lt!2386338 (head!13192 (t!378996 s!2326))) (tail!12277 (t!378996 s!2326))))))

(assert (= (and d!2033554 c!1187276) b!6481007))

(assert (= (and d!2033554 (not c!1187276)) b!6481008))

(assert (=> d!2033554 m!7269042))

(declare-fun m!7269374 () Bool)

(assert (=> b!6481007 m!7269374))

(assert (=> b!6481008 m!7269046))

(assert (=> b!6481008 m!7269046))

(declare-fun m!7269376 () Bool)

(assert (=> b!6481008 m!7269376))

(assert (=> b!6481008 m!7269050))

(assert (=> b!6481008 m!7269376))

(assert (=> b!6481008 m!7269050))

(declare-fun m!7269378 () Bool)

(assert (=> b!6481008 m!7269378))

(assert (=> b!6480073 d!2033554))

(declare-fun d!2033556 () Bool)

(declare-fun lt!2386502 () Regex!16357)

(assert (=> d!2033556 (validRegex!8093 lt!2386502)))

(assert (=> d!2033556 (= lt!2386502 (generalisedUnion!2201 (unfocusZipperList!1778 (Cons!65248 lt!2386330 Nil!65248))))))

(assert (=> d!2033556 (= (unfocusZipper!2099 (Cons!65248 lt!2386330 Nil!65248)) lt!2386502)))

(declare-fun bs!1644384 () Bool)

(assert (= bs!1644384 d!2033556))

(declare-fun m!7269380 () Bool)

(assert (=> bs!1644384 m!7269380))

(declare-fun m!7269382 () Bool)

(assert (=> bs!1644384 m!7269382))

(assert (=> bs!1644384 m!7269382))

(declare-fun m!7269384 () Bool)

(assert (=> bs!1644384 m!7269384))

(assert (=> b!6480094 d!2033556))

(declare-fun d!2033558 () Bool)

(declare-fun lt!2386503 () Regex!16357)

(assert (=> d!2033558 (validRegex!8093 lt!2386503)))

(assert (=> d!2033558 (= lt!2386503 (generalisedUnion!2201 (unfocusZipperList!1778 lt!2386343)))))

(assert (=> d!2033558 (= (unfocusZipper!2099 lt!2386343) lt!2386503)))

(declare-fun bs!1644385 () Bool)

(assert (= bs!1644385 d!2033558))

(declare-fun m!7269386 () Bool)

(assert (=> bs!1644385 m!7269386))

(declare-fun m!7269388 () Bool)

(assert (=> bs!1644385 m!7269388))

(assert (=> bs!1644385 m!7269388))

(declare-fun m!7269390 () Bool)

(assert (=> bs!1644385 m!7269390))

(assert (=> b!6480093 d!2033558))

(declare-fun d!2033560 () Bool)

(assert (=> d!2033560 (= (isEmpty!37431 (t!378998 zl!343)) ((_ is Nil!65248) (t!378998 zl!343)))))

(assert (=> b!6480091 d!2033560))

(declare-fun bs!1644386 () Bool)

(declare-fun d!2033562 () Bool)

(assert (= bs!1644386 (and d!2033562 d!2033346)))

(declare-fun lambda!358393 () Int)

(assert (=> bs!1644386 (= lambda!358393 lambda!358340)))

(declare-fun bs!1644387 () Bool)

(assert (= bs!1644387 (and d!2033562 d!2033420)))

(assert (=> bs!1644387 (= lambda!358393 lambda!358365)))

(assert (=> d!2033562 (= (inv!84139 setElem!44139) (forall!15541 (exprs!6241 setElem!44139) lambda!358393))))

(declare-fun bs!1644388 () Bool)

(assert (= bs!1644388 d!2033562))

(declare-fun m!7269394 () Bool)

(assert (=> bs!1644388 m!7269394))

(assert (=> setNonEmpty!44139 d!2033562))

(declare-fun bs!1644393 () Bool)

(declare-fun d!2033564 () Bool)

(assert (= bs!1644393 (and d!2033564 d!2033346)))

(declare-fun lambda!358396 () Int)

(assert (=> bs!1644393 (= lambda!358396 lambda!358340)))

(declare-fun bs!1644394 () Bool)

(assert (= bs!1644394 (and d!2033564 d!2033420)))

(assert (=> bs!1644394 (= lambda!358396 lambda!358365)))

(declare-fun bs!1644395 () Bool)

(assert (= bs!1644395 (and d!2033564 d!2033562)))

(assert (=> bs!1644395 (= lambda!358396 lambda!358393)))

(declare-fun b!6481056 () Bool)

(declare-fun e!3928339 () Regex!16357)

(declare-fun e!3928335 () Regex!16357)

(assert (=> b!6481056 (= e!3928339 e!3928335)))

(declare-fun c!1187286 () Bool)

(assert (=> b!6481056 (= c!1187286 ((_ is Cons!65247) (exprs!6241 (h!71696 zl!343))))))

(declare-fun b!6481057 () Bool)

(declare-fun e!3928336 () Bool)

(declare-fun lt!2386506 () Regex!16357)

(declare-fun head!13194 (List!65371) Regex!16357)

(assert (=> b!6481057 (= e!3928336 (= lt!2386506 (head!13194 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun b!6481058 () Bool)

(declare-fun e!3928338 () Bool)

(assert (=> b!6481058 (= e!3928338 e!3928336)))

(declare-fun c!1187288 () Bool)

(declare-fun tail!12279 (List!65371) List!65371)

(assert (=> b!6481058 (= c!1187288 (isEmpty!37430 (tail!12279 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun b!6481059 () Bool)

(declare-fun e!3928334 () Bool)

(assert (=> b!6481059 (= e!3928334 e!3928338)))

(declare-fun c!1187287 () Bool)

(assert (=> b!6481059 (= c!1187287 (isEmpty!37430 (exprs!6241 (h!71696 zl!343))))))

(assert (=> d!2033564 e!3928334))

(declare-fun res!2661177 () Bool)

(assert (=> d!2033564 (=> (not res!2661177) (not e!3928334))))

(assert (=> d!2033564 (= res!2661177 (validRegex!8093 lt!2386506))))

(assert (=> d!2033564 (= lt!2386506 e!3928339)))

(declare-fun c!1187285 () Bool)

(declare-fun e!3928337 () Bool)

(assert (=> d!2033564 (= c!1187285 e!3928337)))

(declare-fun res!2661178 () Bool)

(assert (=> d!2033564 (=> (not res!2661178) (not e!3928337))))

(assert (=> d!2033564 (= res!2661178 ((_ is Cons!65247) (exprs!6241 (h!71696 zl!343))))))

(assert (=> d!2033564 (forall!15541 (exprs!6241 (h!71696 zl!343)) lambda!358396)))

(assert (=> d!2033564 (= (generalisedConcat!1954 (exprs!6241 (h!71696 zl!343))) lt!2386506)))

(declare-fun b!6481060 () Bool)

(assert (=> b!6481060 (= e!3928337 (isEmpty!37430 (t!378997 (exprs!6241 (h!71696 zl!343)))))))

(declare-fun b!6481061 () Bool)

(assert (=> b!6481061 (= e!3928335 (Concat!25202 (h!71695 (exprs!6241 (h!71696 zl!343))) (generalisedConcat!1954 (t!378997 (exprs!6241 (h!71696 zl!343))))))))

(declare-fun b!6481062 () Bool)

(declare-fun isConcat!1274 (Regex!16357) Bool)

(assert (=> b!6481062 (= e!3928336 (isConcat!1274 lt!2386506))))

(declare-fun b!6481063 () Bool)

(declare-fun isEmptyExpr!1751 (Regex!16357) Bool)

(assert (=> b!6481063 (= e!3928338 (isEmptyExpr!1751 lt!2386506))))

(declare-fun b!6481064 () Bool)

(assert (=> b!6481064 (= e!3928335 EmptyExpr!16357)))

(declare-fun b!6481065 () Bool)

(assert (=> b!6481065 (= e!3928339 (h!71695 (exprs!6241 (h!71696 zl!343))))))

(assert (= (and d!2033564 res!2661178) b!6481060))

(assert (= (and d!2033564 c!1187285) b!6481065))

(assert (= (and d!2033564 (not c!1187285)) b!6481056))

(assert (= (and b!6481056 c!1187286) b!6481061))

(assert (= (and b!6481056 (not c!1187286)) b!6481064))

(assert (= (and d!2033564 res!2661177) b!6481059))

(assert (= (and b!6481059 c!1187287) b!6481063))

(assert (= (and b!6481059 (not c!1187287)) b!6481058))

(assert (= (and b!6481058 c!1187288) b!6481057))

(assert (= (and b!6481058 (not c!1187288)) b!6481062))

(declare-fun m!7269398 () Bool)

(assert (=> b!6481062 m!7269398))

(declare-fun m!7269400 () Bool)

(assert (=> d!2033564 m!7269400))

(declare-fun m!7269402 () Bool)

(assert (=> d!2033564 m!7269402))

(declare-fun m!7269404 () Bool)

(assert (=> b!6481063 m!7269404))

(declare-fun m!7269406 () Bool)

(assert (=> b!6481061 m!7269406))

(assert (=> b!6481060 m!7268310))

(declare-fun m!7269408 () Bool)

(assert (=> b!6481058 m!7269408))

(assert (=> b!6481058 m!7269408))

(declare-fun m!7269410 () Bool)

(assert (=> b!6481058 m!7269410))

(declare-fun m!7269412 () Bool)

(assert (=> b!6481059 m!7269412))

(declare-fun m!7269414 () Bool)

(assert (=> b!6481057 m!7269414))

(assert (=> b!6480111 d!2033564))

(declare-fun b!6481066 () Bool)

(declare-fun res!2661185 () Bool)

(declare-fun e!3928345 () Bool)

(assert (=> b!6481066 (=> res!2661185 e!3928345)))

(declare-fun e!3928343 () Bool)

(assert (=> b!6481066 (= res!2661185 e!3928343)))

(declare-fun res!2661186 () Bool)

(assert (=> b!6481066 (=> (not res!2661186) (not e!3928343))))

(declare-fun lt!2386507 () Bool)

(assert (=> b!6481066 (= res!2661186 lt!2386507)))

(declare-fun d!2033574 () Bool)

(declare-fun e!3928344 () Bool)

(assert (=> d!2033574 e!3928344))

(declare-fun c!1187289 () Bool)

(assert (=> d!2033574 (= c!1187289 ((_ is EmptyExpr!16357) (reg!16686 (regOne!33226 r!7292))))))

(declare-fun e!3928346 () Bool)

(assert (=> d!2033574 (= lt!2386507 e!3928346)))

(declare-fun c!1187291 () Bool)

(assert (=> d!2033574 (= c!1187291 (isEmpty!37432 (_1!36639 lt!2386299)))))

(assert (=> d!2033574 (validRegex!8093 (reg!16686 (regOne!33226 r!7292)))))

(assert (=> d!2033574 (= (matchR!8540 (reg!16686 (regOne!33226 r!7292)) (_1!36639 lt!2386299)) lt!2386507)))

(declare-fun b!6481067 () Bool)

(declare-fun res!2661180 () Bool)

(declare-fun e!3928341 () Bool)

(assert (=> b!6481067 (=> res!2661180 e!3928341)))

(assert (=> b!6481067 (= res!2661180 (not (isEmpty!37432 (tail!12277 (_1!36639 lt!2386299)))))))

(declare-fun b!6481068 () Bool)

(declare-fun e!3928340 () Bool)

(assert (=> b!6481068 (= e!3928345 e!3928340)))

(declare-fun res!2661179 () Bool)

(assert (=> b!6481068 (=> (not res!2661179) (not e!3928340))))

(assert (=> b!6481068 (= res!2661179 (not lt!2386507))))

(declare-fun b!6481069 () Bool)

(assert (=> b!6481069 (= e!3928343 (= (head!13192 (_1!36639 lt!2386299)) (c!1187033 (reg!16686 (regOne!33226 r!7292)))))))

(declare-fun b!6481070 () Bool)

(assert (=> b!6481070 (= e!3928340 e!3928341)))

(declare-fun res!2661182 () Bool)

(assert (=> b!6481070 (=> res!2661182 e!3928341)))

(declare-fun call!560990 () Bool)

(assert (=> b!6481070 (= res!2661182 call!560990)))

(declare-fun b!6481071 () Bool)

(declare-fun e!3928342 () Bool)

(assert (=> b!6481071 (= e!3928344 e!3928342)))

(declare-fun c!1187290 () Bool)

(assert (=> b!6481071 (= c!1187290 ((_ is EmptyLang!16357) (reg!16686 (regOne!33226 r!7292))))))

(declare-fun bm!560985 () Bool)

(assert (=> bm!560985 (= call!560990 (isEmpty!37432 (_1!36639 lt!2386299)))))

(declare-fun b!6481072 () Bool)

(assert (=> b!6481072 (= e!3928342 (not lt!2386507))))

(declare-fun b!6481073 () Bool)

(declare-fun res!2661181 () Bool)

(assert (=> b!6481073 (=> (not res!2661181) (not e!3928343))))

(assert (=> b!6481073 (= res!2661181 (not call!560990))))

(declare-fun b!6481074 () Bool)

(declare-fun res!2661183 () Bool)

(assert (=> b!6481074 (=> res!2661183 e!3928345)))

(assert (=> b!6481074 (= res!2661183 (not ((_ is ElementMatch!16357) (reg!16686 (regOne!33226 r!7292)))))))

(assert (=> b!6481074 (= e!3928342 e!3928345)))

(declare-fun b!6481075 () Bool)

(assert (=> b!6481075 (= e!3928346 (nullable!6350 (reg!16686 (regOne!33226 r!7292))))))

(declare-fun b!6481076 () Bool)

(assert (=> b!6481076 (= e!3928346 (matchR!8540 (derivativeStep!5055 (reg!16686 (regOne!33226 r!7292)) (head!13192 (_1!36639 lt!2386299))) (tail!12277 (_1!36639 lt!2386299))))))

(declare-fun b!6481077 () Bool)

(assert (=> b!6481077 (= e!3928344 (= lt!2386507 call!560990))))

(declare-fun b!6481078 () Bool)

(assert (=> b!6481078 (= e!3928341 (not (= (head!13192 (_1!36639 lt!2386299)) (c!1187033 (reg!16686 (regOne!33226 r!7292))))))))

(declare-fun b!6481079 () Bool)

(declare-fun res!2661184 () Bool)

(assert (=> b!6481079 (=> (not res!2661184) (not e!3928343))))

(assert (=> b!6481079 (= res!2661184 (isEmpty!37432 (tail!12277 (_1!36639 lt!2386299))))))

(assert (= (and d!2033574 c!1187291) b!6481075))

(assert (= (and d!2033574 (not c!1187291)) b!6481076))

(assert (= (and d!2033574 c!1187289) b!6481077))

(assert (= (and d!2033574 (not c!1187289)) b!6481071))

(assert (= (and b!6481071 c!1187290) b!6481072))

(assert (= (and b!6481071 (not c!1187290)) b!6481074))

(assert (= (and b!6481074 (not res!2661183)) b!6481066))

(assert (= (and b!6481066 res!2661186) b!6481073))

(assert (= (and b!6481073 res!2661181) b!6481079))

(assert (= (and b!6481079 res!2661184) b!6481069))

(assert (= (and b!6481066 (not res!2661185)) b!6481068))

(assert (= (and b!6481068 res!2661179) b!6481070))

(assert (= (and b!6481070 (not res!2661182)) b!6481067))

(assert (= (and b!6481067 (not res!2661180)) b!6481078))

(assert (= (or b!6481077 b!6481070 b!6481073) bm!560985))

(assert (=> b!6481069 m!7268990))

(assert (=> b!6481079 m!7268996))

(assert (=> b!6481079 m!7268996))

(declare-fun m!7269416 () Bool)

(assert (=> b!6481079 m!7269416))

(assert (=> bm!560985 m!7268984))

(declare-fun m!7269418 () Bool)

(assert (=> b!6481075 m!7269418))

(assert (=> b!6481067 m!7268996))

(assert (=> b!6481067 m!7268996))

(assert (=> b!6481067 m!7269416))

(assert (=> b!6481078 m!7268990))

(assert (=> d!2033574 m!7268984))

(assert (=> d!2033574 m!7268930))

(assert (=> b!6481076 m!7268990))

(assert (=> b!6481076 m!7268990))

(declare-fun m!7269420 () Bool)

(assert (=> b!6481076 m!7269420))

(assert (=> b!6481076 m!7268996))

(assert (=> b!6481076 m!7269420))

(assert (=> b!6481076 m!7268996))

(declare-fun m!7269422 () Bool)

(assert (=> b!6481076 m!7269422))

(assert (=> b!6480089 d!2033574))

(declare-fun d!2033576 () Bool)

(assert (=> d!2033576 (= (flatMap!1862 lt!2386347 lambda!358307) (choose!48041 lt!2386347 lambda!358307))))

(declare-fun bs!1644396 () Bool)

(assert (= bs!1644396 d!2033576))

(declare-fun m!7269424 () Bool)

(assert (=> bs!1644396 m!7269424))

(assert (=> b!6480087 d!2033576))

(declare-fun b!6481080 () Bool)

(declare-fun e!3928348 () (InoxSet Context!11482))

(declare-fun call!560991 () (InoxSet Context!11482))

(assert (=> b!6481080 (= e!3928348 call!560991)))

(declare-fun b!6481081 () Bool)

(assert (=> b!6481081 (= e!3928348 ((as const (Array Context!11482 Bool)) false))))

(declare-fun d!2033578 () Bool)

(declare-fun c!1187292 () Bool)

(declare-fun e!3928347 () Bool)

(assert (=> d!2033578 (= c!1187292 e!3928347)))

(declare-fun res!2661187 () Bool)

(assert (=> d!2033578 (=> (not res!2661187) (not e!3928347))))

(assert (=> d!2033578 (= res!2661187 ((_ is Cons!65247) (exprs!6241 lt!2386330)))))

(declare-fun e!3928349 () (InoxSet Context!11482))

(assert (=> d!2033578 (= (derivationStepZipperUp!1531 lt!2386330 (h!71694 s!2326)) e!3928349)))

(declare-fun b!6481082 () Bool)

(assert (=> b!6481082 (= e!3928349 ((_ map or) call!560991 (derivationStepZipperUp!1531 (Context!11483 (t!378997 (exprs!6241 lt!2386330))) (h!71694 s!2326))))))

(declare-fun bm!560986 () Bool)

(assert (=> bm!560986 (= call!560991 (derivationStepZipperDown!1605 (h!71695 (exprs!6241 lt!2386330)) (Context!11483 (t!378997 (exprs!6241 lt!2386330))) (h!71694 s!2326)))))

(declare-fun b!6481083 () Bool)

(assert (=> b!6481083 (= e!3928347 (nullable!6350 (h!71695 (exprs!6241 lt!2386330))))))

(declare-fun b!6481084 () Bool)

(assert (=> b!6481084 (= e!3928349 e!3928348)))

(declare-fun c!1187293 () Bool)

(assert (=> b!6481084 (= c!1187293 ((_ is Cons!65247) (exprs!6241 lt!2386330)))))

(assert (= (and d!2033578 res!2661187) b!6481083))

(assert (= (and d!2033578 c!1187292) b!6481082))

(assert (= (and d!2033578 (not c!1187292)) b!6481084))

(assert (= (and b!6481084 c!1187293) b!6481080))

(assert (= (and b!6481084 (not c!1187293)) b!6481081))

(assert (= (or b!6481082 b!6481080) bm!560986))

(declare-fun m!7269426 () Bool)

(assert (=> b!6481082 m!7269426))

(declare-fun m!7269428 () Bool)

(assert (=> bm!560986 m!7269428))

(declare-fun m!7269430 () Bool)

(assert (=> b!6481083 m!7269430))

(assert (=> b!6480087 d!2033578))

(declare-fun d!2033580 () Bool)

(assert (=> d!2033580 (= (flatMap!1862 lt!2386347 lambda!358307) (dynLambda!25919 lambda!358307 lt!2386330))))

(declare-fun lt!2386508 () Unit!158759)

(assert (=> d!2033580 (= lt!2386508 (choose!48042 lt!2386347 lt!2386330 lambda!358307))))

(assert (=> d!2033580 (= lt!2386347 (store ((as const (Array Context!11482 Bool)) false) lt!2386330 true))))

(assert (=> d!2033580 (= (lemmaFlatMapOnSingletonSet!1388 lt!2386347 lt!2386330 lambda!358307) lt!2386508)))

(declare-fun b_lambda!245495 () Bool)

(assert (=> (not b_lambda!245495) (not d!2033580)))

(declare-fun bs!1644397 () Bool)

(assert (= bs!1644397 d!2033580))

(assert (=> bs!1644397 m!7268474))

(declare-fun m!7269432 () Bool)

(assert (=> bs!1644397 m!7269432))

(declare-fun m!7269434 () Bool)

(assert (=> bs!1644397 m!7269434))

(assert (=> bs!1644397 m!7268466))

(assert (=> b!6480087 d!2033580))

(declare-fun bs!1644398 () Bool)

(declare-fun d!2033582 () Bool)

(assert (= bs!1644398 (and d!2033582 b!6480095)))

(declare-fun lambda!358399 () Int)

(assert (=> bs!1644398 (= lambda!358399 lambda!358307)))

(assert (=> d!2033582 true))

(assert (=> d!2033582 (= (derivationStepZipper!2323 lt!2386347 (h!71694 s!2326)) (flatMap!1862 lt!2386347 lambda!358399))))

(declare-fun bs!1644399 () Bool)

(assert (= bs!1644399 d!2033582))

(declare-fun m!7269436 () Bool)

(assert (=> bs!1644399 m!7269436))

(assert (=> b!6480087 d!2033582))

(declare-fun d!2033584 () Bool)

(declare-fun e!3928352 () Bool)

(assert (=> d!2033584 e!3928352))

(declare-fun res!2661190 () Bool)

(assert (=> d!2033584 (=> (not res!2661190) (not e!3928352))))

(declare-fun lt!2386511 () List!65372)

(declare-fun noDuplicate!2180 (List!65372) Bool)

(assert (=> d!2033584 (= res!2661190 (noDuplicate!2180 lt!2386511))))

(declare-fun choose!48045 ((InoxSet Context!11482)) List!65372)

(assert (=> d!2033584 (= lt!2386511 (choose!48045 z!1189))))

(assert (=> d!2033584 (= (toList!10141 z!1189) lt!2386511)))

(declare-fun b!6481089 () Bool)

(declare-fun content!12417 (List!65372) (InoxSet Context!11482))

(assert (=> b!6481089 (= e!3928352 (= (content!12417 lt!2386511) z!1189))))

(assert (= (and d!2033584 res!2661190) b!6481089))

(declare-fun m!7269438 () Bool)

(assert (=> d!2033584 m!7269438))

(declare-fun m!7269440 () Bool)

(assert (=> d!2033584 m!7269440))

(declare-fun m!7269442 () Bool)

(assert (=> b!6481089 m!7269442))

(assert (=> b!6480108 d!2033584))

(declare-fun c!1187296 () Bool)

(declare-fun bm!560988 () Bool)

(declare-fun call!560994 () List!65371)

(declare-fun c!1187299 () Bool)

(assert (=> bm!560988 (= call!560994 ($colon$colon!2212 (exprs!6241 lt!2386300) (ite (or c!1187296 c!1187299) (regTwo!33226 (reg!16686 (regOne!33226 r!7292))) (reg!16686 (regOne!33226 r!7292)))))))

(declare-fun bm!560989 () Bool)

(declare-fun call!560992 () List!65371)

(assert (=> bm!560989 (= call!560992 call!560994)))

(declare-fun b!6481090 () Bool)

(declare-fun e!3928354 () Bool)

(assert (=> b!6481090 (= e!3928354 (nullable!6350 (regOne!33226 (reg!16686 (regOne!33226 r!7292)))))))

(declare-fun c!1187300 () Bool)

(declare-fun call!560995 () (InoxSet Context!11482))

(declare-fun bm!560990 () Bool)

(assert (=> bm!560990 (= call!560995 (derivationStepZipperDown!1605 (ite c!1187300 (regTwo!33227 (reg!16686 (regOne!33226 r!7292))) (ite c!1187296 (regTwo!33226 (reg!16686 (regOne!33226 r!7292))) (ite c!1187299 (regOne!33226 (reg!16686 (regOne!33226 r!7292))) (reg!16686 (reg!16686 (regOne!33226 r!7292)))))) (ite (or c!1187300 c!1187296) lt!2386300 (Context!11483 call!560992)) (h!71694 s!2326)))))

(declare-fun bm!560991 () Bool)

(declare-fun call!560993 () (InoxSet Context!11482))

(declare-fun call!560996 () (InoxSet Context!11482))

(assert (=> bm!560991 (= call!560993 call!560996)))

(declare-fun b!6481091 () Bool)

(declare-fun e!3928357 () (InoxSet Context!11482))

(declare-fun e!3928356 () (InoxSet Context!11482))

(assert (=> b!6481091 (= e!3928357 e!3928356)))

(assert (=> b!6481091 (= c!1187299 ((_ is Concat!25202) (reg!16686 (regOne!33226 r!7292))))))

(declare-fun b!6481092 () Bool)

(assert (=> b!6481092 (= e!3928356 call!560993)))

(declare-fun b!6481093 () Bool)

(declare-fun c!1187298 () Bool)

(assert (=> b!6481093 (= c!1187298 ((_ is Star!16357) (reg!16686 (regOne!33226 r!7292))))))

(declare-fun e!3928355 () (InoxSet Context!11482))

(assert (=> b!6481093 (= e!3928356 e!3928355)))

(declare-fun d!2033586 () Bool)

(declare-fun c!1187297 () Bool)

(assert (=> d!2033586 (= c!1187297 (and ((_ is ElementMatch!16357) (reg!16686 (regOne!33226 r!7292))) (= (c!1187033 (reg!16686 (regOne!33226 r!7292))) (h!71694 s!2326))))))

(declare-fun e!3928353 () (InoxSet Context!11482))

(assert (=> d!2033586 (= (derivationStepZipperDown!1605 (reg!16686 (regOne!33226 r!7292)) lt!2386300 (h!71694 s!2326)) e!3928353)))

(declare-fun bm!560987 () Bool)

(assert (=> bm!560987 (= call!560996 call!560995)))

(declare-fun b!6481094 () Bool)

(declare-fun e!3928358 () (InoxSet Context!11482))

(declare-fun call!560997 () (InoxSet Context!11482))

(assert (=> b!6481094 (= e!3928358 ((_ map or) call!560997 call!560995))))

(declare-fun b!6481095 () Bool)

(assert (=> b!6481095 (= e!3928355 ((as const (Array Context!11482 Bool)) false))))

(declare-fun b!6481096 () Bool)

(assert (=> b!6481096 (= e!3928357 ((_ map or) call!560997 call!560996))))

(declare-fun b!6481097 () Bool)

(assert (=> b!6481097 (= e!3928353 e!3928358)))

(assert (=> b!6481097 (= c!1187300 ((_ is Union!16357) (reg!16686 (regOne!33226 r!7292))))))

(declare-fun b!6481098 () Bool)

(assert (=> b!6481098 (= e!3928353 (store ((as const (Array Context!11482 Bool)) false) lt!2386300 true))))

(declare-fun b!6481099 () Bool)

(assert (=> b!6481099 (= e!3928355 call!560993)))

(declare-fun b!6481100 () Bool)

(assert (=> b!6481100 (= c!1187296 e!3928354)))

(declare-fun res!2661191 () Bool)

(assert (=> b!6481100 (=> (not res!2661191) (not e!3928354))))

(assert (=> b!6481100 (= res!2661191 ((_ is Concat!25202) (reg!16686 (regOne!33226 r!7292))))))

(assert (=> b!6481100 (= e!3928358 e!3928357)))

(declare-fun bm!560992 () Bool)

(assert (=> bm!560992 (= call!560997 (derivationStepZipperDown!1605 (ite c!1187300 (regOne!33227 (reg!16686 (regOne!33226 r!7292))) (regOne!33226 (reg!16686 (regOne!33226 r!7292)))) (ite c!1187300 lt!2386300 (Context!11483 call!560994)) (h!71694 s!2326)))))

(assert (= (and d!2033586 c!1187297) b!6481098))

(assert (= (and d!2033586 (not c!1187297)) b!6481097))

(assert (= (and b!6481097 c!1187300) b!6481094))

(assert (= (and b!6481097 (not c!1187300)) b!6481100))

(assert (= (and b!6481100 res!2661191) b!6481090))

(assert (= (and b!6481100 c!1187296) b!6481096))

(assert (= (and b!6481100 (not c!1187296)) b!6481091))

(assert (= (and b!6481091 c!1187299) b!6481092))

(assert (= (and b!6481091 (not c!1187299)) b!6481093))

(assert (= (and b!6481093 c!1187298) b!6481099))

(assert (= (and b!6481093 (not c!1187298)) b!6481095))

(assert (= (or b!6481092 b!6481099) bm!560989))

(assert (= (or b!6481092 b!6481099) bm!560991))

(assert (= (or b!6481096 bm!560989) bm!560988))

(assert (= (or b!6481096 bm!560991) bm!560987))

(assert (= (or b!6481094 bm!560987) bm!560990))

(assert (= (or b!6481094 b!6481096) bm!560992))

(declare-fun m!7269444 () Bool)

(assert (=> bm!560992 m!7269444))

(assert (=> b!6481098 m!7268424))

(declare-fun m!7269446 () Bool)

(assert (=> b!6481090 m!7269446))

(declare-fun m!7269448 () Bool)

(assert (=> bm!560988 m!7269448))

(declare-fun m!7269450 () Bool)

(assert (=> bm!560990 m!7269450))

(assert (=> b!6480109 d!2033586))

(declare-fun b!6481101 () Bool)

(declare-fun e!3928361 () Option!16248)

(declare-fun e!3928363 () Option!16248)

(assert (=> b!6481101 (= e!3928361 e!3928363)))

(declare-fun c!1187302 () Bool)

(assert (=> b!6481101 (= c!1187302 ((_ is Nil!65246) s!2326))))

(declare-fun b!6481103 () Bool)

(declare-fun e!3928359 () Bool)

(declare-fun lt!2386513 () Option!16248)

(assert (=> b!6481103 (= e!3928359 (= (++!14425 (_1!36639 (get!22619 lt!2386513)) (_2!36639 (get!22619 lt!2386513))) s!2326))))

(declare-fun b!6481104 () Bool)

(declare-fun e!3928360 () Bool)

(assert (=> b!6481104 (= e!3928360 (not (isDefined!12951 lt!2386513)))))

(declare-fun b!6481105 () Bool)

(declare-fun res!2661196 () Bool)

(assert (=> b!6481105 (=> (not res!2661196) (not e!3928359))))

(assert (=> b!6481105 (= res!2661196 (matchR!8540 (regTwo!33226 r!7292) (_2!36639 (get!22619 lt!2386513))))))

(declare-fun b!6481106 () Bool)

(assert (=> b!6481106 (= e!3928363 None!16247)))

(declare-fun b!6481107 () Bool)

(declare-fun res!2661192 () Bool)

(assert (=> b!6481107 (=> (not res!2661192) (not e!3928359))))

(assert (=> b!6481107 (= res!2661192 (matchR!8540 (regOne!33226 r!7292) (_1!36639 (get!22619 lt!2386513))))))

(declare-fun b!6481102 () Bool)

(declare-fun e!3928362 () Bool)

(assert (=> b!6481102 (= e!3928362 (matchR!8540 (regTwo!33226 r!7292) s!2326))))

(declare-fun d!2033588 () Bool)

(assert (=> d!2033588 e!3928360))

(declare-fun res!2661195 () Bool)

(assert (=> d!2033588 (=> res!2661195 e!3928360)))

(assert (=> d!2033588 (= res!2661195 e!3928359)))

(declare-fun res!2661193 () Bool)

(assert (=> d!2033588 (=> (not res!2661193) (not e!3928359))))

(assert (=> d!2033588 (= res!2661193 (isDefined!12951 lt!2386513))))

(assert (=> d!2033588 (= lt!2386513 e!3928361)))

(declare-fun c!1187301 () Bool)

(assert (=> d!2033588 (= c!1187301 e!3928362)))

(declare-fun res!2661194 () Bool)

(assert (=> d!2033588 (=> (not res!2661194) (not e!3928362))))

(assert (=> d!2033588 (= res!2661194 (matchR!8540 (regOne!33226 r!7292) Nil!65246))))

(assert (=> d!2033588 (validRegex!8093 (regOne!33226 r!7292))))

(assert (=> d!2033588 (= (findConcatSeparation!2662 (regOne!33226 r!7292) (regTwo!33226 r!7292) Nil!65246 s!2326 s!2326) lt!2386513)))

(declare-fun b!6481108 () Bool)

(assert (=> b!6481108 (= e!3928361 (Some!16247 (tuple2!66673 Nil!65246 s!2326)))))

(declare-fun b!6481109 () Bool)

(declare-fun lt!2386512 () Unit!158759)

(declare-fun lt!2386514 () Unit!158759)

(assert (=> b!6481109 (= lt!2386512 lt!2386514)))

(assert (=> b!6481109 (= (++!14425 (++!14425 Nil!65246 (Cons!65246 (h!71694 s!2326) Nil!65246)) (t!378996 s!2326)) s!2326)))

(assert (=> b!6481109 (= lt!2386514 (lemmaMoveElementToOtherListKeepsConcatEq!2513 Nil!65246 (h!71694 s!2326) (t!378996 s!2326) s!2326))))

(assert (=> b!6481109 (= e!3928363 (findConcatSeparation!2662 (regOne!33226 r!7292) (regTwo!33226 r!7292) (++!14425 Nil!65246 (Cons!65246 (h!71694 s!2326) Nil!65246)) (t!378996 s!2326) s!2326))))

(assert (= (and d!2033588 res!2661194) b!6481102))

(assert (= (and d!2033588 c!1187301) b!6481108))

(assert (= (and d!2033588 (not c!1187301)) b!6481101))

(assert (= (and b!6481101 c!1187302) b!6481106))

(assert (= (and b!6481101 (not c!1187302)) b!6481109))

(assert (= (and d!2033588 res!2661193) b!6481107))

(assert (= (and b!6481107 res!2661192) b!6481105))

(assert (= (and b!6481105 res!2661196) b!6481103))

(assert (= (and d!2033588 (not res!2661195)) b!6481104))

(assert (=> b!6481109 m!7268700))

(assert (=> b!6481109 m!7268700))

(assert (=> b!6481109 m!7268702))

(assert (=> b!6481109 m!7268704))

(assert (=> b!6481109 m!7268700))

(declare-fun m!7269452 () Bool)

(assert (=> b!6481109 m!7269452))

(declare-fun m!7269454 () Bool)

(assert (=> b!6481103 m!7269454))

(declare-fun m!7269456 () Bool)

(assert (=> b!6481103 m!7269456))

(assert (=> b!6481105 m!7269454))

(declare-fun m!7269458 () Bool)

(assert (=> b!6481105 m!7269458))

(assert (=> b!6481107 m!7269454))

(declare-fun m!7269460 () Bool)

(assert (=> b!6481107 m!7269460))

(assert (=> b!6481102 m!7268716))

(declare-fun m!7269462 () Bool)

(assert (=> b!6481104 m!7269462))

(assert (=> d!2033588 m!7269462))

(declare-fun m!7269464 () Bool)

(assert (=> d!2033588 m!7269464))

(declare-fun m!7269466 () Bool)

(assert (=> d!2033588 m!7269466))

(assert (=> b!6480086 d!2033588))

(declare-fun d!2033590 () Bool)

(assert (=> d!2033590 (= (Exists!3427 lambda!358306) (choose!48027 lambda!358306))))

(declare-fun bs!1644400 () Bool)

(assert (= bs!1644400 d!2033590))

(declare-fun m!7269468 () Bool)

(assert (=> bs!1644400 m!7269468))

(assert (=> b!6480086 d!2033590))

(declare-fun d!2033592 () Bool)

(assert (=> d!2033592 (= (Exists!3427 lambda!358305) (choose!48027 lambda!358305))))

(declare-fun bs!1644401 () Bool)

(assert (= bs!1644401 d!2033592))

(declare-fun m!7269470 () Bool)

(assert (=> bs!1644401 m!7269470))

(assert (=> b!6480086 d!2033592))

(declare-fun bs!1644402 () Bool)

(declare-fun d!2033594 () Bool)

(assert (= bs!1644402 (and d!2033594 d!2033512)))

(declare-fun lambda!358400 () Int)

(assert (=> bs!1644402 (not (= lambda!358400 lambda!358385))))

(declare-fun bs!1644403 () Bool)

(assert (= bs!1644403 (and d!2033594 b!6480072)))

(assert (=> bs!1644403 (not (= lambda!358400 lambda!358311))))

(declare-fun bs!1644404 () Bool)

(assert (= bs!1644404 (and d!2033594 b!6480608)))

(assert (=> bs!1644404 (not (= lambda!358400 lambda!358357))))

(declare-fun bs!1644405 () Bool)

(assert (= bs!1644405 (and d!2033594 d!2033546)))

(assert (=> bs!1644405 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358400 lambda!358392))))

(declare-fun bs!1644406 () Bool)

(assert (= bs!1644406 (and d!2033594 b!6480921)))

(assert (=> bs!1644406 (not (= lambda!358400 lambda!358386))))

(assert (=> bs!1644403 (not (= lambda!358400 lambda!358312))))

(declare-fun bs!1644407 () Bool)

(assert (= bs!1644407 (and d!2033594 b!6480492)))

(assert (=> bs!1644407 (not (= lambda!358400 lambda!358350))))

(declare-fun bs!1644408 () Bool)

(assert (= bs!1644408 (and d!2033594 d!2033538)))

(assert (=> bs!1644408 (not (= lambda!358400 lambda!358390))))

(declare-fun bs!1644409 () Bool)

(assert (= bs!1644409 (and d!2033594 d!2033342)))

(assert (=> bs!1644409 (not (= lambda!358400 lambda!358334))))

(declare-fun bs!1644410 () Bool)

(assert (= bs!1644410 (and d!2033594 b!6480925)))

(assert (=> bs!1644410 (not (= lambda!358400 lambda!358387))))

(declare-fun bs!1644411 () Bool)

(assert (= bs!1644411 (and d!2033594 b!6480102)))

(assert (=> bs!1644411 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358400 lambda!358308))))

(declare-fun bs!1644412 () Bool)

(assert (= bs!1644412 (and d!2033594 d!2033304)))

(assert (=> bs!1644412 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358400 lambda!358321))))

(assert (=> bs!1644411 (not (= lambda!358400 lambda!358309))))

(assert (=> bs!1644402 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) (Star!16357 (reg!16686 (regOne!33226 r!7292))))) (= lambda!358400 lambda!358381))))

(assert (=> bs!1644403 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358400 lambda!358310))))

(declare-fun bs!1644413 () Bool)

(assert (= bs!1644413 (and d!2033594 b!6480086)))

(assert (=> bs!1644413 (= lambda!358400 lambda!358305)))

(assert (=> bs!1644409 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358400 lambda!358332))))

(declare-fun bs!1644414 () Bool)

(assert (= bs!1644414 (and d!2033594 b!6480496)))

(assert (=> bs!1644414 (not (= lambda!358400 lambda!358351))))

(assert (=> bs!1644408 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358400 lambda!358389))))

(declare-fun bs!1644415 () Bool)

(assert (= bs!1644415 (and d!2033594 b!6480604)))

(assert (=> bs!1644415 (not (= lambda!358400 lambda!358355))))

(assert (=> bs!1644413 (not (= lambda!358400 lambda!358306))))

(assert (=> d!2033594 true))

(assert (=> d!2033594 true))

(assert (=> d!2033594 true))

(assert (=> d!2033594 (= (isDefined!12951 (findConcatSeparation!2662 (regOne!33226 r!7292) (regTwo!33226 r!7292) Nil!65246 s!2326 s!2326)) (Exists!3427 lambda!358400))))

(declare-fun lt!2386515 () Unit!158759)

(assert (=> d!2033594 (= lt!2386515 (choose!48026 (regOne!33226 r!7292) (regTwo!33226 r!7292) s!2326))))

(assert (=> d!2033594 (validRegex!8093 (regOne!33226 r!7292))))

(assert (=> d!2033594 (= (lemmaFindConcatSeparationEquivalentToExists!2426 (regOne!33226 r!7292) (regTwo!33226 r!7292) s!2326) lt!2386515)))

(declare-fun bs!1644416 () Bool)

(assert (= bs!1644416 d!2033594))

(assert (=> bs!1644416 m!7268328))

(assert (=> bs!1644416 m!7268330))

(assert (=> bs!1644416 m!7269466))

(assert (=> bs!1644416 m!7268328))

(declare-fun m!7269472 () Bool)

(assert (=> bs!1644416 m!7269472))

(declare-fun m!7269474 () Bool)

(assert (=> bs!1644416 m!7269474))

(assert (=> b!6480086 d!2033594))

(declare-fun bs!1644417 () Bool)

(declare-fun d!2033596 () Bool)

(assert (= bs!1644417 (and d!2033596 d!2033512)))

(declare-fun lambda!358401 () Int)

(assert (=> bs!1644417 (not (= lambda!358401 lambda!358385))))

(declare-fun bs!1644418 () Bool)

(assert (= bs!1644418 (and d!2033596 b!6480072)))

(assert (=> bs!1644418 (not (= lambda!358401 lambda!358311))))

(declare-fun bs!1644419 () Bool)

(assert (= bs!1644419 (and d!2033596 b!6480608)))

(assert (=> bs!1644419 (not (= lambda!358401 lambda!358357))))

(declare-fun bs!1644420 () Bool)

(assert (= bs!1644420 (and d!2033596 d!2033546)))

(assert (=> bs!1644420 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358401 lambda!358392))))

(declare-fun bs!1644421 () Bool)

(assert (= bs!1644421 (and d!2033596 b!6480921)))

(assert (=> bs!1644421 (not (= lambda!358401 lambda!358386))))

(assert (=> bs!1644418 (not (= lambda!358401 lambda!358312))))

(declare-fun bs!1644422 () Bool)

(assert (= bs!1644422 (and d!2033596 b!6480492)))

(assert (=> bs!1644422 (not (= lambda!358401 lambda!358350))))

(declare-fun bs!1644423 () Bool)

(assert (= bs!1644423 (and d!2033596 d!2033538)))

(assert (=> bs!1644423 (not (= lambda!358401 lambda!358390))))

(declare-fun bs!1644424 () Bool)

(assert (= bs!1644424 (and d!2033596 d!2033342)))

(assert (=> bs!1644424 (not (= lambda!358401 lambda!358334))))

(declare-fun bs!1644425 () Bool)

(assert (= bs!1644425 (and d!2033596 b!6480925)))

(assert (=> bs!1644425 (not (= lambda!358401 lambda!358387))))

(declare-fun bs!1644426 () Bool)

(assert (= bs!1644426 (and d!2033596 b!6480102)))

(assert (=> bs!1644426 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358401 lambda!358308))))

(declare-fun bs!1644427 () Bool)

(assert (= bs!1644427 (and d!2033596 d!2033594)))

(assert (=> bs!1644427 (= lambda!358401 lambda!358400)))

(declare-fun bs!1644428 () Bool)

(assert (= bs!1644428 (and d!2033596 d!2033304)))

(assert (=> bs!1644428 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358401 lambda!358321))))

(assert (=> bs!1644426 (not (= lambda!358401 lambda!358309))))

(assert (=> bs!1644417 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) (Star!16357 (reg!16686 (regOne!33226 r!7292))))) (= lambda!358401 lambda!358381))))

(assert (=> bs!1644418 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358401 lambda!358310))))

(declare-fun bs!1644429 () Bool)

(assert (= bs!1644429 (and d!2033596 b!6480086)))

(assert (=> bs!1644429 (= lambda!358401 lambda!358305)))

(assert (=> bs!1644424 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358401 lambda!358332))))

(declare-fun bs!1644430 () Bool)

(assert (= bs!1644430 (and d!2033596 b!6480496)))

(assert (=> bs!1644430 (not (= lambda!358401 lambda!358351))))

(assert (=> bs!1644423 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358401 lambda!358389))))

(declare-fun bs!1644431 () Bool)

(assert (= bs!1644431 (and d!2033596 b!6480604)))

(assert (=> bs!1644431 (not (= lambda!358401 lambda!358355))))

(assert (=> bs!1644429 (not (= lambda!358401 lambda!358306))))

(assert (=> d!2033596 true))

(assert (=> d!2033596 true))

(assert (=> d!2033596 true))

(declare-fun lambda!358402 () Int)

(assert (=> bs!1644417 (not (= lambda!358402 lambda!358385))))

(assert (=> bs!1644418 (not (= lambda!358402 lambda!358311))))

(assert (=> bs!1644419 (= (and (= (regOne!33226 r!7292) (regOne!33226 lt!2386332)) (= (regTwo!33226 r!7292) (regTwo!33226 lt!2386332))) (= lambda!358402 lambda!358357))))

(assert (=> bs!1644420 (not (= lambda!358402 lambda!358392))))

(assert (=> bs!1644421 (not (= lambda!358402 lambda!358386))))

(assert (=> bs!1644418 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358402 lambda!358312))))

(assert (=> bs!1644422 (not (= lambda!358402 lambda!358350))))

(assert (=> bs!1644423 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (reg!16686 (regOne!33226 r!7292))) (= (regTwo!33226 r!7292) lt!2386306)) (= lambda!358402 lambda!358390))))

(assert (=> bs!1644424 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358402 lambda!358334))))

(assert (=> bs!1644425 (= (and (= s!2326 (_1!36639 lt!2386317)) (= (regOne!33226 r!7292) (regOne!33226 lt!2386306)) (= (regTwo!33226 r!7292) (regTwo!33226 lt!2386306))) (= lambda!358402 lambda!358387))))

(assert (=> bs!1644426 (not (= lambda!358402 lambda!358308))))

(declare-fun bs!1644432 () Bool)

(assert (= bs!1644432 d!2033596))

(assert (=> bs!1644432 (not (= lambda!358402 lambda!358401))))

(assert (=> bs!1644427 (not (= lambda!358402 lambda!358400))))

(assert (=> bs!1644428 (not (= lambda!358402 lambda!358321))))

(assert (=> bs!1644426 (= (= (regOne!33226 r!7292) lt!2386306) (= lambda!358402 lambda!358309))))

(assert (=> bs!1644417 (not (= lambda!358402 lambda!358381))))

(assert (=> bs!1644418 (not (= lambda!358402 lambda!358310))))

(assert (=> bs!1644429 (not (= lambda!358402 lambda!358305))))

(assert (=> bs!1644424 (not (= lambda!358402 lambda!358332))))

(assert (=> bs!1644430 (= lambda!358402 lambda!358351)))

(assert (=> bs!1644423 (not (= lambda!358402 lambda!358389))))

(assert (=> bs!1644431 (not (= lambda!358402 lambda!358355))))

(assert (=> bs!1644429 (= lambda!358402 lambda!358306)))

(assert (=> d!2033596 true))

(assert (=> d!2033596 true))

(assert (=> d!2033596 true))

(assert (=> d!2033596 (= (Exists!3427 lambda!358401) (Exists!3427 lambda!358402))))

(declare-fun lt!2386516 () Unit!158759)

(assert (=> d!2033596 (= lt!2386516 (choose!48028 (regOne!33226 r!7292) (regTwo!33226 r!7292) s!2326))))

(assert (=> d!2033596 (validRegex!8093 (regOne!33226 r!7292))))

(assert (=> d!2033596 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1964 (regOne!33226 r!7292) (regTwo!33226 r!7292) s!2326) lt!2386516)))

(declare-fun m!7269476 () Bool)

(assert (=> bs!1644432 m!7269476))

(declare-fun m!7269478 () Bool)

(assert (=> bs!1644432 m!7269478))

(declare-fun m!7269480 () Bool)

(assert (=> bs!1644432 m!7269480))

(assert (=> bs!1644432 m!7269466))

(assert (=> b!6480086 d!2033596))

(declare-fun d!2033598 () Bool)

(assert (=> d!2033598 (= (isDefined!12951 (findConcatSeparation!2662 (regOne!33226 r!7292) (regTwo!33226 r!7292) Nil!65246 s!2326 s!2326)) (not (isEmpty!37433 (findConcatSeparation!2662 (regOne!33226 r!7292) (regTwo!33226 r!7292) Nil!65246 s!2326 s!2326))))))

(declare-fun bs!1644433 () Bool)

(assert (= bs!1644433 d!2033598))

(assert (=> bs!1644433 m!7268328))

(declare-fun m!7269482 () Bool)

(assert (=> bs!1644433 m!7269482))

(assert (=> b!6480086 d!2033598))

(declare-fun d!2033600 () Bool)

(declare-fun c!1187303 () Bool)

(assert (=> d!2033600 (= c!1187303 (isEmpty!37432 (t!378996 s!2326)))))

(declare-fun e!3928364 () Bool)

(assert (=> d!2033600 (= (matchZipper!2369 lt!2386301 (t!378996 s!2326)) e!3928364)))

(declare-fun b!6481110 () Bool)

(assert (=> b!6481110 (= e!3928364 (nullableZipper!2116 lt!2386301))))

(declare-fun b!6481111 () Bool)

(assert (=> b!6481111 (= e!3928364 (matchZipper!2369 (derivationStepZipper!2323 lt!2386301 (head!13192 (t!378996 s!2326))) (tail!12277 (t!378996 s!2326))))))

(assert (= (and d!2033600 c!1187303) b!6481110))

(assert (= (and d!2033600 (not c!1187303)) b!6481111))

(assert (=> d!2033600 m!7269042))

(declare-fun m!7269484 () Bool)

(assert (=> b!6481110 m!7269484))

(assert (=> b!6481111 m!7269046))

(assert (=> b!6481111 m!7269046))

(declare-fun m!7269486 () Bool)

(assert (=> b!6481111 m!7269486))

(assert (=> b!6481111 m!7269050))

(assert (=> b!6481111 m!7269486))

(assert (=> b!6481111 m!7269050))

(declare-fun m!7269488 () Bool)

(assert (=> b!6481111 m!7269488))

(assert (=> b!6480084 d!2033600))

(declare-fun lt!2386517 () List!65370)

(declare-fun b!6481115 () Bool)

(declare-fun e!3928366 () Bool)

(assert (=> b!6481115 (= e!3928366 (or (not (= lt!2386302 Nil!65246)) (= lt!2386517 (_1!36639 lt!2386299))))))

(declare-fun b!6481114 () Bool)

(declare-fun res!2661197 () Bool)

(assert (=> b!6481114 (=> (not res!2661197) (not e!3928366))))

(assert (=> b!6481114 (= res!2661197 (= (size!40409 lt!2386517) (+ (size!40409 (_1!36639 lt!2386299)) (size!40409 lt!2386302))))))

(declare-fun b!6481113 () Bool)

(declare-fun e!3928365 () List!65370)

(assert (=> b!6481113 (= e!3928365 (Cons!65246 (h!71694 (_1!36639 lt!2386299)) (++!14425 (t!378996 (_1!36639 lt!2386299)) lt!2386302)))))

(declare-fun b!6481112 () Bool)

(assert (=> b!6481112 (= e!3928365 lt!2386302)))

(declare-fun d!2033602 () Bool)

(assert (=> d!2033602 e!3928366))

(declare-fun res!2661198 () Bool)

(assert (=> d!2033602 (=> (not res!2661198) (not e!3928366))))

(assert (=> d!2033602 (= res!2661198 (= (content!12414 lt!2386517) ((_ map or) (content!12414 (_1!36639 lt!2386299)) (content!12414 lt!2386302))))))

(assert (=> d!2033602 (= lt!2386517 e!3928365)))

(declare-fun c!1187304 () Bool)

(assert (=> d!2033602 (= c!1187304 ((_ is Nil!65246) (_1!36639 lt!2386299)))))

(assert (=> d!2033602 (= (++!14425 (_1!36639 lt!2386299) lt!2386302) lt!2386517)))

(assert (= (and d!2033602 c!1187304) b!6481112))

(assert (= (and d!2033602 (not c!1187304)) b!6481113))

(assert (= (and d!2033602 res!2661198) b!6481114))

(assert (= (and b!6481114 res!2661197) b!6481115))

(declare-fun m!7269490 () Bool)

(assert (=> b!6481114 m!7269490))

(assert (=> b!6481114 m!7269294))

(declare-fun m!7269492 () Bool)

(assert (=> b!6481114 m!7269492))

(declare-fun m!7269494 () Bool)

(assert (=> b!6481113 m!7269494))

(declare-fun m!7269496 () Bool)

(assert (=> d!2033602 m!7269496))

(assert (=> d!2033602 m!7269302))

(declare-fun m!7269498 () Bool)

(assert (=> d!2033602 m!7269498))

(assert (=> b!6480085 d!2033602))

(declare-fun e!3928368 () Bool)

(declare-fun lt!2386518 () List!65370)

(declare-fun b!6481119 () Bool)

(assert (=> b!6481119 (= e!3928368 (or (not (= (_2!36639 lt!2386317) Nil!65246)) (= lt!2386518 lt!2386309)))))

(declare-fun b!6481118 () Bool)

(declare-fun res!2661199 () Bool)

(assert (=> b!6481118 (=> (not res!2661199) (not e!3928368))))

(assert (=> b!6481118 (= res!2661199 (= (size!40409 lt!2386518) (+ (size!40409 lt!2386309) (size!40409 (_2!36639 lt!2386317)))))))

(declare-fun b!6481117 () Bool)

(declare-fun e!3928367 () List!65370)

(assert (=> b!6481117 (= e!3928367 (Cons!65246 (h!71694 lt!2386309) (++!14425 (t!378996 lt!2386309) (_2!36639 lt!2386317))))))

(declare-fun b!6481116 () Bool)

(assert (=> b!6481116 (= e!3928367 (_2!36639 lt!2386317))))

(declare-fun d!2033604 () Bool)

(assert (=> d!2033604 e!3928368))

(declare-fun res!2661200 () Bool)

(assert (=> d!2033604 (=> (not res!2661200) (not e!3928368))))

(assert (=> d!2033604 (= res!2661200 (= (content!12414 lt!2386518) ((_ map or) (content!12414 lt!2386309) (content!12414 (_2!36639 lt!2386317)))))))

(assert (=> d!2033604 (= lt!2386518 e!3928367)))

(declare-fun c!1187305 () Bool)

(assert (=> d!2033604 (= c!1187305 ((_ is Nil!65246) lt!2386309))))

(assert (=> d!2033604 (= (++!14425 lt!2386309 (_2!36639 lt!2386317)) lt!2386518)))

(assert (= (and d!2033604 c!1187305) b!6481116))

(assert (= (and d!2033604 (not c!1187305)) b!6481117))

(assert (= (and d!2033604 res!2661200) b!6481118))

(assert (= (and b!6481118 res!2661199) b!6481119))

(declare-fun m!7269500 () Bool)

(assert (=> b!6481118 m!7269500))

(declare-fun m!7269502 () Bool)

(assert (=> b!6481118 m!7269502))

(assert (=> b!6481118 m!7268660))

(declare-fun m!7269504 () Bool)

(assert (=> b!6481117 m!7269504))

(declare-fun m!7269506 () Bool)

(assert (=> d!2033604 m!7269506))

(declare-fun m!7269508 () Bool)

(assert (=> d!2033604 m!7269508))

(assert (=> d!2033604 m!7268668))

(assert (=> b!6480085 d!2033604))

(declare-fun b!6481123 () Bool)

(declare-fun e!3928370 () Bool)

(declare-fun lt!2386519 () List!65370)

(assert (=> b!6481123 (= e!3928370 (or (not (= (_2!36639 lt!2386317) Nil!65246)) (= lt!2386519 (_2!36639 lt!2386299))))))

(declare-fun b!6481122 () Bool)

(declare-fun res!2661201 () Bool)

(assert (=> b!6481122 (=> (not res!2661201) (not e!3928370))))

(assert (=> b!6481122 (= res!2661201 (= (size!40409 lt!2386519) (+ (size!40409 (_2!36639 lt!2386299)) (size!40409 (_2!36639 lt!2386317)))))))

(declare-fun b!6481121 () Bool)

(declare-fun e!3928369 () List!65370)

(assert (=> b!6481121 (= e!3928369 (Cons!65246 (h!71694 (_2!36639 lt!2386299)) (++!14425 (t!378996 (_2!36639 lt!2386299)) (_2!36639 lt!2386317))))))

(declare-fun b!6481120 () Bool)

(assert (=> b!6481120 (= e!3928369 (_2!36639 lt!2386317))))

(declare-fun d!2033606 () Bool)

(assert (=> d!2033606 e!3928370))

(declare-fun res!2661202 () Bool)

(assert (=> d!2033606 (=> (not res!2661202) (not e!3928370))))

(assert (=> d!2033606 (= res!2661202 (= (content!12414 lt!2386519) ((_ map or) (content!12414 (_2!36639 lt!2386299)) (content!12414 (_2!36639 lt!2386317)))))))

(assert (=> d!2033606 (= lt!2386519 e!3928369)))

(declare-fun c!1187306 () Bool)

(assert (=> d!2033606 (= c!1187306 ((_ is Nil!65246) (_2!36639 lt!2386299)))))

(assert (=> d!2033606 (= (++!14425 (_2!36639 lt!2386299) (_2!36639 lt!2386317)) lt!2386519)))

(assert (= (and d!2033606 c!1187306) b!6481120))

(assert (= (and d!2033606 (not c!1187306)) b!6481121))

(assert (= (and d!2033606 res!2661202) b!6481122))

(assert (= (and b!6481122 res!2661201) b!6481123))

(declare-fun m!7269510 () Bool)

(assert (=> b!6481122 m!7269510))

(assert (=> b!6481122 m!7269296))

(assert (=> b!6481122 m!7268660))

(declare-fun m!7269512 () Bool)

(assert (=> b!6481121 m!7269512))

(declare-fun m!7269514 () Bool)

(assert (=> d!2033606 m!7269514))

(assert (=> d!2033606 m!7269304))

(assert (=> d!2033606 m!7268668))

(assert (=> b!6480085 d!2033606))

(declare-fun d!2033608 () Bool)

(assert (=> d!2033608 (= (++!14425 (++!14425 (_1!36639 lt!2386299) (_2!36639 lt!2386299)) (_2!36639 lt!2386317)) (++!14425 (_1!36639 lt!2386299) (++!14425 (_2!36639 lt!2386299) (_2!36639 lt!2386317))))))

(declare-fun lt!2386522 () Unit!158759)

(declare-fun choose!48047 (List!65370 List!65370 List!65370) Unit!158759)

(assert (=> d!2033608 (= lt!2386522 (choose!48047 (_1!36639 lt!2386299) (_2!36639 lt!2386299) (_2!36639 lt!2386317)))))

(assert (=> d!2033608 (= (lemmaConcatAssociativity!2928 (_1!36639 lt!2386299) (_2!36639 lt!2386299) (_2!36639 lt!2386317)) lt!2386522)))

(declare-fun bs!1644434 () Bool)

(assert (= bs!1644434 d!2033608))

(assert (=> bs!1644434 m!7268444))

(declare-fun m!7269516 () Bool)

(assert (=> bs!1644434 m!7269516))

(assert (=> bs!1644434 m!7268358))

(declare-fun m!7269518 () Bool)

(assert (=> bs!1644434 m!7269518))

(assert (=> bs!1644434 m!7268444))

(assert (=> bs!1644434 m!7268358))

(declare-fun m!7269520 () Bool)

(assert (=> bs!1644434 m!7269520))

(assert (=> b!6480085 d!2033608))

(declare-fun d!2033610 () Bool)

(assert (=> d!2033610 (= (isEmpty!37432 (_1!36639 lt!2386317)) ((_ is Nil!65246) (_1!36639 lt!2386317)))))

(assert (=> b!6480106 d!2033610))

(declare-fun bs!1644435 () Bool)

(declare-fun d!2033612 () Bool)

(assert (= bs!1644435 (and d!2033612 d!2033346)))

(declare-fun lambda!358405 () Int)

(assert (=> bs!1644435 (= lambda!358405 lambda!358340)))

(declare-fun bs!1644436 () Bool)

(assert (= bs!1644436 (and d!2033612 d!2033420)))

(assert (=> bs!1644436 (= lambda!358405 lambda!358365)))

(declare-fun bs!1644437 () Bool)

(assert (= bs!1644437 (and d!2033612 d!2033562)))

(assert (=> bs!1644437 (= lambda!358405 lambda!358393)))

(declare-fun bs!1644438 () Bool)

(assert (= bs!1644438 (and d!2033612 d!2033564)))

(assert (=> bs!1644438 (= lambda!358405 lambda!358396)))

(declare-fun b!6481144 () Bool)

(declare-fun e!3928388 () Regex!16357)

(assert (=> b!6481144 (= e!3928388 (Union!16357 (h!71695 (unfocusZipperList!1778 zl!343)) (generalisedUnion!2201 (t!378997 (unfocusZipperList!1778 zl!343)))))))

(declare-fun b!6481145 () Bool)

(declare-fun e!3928387 () Bool)

(declare-fun lt!2386525 () Regex!16357)

(declare-fun isEmptyLang!1759 (Regex!16357) Bool)

(assert (=> b!6481145 (= e!3928387 (isEmptyLang!1759 lt!2386525))))

(declare-fun b!6481147 () Bool)

(declare-fun e!3928385 () Regex!16357)

(assert (=> b!6481147 (= e!3928385 (h!71695 (unfocusZipperList!1778 zl!343)))))

(declare-fun b!6481148 () Bool)

(assert (=> b!6481148 (= e!3928388 EmptyLang!16357)))

(declare-fun b!6481149 () Bool)

(declare-fun e!3928386 () Bool)

(assert (=> b!6481149 (= e!3928387 e!3928386)))

(declare-fun c!1187315 () Bool)

(assert (=> b!6481149 (= c!1187315 (isEmpty!37430 (tail!12279 (unfocusZipperList!1778 zl!343))))))

(declare-fun b!6481150 () Bool)

(assert (=> b!6481150 (= e!3928386 (= lt!2386525 (head!13194 (unfocusZipperList!1778 zl!343))))))

(declare-fun b!6481151 () Bool)

(assert (=> b!6481151 (= e!3928385 e!3928388)))

(declare-fun c!1187316 () Bool)

(assert (=> b!6481151 (= c!1187316 ((_ is Cons!65247) (unfocusZipperList!1778 zl!343)))))

(declare-fun e!3928384 () Bool)

(assert (=> d!2033612 e!3928384))

(declare-fun res!2661208 () Bool)

(assert (=> d!2033612 (=> (not res!2661208) (not e!3928384))))

(assert (=> d!2033612 (= res!2661208 (validRegex!8093 lt!2386525))))

(assert (=> d!2033612 (= lt!2386525 e!3928385)))

(declare-fun c!1187317 () Bool)

(declare-fun e!3928383 () Bool)

(assert (=> d!2033612 (= c!1187317 e!3928383)))

(declare-fun res!2661207 () Bool)

(assert (=> d!2033612 (=> (not res!2661207) (not e!3928383))))

(assert (=> d!2033612 (= res!2661207 ((_ is Cons!65247) (unfocusZipperList!1778 zl!343)))))

(assert (=> d!2033612 (forall!15541 (unfocusZipperList!1778 zl!343) lambda!358405)))

(assert (=> d!2033612 (= (generalisedUnion!2201 (unfocusZipperList!1778 zl!343)) lt!2386525)))

(declare-fun b!6481146 () Bool)

(declare-fun isUnion!1189 (Regex!16357) Bool)

(assert (=> b!6481146 (= e!3928386 (isUnion!1189 lt!2386525))))

(declare-fun b!6481152 () Bool)

(assert (=> b!6481152 (= e!3928383 (isEmpty!37430 (t!378997 (unfocusZipperList!1778 zl!343))))))

(declare-fun b!6481153 () Bool)

(assert (=> b!6481153 (= e!3928384 e!3928387)))

(declare-fun c!1187318 () Bool)

(assert (=> b!6481153 (= c!1187318 (isEmpty!37430 (unfocusZipperList!1778 zl!343)))))

(assert (= (and d!2033612 res!2661207) b!6481152))

(assert (= (and d!2033612 c!1187317) b!6481147))

(assert (= (and d!2033612 (not c!1187317)) b!6481151))

(assert (= (and b!6481151 c!1187316) b!6481144))

(assert (= (and b!6481151 (not c!1187316)) b!6481148))

(assert (= (and d!2033612 res!2661208) b!6481153))

(assert (= (and b!6481153 c!1187318) b!6481145))

(assert (= (and b!6481153 (not c!1187318)) b!6481149))

(assert (= (and b!6481149 c!1187315) b!6481150))

(assert (= (and b!6481149 (not c!1187315)) b!6481146))

(assert (=> b!6481150 m!7268428))

(declare-fun m!7269522 () Bool)

(assert (=> b!6481150 m!7269522))

(declare-fun m!7269524 () Bool)

(assert (=> b!6481144 m!7269524))

(declare-fun m!7269526 () Bool)

(assert (=> b!6481152 m!7269526))

(declare-fun m!7269528 () Bool)

(assert (=> b!6481146 m!7269528))

(assert (=> b!6481153 m!7268428))

(declare-fun m!7269530 () Bool)

(assert (=> b!6481153 m!7269530))

(assert (=> b!6481149 m!7268428))

(declare-fun m!7269532 () Bool)

(assert (=> b!6481149 m!7269532))

(assert (=> b!6481149 m!7269532))

(declare-fun m!7269534 () Bool)

(assert (=> b!6481149 m!7269534))

(declare-fun m!7269536 () Bool)

(assert (=> d!2033612 m!7269536))

(assert (=> d!2033612 m!7268428))

(declare-fun m!7269538 () Bool)

(assert (=> d!2033612 m!7269538))

(declare-fun m!7269540 () Bool)

(assert (=> b!6481145 m!7269540))

(assert (=> b!6480083 d!2033612))

(declare-fun bs!1644439 () Bool)

(declare-fun d!2033614 () Bool)

(assert (= bs!1644439 (and d!2033614 d!2033420)))

(declare-fun lambda!358408 () Int)

(assert (=> bs!1644439 (= lambda!358408 lambda!358365)))

(declare-fun bs!1644440 () Bool)

(assert (= bs!1644440 (and d!2033614 d!2033564)))

(assert (=> bs!1644440 (= lambda!358408 lambda!358396)))

(declare-fun bs!1644441 () Bool)

(assert (= bs!1644441 (and d!2033614 d!2033562)))

(assert (=> bs!1644441 (= lambda!358408 lambda!358393)))

(declare-fun bs!1644442 () Bool)

(assert (= bs!1644442 (and d!2033614 d!2033346)))

(assert (=> bs!1644442 (= lambda!358408 lambda!358340)))

(declare-fun bs!1644443 () Bool)

(assert (= bs!1644443 (and d!2033614 d!2033612)))

(assert (=> bs!1644443 (= lambda!358408 lambda!358405)))

(declare-fun lt!2386528 () List!65371)

(assert (=> d!2033614 (forall!15541 lt!2386528 lambda!358408)))

(declare-fun e!3928391 () List!65371)

(assert (=> d!2033614 (= lt!2386528 e!3928391)))

(declare-fun c!1187321 () Bool)

(assert (=> d!2033614 (= c!1187321 ((_ is Cons!65248) zl!343))))

(assert (=> d!2033614 (= (unfocusZipperList!1778 zl!343) lt!2386528)))

(declare-fun b!6481158 () Bool)

(assert (=> b!6481158 (= e!3928391 (Cons!65247 (generalisedConcat!1954 (exprs!6241 (h!71696 zl!343))) (unfocusZipperList!1778 (t!378998 zl!343))))))

(declare-fun b!6481159 () Bool)

(assert (=> b!6481159 (= e!3928391 Nil!65247)))

(assert (= (and d!2033614 c!1187321) b!6481158))

(assert (= (and d!2033614 (not c!1187321)) b!6481159))

(declare-fun m!7269542 () Bool)

(assert (=> d!2033614 m!7269542))

(assert (=> b!6481158 m!7268464))

(declare-fun m!7269544 () Bool)

(assert (=> b!6481158 m!7269544))

(assert (=> b!6480083 d!2033614))

(declare-fun b!6481160 () Bool)

(declare-fun res!2661215 () Bool)

(declare-fun e!3928397 () Bool)

(assert (=> b!6481160 (=> res!2661215 e!3928397)))

(declare-fun e!3928395 () Bool)

(assert (=> b!6481160 (= res!2661215 e!3928395)))

(declare-fun res!2661216 () Bool)

(assert (=> b!6481160 (=> (not res!2661216) (not e!3928395))))

(declare-fun lt!2386529 () Bool)

(assert (=> b!6481160 (= res!2661216 lt!2386529)))

(declare-fun d!2033616 () Bool)

(declare-fun e!3928396 () Bool)

(assert (=> d!2033616 e!3928396))

(declare-fun c!1187322 () Bool)

(assert (=> d!2033616 (= c!1187322 ((_ is EmptyExpr!16357) (regTwo!33226 r!7292)))))

(declare-fun e!3928398 () Bool)

(assert (=> d!2033616 (= lt!2386529 e!3928398)))

(declare-fun c!1187324 () Bool)

(assert (=> d!2033616 (= c!1187324 (isEmpty!37432 (_2!36639 lt!2386317)))))

(assert (=> d!2033616 (validRegex!8093 (regTwo!33226 r!7292))))

(assert (=> d!2033616 (= (matchR!8540 (regTwo!33226 r!7292) (_2!36639 lt!2386317)) lt!2386529)))

(declare-fun b!6481161 () Bool)

(declare-fun res!2661210 () Bool)

(declare-fun e!3928393 () Bool)

(assert (=> b!6481161 (=> res!2661210 e!3928393)))

(assert (=> b!6481161 (= res!2661210 (not (isEmpty!37432 (tail!12277 (_2!36639 lt!2386317)))))))

(declare-fun b!6481162 () Bool)

(declare-fun e!3928392 () Bool)

(assert (=> b!6481162 (= e!3928397 e!3928392)))

(declare-fun res!2661209 () Bool)

(assert (=> b!6481162 (=> (not res!2661209) (not e!3928392))))

(assert (=> b!6481162 (= res!2661209 (not lt!2386529))))

(declare-fun b!6481163 () Bool)

(assert (=> b!6481163 (= e!3928395 (= (head!13192 (_2!36639 lt!2386317)) (c!1187033 (regTwo!33226 r!7292))))))

(declare-fun b!6481164 () Bool)

(assert (=> b!6481164 (= e!3928392 e!3928393)))

(declare-fun res!2661212 () Bool)

(assert (=> b!6481164 (=> res!2661212 e!3928393)))

(declare-fun call!560998 () Bool)

(assert (=> b!6481164 (= res!2661212 call!560998)))

(declare-fun b!6481165 () Bool)

(declare-fun e!3928394 () Bool)

(assert (=> b!6481165 (= e!3928396 e!3928394)))

(declare-fun c!1187323 () Bool)

(assert (=> b!6481165 (= c!1187323 ((_ is EmptyLang!16357) (regTwo!33226 r!7292)))))

(declare-fun bm!560993 () Bool)

(assert (=> bm!560993 (= call!560998 (isEmpty!37432 (_2!36639 lt!2386317)))))

(declare-fun b!6481166 () Bool)

(assert (=> b!6481166 (= e!3928394 (not lt!2386529))))

(declare-fun b!6481167 () Bool)

(declare-fun res!2661211 () Bool)

(assert (=> b!6481167 (=> (not res!2661211) (not e!3928395))))

(assert (=> b!6481167 (= res!2661211 (not call!560998))))

(declare-fun b!6481168 () Bool)

(declare-fun res!2661213 () Bool)

(assert (=> b!6481168 (=> res!2661213 e!3928397)))

(assert (=> b!6481168 (= res!2661213 (not ((_ is ElementMatch!16357) (regTwo!33226 r!7292))))))

(assert (=> b!6481168 (= e!3928394 e!3928397)))

(declare-fun b!6481169 () Bool)

(assert (=> b!6481169 (= e!3928398 (nullable!6350 (regTwo!33226 r!7292)))))

(declare-fun b!6481170 () Bool)

(assert (=> b!6481170 (= e!3928398 (matchR!8540 (derivativeStep!5055 (regTwo!33226 r!7292) (head!13192 (_2!36639 lt!2386317))) (tail!12277 (_2!36639 lt!2386317))))))

(declare-fun b!6481171 () Bool)

(assert (=> b!6481171 (= e!3928396 (= lt!2386529 call!560998))))

(declare-fun b!6481172 () Bool)

(assert (=> b!6481172 (= e!3928393 (not (= (head!13192 (_2!36639 lt!2386317)) (c!1187033 (regTwo!33226 r!7292)))))))

(declare-fun b!6481173 () Bool)

(declare-fun res!2661214 () Bool)

(assert (=> b!6481173 (=> (not res!2661214) (not e!3928395))))

(assert (=> b!6481173 (= res!2661214 (isEmpty!37432 (tail!12277 (_2!36639 lt!2386317))))))

(assert (= (and d!2033616 c!1187324) b!6481169))

(assert (= (and d!2033616 (not c!1187324)) b!6481170))

(assert (= (and d!2033616 c!1187322) b!6481171))

(assert (= (and d!2033616 (not c!1187322)) b!6481165))

(assert (= (and b!6481165 c!1187323) b!6481166))

(assert (= (and b!6481165 (not c!1187323)) b!6481168))

(assert (= (and b!6481168 (not res!2661213)) b!6481160))

(assert (= (and b!6481160 res!2661216) b!6481167))

(assert (= (and b!6481167 res!2661211) b!6481173))

(assert (= (and b!6481173 res!2661214) b!6481163))

(assert (= (and b!6481160 (not res!2661215)) b!6481162))

(assert (= (and b!6481162 res!2661209) b!6481164))

(assert (= (and b!6481164 (not res!2661212)) b!6481161))

(assert (= (and b!6481161 (not res!2661210)) b!6481172))

(assert (= (or b!6481171 b!6481164 b!6481167) bm!560993))

(declare-fun m!7269546 () Bool)

(assert (=> b!6481163 m!7269546))

(declare-fun m!7269548 () Bool)

(assert (=> b!6481173 m!7269548))

(assert (=> b!6481173 m!7269548))

(declare-fun m!7269550 () Bool)

(assert (=> b!6481173 m!7269550))

(declare-fun m!7269552 () Bool)

(assert (=> bm!560993 m!7269552))

(declare-fun m!7269554 () Bool)

(assert (=> b!6481169 m!7269554))

(assert (=> b!6481161 m!7269548))

(assert (=> b!6481161 m!7269548))

(assert (=> b!6481161 m!7269550))

(assert (=> b!6481172 m!7269546))

(assert (=> d!2033616 m!7269552))

(assert (=> d!2033616 m!7268972))

(assert (=> b!6481170 m!7269546))

(assert (=> b!6481170 m!7269546))

(declare-fun m!7269556 () Bool)

(assert (=> b!6481170 m!7269556))

(assert (=> b!6481170 m!7269548))

(assert (=> b!6481170 m!7269556))

(assert (=> b!6481170 m!7269548))

(declare-fun m!7269558 () Bool)

(assert (=> b!6481170 m!7269558))

(assert (=> b!6480105 d!2033616))

(declare-fun b!6481174 () Bool)

(declare-fun res!2661223 () Bool)

(declare-fun e!3928404 () Bool)

(assert (=> b!6481174 (=> res!2661223 e!3928404)))

(declare-fun e!3928402 () Bool)

(assert (=> b!6481174 (= res!2661223 e!3928402)))

(declare-fun res!2661224 () Bool)

(assert (=> b!6481174 (=> (not res!2661224) (not e!3928402))))

(declare-fun lt!2386530 () Bool)

(assert (=> b!6481174 (= res!2661224 lt!2386530)))

(declare-fun d!2033618 () Bool)

(declare-fun e!3928403 () Bool)

(assert (=> d!2033618 e!3928403))

(declare-fun c!1187325 () Bool)

(assert (=> d!2033618 (= c!1187325 ((_ is EmptyExpr!16357) lt!2386306))))

(declare-fun e!3928405 () Bool)

(assert (=> d!2033618 (= lt!2386530 e!3928405)))

(declare-fun c!1187327 () Bool)

(assert (=> d!2033618 (= c!1187327 (isEmpty!37432 (_1!36639 lt!2386317)))))

(assert (=> d!2033618 (validRegex!8093 lt!2386306)))

(assert (=> d!2033618 (= (matchR!8540 lt!2386306 (_1!36639 lt!2386317)) lt!2386530)))

(declare-fun b!6481175 () Bool)

(declare-fun res!2661218 () Bool)

(declare-fun e!3928400 () Bool)

(assert (=> b!6481175 (=> res!2661218 e!3928400)))

(assert (=> b!6481175 (= res!2661218 (not (isEmpty!37432 (tail!12277 (_1!36639 lt!2386317)))))))

(declare-fun b!6481176 () Bool)

(declare-fun e!3928399 () Bool)

(assert (=> b!6481176 (= e!3928404 e!3928399)))

(declare-fun res!2661217 () Bool)

(assert (=> b!6481176 (=> (not res!2661217) (not e!3928399))))

(assert (=> b!6481176 (= res!2661217 (not lt!2386530))))

(declare-fun b!6481177 () Bool)

(assert (=> b!6481177 (= e!3928402 (= (head!13192 (_1!36639 lt!2386317)) (c!1187033 lt!2386306)))))

(declare-fun b!6481178 () Bool)

(assert (=> b!6481178 (= e!3928399 e!3928400)))

(declare-fun res!2661220 () Bool)

(assert (=> b!6481178 (=> res!2661220 e!3928400)))

(declare-fun call!560999 () Bool)

(assert (=> b!6481178 (= res!2661220 call!560999)))

(declare-fun b!6481179 () Bool)

(declare-fun e!3928401 () Bool)

(assert (=> b!6481179 (= e!3928403 e!3928401)))

(declare-fun c!1187326 () Bool)

(assert (=> b!6481179 (= c!1187326 ((_ is EmptyLang!16357) lt!2386306))))

(declare-fun bm!560994 () Bool)

(assert (=> bm!560994 (= call!560999 (isEmpty!37432 (_1!36639 lt!2386317)))))

(declare-fun b!6481180 () Bool)

(assert (=> b!6481180 (= e!3928401 (not lt!2386530))))

(declare-fun b!6481181 () Bool)

(declare-fun res!2661219 () Bool)

(assert (=> b!6481181 (=> (not res!2661219) (not e!3928402))))

(assert (=> b!6481181 (= res!2661219 (not call!560999))))

(declare-fun b!6481182 () Bool)

(declare-fun res!2661221 () Bool)

(assert (=> b!6481182 (=> res!2661221 e!3928404)))

(assert (=> b!6481182 (= res!2661221 (not ((_ is ElementMatch!16357) lt!2386306)))))

(assert (=> b!6481182 (= e!3928401 e!3928404)))

(declare-fun b!6481183 () Bool)

(assert (=> b!6481183 (= e!3928405 (nullable!6350 lt!2386306))))

(declare-fun b!6481184 () Bool)

(assert (=> b!6481184 (= e!3928405 (matchR!8540 (derivativeStep!5055 lt!2386306 (head!13192 (_1!36639 lt!2386317))) (tail!12277 (_1!36639 lt!2386317))))))

(declare-fun b!6481185 () Bool)

(assert (=> b!6481185 (= e!3928403 (= lt!2386530 call!560999))))

(declare-fun b!6481186 () Bool)

(assert (=> b!6481186 (= e!3928400 (not (= (head!13192 (_1!36639 lt!2386317)) (c!1187033 lt!2386306))))))

(declare-fun b!6481187 () Bool)

(declare-fun res!2661222 () Bool)

(assert (=> b!6481187 (=> (not res!2661222) (not e!3928402))))

(assert (=> b!6481187 (= res!2661222 (isEmpty!37432 (tail!12277 (_1!36639 lt!2386317))))))

(assert (= (and d!2033618 c!1187327) b!6481183))

(assert (= (and d!2033618 (not c!1187327)) b!6481184))

(assert (= (and d!2033618 c!1187325) b!6481185))

(assert (= (and d!2033618 (not c!1187325)) b!6481179))

(assert (= (and b!6481179 c!1187326) b!6481180))

(assert (= (and b!6481179 (not c!1187326)) b!6481182))

(assert (= (and b!6481182 (not res!2661221)) b!6481174))

(assert (= (and b!6481174 res!2661224) b!6481181))

(assert (= (and b!6481181 res!2661219) b!6481187))

(assert (= (and b!6481187 res!2661222) b!6481177))

(assert (= (and b!6481174 (not res!2661223)) b!6481176))

(assert (= (and b!6481176 res!2661217) b!6481178))

(assert (= (and b!6481178 (not res!2661220)) b!6481175))

(assert (= (and b!6481175 (not res!2661218)) b!6481186))

(assert (= (or b!6481185 b!6481178 b!6481181) bm!560994))

(declare-fun m!7269560 () Bool)

(assert (=> b!6481177 m!7269560))

(declare-fun m!7269562 () Bool)

(assert (=> b!6481187 m!7269562))

(assert (=> b!6481187 m!7269562))

(declare-fun m!7269564 () Bool)

(assert (=> b!6481187 m!7269564))

(assert (=> bm!560994 m!7268372))

(assert (=> b!6481183 m!7268896))

(assert (=> b!6481175 m!7269562))

(assert (=> b!6481175 m!7269562))

(assert (=> b!6481175 m!7269564))

(assert (=> b!6481186 m!7269560))

(assert (=> d!2033618 m!7268372))

(assert (=> d!2033618 m!7268646))

(assert (=> b!6481184 m!7269560))

(assert (=> b!6481184 m!7269560))

(declare-fun m!7269566 () Bool)

(assert (=> b!6481184 m!7269566))

(assert (=> b!6481184 m!7269562))

(assert (=> b!6481184 m!7269566))

(assert (=> b!6481184 m!7269562))

(declare-fun m!7269568 () Bool)

(assert (=> b!6481184 m!7269568))

(assert (=> b!6480103 d!2033618))

(declare-fun condSetEmpty!44145 () Bool)

(assert (=> setNonEmpty!44139 (= condSetEmpty!44145 (= setRest!44139 ((as const (Array Context!11482 Bool)) false)))))

(declare-fun setRes!44145 () Bool)

(assert (=> setNonEmpty!44139 (= tp!1795422 setRes!44145)))

(declare-fun setIsEmpty!44145 () Bool)

(assert (=> setIsEmpty!44145 setRes!44145))

(declare-fun setElem!44145 () Context!11482)

(declare-fun tp!1795487 () Bool)

(declare-fun setNonEmpty!44145 () Bool)

(declare-fun e!3928408 () Bool)

(assert (=> setNonEmpty!44145 (= setRes!44145 (and tp!1795487 (inv!84139 setElem!44145) e!3928408))))

(declare-fun setRest!44145 () (InoxSet Context!11482))

(assert (=> setNonEmpty!44145 (= setRest!44139 ((_ map or) (store ((as const (Array Context!11482 Bool)) false) setElem!44145 true) setRest!44145))))

(declare-fun b!6481192 () Bool)

(declare-fun tp!1795488 () Bool)

(assert (=> b!6481192 (= e!3928408 tp!1795488)))

(assert (= (and setNonEmpty!44139 condSetEmpty!44145) setIsEmpty!44145))

(assert (= (and setNonEmpty!44139 (not condSetEmpty!44145)) setNonEmpty!44145))

(assert (= setNonEmpty!44145 b!6481192))

(declare-fun m!7269570 () Bool)

(assert (=> setNonEmpty!44145 m!7269570))

(declare-fun b!6481206 () Bool)

(declare-fun e!3928411 () Bool)

(declare-fun tp!1795499 () Bool)

(declare-fun tp!1795502 () Bool)

(assert (=> b!6481206 (= e!3928411 (and tp!1795499 tp!1795502))))

(declare-fun b!6481205 () Bool)

(declare-fun tp!1795503 () Bool)

(assert (=> b!6481205 (= e!3928411 tp!1795503)))

(assert (=> b!6480081 (= tp!1795423 e!3928411)))

(declare-fun b!6481203 () Bool)

(assert (=> b!6481203 (= e!3928411 tp_is_empty!41967)))

(declare-fun b!6481204 () Bool)

(declare-fun tp!1795500 () Bool)

(declare-fun tp!1795501 () Bool)

(assert (=> b!6481204 (= e!3928411 (and tp!1795500 tp!1795501))))

(assert (= (and b!6480081 ((_ is ElementMatch!16357) (regOne!33226 r!7292))) b!6481203))

(assert (= (and b!6480081 ((_ is Concat!25202) (regOne!33226 r!7292))) b!6481204))

(assert (= (and b!6480081 ((_ is Star!16357) (regOne!33226 r!7292))) b!6481205))

(assert (= (and b!6480081 ((_ is Union!16357) (regOne!33226 r!7292))) b!6481206))

(declare-fun b!6481210 () Bool)

(declare-fun e!3928412 () Bool)

(declare-fun tp!1795504 () Bool)

(declare-fun tp!1795507 () Bool)

(assert (=> b!6481210 (= e!3928412 (and tp!1795504 tp!1795507))))

(declare-fun b!6481209 () Bool)

(declare-fun tp!1795508 () Bool)

(assert (=> b!6481209 (= e!3928412 tp!1795508)))

(assert (=> b!6480081 (= tp!1795420 e!3928412)))

(declare-fun b!6481207 () Bool)

(assert (=> b!6481207 (= e!3928412 tp_is_empty!41967)))

(declare-fun b!6481208 () Bool)

(declare-fun tp!1795505 () Bool)

(declare-fun tp!1795506 () Bool)

(assert (=> b!6481208 (= e!3928412 (and tp!1795505 tp!1795506))))

(assert (= (and b!6480081 ((_ is ElementMatch!16357) (regTwo!33226 r!7292))) b!6481207))

(assert (= (and b!6480081 ((_ is Concat!25202) (regTwo!33226 r!7292))) b!6481208))

(assert (= (and b!6480081 ((_ is Star!16357) (regTwo!33226 r!7292))) b!6481209))

(assert (= (and b!6480081 ((_ is Union!16357) (regTwo!33226 r!7292))) b!6481210))

(declare-fun b!6481218 () Bool)

(declare-fun e!3928418 () Bool)

(declare-fun tp!1795513 () Bool)

(assert (=> b!6481218 (= e!3928418 tp!1795513)))

(declare-fun tp!1795514 () Bool)

(declare-fun b!6481217 () Bool)

(declare-fun e!3928417 () Bool)

(assert (=> b!6481217 (= e!3928417 (and (inv!84139 (h!71696 (t!378998 zl!343))) e!3928418 tp!1795514))))

(assert (=> b!6480079 (= tp!1795417 e!3928417)))

(assert (= b!6481217 b!6481218))

(assert (= (and b!6480079 ((_ is Cons!65248) (t!378998 zl!343))) b!6481217))

(declare-fun m!7269572 () Bool)

(assert (=> b!6481217 m!7269572))

(declare-fun b!6481223 () Bool)

(declare-fun e!3928421 () Bool)

(declare-fun tp!1795519 () Bool)

(declare-fun tp!1795520 () Bool)

(assert (=> b!6481223 (= e!3928421 (and tp!1795519 tp!1795520))))

(assert (=> b!6480090 (= tp!1795419 e!3928421)))

(assert (= (and b!6480090 ((_ is Cons!65247) (exprs!6241 (h!71696 zl!343)))) b!6481223))

(declare-fun b!6481227 () Bool)

(declare-fun e!3928422 () Bool)

(declare-fun tp!1795521 () Bool)

(declare-fun tp!1795524 () Bool)

(assert (=> b!6481227 (= e!3928422 (and tp!1795521 tp!1795524))))

(declare-fun b!6481226 () Bool)

(declare-fun tp!1795525 () Bool)

(assert (=> b!6481226 (= e!3928422 tp!1795525)))

(assert (=> b!6480099 (= tp!1795416 e!3928422)))

(declare-fun b!6481224 () Bool)

(assert (=> b!6481224 (= e!3928422 tp_is_empty!41967)))

(declare-fun b!6481225 () Bool)

(declare-fun tp!1795522 () Bool)

(declare-fun tp!1795523 () Bool)

(assert (=> b!6481225 (= e!3928422 (and tp!1795522 tp!1795523))))

(assert (= (and b!6480099 ((_ is ElementMatch!16357) (reg!16686 r!7292))) b!6481224))

(assert (= (and b!6480099 ((_ is Concat!25202) (reg!16686 r!7292))) b!6481225))

(assert (= (and b!6480099 ((_ is Star!16357) (reg!16686 r!7292))) b!6481226))

(assert (= (and b!6480099 ((_ is Union!16357) (reg!16686 r!7292))) b!6481227))

(declare-fun b!6481231 () Bool)

(declare-fun e!3928423 () Bool)

(declare-fun tp!1795526 () Bool)

(declare-fun tp!1795529 () Bool)

(assert (=> b!6481231 (= e!3928423 (and tp!1795526 tp!1795529))))

(declare-fun b!6481230 () Bool)

(declare-fun tp!1795530 () Bool)

(assert (=> b!6481230 (= e!3928423 tp!1795530)))

(assert (=> b!6480104 (= tp!1795418 e!3928423)))

(declare-fun b!6481228 () Bool)

(assert (=> b!6481228 (= e!3928423 tp_is_empty!41967)))

(declare-fun b!6481229 () Bool)

(declare-fun tp!1795527 () Bool)

(declare-fun tp!1795528 () Bool)

(assert (=> b!6481229 (= e!3928423 (and tp!1795527 tp!1795528))))

(assert (= (and b!6480104 ((_ is ElementMatch!16357) (regOne!33227 r!7292))) b!6481228))

(assert (= (and b!6480104 ((_ is Concat!25202) (regOne!33227 r!7292))) b!6481229))

(assert (= (and b!6480104 ((_ is Star!16357) (regOne!33227 r!7292))) b!6481230))

(assert (= (and b!6480104 ((_ is Union!16357) (regOne!33227 r!7292))) b!6481231))

(declare-fun b!6481235 () Bool)

(declare-fun e!3928424 () Bool)

(declare-fun tp!1795531 () Bool)

(declare-fun tp!1795534 () Bool)

(assert (=> b!6481235 (= e!3928424 (and tp!1795531 tp!1795534))))

(declare-fun b!6481234 () Bool)

(declare-fun tp!1795535 () Bool)

(assert (=> b!6481234 (= e!3928424 tp!1795535)))

(assert (=> b!6480104 (= tp!1795424 e!3928424)))

(declare-fun b!6481232 () Bool)

(assert (=> b!6481232 (= e!3928424 tp_is_empty!41967)))

(declare-fun b!6481233 () Bool)

(declare-fun tp!1795532 () Bool)

(declare-fun tp!1795533 () Bool)

(assert (=> b!6481233 (= e!3928424 (and tp!1795532 tp!1795533))))

(assert (= (and b!6480104 ((_ is ElementMatch!16357) (regTwo!33227 r!7292))) b!6481232))

(assert (= (and b!6480104 ((_ is Concat!25202) (regTwo!33227 r!7292))) b!6481233))

(assert (= (and b!6480104 ((_ is Star!16357) (regTwo!33227 r!7292))) b!6481234))

(assert (= (and b!6480104 ((_ is Union!16357) (regTwo!33227 r!7292))) b!6481235))

(declare-fun b!6481240 () Bool)

(declare-fun e!3928427 () Bool)

(declare-fun tp!1795538 () Bool)

(assert (=> b!6481240 (= e!3928427 (and tp_is_empty!41967 tp!1795538))))

(assert (=> b!6480110 (= tp!1795421 e!3928427)))

(assert (= (and b!6480110 ((_ is Cons!65246) (t!378996 s!2326))) b!6481240))

(declare-fun b!6481241 () Bool)

(declare-fun e!3928428 () Bool)

(declare-fun tp!1795539 () Bool)

(declare-fun tp!1795540 () Bool)

(assert (=> b!6481241 (= e!3928428 (and tp!1795539 tp!1795540))))

(assert (=> b!6480082 (= tp!1795415 e!3928428)))

(assert (= (and b!6480082 ((_ is Cons!65247) (exprs!6241 setElem!44139))) b!6481241))

(declare-fun b_lambda!245497 () Bool)

(assert (= b_lambda!245481 (or b!6480095 b_lambda!245497)))

(declare-fun bs!1644444 () Bool)

(declare-fun d!2033620 () Bool)

(assert (= bs!1644444 (and d!2033620 b!6480095)))

(assert (=> bs!1644444 (= (dynLambda!25919 lambda!358307 lt!2386322) (derivationStepZipperUp!1531 lt!2386322 (h!71694 s!2326)))))

(assert (=> bs!1644444 m!7268418))

(assert (=> d!2033452 d!2033620))

(declare-fun b_lambda!245499 () Bool)

(assert (= b_lambda!245485 (or b!6480095 b_lambda!245499)))

(declare-fun bs!1644445 () Bool)

(declare-fun d!2033622 () Bool)

(assert (= bs!1644445 (and d!2033622 b!6480095)))

(assert (=> bs!1644445 (= (dynLambda!25919 lambda!358307 (h!71696 zl!343)) (derivationStepZipperUp!1531 (h!71696 zl!343) (h!71694 s!2326)))))

(assert (=> bs!1644445 m!7268452))

(assert (=> d!2033470 d!2033622))

(declare-fun b_lambda!245501 () Bool)

(assert (= b_lambda!245483 (or b!6480095 b_lambda!245501)))

(declare-fun bs!1644446 () Bool)

(declare-fun d!2033624 () Bool)

(assert (= bs!1644446 (and d!2033624 b!6480095)))

(assert (=> bs!1644446 (= (dynLambda!25919 lambda!358307 lt!2386300) (derivationStepZipperUp!1531 lt!2386300 (h!71694 s!2326)))))

(assert (=> bs!1644446 m!7268416))

(assert (=> d!2033456 d!2033624))

(declare-fun b_lambda!245503 () Bool)

(assert (= b_lambda!245495 (or b!6480095 b_lambda!245503)))

(declare-fun bs!1644447 () Bool)

(declare-fun d!2033626 () Bool)

(assert (= bs!1644447 (and d!2033626 b!6480095)))

(assert (=> bs!1644447 (= (dynLambda!25919 lambda!358307 lt!2386330) (derivationStepZipperUp!1531 lt!2386330 (h!71694 s!2326)))))

(assert (=> bs!1644447 m!7268470))

(assert (=> d!2033580 d!2033626))

(check-sat (not b!6480842) (not b!6480956) (not d!2033596) (not b!6480490) (not b!6480656) (not d!2033612) (not d!2033582) (not b!6481158) (not b!6481122) (not d!2033384) (not d!2033340) (not b!6480695) (not bm!560916) (not b!6481152) (not b!6480579) (not b!6480601) (not b!6480922) (not bm!560981) (not b!6481102) (not b!6480598) (not b!6480721) (not b!6481079) (not d!2033574) (not d!2033434) (not d!2033510) (not b!6481110) (not d!2033552) (not d!2033602) (not b!6480589) (not d!2033614) (not b!6481107) (not b!6481059) (not b!6480399) (not b!6481144) (not b!6481218) (not b!6480660) (not b!6481149) (not b!6481231) (not b!6481111) (not b!6480692) (not b!6480597) (not b!6481145) (not b!6481113) (not b!6480693) (not b!6480582) (not d!2033558) (not d!2033390) (not b!6480857) (not b!6481105) (not b!6480629) (not b!6481186) (not d!2033608) (not b!6480735) (not b!6480666) (not b!6480622) (not b!6481104) (not bm!560946) (not b!6481177) (not b!6481150) (not b!6481205) (not b!6481234) (not b!6481061) (not d!2033468) (not b!6481223) (not b!6481226) (not d!2033550) (not b!6480314) (not b!6481172) (not d!2033452) (not b!6481163) (not b!6480493) (not b!6480591) (not b!6481069) (not b!6480649) (not b!6480664) (not d!2033422) (not b!6480730) (not b!6480602) (not b!6480919) (not b!6481062) (not bm!560923) (not d!2033396) (not b!6481235) (not bm!560945) (not b!6480858) (not d!2033392) (not d!2033496) (not b!6481103) (not bm!560990) (not b!6480694) (not d!2033618) (not d!2033304) (not d!2033364) (not bm!560979) (not d!2033580) (not b!6481187) (not b!6480350) (not d!2033606) (not d!2033404) (not b!6480632) (not b!6480349) (not b!6480725) (not b!6481082) (not b!6481192) (not d!2033322) (not bm!560932) (not d!2033458) (not d!2033556) (not b!6480405) (not b!6480648) (not d!2033564) (not bm!560994) (not b!6481161) (not b!6480600) (not d!2033534) (not b!6481184) (not b!6480954) (not b_lambda!245501) (not bm!560992) (not bm!560969) (not d!2033508) (not b!6480580) (not b!6480736) (not d!2033488) (not d!2033412) (not b!6481118) (not b_lambda!245503) (not b!6480949) (not d!2033576) (not b!6481117) (not d!2033334) (not b!6480573) (not b!6480953) (not b!6480398) (not b!6480731) (not b!6481089) (not d!2033450) (not d!2033470) (not d!2033402) (not b!6480620) (not b!6481067) (not b!6481225) (not d!2033520) (not b!6481230) (not bm!560986) (not d!2033592) (not b!6480605) (not b!6481057) (not bm!560933) (not b!6481241) (not bm!560939) (not d!2033584) (not d!2033382) (not d!2033342) (not b!6481210) (not b!6480848) (not d!2033504) (not b!6481175) (not b!6480571) (not b!6480583) (not b!6481008) (not bs!1644444) (not b!6481060) (not b!6481173) (not b!6481007) (not d!2033546) (not b!6481170) (not d!2033346) (not d!2033604) (not d!2033328) (not d!2033542) (not d!2033428) (not b!6480628) (not d!2033588) (not d!2033348) (not b!6481153) (not b!6481206) (not b!6481233) (not bm!560973) (not d!2033446) (not b!6480673) (not b!6480997) (not b!6480672) (not bs!1644447) (not d!2033600) (not b!6481114) (not bm!560978) (not b!6481075) (not d!2033554) (not b_lambda!245497) (not d!2033590) (not b!6481109) (not d!2033512) (not b!6481076) (not b!6480659) (not b!6480843) (not d!2033594) (not b!6480726) (not b!6481240) (not bm!560944) (not b!6481217) (not d!2033456) (not b!6480846) (not d!2033598) (not b!6480401) (not b!6481209) (not bs!1644446) (not bm!560935) tp_is_empty!41967 (not bm!560947) (not d!2033492) (not b!6480960) (not b!6480950) (not b!6480955) (not b!6481121) (not b!6480855) (not b!6480720) (not b!6481169) (not b!6480962) (not bm!560971) (not b!6480403) (not bm!560988) (not b!6481058) (not b!6481208) (not bm!560985) (not bm!560914) (not d!2033332) (not b!6480400) (not b!6481204) (not b!6480675) (not d!2033538) (not d!2033562) (not b!6481063) (not bm!560922) (not bm!560936) (not bm!560982) (not d!2033498) (not b!6480998) (not b!6480676) (not b_lambda!245499) (not b!6480696) (not b!6480631) (not d!2033448) (not bm!560993) (not d!2033388) (not b!6481083) (not setNonEmpty!44145) (not b!6481183) (not b!6481227) (not b!6480854) (not b!6481090) (not d!2033616) (not b!6481146) (not bm!560934) (not b!6480806) (not b!6481078) (not b!6481229) (not d!2033420) (not bs!1644445))
(check-sat)
