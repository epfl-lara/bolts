; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!564266 () Bool)

(assert start!564266)

(declare-fun b!5360372 () Bool)

(assert (=> b!5360372 true))

(assert (=> b!5360372 true))

(declare-fun lambda!275992 () Int)

(declare-fun lambda!275991 () Int)

(assert (=> b!5360372 (not (= lambda!275992 lambda!275991))))

(assert (=> b!5360372 true))

(assert (=> b!5360372 true))

(declare-fun b!5360373 () Bool)

(assert (=> b!5360373 true))

(declare-fun bs!1241730 () Bool)

(declare-fun b!5360384 () Bool)

(assert (= bs!1241730 (and b!5360384 b!5360372)))

(declare-fun lambda!275994 () Int)

(declare-datatypes ((C!30400 0))(
  ( (C!30401 (val!24902 Int)) )
))
(declare-datatypes ((Regex!15065 0))(
  ( (ElementMatch!15065 (c!933445 C!30400)) (Concat!23910 (regOne!30642 Regex!15065) (regTwo!30642 Regex!15065)) (EmptyExpr!15065) (Star!15065 (reg!15394 Regex!15065)) (EmptyLang!15065) (Union!15065 (regOne!30643 Regex!15065) (regTwo!30643 Regex!15065)) )
))
(declare-fun lt!2184034 () Regex!15065)

(declare-fun r!7292 () Regex!15065)

(assert (=> bs!1241730 (= (= lt!2184034 (regOne!30642 r!7292)) (= lambda!275994 lambda!275991))))

(assert (=> bs!1241730 (not (= lambda!275994 lambda!275992))))

(assert (=> b!5360384 true))

(assert (=> b!5360384 true))

(assert (=> b!5360384 true))

(declare-fun lambda!275995 () Int)

(assert (=> bs!1241730 (not (= lambda!275995 lambda!275991))))

(assert (=> bs!1241730 (= (= lt!2184034 (regOne!30642 r!7292)) (= lambda!275995 lambda!275992))))

(assert (=> b!5360384 (not (= lambda!275995 lambda!275994))))

(assert (=> b!5360384 true))

(assert (=> b!5360384 true))

(assert (=> b!5360384 true))

(declare-fun b!5360354 () Bool)

(declare-fun res!2274699 () Bool)

(declare-fun e!3326863 () Bool)

(assert (=> b!5360354 (=> res!2274699 e!3326863)))

(declare-fun lt!2184003 () Regex!15065)

(assert (=> b!5360354 (= res!2274699 (not (= lt!2184003 r!7292)))))

(declare-fun b!5360355 () Bool)

(declare-fun e!3326850 () Bool)

(declare-fun e!3326865 () Bool)

(assert (=> b!5360355 (= e!3326850 e!3326865)))

(declare-fun res!2274694 () Bool)

(assert (=> b!5360355 (=> res!2274694 e!3326865)))

(declare-fun lt!2184030 () Bool)

(assert (=> b!5360355 (= res!2274694 (not lt!2184030))))

(declare-fun e!3326862 () Bool)

(assert (=> b!5360355 e!3326862))

(declare-fun res!2274696 () Bool)

(assert (=> b!5360355 (=> (not res!2274696) (not e!3326862))))

(declare-fun lt!2184018 () Regex!15065)

(declare-datatypes ((List!61494 0))(
  ( (Nil!61370) (Cons!61370 (h!67818 C!30400) (t!374715 List!61494)) )
))
(declare-fun s!2326 () List!61494)

(declare-fun matchR!7250 (Regex!15065 List!61494) Bool)

(declare-fun matchRSpec!2168 (Regex!15065 List!61494) Bool)

(assert (=> b!5360355 (= res!2274696 (= (matchR!7250 lt!2184018 s!2326) (matchRSpec!2168 lt!2184018 s!2326)))))

(declare-datatypes ((Unit!153778 0))(
  ( (Unit!153779) )
))
(declare-fun lt!2184028 () Unit!153778)

(declare-fun mainMatchTheorem!2168 (Regex!15065 List!61494) Unit!153778)

(assert (=> b!5360355 (= lt!2184028 (mainMatchTheorem!2168 lt!2184018 s!2326))))

(declare-fun b!5360356 () Bool)

(declare-fun res!2274689 () Bool)

(declare-fun e!3326847 () Bool)

(assert (=> b!5360356 (=> res!2274689 e!3326847)))

(declare-datatypes ((List!61495 0))(
  ( (Nil!61371) (Cons!61371 (h!67819 Regex!15065) (t!374716 List!61495)) )
))
(declare-datatypes ((Context!8898 0))(
  ( (Context!8899 (exprs!4949 List!61495)) )
))
(declare-datatypes ((List!61496 0))(
  ( (Nil!61372) (Cons!61372 (h!67820 Context!8898) (t!374717 List!61496)) )
))
(declare-fun zl!343 () List!61496)

(declare-fun generalisedConcat!734 (List!61495) Regex!15065)

(assert (=> b!5360356 (= res!2274689 (not (= r!7292 (generalisedConcat!734 (exprs!4949 (h!67820 zl!343))))))))

(declare-fun b!5360357 () Bool)

(declare-fun res!2274693 () Bool)

(declare-fun e!3326853 () Bool)

(assert (=> b!5360357 (=> (not res!2274693) (not e!3326853))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8898))

(declare-fun toList!8849 ((InoxSet Context!8898)) List!61496)

(assert (=> b!5360357 (= res!2274693 (= (toList!8849 z!1189) zl!343))))

(declare-fun b!5360358 () Bool)

(declare-fun res!2274692 () Bool)

(assert (=> b!5360358 (=> res!2274692 e!3326847)))

(get-info :version)

(assert (=> b!5360358 (= res!2274692 (or ((_ is EmptyExpr!15065) r!7292) ((_ is EmptyLang!15065) r!7292) ((_ is ElementMatch!15065) r!7292) ((_ is Union!15065) r!7292) (not ((_ is Concat!23910) r!7292))))))

(declare-fun b!5360359 () Bool)

(declare-fun res!2274700 () Bool)

(assert (=> b!5360359 (=> res!2274700 e!3326847)))

(assert (=> b!5360359 (= res!2274700 (not ((_ is Cons!61371) (exprs!4949 (h!67820 zl!343)))))))

(declare-fun setIsEmpty!34693 () Bool)

(declare-fun setRes!34693 () Bool)

(assert (=> setIsEmpty!34693 setRes!34693))

(declare-fun b!5360360 () Bool)

(declare-fun lt!2184024 () Bool)

(assert (=> b!5360360 (= e!3326862 (or (not lt!2184030) lt!2184024))))

(declare-fun b!5360361 () Bool)

(declare-fun res!2274685 () Bool)

(declare-fun e!3326854 () Bool)

(assert (=> b!5360361 (=> res!2274685 e!3326854)))

(declare-fun isEmpty!33343 (List!61495) Bool)

(assert (=> b!5360361 (= res!2274685 (isEmpty!33343 (t!374716 (exprs!4949 (h!67820 zl!343)))))))

(declare-fun b!5360362 () Bool)

(declare-fun e!3326866 () Unit!153778)

(declare-fun Unit!153780 () Unit!153778)

(assert (=> b!5360362 (= e!3326866 Unit!153780)))

(declare-fun lt!2184004 () Unit!153778)

(declare-fun lt!2184020 () (InoxSet Context!8898))

(declare-fun lt!2184005 () (InoxSet Context!8898))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!302 ((InoxSet Context!8898) (InoxSet Context!8898) List!61494) Unit!153778)

(assert (=> b!5360362 (= lt!2184004 (lemmaZipperConcatMatchesSameAsBothZippers!302 lt!2184020 lt!2184005 (t!374715 s!2326)))))

(declare-fun res!2274705 () Bool)

(declare-fun matchZipper!1309 ((InoxSet Context!8898) List!61494) Bool)

(assert (=> b!5360362 (= res!2274705 (matchZipper!1309 lt!2184020 (t!374715 s!2326)))))

(declare-fun e!3326861 () Bool)

(assert (=> b!5360362 (=> res!2274705 e!3326861)))

(assert (=> b!5360362 (= (matchZipper!1309 ((_ map or) lt!2184020 lt!2184005) (t!374715 s!2326)) e!3326861)))

(declare-fun b!5360363 () Bool)

(declare-fun e!3326858 () Bool)

(declare-fun tp!1488401 () Bool)

(declare-fun tp!1488402 () Bool)

(assert (=> b!5360363 (= e!3326858 (and tp!1488401 tp!1488402))))

(declare-fun b!5360364 () Bool)

(declare-fun tp!1488400 () Bool)

(assert (=> b!5360364 (= e!3326858 tp!1488400)))

(declare-fun b!5360365 () Bool)

(declare-fun res!2274697 () Bool)

(assert (=> b!5360365 (=> res!2274697 e!3326847)))

(declare-fun generalisedUnion!994 (List!61495) Regex!15065)

(declare-fun unfocusZipperList!507 (List!61496) List!61495)

(assert (=> b!5360365 (= res!2274697 (not (= r!7292 (generalisedUnion!994 (unfocusZipperList!507 zl!343)))))))

(declare-fun b!5360366 () Bool)

(declare-fun e!3326857 () Bool)

(assert (=> b!5360366 (= e!3326857 e!3326850)))

(declare-fun res!2274707 () Bool)

(assert (=> b!5360366 (=> res!2274707 e!3326850)))

(declare-fun lt!2184011 () Context!8898)

(declare-fun unfocusZipper!807 (List!61496) Regex!15065)

(assert (=> b!5360366 (= res!2274707 (not (= (unfocusZipper!807 (Cons!61372 lt!2184011 Nil!61372)) (reg!15394 (regOne!30642 r!7292)))))))

(declare-fun lambda!275993 () Int)

(declare-fun lt!2184006 () (InoxSet Context!8898))

(declare-fun lt!2184015 () Context!8898)

(declare-fun flatMap!792 ((InoxSet Context!8898) Int) (InoxSet Context!8898))

(declare-fun derivationStepZipperUp!437 (Context!8898 C!30400) (InoxSet Context!8898))

(assert (=> b!5360366 (= (flatMap!792 lt!2184006 lambda!275993) (derivationStepZipperUp!437 lt!2184015 (h!67818 s!2326)))))

(declare-fun lt!2184033 () Unit!153778)

(declare-fun lemmaFlatMapOnSingletonSet!324 ((InoxSet Context!8898) Context!8898 Int) Unit!153778)

(assert (=> b!5360366 (= lt!2184033 (lemmaFlatMapOnSingletonSet!324 lt!2184006 lt!2184015 lambda!275993))))

(declare-fun lt!2184031 () (InoxSet Context!8898))

(assert (=> b!5360366 (= (flatMap!792 lt!2184031 lambda!275993) (derivationStepZipperUp!437 lt!2184011 (h!67818 s!2326)))))

(declare-fun lt!2184012 () Unit!153778)

(assert (=> b!5360366 (= lt!2184012 (lemmaFlatMapOnSingletonSet!324 lt!2184031 lt!2184011 lambda!275993))))

(declare-fun lt!2184019 () (InoxSet Context!8898))

(assert (=> b!5360366 (= lt!2184019 (derivationStepZipperUp!437 lt!2184015 (h!67818 s!2326)))))

(declare-fun lt!2184037 () (InoxSet Context!8898))

(assert (=> b!5360366 (= lt!2184037 (derivationStepZipperUp!437 lt!2184011 (h!67818 s!2326)))))

(assert (=> b!5360366 (= lt!2184006 (store ((as const (Array Context!8898 Bool)) false) lt!2184015 true))))

(assert (=> b!5360366 (= lt!2184031 (store ((as const (Array Context!8898 Bool)) false) lt!2184011 true))))

(assert (=> b!5360366 (= lt!2184011 (Context!8899 (Cons!61371 (reg!15394 (regOne!30642 r!7292)) Nil!61371)))))

(declare-fun b!5360367 () Bool)

(declare-fun e!3326851 () Bool)

(assert (=> b!5360367 (= e!3326851 e!3326857)))

(declare-fun res!2274703 () Bool)

(assert (=> b!5360367 (=> res!2274703 e!3326857)))

(declare-fun lt!2184027 () Context!8898)

(assert (=> b!5360367 (= res!2274703 (not (= (unfocusZipper!807 (Cons!61372 lt!2184027 Nil!61372)) lt!2184018)))))

(declare-fun lt!2184014 () Regex!15065)

(assert (=> b!5360367 (= lt!2184018 (Concat!23910 (reg!15394 (regOne!30642 r!7292)) lt!2184014))))

(declare-fun b!5360368 () Bool)

(declare-fun Unit!153781 () Unit!153778)

(assert (=> b!5360368 (= e!3326866 Unit!153781)))

(declare-fun b!5360369 () Bool)

(declare-fun res!2274691 () Bool)

(declare-fun e!3326852 () Bool)

(assert (=> b!5360369 (=> res!2274691 e!3326852)))

(declare-fun e!3326860 () Bool)

(assert (=> b!5360369 (= res!2274691 e!3326860)))

(declare-fun res!2274701 () Bool)

(assert (=> b!5360369 (=> (not res!2274701) (not e!3326860))))

(assert (=> b!5360369 (= res!2274701 ((_ is Concat!23910) (regOne!30642 r!7292)))))

(declare-fun b!5360370 () Bool)

(declare-fun e!3326855 () Bool)

(assert (=> b!5360370 (= e!3326853 e!3326855)))

(declare-fun res!2274695 () Bool)

(assert (=> b!5360370 (=> (not res!2274695) (not e!3326855))))

(assert (=> b!5360370 (= res!2274695 (= r!7292 lt!2184003))))

(assert (=> b!5360370 (= lt!2184003 (unfocusZipper!807 zl!343))))

(declare-fun b!5360371 () Bool)

(declare-fun res!2274688 () Bool)

(assert (=> b!5360371 (=> res!2274688 e!3326850)))

(assert (=> b!5360371 (= res!2274688 (not (= (unfocusZipper!807 (Cons!61372 lt!2184015 Nil!61372)) lt!2184014)))))

(assert (=> b!5360372 (= e!3326847 e!3326854)))

(declare-fun res!2274704 () Bool)

(assert (=> b!5360372 (=> res!2274704 e!3326854)))

(declare-fun lt!2184029 () Bool)

(assert (=> b!5360372 (= res!2274704 (or (not (= lt!2184030 lt!2184029)) ((_ is Nil!61370) s!2326)))))

(declare-fun Exists!2246 (Int) Bool)

(assert (=> b!5360372 (= (Exists!2246 lambda!275991) (Exists!2246 lambda!275992))))

(declare-fun lt!2184035 () Unit!153778)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!900 (Regex!15065 Regex!15065 List!61494) Unit!153778)

(assert (=> b!5360372 (= lt!2184035 (lemmaExistCutMatchRandMatchRSpecEquivalent!900 (regOne!30642 r!7292) (regTwo!30642 r!7292) s!2326))))

(assert (=> b!5360372 (= lt!2184029 (Exists!2246 lambda!275991))))

(declare-datatypes ((tuple2!64528 0))(
  ( (tuple2!64529 (_1!35567 List!61494) (_2!35567 List!61494)) )
))
(declare-datatypes ((Option!15176 0))(
  ( (None!15175) (Some!15175 (v!51204 tuple2!64528)) )
))
(declare-fun isDefined!11879 (Option!15176) Bool)

(declare-fun findConcatSeparation!1590 (Regex!15065 Regex!15065 List!61494 List!61494 List!61494) Option!15176)

(assert (=> b!5360372 (= lt!2184029 (isDefined!11879 (findConcatSeparation!1590 (regOne!30642 r!7292) (regTwo!30642 r!7292) Nil!61370 s!2326 s!2326)))))

(declare-fun lt!2184022 () Unit!153778)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1354 (Regex!15065 Regex!15065 List!61494) Unit!153778)

(assert (=> b!5360372 (= lt!2184022 (lemmaFindConcatSeparationEquivalentToExists!1354 (regOne!30642 r!7292) (regTwo!30642 r!7292) s!2326))))

(assert (=> b!5360373 (= e!3326854 e!3326852)))

(declare-fun res!2274686 () Bool)

(assert (=> b!5360373 (=> res!2274686 e!3326852)))

(assert (=> b!5360373 (= res!2274686 (or (and ((_ is ElementMatch!15065) (regOne!30642 r!7292)) (= (c!933445 (regOne!30642 r!7292)) (h!67818 s!2326))) ((_ is Union!15065) (regOne!30642 r!7292))))))

(declare-fun lt!2184026 () Unit!153778)

(assert (=> b!5360373 (= lt!2184026 e!3326866)))

(declare-fun c!933444 () Bool)

(declare-fun nullable!5234 (Regex!15065) Bool)

(assert (=> b!5360373 (= c!933444 (nullable!5234 (h!67819 (exprs!4949 (h!67820 zl!343)))))))

(assert (=> b!5360373 (= (flatMap!792 z!1189 lambda!275993) (derivationStepZipperUp!437 (h!67820 zl!343) (h!67818 s!2326)))))

(declare-fun lt!2184016 () Unit!153778)

(assert (=> b!5360373 (= lt!2184016 (lemmaFlatMapOnSingletonSet!324 z!1189 (h!67820 zl!343) lambda!275993))))

(declare-fun lt!2184013 () Context!8898)

(assert (=> b!5360373 (= lt!2184005 (derivationStepZipperUp!437 lt!2184013 (h!67818 s!2326)))))

(declare-fun derivationStepZipperDown!513 (Regex!15065 Context!8898 C!30400) (InoxSet Context!8898))

(assert (=> b!5360373 (= lt!2184020 (derivationStepZipperDown!513 (h!67819 (exprs!4949 (h!67820 zl!343))) lt!2184013 (h!67818 s!2326)))))

(assert (=> b!5360373 (= lt!2184013 (Context!8899 (t!374716 (exprs!4949 (h!67820 zl!343)))))))

(declare-fun lt!2184036 () (InoxSet Context!8898))

(assert (=> b!5360373 (= lt!2184036 (derivationStepZipperUp!437 (Context!8899 (Cons!61371 (h!67819 (exprs!4949 (h!67820 zl!343))) (t!374716 (exprs!4949 (h!67820 zl!343))))) (h!67818 s!2326)))))

(declare-fun b!5360374 () Bool)

(declare-fun tp!1488404 () Bool)

(declare-fun tp!1488396 () Bool)

(assert (=> b!5360374 (= e!3326858 (and tp!1488404 tp!1488396))))

(declare-fun b!5360375 () Bool)

(declare-fun e!3326848 () Bool)

(declare-fun tp!1488398 () Bool)

(assert (=> b!5360375 (= e!3326848 tp!1488398)))

(declare-fun b!5360376 () Bool)

(declare-fun res!2274698 () Bool)

(assert (=> b!5360376 (=> res!2274698 e!3326847)))

(declare-fun isEmpty!33344 (List!61496) Bool)

(assert (=> b!5360376 (= res!2274698 (not (isEmpty!33344 (t!374717 zl!343))))))

(declare-fun b!5360377 () Bool)

(declare-fun e!3326859 () Bool)

(declare-fun tp_is_empty!39383 () Bool)

(declare-fun tp!1488405 () Bool)

(assert (=> b!5360377 (= e!3326859 (and tp_is_empty!39383 tp!1488405))))

(declare-fun b!5360378 () Bool)

(assert (=> b!5360378 (= e!3326860 (nullable!5234 (regOne!30642 (regOne!30642 r!7292))))))

(declare-fun res!2274683 () Bool)

(assert (=> start!564266 (=> (not res!2274683) (not e!3326853))))

(declare-fun validRegex!6801 (Regex!15065) Bool)

(assert (=> start!564266 (= res!2274683 (validRegex!6801 r!7292))))

(assert (=> start!564266 e!3326853))

(assert (=> start!564266 e!3326858))

(declare-fun condSetEmpty!34693 () Bool)

(assert (=> start!564266 (= condSetEmpty!34693 (= z!1189 ((as const (Array Context!8898 Bool)) false)))))

(assert (=> start!564266 setRes!34693))

(declare-fun e!3326849 () Bool)

(assert (=> start!564266 e!3326849))

(assert (=> start!564266 e!3326859))

(declare-fun b!5360379 () Bool)

(declare-fun e!3326856 () Bool)

(declare-fun tp!1488399 () Bool)

(assert (=> b!5360379 (= e!3326856 tp!1488399)))

(declare-fun b!5360380 () Bool)

(assert (=> b!5360380 (= e!3326861 (matchZipper!1309 lt!2184005 (t!374715 s!2326)))))

(declare-fun b!5360381 () Bool)

(declare-fun res!2274706 () Bool)

(assert (=> b!5360381 (=> res!2274706 e!3326863)))

(declare-fun lt!2184038 () (InoxSet Context!8898))

(declare-fun lt!2184032 () (InoxSet Context!8898))

(assert (=> b!5360381 (= res!2274706 (not (= (matchZipper!1309 lt!2184032 s!2326) (matchZipper!1309 lt!2184038 (t!374715 s!2326)))))))

(declare-fun b!5360382 () Bool)

(declare-fun e!3326864 () Bool)

(assert (=> b!5360382 (= e!3326864 e!3326863)))

(declare-fun res!2274687 () Bool)

(assert (=> b!5360382 (=> res!2274687 e!3326863)))

(declare-fun lt!2184009 () (InoxSet Context!8898))

(assert (=> b!5360382 (= res!2274687 (not (= lt!2184038 lt!2184009)))))

(assert (=> b!5360382 (= (flatMap!792 lt!2184032 lambda!275993) (derivationStepZipperUp!437 lt!2184027 (h!67818 s!2326)))))

(declare-fun lt!2184008 () Unit!153778)

(assert (=> b!5360382 (= lt!2184008 (lemmaFlatMapOnSingletonSet!324 lt!2184032 lt!2184027 lambda!275993))))

(declare-fun lt!2184021 () (InoxSet Context!8898))

(assert (=> b!5360382 (= lt!2184021 (derivationStepZipperUp!437 lt!2184027 (h!67818 s!2326)))))

(declare-fun derivationStepZipper!1304 ((InoxSet Context!8898) C!30400) (InoxSet Context!8898))

(assert (=> b!5360382 (= lt!2184038 (derivationStepZipper!1304 lt!2184032 (h!67818 s!2326)))))

(assert (=> b!5360382 (= lt!2184032 (store ((as const (Array Context!8898 Bool)) false) lt!2184027 true))))

(declare-fun lt!2184007 () List!61495)

(assert (=> b!5360382 (= lt!2184027 (Context!8899 (Cons!61371 (reg!15394 (regOne!30642 r!7292)) lt!2184007)))))

(declare-fun b!5360383 () Bool)

(assert (=> b!5360383 (= e!3326855 (not e!3326847))))

(declare-fun res!2274690 () Bool)

(assert (=> b!5360383 (=> res!2274690 e!3326847)))

(assert (=> b!5360383 (= res!2274690 (not ((_ is Cons!61372) zl!343)))))

(assert (=> b!5360383 (= lt!2184030 lt!2184024)))

(assert (=> b!5360383 (= lt!2184024 (matchRSpec!2168 r!7292 s!2326))))

(assert (=> b!5360383 (= lt!2184030 (matchR!7250 r!7292 s!2326))))

(declare-fun lt!2184017 () Unit!153778)

(assert (=> b!5360383 (= lt!2184017 (mainMatchTheorem!2168 r!7292 s!2326))))

(declare-fun lt!2184023 () Bool)

(assert (=> b!5360384 (= e!3326865 lt!2184023)))

(assert (=> b!5360384 (= (Exists!2246 lambda!275994) (Exists!2246 lambda!275995))))

(declare-fun lt!2184025 () Unit!153778)

(assert (=> b!5360384 (= lt!2184025 (lemmaExistCutMatchRandMatchRSpecEquivalent!900 lt!2184034 (regTwo!30642 r!7292) s!2326))))

(assert (=> b!5360384 (= lt!2184023 (Exists!2246 lambda!275994))))

(assert (=> b!5360384 (= lt!2184023 (isDefined!11879 (findConcatSeparation!1590 lt!2184034 (regTwo!30642 r!7292) Nil!61370 s!2326 s!2326)))))

(declare-fun lt!2184010 () Unit!153778)

(assert (=> b!5360384 (= lt!2184010 (lemmaFindConcatSeparationEquivalentToExists!1354 lt!2184034 (regTwo!30642 r!7292) s!2326))))

(declare-fun tp!1488403 () Bool)

(declare-fun b!5360385 () Bool)

(declare-fun inv!80909 (Context!8898) Bool)

(assert (=> b!5360385 (= e!3326849 (and (inv!80909 (h!67820 zl!343)) e!3326856 tp!1488403))))

(declare-fun b!5360386 () Bool)

(assert (=> b!5360386 (= e!3326852 e!3326864)))

(declare-fun res!2274684 () Bool)

(assert (=> b!5360386 (=> res!2274684 e!3326864)))

(assert (=> b!5360386 (= res!2274684 (not (= lt!2184020 lt!2184009)))))

(assert (=> b!5360386 (= lt!2184009 (derivationStepZipperDown!513 (reg!15394 (regOne!30642 r!7292)) lt!2184015 (h!67818 s!2326)))))

(assert (=> b!5360386 (= lt!2184015 (Context!8899 lt!2184007))))

(assert (=> b!5360386 (= lt!2184007 (Cons!61371 lt!2184034 (t!374716 (exprs!4949 (h!67820 zl!343)))))))

(assert (=> b!5360386 (= lt!2184034 (Star!15065 (reg!15394 (regOne!30642 r!7292))))))

(declare-fun setElem!34693 () Context!8898)

(declare-fun tp!1488397 () Bool)

(declare-fun setNonEmpty!34693 () Bool)

(assert (=> setNonEmpty!34693 (= setRes!34693 (and tp!1488397 (inv!80909 setElem!34693) e!3326848))))

(declare-fun setRest!34693 () (InoxSet Context!8898))

(assert (=> setNonEmpty!34693 (= z!1189 ((_ map or) (store ((as const (Array Context!8898 Bool)) false) setElem!34693 true) setRest!34693))))

(declare-fun b!5360387 () Bool)

(assert (=> b!5360387 (= e!3326863 e!3326851)))

(declare-fun res!2274682 () Bool)

(assert (=> b!5360387 (=> res!2274682 e!3326851)))

(assert (=> b!5360387 (= res!2274682 (not (= r!7292 lt!2184014)))))

(assert (=> b!5360387 (= lt!2184014 (Concat!23910 lt!2184034 (regTwo!30642 r!7292)))))

(declare-fun b!5360388 () Bool)

(declare-fun res!2274702 () Bool)

(assert (=> b!5360388 (=> res!2274702 e!3326852)))

(assert (=> b!5360388 (= res!2274702 (or ((_ is Concat!23910) (regOne!30642 r!7292)) (not ((_ is Star!15065) (regOne!30642 r!7292)))))))

(declare-fun b!5360389 () Bool)

(assert (=> b!5360389 (= e!3326858 tp_is_empty!39383)))

(assert (= (and start!564266 res!2274683) b!5360357))

(assert (= (and b!5360357 res!2274693) b!5360370))

(assert (= (and b!5360370 res!2274695) b!5360383))

(assert (= (and b!5360383 (not res!2274690)) b!5360376))

(assert (= (and b!5360376 (not res!2274698)) b!5360356))

(assert (= (and b!5360356 (not res!2274689)) b!5360359))

(assert (= (and b!5360359 (not res!2274700)) b!5360365))

(assert (= (and b!5360365 (not res!2274697)) b!5360358))

(assert (= (and b!5360358 (not res!2274692)) b!5360372))

(assert (= (and b!5360372 (not res!2274704)) b!5360361))

(assert (= (and b!5360361 (not res!2274685)) b!5360373))

(assert (= (and b!5360373 c!933444) b!5360362))

(assert (= (and b!5360373 (not c!933444)) b!5360368))

(assert (= (and b!5360362 (not res!2274705)) b!5360380))

(assert (= (and b!5360373 (not res!2274686)) b!5360369))

(assert (= (and b!5360369 res!2274701) b!5360378))

(assert (= (and b!5360369 (not res!2274691)) b!5360388))

(assert (= (and b!5360388 (not res!2274702)) b!5360386))

(assert (= (and b!5360386 (not res!2274684)) b!5360382))

(assert (= (and b!5360382 (not res!2274687)) b!5360381))

(assert (= (and b!5360381 (not res!2274706)) b!5360354))

(assert (= (and b!5360354 (not res!2274699)) b!5360387))

(assert (= (and b!5360387 (not res!2274682)) b!5360367))

(assert (= (and b!5360367 (not res!2274703)) b!5360366))

(assert (= (and b!5360366 (not res!2274707)) b!5360371))

(assert (= (and b!5360371 (not res!2274688)) b!5360355))

(assert (= (and b!5360355 res!2274696) b!5360360))

(assert (= (and b!5360355 (not res!2274694)) b!5360384))

(assert (= (and start!564266 ((_ is ElementMatch!15065) r!7292)) b!5360389))

(assert (= (and start!564266 ((_ is Concat!23910) r!7292)) b!5360374))

(assert (= (and start!564266 ((_ is Star!15065) r!7292)) b!5360364))

(assert (= (and start!564266 ((_ is Union!15065) r!7292)) b!5360363))

(assert (= (and start!564266 condSetEmpty!34693) setIsEmpty!34693))

(assert (= (and start!564266 (not condSetEmpty!34693)) setNonEmpty!34693))

(assert (= setNonEmpty!34693 b!5360375))

(assert (= b!5360385 b!5360379))

(assert (= (and start!564266 ((_ is Cons!61372) zl!343)) b!5360385))

(assert (= (and start!564266 ((_ is Cons!61370) s!2326)) b!5360377))

(declare-fun m!6389226 () Bool)

(assert (=> b!5360384 m!6389226))

(declare-fun m!6389228 () Bool)

(assert (=> b!5360384 m!6389228))

(assert (=> b!5360384 m!6389228))

(declare-fun m!6389230 () Bool)

(assert (=> b!5360384 m!6389230))

(declare-fun m!6389232 () Bool)

(assert (=> b!5360384 m!6389232))

(declare-fun m!6389234 () Bool)

(assert (=> b!5360384 m!6389234))

(declare-fun m!6389236 () Bool)

(assert (=> b!5360384 m!6389236))

(assert (=> b!5360384 m!6389230))

(declare-fun m!6389238 () Bool)

(assert (=> b!5360370 m!6389238))

(declare-fun m!6389240 () Bool)

(assert (=> b!5360381 m!6389240))

(declare-fun m!6389242 () Bool)

(assert (=> b!5360381 m!6389242))

(declare-fun m!6389244 () Bool)

(assert (=> b!5360380 m!6389244))

(declare-fun m!6389246 () Bool)

(assert (=> b!5360367 m!6389246))

(declare-fun m!6389248 () Bool)

(assert (=> b!5360365 m!6389248))

(assert (=> b!5360365 m!6389248))

(declare-fun m!6389250 () Bool)

(assert (=> b!5360365 m!6389250))

(declare-fun m!6389252 () Bool)

(assert (=> b!5360357 m!6389252))

(declare-fun m!6389254 () Bool)

(assert (=> b!5360385 m!6389254))

(declare-fun m!6389256 () Bool)

(assert (=> b!5360361 m!6389256))

(declare-fun m!6389258 () Bool)

(assert (=> b!5360362 m!6389258))

(declare-fun m!6389260 () Bool)

(assert (=> b!5360362 m!6389260))

(declare-fun m!6389262 () Bool)

(assert (=> b!5360362 m!6389262))

(declare-fun m!6389264 () Bool)

(assert (=> b!5360373 m!6389264))

(declare-fun m!6389266 () Bool)

(assert (=> b!5360373 m!6389266))

(declare-fun m!6389268 () Bool)

(assert (=> b!5360373 m!6389268))

(declare-fun m!6389270 () Bool)

(assert (=> b!5360373 m!6389270))

(declare-fun m!6389272 () Bool)

(assert (=> b!5360373 m!6389272))

(declare-fun m!6389274 () Bool)

(assert (=> b!5360373 m!6389274))

(declare-fun m!6389276 () Bool)

(assert (=> b!5360373 m!6389276))

(declare-fun m!6389278 () Bool)

(assert (=> b!5360366 m!6389278))

(declare-fun m!6389280 () Bool)

(assert (=> b!5360366 m!6389280))

(declare-fun m!6389282 () Bool)

(assert (=> b!5360366 m!6389282))

(declare-fun m!6389284 () Bool)

(assert (=> b!5360366 m!6389284))

(declare-fun m!6389286 () Bool)

(assert (=> b!5360366 m!6389286))

(declare-fun m!6389288 () Bool)

(assert (=> b!5360366 m!6389288))

(declare-fun m!6389290 () Bool)

(assert (=> b!5360366 m!6389290))

(declare-fun m!6389292 () Bool)

(assert (=> b!5360366 m!6389292))

(declare-fun m!6389294 () Bool)

(assert (=> b!5360366 m!6389294))

(declare-fun m!6389296 () Bool)

(assert (=> b!5360371 m!6389296))

(declare-fun m!6389298 () Bool)

(assert (=> b!5360355 m!6389298))

(declare-fun m!6389300 () Bool)

(assert (=> b!5360355 m!6389300))

(declare-fun m!6389302 () Bool)

(assert (=> b!5360355 m!6389302))

(declare-fun m!6389304 () Bool)

(assert (=> setNonEmpty!34693 m!6389304))

(declare-fun m!6389306 () Bool)

(assert (=> b!5360383 m!6389306))

(declare-fun m!6389308 () Bool)

(assert (=> b!5360383 m!6389308))

(declare-fun m!6389310 () Bool)

(assert (=> b!5360383 m!6389310))

(declare-fun m!6389312 () Bool)

(assert (=> b!5360382 m!6389312))

(declare-fun m!6389314 () Bool)

(assert (=> b!5360382 m!6389314))

(declare-fun m!6389316 () Bool)

(assert (=> b!5360382 m!6389316))

(declare-fun m!6389318 () Bool)

(assert (=> b!5360382 m!6389318))

(declare-fun m!6389320 () Bool)

(assert (=> b!5360382 m!6389320))

(declare-fun m!6389322 () Bool)

(assert (=> start!564266 m!6389322))

(declare-fun m!6389324 () Bool)

(assert (=> b!5360376 m!6389324))

(declare-fun m!6389326 () Bool)

(assert (=> b!5360386 m!6389326))

(declare-fun m!6389328 () Bool)

(assert (=> b!5360378 m!6389328))

(declare-fun m!6389330 () Bool)

(assert (=> b!5360372 m!6389330))

(declare-fun m!6389332 () Bool)

(assert (=> b!5360372 m!6389332))

(declare-fun m!6389334 () Bool)

(assert (=> b!5360372 m!6389334))

(assert (=> b!5360372 m!6389334))

(declare-fun m!6389336 () Bool)

(assert (=> b!5360372 m!6389336))

(declare-fun m!6389338 () Bool)

(assert (=> b!5360372 m!6389338))

(assert (=> b!5360372 m!6389330))

(declare-fun m!6389340 () Bool)

(assert (=> b!5360372 m!6389340))

(declare-fun m!6389342 () Bool)

(assert (=> b!5360356 m!6389342))

(check-sat (not b!5360380) (not b!5360372) (not b!5360376) (not b!5360384) (not b!5360371) (not b!5360378) (not b!5360373) (not b!5360379) (not b!5360377) (not b!5360366) (not b!5360356) (not b!5360370) (not b!5360382) (not start!564266) (not b!5360386) (not b!5360367) (not setNonEmpty!34693) (not b!5360364) (not b!5360381) (not b!5360361) (not b!5360363) tp_is_empty!39383 (not b!5360385) (not b!5360355) (not b!5360375) (not b!5360374) (not b!5360357) (not b!5360383) (not b!5360365) (not b!5360362))
(check-sat)
