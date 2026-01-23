; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!563934 () Bool)

(assert start!563934)

(declare-fun b!5355933 () Bool)

(assert (=> b!5355933 true))

(assert (=> b!5355933 true))

(declare-fun lambda!275470 () Int)

(declare-fun lambda!275469 () Int)

(assert (=> b!5355933 (not (= lambda!275470 lambda!275469))))

(assert (=> b!5355933 true))

(assert (=> b!5355933 true))

(declare-fun b!5355927 () Bool)

(assert (=> b!5355927 true))

(declare-fun b!5355908 () Bool)

(declare-fun res!2272484 () Bool)

(declare-fun e!3324425 () Bool)

(assert (=> b!5355908 (=> res!2272484 e!3324425)))

(declare-datatypes ((C!30372 0))(
  ( (C!30373 (val!24888 Int)) )
))
(declare-datatypes ((List!61452 0))(
  ( (Nil!61328) (Cons!61328 (h!67776 C!30372) (t!374673 List!61452)) )
))
(declare-fun s!2326 () List!61452)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!15051 0))(
  ( (ElementMatch!15051 (c!932553 C!30372)) (Concat!23896 (regOne!30614 Regex!15051) (regTwo!30614 Regex!15051)) (EmptyExpr!15051) (Star!15051 (reg!15380 Regex!15051)) (EmptyLang!15051) (Union!15051 (regOne!30615 Regex!15051) (regTwo!30615 Regex!15051)) )
))
(declare-datatypes ((List!61453 0))(
  ( (Nil!61329) (Cons!61329 (h!67777 Regex!15051) (t!374674 List!61453)) )
))
(declare-datatypes ((Context!8870 0))(
  ( (Context!8871 (exprs!4935 List!61453)) )
))
(declare-fun lt!2182249 () (InoxSet Context!8870))

(declare-fun lt!2182250 () (InoxSet Context!8870))

(declare-fun matchZipper!1295 ((InoxSet Context!8870) List!61452) Bool)

(assert (=> b!5355908 (= res!2272484 (not (= (matchZipper!1295 lt!2182249 s!2326) (matchZipper!1295 lt!2182250 (t!374673 s!2326)))))))

(declare-fun b!5355909 () Bool)

(declare-fun res!2272472 () Bool)

(declare-fun e!3324420 () Bool)

(assert (=> b!5355909 (=> res!2272472 e!3324420)))

(declare-datatypes ((List!61454 0))(
  ( (Nil!61330) (Cons!61330 (h!67778 Context!8870) (t!374675 List!61454)) )
))
(declare-fun zl!343 () List!61454)

(get-info :version)

(assert (=> b!5355909 (= res!2272472 (not ((_ is Cons!61329) (exprs!4935 (h!67778 zl!343)))))))

(declare-fun b!5355910 () Bool)

(declare-fun e!3324418 () Bool)

(declare-fun tp!1487633 () Bool)

(declare-fun tp!1487630 () Bool)

(assert (=> b!5355910 (= e!3324418 (and tp!1487633 tp!1487630))))

(declare-fun b!5355911 () Bool)

(declare-fun res!2272494 () Bool)

(assert (=> b!5355911 (=> res!2272494 e!3324425)))

(declare-fun lt!2182234 () Regex!15051)

(declare-fun r!7292 () Regex!15051)

(assert (=> b!5355911 (= res!2272494 (not (= lt!2182234 r!7292)))))

(declare-fun b!5355912 () Bool)

(declare-fun tp!1487628 () Bool)

(declare-fun tp!1487637 () Bool)

(assert (=> b!5355912 (= e!3324418 (and tp!1487628 tp!1487637))))

(declare-fun b!5355913 () Bool)

(declare-fun tp!1487634 () Bool)

(assert (=> b!5355913 (= e!3324418 tp!1487634)))

(declare-fun tp!1487635 () Bool)

(declare-fun e!3324422 () Bool)

(declare-fun setElem!34633 () Context!8870)

(declare-fun setRes!34633 () Bool)

(declare-fun setNonEmpty!34633 () Bool)

(declare-fun inv!80874 (Context!8870) Bool)

(assert (=> setNonEmpty!34633 (= setRes!34633 (and tp!1487635 (inv!80874 setElem!34633) e!3324422))))

(declare-fun z!1189 () (InoxSet Context!8870))

(declare-fun setRest!34633 () (InoxSet Context!8870))

(assert (=> setNonEmpty!34633 (= z!1189 ((_ map or) (store ((as const (Array Context!8870 Bool)) false) setElem!34633 true) setRest!34633))))

(declare-fun b!5355914 () Bool)

(declare-datatypes ((Unit!153722 0))(
  ( (Unit!153723) )
))
(declare-fun e!3324431 () Unit!153722)

(declare-fun Unit!153724 () Unit!153722)

(assert (=> b!5355914 (= e!3324431 Unit!153724)))

(declare-fun lt!2182241 () Unit!153722)

(declare-fun lt!2182246 () (InoxSet Context!8870))

(declare-fun lt!2182252 () (InoxSet Context!8870))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!288 ((InoxSet Context!8870) (InoxSet Context!8870) List!61452) Unit!153722)

(assert (=> b!5355914 (= lt!2182241 (lemmaZipperConcatMatchesSameAsBothZippers!288 lt!2182252 lt!2182246 (t!374673 s!2326)))))

(declare-fun res!2272481 () Bool)

(assert (=> b!5355914 (= res!2272481 (matchZipper!1295 lt!2182252 (t!374673 s!2326)))))

(declare-fun e!3324426 () Bool)

(assert (=> b!5355914 (=> res!2272481 e!3324426)))

(assert (=> b!5355914 (= (matchZipper!1295 ((_ map or) lt!2182252 lt!2182246) (t!374673 s!2326)) e!3324426)))

(declare-fun b!5355915 () Bool)

(declare-fun e!3324419 () Bool)

(assert (=> b!5355915 (= e!3324419 true)))

(declare-fun b!5355916 () Bool)

(declare-fun e!3324424 () Bool)

(declare-fun tp_is_empty!39355 () Bool)

(declare-fun tp!1487632 () Bool)

(assert (=> b!5355916 (= e!3324424 (and tp_is_empty!39355 tp!1487632))))

(declare-fun b!5355917 () Bool)

(declare-fun e!3324430 () Bool)

(assert (=> b!5355917 (= e!3324430 (not e!3324420))))

(declare-fun res!2272493 () Bool)

(assert (=> b!5355917 (=> res!2272493 e!3324420)))

(assert (=> b!5355917 (= res!2272493 (not ((_ is Cons!61330) zl!343)))))

(declare-fun lt!2182254 () Bool)

(declare-fun matchRSpec!2154 (Regex!15051 List!61452) Bool)

(assert (=> b!5355917 (= lt!2182254 (matchRSpec!2154 r!7292 s!2326))))

(declare-fun matchR!7236 (Regex!15051 List!61452) Bool)

(assert (=> b!5355917 (= lt!2182254 (matchR!7236 r!7292 s!2326))))

(declare-fun lt!2182240 () Unit!153722)

(declare-fun mainMatchTheorem!2154 (Regex!15051 List!61452) Unit!153722)

(assert (=> b!5355917 (= lt!2182240 (mainMatchTheorem!2154 r!7292 s!2326))))

(declare-fun b!5355918 () Bool)

(declare-fun e!3324429 () Bool)

(assert (=> b!5355918 (= e!3324429 e!3324425)))

(declare-fun res!2272475 () Bool)

(assert (=> b!5355918 (=> res!2272475 e!3324425)))

(declare-fun lt!2182243 () (InoxSet Context!8870))

(assert (=> b!5355918 (= res!2272475 (not (= lt!2182250 lt!2182243)))))

(declare-fun lambda!275471 () Int)

(declare-fun lt!2182248 () Context!8870)

(declare-fun flatMap!778 ((InoxSet Context!8870) Int) (InoxSet Context!8870))

(declare-fun derivationStepZipperUp!423 (Context!8870 C!30372) (InoxSet Context!8870))

(assert (=> b!5355918 (= (flatMap!778 lt!2182249 lambda!275471) (derivationStepZipperUp!423 lt!2182248 (h!67776 s!2326)))))

(declare-fun lt!2182262 () Unit!153722)

(declare-fun lemmaFlatMapOnSingletonSet!310 ((InoxSet Context!8870) Context!8870 Int) Unit!153722)

(assert (=> b!5355918 (= lt!2182262 (lemmaFlatMapOnSingletonSet!310 lt!2182249 lt!2182248 lambda!275471))))

(declare-fun lt!2182255 () (InoxSet Context!8870))

(assert (=> b!5355918 (= lt!2182255 (derivationStepZipperUp!423 lt!2182248 (h!67776 s!2326)))))

(declare-fun derivationStepZipper!1290 ((InoxSet Context!8870) C!30372) (InoxSet Context!8870))

(assert (=> b!5355918 (= lt!2182250 (derivationStepZipper!1290 lt!2182249 (h!67776 s!2326)))))

(assert (=> b!5355918 (= lt!2182249 (store ((as const (Array Context!8870 Bool)) false) lt!2182248 true))))

(declare-fun lt!2182259 () List!61453)

(assert (=> b!5355918 (= lt!2182248 (Context!8871 (Cons!61329 (reg!15380 (regOne!30614 r!7292)) lt!2182259)))))

(declare-fun setIsEmpty!34633 () Bool)

(assert (=> setIsEmpty!34633 setRes!34633))

(declare-fun b!5355919 () Bool)

(declare-fun res!2272488 () Bool)

(declare-fun e!3324432 () Bool)

(assert (=> b!5355919 (=> res!2272488 e!3324432)))

(declare-fun e!3324428 () Bool)

(assert (=> b!5355919 (= res!2272488 e!3324428)))

(declare-fun res!2272492 () Bool)

(assert (=> b!5355919 (=> (not res!2272492) (not e!3324428))))

(assert (=> b!5355919 (= res!2272492 ((_ is Concat!23896) (regOne!30614 r!7292)))))

(declare-fun b!5355920 () Bool)

(assert (=> b!5355920 (= e!3324418 tp_is_empty!39355)))

(declare-fun b!5355921 () Bool)

(declare-fun e!3324423 () Bool)

(assert (=> b!5355921 (= e!3324423 e!3324430)))

(declare-fun res!2272485 () Bool)

(assert (=> b!5355921 (=> (not res!2272485) (not e!3324430))))

(assert (=> b!5355921 (= res!2272485 (= r!7292 lt!2182234))))

(declare-fun unfocusZipper!793 (List!61454) Regex!15051)

(assert (=> b!5355921 (= lt!2182234 (unfocusZipper!793 zl!343))))

(declare-fun b!5355922 () Bool)

(declare-fun nullable!5220 (Regex!15051) Bool)

(assert (=> b!5355922 (= e!3324428 (nullable!5220 (regOne!30614 (regOne!30614 r!7292))))))

(declare-fun b!5355923 () Bool)

(declare-fun e!3324427 () Bool)

(declare-fun tp!1487629 () Bool)

(assert (=> b!5355923 (= e!3324427 tp!1487629)))

(declare-fun b!5355924 () Bool)

(declare-fun res!2272476 () Bool)

(assert (=> b!5355924 (=> res!2272476 e!3324420)))

(declare-fun generalisedUnion!980 (List!61453) Regex!15051)

(declare-fun unfocusZipperList!493 (List!61454) List!61453)

(assert (=> b!5355924 (= res!2272476 (not (= r!7292 (generalisedUnion!980 (unfocusZipperList!493 zl!343)))))))

(declare-fun res!2272490 () Bool)

(assert (=> start!563934 (=> (not res!2272490) (not e!3324423))))

(declare-fun validRegex!6787 (Regex!15051) Bool)

(assert (=> start!563934 (= res!2272490 (validRegex!6787 r!7292))))

(assert (=> start!563934 e!3324423))

(assert (=> start!563934 e!3324418))

(declare-fun condSetEmpty!34633 () Bool)

(assert (=> start!563934 (= condSetEmpty!34633 (= z!1189 ((as const (Array Context!8870 Bool)) false)))))

(assert (=> start!563934 setRes!34633))

(declare-fun e!3324421 () Bool)

(assert (=> start!563934 e!3324421))

(assert (=> start!563934 e!3324424))

(declare-fun b!5355925 () Bool)

(declare-fun res!2272474 () Bool)

(assert (=> b!5355925 (=> res!2272474 e!3324420)))

(declare-fun isEmpty!33303 (List!61454) Bool)

(assert (=> b!5355925 (= res!2272474 (not (isEmpty!33303 (t!374675 zl!343))))))

(declare-fun b!5355926 () Bool)

(declare-fun res!2272477 () Bool)

(assert (=> b!5355926 (=> (not res!2272477) (not e!3324423))))

(declare-fun toList!8835 ((InoxSet Context!8870)) List!61454)

(assert (=> b!5355926 (= res!2272477 (= (toList!8835 z!1189) zl!343))))

(declare-fun e!3324434 () Bool)

(assert (=> b!5355927 (= e!3324434 e!3324432)))

(declare-fun res!2272486 () Bool)

(assert (=> b!5355927 (=> res!2272486 e!3324432)))

(assert (=> b!5355927 (= res!2272486 (or (and ((_ is ElementMatch!15051) (regOne!30614 r!7292)) (= (c!932553 (regOne!30614 r!7292)) (h!67776 s!2326))) ((_ is Union!15051) (regOne!30614 r!7292))))))

(declare-fun lt!2182253 () Unit!153722)

(assert (=> b!5355927 (= lt!2182253 e!3324431)))

(declare-fun c!932552 () Bool)

(assert (=> b!5355927 (= c!932552 (nullable!5220 (h!67777 (exprs!4935 (h!67778 zl!343)))))))

(assert (=> b!5355927 (= (flatMap!778 z!1189 lambda!275471) (derivationStepZipperUp!423 (h!67778 zl!343) (h!67776 s!2326)))))

(declare-fun lt!2182245 () Unit!153722)

(assert (=> b!5355927 (= lt!2182245 (lemmaFlatMapOnSingletonSet!310 z!1189 (h!67778 zl!343) lambda!275471))))

(declare-fun lt!2182256 () Context!8870)

(assert (=> b!5355927 (= lt!2182246 (derivationStepZipperUp!423 lt!2182256 (h!67776 s!2326)))))

(declare-fun derivationStepZipperDown!499 (Regex!15051 Context!8870 C!30372) (InoxSet Context!8870))

(assert (=> b!5355927 (= lt!2182252 (derivationStepZipperDown!499 (h!67777 (exprs!4935 (h!67778 zl!343))) lt!2182256 (h!67776 s!2326)))))

(assert (=> b!5355927 (= lt!2182256 (Context!8871 (t!374674 (exprs!4935 (h!67778 zl!343)))))))

(declare-fun lt!2182258 () (InoxSet Context!8870))

(assert (=> b!5355927 (= lt!2182258 (derivationStepZipperUp!423 (Context!8871 (Cons!61329 (h!67777 (exprs!4935 (h!67778 zl!343))) (t!374674 (exprs!4935 (h!67778 zl!343))))) (h!67776 s!2326)))))

(declare-fun b!5355928 () Bool)

(declare-fun res!2272491 () Bool)

(assert (=> b!5355928 (=> res!2272491 e!3324420)))

(declare-fun generalisedConcat!720 (List!61453) Regex!15051)

(assert (=> b!5355928 (= res!2272491 (not (= r!7292 (generalisedConcat!720 (exprs!4935 (h!67778 zl!343))))))))

(declare-fun b!5355929 () Bool)

(declare-fun res!2272487 () Bool)

(assert (=> b!5355929 (=> res!2272487 e!3324420)))

(assert (=> b!5355929 (= res!2272487 (or ((_ is EmptyExpr!15051) r!7292) ((_ is EmptyLang!15051) r!7292) ((_ is ElementMatch!15051) r!7292) ((_ is Union!15051) r!7292) (not ((_ is Concat!23896) r!7292))))))

(declare-fun b!5355930 () Bool)

(declare-fun tp!1487631 () Bool)

(assert (=> b!5355930 (= e!3324422 tp!1487631)))

(declare-fun b!5355931 () Bool)

(declare-fun res!2272478 () Bool)

(assert (=> b!5355931 (=> res!2272478 e!3324432)))

(assert (=> b!5355931 (= res!2272478 (or ((_ is Concat!23896) (regOne!30614 r!7292)) (not ((_ is Star!15051) (regOne!30614 r!7292)))))))

(declare-fun b!5355932 () Bool)

(declare-fun res!2272495 () Bool)

(assert (=> b!5355932 (=> res!2272495 e!3324419)))

(declare-fun lt!2182261 () Context!8870)

(declare-fun lt!2182242 () Regex!15051)

(assert (=> b!5355932 (= res!2272495 (not (= (unfocusZipper!793 (Cons!61330 lt!2182261 Nil!61330)) lt!2182242)))))

(assert (=> b!5355933 (= e!3324420 e!3324434)))

(declare-fun res!2272482 () Bool)

(assert (=> b!5355933 (=> res!2272482 e!3324434)))

(declare-fun lt!2182238 () Bool)

(assert (=> b!5355933 (= res!2272482 (or (not (= lt!2182254 lt!2182238)) ((_ is Nil!61328) s!2326)))))

(declare-fun Exists!2232 (Int) Bool)

(assert (=> b!5355933 (= (Exists!2232 lambda!275469) (Exists!2232 lambda!275470))))

(declare-fun lt!2182237 () Unit!153722)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!886 (Regex!15051 Regex!15051 List!61452) Unit!153722)

(assert (=> b!5355933 (= lt!2182237 (lemmaExistCutMatchRandMatchRSpecEquivalent!886 (regOne!30614 r!7292) (regTwo!30614 r!7292) s!2326))))

(assert (=> b!5355933 (= lt!2182238 (Exists!2232 lambda!275469))))

(declare-datatypes ((tuple2!64500 0))(
  ( (tuple2!64501 (_1!35553 List!61452) (_2!35553 List!61452)) )
))
(declare-datatypes ((Option!15162 0))(
  ( (None!15161) (Some!15161 (v!51190 tuple2!64500)) )
))
(declare-fun isDefined!11865 (Option!15162) Bool)

(declare-fun findConcatSeparation!1576 (Regex!15051 Regex!15051 List!61452 List!61452 List!61452) Option!15162)

(assert (=> b!5355933 (= lt!2182238 (isDefined!11865 (findConcatSeparation!1576 (regOne!30614 r!7292) (regTwo!30614 r!7292) Nil!61328 s!2326 s!2326)))))

(declare-fun lt!2182236 () Unit!153722)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1340 (Regex!15051 Regex!15051 List!61452) Unit!153722)

(assert (=> b!5355933 (= lt!2182236 (lemmaFindConcatSeparationEquivalentToExists!1340 (regOne!30614 r!7292) (regTwo!30614 r!7292) s!2326))))

(declare-fun b!5355934 () Bool)

(declare-fun e!3324433 () Bool)

(assert (=> b!5355934 (= e!3324425 e!3324433)))

(declare-fun res!2272489 () Bool)

(assert (=> b!5355934 (=> res!2272489 e!3324433)))

(assert (=> b!5355934 (= res!2272489 (not (= r!7292 lt!2182242)))))

(declare-fun lt!2182260 () Regex!15051)

(assert (=> b!5355934 (= lt!2182242 (Concat!23896 lt!2182260 (regTwo!30614 r!7292)))))

(declare-fun b!5355935 () Bool)

(declare-fun res!2272479 () Bool)

(assert (=> b!5355935 (=> res!2272479 e!3324433)))

(assert (=> b!5355935 (= res!2272479 (not (= (unfocusZipper!793 (Cons!61330 lt!2182248 Nil!61330)) (Concat!23896 (reg!15380 (regOne!30614 r!7292)) lt!2182242))))))

(declare-fun b!5355936 () Bool)

(assert (=> b!5355936 (= e!3324426 (matchZipper!1295 lt!2182246 (t!374673 s!2326)))))

(declare-fun b!5355937 () Bool)

(declare-fun tp!1487636 () Bool)

(assert (=> b!5355937 (= e!3324421 (and (inv!80874 (h!67778 zl!343)) e!3324427 tp!1487636))))

(declare-fun b!5355938 () Bool)

(declare-fun res!2272473 () Bool)

(assert (=> b!5355938 (=> res!2272473 e!3324434)))

(declare-fun isEmpty!33304 (List!61453) Bool)

(assert (=> b!5355938 (= res!2272473 (isEmpty!33304 (t!374674 (exprs!4935 (h!67778 zl!343)))))))

(declare-fun b!5355939 () Bool)

(assert (=> b!5355939 (= e!3324432 e!3324429)))

(declare-fun res!2272480 () Bool)

(assert (=> b!5355939 (=> res!2272480 e!3324429)))

(assert (=> b!5355939 (= res!2272480 (not (= lt!2182252 lt!2182243)))))

(assert (=> b!5355939 (= lt!2182243 (derivationStepZipperDown!499 (reg!15380 (regOne!30614 r!7292)) lt!2182261 (h!67776 s!2326)))))

(assert (=> b!5355939 (= lt!2182261 (Context!8871 lt!2182259))))

(assert (=> b!5355939 (= lt!2182259 (Cons!61329 lt!2182260 (t!374674 (exprs!4935 (h!67778 zl!343)))))))

(assert (=> b!5355939 (= lt!2182260 (Star!15051 (reg!15380 (regOne!30614 r!7292))))))

(declare-fun b!5355940 () Bool)

(assert (=> b!5355940 (= e!3324433 e!3324419)))

(declare-fun res!2272483 () Bool)

(assert (=> b!5355940 (=> res!2272483 e!3324419)))

(declare-fun lt!2182244 () Context!8870)

(assert (=> b!5355940 (= res!2272483 (not (= (unfocusZipper!793 (Cons!61330 lt!2182244 Nil!61330)) (reg!15380 (regOne!30614 r!7292)))))))

(declare-fun lt!2182235 () (InoxSet Context!8870))

(assert (=> b!5355940 (= (flatMap!778 lt!2182235 lambda!275471) (derivationStepZipperUp!423 lt!2182261 (h!67776 s!2326)))))

(declare-fun lt!2182257 () Unit!153722)

(assert (=> b!5355940 (= lt!2182257 (lemmaFlatMapOnSingletonSet!310 lt!2182235 lt!2182261 lambda!275471))))

(declare-fun lt!2182247 () (InoxSet Context!8870))

(assert (=> b!5355940 (= (flatMap!778 lt!2182247 lambda!275471) (derivationStepZipperUp!423 lt!2182244 (h!67776 s!2326)))))

(declare-fun lt!2182251 () Unit!153722)

(assert (=> b!5355940 (= lt!2182251 (lemmaFlatMapOnSingletonSet!310 lt!2182247 lt!2182244 lambda!275471))))

(declare-fun lt!2182239 () (InoxSet Context!8870))

(assert (=> b!5355940 (= lt!2182239 (derivationStepZipperUp!423 lt!2182261 (h!67776 s!2326)))))

(declare-fun lt!2182233 () (InoxSet Context!8870))

(assert (=> b!5355940 (= lt!2182233 (derivationStepZipperUp!423 lt!2182244 (h!67776 s!2326)))))

(assert (=> b!5355940 (= lt!2182235 (store ((as const (Array Context!8870 Bool)) false) lt!2182261 true))))

(assert (=> b!5355940 (= lt!2182247 (store ((as const (Array Context!8870 Bool)) false) lt!2182244 true))))

(assert (=> b!5355940 (= lt!2182244 (Context!8871 (Cons!61329 (reg!15380 (regOne!30614 r!7292)) Nil!61329)))))

(declare-fun b!5355941 () Bool)

(declare-fun Unit!153725 () Unit!153722)

(assert (=> b!5355941 (= e!3324431 Unit!153725)))

(assert (= (and start!563934 res!2272490) b!5355926))

(assert (= (and b!5355926 res!2272477) b!5355921))

(assert (= (and b!5355921 res!2272485) b!5355917))

(assert (= (and b!5355917 (not res!2272493)) b!5355925))

(assert (= (and b!5355925 (not res!2272474)) b!5355928))

(assert (= (and b!5355928 (not res!2272491)) b!5355909))

(assert (= (and b!5355909 (not res!2272472)) b!5355924))

(assert (= (and b!5355924 (not res!2272476)) b!5355929))

(assert (= (and b!5355929 (not res!2272487)) b!5355933))

(assert (= (and b!5355933 (not res!2272482)) b!5355938))

(assert (= (and b!5355938 (not res!2272473)) b!5355927))

(assert (= (and b!5355927 c!932552) b!5355914))

(assert (= (and b!5355927 (not c!932552)) b!5355941))

(assert (= (and b!5355914 (not res!2272481)) b!5355936))

(assert (= (and b!5355927 (not res!2272486)) b!5355919))

(assert (= (and b!5355919 res!2272492) b!5355922))

(assert (= (and b!5355919 (not res!2272488)) b!5355931))

(assert (= (and b!5355931 (not res!2272478)) b!5355939))

(assert (= (and b!5355939 (not res!2272480)) b!5355918))

(assert (= (and b!5355918 (not res!2272475)) b!5355908))

(assert (= (and b!5355908 (not res!2272484)) b!5355911))

(assert (= (and b!5355911 (not res!2272494)) b!5355934))

(assert (= (and b!5355934 (not res!2272489)) b!5355935))

(assert (= (and b!5355935 (not res!2272479)) b!5355940))

(assert (= (and b!5355940 (not res!2272483)) b!5355932))

(assert (= (and b!5355932 (not res!2272495)) b!5355915))

(assert (= (and start!563934 ((_ is ElementMatch!15051) r!7292)) b!5355920))

(assert (= (and start!563934 ((_ is Concat!23896) r!7292)) b!5355910))

(assert (= (and start!563934 ((_ is Star!15051) r!7292)) b!5355913))

(assert (= (and start!563934 ((_ is Union!15051) r!7292)) b!5355912))

(assert (= (and start!563934 condSetEmpty!34633) setIsEmpty!34633))

(assert (= (and start!563934 (not condSetEmpty!34633)) setNonEmpty!34633))

(assert (= setNonEmpty!34633 b!5355930))

(assert (= b!5355937 b!5355923))

(assert (= (and start!563934 ((_ is Cons!61330) zl!343)) b!5355937))

(assert (= (and start!563934 ((_ is Cons!61328) s!2326)) b!5355916))

(declare-fun m!6385664 () Bool)

(assert (=> b!5355928 m!6385664))

(declare-fun m!6385666 () Bool)

(assert (=> b!5355939 m!6385666))

(declare-fun m!6385668 () Bool)

(assert (=> b!5355914 m!6385668))

(declare-fun m!6385670 () Bool)

(assert (=> b!5355914 m!6385670))

(declare-fun m!6385672 () Bool)

(assert (=> b!5355914 m!6385672))

(declare-fun m!6385674 () Bool)

(assert (=> b!5355932 m!6385674))

(declare-fun m!6385676 () Bool)

(assert (=> b!5355908 m!6385676))

(declare-fun m!6385678 () Bool)

(assert (=> b!5355908 m!6385678))

(declare-fun m!6385680 () Bool)

(assert (=> b!5355917 m!6385680))

(declare-fun m!6385682 () Bool)

(assert (=> b!5355917 m!6385682))

(declare-fun m!6385684 () Bool)

(assert (=> b!5355917 m!6385684))

(declare-fun m!6385686 () Bool)

(assert (=> b!5355926 m!6385686))

(declare-fun m!6385688 () Bool)

(assert (=> b!5355940 m!6385688))

(declare-fun m!6385690 () Bool)

(assert (=> b!5355940 m!6385690))

(declare-fun m!6385692 () Bool)

(assert (=> b!5355940 m!6385692))

(declare-fun m!6385694 () Bool)

(assert (=> b!5355940 m!6385694))

(declare-fun m!6385696 () Bool)

(assert (=> b!5355940 m!6385696))

(declare-fun m!6385698 () Bool)

(assert (=> b!5355940 m!6385698))

(declare-fun m!6385700 () Bool)

(assert (=> b!5355940 m!6385700))

(declare-fun m!6385702 () Bool)

(assert (=> b!5355940 m!6385702))

(declare-fun m!6385704 () Bool)

(assert (=> b!5355940 m!6385704))

(declare-fun m!6385706 () Bool)

(assert (=> b!5355918 m!6385706))

(declare-fun m!6385708 () Bool)

(assert (=> b!5355918 m!6385708))

(declare-fun m!6385710 () Bool)

(assert (=> b!5355918 m!6385710))

(declare-fun m!6385712 () Bool)

(assert (=> b!5355918 m!6385712))

(declare-fun m!6385714 () Bool)

(assert (=> b!5355918 m!6385714))

(declare-fun m!6385716 () Bool)

(assert (=> setNonEmpty!34633 m!6385716))

(declare-fun m!6385718 () Bool)

(assert (=> start!563934 m!6385718))

(declare-fun m!6385720 () Bool)

(assert (=> b!5355937 m!6385720))

(declare-fun m!6385722 () Bool)

(assert (=> b!5355925 m!6385722))

(declare-fun m!6385724 () Bool)

(assert (=> b!5355938 m!6385724))

(declare-fun m!6385726 () Bool)

(assert (=> b!5355935 m!6385726))

(declare-fun m!6385728 () Bool)

(assert (=> b!5355921 m!6385728))

(declare-fun m!6385730 () Bool)

(assert (=> b!5355924 m!6385730))

(assert (=> b!5355924 m!6385730))

(declare-fun m!6385732 () Bool)

(assert (=> b!5355924 m!6385732))

(declare-fun m!6385734 () Bool)

(assert (=> b!5355936 m!6385734))

(declare-fun m!6385736 () Bool)

(assert (=> b!5355933 m!6385736))

(assert (=> b!5355933 m!6385736))

(declare-fun m!6385738 () Bool)

(assert (=> b!5355933 m!6385738))

(declare-fun m!6385740 () Bool)

(assert (=> b!5355933 m!6385740))

(assert (=> b!5355933 m!6385738))

(declare-fun m!6385742 () Bool)

(assert (=> b!5355933 m!6385742))

(declare-fun m!6385744 () Bool)

(assert (=> b!5355933 m!6385744))

(declare-fun m!6385746 () Bool)

(assert (=> b!5355933 m!6385746))

(declare-fun m!6385748 () Bool)

(assert (=> b!5355927 m!6385748))

(declare-fun m!6385750 () Bool)

(assert (=> b!5355927 m!6385750))

(declare-fun m!6385752 () Bool)

(assert (=> b!5355927 m!6385752))

(declare-fun m!6385754 () Bool)

(assert (=> b!5355927 m!6385754))

(declare-fun m!6385756 () Bool)

(assert (=> b!5355927 m!6385756))

(declare-fun m!6385758 () Bool)

(assert (=> b!5355927 m!6385758))

(declare-fun m!6385760 () Bool)

(assert (=> b!5355927 m!6385760))

(declare-fun m!6385762 () Bool)

(assert (=> b!5355922 m!6385762))

(check-sat (not b!5355936) (not b!5355913) (not b!5355908) (not b!5355921) (not b!5355912) (not b!5355916) (not b!5355930) (not b!5355922) (not b!5355940) tp_is_empty!39355 (not b!5355932) (not b!5355928) (not start!563934) (not b!5355926) (not b!5355924) (not b!5355933) (not b!5355917) (not b!5355914) (not b!5355935) (not b!5355939) (not b!5355910) (not b!5355927) (not b!5355938) (not b!5355923) (not b!5355918) (not b!5355937) (not b!5355925) (not setNonEmpty!34633))
(check-sat)
