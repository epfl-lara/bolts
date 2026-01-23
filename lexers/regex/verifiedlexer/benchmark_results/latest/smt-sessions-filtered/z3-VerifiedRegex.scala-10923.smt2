; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565250 () Bool)

(assert start!565250)

(declare-fun b!5373322 () Bool)

(assert (=> b!5373322 true))

(assert (=> b!5373322 true))

(declare-fun lambda!277442 () Int)

(declare-fun lambda!277441 () Int)

(assert (=> b!5373322 (not (= lambda!277442 lambda!277441))))

(assert (=> b!5373322 true))

(assert (=> b!5373322 true))

(declare-fun b!5373321 () Bool)

(assert (=> b!5373321 true))

(declare-fun bs!1244000 () Bool)

(declare-fun b!5373291 () Bool)

(assert (= bs!1244000 (and b!5373291 b!5373322)))

(declare-datatypes ((C!30456 0))(
  ( (C!30457 (val!24930 Int)) )
))
(declare-datatypes ((Regex!15093 0))(
  ( (ElementMatch!15093 (c!936269 C!30456)) (Concat!23938 (regOne!30698 Regex!15093) (regTwo!30698 Regex!15093)) (EmptyExpr!15093) (Star!15093 (reg!15422 Regex!15093)) (EmptyLang!15093) (Union!15093 (regOne!30699 Regex!15093) (regTwo!30699 Regex!15093)) )
))
(declare-fun r!7292 () Regex!15093)

(declare-fun lambda!277444 () Int)

(declare-fun lt!2188392 () Regex!15093)

(assert (=> bs!1244000 (= (= lt!2188392 (regOne!30698 r!7292)) (= lambda!277444 lambda!277441))))

(assert (=> bs!1244000 (not (= lambda!277444 lambda!277442))))

(assert (=> b!5373291 true))

(assert (=> b!5373291 true))

(assert (=> b!5373291 true))

(declare-fun lambda!277445 () Int)

(assert (=> bs!1244000 (not (= lambda!277445 lambda!277441))))

(assert (=> bs!1244000 (= (= lt!2188392 (regOne!30698 r!7292)) (= lambda!277445 lambda!277442))))

(assert (=> b!5373291 (not (= lambda!277445 lambda!277444))))

(assert (=> b!5373291 true))

(assert (=> b!5373291 true))

(assert (=> b!5373291 true))

(declare-fun bs!1244001 () Bool)

(declare-fun b!5373293 () Bool)

(assert (= bs!1244001 (and b!5373293 b!5373322)))

(declare-datatypes ((List!61578 0))(
  ( (Nil!61454) (Cons!61454 (h!67902 C!30456) (t!374801 List!61578)) )
))
(declare-fun s!2326 () List!61578)

(declare-fun lambda!277446 () Int)

(declare-datatypes ((tuple2!64584 0))(
  ( (tuple2!64585 (_1!35595 List!61578) (_2!35595 List!61578)) )
))
(declare-fun lt!2188389 () tuple2!64584)

(assert (=> bs!1244001 (= (and (= (_1!35595 lt!2188389) s!2326) (= (reg!15422 (regOne!30698 r!7292)) (regOne!30698 r!7292)) (= lt!2188392 (regTwo!30698 r!7292))) (= lambda!277446 lambda!277441))))

(assert (=> bs!1244001 (not (= lambda!277446 lambda!277442))))

(declare-fun bs!1244002 () Bool)

(assert (= bs!1244002 (and b!5373293 b!5373291)))

(assert (=> bs!1244002 (= (and (= (_1!35595 lt!2188389) s!2326) (= (reg!15422 (regOne!30698 r!7292)) lt!2188392) (= lt!2188392 (regTwo!30698 r!7292))) (= lambda!277446 lambda!277444))))

(assert (=> bs!1244002 (not (= lambda!277446 lambda!277445))))

(assert (=> b!5373293 true))

(assert (=> b!5373293 true))

(assert (=> b!5373293 true))

(declare-fun lambda!277447 () Int)

(assert (=> bs!1244001 (not (= lambda!277447 lambda!277441))))

(assert (=> b!5373293 (not (= lambda!277447 lambda!277446))))

(assert (=> bs!1244002 (not (= lambda!277447 lambda!277444))))

(assert (=> bs!1244001 (not (= lambda!277447 lambda!277442))))

(assert (=> bs!1244002 (not (= lambda!277447 lambda!277445))))

(assert (=> b!5373293 true))

(assert (=> b!5373293 true))

(assert (=> b!5373293 true))

(declare-fun b!5373286 () Bool)

(declare-fun res!2280877 () Bool)

(declare-fun e!3333924 () Bool)

(assert (=> b!5373286 (=> res!2280877 e!3333924)))

(declare-fun lt!2188391 () Regex!15093)

(assert (=> b!5373286 (= res!2280877 (not (= lt!2188391 r!7292)))))

(declare-fun b!5373287 () Bool)

(declare-fun res!2280870 () Bool)

(declare-fun e!3333920 () Bool)

(assert (=> b!5373287 (=> res!2280870 e!3333920)))

(declare-datatypes ((List!61579 0))(
  ( (Nil!61455) (Cons!61455 (h!67903 Regex!15093) (t!374802 List!61579)) )
))
(declare-datatypes ((Context!8954 0))(
  ( (Context!8955 (exprs!4977 List!61579)) )
))
(declare-datatypes ((List!61580 0))(
  ( (Nil!61456) (Cons!61456 (h!67904 Context!8954) (t!374803 List!61580)) )
))
(declare-fun zl!343 () List!61580)

(declare-fun generalisedConcat!762 (List!61579) Regex!15093)

(assert (=> b!5373287 (= res!2280870 (not (= r!7292 (generalisedConcat!762 (exprs!4977 (h!67904 zl!343))))))))

(declare-fun b!5373288 () Bool)

(declare-fun e!3333912 () Bool)

(declare-fun e!3333917 () Bool)

(assert (=> b!5373288 (= e!3333912 e!3333917)))

(declare-fun res!2280878 () Bool)

(assert (=> b!5373288 (=> res!2280878 e!3333917)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2188407 () (InoxSet Context!8954))

(declare-fun lt!2188394 () (InoxSet Context!8954))

(assert (=> b!5373288 (= res!2280878 (not (= lt!2188407 lt!2188394)))))

(declare-fun lt!2188388 () Context!8954)

(declare-fun derivationStepZipperDown!541 (Regex!15093 Context!8954 C!30456) (InoxSet Context!8954))

(assert (=> b!5373288 (= lt!2188394 (derivationStepZipperDown!541 (reg!15422 (regOne!30698 r!7292)) lt!2188388 (h!67902 s!2326)))))

(declare-fun lt!2188413 () List!61579)

(assert (=> b!5373288 (= lt!2188388 (Context!8955 lt!2188413))))

(assert (=> b!5373288 (= lt!2188413 (Cons!61455 lt!2188392 (t!374802 (exprs!4977 (h!67904 zl!343)))))))

(assert (=> b!5373288 (= lt!2188392 (Star!15093 (reg!15422 (regOne!30698 r!7292))))))

(declare-fun b!5373289 () Bool)

(declare-fun res!2280853 () Bool)

(assert (=> b!5373289 (=> res!2280853 e!3333912)))

(declare-fun e!3333918 () Bool)

(assert (=> b!5373289 (= res!2280853 e!3333918)))

(declare-fun res!2280855 () Bool)

(assert (=> b!5373289 (=> (not res!2280855) (not e!3333918))))

(get-info :version)

(assert (=> b!5373289 (= res!2280855 ((_ is Concat!23938) (regOne!30698 r!7292)))))

(declare-fun b!5373290 () Bool)

(declare-datatypes ((Unit!153890 0))(
  ( (Unit!153891) )
))
(declare-fun e!3333930 () Unit!153890)

(declare-fun Unit!153892 () Unit!153890)

(assert (=> b!5373290 (= e!3333930 Unit!153892)))

(declare-fun lt!2188414 () (InoxSet Context!8954))

(declare-fun lt!2188404 () Unit!153890)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!330 ((InoxSet Context!8954) (InoxSet Context!8954) List!61578) Unit!153890)

(assert (=> b!5373290 (= lt!2188404 (lemmaZipperConcatMatchesSameAsBothZippers!330 lt!2188407 lt!2188414 (t!374801 s!2326)))))

(declare-fun res!2280872 () Bool)

(declare-fun matchZipper!1337 ((InoxSet Context!8954) List!61578) Bool)

(assert (=> b!5373290 (= res!2280872 (matchZipper!1337 lt!2188407 (t!374801 s!2326)))))

(declare-fun e!3333927 () Bool)

(assert (=> b!5373290 (=> res!2280872 e!3333927)))

(assert (=> b!5373290 (= (matchZipper!1337 ((_ map or) lt!2188407 lt!2188414) (t!374801 s!2326)) e!3333927)))

(declare-fun e!3333919 () Bool)

(declare-fun e!3333932 () Bool)

(assert (=> b!5373291 (= e!3333919 e!3333932)))

(declare-fun res!2280876 () Bool)

(assert (=> b!5373291 (=> res!2280876 e!3333932)))

(declare-fun ++!13396 (List!61578 List!61578) List!61578)

(assert (=> b!5373291 (= res!2280876 (not (= (++!13396 (_1!35595 lt!2188389) (_2!35595 lt!2188389)) s!2326)))))

(declare-datatypes ((Option!15204 0))(
  ( (None!15203) (Some!15203 (v!51232 tuple2!64584)) )
))
(declare-fun lt!2188384 () Option!15204)

(declare-fun get!21148 (Option!15204) tuple2!64584)

(assert (=> b!5373291 (= lt!2188389 (get!21148 lt!2188384))))

(declare-fun Exists!2274 (Int) Bool)

(assert (=> b!5373291 (= (Exists!2274 lambda!277444) (Exists!2274 lambda!277445))))

(declare-fun lt!2188402 () Unit!153890)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!928 (Regex!15093 Regex!15093 List!61578) Unit!153890)

(assert (=> b!5373291 (= lt!2188402 (lemmaExistCutMatchRandMatchRSpecEquivalent!928 lt!2188392 (regTwo!30698 r!7292) s!2326))))

(declare-fun isDefined!11907 (Option!15204) Bool)

(assert (=> b!5373291 (= (isDefined!11907 lt!2188384) (Exists!2274 lambda!277444))))

(declare-fun findConcatSeparation!1618 (Regex!15093 Regex!15093 List!61578 List!61578 List!61578) Option!15204)

(assert (=> b!5373291 (= lt!2188384 (findConcatSeparation!1618 lt!2188392 (regTwo!30698 r!7292) Nil!61454 s!2326 s!2326))))

(declare-fun lt!2188382 () Unit!153890)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1382 (Regex!15093 Regex!15093 List!61578) Unit!153890)

(assert (=> b!5373291 (= lt!2188382 (lemmaFindConcatSeparationEquivalentToExists!1382 lt!2188392 (regTwo!30698 r!7292) s!2326))))

(declare-fun setRes!34835 () Bool)

(declare-fun setElem!34835 () Context!8954)

(declare-fun e!3333916 () Bool)

(declare-fun setNonEmpty!34835 () Bool)

(declare-fun tp!1490384 () Bool)

(declare-fun inv!80979 (Context!8954) Bool)

(assert (=> setNonEmpty!34835 (= setRes!34835 (and tp!1490384 (inv!80979 setElem!34835) e!3333916))))

(declare-fun z!1189 () (InoxSet Context!8954))

(declare-fun setRest!34835 () (InoxSet Context!8954))

(assert (=> setNonEmpty!34835 (= z!1189 ((_ map or) (store ((as const (Array Context!8954 Bool)) false) setElem!34835 true) setRest!34835))))

(declare-fun b!5373292 () Bool)

(declare-fun e!3333915 () Bool)

(declare-fun lt!2188419 () Bool)

(declare-fun lt!2188410 () Bool)

(assert (=> b!5373292 (= e!3333915 (or (not lt!2188419) lt!2188410))))

(assert (=> b!5373293 (= e!3333932 true)))

(assert (=> b!5373293 (= (Exists!2274 lambda!277446) (Exists!2274 lambda!277447))))

(declare-fun lt!2188417 () Unit!153890)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!358 (Regex!15093 List!61578) Unit!153890)

(assert (=> b!5373293 (= lt!2188417 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!358 (reg!15422 (regOne!30698 r!7292)) (_1!35595 lt!2188389)))))

(assert (=> b!5373293 (= (isDefined!11907 (findConcatSeparation!1618 (reg!15422 (regOne!30698 r!7292)) lt!2188392 Nil!61454 (_1!35595 lt!2188389) (_1!35595 lt!2188389))) (Exists!2274 lambda!277446))))

(declare-fun lt!2188409 () Unit!153890)

(assert (=> b!5373293 (= lt!2188409 (lemmaFindConcatSeparationEquivalentToExists!1382 (reg!15422 (regOne!30698 r!7292)) lt!2188392 (_1!35595 lt!2188389)))))

(declare-fun matchRSpec!2196 (Regex!15093 List!61578) Bool)

(assert (=> b!5373293 (matchRSpec!2196 lt!2188392 (_1!35595 lt!2188389))))

(declare-fun lt!2188405 () Unit!153890)

(declare-fun mainMatchTheorem!2196 (Regex!15093 List!61578) Unit!153890)

(assert (=> b!5373293 (= lt!2188405 (mainMatchTheorem!2196 lt!2188392 (_1!35595 lt!2188389)))))

(declare-fun b!5373294 () Bool)

(declare-fun res!2280862 () Bool)

(declare-fun e!3333923 () Bool)

(assert (=> b!5373294 (=> res!2280862 e!3333923)))

(declare-fun isEmpty!33436 (List!61579) Bool)

(assert (=> b!5373294 (= res!2280862 (isEmpty!33436 (t!374802 (exprs!4977 (h!67904 zl!343)))))))

(declare-fun res!2280869 () Bool)

(declare-fun e!3333922 () Bool)

(assert (=> start!565250 (=> (not res!2280869) (not e!3333922))))

(declare-fun validRegex!6829 (Regex!15093) Bool)

(assert (=> start!565250 (= res!2280869 (validRegex!6829 r!7292))))

(assert (=> start!565250 e!3333922))

(declare-fun e!3333931 () Bool)

(assert (=> start!565250 e!3333931))

(declare-fun condSetEmpty!34835 () Bool)

(assert (=> start!565250 (= condSetEmpty!34835 (= z!1189 ((as const (Array Context!8954 Bool)) false)))))

(assert (=> start!565250 setRes!34835))

(declare-fun e!3333914 () Bool)

(assert (=> start!565250 e!3333914))

(declare-fun e!3333913 () Bool)

(assert (=> start!565250 e!3333913))

(declare-fun b!5373295 () Bool)

(declare-fun res!2280868 () Bool)

(assert (=> b!5373295 (=> res!2280868 e!3333920)))

(assert (=> b!5373295 (= res!2280868 (not ((_ is Cons!61455) (exprs!4977 (h!67904 zl!343)))))))

(declare-fun b!5373296 () Bool)

(declare-fun res!2280864 () Bool)

(assert (=> b!5373296 (=> (not res!2280864) (not e!3333922))))

(declare-fun toList!8877 ((InoxSet Context!8954)) List!61580)

(assert (=> b!5373296 (= res!2280864 (= (toList!8877 z!1189) zl!343))))

(declare-fun b!5373297 () Bool)

(declare-fun e!3333928 () Bool)

(assert (=> b!5373297 (= e!3333924 e!3333928)))

(declare-fun res!2280866 () Bool)

(assert (=> b!5373297 (=> res!2280866 e!3333928)))

(declare-fun lt!2188403 () Regex!15093)

(assert (=> b!5373297 (= res!2280866 (not (= r!7292 lt!2188403)))))

(assert (=> b!5373297 (= lt!2188403 (Concat!23938 lt!2188392 (regTwo!30698 r!7292)))))

(declare-fun b!5373298 () Bool)

(declare-fun tp!1490389 () Bool)

(assert (=> b!5373298 (= e!3333916 tp!1490389)))

(declare-fun b!5373299 () Bool)

(declare-fun res!2280874 () Bool)

(assert (=> b!5373299 (=> res!2280874 e!3333932)))

(declare-fun isEmpty!33437 (List!61578) Bool)

(assert (=> b!5373299 (= res!2280874 (isEmpty!33437 (_1!35595 lt!2188389)))))

(declare-fun b!5373300 () Bool)

(declare-fun e!3333925 () Bool)

(declare-fun e!3333929 () Bool)

(assert (=> b!5373300 (= e!3333925 e!3333929)))

(declare-fun res!2280879 () Bool)

(assert (=> b!5373300 (=> res!2280879 e!3333929)))

(declare-fun lt!2188393 () Context!8954)

(declare-fun unfocusZipper!835 (List!61580) Regex!15093)

(assert (=> b!5373300 (= res!2280879 (not (= (unfocusZipper!835 (Cons!61456 lt!2188393 Nil!61456)) (reg!15422 (regOne!30698 r!7292)))))))

(declare-fun lambda!277443 () Int)

(declare-fun lt!2188397 () (InoxSet Context!8954))

(declare-fun flatMap!820 ((InoxSet Context!8954) Int) (InoxSet Context!8954))

(declare-fun derivationStepZipperUp!465 (Context!8954 C!30456) (InoxSet Context!8954))

(assert (=> b!5373300 (= (flatMap!820 lt!2188397 lambda!277443) (derivationStepZipperUp!465 lt!2188388 (h!67902 s!2326)))))

(declare-fun lt!2188408 () Unit!153890)

(declare-fun lemmaFlatMapOnSingletonSet!352 ((InoxSet Context!8954) Context!8954 Int) Unit!153890)

(assert (=> b!5373300 (= lt!2188408 (lemmaFlatMapOnSingletonSet!352 lt!2188397 lt!2188388 lambda!277443))))

(declare-fun lt!2188411 () (InoxSet Context!8954))

(assert (=> b!5373300 (= (flatMap!820 lt!2188411 lambda!277443) (derivationStepZipperUp!465 lt!2188393 (h!67902 s!2326)))))

(declare-fun lt!2188420 () Unit!153890)

(assert (=> b!5373300 (= lt!2188420 (lemmaFlatMapOnSingletonSet!352 lt!2188411 lt!2188393 lambda!277443))))

(declare-fun lt!2188398 () (InoxSet Context!8954))

(assert (=> b!5373300 (= lt!2188398 (derivationStepZipperUp!465 lt!2188388 (h!67902 s!2326)))))

(declare-fun lt!2188415 () (InoxSet Context!8954))

(assert (=> b!5373300 (= lt!2188415 (derivationStepZipperUp!465 lt!2188393 (h!67902 s!2326)))))

(assert (=> b!5373300 (= lt!2188397 (store ((as const (Array Context!8954 Bool)) false) lt!2188388 true))))

(assert (=> b!5373300 (= lt!2188411 (store ((as const (Array Context!8954 Bool)) false) lt!2188393 true))))

(assert (=> b!5373300 (= lt!2188393 (Context!8955 (Cons!61455 (reg!15422 (regOne!30698 r!7292)) Nil!61455)))))

(declare-fun b!5373301 () Bool)

(assert (=> b!5373301 (= e!3333917 e!3333924)))

(declare-fun res!2280858 () Bool)

(assert (=> b!5373301 (=> res!2280858 e!3333924)))

(declare-fun lt!2188381 () (InoxSet Context!8954))

(assert (=> b!5373301 (= res!2280858 (not (= lt!2188381 lt!2188394)))))

(declare-fun lt!2188412 () (InoxSet Context!8954))

(declare-fun lt!2188387 () Context!8954)

(assert (=> b!5373301 (= (flatMap!820 lt!2188412 lambda!277443) (derivationStepZipperUp!465 lt!2188387 (h!67902 s!2326)))))

(declare-fun lt!2188418 () Unit!153890)

(assert (=> b!5373301 (= lt!2188418 (lemmaFlatMapOnSingletonSet!352 lt!2188412 lt!2188387 lambda!277443))))

(declare-fun lt!2188401 () (InoxSet Context!8954))

(assert (=> b!5373301 (= lt!2188401 (derivationStepZipperUp!465 lt!2188387 (h!67902 s!2326)))))

(declare-fun derivationStepZipper!1332 ((InoxSet Context!8954) C!30456) (InoxSet Context!8954))

(assert (=> b!5373301 (= lt!2188381 (derivationStepZipper!1332 lt!2188412 (h!67902 s!2326)))))

(assert (=> b!5373301 (= lt!2188412 (store ((as const (Array Context!8954 Bool)) false) lt!2188387 true))))

(assert (=> b!5373301 (= lt!2188387 (Context!8955 (Cons!61455 (reg!15422 (regOne!30698 r!7292)) lt!2188413)))))

(declare-fun b!5373302 () Bool)

(declare-fun res!2280865 () Bool)

(assert (=> b!5373302 (=> res!2280865 e!3333924)))

(assert (=> b!5373302 (= res!2280865 (not (= (matchZipper!1337 lt!2188412 s!2326) (matchZipper!1337 lt!2188381 (t!374801 s!2326)))))))

(declare-fun b!5373303 () Bool)

(declare-fun e!3333921 () Bool)

(declare-fun tp!1490392 () Bool)

(assert (=> b!5373303 (= e!3333921 tp!1490392)))

(declare-fun b!5373304 () Bool)

(declare-fun res!2280867 () Bool)

(assert (=> b!5373304 (=> res!2280867 e!3333920)))

(declare-fun isEmpty!33438 (List!61580) Bool)

(assert (=> b!5373304 (= res!2280867 (not (isEmpty!33438 (t!374803 zl!343))))))

(declare-fun b!5373305 () Bool)

(declare-fun tp!1490391 () Bool)

(declare-fun tp!1490387 () Bool)

(assert (=> b!5373305 (= e!3333931 (and tp!1490391 tp!1490387))))

(declare-fun b!5373306 () Bool)

(declare-fun tp!1490393 () Bool)

(assert (=> b!5373306 (= e!3333931 tp!1490393)))

(declare-fun b!5373307 () Bool)

(declare-fun e!3333926 () Bool)

(assert (=> b!5373307 (= e!3333922 e!3333926)))

(declare-fun res!2280850 () Bool)

(assert (=> b!5373307 (=> (not res!2280850) (not e!3333926))))

(assert (=> b!5373307 (= res!2280850 (= r!7292 lt!2188391))))

(assert (=> b!5373307 (= lt!2188391 (unfocusZipper!835 zl!343))))

(declare-fun b!5373308 () Bool)

(assert (=> b!5373308 (= e!3333929 e!3333919)))

(declare-fun res!2280859 () Bool)

(assert (=> b!5373308 (=> res!2280859 e!3333919)))

(assert (=> b!5373308 (= res!2280859 (not lt!2188419))))

(assert (=> b!5373308 e!3333915))

(declare-fun res!2280860 () Bool)

(assert (=> b!5373308 (=> (not res!2280860) (not e!3333915))))

(declare-fun lt!2188383 () Regex!15093)

(declare-fun matchR!7278 (Regex!15093 List!61578) Bool)

(assert (=> b!5373308 (= res!2280860 (= (matchR!7278 lt!2188383 s!2326) (matchRSpec!2196 lt!2188383 s!2326)))))

(declare-fun lt!2188396 () Unit!153890)

(assert (=> b!5373308 (= lt!2188396 (mainMatchTheorem!2196 lt!2188383 s!2326))))

(declare-fun b!5373309 () Bool)

(declare-fun nullable!5262 (Regex!15093) Bool)

(assert (=> b!5373309 (= e!3333918 (nullable!5262 (regOne!30698 (regOne!30698 r!7292))))))

(declare-fun setIsEmpty!34835 () Bool)

(assert (=> setIsEmpty!34835 setRes!34835))

(declare-fun tp!1490388 () Bool)

(declare-fun b!5373310 () Bool)

(assert (=> b!5373310 (= e!3333914 (and (inv!80979 (h!67904 zl!343)) e!3333921 tp!1490388))))

(declare-fun b!5373311 () Bool)

(declare-fun tp_is_empty!39439 () Bool)

(declare-fun tp!1490390 () Bool)

(assert (=> b!5373311 (= e!3333913 (and tp_is_empty!39439 tp!1490390))))

(declare-fun b!5373312 () Bool)

(declare-fun res!2280857 () Bool)

(assert (=> b!5373312 (=> res!2280857 e!3333920)))

(assert (=> b!5373312 (= res!2280857 (or ((_ is EmptyExpr!15093) r!7292) ((_ is EmptyLang!15093) r!7292) ((_ is ElementMatch!15093) r!7292) ((_ is Union!15093) r!7292) (not ((_ is Concat!23938) r!7292))))))

(declare-fun b!5373313 () Bool)

(assert (=> b!5373313 (= e!3333926 (not e!3333920))))

(declare-fun res!2280851 () Bool)

(assert (=> b!5373313 (=> res!2280851 e!3333920)))

(assert (=> b!5373313 (= res!2280851 (not ((_ is Cons!61456) zl!343)))))

(assert (=> b!5373313 (= lt!2188419 lt!2188410)))

(assert (=> b!5373313 (= lt!2188410 (matchRSpec!2196 r!7292 s!2326))))

(assert (=> b!5373313 (= lt!2188419 (matchR!7278 r!7292 s!2326))))

(declare-fun lt!2188416 () Unit!153890)

(assert (=> b!5373313 (= lt!2188416 (mainMatchTheorem!2196 r!7292 s!2326))))

(declare-fun b!5373314 () Bool)

(declare-fun res!2280875 () Bool)

(assert (=> b!5373314 (=> res!2280875 e!3333920)))

(declare-fun generalisedUnion!1022 (List!61579) Regex!15093)

(declare-fun unfocusZipperList!535 (List!61580) List!61579)

(assert (=> b!5373314 (= res!2280875 (not (= r!7292 (generalisedUnion!1022 (unfocusZipperList!535 zl!343)))))))

(declare-fun b!5373315 () Bool)

(assert (=> b!5373315 (= e!3333928 e!3333925)))

(declare-fun res!2280854 () Bool)

(assert (=> b!5373315 (=> res!2280854 e!3333925)))

(assert (=> b!5373315 (= res!2280854 (not (= (unfocusZipper!835 (Cons!61456 lt!2188387 Nil!61456)) lt!2188383)))))

(assert (=> b!5373315 (= lt!2188383 (Concat!23938 (reg!15422 (regOne!30698 r!7292)) lt!2188403))))

(declare-fun b!5373316 () Bool)

(declare-fun res!2280863 () Bool)

(assert (=> b!5373316 (=> res!2280863 e!3333932)))

(assert (=> b!5373316 (= res!2280863 (not (matchR!7278 lt!2188392 (_1!35595 lt!2188389))))))

(declare-fun b!5373317 () Bool)

(declare-fun res!2280873 () Bool)

(assert (=> b!5373317 (=> res!2280873 e!3333932)))

(assert (=> b!5373317 (= res!2280873 (not (matchR!7278 (regTwo!30698 r!7292) (_2!35595 lt!2188389))))))

(declare-fun b!5373318 () Bool)

(assert (=> b!5373318 (= e!3333931 tp_is_empty!39439)))

(declare-fun b!5373319 () Bool)

(declare-fun res!2280861 () Bool)

(assert (=> b!5373319 (=> res!2280861 e!3333912)))

(assert (=> b!5373319 (= res!2280861 (or ((_ is Concat!23938) (regOne!30698 r!7292)) (not ((_ is Star!15093) (regOne!30698 r!7292)))))))

(declare-fun b!5373320 () Bool)

(assert (=> b!5373320 (= e!3333927 (matchZipper!1337 lt!2188414 (t!374801 s!2326)))))

(assert (=> b!5373321 (= e!3333923 e!3333912)))

(declare-fun res!2280871 () Bool)

(assert (=> b!5373321 (=> res!2280871 e!3333912)))

(assert (=> b!5373321 (= res!2280871 (or (and ((_ is ElementMatch!15093) (regOne!30698 r!7292)) (= (c!936269 (regOne!30698 r!7292)) (h!67902 s!2326))) ((_ is Union!15093) (regOne!30698 r!7292))))))

(declare-fun lt!2188395 () Unit!153890)

(assert (=> b!5373321 (= lt!2188395 e!3333930)))

(declare-fun c!936268 () Bool)

(assert (=> b!5373321 (= c!936268 (nullable!5262 (h!67903 (exprs!4977 (h!67904 zl!343)))))))

(assert (=> b!5373321 (= (flatMap!820 z!1189 lambda!277443) (derivationStepZipperUp!465 (h!67904 zl!343) (h!67902 s!2326)))))

(declare-fun lt!2188400 () Unit!153890)

(assert (=> b!5373321 (= lt!2188400 (lemmaFlatMapOnSingletonSet!352 z!1189 (h!67904 zl!343) lambda!277443))))

(declare-fun lt!2188406 () Context!8954)

(assert (=> b!5373321 (= lt!2188414 (derivationStepZipperUp!465 lt!2188406 (h!67902 s!2326)))))

(assert (=> b!5373321 (= lt!2188407 (derivationStepZipperDown!541 (h!67903 (exprs!4977 (h!67904 zl!343))) lt!2188406 (h!67902 s!2326)))))

(assert (=> b!5373321 (= lt!2188406 (Context!8955 (t!374802 (exprs!4977 (h!67904 zl!343)))))))

(declare-fun lt!2188390 () (InoxSet Context!8954))

(assert (=> b!5373321 (= lt!2188390 (derivationStepZipperUp!465 (Context!8955 (Cons!61455 (h!67903 (exprs!4977 (h!67904 zl!343))) (t!374802 (exprs!4977 (h!67904 zl!343))))) (h!67902 s!2326)))))

(assert (=> b!5373322 (= e!3333920 e!3333923)))

(declare-fun res!2280852 () Bool)

(assert (=> b!5373322 (=> res!2280852 e!3333923)))

(declare-fun lt!2188386 () Bool)

(assert (=> b!5373322 (= res!2280852 (or (not (= lt!2188419 lt!2188386)) ((_ is Nil!61454) s!2326)))))

(assert (=> b!5373322 (= (Exists!2274 lambda!277441) (Exists!2274 lambda!277442))))

(declare-fun lt!2188385 () Unit!153890)

(assert (=> b!5373322 (= lt!2188385 (lemmaExistCutMatchRandMatchRSpecEquivalent!928 (regOne!30698 r!7292) (regTwo!30698 r!7292) s!2326))))

(assert (=> b!5373322 (= lt!2188386 (Exists!2274 lambda!277441))))

(assert (=> b!5373322 (= lt!2188386 (isDefined!11907 (findConcatSeparation!1618 (regOne!30698 r!7292) (regTwo!30698 r!7292) Nil!61454 s!2326 s!2326)))))

(declare-fun lt!2188399 () Unit!153890)

(assert (=> b!5373322 (= lt!2188399 (lemmaFindConcatSeparationEquivalentToExists!1382 (regOne!30698 r!7292) (regTwo!30698 r!7292) s!2326))))

(declare-fun b!5373323 () Bool)

(declare-fun tp!1490386 () Bool)

(declare-fun tp!1490385 () Bool)

(assert (=> b!5373323 (= e!3333931 (and tp!1490386 tp!1490385))))

(declare-fun b!5373324 () Bool)

(declare-fun res!2280856 () Bool)

(assert (=> b!5373324 (=> res!2280856 e!3333929)))

(assert (=> b!5373324 (= res!2280856 (not (= (unfocusZipper!835 (Cons!61456 lt!2188388 Nil!61456)) lt!2188403)))))

(declare-fun b!5373325 () Bool)

(declare-fun Unit!153893 () Unit!153890)

(assert (=> b!5373325 (= e!3333930 Unit!153893)))

(assert (= (and start!565250 res!2280869) b!5373296))

(assert (= (and b!5373296 res!2280864) b!5373307))

(assert (= (and b!5373307 res!2280850) b!5373313))

(assert (= (and b!5373313 (not res!2280851)) b!5373304))

(assert (= (and b!5373304 (not res!2280867)) b!5373287))

(assert (= (and b!5373287 (not res!2280870)) b!5373295))

(assert (= (and b!5373295 (not res!2280868)) b!5373314))

(assert (= (and b!5373314 (not res!2280875)) b!5373312))

(assert (= (and b!5373312 (not res!2280857)) b!5373322))

(assert (= (and b!5373322 (not res!2280852)) b!5373294))

(assert (= (and b!5373294 (not res!2280862)) b!5373321))

(assert (= (and b!5373321 c!936268) b!5373290))

(assert (= (and b!5373321 (not c!936268)) b!5373325))

(assert (= (and b!5373290 (not res!2280872)) b!5373320))

(assert (= (and b!5373321 (not res!2280871)) b!5373289))

(assert (= (and b!5373289 res!2280855) b!5373309))

(assert (= (and b!5373289 (not res!2280853)) b!5373319))

(assert (= (and b!5373319 (not res!2280861)) b!5373288))

(assert (= (and b!5373288 (not res!2280878)) b!5373301))

(assert (= (and b!5373301 (not res!2280858)) b!5373302))

(assert (= (and b!5373302 (not res!2280865)) b!5373286))

(assert (= (and b!5373286 (not res!2280877)) b!5373297))

(assert (= (and b!5373297 (not res!2280866)) b!5373315))

(assert (= (and b!5373315 (not res!2280854)) b!5373300))

(assert (= (and b!5373300 (not res!2280879)) b!5373324))

(assert (= (and b!5373324 (not res!2280856)) b!5373308))

(assert (= (and b!5373308 res!2280860) b!5373292))

(assert (= (and b!5373308 (not res!2280859)) b!5373291))

(assert (= (and b!5373291 (not res!2280876)) b!5373316))

(assert (= (and b!5373316 (not res!2280863)) b!5373317))

(assert (= (and b!5373317 (not res!2280873)) b!5373299))

(assert (= (and b!5373299 (not res!2280874)) b!5373293))

(assert (= (and start!565250 ((_ is ElementMatch!15093) r!7292)) b!5373318))

(assert (= (and start!565250 ((_ is Concat!23938) r!7292)) b!5373323))

(assert (= (and start!565250 ((_ is Star!15093) r!7292)) b!5373306))

(assert (= (and start!565250 ((_ is Union!15093) r!7292)) b!5373305))

(assert (= (and start!565250 condSetEmpty!34835) setIsEmpty!34835))

(assert (= (and start!565250 (not condSetEmpty!34835)) setNonEmpty!34835))

(assert (= setNonEmpty!34835 b!5373298))

(assert (= b!5373310 b!5373303))

(assert (= (and start!565250 ((_ is Cons!61456) zl!343)) b!5373310))

(assert (= (and start!565250 ((_ is Cons!61454) s!2326)) b!5373311))

(declare-fun m!6400232 () Bool)

(assert (=> start!565250 m!6400232))

(declare-fun m!6400234 () Bool)

(assert (=> b!5373294 m!6400234))

(declare-fun m!6400236 () Bool)

(assert (=> b!5373314 m!6400236))

(assert (=> b!5373314 m!6400236))

(declare-fun m!6400238 () Bool)

(assert (=> b!5373314 m!6400238))

(declare-fun m!6400240 () Bool)

(assert (=> b!5373302 m!6400240))

(declare-fun m!6400242 () Bool)

(assert (=> b!5373302 m!6400242))

(declare-fun m!6400244 () Bool)

(assert (=> setNonEmpty!34835 m!6400244))

(declare-fun m!6400246 () Bool)

(assert (=> b!5373317 m!6400246))

(declare-fun m!6400248 () Bool)

(assert (=> b!5373291 m!6400248))

(declare-fun m!6400250 () Bool)

(assert (=> b!5373291 m!6400250))

(declare-fun m!6400252 () Bool)

(assert (=> b!5373291 m!6400252))

(declare-fun m!6400254 () Bool)

(assert (=> b!5373291 m!6400254))

(assert (=> b!5373291 m!6400248))

(declare-fun m!6400256 () Bool)

(assert (=> b!5373291 m!6400256))

(declare-fun m!6400258 () Bool)

(assert (=> b!5373291 m!6400258))

(declare-fun m!6400260 () Bool)

(assert (=> b!5373291 m!6400260))

(declare-fun m!6400262 () Bool)

(assert (=> b!5373291 m!6400262))

(declare-fun m!6400264 () Bool)

(assert (=> b!5373309 m!6400264))

(declare-fun m!6400266 () Bool)

(assert (=> b!5373296 m!6400266))

(declare-fun m!6400268 () Bool)

(assert (=> b!5373321 m!6400268))

(declare-fun m!6400270 () Bool)

(assert (=> b!5373321 m!6400270))

(declare-fun m!6400272 () Bool)

(assert (=> b!5373321 m!6400272))

(declare-fun m!6400274 () Bool)

(assert (=> b!5373321 m!6400274))

(declare-fun m!6400276 () Bool)

(assert (=> b!5373321 m!6400276))

(declare-fun m!6400278 () Bool)

(assert (=> b!5373321 m!6400278))

(declare-fun m!6400280 () Bool)

(assert (=> b!5373321 m!6400280))

(declare-fun m!6400282 () Bool)

(assert (=> b!5373307 m!6400282))

(declare-fun m!6400284 () Bool)

(assert (=> b!5373322 m!6400284))

(declare-fun m!6400286 () Bool)

(assert (=> b!5373322 m!6400286))

(declare-fun m!6400288 () Bool)

(assert (=> b!5373322 m!6400288))

(declare-fun m!6400290 () Bool)

(assert (=> b!5373322 m!6400290))

(declare-fun m!6400292 () Bool)

(assert (=> b!5373322 m!6400292))

(assert (=> b!5373322 m!6400284))

(assert (=> b!5373322 m!6400290))

(declare-fun m!6400294 () Bool)

(assert (=> b!5373322 m!6400294))

(declare-fun m!6400296 () Bool)

(assert (=> b!5373316 m!6400296))

(declare-fun m!6400298 () Bool)

(assert (=> b!5373320 m!6400298))

(declare-fun m!6400300 () Bool)

(assert (=> b!5373304 m!6400300))

(declare-fun m!6400302 () Bool)

(assert (=> b!5373301 m!6400302))

(declare-fun m!6400304 () Bool)

(assert (=> b!5373301 m!6400304))

(declare-fun m!6400306 () Bool)

(assert (=> b!5373301 m!6400306))

(declare-fun m!6400308 () Bool)

(assert (=> b!5373301 m!6400308))

(declare-fun m!6400310 () Bool)

(assert (=> b!5373301 m!6400310))

(declare-fun m!6400312 () Bool)

(assert (=> b!5373287 m!6400312))

(declare-fun m!6400314 () Bool)

(assert (=> b!5373300 m!6400314))

(declare-fun m!6400316 () Bool)

(assert (=> b!5373300 m!6400316))

(declare-fun m!6400318 () Bool)

(assert (=> b!5373300 m!6400318))

(declare-fun m!6400320 () Bool)

(assert (=> b!5373300 m!6400320))

(declare-fun m!6400322 () Bool)

(assert (=> b!5373300 m!6400322))

(declare-fun m!6400324 () Bool)

(assert (=> b!5373300 m!6400324))

(declare-fun m!6400326 () Bool)

(assert (=> b!5373300 m!6400326))

(declare-fun m!6400328 () Bool)

(assert (=> b!5373300 m!6400328))

(declare-fun m!6400330 () Bool)

(assert (=> b!5373300 m!6400330))

(declare-fun m!6400332 () Bool)

(assert (=> b!5373288 m!6400332))

(declare-fun m!6400334 () Bool)

(assert (=> b!5373313 m!6400334))

(declare-fun m!6400336 () Bool)

(assert (=> b!5373313 m!6400336))

(declare-fun m!6400338 () Bool)

(assert (=> b!5373313 m!6400338))

(declare-fun m!6400340 () Bool)

(assert (=> b!5373293 m!6400340))

(declare-fun m!6400342 () Bool)

(assert (=> b!5373293 m!6400342))

(declare-fun m!6400344 () Bool)

(assert (=> b!5373293 m!6400344))

(declare-fun m!6400346 () Bool)

(assert (=> b!5373293 m!6400346))

(declare-fun m!6400348 () Bool)

(assert (=> b!5373293 m!6400348))

(declare-fun m!6400350 () Bool)

(assert (=> b!5373293 m!6400350))

(assert (=> b!5373293 m!6400350))

(declare-fun m!6400352 () Bool)

(assert (=> b!5373293 m!6400352))

(assert (=> b!5373293 m!6400352))

(declare-fun m!6400354 () Bool)

(assert (=> b!5373293 m!6400354))

(declare-fun m!6400356 () Bool)

(assert (=> b!5373308 m!6400356))

(declare-fun m!6400358 () Bool)

(assert (=> b!5373308 m!6400358))

(declare-fun m!6400360 () Bool)

(assert (=> b!5373308 m!6400360))

(declare-fun m!6400362 () Bool)

(assert (=> b!5373315 m!6400362))

(declare-fun m!6400364 () Bool)

(assert (=> b!5373299 m!6400364))

(declare-fun m!6400366 () Bool)

(assert (=> b!5373324 m!6400366))

(declare-fun m!6400368 () Bool)

(assert (=> b!5373290 m!6400368))

(declare-fun m!6400370 () Bool)

(assert (=> b!5373290 m!6400370))

(declare-fun m!6400372 () Bool)

(assert (=> b!5373290 m!6400372))

(declare-fun m!6400374 () Bool)

(assert (=> b!5373310 m!6400374))

(check-sat (not b!5373317) (not b!5373311) (not b!5373320) (not setNonEmpty!34835) (not b!5373290) (not b!5373324) (not b!5373313) (not b!5373298) (not b!5373305) (not b!5373315) (not b!5373307) (not b!5373300) (not b!5373323) (not b!5373321) (not b!5373299) (not b!5373287) (not b!5373316) (not b!5373296) (not b!5373308) (not b!5373314) (not b!5373322) (not b!5373294) (not b!5373306) (not b!5373288) (not b!5373291) (not b!5373293) (not b!5373304) (not b!5373310) tp_is_empty!39439 (not start!565250) (not b!5373302) (not b!5373303) (not b!5373301) (not b!5373309))
(check-sat)
