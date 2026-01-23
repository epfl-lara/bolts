; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588232 () Bool)

(assert start!588232)

(declare-fun b!5712367 () Bool)

(assert (=> b!5712367 true))

(assert (=> b!5712367 true))

(declare-fun lambda!308343 () Int)

(declare-fun lambda!308342 () Int)

(assert (=> b!5712367 (not (= lambda!308343 lambda!308342))))

(assert (=> b!5712367 true))

(assert (=> b!5712367 true))

(declare-fun b!5712340 () Bool)

(assert (=> b!5712340 true))

(declare-fun bs!1334466 () Bool)

(declare-fun b!5712345 () Bool)

(assert (= bs!1334466 (and b!5712345 b!5712367)))

(declare-datatypes ((C!31684 0))(
  ( (C!31685 (val!25544 Int)) )
))
(declare-datatypes ((Regex!15707 0))(
  ( (ElementMatch!15707 (c!1006919 C!31684)) (Concat!24552 (regOne!31926 Regex!15707) (regTwo!31926 Regex!15707)) (EmptyExpr!15707) (Star!15707 (reg!16036 Regex!15707)) (EmptyLang!15707) (Union!15707 (regOne!31927 Regex!15707) (regTwo!31927 Regex!15707)) )
))
(declare-fun r!7292 () Regex!15707)

(declare-fun lambda!308345 () Int)

(declare-fun lt!2275979 () Regex!15707)

(assert (=> bs!1334466 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308345 lambda!308342))))

(assert (=> bs!1334466 (not (= lambda!308345 lambda!308343))))

(assert (=> b!5712345 true))

(assert (=> b!5712345 true))

(assert (=> b!5712345 true))

(declare-fun lambda!308346 () Int)

(assert (=> bs!1334466 (not (= lambda!308346 lambda!308342))))

(assert (=> bs!1334466 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308346 lambda!308343))))

(assert (=> b!5712345 (not (= lambda!308346 lambda!308345))))

(assert (=> b!5712345 true))

(assert (=> b!5712345 true))

(assert (=> b!5712345 true))

(declare-fun bs!1334467 () Bool)

(declare-fun b!5712330 () Bool)

(assert (= bs!1334467 (and b!5712330 b!5712367)))

(declare-datatypes ((List!63420 0))(
  ( (Nil!63296) (Cons!63296 (h!69744 C!31684) (t!376740 List!63420)) )
))
(declare-fun s!2326 () List!63420)

(declare-datatypes ((tuple2!65608 0))(
  ( (tuple2!65609 (_1!36107 List!63420) (_2!36107 List!63420)) )
))
(declare-fun lt!2275961 () tuple2!65608)

(declare-fun lambda!308347 () Int)

(assert (=> bs!1334467 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) (regOne!31926 r!7292)) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308347 lambda!308342))))

(assert (=> bs!1334467 (not (= lambda!308347 lambda!308343))))

(declare-fun bs!1334468 () Bool)

(assert (= bs!1334468 (and b!5712330 b!5712345)))

(assert (=> bs!1334468 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) lt!2275979) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308347 lambda!308345))))

(assert (=> bs!1334468 (not (= lambda!308347 lambda!308346))))

(assert (=> b!5712330 true))

(assert (=> b!5712330 true))

(assert (=> b!5712330 true))

(declare-fun lambda!308348 () Int)

(assert (=> b!5712330 (not (= lambda!308348 lambda!308347))))

(assert (=> bs!1334467 (not (= lambda!308348 lambda!308342))))

(assert (=> bs!1334468 (not (= lambda!308348 lambda!308345))))

(assert (=> bs!1334468 (not (= lambda!308348 lambda!308346))))

(assert (=> bs!1334467 (not (= lambda!308348 lambda!308343))))

(assert (=> b!5712330 true))

(assert (=> b!5712330 true))

(assert (=> b!5712330 true))

(declare-fun lambda!308349 () Int)

(assert (=> b!5712330 (not (= lambda!308349 lambda!308347))))

(assert (=> bs!1334467 (not (= lambda!308349 lambda!308342))))

(assert (=> bs!1334468 (not (= lambda!308349 lambda!308345))))

(assert (=> b!5712330 (not (= lambda!308349 lambda!308348))))

(assert (=> bs!1334468 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) lt!2275979) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308349 lambda!308346))))

(assert (=> bs!1334467 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) (regOne!31926 r!7292)) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308349 lambda!308343))))

(assert (=> b!5712330 true))

(assert (=> b!5712330 true))

(assert (=> b!5712330 true))

(declare-fun b!5712327 () Bool)

(declare-fun res!2411651 () Bool)

(declare-fun e!3513295 () Bool)

(assert (=> b!5712327 (=> res!2411651 e!3513295)))

(declare-fun matchR!7892 (Regex!15707 List!63420) Bool)

(assert (=> b!5712327 (= res!2411651 (not (matchR!7892 lt!2275979 (_1!36107 lt!2275961))))))

(declare-fun b!5712328 () Bool)

(declare-fun e!3513285 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63421 0))(
  ( (Nil!63297) (Cons!63297 (h!69745 Regex!15707) (t!376741 List!63421)) )
))
(declare-datatypes ((Context!10182 0))(
  ( (Context!10183 (exprs!5591 List!63421)) )
))
(declare-fun lt!2275954 () (InoxSet Context!10182))

(declare-fun matchZipper!1845 ((InoxSet Context!10182) List!63420) Bool)

(assert (=> b!5712328 (= e!3513285 (matchZipper!1845 lt!2275954 (t!376740 s!2326)))))

(declare-fun b!5712329 () Bool)

(declare-fun res!2411635 () Bool)

(declare-fun e!3513290 () Bool)

(assert (=> b!5712329 (=> (not res!2411635) (not e!3513290))))

(declare-fun z!1189 () (InoxSet Context!10182))

(declare-datatypes ((List!63422 0))(
  ( (Nil!63298) (Cons!63298 (h!69746 Context!10182) (t!376742 List!63422)) )
))
(declare-fun zl!343 () List!63422)

(declare-fun toList!9491 ((InoxSet Context!10182)) List!63422)

(assert (=> b!5712329 (= res!2411635 (= (toList!9491 z!1189) zl!343))))

(declare-fun e!3513291 () Bool)

(assert (=> b!5712330 (= e!3513295 e!3513291)))

(declare-fun res!2411652 () Bool)

(assert (=> b!5712330 (=> res!2411652 e!3513291)))

(declare-fun lt!2275980 () List!63420)

(assert (=> b!5712330 (= res!2411652 (not (= (_1!36107 lt!2275961) lt!2275980)))))

(declare-fun lt!2275967 () tuple2!65608)

(declare-fun ++!13899 (List!63420 List!63420) List!63420)

(assert (=> b!5712330 (= lt!2275980 (++!13899 (_1!36107 lt!2275967) (_2!36107 lt!2275967)))))

(declare-datatypes ((Option!15716 0))(
  ( (None!15715) (Some!15715 (v!51770 tuple2!65608)) )
))
(declare-fun lt!2275974 () Option!15716)

(declare-fun get!21820 (Option!15716) tuple2!65608)

(assert (=> b!5712330 (= lt!2275967 (get!21820 lt!2275974))))

(declare-fun Exists!2807 (Int) Bool)

(assert (=> b!5712330 (= (Exists!2807 lambda!308347) (Exists!2807 lambda!308349))))

(declare-datatypes ((Unit!156360 0))(
  ( (Unit!156361) )
))
(declare-fun lt!2275986 () Unit!156360)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1436 (Regex!15707 Regex!15707 List!63420) Unit!156360)

(assert (=> b!5712330 (= lt!2275986 (lemmaExistCutMatchRandMatchRSpecEquivalent!1436 (reg!16036 (regOne!31926 r!7292)) lt!2275979 (_1!36107 lt!2275961)))))

(assert (=> b!5712330 (= (Exists!2807 lambda!308347) (Exists!2807 lambda!308348))))

(declare-fun lt!2275985 () Unit!156360)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!544 (Regex!15707 List!63420) Unit!156360)

(assert (=> b!5712330 (= lt!2275985 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!544 (reg!16036 (regOne!31926 r!7292)) (_1!36107 lt!2275961)))))

(declare-fun isDefined!12419 (Option!15716) Bool)

(assert (=> b!5712330 (= (isDefined!12419 lt!2275974) (Exists!2807 lambda!308347))))

(declare-fun findConcatSeparation!2130 (Regex!15707 Regex!15707 List!63420 List!63420 List!63420) Option!15716)

(assert (=> b!5712330 (= lt!2275974 (findConcatSeparation!2130 (reg!16036 (regOne!31926 r!7292)) lt!2275979 Nil!63296 (_1!36107 lt!2275961) (_1!36107 lt!2275961)))))

(declare-fun lt!2275953 () Unit!156360)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1894 (Regex!15707 Regex!15707 List!63420) Unit!156360)

(assert (=> b!5712330 (= lt!2275953 (lemmaFindConcatSeparationEquivalentToExists!1894 (reg!16036 (regOne!31926 r!7292)) lt!2275979 (_1!36107 lt!2275961)))))

(declare-fun matchRSpec!2810 (Regex!15707 List!63420) Bool)

(assert (=> b!5712330 (matchRSpec!2810 lt!2275979 (_1!36107 lt!2275961))))

(declare-fun lt!2275970 () Unit!156360)

(declare-fun mainMatchTheorem!2810 (Regex!15707 List!63420) Unit!156360)

(assert (=> b!5712330 (= lt!2275970 (mainMatchTheorem!2810 lt!2275979 (_1!36107 lt!2275961)))))

(declare-fun b!5712331 () Bool)

(declare-fun res!2411642 () Bool)

(declare-fun e!3513289 () Bool)

(assert (=> b!5712331 (=> res!2411642 e!3513289)))

(declare-fun lt!2275977 () Regex!15707)

(assert (=> b!5712331 (= res!2411642 (not (= lt!2275977 r!7292)))))

(declare-fun b!5712332 () Bool)

(declare-fun e!3513282 () Unit!156360)

(declare-fun Unit!156362 () Unit!156360)

(assert (=> b!5712332 (= e!3513282 Unit!156362)))

(declare-fun b!5712333 () Bool)

(declare-fun res!2411659 () Bool)

(declare-fun e!3513297 () Bool)

(assert (=> b!5712333 (=> res!2411659 e!3513297)))

(get-info :version)

(assert (=> b!5712333 (= res!2411659 (or ((_ is Concat!24552) (regOne!31926 r!7292)) (not ((_ is Star!15707) (regOne!31926 r!7292)))))))

(declare-fun b!5712334 () Bool)

(declare-fun res!2411658 () Bool)

(assert (=> b!5712334 (=> res!2411658 e!3513289)))

(declare-fun lt!2275996 () (InoxSet Context!10182))

(declare-fun lt!2275972 () (InoxSet Context!10182))

(assert (=> b!5712334 (= res!2411658 (not (= (matchZipper!1845 lt!2275996 s!2326) (matchZipper!1845 lt!2275972 (t!376740 s!2326)))))))

(declare-fun b!5712335 () Bool)

(declare-fun e!3513296 () Bool)

(assert (=> b!5712335 (= e!3513296 (matchR!7892 lt!2275979 (_2!36107 lt!2275967)))))

(declare-fun b!5712336 () Bool)

(declare-fun e!3513298 () Bool)

(declare-fun nullable!5739 (Regex!15707) Bool)

(assert (=> b!5712336 (= e!3513298 (nullable!5739 (regOne!31926 (regOne!31926 r!7292))))))

(declare-fun b!5712337 () Bool)

(declare-fun res!2411644 () Bool)

(assert (=> b!5712337 (=> res!2411644 e!3513295)))

(assert (=> b!5712337 (= res!2411644 (not (matchR!7892 (regTwo!31926 r!7292) (_2!36107 lt!2275961))))))

(declare-fun b!5712338 () Bool)

(declare-fun e!3513283 () Bool)

(declare-fun e!3513293 () Bool)

(assert (=> b!5712338 (= e!3513283 e!3513293)))

(declare-fun res!2411660 () Bool)

(assert (=> b!5712338 (=> res!2411660 e!3513293)))

(declare-fun lt!2275989 () Context!10182)

(declare-fun lt!2275993 () Regex!15707)

(declare-fun unfocusZipper!1449 (List!63422) Regex!15707)

(assert (=> b!5712338 (= res!2411660 (not (= (unfocusZipper!1449 (Cons!63298 lt!2275989 Nil!63298)) lt!2275993)))))

(declare-fun lt!2275965 () Regex!15707)

(assert (=> b!5712338 (= lt!2275993 (Concat!24552 (reg!16036 (regOne!31926 r!7292)) lt!2275965))))

(declare-fun b!5712339 () Bool)

(declare-fun e!3513279 () Bool)

(declare-fun tp_is_empty!40667 () Bool)

(declare-fun tp!1583110 () Bool)

(assert (=> b!5712339 (= e!3513279 (and tp_is_empty!40667 tp!1583110))))

(declare-fun e!3513280 () Bool)

(assert (=> b!5712340 (= e!3513280 e!3513297)))

(declare-fun res!2411653 () Bool)

(assert (=> b!5712340 (=> res!2411653 e!3513297)))

(assert (=> b!5712340 (= res!2411653 (or (and ((_ is ElementMatch!15707) (regOne!31926 r!7292)) (= (c!1006919 (regOne!31926 r!7292)) (h!69744 s!2326))) ((_ is Union!15707) (regOne!31926 r!7292))))))

(declare-fun lt!2275976 () Unit!156360)

(assert (=> b!5712340 (= lt!2275976 e!3513282)))

(declare-fun c!1006918 () Bool)

(assert (=> b!5712340 (= c!1006918 (nullable!5739 (h!69745 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun lambda!308344 () Int)

(declare-fun flatMap!1320 ((InoxSet Context!10182) Int) (InoxSet Context!10182))

(declare-fun derivationStepZipperUp!975 (Context!10182 C!31684) (InoxSet Context!10182))

(assert (=> b!5712340 (= (flatMap!1320 z!1189 lambda!308344) (derivationStepZipperUp!975 (h!69746 zl!343) (h!69744 s!2326)))))

(declare-fun lt!2275995 () Unit!156360)

(declare-fun lemmaFlatMapOnSingletonSet!852 ((InoxSet Context!10182) Context!10182 Int) Unit!156360)

(assert (=> b!5712340 (= lt!2275995 (lemmaFlatMapOnSingletonSet!852 z!1189 (h!69746 zl!343) lambda!308344))))

(declare-fun lt!2275982 () Context!10182)

(assert (=> b!5712340 (= lt!2275954 (derivationStepZipperUp!975 lt!2275982 (h!69744 s!2326)))))

(declare-fun lt!2275973 () (InoxSet Context!10182))

(declare-fun derivationStepZipperDown!1049 (Regex!15707 Context!10182 C!31684) (InoxSet Context!10182))

(assert (=> b!5712340 (= lt!2275973 (derivationStepZipperDown!1049 (h!69745 (exprs!5591 (h!69746 zl!343))) lt!2275982 (h!69744 s!2326)))))

(assert (=> b!5712340 (= lt!2275982 (Context!10183 (t!376741 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun lt!2275960 () (InoxSet Context!10182))

(assert (=> b!5712340 (= lt!2275960 (derivationStepZipperUp!975 (Context!10183 (Cons!63297 (h!69745 (exprs!5591 (h!69746 zl!343))) (t!376741 (exprs!5591 (h!69746 zl!343))))) (h!69744 s!2326)))))

(declare-fun b!5712341 () Bool)

(declare-fun e!3513288 () Bool)

(declare-fun tp!1583113 () Bool)

(declare-fun tp!1583117 () Bool)

(assert (=> b!5712341 (= e!3513288 (and tp!1583113 tp!1583117))))

(declare-fun setIsEmpty!38255 () Bool)

(declare-fun setRes!38255 () Bool)

(assert (=> setIsEmpty!38255 setRes!38255))

(declare-fun b!5712342 () Bool)

(declare-fun res!2411662 () Bool)

(assert (=> b!5712342 (=> res!2411662 e!3513280)))

(declare-fun isEmpty!35166 (List!63421) Bool)

(assert (=> b!5712342 (= res!2411662 (isEmpty!35166 (t!376741 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun b!5712343 () Bool)

(declare-fun e!3513286 () Bool)

(declare-fun tp!1583115 () Bool)

(assert (=> b!5712343 (= e!3513286 tp!1583115)))

(declare-fun b!5712344 () Bool)

(declare-fun res!2411637 () Bool)

(declare-fun e!3513284 () Bool)

(assert (=> b!5712344 (=> res!2411637 e!3513284)))

(assert (=> b!5712344 (= res!2411637 (not ((_ is Cons!63297) (exprs!5591 (h!69746 zl!343)))))))

(declare-fun e!3513294 () Bool)

(assert (=> b!5712345 (= e!3513294 e!3513295)))

(declare-fun res!2411645 () Bool)

(assert (=> b!5712345 (=> res!2411645 e!3513295)))

(assert (=> b!5712345 (= res!2411645 (not (= (++!13899 (_1!36107 lt!2275961) (_2!36107 lt!2275961)) s!2326)))))

(declare-fun lt!2275994 () Option!15716)

(assert (=> b!5712345 (= lt!2275961 (get!21820 lt!2275994))))

(assert (=> b!5712345 (= (Exists!2807 lambda!308345) (Exists!2807 lambda!308346))))

(declare-fun lt!2275984 () Unit!156360)

(assert (=> b!5712345 (= lt!2275984 (lemmaExistCutMatchRandMatchRSpecEquivalent!1436 lt!2275979 (regTwo!31926 r!7292) s!2326))))

(assert (=> b!5712345 (= (isDefined!12419 lt!2275994) (Exists!2807 lambda!308345))))

(assert (=> b!5712345 (= lt!2275994 (findConcatSeparation!2130 lt!2275979 (regTwo!31926 r!7292) Nil!63296 s!2326 s!2326))))

(declare-fun lt!2275958 () Unit!156360)

(assert (=> b!5712345 (= lt!2275958 (lemmaFindConcatSeparationEquivalentToExists!1894 lt!2275979 (regTwo!31926 r!7292) s!2326))))

(declare-fun b!5712346 () Bool)

(declare-fun e!3513287 () Bool)

(assert (=> b!5712346 (= e!3513293 e!3513287)))

(declare-fun res!2411646 () Bool)

(assert (=> b!5712346 (=> res!2411646 e!3513287)))

(declare-fun lt!2275956 () Context!10182)

(assert (=> b!5712346 (= res!2411646 (not (= (unfocusZipper!1449 (Cons!63298 lt!2275956 Nil!63298)) (reg!16036 (regOne!31926 r!7292)))))))

(declare-fun lt!2275955 () (InoxSet Context!10182))

(declare-fun lt!2275966 () Context!10182)

(assert (=> b!5712346 (= (flatMap!1320 lt!2275955 lambda!308344) (derivationStepZipperUp!975 lt!2275966 (h!69744 s!2326)))))

(declare-fun lt!2275990 () Unit!156360)

(assert (=> b!5712346 (= lt!2275990 (lemmaFlatMapOnSingletonSet!852 lt!2275955 lt!2275966 lambda!308344))))

(declare-fun lt!2275950 () (InoxSet Context!10182))

(assert (=> b!5712346 (= (flatMap!1320 lt!2275950 lambda!308344) (derivationStepZipperUp!975 lt!2275956 (h!69744 s!2326)))))

(declare-fun lt!2275983 () Unit!156360)

(assert (=> b!5712346 (= lt!2275983 (lemmaFlatMapOnSingletonSet!852 lt!2275950 lt!2275956 lambda!308344))))

(declare-fun lt!2275991 () (InoxSet Context!10182))

(assert (=> b!5712346 (= lt!2275991 (derivationStepZipperUp!975 lt!2275966 (h!69744 s!2326)))))

(declare-fun lt!2275975 () (InoxSet Context!10182))

(assert (=> b!5712346 (= lt!2275975 (derivationStepZipperUp!975 lt!2275956 (h!69744 s!2326)))))

(assert (=> b!5712346 (= lt!2275955 (store ((as const (Array Context!10182 Bool)) false) lt!2275966 true))))

(assert (=> b!5712346 (= lt!2275950 (store ((as const (Array Context!10182 Bool)) false) lt!2275956 true))))

(assert (=> b!5712346 (= lt!2275956 (Context!10183 (Cons!63297 (reg!16036 (regOne!31926 r!7292)) Nil!63297)))))

(declare-fun res!2411650 () Bool)

(assert (=> start!588232 (=> (not res!2411650) (not e!3513290))))

(declare-fun validRegex!7443 (Regex!15707) Bool)

(assert (=> start!588232 (= res!2411650 (validRegex!7443 r!7292))))

(assert (=> start!588232 e!3513290))

(assert (=> start!588232 e!3513288))

(declare-fun condSetEmpty!38255 () Bool)

(assert (=> start!588232 (= condSetEmpty!38255 (= z!1189 ((as const (Array Context!10182 Bool)) false)))))

(assert (=> start!588232 setRes!38255))

(declare-fun e!3513278 () Bool)

(assert (=> start!588232 e!3513278))

(assert (=> start!588232 e!3513279))

(declare-fun b!5712347 () Bool)

(declare-fun res!2411636 () Bool)

(assert (=> b!5712347 (=> res!2411636 e!3513287)))

(assert (=> b!5712347 (= res!2411636 (not (= (unfocusZipper!1449 (Cons!63298 lt!2275966 Nil!63298)) lt!2275965)))))

(declare-fun b!5712348 () Bool)

(declare-fun res!2411641 () Bool)

(assert (=> b!5712348 (=> res!2411641 e!3513296)))

(assert (=> b!5712348 (= res!2411641 (not (matchR!7892 (reg!16036 (regOne!31926 r!7292)) (_1!36107 lt!2275967))))))

(declare-fun b!5712349 () Bool)

(declare-fun res!2411663 () Bool)

(assert (=> b!5712349 (=> res!2411663 e!3513297)))

(assert (=> b!5712349 (= res!2411663 e!3513298)))

(declare-fun res!2411633 () Bool)

(assert (=> b!5712349 (=> (not res!2411633) (not e!3513298))))

(assert (=> b!5712349 (= res!2411633 ((_ is Concat!24552) (regOne!31926 r!7292)))))

(declare-fun b!5712350 () Bool)

(declare-fun e!3513300 () Bool)

(declare-fun tp!1583109 () Bool)

(assert (=> b!5712350 (= e!3513300 tp!1583109)))

(declare-fun b!5712351 () Bool)

(declare-fun e!3513281 () Bool)

(assert (=> b!5712351 (= e!3513290 e!3513281)))

(declare-fun res!2411656 () Bool)

(assert (=> b!5712351 (=> (not res!2411656) (not e!3513281))))

(assert (=> b!5712351 (= res!2411656 (= r!7292 lt!2275977))))

(assert (=> b!5712351 (= lt!2275977 (unfocusZipper!1449 zl!343))))

(declare-fun b!5712352 () Bool)

(declare-fun res!2411655 () Bool)

(assert (=> b!5712352 (=> res!2411655 e!3513284)))

(declare-fun generalisedConcat!1322 (List!63421) Regex!15707)

(assert (=> b!5712352 (= res!2411655 (not (= r!7292 (generalisedConcat!1322 (exprs!5591 (h!69746 zl!343))))))))

(declare-fun b!5712353 () Bool)

(declare-fun Unit!156363 () Unit!156360)

(assert (=> b!5712353 (= e!3513282 Unit!156363)))

(declare-fun lt!2275987 () Unit!156360)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!732 ((InoxSet Context!10182) (InoxSet Context!10182) List!63420) Unit!156360)

(assert (=> b!5712353 (= lt!2275987 (lemmaZipperConcatMatchesSameAsBothZippers!732 lt!2275973 lt!2275954 (t!376740 s!2326)))))

(declare-fun res!2411632 () Bool)

(assert (=> b!5712353 (= res!2411632 (matchZipper!1845 lt!2275973 (t!376740 s!2326)))))

(assert (=> b!5712353 (=> res!2411632 e!3513285)))

(assert (=> b!5712353 (= (matchZipper!1845 ((_ map or) lt!2275973 lt!2275954) (t!376740 s!2326)) e!3513285)))

(declare-fun b!5712354 () Bool)

(declare-fun res!2411640 () Bool)

(assert (=> b!5712354 (=> res!2411640 e!3513284)))

(declare-fun isEmpty!35167 (List!63422) Bool)

(assert (=> b!5712354 (= res!2411640 (not (isEmpty!35167 (t!376742 zl!343))))))

(declare-fun b!5712355 () Bool)

(declare-fun tp!1583111 () Bool)

(declare-fun tp!1583116 () Bool)

(assert (=> b!5712355 (= e!3513288 (and tp!1583111 tp!1583116))))

(declare-fun tp!1583114 () Bool)

(declare-fun b!5712356 () Bool)

(declare-fun inv!82514 (Context!10182) Bool)

(assert (=> b!5712356 (= e!3513278 (and (inv!82514 (h!69746 zl!343)) e!3513286 tp!1583114))))

(declare-fun b!5712357 () Bool)

(assert (=> b!5712357 (= e!3513291 e!3513296)))

(declare-fun res!2411638 () Bool)

(assert (=> b!5712357 (=> res!2411638 e!3513296)))

(declare-fun lt!2275964 () List!63420)

(assert (=> b!5712357 (= res!2411638 (not (= lt!2275964 s!2326)))))

(declare-fun lt!2275962 () List!63420)

(assert (=> b!5712357 (= lt!2275964 (++!13899 (_1!36107 lt!2275967) lt!2275962))))

(assert (=> b!5712357 (= lt!2275964 (++!13899 lt!2275980 (_2!36107 lt!2275961)))))

(assert (=> b!5712357 (= lt!2275962 (++!13899 (_2!36107 lt!2275967) (_2!36107 lt!2275961)))))

(declare-fun lt!2275992 () Unit!156360)

(declare-fun lemmaConcatAssociativity!2874 (List!63420 List!63420 List!63420) Unit!156360)

(assert (=> b!5712357 (= lt!2275992 (lemmaConcatAssociativity!2874 (_1!36107 lt!2275967) (_2!36107 lt!2275967) (_2!36107 lt!2275961)))))

(declare-fun b!5712358 () Bool)

(assert (=> b!5712358 (= e!3513288 tp_is_empty!40667)))

(declare-fun b!5712359 () Bool)

(declare-fun res!2411648 () Bool)

(assert (=> b!5712359 (=> res!2411648 e!3513295)))

(declare-fun isEmpty!35168 (List!63420) Bool)

(assert (=> b!5712359 (= res!2411648 (isEmpty!35168 (_1!36107 lt!2275961)))))

(declare-fun b!5712360 () Bool)

(declare-fun e!3513299 () Bool)

(assert (=> b!5712360 (= e!3513297 e!3513299)))

(declare-fun res!2411643 () Bool)

(assert (=> b!5712360 (=> res!2411643 e!3513299)))

(declare-fun lt!2275978 () (InoxSet Context!10182))

(assert (=> b!5712360 (= res!2411643 (not (= lt!2275973 lt!2275978)))))

(assert (=> b!5712360 (= lt!2275978 (derivationStepZipperDown!1049 (reg!16036 (regOne!31926 r!7292)) lt!2275966 (h!69744 s!2326)))))

(declare-fun lt!2275971 () List!63421)

(assert (=> b!5712360 (= lt!2275966 (Context!10183 lt!2275971))))

(assert (=> b!5712360 (= lt!2275971 (Cons!63297 lt!2275979 (t!376741 (exprs!5591 (h!69746 zl!343)))))))

(assert (=> b!5712360 (= lt!2275979 (Star!15707 (reg!16036 (regOne!31926 r!7292))))))

(declare-fun b!5712361 () Bool)

(declare-fun tp!1583118 () Bool)

(assert (=> b!5712361 (= e!3513288 tp!1583118)))

(declare-fun b!5712362 () Bool)

(declare-fun e!3513292 () Bool)

(declare-fun lt!2275981 () Bool)

(declare-fun lt!2275952 () Bool)

(assert (=> b!5712362 (= e!3513292 (or (not lt!2275981) lt!2275952))))

(declare-fun setElem!38255 () Context!10182)

(declare-fun tp!1583112 () Bool)

(declare-fun setNonEmpty!38255 () Bool)

(assert (=> setNonEmpty!38255 (= setRes!38255 (and tp!1583112 (inv!82514 setElem!38255) e!3513300))))

(declare-fun setRest!38255 () (InoxSet Context!10182))

(assert (=> setNonEmpty!38255 (= z!1189 ((_ map or) (store ((as const (Array Context!10182 Bool)) false) setElem!38255 true) setRest!38255))))

(declare-fun b!5712363 () Bool)

(assert (=> b!5712363 (= e!3513299 e!3513289)))

(declare-fun res!2411661 () Bool)

(assert (=> b!5712363 (=> res!2411661 e!3513289)))

(assert (=> b!5712363 (= res!2411661 (not (= lt!2275972 lt!2275978)))))

(assert (=> b!5712363 (= (flatMap!1320 lt!2275996 lambda!308344) (derivationStepZipperUp!975 lt!2275989 (h!69744 s!2326)))))

(declare-fun lt!2275988 () Unit!156360)

(assert (=> b!5712363 (= lt!2275988 (lemmaFlatMapOnSingletonSet!852 lt!2275996 lt!2275989 lambda!308344))))

(declare-fun lt!2275963 () (InoxSet Context!10182))

(assert (=> b!5712363 (= lt!2275963 (derivationStepZipperUp!975 lt!2275989 (h!69744 s!2326)))))

(declare-fun derivationStepZipper!1790 ((InoxSet Context!10182) C!31684) (InoxSet Context!10182))

(assert (=> b!5712363 (= lt!2275972 (derivationStepZipper!1790 lt!2275996 (h!69744 s!2326)))))

(assert (=> b!5712363 (= lt!2275996 (store ((as const (Array Context!10182 Bool)) false) lt!2275989 true))))

(assert (=> b!5712363 (= lt!2275989 (Context!10183 (Cons!63297 (reg!16036 (regOne!31926 r!7292)) lt!2275971)))))

(declare-fun b!5712364 () Bool)

(declare-fun res!2411647 () Bool)

(assert (=> b!5712364 (=> res!2411647 e!3513284)))

(declare-fun generalisedUnion!1570 (List!63421) Regex!15707)

(declare-fun unfocusZipperList!1135 (List!63422) List!63421)

(assert (=> b!5712364 (= res!2411647 (not (= r!7292 (generalisedUnion!1570 (unfocusZipperList!1135 zl!343)))))))

(declare-fun b!5712365 () Bool)

(assert (=> b!5712365 (= e!3513289 e!3513283)))

(declare-fun res!2411634 () Bool)

(assert (=> b!5712365 (=> res!2411634 e!3513283)))

(assert (=> b!5712365 (= res!2411634 (not (= r!7292 lt!2275965)))))

(assert (=> b!5712365 (= lt!2275965 (Concat!24552 lt!2275979 (regTwo!31926 r!7292)))))

(declare-fun b!5712366 () Bool)

(declare-fun res!2411639 () Bool)

(assert (=> b!5712366 (=> res!2411639 e!3513284)))

(assert (=> b!5712366 (= res!2411639 (or ((_ is EmptyExpr!15707) r!7292) ((_ is EmptyLang!15707) r!7292) ((_ is ElementMatch!15707) r!7292) ((_ is Union!15707) r!7292) (not ((_ is Concat!24552) r!7292))))))

(assert (=> b!5712367 (= e!3513284 e!3513280)))

(declare-fun res!2411657 () Bool)

(assert (=> b!5712367 (=> res!2411657 e!3513280)))

(declare-fun lt!2275957 () Bool)

(assert (=> b!5712367 (= res!2411657 (or (not (= lt!2275981 lt!2275957)) ((_ is Nil!63296) s!2326)))))

(assert (=> b!5712367 (= (Exists!2807 lambda!308342) (Exists!2807 lambda!308343))))

(declare-fun lt!2275968 () Unit!156360)

(assert (=> b!5712367 (= lt!2275968 (lemmaExistCutMatchRandMatchRSpecEquivalent!1436 (regOne!31926 r!7292) (regTwo!31926 r!7292) s!2326))))

(assert (=> b!5712367 (= lt!2275957 (Exists!2807 lambda!308342))))

(assert (=> b!5712367 (= lt!2275957 (isDefined!12419 (findConcatSeparation!2130 (regOne!31926 r!7292) (regTwo!31926 r!7292) Nil!63296 s!2326 s!2326)))))

(declare-fun lt!2275951 () Unit!156360)

(assert (=> b!5712367 (= lt!2275951 (lemmaFindConcatSeparationEquivalentToExists!1894 (regOne!31926 r!7292) (regTwo!31926 r!7292) s!2326))))

(declare-fun b!5712368 () Bool)

(assert (=> b!5712368 (= e!3513281 (not e!3513284))))

(declare-fun res!2411649 () Bool)

(assert (=> b!5712368 (=> res!2411649 e!3513284)))

(assert (=> b!5712368 (= res!2411649 (not ((_ is Cons!63298) zl!343)))))

(assert (=> b!5712368 (= lt!2275981 lt!2275952)))

(assert (=> b!5712368 (= lt!2275952 (matchRSpec!2810 r!7292 s!2326))))

(assert (=> b!5712368 (= lt!2275981 (matchR!7892 r!7292 s!2326))))

(declare-fun lt!2275969 () Unit!156360)

(assert (=> b!5712368 (= lt!2275969 (mainMatchTheorem!2810 r!7292 s!2326))))

(declare-fun b!5712369 () Bool)

(assert (=> b!5712369 (= e!3513287 e!3513294)))

(declare-fun res!2411631 () Bool)

(assert (=> b!5712369 (=> res!2411631 e!3513294)))

(assert (=> b!5712369 (= res!2411631 (not lt!2275981))))

(assert (=> b!5712369 e!3513292))

(declare-fun res!2411654 () Bool)

(assert (=> b!5712369 (=> (not res!2411654) (not e!3513292))))

(assert (=> b!5712369 (= res!2411654 (= (matchR!7892 lt!2275993 s!2326) (matchRSpec!2810 lt!2275993 s!2326)))))

(declare-fun lt!2275959 () Unit!156360)

(assert (=> b!5712369 (= lt!2275959 (mainMatchTheorem!2810 lt!2275993 s!2326))))

(assert (= (and start!588232 res!2411650) b!5712329))

(assert (= (and b!5712329 res!2411635) b!5712351))

(assert (= (and b!5712351 res!2411656) b!5712368))

(assert (= (and b!5712368 (not res!2411649)) b!5712354))

(assert (= (and b!5712354 (not res!2411640)) b!5712352))

(assert (= (and b!5712352 (not res!2411655)) b!5712344))

(assert (= (and b!5712344 (not res!2411637)) b!5712364))

(assert (= (and b!5712364 (not res!2411647)) b!5712366))

(assert (= (and b!5712366 (not res!2411639)) b!5712367))

(assert (= (and b!5712367 (not res!2411657)) b!5712342))

(assert (= (and b!5712342 (not res!2411662)) b!5712340))

(assert (= (and b!5712340 c!1006918) b!5712353))

(assert (= (and b!5712340 (not c!1006918)) b!5712332))

(assert (= (and b!5712353 (not res!2411632)) b!5712328))

(assert (= (and b!5712340 (not res!2411653)) b!5712349))

(assert (= (and b!5712349 res!2411633) b!5712336))

(assert (= (and b!5712349 (not res!2411663)) b!5712333))

(assert (= (and b!5712333 (not res!2411659)) b!5712360))

(assert (= (and b!5712360 (not res!2411643)) b!5712363))

(assert (= (and b!5712363 (not res!2411661)) b!5712334))

(assert (= (and b!5712334 (not res!2411658)) b!5712331))

(assert (= (and b!5712331 (not res!2411642)) b!5712365))

(assert (= (and b!5712365 (not res!2411634)) b!5712338))

(assert (= (and b!5712338 (not res!2411660)) b!5712346))

(assert (= (and b!5712346 (not res!2411646)) b!5712347))

(assert (= (and b!5712347 (not res!2411636)) b!5712369))

(assert (= (and b!5712369 res!2411654) b!5712362))

(assert (= (and b!5712369 (not res!2411631)) b!5712345))

(assert (= (and b!5712345 (not res!2411645)) b!5712327))

(assert (= (and b!5712327 (not res!2411651)) b!5712337))

(assert (= (and b!5712337 (not res!2411644)) b!5712359))

(assert (= (and b!5712359 (not res!2411648)) b!5712330))

(assert (= (and b!5712330 (not res!2411652)) b!5712357))

(assert (= (and b!5712357 (not res!2411638)) b!5712348))

(assert (= (and b!5712348 (not res!2411641)) b!5712335))

(assert (= (and start!588232 ((_ is ElementMatch!15707) r!7292)) b!5712358))

(assert (= (and start!588232 ((_ is Concat!24552) r!7292)) b!5712355))

(assert (= (and start!588232 ((_ is Star!15707) r!7292)) b!5712361))

(assert (= (and start!588232 ((_ is Union!15707) r!7292)) b!5712341))

(assert (= (and start!588232 condSetEmpty!38255) setIsEmpty!38255))

(assert (= (and start!588232 (not condSetEmpty!38255)) setNonEmpty!38255))

(assert (= setNonEmpty!38255 b!5712350))

(assert (= b!5712356 b!5712343))

(assert (= (and start!588232 ((_ is Cons!63298) zl!343)) b!5712356))

(assert (= (and start!588232 ((_ is Cons!63296) s!2326)) b!5712339))

(declare-fun m!6665818 () Bool)

(assert (=> b!5712369 m!6665818))

(declare-fun m!6665820 () Bool)

(assert (=> b!5712369 m!6665820))

(declare-fun m!6665822 () Bool)

(assert (=> b!5712369 m!6665822))

(declare-fun m!6665824 () Bool)

(assert (=> b!5712347 m!6665824))

(declare-fun m!6665826 () Bool)

(assert (=> setNonEmpty!38255 m!6665826))

(declare-fun m!6665828 () Bool)

(assert (=> b!5712340 m!6665828))

(declare-fun m!6665830 () Bool)

(assert (=> b!5712340 m!6665830))

(declare-fun m!6665832 () Bool)

(assert (=> b!5712340 m!6665832))

(declare-fun m!6665834 () Bool)

(assert (=> b!5712340 m!6665834))

(declare-fun m!6665836 () Bool)

(assert (=> b!5712340 m!6665836))

(declare-fun m!6665838 () Bool)

(assert (=> b!5712340 m!6665838))

(declare-fun m!6665840 () Bool)

(assert (=> b!5712340 m!6665840))

(declare-fun m!6665842 () Bool)

(assert (=> b!5712328 m!6665842))

(declare-fun m!6665844 () Bool)

(assert (=> b!5712335 m!6665844))

(declare-fun m!6665846 () Bool)

(assert (=> b!5712330 m!6665846))

(declare-fun m!6665848 () Bool)

(assert (=> b!5712330 m!6665848))

(declare-fun m!6665850 () Bool)

(assert (=> b!5712330 m!6665850))

(declare-fun m!6665852 () Bool)

(assert (=> b!5712330 m!6665852))

(assert (=> b!5712330 m!6665850))

(assert (=> b!5712330 m!6665850))

(declare-fun m!6665854 () Bool)

(assert (=> b!5712330 m!6665854))

(declare-fun m!6665856 () Bool)

(assert (=> b!5712330 m!6665856))

(declare-fun m!6665858 () Bool)

(assert (=> b!5712330 m!6665858))

(declare-fun m!6665860 () Bool)

(assert (=> b!5712330 m!6665860))

(declare-fun m!6665862 () Bool)

(assert (=> b!5712330 m!6665862))

(declare-fun m!6665864 () Bool)

(assert (=> b!5712330 m!6665864))

(declare-fun m!6665866 () Bool)

(assert (=> b!5712330 m!6665866))

(declare-fun m!6665868 () Bool)

(assert (=> b!5712330 m!6665868))

(declare-fun m!6665870 () Bool)

(assert (=> b!5712348 m!6665870))

(declare-fun m!6665872 () Bool)

(assert (=> b!5712336 m!6665872))

(declare-fun m!6665874 () Bool)

(assert (=> b!5712363 m!6665874))

(declare-fun m!6665876 () Bool)

(assert (=> b!5712363 m!6665876))

(declare-fun m!6665878 () Bool)

(assert (=> b!5712363 m!6665878))

(declare-fun m!6665880 () Bool)

(assert (=> b!5712363 m!6665880))

(declare-fun m!6665882 () Bool)

(assert (=> b!5712363 m!6665882))

(declare-fun m!6665884 () Bool)

(assert (=> b!5712367 m!6665884))

(declare-fun m!6665886 () Bool)

(assert (=> b!5712367 m!6665886))

(declare-fun m!6665888 () Bool)

(assert (=> b!5712367 m!6665888))

(declare-fun m!6665890 () Bool)

(assert (=> b!5712367 m!6665890))

(assert (=> b!5712367 m!6665884))

(declare-fun m!6665892 () Bool)

(assert (=> b!5712367 m!6665892))

(assert (=> b!5712367 m!6665886))

(declare-fun m!6665894 () Bool)

(assert (=> b!5712367 m!6665894))

(declare-fun m!6665896 () Bool)

(assert (=> b!5712327 m!6665896))

(declare-fun m!6665898 () Bool)

(assert (=> b!5712346 m!6665898))

(declare-fun m!6665900 () Bool)

(assert (=> b!5712346 m!6665900))

(declare-fun m!6665902 () Bool)

(assert (=> b!5712346 m!6665902))

(declare-fun m!6665904 () Bool)

(assert (=> b!5712346 m!6665904))

(declare-fun m!6665906 () Bool)

(assert (=> b!5712346 m!6665906))

(declare-fun m!6665908 () Bool)

(assert (=> b!5712346 m!6665908))

(declare-fun m!6665910 () Bool)

(assert (=> b!5712346 m!6665910))

(declare-fun m!6665912 () Bool)

(assert (=> b!5712346 m!6665912))

(declare-fun m!6665914 () Bool)

(assert (=> b!5712346 m!6665914))

(declare-fun m!6665916 () Bool)

(assert (=> b!5712338 m!6665916))

(declare-fun m!6665918 () Bool)

(assert (=> b!5712360 m!6665918))

(declare-fun m!6665920 () Bool)

(assert (=> start!588232 m!6665920))

(declare-fun m!6665922 () Bool)

(assert (=> b!5712329 m!6665922))

(declare-fun m!6665924 () Bool)

(assert (=> b!5712357 m!6665924))

(declare-fun m!6665926 () Bool)

(assert (=> b!5712357 m!6665926))

(declare-fun m!6665928 () Bool)

(assert (=> b!5712357 m!6665928))

(declare-fun m!6665930 () Bool)

(assert (=> b!5712357 m!6665930))

(declare-fun m!6665932 () Bool)

(assert (=> b!5712351 m!6665932))

(declare-fun m!6665934 () Bool)

(assert (=> b!5712337 m!6665934))

(declare-fun m!6665936 () Bool)

(assert (=> b!5712354 m!6665936))

(declare-fun m!6665938 () Bool)

(assert (=> b!5712364 m!6665938))

(assert (=> b!5712364 m!6665938))

(declare-fun m!6665940 () Bool)

(assert (=> b!5712364 m!6665940))

(declare-fun m!6665942 () Bool)

(assert (=> b!5712352 m!6665942))

(declare-fun m!6665944 () Bool)

(assert (=> b!5712345 m!6665944))

(declare-fun m!6665946 () Bool)

(assert (=> b!5712345 m!6665946))

(declare-fun m!6665948 () Bool)

(assert (=> b!5712345 m!6665948))

(assert (=> b!5712345 m!6665946))

(declare-fun m!6665950 () Bool)

(assert (=> b!5712345 m!6665950))

(declare-fun m!6665952 () Bool)

(assert (=> b!5712345 m!6665952))

(declare-fun m!6665954 () Bool)

(assert (=> b!5712345 m!6665954))

(declare-fun m!6665956 () Bool)

(assert (=> b!5712345 m!6665956))

(declare-fun m!6665958 () Bool)

(assert (=> b!5712345 m!6665958))

(declare-fun m!6665960 () Bool)

(assert (=> b!5712359 m!6665960))

(declare-fun m!6665962 () Bool)

(assert (=> b!5712353 m!6665962))

(declare-fun m!6665964 () Bool)

(assert (=> b!5712353 m!6665964))

(declare-fun m!6665966 () Bool)

(assert (=> b!5712353 m!6665966))

(declare-fun m!6665968 () Bool)

(assert (=> b!5712356 m!6665968))

(declare-fun m!6665970 () Bool)

(assert (=> b!5712342 m!6665970))

(declare-fun m!6665972 () Bool)

(assert (=> b!5712368 m!6665972))

(declare-fun m!6665974 () Bool)

(assert (=> b!5712368 m!6665974))

(declare-fun m!6665976 () Bool)

(assert (=> b!5712368 m!6665976))

(declare-fun m!6665978 () Bool)

(assert (=> b!5712334 m!6665978))

(declare-fun m!6665980 () Bool)

(assert (=> b!5712334 m!6665980))

(check-sat (not b!5712356) (not b!5712363) (not b!5712340) (not b!5712353) (not b!5712367) (not b!5712336) (not b!5712342) (not b!5712341) (not b!5712347) (not b!5712330) (not b!5712350) (not b!5712329) (not b!5712346) (not b!5712338) (not b!5712361) (not b!5712334) (not start!588232) (not setNonEmpty!38255) (not b!5712369) (not b!5712359) (not b!5712355) (not b!5712328) (not b!5712360) (not b!5712352) (not b!5712357) (not b!5712343) (not b!5712354) (not b!5712337) (not b!5712351) (not b!5712345) (not b!5712368) tp_is_empty!40667 (not b!5712339) (not b!5712335) (not b!5712327) (not b!5712348) (not b!5712364))
(check-sat)
(get-model)

(declare-fun b!5712511 () Bool)

(declare-fun e!3513380 () Regex!15707)

(assert (=> b!5712511 (= e!3513380 (h!69745 (exprs!5591 (h!69746 zl!343))))))

(declare-fun b!5712512 () Bool)

(declare-fun e!3513383 () Regex!15707)

(assert (=> b!5712512 (= e!3513383 EmptyExpr!15707)))

(declare-fun b!5712513 () Bool)

(declare-fun e!3513385 () Bool)

(assert (=> b!5712513 (= e!3513385 (isEmpty!35166 (t!376741 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun b!5712514 () Bool)

(assert (=> b!5712514 (= e!3513380 e!3513383)))

(declare-fun c!1006961 () Bool)

(assert (=> b!5712514 (= c!1006961 ((_ is Cons!63297) (exprs!5591 (h!69746 zl!343))))))

(declare-fun b!5712515 () Bool)

(declare-fun e!3513384 () Bool)

(declare-fun lt!2276015 () Regex!15707)

(declare-fun head!12101 (List!63421) Regex!15707)

(assert (=> b!5712515 (= e!3513384 (= lt!2276015 (head!12101 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun b!5712516 () Bool)

(declare-fun isConcat!741 (Regex!15707) Bool)

(assert (=> b!5712516 (= e!3513384 (isConcat!741 lt!2276015))))

(declare-fun d!1802015 () Bool)

(declare-fun e!3513382 () Bool)

(assert (=> d!1802015 e!3513382))

(declare-fun res!2411723 () Bool)

(assert (=> d!1802015 (=> (not res!2411723) (not e!3513382))))

(assert (=> d!1802015 (= res!2411723 (validRegex!7443 lt!2276015))))

(assert (=> d!1802015 (= lt!2276015 e!3513380)))

(declare-fun c!1006960 () Bool)

(assert (=> d!1802015 (= c!1006960 e!3513385)))

(declare-fun res!2411724 () Bool)

(assert (=> d!1802015 (=> (not res!2411724) (not e!3513385))))

(assert (=> d!1802015 (= res!2411724 ((_ is Cons!63297) (exprs!5591 (h!69746 zl!343))))))

(declare-fun lambda!308358 () Int)

(declare-fun forall!14845 (List!63421 Int) Bool)

(assert (=> d!1802015 (forall!14845 (exprs!5591 (h!69746 zl!343)) lambda!308358)))

(assert (=> d!1802015 (= (generalisedConcat!1322 (exprs!5591 (h!69746 zl!343))) lt!2276015)))

(declare-fun b!5712517 () Bool)

(declare-fun e!3513381 () Bool)

(declare-fun isEmptyExpr!1218 (Regex!15707) Bool)

(assert (=> b!5712517 (= e!3513381 (isEmptyExpr!1218 lt!2276015))))

(declare-fun b!5712518 () Bool)

(assert (=> b!5712518 (= e!3513382 e!3513381)))

(declare-fun c!1006958 () Bool)

(assert (=> b!5712518 (= c!1006958 (isEmpty!35166 (exprs!5591 (h!69746 zl!343))))))

(declare-fun b!5712519 () Bool)

(assert (=> b!5712519 (= e!3513381 e!3513384)))

(declare-fun c!1006959 () Bool)

(declare-fun tail!11196 (List!63421) List!63421)

(assert (=> b!5712519 (= c!1006959 (isEmpty!35166 (tail!11196 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun b!5712520 () Bool)

(assert (=> b!5712520 (= e!3513383 (Concat!24552 (h!69745 (exprs!5591 (h!69746 zl!343))) (generalisedConcat!1322 (t!376741 (exprs!5591 (h!69746 zl!343))))))))

(assert (= (and d!1802015 res!2411724) b!5712513))

(assert (= (and d!1802015 c!1006960) b!5712511))

(assert (= (and d!1802015 (not c!1006960)) b!5712514))

(assert (= (and b!5712514 c!1006961) b!5712520))

(assert (= (and b!5712514 (not c!1006961)) b!5712512))

(assert (= (and d!1802015 res!2411723) b!5712518))

(assert (= (and b!5712518 c!1006958) b!5712517))

(assert (= (and b!5712518 (not c!1006958)) b!5712519))

(assert (= (and b!5712519 c!1006959) b!5712515))

(assert (= (and b!5712519 (not c!1006959)) b!5712516))

(declare-fun m!6666076 () Bool)

(assert (=> b!5712515 m!6666076))

(declare-fun m!6666078 () Bool)

(assert (=> b!5712519 m!6666078))

(assert (=> b!5712519 m!6666078))

(declare-fun m!6666082 () Bool)

(assert (=> b!5712519 m!6666082))

(declare-fun m!6666084 () Bool)

(assert (=> d!1802015 m!6666084))

(declare-fun m!6666086 () Bool)

(assert (=> d!1802015 m!6666086))

(assert (=> b!5712513 m!6665970))

(declare-fun m!6666090 () Bool)

(assert (=> b!5712520 m!6666090))

(declare-fun m!6666092 () Bool)

(assert (=> b!5712517 m!6666092))

(declare-fun m!6666094 () Bool)

(assert (=> b!5712518 m!6666094))

(declare-fun m!6666096 () Bool)

(assert (=> b!5712516 m!6666096))

(assert (=> b!5712352 d!1802015))

(declare-fun e!3513388 () Bool)

(declare-fun d!1802041 () Bool)

(assert (=> d!1802041 (= (matchZipper!1845 ((_ map or) lt!2275973 lt!2275954) (t!376740 s!2326)) e!3513388)))

(declare-fun res!2411727 () Bool)

(assert (=> d!1802041 (=> res!2411727 e!3513388)))

(assert (=> d!1802041 (= res!2411727 (matchZipper!1845 lt!2275973 (t!376740 s!2326)))))

(declare-fun lt!2276018 () Unit!156360)

(declare-fun choose!43183 ((InoxSet Context!10182) (InoxSet Context!10182) List!63420) Unit!156360)

(assert (=> d!1802041 (= lt!2276018 (choose!43183 lt!2275973 lt!2275954 (t!376740 s!2326)))))

(assert (=> d!1802041 (= (lemmaZipperConcatMatchesSameAsBothZippers!732 lt!2275973 lt!2275954 (t!376740 s!2326)) lt!2276018)))

(declare-fun b!5712523 () Bool)

(assert (=> b!5712523 (= e!3513388 (matchZipper!1845 lt!2275954 (t!376740 s!2326)))))

(assert (= (and d!1802041 (not res!2411727)) b!5712523))

(assert (=> d!1802041 m!6665966))

(assert (=> d!1802041 m!6665964))

(declare-fun m!6666098 () Bool)

(assert (=> d!1802041 m!6666098))

(assert (=> b!5712523 m!6665842))

(assert (=> b!5712353 d!1802041))

(declare-fun d!1802043 () Bool)

(declare-fun c!1006972 () Bool)

(assert (=> d!1802043 (= c!1006972 (isEmpty!35168 (t!376740 s!2326)))))

(declare-fun e!3513407 () Bool)

(assert (=> d!1802043 (= (matchZipper!1845 lt!2275973 (t!376740 s!2326)) e!3513407)))

(declare-fun b!5712556 () Bool)

(declare-fun nullableZipper!1660 ((InoxSet Context!10182)) Bool)

(assert (=> b!5712556 (= e!3513407 (nullableZipper!1660 lt!2275973))))

(declare-fun b!5712557 () Bool)

(declare-fun head!12102 (List!63420) C!31684)

(declare-fun tail!11197 (List!63420) List!63420)

(assert (=> b!5712557 (= e!3513407 (matchZipper!1845 (derivationStepZipper!1790 lt!2275973 (head!12102 (t!376740 s!2326))) (tail!11197 (t!376740 s!2326))))))

(assert (= (and d!1802043 c!1006972) b!5712556))

(assert (= (and d!1802043 (not c!1006972)) b!5712557))

(declare-fun m!6666100 () Bool)

(assert (=> d!1802043 m!6666100))

(declare-fun m!6666102 () Bool)

(assert (=> b!5712556 m!6666102))

(declare-fun m!6666104 () Bool)

(assert (=> b!5712557 m!6666104))

(assert (=> b!5712557 m!6666104))

(declare-fun m!6666106 () Bool)

(assert (=> b!5712557 m!6666106))

(declare-fun m!6666108 () Bool)

(assert (=> b!5712557 m!6666108))

(assert (=> b!5712557 m!6666106))

(assert (=> b!5712557 m!6666108))

(declare-fun m!6666110 () Bool)

(assert (=> b!5712557 m!6666110))

(assert (=> b!5712353 d!1802043))

(declare-fun d!1802045 () Bool)

(declare-fun c!1006973 () Bool)

(assert (=> d!1802045 (= c!1006973 (isEmpty!35168 (t!376740 s!2326)))))

(declare-fun e!3513408 () Bool)

(assert (=> d!1802045 (= (matchZipper!1845 ((_ map or) lt!2275973 lt!2275954) (t!376740 s!2326)) e!3513408)))

(declare-fun b!5712558 () Bool)

(assert (=> b!5712558 (= e!3513408 (nullableZipper!1660 ((_ map or) lt!2275973 lt!2275954)))))

(declare-fun b!5712559 () Bool)

(assert (=> b!5712559 (= e!3513408 (matchZipper!1845 (derivationStepZipper!1790 ((_ map or) lt!2275973 lt!2275954) (head!12102 (t!376740 s!2326))) (tail!11197 (t!376740 s!2326))))))

(assert (= (and d!1802045 c!1006973) b!5712558))

(assert (= (and d!1802045 (not c!1006973)) b!5712559))

(assert (=> d!1802045 m!6666100))

(declare-fun m!6666112 () Bool)

(assert (=> b!5712558 m!6666112))

(assert (=> b!5712559 m!6666104))

(assert (=> b!5712559 m!6666104))

(declare-fun m!6666114 () Bool)

(assert (=> b!5712559 m!6666114))

(assert (=> b!5712559 m!6666108))

(assert (=> b!5712559 m!6666114))

(assert (=> b!5712559 m!6666108))

(declare-fun m!6666116 () Bool)

(assert (=> b!5712559 m!6666116))

(assert (=> b!5712353 d!1802045))

(declare-fun d!1802047 () Bool)

(declare-fun c!1006974 () Bool)

(assert (=> d!1802047 (= c!1006974 (isEmpty!35168 s!2326))))

(declare-fun e!3513409 () Bool)

(assert (=> d!1802047 (= (matchZipper!1845 lt!2275996 s!2326) e!3513409)))

(declare-fun b!5712560 () Bool)

(assert (=> b!5712560 (= e!3513409 (nullableZipper!1660 lt!2275996))))

(declare-fun b!5712561 () Bool)

(assert (=> b!5712561 (= e!3513409 (matchZipper!1845 (derivationStepZipper!1790 lt!2275996 (head!12102 s!2326)) (tail!11197 s!2326)))))

(assert (= (and d!1802047 c!1006974) b!5712560))

(assert (= (and d!1802047 (not c!1006974)) b!5712561))

(declare-fun m!6666118 () Bool)

(assert (=> d!1802047 m!6666118))

(declare-fun m!6666120 () Bool)

(assert (=> b!5712560 m!6666120))

(declare-fun m!6666122 () Bool)

(assert (=> b!5712561 m!6666122))

(assert (=> b!5712561 m!6666122))

(declare-fun m!6666124 () Bool)

(assert (=> b!5712561 m!6666124))

(declare-fun m!6666126 () Bool)

(assert (=> b!5712561 m!6666126))

(assert (=> b!5712561 m!6666124))

(assert (=> b!5712561 m!6666126))

(declare-fun m!6666128 () Bool)

(assert (=> b!5712561 m!6666128))

(assert (=> b!5712334 d!1802047))

(declare-fun d!1802049 () Bool)

(declare-fun c!1006975 () Bool)

(assert (=> d!1802049 (= c!1006975 (isEmpty!35168 (t!376740 s!2326)))))

(declare-fun e!3513410 () Bool)

(assert (=> d!1802049 (= (matchZipper!1845 lt!2275972 (t!376740 s!2326)) e!3513410)))

(declare-fun b!5712562 () Bool)

(assert (=> b!5712562 (= e!3513410 (nullableZipper!1660 lt!2275972))))

(declare-fun b!5712563 () Bool)

(assert (=> b!5712563 (= e!3513410 (matchZipper!1845 (derivationStepZipper!1790 lt!2275972 (head!12102 (t!376740 s!2326))) (tail!11197 (t!376740 s!2326))))))

(assert (= (and d!1802049 c!1006975) b!5712562))

(assert (= (and d!1802049 (not c!1006975)) b!5712563))

(assert (=> d!1802049 m!6666100))

(declare-fun m!6666130 () Bool)

(assert (=> b!5712562 m!6666130))

(assert (=> b!5712563 m!6666104))

(assert (=> b!5712563 m!6666104))

(declare-fun m!6666132 () Bool)

(assert (=> b!5712563 m!6666132))

(assert (=> b!5712563 m!6666108))

(assert (=> b!5712563 m!6666132))

(assert (=> b!5712563 m!6666108))

(declare-fun m!6666134 () Bool)

(assert (=> b!5712563 m!6666134))

(assert (=> b!5712334 d!1802049))

(declare-fun d!1802051 () Bool)

(assert (=> d!1802051 (= (isEmpty!35167 (t!376742 zl!343)) ((_ is Nil!63298) (t!376742 zl!343)))))

(assert (=> b!5712354 d!1802051))

(declare-fun d!1802053 () Bool)

(declare-fun e!3513415 () Bool)

(assert (=> d!1802053 e!3513415))

(declare-fun res!2411746 () Bool)

(assert (=> d!1802053 (=> (not res!2411746) (not e!3513415))))

(declare-fun lt!2276021 () List!63422)

(declare-fun noDuplicate!1641 (List!63422) Bool)

(assert (=> d!1802053 (= res!2411746 (noDuplicate!1641 lt!2276021))))

(declare-fun choose!43184 ((InoxSet Context!10182)) List!63422)

(assert (=> d!1802053 (= lt!2276021 (choose!43184 z!1189))))

(assert (=> d!1802053 (= (toList!9491 z!1189) lt!2276021)))

(declare-fun b!5712570 () Bool)

(declare-fun content!11494 (List!63422) (InoxSet Context!10182))

(assert (=> b!5712570 (= e!3513415 (= (content!11494 lt!2276021) z!1189))))

(assert (= (and d!1802053 res!2411746) b!5712570))

(declare-fun m!6666136 () Bool)

(assert (=> d!1802053 m!6666136))

(declare-fun m!6666138 () Bool)

(assert (=> d!1802053 m!6666138))

(declare-fun m!6666140 () Bool)

(assert (=> b!5712570 m!6666140))

(assert (=> b!5712329 d!1802053))

(declare-fun d!1802055 () Bool)

(declare-fun choose!43186 (Int) Bool)

(assert (=> d!1802055 (= (Exists!2807 lambda!308348) (choose!43186 lambda!308348))))

(declare-fun bs!1334481 () Bool)

(assert (= bs!1334481 d!1802055))

(declare-fun m!6666142 () Bool)

(assert (=> bs!1334481 m!6666142))

(assert (=> b!5712330 d!1802055))

(declare-fun bs!1334490 () Bool)

(declare-fun d!1802057 () Bool)

(assert (= bs!1334490 (and d!1802057 b!5712330)))

(declare-fun lambda!308369 () Int)

(assert (=> bs!1334490 (= (= (Star!15707 (reg!16036 (regOne!31926 r!7292))) lt!2275979) (= lambda!308369 lambda!308347))))

(declare-fun bs!1334491 () Bool)

(assert (= bs!1334491 (and d!1802057 b!5712367)))

(assert (=> bs!1334491 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) (regOne!31926 r!7292)) (= (Star!15707 (reg!16036 (regOne!31926 r!7292))) (regTwo!31926 r!7292))) (= lambda!308369 lambda!308342))))

(declare-fun bs!1334492 () Bool)

(assert (= bs!1334492 (and d!1802057 b!5712345)))

(assert (=> bs!1334492 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) lt!2275979) (= (Star!15707 (reg!16036 (regOne!31926 r!7292))) (regTwo!31926 r!7292))) (= lambda!308369 lambda!308345))))

(assert (=> bs!1334490 (not (= lambda!308369 lambda!308348))))

(assert (=> bs!1334492 (not (= lambda!308369 lambda!308346))))

(assert (=> bs!1334491 (not (= lambda!308369 lambda!308343))))

(assert (=> bs!1334490 (not (= lambda!308369 lambda!308349))))

(assert (=> d!1802057 true))

(assert (=> d!1802057 true))

(declare-fun lambda!308370 () Int)

(assert (=> bs!1334490 (not (= lambda!308370 lambda!308347))))

(assert (=> bs!1334491 (not (= lambda!308370 lambda!308342))))

(assert (=> bs!1334492 (not (= lambda!308370 lambda!308345))))

(assert (=> bs!1334490 (= (= (Star!15707 (reg!16036 (regOne!31926 r!7292))) lt!2275979) (= lambda!308370 lambda!308348))))

(assert (=> bs!1334492 (not (= lambda!308370 lambda!308346))))

(declare-fun bs!1334494 () Bool)

(assert (= bs!1334494 d!1802057))

(assert (=> bs!1334494 (not (= lambda!308370 lambda!308369))))

(assert (=> bs!1334491 (not (= lambda!308370 lambda!308343))))

(assert (=> bs!1334490 (not (= lambda!308370 lambda!308349))))

(assert (=> d!1802057 true))

(assert (=> d!1802057 true))

(assert (=> d!1802057 (= (Exists!2807 lambda!308369) (Exists!2807 lambda!308370))))

(declare-fun lt!2276027 () Unit!156360)

(declare-fun choose!43187 (Regex!15707 List!63420) Unit!156360)

(assert (=> d!1802057 (= lt!2276027 (choose!43187 (reg!16036 (regOne!31926 r!7292)) (_1!36107 lt!2275961)))))

(assert (=> d!1802057 (validRegex!7443 (reg!16036 (regOne!31926 r!7292)))))

(assert (=> d!1802057 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!544 (reg!16036 (regOne!31926 r!7292)) (_1!36107 lt!2275961)) lt!2276027)))

(declare-fun m!6666172 () Bool)

(assert (=> bs!1334494 m!6666172))

(declare-fun m!6666174 () Bool)

(assert (=> bs!1334494 m!6666174))

(declare-fun m!6666176 () Bool)

(assert (=> bs!1334494 m!6666176))

(declare-fun m!6666178 () Bool)

(assert (=> bs!1334494 m!6666178))

(assert (=> b!5712330 d!1802057))

(declare-fun bs!1334495 () Bool)

(declare-fun d!1802069 () Bool)

(assert (= bs!1334495 (and d!1802069 b!5712330)))

(declare-fun lambda!308373 () Int)

(assert (=> bs!1334495 (= lambda!308373 lambda!308347)))

(declare-fun bs!1334496 () Bool)

(assert (= bs!1334496 (and d!1802069 b!5712367)))

(assert (=> bs!1334496 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) (regOne!31926 r!7292)) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308373 lambda!308342))))

(declare-fun bs!1334497 () Bool)

(assert (= bs!1334497 (and d!1802069 b!5712345)))

(assert (=> bs!1334497 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) lt!2275979) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308373 lambda!308345))))

(assert (=> bs!1334495 (not (= lambda!308373 lambda!308348))))

(assert (=> bs!1334497 (not (= lambda!308373 lambda!308346))))

(declare-fun bs!1334498 () Bool)

(assert (= bs!1334498 (and d!1802069 d!1802057)))

(assert (=> bs!1334498 (not (= lambda!308373 lambda!308370))))

(assert (=> bs!1334498 (= (= lt!2275979 (Star!15707 (reg!16036 (regOne!31926 r!7292)))) (= lambda!308373 lambda!308369))))

(assert (=> bs!1334496 (not (= lambda!308373 lambda!308343))))

(assert (=> bs!1334495 (not (= lambda!308373 lambda!308349))))

(assert (=> d!1802069 true))

(assert (=> d!1802069 true))

(assert (=> d!1802069 true))

(assert (=> d!1802069 (= (isDefined!12419 (findConcatSeparation!2130 (reg!16036 (regOne!31926 r!7292)) lt!2275979 Nil!63296 (_1!36107 lt!2275961) (_1!36107 lt!2275961))) (Exists!2807 lambda!308373))))

(declare-fun lt!2276034 () Unit!156360)

(declare-fun choose!43189 (Regex!15707 Regex!15707 List!63420) Unit!156360)

(assert (=> d!1802069 (= lt!2276034 (choose!43189 (reg!16036 (regOne!31926 r!7292)) lt!2275979 (_1!36107 lt!2275961)))))

(assert (=> d!1802069 (validRegex!7443 (reg!16036 (regOne!31926 r!7292)))))

(assert (=> d!1802069 (= (lemmaFindConcatSeparationEquivalentToExists!1894 (reg!16036 (regOne!31926 r!7292)) lt!2275979 (_1!36107 lt!2275961)) lt!2276034)))

(declare-fun bs!1334499 () Bool)

(assert (= bs!1334499 d!1802069))

(assert (=> bs!1334499 m!6665848))

(declare-fun m!6666194 () Bool)

(assert (=> bs!1334499 m!6666194))

(assert (=> bs!1334499 m!6666178))

(declare-fun m!6666196 () Bool)

(assert (=> bs!1334499 m!6666196))

(assert (=> bs!1334499 m!6665848))

(declare-fun m!6666198 () Bool)

(assert (=> bs!1334499 m!6666198))

(assert (=> b!5712330 d!1802069))

(declare-fun d!1802077 () Bool)

(assert (=> d!1802077 (= (get!21820 lt!2275974) (v!51770 lt!2275974))))

(assert (=> b!5712330 d!1802077))

(declare-fun d!1802079 () Bool)

(assert (=> d!1802079 (= (matchR!7892 lt!2275979 (_1!36107 lt!2275961)) (matchRSpec!2810 lt!2275979 (_1!36107 lt!2275961)))))

(declare-fun lt!2276040 () Unit!156360)

(declare-fun choose!43190 (Regex!15707 List!63420) Unit!156360)

(assert (=> d!1802079 (= lt!2276040 (choose!43190 lt!2275979 (_1!36107 lt!2275961)))))

(assert (=> d!1802079 (validRegex!7443 lt!2275979)))

(assert (=> d!1802079 (= (mainMatchTheorem!2810 lt!2275979 (_1!36107 lt!2275961)) lt!2276040)))

(declare-fun bs!1334506 () Bool)

(assert (= bs!1334506 d!1802079))

(assert (=> bs!1334506 m!6665896))

(assert (=> bs!1334506 m!6665864))

(declare-fun m!6666206 () Bool)

(assert (=> bs!1334506 m!6666206))

(declare-fun m!6666208 () Bool)

(assert (=> bs!1334506 m!6666208))

(assert (=> b!5712330 d!1802079))

(declare-fun bs!1334517 () Bool)

(declare-fun b!5712656 () Bool)

(assert (= bs!1334517 (and b!5712656 b!5712330)))

(declare-fun lambda!308387 () Int)

(assert (=> bs!1334517 (not (= lambda!308387 lambda!308347))))

(declare-fun bs!1334518 () Bool)

(assert (= bs!1334518 (and b!5712656 d!1802069)))

(assert (=> bs!1334518 (not (= lambda!308387 lambda!308373))))

(declare-fun bs!1334519 () Bool)

(assert (= bs!1334519 (and b!5712656 b!5712367)))

(assert (=> bs!1334519 (not (= lambda!308387 lambda!308342))))

(declare-fun bs!1334520 () Bool)

(assert (= bs!1334520 (and b!5712656 b!5712345)))

(assert (=> bs!1334520 (not (= lambda!308387 lambda!308345))))

(assert (=> bs!1334517 (= (= (reg!16036 lt!2275979) (reg!16036 (regOne!31926 r!7292))) (= lambda!308387 lambda!308348))))

(assert (=> bs!1334520 (not (= lambda!308387 lambda!308346))))

(declare-fun bs!1334521 () Bool)

(assert (= bs!1334521 (and b!5712656 d!1802057)))

(assert (=> bs!1334521 (= (and (= (reg!16036 lt!2275979) (reg!16036 (regOne!31926 r!7292))) (= lt!2275979 (Star!15707 (reg!16036 (regOne!31926 r!7292))))) (= lambda!308387 lambda!308370))))

(assert (=> bs!1334521 (not (= lambda!308387 lambda!308369))))

(assert (=> bs!1334519 (not (= lambda!308387 lambda!308343))))

(assert (=> bs!1334517 (not (= lambda!308387 lambda!308349))))

(assert (=> b!5712656 true))

(assert (=> b!5712656 true))

(declare-fun bs!1334522 () Bool)

(declare-fun b!5712658 () Bool)

(assert (= bs!1334522 (and b!5712658 b!5712330)))

(declare-fun lambda!308388 () Int)

(assert (=> bs!1334522 (not (= lambda!308388 lambda!308347))))

(declare-fun bs!1334523 () Bool)

(assert (= bs!1334523 (and b!5712658 d!1802069)))

(assert (=> bs!1334523 (not (= lambda!308388 lambda!308373))))

(declare-fun bs!1334524 () Bool)

(assert (= bs!1334524 (and b!5712658 b!5712367)))

(assert (=> bs!1334524 (not (= lambda!308388 lambda!308342))))

(declare-fun bs!1334525 () Bool)

(assert (= bs!1334525 (and b!5712658 b!5712345)))

(assert (=> bs!1334525 (not (= lambda!308388 lambda!308345))))

(assert (=> bs!1334522 (not (= lambda!308388 lambda!308348))))

(declare-fun bs!1334526 () Bool)

(assert (= bs!1334526 (and b!5712658 b!5712656)))

(assert (=> bs!1334526 (not (= lambda!308388 lambda!308387))))

(assert (=> bs!1334525 (= (and (= (_1!36107 lt!2275961) s!2326) (= (regOne!31926 lt!2275979) lt!2275979) (= (regTwo!31926 lt!2275979) (regTwo!31926 r!7292))) (= lambda!308388 lambda!308346))))

(declare-fun bs!1334527 () Bool)

(assert (= bs!1334527 (and b!5712658 d!1802057)))

(assert (=> bs!1334527 (not (= lambda!308388 lambda!308370))))

(assert (=> bs!1334527 (not (= lambda!308388 lambda!308369))))

(assert (=> bs!1334524 (= (and (= (_1!36107 lt!2275961) s!2326) (= (regOne!31926 lt!2275979) (regOne!31926 r!7292)) (= (regTwo!31926 lt!2275979) (regTwo!31926 r!7292))) (= lambda!308388 lambda!308343))))

(assert (=> bs!1334522 (= (and (= (regOne!31926 lt!2275979) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 lt!2275979) lt!2275979)) (= lambda!308388 lambda!308349))))

(assert (=> b!5712658 true))

(assert (=> b!5712658 true))

(declare-fun b!5712655 () Bool)

(declare-fun e!3513465 () Bool)

(declare-fun e!3513466 () Bool)

(assert (=> b!5712655 (= e!3513465 e!3513466)))

(declare-fun res!2411796 () Bool)

(assert (=> b!5712655 (= res!2411796 (not ((_ is EmptyLang!15707) lt!2275979)))))

(assert (=> b!5712655 (=> (not res!2411796) (not e!3513466))))

(declare-fun bm!436066 () Bool)

(declare-fun call!436071 () Bool)

(assert (=> bm!436066 (= call!436071 (isEmpty!35168 (_1!36107 lt!2275961)))))

(declare-fun e!3513462 () Bool)

(declare-fun call!436072 () Bool)

(assert (=> b!5712656 (= e!3513462 call!436072)))

(declare-fun b!5712657 () Bool)

(declare-fun e!3513467 () Bool)

(assert (=> b!5712657 (= e!3513467 (matchRSpec!2810 (regTwo!31927 lt!2275979) (_1!36107 lt!2275961)))))

(declare-fun e!3513464 () Bool)

(assert (=> b!5712658 (= e!3513464 call!436072)))

(declare-fun b!5712659 () Bool)

(declare-fun res!2411797 () Bool)

(assert (=> b!5712659 (=> res!2411797 e!3513462)))

(assert (=> b!5712659 (= res!2411797 call!436071)))

(assert (=> b!5712659 (= e!3513464 e!3513462)))

(declare-fun bm!436067 () Bool)

(declare-fun c!1006995 () Bool)

(assert (=> bm!436067 (= call!436072 (Exists!2807 (ite c!1006995 lambda!308387 lambda!308388)))))

(declare-fun b!5712660 () Bool)

(declare-fun c!1006994 () Bool)

(assert (=> b!5712660 (= c!1006994 ((_ is Union!15707) lt!2275979))))

(declare-fun e!3513463 () Bool)

(declare-fun e!3513468 () Bool)

(assert (=> b!5712660 (= e!3513463 e!3513468)))

(declare-fun d!1802083 () Bool)

(declare-fun c!1006997 () Bool)

(assert (=> d!1802083 (= c!1006997 ((_ is EmptyExpr!15707) lt!2275979))))

(assert (=> d!1802083 (= (matchRSpec!2810 lt!2275979 (_1!36107 lt!2275961)) e!3513465)))

(declare-fun b!5712661 () Bool)

(assert (=> b!5712661 (= e!3513468 e!3513464)))

(assert (=> b!5712661 (= c!1006995 ((_ is Star!15707) lt!2275979))))

(declare-fun b!5712662 () Bool)

(assert (=> b!5712662 (= e!3513468 e!3513467)))

(declare-fun res!2411795 () Bool)

(assert (=> b!5712662 (= res!2411795 (matchRSpec!2810 (regOne!31927 lt!2275979) (_1!36107 lt!2275961)))))

(assert (=> b!5712662 (=> res!2411795 e!3513467)))

(declare-fun b!5712663 () Bool)

(declare-fun c!1006996 () Bool)

(assert (=> b!5712663 (= c!1006996 ((_ is ElementMatch!15707) lt!2275979))))

(assert (=> b!5712663 (= e!3513466 e!3513463)))

(declare-fun b!5712664 () Bool)

(assert (=> b!5712664 (= e!3513465 call!436071)))

(declare-fun b!5712665 () Bool)

(assert (=> b!5712665 (= e!3513463 (= (_1!36107 lt!2275961) (Cons!63296 (c!1006919 lt!2275979) Nil!63296)))))

(assert (= (and d!1802083 c!1006997) b!5712664))

(assert (= (and d!1802083 (not c!1006997)) b!5712655))

(assert (= (and b!5712655 res!2411796) b!5712663))

(assert (= (and b!5712663 c!1006996) b!5712665))

(assert (= (and b!5712663 (not c!1006996)) b!5712660))

(assert (= (and b!5712660 c!1006994) b!5712662))

(assert (= (and b!5712660 (not c!1006994)) b!5712661))

(assert (= (and b!5712662 (not res!2411795)) b!5712657))

(assert (= (and b!5712661 c!1006995) b!5712659))

(assert (= (and b!5712661 (not c!1006995)) b!5712658))

(assert (= (and b!5712659 (not res!2411797)) b!5712656))

(assert (= (or b!5712656 b!5712658) bm!436067))

(assert (= (or b!5712664 b!5712659) bm!436066))

(assert (=> bm!436066 m!6665960))

(declare-fun m!6666222 () Bool)

(assert (=> b!5712657 m!6666222))

(declare-fun m!6666224 () Bool)

(assert (=> bm!436067 m!6666224))

(declare-fun m!6666226 () Bool)

(assert (=> b!5712662 m!6666226))

(assert (=> b!5712330 d!1802083))

(declare-fun b!5712686 () Bool)

(declare-fun e!3513480 () List!63420)

(assert (=> b!5712686 (= e!3513480 (_2!36107 lt!2275967))))

(declare-fun b!5712688 () Bool)

(declare-fun res!2411808 () Bool)

(declare-fun e!3513479 () Bool)

(assert (=> b!5712688 (=> (not res!2411808) (not e!3513479))))

(declare-fun lt!2276049 () List!63420)

(declare-fun size!40021 (List!63420) Int)

(assert (=> b!5712688 (= res!2411808 (= (size!40021 lt!2276049) (+ (size!40021 (_1!36107 lt!2275967)) (size!40021 (_2!36107 lt!2275967)))))))

(declare-fun b!5712687 () Bool)

(assert (=> b!5712687 (= e!3513480 (Cons!63296 (h!69744 (_1!36107 lt!2275967)) (++!13899 (t!376740 (_1!36107 lt!2275967)) (_2!36107 lt!2275967))))))

(declare-fun b!5712689 () Bool)

(assert (=> b!5712689 (= e!3513479 (or (not (= (_2!36107 lt!2275967) Nil!63296)) (= lt!2276049 (_1!36107 lt!2275967))))))

(declare-fun d!1802095 () Bool)

(assert (=> d!1802095 e!3513479))

(declare-fun res!2411809 () Bool)

(assert (=> d!1802095 (=> (not res!2411809) (not e!3513479))))

(declare-fun content!11496 (List!63420) (InoxSet C!31684))

(assert (=> d!1802095 (= res!2411809 (= (content!11496 lt!2276049) ((_ map or) (content!11496 (_1!36107 lt!2275967)) (content!11496 (_2!36107 lt!2275967)))))))

(assert (=> d!1802095 (= lt!2276049 e!3513480)))

(declare-fun c!1007003 () Bool)

(assert (=> d!1802095 (= c!1007003 ((_ is Nil!63296) (_1!36107 lt!2275967)))))

(assert (=> d!1802095 (= (++!13899 (_1!36107 lt!2275967) (_2!36107 lt!2275967)) lt!2276049)))

(assert (= (and d!1802095 c!1007003) b!5712686))

(assert (= (and d!1802095 (not c!1007003)) b!5712687))

(assert (= (and d!1802095 res!2411809) b!5712688))

(assert (= (and b!5712688 res!2411808) b!5712689))

(declare-fun m!6666242 () Bool)

(assert (=> b!5712688 m!6666242))

(declare-fun m!6666244 () Bool)

(assert (=> b!5712688 m!6666244))

(declare-fun m!6666246 () Bool)

(assert (=> b!5712688 m!6666246))

(declare-fun m!6666248 () Bool)

(assert (=> b!5712687 m!6666248))

(declare-fun m!6666250 () Bool)

(assert (=> d!1802095 m!6666250))

(declare-fun m!6666252 () Bool)

(assert (=> d!1802095 m!6666252))

(declare-fun m!6666254 () Bool)

(assert (=> d!1802095 m!6666254))

(assert (=> b!5712330 d!1802095))

(declare-fun d!1802099 () Bool)

(assert (=> d!1802099 (= (Exists!2807 lambda!308349) (choose!43186 lambda!308349))))

(declare-fun bs!1334528 () Bool)

(assert (= bs!1334528 d!1802099))

(declare-fun m!6666256 () Bool)

(assert (=> bs!1334528 m!6666256))

(assert (=> b!5712330 d!1802099))

(declare-fun bs!1334529 () Bool)

(declare-fun d!1802101 () Bool)

(assert (= bs!1334529 (and d!1802101 b!5712330)))

(declare-fun lambda!308393 () Int)

(assert (=> bs!1334529 (= lambda!308393 lambda!308347)))

(declare-fun bs!1334530 () Bool)

(assert (= bs!1334530 (and d!1802101 d!1802069)))

(assert (=> bs!1334530 (= lambda!308393 lambda!308373)))

(declare-fun bs!1334531 () Bool)

(assert (= bs!1334531 (and d!1802101 b!5712367)))

(assert (=> bs!1334531 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) (regOne!31926 r!7292)) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308393 lambda!308342))))

(assert (=> bs!1334529 (not (= lambda!308393 lambda!308348))))

(declare-fun bs!1334532 () Bool)

(assert (= bs!1334532 (and d!1802101 b!5712656)))

(assert (=> bs!1334532 (not (= lambda!308393 lambda!308387))))

(declare-fun bs!1334533 () Bool)

(assert (= bs!1334533 (and d!1802101 b!5712345)))

(assert (=> bs!1334533 (not (= lambda!308393 lambda!308346))))

(declare-fun bs!1334534 () Bool)

(assert (= bs!1334534 (and d!1802101 d!1802057)))

(assert (=> bs!1334534 (not (= lambda!308393 lambda!308370))))

(assert (=> bs!1334534 (= (= lt!2275979 (Star!15707 (reg!16036 (regOne!31926 r!7292)))) (= lambda!308393 lambda!308369))))

(assert (=> bs!1334533 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) lt!2275979) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308393 lambda!308345))))

(declare-fun bs!1334535 () Bool)

(assert (= bs!1334535 (and d!1802101 b!5712658)))

(assert (=> bs!1334535 (not (= lambda!308393 lambda!308388))))

(assert (=> bs!1334531 (not (= lambda!308393 lambda!308343))))

(assert (=> bs!1334529 (not (= lambda!308393 lambda!308349))))

(assert (=> d!1802101 true))

(assert (=> d!1802101 true))

(assert (=> d!1802101 true))

(declare-fun lambda!308395 () Int)

(assert (=> bs!1334529 (not (= lambda!308395 lambda!308347))))

(assert (=> bs!1334530 (not (= lambda!308395 lambda!308373))))

(assert (=> bs!1334531 (not (= lambda!308395 lambda!308342))))

(assert (=> bs!1334529 (not (= lambda!308395 lambda!308348))))

(assert (=> bs!1334532 (not (= lambda!308395 lambda!308387))))

(assert (=> bs!1334533 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) lt!2275979) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308395 lambda!308346))))

(assert (=> bs!1334534 (not (= lambda!308395 lambda!308370))))

(assert (=> bs!1334534 (not (= lambda!308395 lambda!308369))))

(declare-fun bs!1334541 () Bool)

(assert (= bs!1334541 d!1802101))

(assert (=> bs!1334541 (not (= lambda!308395 lambda!308393))))

(assert (=> bs!1334533 (not (= lambda!308395 lambda!308345))))

(assert (=> bs!1334535 (= (and (= (reg!16036 (regOne!31926 r!7292)) (regOne!31926 lt!2275979)) (= lt!2275979 (regTwo!31926 lt!2275979))) (= lambda!308395 lambda!308388))))

(assert (=> bs!1334531 (= (and (= (_1!36107 lt!2275961) s!2326) (= (reg!16036 (regOne!31926 r!7292)) (regOne!31926 r!7292)) (= lt!2275979 (regTwo!31926 r!7292))) (= lambda!308395 lambda!308343))))

(assert (=> bs!1334529 (= lambda!308395 lambda!308349)))

(assert (=> d!1802101 true))

(assert (=> d!1802101 true))

(assert (=> d!1802101 true))

(assert (=> d!1802101 (= (Exists!2807 lambda!308393) (Exists!2807 lambda!308395))))

(declare-fun lt!2276061 () Unit!156360)

(declare-fun choose!43194 (Regex!15707 Regex!15707 List!63420) Unit!156360)

(assert (=> d!1802101 (= lt!2276061 (choose!43194 (reg!16036 (regOne!31926 r!7292)) lt!2275979 (_1!36107 lt!2275961)))))

(assert (=> d!1802101 (validRegex!7443 (reg!16036 (regOne!31926 r!7292)))))

(assert (=> d!1802101 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1436 (reg!16036 (regOne!31926 r!7292)) lt!2275979 (_1!36107 lt!2275961)) lt!2276061)))

(declare-fun m!6666280 () Bool)

(assert (=> bs!1334541 m!6666280))

(declare-fun m!6666282 () Bool)

(assert (=> bs!1334541 m!6666282))

(declare-fun m!6666284 () Bool)

(assert (=> bs!1334541 m!6666284))

(assert (=> bs!1334541 m!6666178))

(assert (=> b!5712330 d!1802101))

(declare-fun d!1802105 () Bool)

(assert (=> d!1802105 (= (Exists!2807 lambda!308347) (choose!43186 lambda!308347))))

(declare-fun bs!1334544 () Bool)

(assert (= bs!1334544 d!1802105))

(declare-fun m!6666286 () Bool)

(assert (=> bs!1334544 m!6666286))

(assert (=> b!5712330 d!1802105))

(declare-fun b!5712812 () Bool)

(declare-fun e!3513552 () Option!15716)

(declare-fun e!3513553 () Option!15716)

(assert (=> b!5712812 (= e!3513552 e!3513553)))

(declare-fun c!1007037 () Bool)

(assert (=> b!5712812 (= c!1007037 ((_ is Nil!63296) (_1!36107 lt!2275961)))))

(declare-fun b!5712813 () Bool)

(declare-fun e!3513549 () Bool)

(declare-fun lt!2276075 () Option!15716)

(assert (=> b!5712813 (= e!3513549 (= (++!13899 (_1!36107 (get!21820 lt!2276075)) (_2!36107 (get!21820 lt!2276075))) (_1!36107 lt!2275961)))))

(declare-fun b!5712814 () Bool)

(declare-fun e!3513550 () Bool)

(assert (=> b!5712814 (= e!3513550 (not (isDefined!12419 lt!2276075)))))

(declare-fun b!5712815 () Bool)

(assert (=> b!5712815 (= e!3513552 (Some!15715 (tuple2!65609 Nil!63296 (_1!36107 lt!2275961))))))

(declare-fun b!5712816 () Bool)

(assert (=> b!5712816 (= e!3513553 None!15715)))

(declare-fun b!5712817 () Bool)

(declare-fun e!3513551 () Bool)

(assert (=> b!5712817 (= e!3513551 (matchR!7892 lt!2275979 (_1!36107 lt!2275961)))))

(declare-fun b!5712818 () Bool)

(declare-fun res!2411868 () Bool)

(assert (=> b!5712818 (=> (not res!2411868) (not e!3513549))))

(assert (=> b!5712818 (= res!2411868 (matchR!7892 (reg!16036 (regOne!31926 r!7292)) (_1!36107 (get!21820 lt!2276075))))))

(declare-fun d!1802107 () Bool)

(assert (=> d!1802107 e!3513550))

(declare-fun res!2411872 () Bool)

(assert (=> d!1802107 (=> res!2411872 e!3513550)))

(assert (=> d!1802107 (= res!2411872 e!3513549)))

(declare-fun res!2411871 () Bool)

(assert (=> d!1802107 (=> (not res!2411871) (not e!3513549))))

(assert (=> d!1802107 (= res!2411871 (isDefined!12419 lt!2276075))))

(assert (=> d!1802107 (= lt!2276075 e!3513552)))

(declare-fun c!1007036 () Bool)

(assert (=> d!1802107 (= c!1007036 e!3513551)))

(declare-fun res!2411869 () Bool)

(assert (=> d!1802107 (=> (not res!2411869) (not e!3513551))))

(assert (=> d!1802107 (= res!2411869 (matchR!7892 (reg!16036 (regOne!31926 r!7292)) Nil!63296))))

(assert (=> d!1802107 (validRegex!7443 (reg!16036 (regOne!31926 r!7292)))))

(assert (=> d!1802107 (= (findConcatSeparation!2130 (reg!16036 (regOne!31926 r!7292)) lt!2275979 Nil!63296 (_1!36107 lt!2275961) (_1!36107 lt!2275961)) lt!2276075)))

(declare-fun b!5712819 () Bool)

(declare-fun lt!2276077 () Unit!156360)

(declare-fun lt!2276076 () Unit!156360)

(assert (=> b!5712819 (= lt!2276077 lt!2276076)))

(assert (=> b!5712819 (= (++!13899 (++!13899 Nil!63296 (Cons!63296 (h!69744 (_1!36107 lt!2275961)) Nil!63296)) (t!376740 (_1!36107 lt!2275961))) (_1!36107 lt!2275961))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2064 (List!63420 C!31684 List!63420 List!63420) Unit!156360)

(assert (=> b!5712819 (= lt!2276076 (lemmaMoveElementToOtherListKeepsConcatEq!2064 Nil!63296 (h!69744 (_1!36107 lt!2275961)) (t!376740 (_1!36107 lt!2275961)) (_1!36107 lt!2275961)))))

(assert (=> b!5712819 (= e!3513553 (findConcatSeparation!2130 (reg!16036 (regOne!31926 r!7292)) lt!2275979 (++!13899 Nil!63296 (Cons!63296 (h!69744 (_1!36107 lt!2275961)) Nil!63296)) (t!376740 (_1!36107 lt!2275961)) (_1!36107 lt!2275961)))))

(declare-fun b!5712820 () Bool)

(declare-fun res!2411870 () Bool)

(assert (=> b!5712820 (=> (not res!2411870) (not e!3513549))))

(assert (=> b!5712820 (= res!2411870 (matchR!7892 lt!2275979 (_2!36107 (get!21820 lt!2276075))))))

(assert (= (and d!1802107 res!2411869) b!5712817))

(assert (= (and d!1802107 c!1007036) b!5712815))

(assert (= (and d!1802107 (not c!1007036)) b!5712812))

(assert (= (and b!5712812 c!1007037) b!5712816))

(assert (= (and b!5712812 (not c!1007037)) b!5712819))

(assert (= (and d!1802107 res!2411871) b!5712818))

(assert (= (and b!5712818 res!2411868) b!5712820))

(assert (= (and b!5712820 res!2411870) b!5712813))

(assert (= (and d!1802107 (not res!2411872)) b!5712814))

(declare-fun m!6666346 () Bool)

(assert (=> b!5712818 m!6666346))

(declare-fun m!6666348 () Bool)

(assert (=> b!5712818 m!6666348))

(assert (=> b!5712817 m!6665896))

(declare-fun m!6666350 () Bool)

(assert (=> b!5712819 m!6666350))

(assert (=> b!5712819 m!6666350))

(declare-fun m!6666352 () Bool)

(assert (=> b!5712819 m!6666352))

(declare-fun m!6666354 () Bool)

(assert (=> b!5712819 m!6666354))

(assert (=> b!5712819 m!6666350))

(declare-fun m!6666356 () Bool)

(assert (=> b!5712819 m!6666356))

(assert (=> b!5712820 m!6666346))

(declare-fun m!6666358 () Bool)

(assert (=> b!5712820 m!6666358))

(assert (=> b!5712813 m!6666346))

(declare-fun m!6666360 () Bool)

(assert (=> b!5712813 m!6666360))

(declare-fun m!6666362 () Bool)

(assert (=> d!1802107 m!6666362))

(declare-fun m!6666364 () Bool)

(assert (=> d!1802107 m!6666364))

(assert (=> d!1802107 m!6666178))

(assert (=> b!5712814 m!6666362))

(assert (=> b!5712330 d!1802107))

(declare-fun d!1802123 () Bool)

(declare-fun isEmpty!35170 (Option!15716) Bool)

(assert (=> d!1802123 (= (isDefined!12419 lt!2275974) (not (isEmpty!35170 lt!2275974)))))

(declare-fun bs!1334559 () Bool)

(assert (= bs!1334559 d!1802123))

(declare-fun m!6666366 () Bool)

(assert (=> bs!1334559 m!6666366))

(assert (=> b!5712330 d!1802123))

(declare-fun d!1802125 () Bool)

(declare-fun lt!2276082 () Regex!15707)

(assert (=> d!1802125 (validRegex!7443 lt!2276082)))

(assert (=> d!1802125 (= lt!2276082 (generalisedUnion!1570 (unfocusZipperList!1135 zl!343)))))

(assert (=> d!1802125 (= (unfocusZipper!1449 zl!343) lt!2276082)))

(declare-fun bs!1334560 () Bool)

(assert (= bs!1334560 d!1802125))

(declare-fun m!6666368 () Bool)

(assert (=> bs!1334560 m!6666368))

(assert (=> bs!1334560 m!6665938))

(assert (=> bs!1334560 m!6665938))

(assert (=> bs!1334560 m!6665940))

(assert (=> b!5712351 d!1802125))

(declare-fun b!5712877 () Bool)

(declare-fun res!2411894 () Bool)

(declare-fun e!3513588 () Bool)

(assert (=> b!5712877 (=> res!2411894 e!3513588)))

(declare-fun e!3513586 () Bool)

(assert (=> b!5712877 (= res!2411894 e!3513586)))

(declare-fun res!2411897 () Bool)

(assert (=> b!5712877 (=> (not res!2411897) (not e!3513586))))

(declare-fun lt!2276086 () Bool)

(assert (=> b!5712877 (= res!2411897 lt!2276086)))

(declare-fun bm!436086 () Bool)

(declare-fun call!436091 () Bool)

(assert (=> bm!436086 (= call!436091 (isEmpty!35168 (_2!36107 lt!2275961)))))

(declare-fun b!5712878 () Bool)

(assert (=> b!5712878 (= e!3513586 (= (head!12102 (_2!36107 lt!2275961)) (c!1006919 (regTwo!31926 r!7292))))))

(declare-fun b!5712879 () Bool)

(declare-fun e!3513584 () Bool)

(declare-fun e!3513589 () Bool)

(assert (=> b!5712879 (= e!3513584 e!3513589)))

(declare-fun res!2411896 () Bool)

(assert (=> b!5712879 (=> res!2411896 e!3513589)))

(assert (=> b!5712879 (= res!2411896 call!436091)))

(declare-fun b!5712881 () Bool)

(declare-fun res!2411891 () Bool)

(assert (=> b!5712881 (=> res!2411891 e!3513589)))

(assert (=> b!5712881 (= res!2411891 (not (isEmpty!35168 (tail!11197 (_2!36107 lt!2275961)))))))

(declare-fun b!5712882 () Bool)

(assert (=> b!5712882 (= e!3513588 e!3513584)))

(declare-fun res!2411893 () Bool)

(assert (=> b!5712882 (=> (not res!2411893) (not e!3513584))))

(assert (=> b!5712882 (= res!2411893 (not lt!2276086))))

(declare-fun b!5712883 () Bool)

(declare-fun e!3513583 () Bool)

(assert (=> b!5712883 (= e!3513583 (not lt!2276086))))

(declare-fun b!5712884 () Bool)

(declare-fun e!3513587 () Bool)

(assert (=> b!5712884 (= e!3513587 (= lt!2276086 call!436091))))

(declare-fun b!5712885 () Bool)

(assert (=> b!5712885 (= e!3513587 e!3513583)))

(declare-fun c!1007058 () Bool)

(assert (=> b!5712885 (= c!1007058 ((_ is EmptyLang!15707) (regTwo!31926 r!7292)))))

(declare-fun b!5712886 () Bool)

(declare-fun res!2411898 () Bool)

(assert (=> b!5712886 (=> (not res!2411898) (not e!3513586))))

(assert (=> b!5712886 (= res!2411898 (isEmpty!35168 (tail!11197 (_2!36107 lt!2275961))))))

(declare-fun b!5712887 () Bool)

(declare-fun res!2411895 () Bool)

(assert (=> b!5712887 (=> res!2411895 e!3513588)))

(assert (=> b!5712887 (= res!2411895 (not ((_ is ElementMatch!15707) (regTwo!31926 r!7292))))))

(assert (=> b!5712887 (= e!3513583 e!3513588)))

(declare-fun b!5712888 () Bool)

(assert (=> b!5712888 (= e!3513589 (not (= (head!12102 (_2!36107 lt!2275961)) (c!1006919 (regTwo!31926 r!7292)))))))

(declare-fun b!5712889 () Bool)

(declare-fun res!2411892 () Bool)

(assert (=> b!5712889 (=> (not res!2411892) (not e!3513586))))

(assert (=> b!5712889 (= res!2411892 (not call!436091))))

(declare-fun b!5712890 () Bool)

(declare-fun e!3513585 () Bool)

(assert (=> b!5712890 (= e!3513585 (nullable!5739 (regTwo!31926 r!7292)))))

(declare-fun b!5712880 () Bool)

(declare-fun derivativeStep!4514 (Regex!15707 C!31684) Regex!15707)

(assert (=> b!5712880 (= e!3513585 (matchR!7892 (derivativeStep!4514 (regTwo!31926 r!7292) (head!12102 (_2!36107 lt!2275961))) (tail!11197 (_2!36107 lt!2275961))))))

(declare-fun d!1802127 () Bool)

(assert (=> d!1802127 e!3513587))

(declare-fun c!1007057 () Bool)

(assert (=> d!1802127 (= c!1007057 ((_ is EmptyExpr!15707) (regTwo!31926 r!7292)))))

(assert (=> d!1802127 (= lt!2276086 e!3513585)))

(declare-fun c!1007059 () Bool)

(assert (=> d!1802127 (= c!1007059 (isEmpty!35168 (_2!36107 lt!2275961)))))

(assert (=> d!1802127 (validRegex!7443 (regTwo!31926 r!7292))))

(assert (=> d!1802127 (= (matchR!7892 (regTwo!31926 r!7292) (_2!36107 lt!2275961)) lt!2276086)))

(assert (= (and d!1802127 c!1007059) b!5712890))

(assert (= (and d!1802127 (not c!1007059)) b!5712880))

(assert (= (and d!1802127 c!1007057) b!5712884))

(assert (= (and d!1802127 (not c!1007057)) b!5712885))

(assert (= (and b!5712885 c!1007058) b!5712883))

(assert (= (and b!5712885 (not c!1007058)) b!5712887))

(assert (= (and b!5712887 (not res!2411895)) b!5712877))

(assert (= (and b!5712877 res!2411897) b!5712889))

(assert (= (and b!5712889 res!2411892) b!5712886))

(assert (= (and b!5712886 res!2411898) b!5712878))

(assert (= (and b!5712877 (not res!2411894)) b!5712882))

(assert (= (and b!5712882 res!2411893) b!5712879))

(assert (= (and b!5712879 (not res!2411896)) b!5712881))

(assert (= (and b!5712881 (not res!2411891)) b!5712888))

(assert (= (or b!5712884 b!5712889 b!5712879) bm!436086))

(declare-fun m!6666374 () Bool)

(assert (=> bm!436086 m!6666374))

(declare-fun m!6666376 () Bool)

(assert (=> b!5712878 m!6666376))

(assert (=> b!5712880 m!6666376))

(assert (=> b!5712880 m!6666376))

(declare-fun m!6666378 () Bool)

(assert (=> b!5712880 m!6666378))

(declare-fun m!6666380 () Bool)

(assert (=> b!5712880 m!6666380))

(assert (=> b!5712880 m!6666378))

(assert (=> b!5712880 m!6666380))

(declare-fun m!6666382 () Bool)

(assert (=> b!5712880 m!6666382))

(assert (=> b!5712881 m!6666380))

(assert (=> b!5712881 m!6666380))

(declare-fun m!6666384 () Bool)

(assert (=> b!5712881 m!6666384))

(declare-fun m!6666386 () Bool)

(assert (=> b!5712890 m!6666386))

(assert (=> b!5712888 m!6666376))

(assert (=> d!1802127 m!6666374))

(declare-fun m!6666388 () Bool)

(assert (=> d!1802127 m!6666388))

(assert (=> b!5712886 m!6666380))

(assert (=> b!5712886 m!6666380))

(assert (=> b!5712886 m!6666384))

(assert (=> b!5712337 d!1802127))

(declare-fun d!1802131 () Bool)

(declare-fun lt!2276087 () Regex!15707)

(assert (=> d!1802131 (validRegex!7443 lt!2276087)))

(assert (=> d!1802131 (= lt!2276087 (generalisedUnion!1570 (unfocusZipperList!1135 (Cons!63298 lt!2275989 Nil!63298))))))

(assert (=> d!1802131 (= (unfocusZipper!1449 (Cons!63298 lt!2275989 Nil!63298)) lt!2276087)))

(declare-fun bs!1334564 () Bool)

(assert (= bs!1334564 d!1802131))

(declare-fun m!6666390 () Bool)

(assert (=> bs!1334564 m!6666390))

(declare-fun m!6666392 () Bool)

(assert (=> bs!1334564 m!6666392))

(assert (=> bs!1334564 m!6666392))

(declare-fun m!6666394 () Bool)

(assert (=> bs!1334564 m!6666394))

(assert (=> b!5712338 d!1802131))

(declare-fun d!1802133 () Bool)

(assert (=> d!1802133 (= (isEmpty!35168 (_1!36107 lt!2275961)) ((_ is Nil!63296) (_1!36107 lt!2275961)))))

(assert (=> b!5712359 d!1802133))

(declare-fun b!5712902 () Bool)

(declare-fun res!2411903 () Bool)

(declare-fun e!3513601 () Bool)

(assert (=> b!5712902 (=> res!2411903 e!3513601)))

(declare-fun e!3513599 () Bool)

(assert (=> b!5712902 (= res!2411903 e!3513599)))

(declare-fun res!2411906 () Bool)

(assert (=> b!5712902 (=> (not res!2411906) (not e!3513599))))

(declare-fun lt!2276088 () Bool)

(assert (=> b!5712902 (= res!2411906 lt!2276088)))

(declare-fun bm!436093 () Bool)

(declare-fun call!436098 () Bool)

(assert (=> bm!436093 (= call!436098 (isEmpty!35168 (_2!36107 lt!2275967)))))

(declare-fun b!5712903 () Bool)

(assert (=> b!5712903 (= e!3513599 (= (head!12102 (_2!36107 lt!2275967)) (c!1006919 lt!2275979)))))

(declare-fun b!5712904 () Bool)

(declare-fun e!3513597 () Bool)

(declare-fun e!3513602 () Bool)

(assert (=> b!5712904 (= e!3513597 e!3513602)))

(declare-fun res!2411905 () Bool)

(assert (=> b!5712904 (=> res!2411905 e!3513602)))

(assert (=> b!5712904 (= res!2411905 call!436098)))

(declare-fun b!5712906 () Bool)

(declare-fun res!2411900 () Bool)

(assert (=> b!5712906 (=> res!2411900 e!3513602)))

(assert (=> b!5712906 (= res!2411900 (not (isEmpty!35168 (tail!11197 (_2!36107 lt!2275967)))))))

(declare-fun b!5712907 () Bool)

(assert (=> b!5712907 (= e!3513601 e!3513597)))

(declare-fun res!2411902 () Bool)

(assert (=> b!5712907 (=> (not res!2411902) (not e!3513597))))

(assert (=> b!5712907 (= res!2411902 (not lt!2276088))))

(declare-fun b!5712908 () Bool)

(declare-fun e!3513596 () Bool)

(assert (=> b!5712908 (= e!3513596 (not lt!2276088))))

(declare-fun b!5712909 () Bool)

(declare-fun e!3513600 () Bool)

(assert (=> b!5712909 (= e!3513600 (= lt!2276088 call!436098))))

(declare-fun b!5712910 () Bool)

(assert (=> b!5712910 (= e!3513600 e!3513596)))

(declare-fun c!1007066 () Bool)

(assert (=> b!5712910 (= c!1007066 ((_ is EmptyLang!15707) lt!2275979))))

(declare-fun b!5712911 () Bool)

(declare-fun res!2411907 () Bool)

(assert (=> b!5712911 (=> (not res!2411907) (not e!3513599))))

(assert (=> b!5712911 (= res!2411907 (isEmpty!35168 (tail!11197 (_2!36107 lt!2275967))))))

(declare-fun b!5712912 () Bool)

(declare-fun res!2411904 () Bool)

(assert (=> b!5712912 (=> res!2411904 e!3513601)))

(assert (=> b!5712912 (= res!2411904 (not ((_ is ElementMatch!15707) lt!2275979)))))

(assert (=> b!5712912 (= e!3513596 e!3513601)))

(declare-fun b!5712913 () Bool)

(assert (=> b!5712913 (= e!3513602 (not (= (head!12102 (_2!36107 lt!2275967)) (c!1006919 lt!2275979))))))

(declare-fun b!5712914 () Bool)

(declare-fun res!2411901 () Bool)

(assert (=> b!5712914 (=> (not res!2411901) (not e!3513599))))

(assert (=> b!5712914 (= res!2411901 (not call!436098))))

(declare-fun b!5712915 () Bool)

(declare-fun e!3513598 () Bool)

(assert (=> b!5712915 (= e!3513598 (nullable!5739 lt!2275979))))

(declare-fun b!5712905 () Bool)

(assert (=> b!5712905 (= e!3513598 (matchR!7892 (derivativeStep!4514 lt!2275979 (head!12102 (_2!36107 lt!2275967))) (tail!11197 (_2!36107 lt!2275967))))))

(declare-fun d!1802135 () Bool)

(assert (=> d!1802135 e!3513600))

(declare-fun c!1007065 () Bool)

(assert (=> d!1802135 (= c!1007065 ((_ is EmptyExpr!15707) lt!2275979))))

(assert (=> d!1802135 (= lt!2276088 e!3513598)))

(declare-fun c!1007067 () Bool)

(assert (=> d!1802135 (= c!1007067 (isEmpty!35168 (_2!36107 lt!2275967)))))

(assert (=> d!1802135 (validRegex!7443 lt!2275979)))

(assert (=> d!1802135 (= (matchR!7892 lt!2275979 (_2!36107 lt!2275967)) lt!2276088)))

(assert (= (and d!1802135 c!1007067) b!5712915))

(assert (= (and d!1802135 (not c!1007067)) b!5712905))

(assert (= (and d!1802135 c!1007065) b!5712909))

(assert (= (and d!1802135 (not c!1007065)) b!5712910))

(assert (= (and b!5712910 c!1007066) b!5712908))

(assert (= (and b!5712910 (not c!1007066)) b!5712912))

(assert (= (and b!5712912 (not res!2411904)) b!5712902))

(assert (= (and b!5712902 res!2411906) b!5712914))

(assert (= (and b!5712914 res!2411901) b!5712911))

(assert (= (and b!5712911 res!2411907) b!5712903))

(assert (= (and b!5712902 (not res!2411903)) b!5712907))

(assert (= (and b!5712907 res!2411902) b!5712904))

(assert (= (and b!5712904 (not res!2411905)) b!5712906))

(assert (= (and b!5712906 (not res!2411900)) b!5712913))

(assert (= (or b!5712909 b!5712914 b!5712904) bm!436093))

(declare-fun m!6666406 () Bool)

(assert (=> bm!436093 m!6666406))

(declare-fun m!6666408 () Bool)

(assert (=> b!5712903 m!6666408))

(assert (=> b!5712905 m!6666408))

(assert (=> b!5712905 m!6666408))

(declare-fun m!6666414 () Bool)

(assert (=> b!5712905 m!6666414))

(declare-fun m!6666416 () Bool)

(assert (=> b!5712905 m!6666416))

(assert (=> b!5712905 m!6666414))

(assert (=> b!5712905 m!6666416))

(declare-fun m!6666418 () Bool)

(assert (=> b!5712905 m!6666418))

(assert (=> b!5712906 m!6666416))

(assert (=> b!5712906 m!6666416))

(declare-fun m!6666420 () Bool)

(assert (=> b!5712906 m!6666420))

(declare-fun m!6666422 () Bool)

(assert (=> b!5712915 m!6666422))

(assert (=> b!5712913 m!6666408))

(assert (=> d!1802135 m!6666406))

(assert (=> d!1802135 m!6666208))

(assert (=> b!5712911 m!6666416))

(assert (=> b!5712911 m!6666416))

(assert (=> b!5712911 m!6666420))

(assert (=> b!5712335 d!1802135))

(declare-fun d!1802141 () Bool)

(declare-fun nullableFct!1807 (Regex!15707) Bool)

(assert (=> d!1802141 (= (nullable!5739 (regOne!31926 (regOne!31926 r!7292))) (nullableFct!1807 (regOne!31926 (regOne!31926 r!7292))))))

(declare-fun bs!1334566 () Bool)

(assert (= bs!1334566 d!1802141))

(declare-fun m!6666424 () Bool)

(assert (=> bs!1334566 m!6666424))

(assert (=> b!5712336 d!1802141))

(declare-fun bs!1334568 () Bool)

(declare-fun d!1802143 () Bool)

(assert (= bs!1334568 (and d!1802143 d!1802015)))

(declare-fun lambda!308406 () Int)

(assert (=> bs!1334568 (= lambda!308406 lambda!308358)))

(assert (=> d!1802143 (= (inv!82514 (h!69746 zl!343)) (forall!14845 (exprs!5591 (h!69746 zl!343)) lambda!308406))))

(declare-fun bs!1334569 () Bool)

(assert (= bs!1334569 d!1802143))

(declare-fun m!6666444 () Bool)

(assert (=> bs!1334569 m!6666444))

(assert (=> b!5712356 d!1802143))

(declare-fun b!5712937 () Bool)

(declare-fun e!3513616 () List!63420)

(assert (=> b!5712937 (= e!3513616 lt!2275962)))

(declare-fun b!5712939 () Bool)

(declare-fun res!2411911 () Bool)

(declare-fun e!3513615 () Bool)

(assert (=> b!5712939 (=> (not res!2411911) (not e!3513615))))

(declare-fun lt!2276090 () List!63420)

(assert (=> b!5712939 (= res!2411911 (= (size!40021 lt!2276090) (+ (size!40021 (_1!36107 lt!2275967)) (size!40021 lt!2275962))))))

(declare-fun b!5712938 () Bool)

(assert (=> b!5712938 (= e!3513616 (Cons!63296 (h!69744 (_1!36107 lt!2275967)) (++!13899 (t!376740 (_1!36107 lt!2275967)) lt!2275962)))))

(declare-fun b!5712940 () Bool)

(assert (=> b!5712940 (= e!3513615 (or (not (= lt!2275962 Nil!63296)) (= lt!2276090 (_1!36107 lt!2275967))))))

(declare-fun d!1802151 () Bool)

(assert (=> d!1802151 e!3513615))

(declare-fun res!2411912 () Bool)

(assert (=> d!1802151 (=> (not res!2411912) (not e!3513615))))

(assert (=> d!1802151 (= res!2411912 (= (content!11496 lt!2276090) ((_ map or) (content!11496 (_1!36107 lt!2275967)) (content!11496 lt!2275962))))))

(assert (=> d!1802151 (= lt!2276090 e!3513616)))

(declare-fun c!1007077 () Bool)

(assert (=> d!1802151 (= c!1007077 ((_ is Nil!63296) (_1!36107 lt!2275967)))))

(assert (=> d!1802151 (= (++!13899 (_1!36107 lt!2275967) lt!2275962) lt!2276090)))

(assert (= (and d!1802151 c!1007077) b!5712937))

(assert (= (and d!1802151 (not c!1007077)) b!5712938))

(assert (= (and d!1802151 res!2411912) b!5712939))

(assert (= (and b!5712939 res!2411911) b!5712940))

(declare-fun m!6666452 () Bool)

(assert (=> b!5712939 m!6666452))

(assert (=> b!5712939 m!6666244))

(declare-fun m!6666454 () Bool)

(assert (=> b!5712939 m!6666454))

(declare-fun m!6666456 () Bool)

(assert (=> b!5712938 m!6666456))

(declare-fun m!6666458 () Bool)

(assert (=> d!1802151 m!6666458))

(assert (=> d!1802151 m!6666252))

(declare-fun m!6666460 () Bool)

(assert (=> d!1802151 m!6666460))

(assert (=> b!5712357 d!1802151))

(declare-fun b!5712946 () Bool)

(declare-fun e!3513621 () List!63420)

(assert (=> b!5712946 (= e!3513621 (_2!36107 lt!2275961))))

(declare-fun b!5712948 () Bool)

(declare-fun res!2411914 () Bool)

(declare-fun e!3513620 () Bool)

(assert (=> b!5712948 (=> (not res!2411914) (not e!3513620))))

(declare-fun lt!2276091 () List!63420)

(assert (=> b!5712948 (= res!2411914 (= (size!40021 lt!2276091) (+ (size!40021 lt!2275980) (size!40021 (_2!36107 lt!2275961)))))))

(declare-fun b!5712947 () Bool)

(assert (=> b!5712947 (= e!3513621 (Cons!63296 (h!69744 lt!2275980) (++!13899 (t!376740 lt!2275980) (_2!36107 lt!2275961))))))

(declare-fun b!5712949 () Bool)

(assert (=> b!5712949 (= e!3513620 (or (not (= (_2!36107 lt!2275961) Nil!63296)) (= lt!2276091 lt!2275980)))))

(declare-fun d!1802155 () Bool)

(assert (=> d!1802155 e!3513620))

(declare-fun res!2411915 () Bool)

(assert (=> d!1802155 (=> (not res!2411915) (not e!3513620))))

(assert (=> d!1802155 (= res!2411915 (= (content!11496 lt!2276091) ((_ map or) (content!11496 lt!2275980) (content!11496 (_2!36107 lt!2275961)))))))

(assert (=> d!1802155 (= lt!2276091 e!3513621)))

(declare-fun c!1007080 () Bool)

(assert (=> d!1802155 (= c!1007080 ((_ is Nil!63296) lt!2275980))))

(assert (=> d!1802155 (= (++!13899 lt!2275980 (_2!36107 lt!2275961)) lt!2276091)))

(assert (= (and d!1802155 c!1007080) b!5712946))

(assert (= (and d!1802155 (not c!1007080)) b!5712947))

(assert (= (and d!1802155 res!2411915) b!5712948))

(assert (= (and b!5712948 res!2411914) b!5712949))

(declare-fun m!6666468 () Bool)

(assert (=> b!5712948 m!6666468))

(declare-fun m!6666472 () Bool)

(assert (=> b!5712948 m!6666472))

(declare-fun m!6666474 () Bool)

(assert (=> b!5712948 m!6666474))

(declare-fun m!6666476 () Bool)

(assert (=> b!5712947 m!6666476))

(declare-fun m!6666478 () Bool)

(assert (=> d!1802155 m!6666478))

(declare-fun m!6666480 () Bool)

(assert (=> d!1802155 m!6666480))

(declare-fun m!6666482 () Bool)

(assert (=> d!1802155 m!6666482))

(assert (=> b!5712357 d!1802155))

(declare-fun b!5712950 () Bool)

(declare-fun e!3513626 () List!63420)

(assert (=> b!5712950 (= e!3513626 (_2!36107 lt!2275961))))

(declare-fun b!5712952 () Bool)

(declare-fun res!2411919 () Bool)

(declare-fun e!3513624 () Bool)

(assert (=> b!5712952 (=> (not res!2411919) (not e!3513624))))

(declare-fun lt!2276093 () List!63420)

(assert (=> b!5712952 (= res!2411919 (= (size!40021 lt!2276093) (+ (size!40021 (_2!36107 lt!2275967)) (size!40021 (_2!36107 lt!2275961)))))))

(declare-fun b!5712951 () Bool)

(assert (=> b!5712951 (= e!3513626 (Cons!63296 (h!69744 (_2!36107 lt!2275967)) (++!13899 (t!376740 (_2!36107 lt!2275967)) (_2!36107 lt!2275961))))))

(declare-fun b!5712953 () Bool)

(assert (=> b!5712953 (= e!3513624 (or (not (= (_2!36107 lt!2275961) Nil!63296)) (= lt!2276093 (_2!36107 lt!2275967))))))

(declare-fun d!1802163 () Bool)

(assert (=> d!1802163 e!3513624))

(declare-fun res!2411921 () Bool)

(assert (=> d!1802163 (=> (not res!2411921) (not e!3513624))))

(assert (=> d!1802163 (= res!2411921 (= (content!11496 lt!2276093) ((_ map or) (content!11496 (_2!36107 lt!2275967)) (content!11496 (_2!36107 lt!2275961)))))))

(assert (=> d!1802163 (= lt!2276093 e!3513626)))

(declare-fun c!1007082 () Bool)

(assert (=> d!1802163 (= c!1007082 ((_ is Nil!63296) (_2!36107 lt!2275967)))))

(assert (=> d!1802163 (= (++!13899 (_2!36107 lt!2275967) (_2!36107 lt!2275961)) lt!2276093)))

(assert (= (and d!1802163 c!1007082) b!5712950))

(assert (= (and d!1802163 (not c!1007082)) b!5712951))

(assert (= (and d!1802163 res!2411921) b!5712952))

(assert (= (and b!5712952 res!2411919) b!5712953))

(declare-fun m!6666484 () Bool)

(assert (=> b!5712952 m!6666484))

(assert (=> b!5712952 m!6666246))

(assert (=> b!5712952 m!6666474))

(declare-fun m!6666486 () Bool)

(assert (=> b!5712951 m!6666486))

(declare-fun m!6666488 () Bool)

(assert (=> d!1802163 m!6666488))

(assert (=> d!1802163 m!6666254))

(assert (=> d!1802163 m!6666482))

(assert (=> b!5712357 d!1802163))

(declare-fun d!1802165 () Bool)

(assert (=> d!1802165 (= (++!13899 (++!13899 (_1!36107 lt!2275967) (_2!36107 lt!2275967)) (_2!36107 lt!2275961)) (++!13899 (_1!36107 lt!2275967) (++!13899 (_2!36107 lt!2275967) (_2!36107 lt!2275961))))))

(declare-fun lt!2276099 () Unit!156360)

(declare-fun choose!43195 (List!63420 List!63420 List!63420) Unit!156360)

(assert (=> d!1802165 (= lt!2276099 (choose!43195 (_1!36107 lt!2275967) (_2!36107 lt!2275967) (_2!36107 lt!2275961)))))

(assert (=> d!1802165 (= (lemmaConcatAssociativity!2874 (_1!36107 lt!2275967) (_2!36107 lt!2275967) (_2!36107 lt!2275961)) lt!2276099)))

(declare-fun bs!1334574 () Bool)

(assert (= bs!1334574 d!1802165))

(declare-fun m!6666508 () Bool)

(assert (=> bs!1334574 m!6666508))

(assert (=> bs!1334574 m!6665862))

(assert (=> bs!1334574 m!6665928))

(declare-fun m!6666510 () Bool)

(assert (=> bs!1334574 m!6666510))

(assert (=> bs!1334574 m!6665862))

(declare-fun m!6666512 () Bool)

(assert (=> bs!1334574 m!6666512))

(assert (=> bs!1334574 m!6665928))

(assert (=> b!5712357 d!1802165))

(declare-fun bs!1334578 () Bool)

(declare-fun d!1802171 () Bool)

(assert (= bs!1334578 (and d!1802171 d!1802015)))

(declare-fun lambda!308408 () Int)

(assert (=> bs!1334578 (= lambda!308408 lambda!308358)))

(declare-fun bs!1334579 () Bool)

(assert (= bs!1334579 (and d!1802171 d!1802143)))

(assert (=> bs!1334579 (= lambda!308408 lambda!308406)))

(assert (=> d!1802171 (= (inv!82514 setElem!38255) (forall!14845 (exprs!5591 setElem!38255) lambda!308408))))

(declare-fun bs!1334581 () Bool)

(assert (= bs!1334581 d!1802171))

(declare-fun m!6666514 () Bool)

(assert (=> bs!1334581 m!6666514))

(assert (=> setNonEmpty!38255 d!1802171))

(declare-fun b!5712981 () Bool)

(declare-fun e!3513644 () Bool)

(declare-fun call!436114 () Bool)

(assert (=> b!5712981 (= e!3513644 call!436114)))

(declare-fun b!5712982 () Bool)

(declare-fun e!3513649 () Bool)

(declare-fun e!3513646 () Bool)

(assert (=> b!5712982 (= e!3513649 e!3513646)))

(declare-fun c!1007089 () Bool)

(assert (=> b!5712982 (= c!1007089 ((_ is Star!15707) r!7292))))

(declare-fun b!5712983 () Bool)

(declare-fun res!2411933 () Bool)

(declare-fun e!3513643 () Bool)

(assert (=> b!5712983 (=> (not res!2411933) (not e!3513643))))

(declare-fun call!436115 () Bool)

(assert (=> b!5712983 (= res!2411933 call!436115)))

(declare-fun e!3513647 () Bool)

(assert (=> b!5712983 (= e!3513647 e!3513643)))

(declare-fun b!5712984 () Bool)

(declare-fun e!3513645 () Bool)

(declare-fun call!436116 () Bool)

(assert (=> b!5712984 (= e!3513645 call!436116)))

(declare-fun b!5712985 () Bool)

(assert (=> b!5712985 (= e!3513643 call!436114)))

(declare-fun b!5712986 () Bool)

(assert (=> b!5712986 (= e!3513646 e!3513645)))

(declare-fun res!2411934 () Bool)

(assert (=> b!5712986 (= res!2411934 (not (nullable!5739 (reg!16036 r!7292))))))

(assert (=> b!5712986 (=> (not res!2411934) (not e!3513645))))

(declare-fun bm!436109 () Bool)

(declare-fun c!1007088 () Bool)

(assert (=> bm!436109 (= call!436114 (validRegex!7443 (ite c!1007088 (regTwo!31927 r!7292) (regTwo!31926 r!7292))))))

(declare-fun bm!436110 () Bool)

(assert (=> bm!436110 (= call!436116 (validRegex!7443 (ite c!1007089 (reg!16036 r!7292) (ite c!1007088 (regOne!31927 r!7292) (regOne!31926 r!7292)))))))

(declare-fun b!5712987 () Bool)

(assert (=> b!5712987 (= e!3513646 e!3513647)))

(assert (=> b!5712987 (= c!1007088 ((_ is Union!15707) r!7292))))

(declare-fun d!1802173 () Bool)

(declare-fun res!2411936 () Bool)

(assert (=> d!1802173 (=> res!2411936 e!3513649)))

(assert (=> d!1802173 (= res!2411936 ((_ is ElementMatch!15707) r!7292))))

(assert (=> d!1802173 (= (validRegex!7443 r!7292) e!3513649)))

(declare-fun b!5712988 () Bool)

(declare-fun res!2411937 () Bool)

(declare-fun e!3513648 () Bool)

(assert (=> b!5712988 (=> res!2411937 e!3513648)))

(assert (=> b!5712988 (= res!2411937 (not ((_ is Concat!24552) r!7292)))))

(assert (=> b!5712988 (= e!3513647 e!3513648)))

(declare-fun bm!436111 () Bool)

(assert (=> bm!436111 (= call!436115 call!436116)))

(declare-fun b!5712989 () Bool)

(assert (=> b!5712989 (= e!3513648 e!3513644)))

(declare-fun res!2411935 () Bool)

(assert (=> b!5712989 (=> (not res!2411935) (not e!3513644))))

(assert (=> b!5712989 (= res!2411935 call!436115)))

(assert (= (and d!1802173 (not res!2411936)) b!5712982))

(assert (= (and b!5712982 c!1007089) b!5712986))

(assert (= (and b!5712982 (not c!1007089)) b!5712987))

(assert (= (and b!5712986 res!2411934) b!5712984))

(assert (= (and b!5712987 c!1007088) b!5712983))

(assert (= (and b!5712987 (not c!1007088)) b!5712988))

(assert (= (and b!5712983 res!2411933) b!5712985))

(assert (= (and b!5712988 (not res!2411937)) b!5712989))

(assert (= (and b!5712989 res!2411935) b!5712981))

(assert (= (or b!5712985 b!5712981) bm!436109))

(assert (= (or b!5712983 b!5712989) bm!436111))

(assert (= (or b!5712984 bm!436111) bm!436110))

(declare-fun m!6666526 () Bool)

(assert (=> b!5712986 m!6666526))

(declare-fun m!6666528 () Bool)

(assert (=> bm!436109 m!6666528))

(declare-fun m!6666530 () Bool)

(assert (=> bm!436110 m!6666530))

(assert (=> start!588232 d!1802173))

(declare-fun d!1802179 () Bool)

(assert (=> d!1802179 (= (isEmpty!35166 (t!376741 (exprs!5591 (h!69746 zl!343)))) ((_ is Nil!63297) (t!376741 (exprs!5591 (h!69746 zl!343)))))))

(assert (=> b!5712342 d!1802179))

(declare-fun d!1802185 () Bool)

(declare-fun choose!43196 ((InoxSet Context!10182) Int) (InoxSet Context!10182))

(assert (=> d!1802185 (= (flatMap!1320 lt!2275996 lambda!308344) (choose!43196 lt!2275996 lambda!308344))))

(declare-fun bs!1334600 () Bool)

(assert (= bs!1334600 d!1802185))

(declare-fun m!6666550 () Bool)

(assert (=> bs!1334600 m!6666550))

(assert (=> b!5712363 d!1802185))

(declare-fun call!436119 () (InoxSet Context!10182))

(declare-fun e!3513660 () (InoxSet Context!10182))

(declare-fun b!5713004 () Bool)

(assert (=> b!5713004 (= e!3513660 ((_ map or) call!436119 (derivationStepZipperUp!975 (Context!10183 (t!376741 (exprs!5591 lt!2275989))) (h!69744 s!2326))))))

(declare-fun b!5713005 () Bool)

(declare-fun e!3513658 () (InoxSet Context!10182))

(assert (=> b!5713005 (= e!3513658 ((as const (Array Context!10182 Bool)) false))))

(declare-fun b!5713006 () Bool)

(assert (=> b!5713006 (= e!3513658 call!436119)))

(declare-fun b!5713007 () Bool)

(assert (=> b!5713007 (= e!3513660 e!3513658)))

(declare-fun c!1007095 () Bool)

(assert (=> b!5713007 (= c!1007095 ((_ is Cons!63297) (exprs!5591 lt!2275989)))))

(declare-fun bm!436114 () Bool)

(assert (=> bm!436114 (= call!436119 (derivationStepZipperDown!1049 (h!69745 (exprs!5591 lt!2275989)) (Context!10183 (t!376741 (exprs!5591 lt!2275989))) (h!69744 s!2326)))))

(declare-fun b!5713008 () Bool)

(declare-fun e!3513659 () Bool)

(assert (=> b!5713008 (= e!3513659 (nullable!5739 (h!69745 (exprs!5591 lt!2275989))))))

(declare-fun d!1802191 () Bool)

(declare-fun c!1007096 () Bool)

(assert (=> d!1802191 (= c!1007096 e!3513659)))

(declare-fun res!2411942 () Bool)

(assert (=> d!1802191 (=> (not res!2411942) (not e!3513659))))

(assert (=> d!1802191 (= res!2411942 ((_ is Cons!63297) (exprs!5591 lt!2275989)))))

(assert (=> d!1802191 (= (derivationStepZipperUp!975 lt!2275989 (h!69744 s!2326)) e!3513660)))

(assert (= (and d!1802191 res!2411942) b!5713008))

(assert (= (and d!1802191 c!1007096) b!5713004))

(assert (= (and d!1802191 (not c!1007096)) b!5713007))

(assert (= (and b!5713007 c!1007095) b!5713006))

(assert (= (and b!5713007 (not c!1007095)) b!5713005))

(assert (= (or b!5713004 b!5713006) bm!436114))

(declare-fun m!6666552 () Bool)

(assert (=> b!5713004 m!6666552))

(declare-fun m!6666554 () Bool)

(assert (=> bm!436114 m!6666554))

(declare-fun m!6666556 () Bool)

(assert (=> b!5713008 m!6666556))

(assert (=> b!5712363 d!1802191))

(declare-fun d!1802193 () Bool)

(declare-fun dynLambda!24770 (Int Context!10182) (InoxSet Context!10182))

(assert (=> d!1802193 (= (flatMap!1320 lt!2275996 lambda!308344) (dynLambda!24770 lambda!308344 lt!2275989))))

(declare-fun lt!2276106 () Unit!156360)

(declare-fun choose!43197 ((InoxSet Context!10182) Context!10182 Int) Unit!156360)

(assert (=> d!1802193 (= lt!2276106 (choose!43197 lt!2275996 lt!2275989 lambda!308344))))

(assert (=> d!1802193 (= lt!2275996 (store ((as const (Array Context!10182 Bool)) false) lt!2275989 true))))

(assert (=> d!1802193 (= (lemmaFlatMapOnSingletonSet!852 lt!2275996 lt!2275989 lambda!308344) lt!2276106)))

(declare-fun b_lambda!215919 () Bool)

(assert (=> (not b_lambda!215919) (not d!1802193)))

(declare-fun bs!1334601 () Bool)

(assert (= bs!1334601 d!1802193))

(assert (=> bs!1334601 m!6665876))

(declare-fun m!6666558 () Bool)

(assert (=> bs!1334601 m!6666558))

(declare-fun m!6666560 () Bool)

(assert (=> bs!1334601 m!6666560))

(assert (=> bs!1334601 m!6665882))

(assert (=> b!5712363 d!1802193))

(declare-fun bs!1334602 () Bool)

(declare-fun d!1802195 () Bool)

(assert (= bs!1334602 (and d!1802195 b!5712340)))

(declare-fun lambda!308415 () Int)

(assert (=> bs!1334602 (= lambda!308415 lambda!308344)))

(assert (=> d!1802195 true))

(assert (=> d!1802195 (= (derivationStepZipper!1790 lt!2275996 (h!69744 s!2326)) (flatMap!1320 lt!2275996 lambda!308415))))

(declare-fun bs!1334603 () Bool)

(assert (= bs!1334603 d!1802195))

(declare-fun m!6666562 () Bool)

(assert (=> bs!1334603 m!6666562))

(assert (=> b!5712363 d!1802195))

(declare-fun bs!1334616 () Bool)

(declare-fun d!1802197 () Bool)

(assert (= bs!1334616 (and d!1802197 d!1802015)))

(declare-fun lambda!308422 () Int)

(assert (=> bs!1334616 (= lambda!308422 lambda!308358)))

(declare-fun bs!1334617 () Bool)

(assert (= bs!1334617 (and d!1802197 d!1802143)))

(assert (=> bs!1334617 (= lambda!308422 lambda!308406)))

(declare-fun bs!1334618 () Bool)

(assert (= bs!1334618 (and d!1802197 d!1802171)))

(assert (=> bs!1334618 (= lambda!308422 lambda!308408)))

(declare-fun b!5713050 () Bool)

(declare-fun e!3513685 () Bool)

(declare-fun lt!2276113 () Regex!15707)

(assert (=> b!5713050 (= e!3513685 (= lt!2276113 (head!12101 (unfocusZipperList!1135 zl!343))))))

(declare-fun e!3513686 () Bool)

(assert (=> d!1802197 e!3513686))

(declare-fun res!2411963 () Bool)

(assert (=> d!1802197 (=> (not res!2411963) (not e!3513686))))

(assert (=> d!1802197 (= res!2411963 (validRegex!7443 lt!2276113))))

(declare-fun e!3513682 () Regex!15707)

(assert (=> d!1802197 (= lt!2276113 e!3513682)))

(declare-fun c!1007111 () Bool)

(declare-fun e!3513683 () Bool)

(assert (=> d!1802197 (= c!1007111 e!3513683)))

(declare-fun res!2411962 () Bool)

(assert (=> d!1802197 (=> (not res!2411962) (not e!3513683))))

(assert (=> d!1802197 (= res!2411962 ((_ is Cons!63297) (unfocusZipperList!1135 zl!343)))))

(assert (=> d!1802197 (forall!14845 (unfocusZipperList!1135 zl!343) lambda!308422)))

(assert (=> d!1802197 (= (generalisedUnion!1570 (unfocusZipperList!1135 zl!343)) lt!2276113)))

(declare-fun b!5713051 () Bool)

(declare-fun e!3513687 () Regex!15707)

(assert (=> b!5713051 (= e!3513682 e!3513687)))

(declare-fun c!1007110 () Bool)

(assert (=> b!5713051 (= c!1007110 ((_ is Cons!63297) (unfocusZipperList!1135 zl!343)))))

(declare-fun b!5713052 () Bool)

(declare-fun isUnion!660 (Regex!15707) Bool)

(assert (=> b!5713052 (= e!3513685 (isUnion!660 lt!2276113))))

(declare-fun b!5713053 () Bool)

(declare-fun e!3513684 () Bool)

(assert (=> b!5713053 (= e!3513684 e!3513685)))

(declare-fun c!1007112 () Bool)

(assert (=> b!5713053 (= c!1007112 (isEmpty!35166 (tail!11196 (unfocusZipperList!1135 zl!343))))))

(declare-fun b!5713054 () Bool)

(assert (=> b!5713054 (= e!3513683 (isEmpty!35166 (t!376741 (unfocusZipperList!1135 zl!343))))))

(declare-fun b!5713055 () Bool)

(declare-fun isEmptyLang!1230 (Regex!15707) Bool)

(assert (=> b!5713055 (= e!3513684 (isEmptyLang!1230 lt!2276113))))

(declare-fun b!5713056 () Bool)

(assert (=> b!5713056 (= e!3513687 EmptyLang!15707)))

(declare-fun b!5713057 () Bool)

(assert (=> b!5713057 (= e!3513687 (Union!15707 (h!69745 (unfocusZipperList!1135 zl!343)) (generalisedUnion!1570 (t!376741 (unfocusZipperList!1135 zl!343)))))))

(declare-fun b!5713058 () Bool)

(assert (=> b!5713058 (= e!3513682 (h!69745 (unfocusZipperList!1135 zl!343)))))

(declare-fun b!5713059 () Bool)

(assert (=> b!5713059 (= e!3513686 e!3513684)))

(declare-fun c!1007109 () Bool)

(assert (=> b!5713059 (= c!1007109 (isEmpty!35166 (unfocusZipperList!1135 zl!343)))))

(assert (= (and d!1802197 res!2411962) b!5713054))

(assert (= (and d!1802197 c!1007111) b!5713058))

(assert (= (and d!1802197 (not c!1007111)) b!5713051))

(assert (= (and b!5713051 c!1007110) b!5713057))

(assert (= (and b!5713051 (not c!1007110)) b!5713056))

(assert (= (and d!1802197 res!2411963) b!5713059))

(assert (= (and b!5713059 c!1007109) b!5713055))

(assert (= (and b!5713059 (not c!1007109)) b!5713053))

(assert (= (and b!5713053 c!1007112) b!5713050))

(assert (= (and b!5713053 (not c!1007112)) b!5713052))

(declare-fun m!6666586 () Bool)

(assert (=> b!5713055 m!6666586))

(assert (=> b!5713050 m!6665938))

(declare-fun m!6666588 () Bool)

(assert (=> b!5713050 m!6666588))

(declare-fun m!6666590 () Bool)

(assert (=> b!5713052 m!6666590))

(declare-fun m!6666592 () Bool)

(assert (=> b!5713057 m!6666592))

(declare-fun m!6666596 () Bool)

(assert (=> d!1802197 m!6666596))

(assert (=> d!1802197 m!6665938))

(declare-fun m!6666598 () Bool)

(assert (=> d!1802197 m!6666598))

(assert (=> b!5713053 m!6665938))

(declare-fun m!6666600 () Bool)

(assert (=> b!5713053 m!6666600))

(assert (=> b!5713053 m!6666600))

(declare-fun m!6666604 () Bool)

(assert (=> b!5713053 m!6666604))

(declare-fun m!6666606 () Bool)

(assert (=> b!5713054 m!6666606))

(assert (=> b!5713059 m!6665938))

(declare-fun m!6666608 () Bool)

(assert (=> b!5713059 m!6666608))

(assert (=> b!5712364 d!1802197))

(declare-fun bs!1334634 () Bool)

(declare-fun d!1802203 () Bool)

(assert (= bs!1334634 (and d!1802203 d!1802015)))

(declare-fun lambda!308426 () Int)

(assert (=> bs!1334634 (= lambda!308426 lambda!308358)))

(declare-fun bs!1334635 () Bool)

(assert (= bs!1334635 (and d!1802203 d!1802143)))

(assert (=> bs!1334635 (= lambda!308426 lambda!308406)))

(declare-fun bs!1334636 () Bool)

(assert (= bs!1334636 (and d!1802203 d!1802171)))

(assert (=> bs!1334636 (= lambda!308426 lambda!308408)))

(declare-fun bs!1334637 () Bool)

(assert (= bs!1334637 (and d!1802203 d!1802197)))

(assert (=> bs!1334637 (= lambda!308426 lambda!308422)))

(declare-fun lt!2276118 () List!63421)

(assert (=> d!1802203 (forall!14845 lt!2276118 lambda!308426)))

(declare-fun e!3513690 () List!63421)

(assert (=> d!1802203 (= lt!2276118 e!3513690)))

(declare-fun c!1007115 () Bool)

(assert (=> d!1802203 (= c!1007115 ((_ is Cons!63298) zl!343))))

(assert (=> d!1802203 (= (unfocusZipperList!1135 zl!343) lt!2276118)))

(declare-fun b!5713064 () Bool)

(assert (=> b!5713064 (= e!3513690 (Cons!63297 (generalisedConcat!1322 (exprs!5591 (h!69746 zl!343))) (unfocusZipperList!1135 (t!376742 zl!343))))))

(declare-fun b!5713065 () Bool)

(assert (=> b!5713065 (= e!3513690 Nil!63297)))

(assert (= (and d!1802203 c!1007115) b!5713064))

(assert (= (and d!1802203 (not c!1007115)) b!5713065))

(declare-fun m!6666620 () Bool)

(assert (=> d!1802203 m!6666620))

(assert (=> b!5713064 m!6665942))

(declare-fun m!6666622 () Bool)

(assert (=> b!5713064 m!6666622))

(assert (=> b!5712364 d!1802203))

(declare-fun d!1802211 () Bool)

(assert (=> d!1802211 (= (flatMap!1320 z!1189 lambda!308344) (choose!43196 z!1189 lambda!308344))))

(declare-fun bs!1334640 () Bool)

(assert (= bs!1334640 d!1802211))

(declare-fun m!6666624 () Bool)

(assert (=> bs!1334640 m!6666624))

(assert (=> b!5712340 d!1802211))

(declare-fun d!1802213 () Bool)

(assert (=> d!1802213 (= (nullable!5739 (h!69745 (exprs!5591 (h!69746 zl!343)))) (nullableFct!1807 (h!69745 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun bs!1334642 () Bool)

(assert (= bs!1334642 d!1802213))

(declare-fun m!6666626 () Bool)

(assert (=> bs!1334642 m!6666626))

(assert (=> b!5712340 d!1802213))

(declare-fun e!3513693 () (InoxSet Context!10182))

(declare-fun b!5713066 () Bool)

(declare-fun call!436120 () (InoxSet Context!10182))

(assert (=> b!5713066 (= e!3513693 ((_ map or) call!436120 (derivationStepZipperUp!975 (Context!10183 (t!376741 (exprs!5591 (Context!10183 (Cons!63297 (h!69745 (exprs!5591 (h!69746 zl!343))) (t!376741 (exprs!5591 (h!69746 zl!343)))))))) (h!69744 s!2326))))))

(declare-fun b!5713067 () Bool)

(declare-fun e!3513691 () (InoxSet Context!10182))

(assert (=> b!5713067 (= e!3513691 ((as const (Array Context!10182 Bool)) false))))

(declare-fun b!5713068 () Bool)

(assert (=> b!5713068 (= e!3513691 call!436120)))

(declare-fun b!5713069 () Bool)

(assert (=> b!5713069 (= e!3513693 e!3513691)))

(declare-fun c!1007116 () Bool)

(assert (=> b!5713069 (= c!1007116 ((_ is Cons!63297) (exprs!5591 (Context!10183 (Cons!63297 (h!69745 (exprs!5591 (h!69746 zl!343))) (t!376741 (exprs!5591 (h!69746 zl!343))))))))))

(declare-fun bm!436115 () Bool)

(assert (=> bm!436115 (= call!436120 (derivationStepZipperDown!1049 (h!69745 (exprs!5591 (Context!10183 (Cons!63297 (h!69745 (exprs!5591 (h!69746 zl!343))) (t!376741 (exprs!5591 (h!69746 zl!343))))))) (Context!10183 (t!376741 (exprs!5591 (Context!10183 (Cons!63297 (h!69745 (exprs!5591 (h!69746 zl!343))) (t!376741 (exprs!5591 (h!69746 zl!343)))))))) (h!69744 s!2326)))))

(declare-fun b!5713070 () Bool)

(declare-fun e!3513692 () Bool)

(assert (=> b!5713070 (= e!3513692 (nullable!5739 (h!69745 (exprs!5591 (Context!10183 (Cons!63297 (h!69745 (exprs!5591 (h!69746 zl!343))) (t!376741 (exprs!5591 (h!69746 zl!343)))))))))))

(declare-fun d!1802215 () Bool)

(declare-fun c!1007117 () Bool)

(assert (=> d!1802215 (= c!1007117 e!3513692)))

(declare-fun res!2411964 () Bool)

(assert (=> d!1802215 (=> (not res!2411964) (not e!3513692))))

(assert (=> d!1802215 (= res!2411964 ((_ is Cons!63297) (exprs!5591 (Context!10183 (Cons!63297 (h!69745 (exprs!5591 (h!69746 zl!343))) (t!376741 (exprs!5591 (h!69746 zl!343))))))))))

(assert (=> d!1802215 (= (derivationStepZipperUp!975 (Context!10183 (Cons!63297 (h!69745 (exprs!5591 (h!69746 zl!343))) (t!376741 (exprs!5591 (h!69746 zl!343))))) (h!69744 s!2326)) e!3513693)))

(assert (= (and d!1802215 res!2411964) b!5713070))

(assert (= (and d!1802215 c!1007117) b!5713066))

(assert (= (and d!1802215 (not c!1007117)) b!5713069))

(assert (= (and b!5713069 c!1007116) b!5713068))

(assert (= (and b!5713069 (not c!1007116)) b!5713067))

(assert (= (or b!5713066 b!5713068) bm!436115))

(declare-fun m!6666628 () Bool)

(assert (=> b!5713066 m!6666628))

(declare-fun m!6666630 () Bool)

(assert (=> bm!436115 m!6666630))

(declare-fun m!6666632 () Bool)

(assert (=> b!5713070 m!6666632))

(assert (=> b!5712340 d!1802215))

(declare-fun b!5713071 () Bool)

(declare-fun call!436121 () (InoxSet Context!10182))

(declare-fun e!3513696 () (InoxSet Context!10182))

(assert (=> b!5713071 (= e!3513696 ((_ map or) call!436121 (derivationStepZipperUp!975 (Context!10183 (t!376741 (exprs!5591 lt!2275982))) (h!69744 s!2326))))))

(declare-fun b!5713072 () Bool)

(declare-fun e!3513694 () (InoxSet Context!10182))

(assert (=> b!5713072 (= e!3513694 ((as const (Array Context!10182 Bool)) false))))

(declare-fun b!5713073 () Bool)

(assert (=> b!5713073 (= e!3513694 call!436121)))

(declare-fun b!5713074 () Bool)

(assert (=> b!5713074 (= e!3513696 e!3513694)))

(declare-fun c!1007118 () Bool)

(assert (=> b!5713074 (= c!1007118 ((_ is Cons!63297) (exprs!5591 lt!2275982)))))

(declare-fun bm!436116 () Bool)

(assert (=> bm!436116 (= call!436121 (derivationStepZipperDown!1049 (h!69745 (exprs!5591 lt!2275982)) (Context!10183 (t!376741 (exprs!5591 lt!2275982))) (h!69744 s!2326)))))

(declare-fun b!5713075 () Bool)

(declare-fun e!3513695 () Bool)

(assert (=> b!5713075 (= e!3513695 (nullable!5739 (h!69745 (exprs!5591 lt!2275982))))))

(declare-fun d!1802217 () Bool)

(declare-fun c!1007119 () Bool)

(assert (=> d!1802217 (= c!1007119 e!3513695)))

(declare-fun res!2411965 () Bool)

(assert (=> d!1802217 (=> (not res!2411965) (not e!3513695))))

(assert (=> d!1802217 (= res!2411965 ((_ is Cons!63297) (exprs!5591 lt!2275982)))))

(assert (=> d!1802217 (= (derivationStepZipperUp!975 lt!2275982 (h!69744 s!2326)) e!3513696)))

(assert (= (and d!1802217 res!2411965) b!5713075))

(assert (= (and d!1802217 c!1007119) b!5713071))

(assert (= (and d!1802217 (not c!1007119)) b!5713074))

(assert (= (and b!5713074 c!1007118) b!5713073))

(assert (= (and b!5713074 (not c!1007118)) b!5713072))

(assert (= (or b!5713071 b!5713073) bm!436116))

(declare-fun m!6666634 () Bool)

(assert (=> b!5713071 m!6666634))

(declare-fun m!6666636 () Bool)

(assert (=> bm!436116 m!6666636))

(declare-fun m!6666638 () Bool)

(assert (=> b!5713075 m!6666638))

(assert (=> b!5712340 d!1802217))

(declare-fun d!1802219 () Bool)

(assert (=> d!1802219 (= (flatMap!1320 z!1189 lambda!308344) (dynLambda!24770 lambda!308344 (h!69746 zl!343)))))

(declare-fun lt!2276120 () Unit!156360)

(assert (=> d!1802219 (= lt!2276120 (choose!43197 z!1189 (h!69746 zl!343) lambda!308344))))

(assert (=> d!1802219 (= z!1189 (store ((as const (Array Context!10182 Bool)) false) (h!69746 zl!343) true))))

(assert (=> d!1802219 (= (lemmaFlatMapOnSingletonSet!852 z!1189 (h!69746 zl!343) lambda!308344) lt!2276120)))

(declare-fun b_lambda!215921 () Bool)

(assert (=> (not b_lambda!215921) (not d!1802219)))

(declare-fun bs!1334652 () Bool)

(assert (= bs!1334652 d!1802219))

(assert (=> bs!1334652 m!6665834))

(declare-fun m!6666640 () Bool)

(assert (=> bs!1334652 m!6666640))

(declare-fun m!6666642 () Bool)

(assert (=> bs!1334652 m!6666642))

(declare-fun m!6666644 () Bool)

(assert (=> bs!1334652 m!6666644))

(assert (=> b!5712340 d!1802219))

(declare-fun b!5713111 () Bool)

(declare-fun e!3513720 () (InoxSet Context!10182))

(assert (=> b!5713111 (= e!3513720 ((as const (Array Context!10182 Bool)) false))))

(declare-fun b!5713112 () Bool)

(declare-fun e!3513721 () (InoxSet Context!10182))

(declare-fun call!436140 () (InoxSet Context!10182))

(declare-fun call!436138 () (InoxSet Context!10182))

(assert (=> b!5713112 (= e!3513721 ((_ map or) call!436140 call!436138))))

(declare-fun b!5713113 () Bool)

(declare-fun e!3513722 () (InoxSet Context!10182))

(assert (=> b!5713113 (= e!3513722 (store ((as const (Array Context!10182 Bool)) false) lt!2275982 true))))

(declare-fun b!5713114 () Bool)

(assert (=> b!5713114 (= e!3513722 e!3513721)))

(declare-fun c!1007139 () Bool)

(assert (=> b!5713114 (= c!1007139 ((_ is Union!15707) (h!69745 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun call!436136 () List!63421)

(declare-fun bm!436131 () Bool)

(assert (=> bm!436131 (= call!436140 (derivationStepZipperDown!1049 (ite c!1007139 (regOne!31927 (h!69745 (exprs!5591 (h!69746 zl!343)))) (regOne!31926 (h!69745 (exprs!5591 (h!69746 zl!343))))) (ite c!1007139 lt!2275982 (Context!10183 call!436136)) (h!69744 s!2326)))))

(declare-fun b!5713115 () Bool)

(declare-fun call!436139 () (InoxSet Context!10182))

(assert (=> b!5713115 (= e!3513720 call!436139)))

(declare-fun c!1007138 () Bool)

(declare-fun bm!436132 () Bool)

(declare-fun c!1007135 () Bool)

(declare-fun $colon$colon!1728 (List!63421 Regex!15707) List!63421)

(assert (=> bm!436132 (= call!436136 ($colon$colon!1728 (exprs!5591 lt!2275982) (ite (or c!1007135 c!1007138) (regTwo!31926 (h!69745 (exprs!5591 (h!69746 zl!343)))) (h!69745 (exprs!5591 (h!69746 zl!343))))))))

(declare-fun b!5713116 () Bool)

(declare-fun e!3513717 () Bool)

(assert (=> b!5713116 (= e!3513717 (nullable!5739 (regOne!31926 (h!69745 (exprs!5591 (h!69746 zl!343))))))))

(declare-fun b!5713117 () Bool)

(declare-fun e!3513718 () (InoxSet Context!10182))

(declare-fun e!3513719 () (InoxSet Context!10182))

(assert (=> b!5713117 (= e!3513718 e!3513719)))

(assert (=> b!5713117 (= c!1007138 ((_ is Concat!24552) (h!69745 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun b!5713118 () Bool)

(declare-fun call!436137 () (InoxSet Context!10182))

(assert (=> b!5713118 (= e!3513718 ((_ map or) call!436140 call!436137))))

(declare-fun b!5713119 () Bool)

(assert (=> b!5713119 (= e!3513719 call!436139)))

(declare-fun d!1802221 () Bool)

(declare-fun c!1007136 () Bool)

(assert (=> d!1802221 (= c!1007136 (and ((_ is ElementMatch!15707) (h!69745 (exprs!5591 (h!69746 zl!343)))) (= (c!1006919 (h!69745 (exprs!5591 (h!69746 zl!343)))) (h!69744 s!2326))))))

(assert (=> d!1802221 (= (derivationStepZipperDown!1049 (h!69745 (exprs!5591 (h!69746 zl!343))) lt!2275982 (h!69744 s!2326)) e!3513722)))

(declare-fun bm!436133 () Bool)

(declare-fun call!436141 () List!63421)

(assert (=> bm!436133 (= call!436141 call!436136)))

(declare-fun bm!436134 () Bool)

(assert (=> bm!436134 (= call!436139 call!436137)))

(declare-fun b!5713120 () Bool)

(assert (=> b!5713120 (= c!1007135 e!3513717)))

(declare-fun res!2411971 () Bool)

(assert (=> b!5713120 (=> (not res!2411971) (not e!3513717))))

(assert (=> b!5713120 (= res!2411971 ((_ is Concat!24552) (h!69745 (exprs!5591 (h!69746 zl!343)))))))

(assert (=> b!5713120 (= e!3513721 e!3513718)))

(declare-fun bm!436135 () Bool)

(assert (=> bm!436135 (= call!436137 call!436138)))

(declare-fun b!5713121 () Bool)

(declare-fun c!1007137 () Bool)

(assert (=> b!5713121 (= c!1007137 ((_ is Star!15707) (h!69745 (exprs!5591 (h!69746 zl!343)))))))

(assert (=> b!5713121 (= e!3513719 e!3513720)))

(declare-fun bm!436136 () Bool)

(assert (=> bm!436136 (= call!436138 (derivationStepZipperDown!1049 (ite c!1007139 (regTwo!31927 (h!69745 (exprs!5591 (h!69746 zl!343)))) (ite c!1007135 (regTwo!31926 (h!69745 (exprs!5591 (h!69746 zl!343)))) (ite c!1007138 (regOne!31926 (h!69745 (exprs!5591 (h!69746 zl!343)))) (reg!16036 (h!69745 (exprs!5591 (h!69746 zl!343))))))) (ite (or c!1007139 c!1007135) lt!2275982 (Context!10183 call!436141)) (h!69744 s!2326)))))

(assert (= (and d!1802221 c!1007136) b!5713113))

(assert (= (and d!1802221 (not c!1007136)) b!5713114))

(assert (= (and b!5713114 c!1007139) b!5713112))

(assert (= (and b!5713114 (not c!1007139)) b!5713120))

(assert (= (and b!5713120 res!2411971) b!5713116))

(assert (= (and b!5713120 c!1007135) b!5713118))

(assert (= (and b!5713120 (not c!1007135)) b!5713117))

(assert (= (and b!5713117 c!1007138) b!5713119))

(assert (= (and b!5713117 (not c!1007138)) b!5713121))

(assert (= (and b!5713121 c!1007137) b!5713115))

(assert (= (and b!5713121 (not c!1007137)) b!5713111))

(assert (= (or b!5713119 b!5713115) bm!436133))

(assert (= (or b!5713119 b!5713115) bm!436134))

(assert (= (or b!5713118 bm!436133) bm!436132))

(assert (= (or b!5713118 bm!436134) bm!436135))

(assert (= (or b!5713112 bm!436135) bm!436136))

(assert (= (or b!5713112 b!5713118) bm!436131))

(declare-fun m!6666678 () Bool)

(assert (=> b!5713113 m!6666678))

(declare-fun m!6666680 () Bool)

(assert (=> bm!436132 m!6666680))

(declare-fun m!6666690 () Bool)

(assert (=> bm!436136 m!6666690))

(declare-fun m!6666694 () Bool)

(assert (=> bm!436131 m!6666694))

(declare-fun m!6666696 () Bool)

(assert (=> b!5713116 m!6666696))

(assert (=> b!5712340 d!1802221))

(declare-fun call!436142 () (InoxSet Context!10182))

(declare-fun b!5713134 () Bool)

(declare-fun e!3513731 () (InoxSet Context!10182))

(assert (=> b!5713134 (= e!3513731 ((_ map or) call!436142 (derivationStepZipperUp!975 (Context!10183 (t!376741 (exprs!5591 (h!69746 zl!343)))) (h!69744 s!2326))))))

(declare-fun b!5713135 () Bool)

(declare-fun e!3513729 () (InoxSet Context!10182))

(assert (=> b!5713135 (= e!3513729 ((as const (Array Context!10182 Bool)) false))))

(declare-fun b!5713136 () Bool)

(assert (=> b!5713136 (= e!3513729 call!436142)))

(declare-fun b!5713137 () Bool)

(assert (=> b!5713137 (= e!3513731 e!3513729)))

(declare-fun c!1007143 () Bool)

(assert (=> b!5713137 (= c!1007143 ((_ is Cons!63297) (exprs!5591 (h!69746 zl!343))))))

(declare-fun bm!436137 () Bool)

(assert (=> bm!436137 (= call!436142 (derivationStepZipperDown!1049 (h!69745 (exprs!5591 (h!69746 zl!343))) (Context!10183 (t!376741 (exprs!5591 (h!69746 zl!343)))) (h!69744 s!2326)))))

(declare-fun b!5713138 () Bool)

(declare-fun e!3513730 () Bool)

(assert (=> b!5713138 (= e!3513730 (nullable!5739 (h!69745 (exprs!5591 (h!69746 zl!343)))))))

(declare-fun d!1802237 () Bool)

(declare-fun c!1007144 () Bool)

(assert (=> d!1802237 (= c!1007144 e!3513730)))

(declare-fun res!2411978 () Bool)

(assert (=> d!1802237 (=> (not res!2411978) (not e!3513730))))

(assert (=> d!1802237 (= res!2411978 ((_ is Cons!63297) (exprs!5591 (h!69746 zl!343))))))

(assert (=> d!1802237 (= (derivationStepZipperUp!975 (h!69746 zl!343) (h!69744 s!2326)) e!3513731)))

(assert (= (and d!1802237 res!2411978) b!5713138))

(assert (= (and d!1802237 c!1007144) b!5713134))

(assert (= (and d!1802237 (not c!1007144)) b!5713137))

(assert (= (and b!5713137 c!1007143) b!5713136))

(assert (= (and b!5713137 (not c!1007143)) b!5713135))

(assert (= (or b!5713134 b!5713136) bm!436137))

(declare-fun m!6666704 () Bool)

(assert (=> b!5713134 m!6666704))

(declare-fun m!6666706 () Bool)

(assert (=> bm!436137 m!6666706))

(assert (=> b!5713138 m!6665838))

(assert (=> b!5712340 d!1802237))

(declare-fun b!5713139 () Bool)

(declare-fun e!3513735 () (InoxSet Context!10182))

(assert (=> b!5713139 (= e!3513735 ((as const (Array Context!10182 Bool)) false))))

(declare-fun b!5713140 () Bool)

(declare-fun e!3513736 () (InoxSet Context!10182))

(declare-fun call!436147 () (InoxSet Context!10182))

(declare-fun call!436145 () (InoxSet Context!10182))

(assert (=> b!5713140 (= e!3513736 ((_ map or) call!436147 call!436145))))

(declare-fun b!5713141 () Bool)

(declare-fun e!3513737 () (InoxSet Context!10182))

(assert (=> b!5713141 (= e!3513737 (store ((as const (Array Context!10182 Bool)) false) lt!2275966 true))))

(declare-fun b!5713142 () Bool)

(assert (=> b!5713142 (= e!3513737 e!3513736)))

(declare-fun c!1007149 () Bool)

(assert (=> b!5713142 (= c!1007149 ((_ is Union!15707) (reg!16036 (regOne!31926 r!7292))))))

(declare-fun call!436143 () List!63421)

(declare-fun bm!436138 () Bool)

(assert (=> bm!436138 (= call!436147 (derivationStepZipperDown!1049 (ite c!1007149 (regOne!31927 (reg!16036 (regOne!31926 r!7292))) (regOne!31926 (reg!16036 (regOne!31926 r!7292)))) (ite c!1007149 lt!2275966 (Context!10183 call!436143)) (h!69744 s!2326)))))

(declare-fun b!5713143 () Bool)

(declare-fun call!436146 () (InoxSet Context!10182))

(assert (=> b!5713143 (= e!3513735 call!436146)))

(declare-fun c!1007148 () Bool)

(declare-fun bm!436139 () Bool)

(declare-fun c!1007145 () Bool)

(assert (=> bm!436139 (= call!436143 ($colon$colon!1728 (exprs!5591 lt!2275966) (ite (or c!1007145 c!1007148) (regTwo!31926 (reg!16036 (regOne!31926 r!7292))) (reg!16036 (regOne!31926 r!7292)))))))

(declare-fun b!5713144 () Bool)

(declare-fun e!3513732 () Bool)

(assert (=> b!5713144 (= e!3513732 (nullable!5739 (regOne!31926 (reg!16036 (regOne!31926 r!7292)))))))

(declare-fun b!5713145 () Bool)

(declare-fun e!3513733 () (InoxSet Context!10182))

(declare-fun e!3513734 () (InoxSet Context!10182))

(assert (=> b!5713145 (= e!3513733 e!3513734)))

(assert (=> b!5713145 (= c!1007148 ((_ is Concat!24552) (reg!16036 (regOne!31926 r!7292))))))

(declare-fun b!5713146 () Bool)

(declare-fun call!436144 () (InoxSet Context!10182))

(assert (=> b!5713146 (= e!3513733 ((_ map or) call!436147 call!436144))))

(declare-fun b!5713147 () Bool)

(assert (=> b!5713147 (= e!3513734 call!436146)))

(declare-fun d!1802241 () Bool)

(declare-fun c!1007146 () Bool)

(assert (=> d!1802241 (= c!1007146 (and ((_ is ElementMatch!15707) (reg!16036 (regOne!31926 r!7292))) (= (c!1006919 (reg!16036 (regOne!31926 r!7292))) (h!69744 s!2326))))))

(assert (=> d!1802241 (= (derivationStepZipperDown!1049 (reg!16036 (regOne!31926 r!7292)) lt!2275966 (h!69744 s!2326)) e!3513737)))

(declare-fun bm!436140 () Bool)

(declare-fun call!436148 () List!63421)

(assert (=> bm!436140 (= call!436148 call!436143)))

(declare-fun bm!436141 () Bool)

(assert (=> bm!436141 (= call!436146 call!436144)))

(declare-fun b!5713148 () Bool)

(assert (=> b!5713148 (= c!1007145 e!3513732)))

(declare-fun res!2411979 () Bool)

(assert (=> b!5713148 (=> (not res!2411979) (not e!3513732))))

(assert (=> b!5713148 (= res!2411979 ((_ is Concat!24552) (reg!16036 (regOne!31926 r!7292))))))

(assert (=> b!5713148 (= e!3513736 e!3513733)))

(declare-fun bm!436142 () Bool)

(assert (=> bm!436142 (= call!436144 call!436145)))

(declare-fun b!5713149 () Bool)

(declare-fun c!1007147 () Bool)

(assert (=> b!5713149 (= c!1007147 ((_ is Star!15707) (reg!16036 (regOne!31926 r!7292))))))

(assert (=> b!5713149 (= e!3513734 e!3513735)))

(declare-fun bm!436143 () Bool)

(assert (=> bm!436143 (= call!436145 (derivationStepZipperDown!1049 (ite c!1007149 (regTwo!31927 (reg!16036 (regOne!31926 r!7292))) (ite c!1007145 (regTwo!31926 (reg!16036 (regOne!31926 r!7292))) (ite c!1007148 (regOne!31926 (reg!16036 (regOne!31926 r!7292))) (reg!16036 (reg!16036 (regOne!31926 r!7292)))))) (ite (or c!1007149 c!1007145) lt!2275966 (Context!10183 call!436148)) (h!69744 s!2326)))))

(assert (= (and d!1802241 c!1007146) b!5713141))

(assert (= (and d!1802241 (not c!1007146)) b!5713142))

(assert (= (and b!5713142 c!1007149) b!5713140))

(assert (= (and b!5713142 (not c!1007149)) b!5713148))

(assert (= (and b!5713148 res!2411979) b!5713144))

(assert (= (and b!5713148 c!1007145) b!5713146))

(assert (= (and b!5713148 (not c!1007145)) b!5713145))

(assert (= (and b!5713145 c!1007148) b!5713147))

(assert (= (and b!5713145 (not c!1007148)) b!5713149))

(assert (= (and b!5713149 c!1007147) b!5713143))

(assert (= (and b!5713149 (not c!1007147)) b!5713139))

(assert (= (or b!5713147 b!5713143) bm!436140))

(assert (= (or b!5713147 b!5713143) bm!436141))

(assert (= (or b!5713146 bm!436140) bm!436139))

(assert (= (or b!5713146 bm!436141) bm!436142))

(assert (= (or b!5713140 bm!436142) bm!436143))

(assert (= (or b!5713140 b!5713146) bm!436138))

(assert (=> b!5713141 m!6665914))

(declare-fun m!6666708 () Bool)

(assert (=> bm!436139 m!6666708))

(declare-fun m!6666710 () Bool)

(assert (=> bm!436143 m!6666710))

(declare-fun m!6666712 () Bool)

(assert (=> bm!436138 m!6666712))

(declare-fun m!6666714 () Bool)

(assert (=> b!5713144 m!6666714))

(assert (=> b!5712360 d!1802241))

(declare-fun d!1802243 () Bool)

(declare-fun lt!2276126 () Regex!15707)

(assert (=> d!1802243 (validRegex!7443 lt!2276126)))

(assert (=> d!1802243 (= lt!2276126 (generalisedUnion!1570 (unfocusZipperList!1135 (Cons!63298 lt!2275966 Nil!63298))))))

(assert (=> d!1802243 (= (unfocusZipper!1449 (Cons!63298 lt!2275966 Nil!63298)) lt!2276126)))

(declare-fun bs!1334686 () Bool)

(assert (= bs!1334686 d!1802243))

(declare-fun m!6666716 () Bool)

(assert (=> bs!1334686 m!6666716))

(declare-fun m!6666718 () Bool)

(assert (=> bs!1334686 m!6666718))

(assert (=> bs!1334686 m!6666718))

(declare-fun m!6666720 () Bool)

(assert (=> bs!1334686 m!6666720))

(assert (=> b!5712347 d!1802243))

(declare-fun b!5713150 () Bool)

(declare-fun e!3513741 () Option!15716)

(declare-fun e!3513742 () Option!15716)

(assert (=> b!5713150 (= e!3513741 e!3513742)))

(declare-fun c!1007151 () Bool)

(assert (=> b!5713150 (= c!1007151 ((_ is Nil!63296) s!2326))))

(declare-fun b!5713151 () Bool)

(declare-fun e!3513738 () Bool)

(declare-fun lt!2276127 () Option!15716)

(assert (=> b!5713151 (= e!3513738 (= (++!13899 (_1!36107 (get!21820 lt!2276127)) (_2!36107 (get!21820 lt!2276127))) s!2326))))

(declare-fun b!5713152 () Bool)

(declare-fun e!3513739 () Bool)

(assert (=> b!5713152 (= e!3513739 (not (isDefined!12419 lt!2276127)))))

(declare-fun b!5713153 () Bool)

(assert (=> b!5713153 (= e!3513741 (Some!15715 (tuple2!65609 Nil!63296 s!2326)))))

(declare-fun b!5713154 () Bool)

(assert (=> b!5713154 (= e!3513742 None!15715)))

(declare-fun b!5713155 () Bool)

(declare-fun e!3513740 () Bool)

(assert (=> b!5713155 (= e!3513740 (matchR!7892 (regTwo!31926 r!7292) s!2326))))

(declare-fun b!5713156 () Bool)

(declare-fun res!2411980 () Bool)

(assert (=> b!5713156 (=> (not res!2411980) (not e!3513738))))

(assert (=> b!5713156 (= res!2411980 (matchR!7892 (regOne!31926 r!7292) (_1!36107 (get!21820 lt!2276127))))))

(declare-fun d!1802245 () Bool)

(assert (=> d!1802245 e!3513739))

(declare-fun res!2411984 () Bool)

(assert (=> d!1802245 (=> res!2411984 e!3513739)))

(assert (=> d!1802245 (= res!2411984 e!3513738)))

(declare-fun res!2411983 () Bool)

(assert (=> d!1802245 (=> (not res!2411983) (not e!3513738))))

(assert (=> d!1802245 (= res!2411983 (isDefined!12419 lt!2276127))))

(assert (=> d!1802245 (= lt!2276127 e!3513741)))

(declare-fun c!1007150 () Bool)

(assert (=> d!1802245 (= c!1007150 e!3513740)))

(declare-fun res!2411981 () Bool)

(assert (=> d!1802245 (=> (not res!2411981) (not e!3513740))))

(assert (=> d!1802245 (= res!2411981 (matchR!7892 (regOne!31926 r!7292) Nil!63296))))

(assert (=> d!1802245 (validRegex!7443 (regOne!31926 r!7292))))

(assert (=> d!1802245 (= (findConcatSeparation!2130 (regOne!31926 r!7292) (regTwo!31926 r!7292) Nil!63296 s!2326 s!2326) lt!2276127)))

(declare-fun b!5713157 () Bool)

(declare-fun lt!2276129 () Unit!156360)

(declare-fun lt!2276128 () Unit!156360)

(assert (=> b!5713157 (= lt!2276129 lt!2276128)))

(assert (=> b!5713157 (= (++!13899 (++!13899 Nil!63296 (Cons!63296 (h!69744 s!2326) Nil!63296)) (t!376740 s!2326)) s!2326)))

(assert (=> b!5713157 (= lt!2276128 (lemmaMoveElementToOtherListKeepsConcatEq!2064 Nil!63296 (h!69744 s!2326) (t!376740 s!2326) s!2326))))

(assert (=> b!5713157 (= e!3513742 (findConcatSeparation!2130 (regOne!31926 r!7292) (regTwo!31926 r!7292) (++!13899 Nil!63296 (Cons!63296 (h!69744 s!2326) Nil!63296)) (t!376740 s!2326) s!2326))))

(declare-fun b!5713158 () Bool)

(declare-fun res!2411982 () Bool)

(assert (=> b!5713158 (=> (not res!2411982) (not e!3513738))))

(assert (=> b!5713158 (= res!2411982 (matchR!7892 (regTwo!31926 r!7292) (_2!36107 (get!21820 lt!2276127))))))

(assert (= (and d!1802245 res!2411981) b!5713155))

(assert (= (and d!1802245 c!1007150) b!5713153))

(assert (= (and d!1802245 (not c!1007150)) b!5713150))

(assert (= (and b!5713150 c!1007151) b!5713154))

(assert (= (and b!5713150 (not c!1007151)) b!5713157))

(assert (= (and d!1802245 res!2411983) b!5713156))

(assert (= (and b!5713156 res!2411980) b!5713158))

(assert (= (and b!5713158 res!2411982) b!5713151))

(assert (= (and d!1802245 (not res!2411984)) b!5713152))

(declare-fun m!6666728 () Bool)

(assert (=> b!5713156 m!6666728))

(declare-fun m!6666730 () Bool)

(assert (=> b!5713156 m!6666730))

(declare-fun m!6666732 () Bool)

(assert (=> b!5713155 m!6666732))

(declare-fun m!6666734 () Bool)

(assert (=> b!5713157 m!6666734))

(assert (=> b!5713157 m!6666734))

(declare-fun m!6666736 () Bool)

(assert (=> b!5713157 m!6666736))

(declare-fun m!6666738 () Bool)

(assert (=> b!5713157 m!6666738))

(assert (=> b!5713157 m!6666734))

(declare-fun m!6666740 () Bool)

(assert (=> b!5713157 m!6666740))

(assert (=> b!5713158 m!6666728))

(declare-fun m!6666748 () Bool)

(assert (=> b!5713158 m!6666748))

(assert (=> b!5713151 m!6666728))

(declare-fun m!6666752 () Bool)

(assert (=> b!5713151 m!6666752))

(declare-fun m!6666754 () Bool)

(assert (=> d!1802245 m!6666754))

(declare-fun m!6666758 () Bool)

(assert (=> d!1802245 m!6666758))

(declare-fun m!6666762 () Bool)

(assert (=> d!1802245 m!6666762))

(assert (=> b!5713152 m!6666754))

(assert (=> b!5712367 d!1802245))

(declare-fun d!1802249 () Bool)

(assert (=> d!1802249 (= (Exists!2807 lambda!308343) (choose!43186 lambda!308343))))

(declare-fun bs!1334688 () Bool)

(assert (= bs!1334688 d!1802249))

(declare-fun m!6666768 () Bool)

(assert (=> bs!1334688 m!6666768))

(assert (=> b!5712367 d!1802249))

(declare-fun d!1802253 () Bool)

(assert (=> d!1802253 (= (Exists!2807 lambda!308342) (choose!43186 lambda!308342))))

(declare-fun bs!1334689 () Bool)

(assert (= bs!1334689 d!1802253))

(declare-fun m!6666770 () Bool)

(assert (=> bs!1334689 m!6666770))

(assert (=> b!5712367 d!1802253))

(declare-fun bs!1334690 () Bool)

(declare-fun d!1802255 () Bool)

(assert (= bs!1334690 (and d!1802255 b!5712330)))

(declare-fun lambda!308431 () Int)

(assert (=> bs!1334690 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308431 lambda!308347))))

(declare-fun bs!1334691 () Bool)

(assert (= bs!1334691 (and d!1802255 b!5712367)))

(assert (=> bs!1334691 (= lambda!308431 lambda!308342)))

(assert (=> bs!1334690 (not (= lambda!308431 lambda!308348))))

(declare-fun bs!1334692 () Bool)

(assert (= bs!1334692 (and d!1802255 b!5712656)))

(assert (=> bs!1334692 (not (= lambda!308431 lambda!308387))))

(declare-fun bs!1334693 () Bool)

(assert (= bs!1334693 (and d!1802255 b!5712345)))

(assert (=> bs!1334693 (not (= lambda!308431 lambda!308346))))

(declare-fun bs!1334694 () Bool)

(assert (= bs!1334694 (and d!1802255 d!1802057)))

(assert (=> bs!1334694 (not (= lambda!308431 lambda!308370))))

(assert (=> bs!1334694 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) (Star!15707 (reg!16036 (regOne!31926 r!7292))))) (= lambda!308431 lambda!308369))))

(declare-fun bs!1334695 () Bool)

(assert (= bs!1334695 (and d!1802255 d!1802101)))

(assert (=> bs!1334695 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308431 lambda!308393))))

(assert (=> bs!1334695 (not (= lambda!308431 lambda!308395))))

(declare-fun bs!1334696 () Bool)

(assert (= bs!1334696 (and d!1802255 d!1802069)))

(assert (=> bs!1334696 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308431 lambda!308373))))

(assert (=> bs!1334693 (= (= (regOne!31926 r!7292) lt!2275979) (= lambda!308431 lambda!308345))))

(declare-fun bs!1334697 () Bool)

(assert (= bs!1334697 (and d!1802255 b!5712658)))

(assert (=> bs!1334697 (not (= lambda!308431 lambda!308388))))

(assert (=> bs!1334691 (not (= lambda!308431 lambda!308343))))

(assert (=> bs!1334690 (not (= lambda!308431 lambda!308349))))

(assert (=> d!1802255 true))

(assert (=> d!1802255 true))

(assert (=> d!1802255 true))

(assert (=> d!1802255 (= (isDefined!12419 (findConcatSeparation!2130 (regOne!31926 r!7292) (regTwo!31926 r!7292) Nil!63296 s!2326 s!2326)) (Exists!2807 lambda!308431))))

(declare-fun lt!2276132 () Unit!156360)

(assert (=> d!1802255 (= lt!2276132 (choose!43189 (regOne!31926 r!7292) (regTwo!31926 r!7292) s!2326))))

(assert (=> d!1802255 (validRegex!7443 (regOne!31926 r!7292))))

(assert (=> d!1802255 (= (lemmaFindConcatSeparationEquivalentToExists!1894 (regOne!31926 r!7292) (regTwo!31926 r!7292) s!2326) lt!2276132)))

(declare-fun bs!1334698 () Bool)

(assert (= bs!1334698 d!1802255))

(assert (=> bs!1334698 m!6665886))

(declare-fun m!6666772 () Bool)

(assert (=> bs!1334698 m!6666772))

(assert (=> bs!1334698 m!6666762))

(declare-fun m!6666774 () Bool)

(assert (=> bs!1334698 m!6666774))

(assert (=> bs!1334698 m!6665886))

(assert (=> bs!1334698 m!6665888))

(assert (=> b!5712367 d!1802255))

(declare-fun bs!1334699 () Bool)

(declare-fun d!1802263 () Bool)

(assert (= bs!1334699 (and d!1802263 b!5712330)))

(declare-fun lambda!308432 () Int)

(assert (=> bs!1334699 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308432 lambda!308347))))

(declare-fun bs!1334700 () Bool)

(assert (= bs!1334700 (and d!1802263 b!5712367)))

(assert (=> bs!1334700 (= lambda!308432 lambda!308342)))

(assert (=> bs!1334699 (not (= lambda!308432 lambda!308348))))

(declare-fun bs!1334701 () Bool)

(assert (= bs!1334701 (and d!1802263 b!5712656)))

(assert (=> bs!1334701 (not (= lambda!308432 lambda!308387))))

(declare-fun bs!1334702 () Bool)

(assert (= bs!1334702 (and d!1802263 b!5712345)))

(assert (=> bs!1334702 (not (= lambda!308432 lambda!308346))))

(declare-fun bs!1334703 () Bool)

(assert (= bs!1334703 (and d!1802263 d!1802057)))

(assert (=> bs!1334703 (not (= lambda!308432 lambda!308370))))

(assert (=> bs!1334703 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) (Star!15707 (reg!16036 (regOne!31926 r!7292))))) (= lambda!308432 lambda!308369))))

(declare-fun bs!1334704 () Bool)

(assert (= bs!1334704 (and d!1802263 d!1802101)))

(assert (=> bs!1334704 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308432 lambda!308393))))

(assert (=> bs!1334704 (not (= lambda!308432 lambda!308395))))

(declare-fun bs!1334705 () Bool)

(assert (= bs!1334705 (and d!1802263 d!1802069)))

(assert (=> bs!1334705 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308432 lambda!308373))))

(assert (=> bs!1334702 (= (= (regOne!31926 r!7292) lt!2275979) (= lambda!308432 lambda!308345))))

(declare-fun bs!1334706 () Bool)

(assert (= bs!1334706 (and d!1802263 b!5712658)))

(assert (=> bs!1334706 (not (= lambda!308432 lambda!308388))))

(declare-fun bs!1334707 () Bool)

(assert (= bs!1334707 (and d!1802263 d!1802255)))

(assert (=> bs!1334707 (= lambda!308432 lambda!308431)))

(assert (=> bs!1334700 (not (= lambda!308432 lambda!308343))))

(assert (=> bs!1334699 (not (= lambda!308432 lambda!308349))))

(assert (=> d!1802263 true))

(assert (=> d!1802263 true))

(assert (=> d!1802263 true))

(declare-fun lambda!308435 () Int)

(assert (=> bs!1334699 (not (= lambda!308435 lambda!308347))))

(assert (=> bs!1334700 (not (= lambda!308435 lambda!308342))))

(assert (=> bs!1334699 (not (= lambda!308435 lambda!308348))))

(assert (=> bs!1334701 (not (= lambda!308435 lambda!308387))))

(assert (=> bs!1334702 (= (= (regOne!31926 r!7292) lt!2275979) (= lambda!308435 lambda!308346))))

(assert (=> bs!1334703 (not (= lambda!308435 lambda!308370))))

(assert (=> bs!1334703 (not (= lambda!308435 lambda!308369))))

(assert (=> bs!1334704 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308435 lambda!308395))))

(assert (=> bs!1334705 (not (= lambda!308435 lambda!308373))))

(assert (=> bs!1334702 (not (= lambda!308435 lambda!308345))))

(assert (=> bs!1334706 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (regOne!31926 lt!2275979)) (= (regTwo!31926 r!7292) (regTwo!31926 lt!2275979))) (= lambda!308435 lambda!308388))))

(assert (=> bs!1334707 (not (= lambda!308435 lambda!308431))))

(assert (=> bs!1334700 (= lambda!308435 lambda!308343)))

(assert (=> bs!1334699 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308435 lambda!308349))))

(assert (=> bs!1334704 (not (= lambda!308435 lambda!308393))))

(declare-fun bs!1334708 () Bool)

(assert (= bs!1334708 d!1802263))

(assert (=> bs!1334708 (not (= lambda!308435 lambda!308432))))

(assert (=> d!1802263 true))

(assert (=> d!1802263 true))

(assert (=> d!1802263 true))

(assert (=> d!1802263 (= (Exists!2807 lambda!308432) (Exists!2807 lambda!308435))))

(declare-fun lt!2276133 () Unit!156360)

(assert (=> d!1802263 (= lt!2276133 (choose!43194 (regOne!31926 r!7292) (regTwo!31926 r!7292) s!2326))))

(assert (=> d!1802263 (validRegex!7443 (regOne!31926 r!7292))))

(assert (=> d!1802263 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1436 (regOne!31926 r!7292) (regTwo!31926 r!7292) s!2326) lt!2276133)))

(declare-fun m!6666776 () Bool)

(assert (=> bs!1334708 m!6666776))

(declare-fun m!6666778 () Bool)

(assert (=> bs!1334708 m!6666778))

(declare-fun m!6666780 () Bool)

(assert (=> bs!1334708 m!6666780))

(assert (=> bs!1334708 m!6666762))

(assert (=> b!5712367 d!1802263))

(declare-fun d!1802265 () Bool)

(assert (=> d!1802265 (= (isDefined!12419 (findConcatSeparation!2130 (regOne!31926 r!7292) (regTwo!31926 r!7292) Nil!63296 s!2326 s!2326)) (not (isEmpty!35170 (findConcatSeparation!2130 (regOne!31926 r!7292) (regTwo!31926 r!7292) Nil!63296 s!2326 s!2326))))))

(declare-fun bs!1334709 () Bool)

(assert (= bs!1334709 d!1802265))

(assert (=> bs!1334709 m!6665886))

(declare-fun m!6666782 () Bool)

(assert (=> bs!1334709 m!6666782))

(assert (=> b!5712367 d!1802265))

(declare-fun bs!1334710 () Bool)

(declare-fun b!5713194 () Bool)

(assert (= bs!1334710 (and b!5713194 b!5712330)))

(declare-fun lambda!308436 () Int)

(assert (=> bs!1334710 (not (= lambda!308436 lambda!308347))))

(declare-fun bs!1334711 () Bool)

(assert (= bs!1334711 (and b!5713194 b!5712367)))

(assert (=> bs!1334711 (not (= lambda!308436 lambda!308342))))

(assert (=> bs!1334710 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (reg!16036 r!7292) (reg!16036 (regOne!31926 r!7292))) (= r!7292 lt!2275979)) (= lambda!308436 lambda!308348))))

(declare-fun bs!1334714 () Bool)

(assert (= bs!1334714 (and b!5713194 b!5712656)))

(assert (=> bs!1334714 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (reg!16036 r!7292) (reg!16036 lt!2275979)) (= r!7292 lt!2275979)) (= lambda!308436 lambda!308387))))

(declare-fun bs!1334717 () Bool)

(assert (= bs!1334717 (and b!5713194 b!5712345)))

(assert (=> bs!1334717 (not (= lambda!308436 lambda!308346))))

(declare-fun bs!1334718 () Bool)

(assert (= bs!1334718 (and b!5713194 d!1802057)))

(assert (=> bs!1334718 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (reg!16036 r!7292) (reg!16036 (regOne!31926 r!7292))) (= r!7292 (Star!15707 (reg!16036 (regOne!31926 r!7292))))) (= lambda!308436 lambda!308370))))

(assert (=> bs!1334718 (not (= lambda!308436 lambda!308369))))

(declare-fun bs!1334719 () Bool)

(assert (= bs!1334719 (and b!5713194 d!1802263)))

(assert (=> bs!1334719 (not (= lambda!308436 lambda!308435))))

(declare-fun bs!1334720 () Bool)

(assert (= bs!1334720 (and b!5713194 d!1802101)))

(assert (=> bs!1334720 (not (= lambda!308436 lambda!308395))))

(declare-fun bs!1334721 () Bool)

(assert (= bs!1334721 (and b!5713194 d!1802069)))

(assert (=> bs!1334721 (not (= lambda!308436 lambda!308373))))

(assert (=> bs!1334717 (not (= lambda!308436 lambda!308345))))

(declare-fun bs!1334722 () Bool)

(assert (= bs!1334722 (and b!5713194 b!5712658)))

(assert (=> bs!1334722 (not (= lambda!308436 lambda!308388))))

(declare-fun bs!1334723 () Bool)

(assert (= bs!1334723 (and b!5713194 d!1802255)))

(assert (=> bs!1334723 (not (= lambda!308436 lambda!308431))))

(assert (=> bs!1334711 (not (= lambda!308436 lambda!308343))))

(assert (=> bs!1334710 (not (= lambda!308436 lambda!308349))))

(assert (=> bs!1334720 (not (= lambda!308436 lambda!308393))))

(assert (=> bs!1334719 (not (= lambda!308436 lambda!308432))))

(assert (=> b!5713194 true))

(assert (=> b!5713194 true))

(declare-fun bs!1334724 () Bool)

(declare-fun b!5713196 () Bool)

(assert (= bs!1334724 (and b!5713196 b!5712330)))

(declare-fun lambda!308438 () Int)

(assert (=> bs!1334724 (not (= lambda!308438 lambda!308347))))

(declare-fun bs!1334725 () Bool)

(assert (= bs!1334725 (and b!5713196 b!5712367)))

(assert (=> bs!1334725 (not (= lambda!308438 lambda!308342))))

(declare-fun bs!1334726 () Bool)

(assert (= bs!1334726 (and b!5713196 b!5713194)))

(assert (=> bs!1334726 (not (= lambda!308438 lambda!308436))))

(assert (=> bs!1334724 (not (= lambda!308438 lambda!308348))))

(declare-fun bs!1334727 () Bool)

(assert (= bs!1334727 (and b!5713196 b!5712656)))

(assert (=> bs!1334727 (not (= lambda!308438 lambda!308387))))

(declare-fun bs!1334728 () Bool)

(assert (= bs!1334728 (and b!5713196 b!5712345)))

(assert (=> bs!1334728 (= (= (regOne!31926 r!7292) lt!2275979) (= lambda!308438 lambda!308346))))

(declare-fun bs!1334729 () Bool)

(assert (= bs!1334729 (and b!5713196 d!1802057)))

(assert (=> bs!1334729 (not (= lambda!308438 lambda!308370))))

(assert (=> bs!1334729 (not (= lambda!308438 lambda!308369))))

(declare-fun bs!1334730 () Bool)

(assert (= bs!1334730 (and b!5713196 d!1802263)))

(assert (=> bs!1334730 (= lambda!308438 lambda!308435)))

(declare-fun bs!1334731 () Bool)

(assert (= bs!1334731 (and b!5713196 d!1802101)))

(assert (=> bs!1334731 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308438 lambda!308395))))

(declare-fun bs!1334732 () Bool)

(assert (= bs!1334732 (and b!5713196 d!1802069)))

(assert (=> bs!1334732 (not (= lambda!308438 lambda!308373))))

(assert (=> bs!1334728 (not (= lambda!308438 lambda!308345))))

(declare-fun bs!1334733 () Bool)

(assert (= bs!1334733 (and b!5713196 b!5712658)))

(assert (=> bs!1334733 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (regOne!31926 lt!2275979)) (= (regTwo!31926 r!7292) (regTwo!31926 lt!2275979))) (= lambda!308438 lambda!308388))))

(declare-fun bs!1334734 () Bool)

(assert (= bs!1334734 (and b!5713196 d!1802255)))

(assert (=> bs!1334734 (not (= lambda!308438 lambda!308431))))

(assert (=> bs!1334725 (= lambda!308438 lambda!308343)))

(assert (=> bs!1334724 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 r!7292) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308438 lambda!308349))))

(assert (=> bs!1334731 (not (= lambda!308438 lambda!308393))))

(assert (=> bs!1334730 (not (= lambda!308438 lambda!308432))))

(assert (=> b!5713196 true))

(assert (=> b!5713196 true))

(declare-fun b!5713193 () Bool)

(declare-fun e!3513765 () Bool)

(declare-fun e!3513766 () Bool)

(assert (=> b!5713193 (= e!3513765 e!3513766)))

(declare-fun res!2411998 () Bool)

(assert (=> b!5713193 (= res!2411998 (not ((_ is EmptyLang!15707) r!7292)))))

(assert (=> b!5713193 (=> (not res!2411998) (not e!3513766))))

(declare-fun bm!436145 () Bool)

(declare-fun call!436150 () Bool)

(assert (=> bm!436145 (= call!436150 (isEmpty!35168 s!2326))))

(declare-fun e!3513762 () Bool)

(declare-fun call!436151 () Bool)

(assert (=> b!5713194 (= e!3513762 call!436151)))

(declare-fun b!5713195 () Bool)

(declare-fun e!3513767 () Bool)

(assert (=> b!5713195 (= e!3513767 (matchRSpec!2810 (regTwo!31927 r!7292) s!2326))))

(declare-fun e!3513764 () Bool)

(assert (=> b!5713196 (= e!3513764 call!436151)))

(declare-fun b!5713197 () Bool)

(declare-fun res!2411999 () Bool)

(assert (=> b!5713197 (=> res!2411999 e!3513762)))

(assert (=> b!5713197 (= res!2411999 call!436150)))

(assert (=> b!5713197 (= e!3513764 e!3513762)))

(declare-fun c!1007164 () Bool)

(declare-fun bm!436146 () Bool)

(assert (=> bm!436146 (= call!436151 (Exists!2807 (ite c!1007164 lambda!308436 lambda!308438)))))

(declare-fun b!5713198 () Bool)

(declare-fun c!1007163 () Bool)

(assert (=> b!5713198 (= c!1007163 ((_ is Union!15707) r!7292))))

(declare-fun e!3513763 () Bool)

(declare-fun e!3513768 () Bool)

(assert (=> b!5713198 (= e!3513763 e!3513768)))

(declare-fun d!1802267 () Bool)

(declare-fun c!1007166 () Bool)

(assert (=> d!1802267 (= c!1007166 ((_ is EmptyExpr!15707) r!7292))))

(assert (=> d!1802267 (= (matchRSpec!2810 r!7292 s!2326) e!3513765)))

(declare-fun b!5713199 () Bool)

(assert (=> b!5713199 (= e!3513768 e!3513764)))

(assert (=> b!5713199 (= c!1007164 ((_ is Star!15707) r!7292))))

(declare-fun b!5713200 () Bool)

(assert (=> b!5713200 (= e!3513768 e!3513767)))

(declare-fun res!2411997 () Bool)

(assert (=> b!5713200 (= res!2411997 (matchRSpec!2810 (regOne!31927 r!7292) s!2326))))

(assert (=> b!5713200 (=> res!2411997 e!3513767)))

(declare-fun b!5713201 () Bool)

(declare-fun c!1007165 () Bool)

(assert (=> b!5713201 (= c!1007165 ((_ is ElementMatch!15707) r!7292))))

(assert (=> b!5713201 (= e!3513766 e!3513763)))

(declare-fun b!5713202 () Bool)

(assert (=> b!5713202 (= e!3513765 call!436150)))

(declare-fun b!5713203 () Bool)

(assert (=> b!5713203 (= e!3513763 (= s!2326 (Cons!63296 (c!1006919 r!7292) Nil!63296)))))

(assert (= (and d!1802267 c!1007166) b!5713202))

(assert (= (and d!1802267 (not c!1007166)) b!5713193))

(assert (= (and b!5713193 res!2411998) b!5713201))

(assert (= (and b!5713201 c!1007165) b!5713203))

(assert (= (and b!5713201 (not c!1007165)) b!5713198))

(assert (= (and b!5713198 c!1007163) b!5713200))

(assert (= (and b!5713198 (not c!1007163)) b!5713199))

(assert (= (and b!5713200 (not res!2411997)) b!5713195))

(assert (= (and b!5713199 c!1007164) b!5713197))

(assert (= (and b!5713199 (not c!1007164)) b!5713196))

(assert (= (and b!5713197 (not res!2411999)) b!5713194))

(assert (= (or b!5713194 b!5713196) bm!436146))

(assert (= (or b!5713202 b!5713197) bm!436145))

(assert (=> bm!436145 m!6666118))

(declare-fun m!6666812 () Bool)

(assert (=> b!5713195 m!6666812))

(declare-fun m!6666814 () Bool)

(assert (=> bm!436146 m!6666814))

(declare-fun m!6666816 () Bool)

(assert (=> b!5713200 m!6666816))

(assert (=> b!5712368 d!1802267))

(declare-fun b!5713262 () Bool)

(declare-fun res!2412013 () Bool)

(declare-fun e!3513800 () Bool)

(assert (=> b!5713262 (=> res!2412013 e!3513800)))

(declare-fun e!3513798 () Bool)

(assert (=> b!5713262 (= res!2412013 e!3513798)))

(declare-fun res!2412016 () Bool)

(assert (=> b!5713262 (=> (not res!2412016) (not e!3513798))))

(declare-fun lt!2276138 () Bool)

(assert (=> b!5713262 (= res!2412016 lt!2276138)))

(declare-fun bm!436148 () Bool)

(declare-fun call!436153 () Bool)

(assert (=> bm!436148 (= call!436153 (isEmpty!35168 s!2326))))

(declare-fun b!5713263 () Bool)

(assert (=> b!5713263 (= e!3513798 (= (head!12102 s!2326) (c!1006919 r!7292)))))

(declare-fun b!5713264 () Bool)

(declare-fun e!3513796 () Bool)

(declare-fun e!3513801 () Bool)

(assert (=> b!5713264 (= e!3513796 e!3513801)))

(declare-fun res!2412015 () Bool)

(assert (=> b!5713264 (=> res!2412015 e!3513801)))

(assert (=> b!5713264 (= res!2412015 call!436153)))

(declare-fun b!5713266 () Bool)

(declare-fun res!2412010 () Bool)

(assert (=> b!5713266 (=> res!2412010 e!3513801)))

(assert (=> b!5713266 (= res!2412010 (not (isEmpty!35168 (tail!11197 s!2326))))))

(declare-fun b!5713267 () Bool)

(assert (=> b!5713267 (= e!3513800 e!3513796)))

(declare-fun res!2412012 () Bool)

(assert (=> b!5713267 (=> (not res!2412012) (not e!3513796))))

(assert (=> b!5713267 (= res!2412012 (not lt!2276138))))

(declare-fun b!5713268 () Bool)

(declare-fun e!3513795 () Bool)

(assert (=> b!5713268 (= e!3513795 (not lt!2276138))))

(declare-fun b!5713269 () Bool)

(declare-fun e!3513799 () Bool)

(assert (=> b!5713269 (= e!3513799 (= lt!2276138 call!436153))))

(declare-fun b!5713270 () Bool)

(assert (=> b!5713270 (= e!3513799 e!3513795)))

(declare-fun c!1007175 () Bool)

(assert (=> b!5713270 (= c!1007175 ((_ is EmptyLang!15707) r!7292))))

(declare-fun b!5713271 () Bool)

(declare-fun res!2412017 () Bool)

(assert (=> b!5713271 (=> (not res!2412017) (not e!3513798))))

(assert (=> b!5713271 (= res!2412017 (isEmpty!35168 (tail!11197 s!2326)))))

(declare-fun b!5713272 () Bool)

(declare-fun res!2412014 () Bool)

(assert (=> b!5713272 (=> res!2412014 e!3513800)))

(assert (=> b!5713272 (= res!2412014 (not ((_ is ElementMatch!15707) r!7292)))))

(assert (=> b!5713272 (= e!3513795 e!3513800)))

(declare-fun b!5713273 () Bool)

(assert (=> b!5713273 (= e!3513801 (not (= (head!12102 s!2326) (c!1006919 r!7292))))))

(declare-fun b!5713274 () Bool)

(declare-fun res!2412011 () Bool)

(assert (=> b!5713274 (=> (not res!2412011) (not e!3513798))))

(assert (=> b!5713274 (= res!2412011 (not call!436153))))

(declare-fun b!5713275 () Bool)

(declare-fun e!3513797 () Bool)

(assert (=> b!5713275 (= e!3513797 (nullable!5739 r!7292))))

(declare-fun b!5713265 () Bool)

(assert (=> b!5713265 (= e!3513797 (matchR!7892 (derivativeStep!4514 r!7292 (head!12102 s!2326)) (tail!11197 s!2326)))))

(declare-fun d!1802271 () Bool)

(assert (=> d!1802271 e!3513799))

(declare-fun c!1007174 () Bool)

(assert (=> d!1802271 (= c!1007174 ((_ is EmptyExpr!15707) r!7292))))

(assert (=> d!1802271 (= lt!2276138 e!3513797)))

(declare-fun c!1007176 () Bool)

(assert (=> d!1802271 (= c!1007176 (isEmpty!35168 s!2326))))

(assert (=> d!1802271 (validRegex!7443 r!7292)))

(assert (=> d!1802271 (= (matchR!7892 r!7292 s!2326) lt!2276138)))

(assert (= (and d!1802271 c!1007176) b!5713275))

(assert (= (and d!1802271 (not c!1007176)) b!5713265))

(assert (= (and d!1802271 c!1007174) b!5713269))

(assert (= (and d!1802271 (not c!1007174)) b!5713270))

(assert (= (and b!5713270 c!1007175) b!5713268))

(assert (= (and b!5713270 (not c!1007175)) b!5713272))

(assert (= (and b!5713272 (not res!2412014)) b!5713262))

(assert (= (and b!5713262 res!2412016) b!5713274))

(assert (= (and b!5713274 res!2412011) b!5713271))

(assert (= (and b!5713271 res!2412017) b!5713263))

(assert (= (and b!5713262 (not res!2412013)) b!5713267))

(assert (= (and b!5713267 res!2412012) b!5713264))

(assert (= (and b!5713264 (not res!2412015)) b!5713266))

(assert (= (and b!5713266 (not res!2412010)) b!5713273))

(assert (= (or b!5713269 b!5713274 b!5713264) bm!436148))

(assert (=> bm!436148 m!6666118))

(assert (=> b!5713263 m!6666122))

(assert (=> b!5713265 m!6666122))

(assert (=> b!5713265 m!6666122))

(declare-fun m!6666820 () Bool)

(assert (=> b!5713265 m!6666820))

(assert (=> b!5713265 m!6666126))

(assert (=> b!5713265 m!6666820))

(assert (=> b!5713265 m!6666126))

(declare-fun m!6666822 () Bool)

(assert (=> b!5713265 m!6666822))

(assert (=> b!5713266 m!6666126))

(assert (=> b!5713266 m!6666126))

(declare-fun m!6666824 () Bool)

(assert (=> b!5713266 m!6666824))

(declare-fun m!6666826 () Bool)

(assert (=> b!5713275 m!6666826))

(assert (=> b!5713273 m!6666122))

(assert (=> d!1802271 m!6666118))

(assert (=> d!1802271 m!6665920))

(assert (=> b!5713271 m!6666126))

(assert (=> b!5713271 m!6666126))

(assert (=> b!5713271 m!6666824))

(assert (=> b!5712368 d!1802271))

(declare-fun d!1802273 () Bool)

(assert (=> d!1802273 (= (matchR!7892 r!7292 s!2326) (matchRSpec!2810 r!7292 s!2326))))

(declare-fun lt!2276139 () Unit!156360)

(assert (=> d!1802273 (= lt!2276139 (choose!43190 r!7292 s!2326))))

(assert (=> d!1802273 (validRegex!7443 r!7292)))

(assert (=> d!1802273 (= (mainMatchTheorem!2810 r!7292 s!2326) lt!2276139)))

(declare-fun bs!1334735 () Bool)

(assert (= bs!1334735 d!1802273))

(assert (=> bs!1334735 m!6665974))

(assert (=> bs!1334735 m!6665972))

(declare-fun m!6666828 () Bool)

(assert (=> bs!1334735 m!6666828))

(assert (=> bs!1334735 m!6665920))

(assert (=> b!5712368 d!1802273))

(declare-fun b!5713290 () Bool)

(declare-fun res!2412021 () Bool)

(declare-fun e!3513813 () Bool)

(assert (=> b!5713290 (=> res!2412021 e!3513813)))

(declare-fun e!3513811 () Bool)

(assert (=> b!5713290 (= res!2412021 e!3513811)))

(declare-fun res!2412024 () Bool)

(assert (=> b!5713290 (=> (not res!2412024) (not e!3513811))))

(declare-fun lt!2276140 () Bool)

(assert (=> b!5713290 (= res!2412024 lt!2276140)))

(declare-fun bm!436149 () Bool)

(declare-fun call!436154 () Bool)

(assert (=> bm!436149 (= call!436154 (isEmpty!35168 (_1!36107 lt!2275961)))))

(declare-fun b!5713291 () Bool)

(assert (=> b!5713291 (= e!3513811 (= (head!12102 (_1!36107 lt!2275961)) (c!1006919 lt!2275979)))))

(declare-fun b!5713292 () Bool)

(declare-fun e!3513809 () Bool)

(declare-fun e!3513814 () Bool)

(assert (=> b!5713292 (= e!3513809 e!3513814)))

(declare-fun res!2412023 () Bool)

(assert (=> b!5713292 (=> res!2412023 e!3513814)))

(assert (=> b!5713292 (= res!2412023 call!436154)))

(declare-fun b!5713294 () Bool)

(declare-fun res!2412018 () Bool)

(assert (=> b!5713294 (=> res!2412018 e!3513814)))

(assert (=> b!5713294 (= res!2412018 (not (isEmpty!35168 (tail!11197 (_1!36107 lt!2275961)))))))

(declare-fun b!5713295 () Bool)

(assert (=> b!5713295 (= e!3513813 e!3513809)))

(declare-fun res!2412020 () Bool)

(assert (=> b!5713295 (=> (not res!2412020) (not e!3513809))))

(assert (=> b!5713295 (= res!2412020 (not lt!2276140))))

(declare-fun b!5713296 () Bool)

(declare-fun e!3513808 () Bool)

(assert (=> b!5713296 (= e!3513808 (not lt!2276140))))

(declare-fun b!5713297 () Bool)

(declare-fun e!3513812 () Bool)

(assert (=> b!5713297 (= e!3513812 (= lt!2276140 call!436154))))

(declare-fun b!5713298 () Bool)

(assert (=> b!5713298 (= e!3513812 e!3513808)))

(declare-fun c!1007178 () Bool)

(assert (=> b!5713298 (= c!1007178 ((_ is EmptyLang!15707) lt!2275979))))

(declare-fun b!5713299 () Bool)

(declare-fun res!2412025 () Bool)

(assert (=> b!5713299 (=> (not res!2412025) (not e!3513811))))

(assert (=> b!5713299 (= res!2412025 (isEmpty!35168 (tail!11197 (_1!36107 lt!2275961))))))

(declare-fun b!5713300 () Bool)

(declare-fun res!2412022 () Bool)

(assert (=> b!5713300 (=> res!2412022 e!3513813)))

(assert (=> b!5713300 (= res!2412022 (not ((_ is ElementMatch!15707) lt!2275979)))))

(assert (=> b!5713300 (= e!3513808 e!3513813)))

(declare-fun b!5713301 () Bool)

(assert (=> b!5713301 (= e!3513814 (not (= (head!12102 (_1!36107 lt!2275961)) (c!1006919 lt!2275979))))))

(declare-fun b!5713302 () Bool)

(declare-fun res!2412019 () Bool)

(assert (=> b!5713302 (=> (not res!2412019) (not e!3513811))))

(assert (=> b!5713302 (= res!2412019 (not call!436154))))

(declare-fun b!5713303 () Bool)

(declare-fun e!3513810 () Bool)

(assert (=> b!5713303 (= e!3513810 (nullable!5739 lt!2275979))))

(declare-fun b!5713293 () Bool)

(assert (=> b!5713293 (= e!3513810 (matchR!7892 (derivativeStep!4514 lt!2275979 (head!12102 (_1!36107 lt!2275961))) (tail!11197 (_1!36107 lt!2275961))))))

(declare-fun d!1802275 () Bool)

(assert (=> d!1802275 e!3513812))

(declare-fun c!1007177 () Bool)

(assert (=> d!1802275 (= c!1007177 ((_ is EmptyExpr!15707) lt!2275979))))

(assert (=> d!1802275 (= lt!2276140 e!3513810)))

(declare-fun c!1007179 () Bool)

(assert (=> d!1802275 (= c!1007179 (isEmpty!35168 (_1!36107 lt!2275961)))))

(assert (=> d!1802275 (validRegex!7443 lt!2275979)))

(assert (=> d!1802275 (= (matchR!7892 lt!2275979 (_1!36107 lt!2275961)) lt!2276140)))

(assert (= (and d!1802275 c!1007179) b!5713303))

(assert (= (and d!1802275 (not c!1007179)) b!5713293))

(assert (= (and d!1802275 c!1007177) b!5713297))

(assert (= (and d!1802275 (not c!1007177)) b!5713298))

(assert (= (and b!5713298 c!1007178) b!5713296))

(assert (= (and b!5713298 (not c!1007178)) b!5713300))

(assert (= (and b!5713300 (not res!2412022)) b!5713290))

(assert (= (and b!5713290 res!2412024) b!5713302))

(assert (= (and b!5713302 res!2412019) b!5713299))

(assert (= (and b!5713299 res!2412025) b!5713291))

(assert (= (and b!5713290 (not res!2412021)) b!5713295))

(assert (= (and b!5713295 res!2412020) b!5713292))

(assert (= (and b!5713292 (not res!2412023)) b!5713294))

(assert (= (and b!5713294 (not res!2412018)) b!5713301))

(assert (= (or b!5713297 b!5713302 b!5713292) bm!436149))

(assert (=> bm!436149 m!6665960))

(declare-fun m!6666832 () Bool)

(assert (=> b!5713291 m!6666832))

(assert (=> b!5713293 m!6666832))

(assert (=> b!5713293 m!6666832))

(declare-fun m!6666834 () Bool)

(assert (=> b!5713293 m!6666834))

(declare-fun m!6666836 () Bool)

(assert (=> b!5713293 m!6666836))

(assert (=> b!5713293 m!6666834))

(assert (=> b!5713293 m!6666836))

(declare-fun m!6666838 () Bool)

(assert (=> b!5713293 m!6666838))

(assert (=> b!5713294 m!6666836))

(assert (=> b!5713294 m!6666836))

(declare-fun m!6666840 () Bool)

(assert (=> b!5713294 m!6666840))

(assert (=> b!5713303 m!6666422))

(assert (=> b!5713301 m!6666832))

(assert (=> d!1802275 m!6665960))

(assert (=> d!1802275 m!6666208))

(assert (=> b!5713299 m!6666836))

(assert (=> b!5713299 m!6666836))

(assert (=> b!5713299 m!6666840))

(assert (=> b!5712327 d!1802275))

(declare-fun d!1802281 () Bool)

(declare-fun c!1007180 () Bool)

(assert (=> d!1802281 (= c!1007180 (isEmpty!35168 (t!376740 s!2326)))))

(declare-fun e!3513819 () Bool)

(assert (=> d!1802281 (= (matchZipper!1845 lt!2275954 (t!376740 s!2326)) e!3513819)))

(declare-fun b!5713310 () Bool)

(assert (=> b!5713310 (= e!3513819 (nullableZipper!1660 lt!2275954))))

(declare-fun b!5713311 () Bool)

(assert (=> b!5713311 (= e!3513819 (matchZipper!1845 (derivationStepZipper!1790 lt!2275954 (head!12102 (t!376740 s!2326))) (tail!11197 (t!376740 s!2326))))))

(assert (= (and d!1802281 c!1007180) b!5713310))

(assert (= (and d!1802281 (not c!1007180)) b!5713311))

(assert (=> d!1802281 m!6666100))

(declare-fun m!6666842 () Bool)

(assert (=> b!5713310 m!6666842))

(assert (=> b!5713311 m!6666104))

(assert (=> b!5713311 m!6666104))

(declare-fun m!6666844 () Bool)

(assert (=> b!5713311 m!6666844))

(assert (=> b!5713311 m!6666108))

(assert (=> b!5713311 m!6666844))

(assert (=> b!5713311 m!6666108))

(declare-fun m!6666846 () Bool)

(assert (=> b!5713311 m!6666846))

(assert (=> b!5712328 d!1802281))

(declare-fun b!5713312 () Bool)

(declare-fun res!2412029 () Bool)

(declare-fun e!3513825 () Bool)

(assert (=> b!5713312 (=> res!2412029 e!3513825)))

(declare-fun e!3513823 () Bool)

(assert (=> b!5713312 (= res!2412029 e!3513823)))

(declare-fun res!2412032 () Bool)

(assert (=> b!5713312 (=> (not res!2412032) (not e!3513823))))

(declare-fun lt!2276141 () Bool)

(assert (=> b!5713312 (= res!2412032 lt!2276141)))

(declare-fun bm!436150 () Bool)

(declare-fun call!436155 () Bool)

(assert (=> bm!436150 (= call!436155 (isEmpty!35168 (_1!36107 lt!2275967)))))

(declare-fun b!5713313 () Bool)

(assert (=> b!5713313 (= e!3513823 (= (head!12102 (_1!36107 lt!2275967)) (c!1006919 (reg!16036 (regOne!31926 r!7292)))))))

(declare-fun b!5713314 () Bool)

(declare-fun e!3513821 () Bool)

(declare-fun e!3513826 () Bool)

(assert (=> b!5713314 (= e!3513821 e!3513826)))

(declare-fun res!2412031 () Bool)

(assert (=> b!5713314 (=> res!2412031 e!3513826)))

(assert (=> b!5713314 (= res!2412031 call!436155)))

(declare-fun b!5713316 () Bool)

(declare-fun res!2412026 () Bool)

(assert (=> b!5713316 (=> res!2412026 e!3513826)))

(assert (=> b!5713316 (= res!2412026 (not (isEmpty!35168 (tail!11197 (_1!36107 lt!2275967)))))))

(declare-fun b!5713317 () Bool)

(assert (=> b!5713317 (= e!3513825 e!3513821)))

(declare-fun res!2412028 () Bool)

(assert (=> b!5713317 (=> (not res!2412028) (not e!3513821))))

(assert (=> b!5713317 (= res!2412028 (not lt!2276141))))

(declare-fun b!5713318 () Bool)

(declare-fun e!3513820 () Bool)

(assert (=> b!5713318 (= e!3513820 (not lt!2276141))))

(declare-fun b!5713319 () Bool)

(declare-fun e!3513824 () Bool)

(assert (=> b!5713319 (= e!3513824 (= lt!2276141 call!436155))))

(declare-fun b!5713320 () Bool)

(assert (=> b!5713320 (= e!3513824 e!3513820)))

(declare-fun c!1007182 () Bool)

(assert (=> b!5713320 (= c!1007182 ((_ is EmptyLang!15707) (reg!16036 (regOne!31926 r!7292))))))

(declare-fun b!5713321 () Bool)

(declare-fun res!2412033 () Bool)

(assert (=> b!5713321 (=> (not res!2412033) (not e!3513823))))

(assert (=> b!5713321 (= res!2412033 (isEmpty!35168 (tail!11197 (_1!36107 lt!2275967))))))

(declare-fun b!5713322 () Bool)

(declare-fun res!2412030 () Bool)

(assert (=> b!5713322 (=> res!2412030 e!3513825)))

(assert (=> b!5713322 (= res!2412030 (not ((_ is ElementMatch!15707) (reg!16036 (regOne!31926 r!7292)))))))

(assert (=> b!5713322 (= e!3513820 e!3513825)))

(declare-fun b!5713323 () Bool)

(assert (=> b!5713323 (= e!3513826 (not (= (head!12102 (_1!36107 lt!2275967)) (c!1006919 (reg!16036 (regOne!31926 r!7292))))))))

(declare-fun b!5713324 () Bool)

(declare-fun res!2412027 () Bool)

(assert (=> b!5713324 (=> (not res!2412027) (not e!3513823))))

(assert (=> b!5713324 (= res!2412027 (not call!436155))))

(declare-fun b!5713325 () Bool)

(declare-fun e!3513822 () Bool)

(assert (=> b!5713325 (= e!3513822 (nullable!5739 (reg!16036 (regOne!31926 r!7292))))))

(declare-fun b!5713315 () Bool)

(assert (=> b!5713315 (= e!3513822 (matchR!7892 (derivativeStep!4514 (reg!16036 (regOne!31926 r!7292)) (head!12102 (_1!36107 lt!2275967))) (tail!11197 (_1!36107 lt!2275967))))))

(declare-fun d!1802287 () Bool)

(assert (=> d!1802287 e!3513824))

(declare-fun c!1007181 () Bool)

(assert (=> d!1802287 (= c!1007181 ((_ is EmptyExpr!15707) (reg!16036 (regOne!31926 r!7292))))))

(assert (=> d!1802287 (= lt!2276141 e!3513822)))

(declare-fun c!1007183 () Bool)

(assert (=> d!1802287 (= c!1007183 (isEmpty!35168 (_1!36107 lt!2275967)))))

(assert (=> d!1802287 (validRegex!7443 (reg!16036 (regOne!31926 r!7292)))))

(assert (=> d!1802287 (= (matchR!7892 (reg!16036 (regOne!31926 r!7292)) (_1!36107 lt!2275967)) lt!2276141)))

(assert (= (and d!1802287 c!1007183) b!5713325))

(assert (= (and d!1802287 (not c!1007183)) b!5713315))

(assert (= (and d!1802287 c!1007181) b!5713319))

(assert (= (and d!1802287 (not c!1007181)) b!5713320))

(assert (= (and b!5713320 c!1007182) b!5713318))

(assert (= (and b!5713320 (not c!1007182)) b!5713322))

(assert (= (and b!5713322 (not res!2412030)) b!5713312))

(assert (= (and b!5713312 res!2412032) b!5713324))

(assert (= (and b!5713324 res!2412027) b!5713321))

(assert (= (and b!5713321 res!2412033) b!5713313))

(assert (= (and b!5713312 (not res!2412029)) b!5713317))

(assert (= (and b!5713317 res!2412028) b!5713314))

(assert (= (and b!5713314 (not res!2412031)) b!5713316))

(assert (= (and b!5713316 (not res!2412026)) b!5713323))

(assert (= (or b!5713319 b!5713324 b!5713314) bm!436150))

(declare-fun m!6666848 () Bool)

(assert (=> bm!436150 m!6666848))

(declare-fun m!6666850 () Bool)

(assert (=> b!5713313 m!6666850))

(assert (=> b!5713315 m!6666850))

(assert (=> b!5713315 m!6666850))

(declare-fun m!6666852 () Bool)

(assert (=> b!5713315 m!6666852))

(declare-fun m!6666854 () Bool)

(assert (=> b!5713315 m!6666854))

(assert (=> b!5713315 m!6666852))

(assert (=> b!5713315 m!6666854))

(declare-fun m!6666856 () Bool)

(assert (=> b!5713315 m!6666856))

(assert (=> b!5713316 m!6666854))

(assert (=> b!5713316 m!6666854))

(declare-fun m!6666858 () Bool)

(assert (=> b!5713316 m!6666858))

(declare-fun m!6666860 () Bool)

(assert (=> b!5713325 m!6666860))

(assert (=> b!5713323 m!6666850))

(assert (=> d!1802287 m!6666848))

(assert (=> d!1802287 m!6666178))

(assert (=> b!5713321 m!6666854))

(assert (=> b!5713321 m!6666854))

(assert (=> b!5713321 m!6666858))

(assert (=> b!5712348 d!1802287))

(declare-fun b!5713326 () Bool)

(declare-fun res!2412037 () Bool)

(declare-fun e!3513832 () Bool)

(assert (=> b!5713326 (=> res!2412037 e!3513832)))

(declare-fun e!3513830 () Bool)

(assert (=> b!5713326 (= res!2412037 e!3513830)))

(declare-fun res!2412040 () Bool)

(assert (=> b!5713326 (=> (not res!2412040) (not e!3513830))))

(declare-fun lt!2276142 () Bool)

(assert (=> b!5713326 (= res!2412040 lt!2276142)))

(declare-fun bm!436151 () Bool)

(declare-fun call!436156 () Bool)

(assert (=> bm!436151 (= call!436156 (isEmpty!35168 s!2326))))

(declare-fun b!5713327 () Bool)

(assert (=> b!5713327 (= e!3513830 (= (head!12102 s!2326) (c!1006919 lt!2275993)))))

(declare-fun b!5713328 () Bool)

(declare-fun e!3513828 () Bool)

(declare-fun e!3513833 () Bool)

(assert (=> b!5713328 (= e!3513828 e!3513833)))

(declare-fun res!2412039 () Bool)

(assert (=> b!5713328 (=> res!2412039 e!3513833)))

(assert (=> b!5713328 (= res!2412039 call!436156)))

(declare-fun b!5713330 () Bool)

(declare-fun res!2412034 () Bool)

(assert (=> b!5713330 (=> res!2412034 e!3513833)))

(assert (=> b!5713330 (= res!2412034 (not (isEmpty!35168 (tail!11197 s!2326))))))

(declare-fun b!5713331 () Bool)

(assert (=> b!5713331 (= e!3513832 e!3513828)))

(declare-fun res!2412036 () Bool)

(assert (=> b!5713331 (=> (not res!2412036) (not e!3513828))))

(assert (=> b!5713331 (= res!2412036 (not lt!2276142))))

(declare-fun b!5713332 () Bool)

(declare-fun e!3513827 () Bool)

(assert (=> b!5713332 (= e!3513827 (not lt!2276142))))

(declare-fun b!5713333 () Bool)

(declare-fun e!3513831 () Bool)

(assert (=> b!5713333 (= e!3513831 (= lt!2276142 call!436156))))

(declare-fun b!5713334 () Bool)

(assert (=> b!5713334 (= e!3513831 e!3513827)))

(declare-fun c!1007185 () Bool)

(assert (=> b!5713334 (= c!1007185 ((_ is EmptyLang!15707) lt!2275993))))

(declare-fun b!5713335 () Bool)

(declare-fun res!2412041 () Bool)

(assert (=> b!5713335 (=> (not res!2412041) (not e!3513830))))

(assert (=> b!5713335 (= res!2412041 (isEmpty!35168 (tail!11197 s!2326)))))

(declare-fun b!5713336 () Bool)

(declare-fun res!2412038 () Bool)

(assert (=> b!5713336 (=> res!2412038 e!3513832)))

(assert (=> b!5713336 (= res!2412038 (not ((_ is ElementMatch!15707) lt!2275993)))))

(assert (=> b!5713336 (= e!3513827 e!3513832)))

(declare-fun b!5713337 () Bool)

(assert (=> b!5713337 (= e!3513833 (not (= (head!12102 s!2326) (c!1006919 lt!2275993))))))

(declare-fun b!5713338 () Bool)

(declare-fun res!2412035 () Bool)

(assert (=> b!5713338 (=> (not res!2412035) (not e!3513830))))

(assert (=> b!5713338 (= res!2412035 (not call!436156))))

(declare-fun b!5713339 () Bool)

(declare-fun e!3513829 () Bool)

(assert (=> b!5713339 (= e!3513829 (nullable!5739 lt!2275993))))

(declare-fun b!5713329 () Bool)

(assert (=> b!5713329 (= e!3513829 (matchR!7892 (derivativeStep!4514 lt!2275993 (head!12102 s!2326)) (tail!11197 s!2326)))))

(declare-fun d!1802289 () Bool)

(assert (=> d!1802289 e!3513831))

(declare-fun c!1007184 () Bool)

(assert (=> d!1802289 (= c!1007184 ((_ is EmptyExpr!15707) lt!2275993))))

(assert (=> d!1802289 (= lt!2276142 e!3513829)))

(declare-fun c!1007186 () Bool)

(assert (=> d!1802289 (= c!1007186 (isEmpty!35168 s!2326))))

(assert (=> d!1802289 (validRegex!7443 lt!2275993)))

(assert (=> d!1802289 (= (matchR!7892 lt!2275993 s!2326) lt!2276142)))

(assert (= (and d!1802289 c!1007186) b!5713339))

(assert (= (and d!1802289 (not c!1007186)) b!5713329))

(assert (= (and d!1802289 c!1007184) b!5713333))

(assert (= (and d!1802289 (not c!1007184)) b!5713334))

(assert (= (and b!5713334 c!1007185) b!5713332))

(assert (= (and b!5713334 (not c!1007185)) b!5713336))

(assert (= (and b!5713336 (not res!2412038)) b!5713326))

(assert (= (and b!5713326 res!2412040) b!5713338))

(assert (= (and b!5713338 res!2412035) b!5713335))

(assert (= (and b!5713335 res!2412041) b!5713327))

(assert (= (and b!5713326 (not res!2412037)) b!5713331))

(assert (= (and b!5713331 res!2412036) b!5713328))

(assert (= (and b!5713328 (not res!2412039)) b!5713330))

(assert (= (and b!5713330 (not res!2412034)) b!5713337))

(assert (= (or b!5713333 b!5713338 b!5713328) bm!436151))

(assert (=> bm!436151 m!6666118))

(assert (=> b!5713327 m!6666122))

(assert (=> b!5713329 m!6666122))

(assert (=> b!5713329 m!6666122))

(declare-fun m!6666862 () Bool)

(assert (=> b!5713329 m!6666862))

(assert (=> b!5713329 m!6666126))

(assert (=> b!5713329 m!6666862))

(assert (=> b!5713329 m!6666126))

(declare-fun m!6666864 () Bool)

(assert (=> b!5713329 m!6666864))

(assert (=> b!5713330 m!6666126))

(assert (=> b!5713330 m!6666126))

(assert (=> b!5713330 m!6666824))

(declare-fun m!6666866 () Bool)

(assert (=> b!5713339 m!6666866))

(assert (=> b!5713337 m!6666122))

(assert (=> d!1802289 m!6666118))

(declare-fun m!6666868 () Bool)

(assert (=> d!1802289 m!6666868))

(assert (=> b!5713335 m!6666126))

(assert (=> b!5713335 m!6666126))

(assert (=> b!5713335 m!6666824))

(assert (=> b!5712369 d!1802289))

(declare-fun bs!1334740 () Bool)

(declare-fun b!5713341 () Bool)

(assert (= bs!1334740 (and b!5713341 b!5712330)))

(declare-fun lambda!308439 () Int)

(assert (=> bs!1334740 (not (= lambda!308439 lambda!308347))))

(declare-fun bs!1334741 () Bool)

(assert (= bs!1334741 (and b!5713341 b!5712367)))

(assert (=> bs!1334741 (not (= lambda!308439 lambda!308342))))

(declare-fun bs!1334742 () Bool)

(assert (= bs!1334742 (and b!5713341 b!5713194)))

(assert (=> bs!1334742 (= (and (= (reg!16036 lt!2275993) (reg!16036 r!7292)) (= lt!2275993 r!7292)) (= lambda!308439 lambda!308436))))

(assert (=> bs!1334740 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (reg!16036 lt!2275993) (reg!16036 (regOne!31926 r!7292))) (= lt!2275993 lt!2275979)) (= lambda!308439 lambda!308348))))

(declare-fun bs!1334743 () Bool)

(assert (= bs!1334743 (and b!5713341 b!5712656)))

(assert (=> bs!1334743 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (reg!16036 lt!2275993) (reg!16036 lt!2275979)) (= lt!2275993 lt!2275979)) (= lambda!308439 lambda!308387))))

(declare-fun bs!1334744 () Bool)

(assert (= bs!1334744 (and b!5713341 b!5712345)))

(assert (=> bs!1334744 (not (= lambda!308439 lambda!308346))))

(declare-fun bs!1334745 () Bool)

(assert (= bs!1334745 (and b!5713341 d!1802057)))

(assert (=> bs!1334745 (not (= lambda!308439 lambda!308369))))

(declare-fun bs!1334746 () Bool)

(assert (= bs!1334746 (and b!5713341 d!1802263)))

(assert (=> bs!1334746 (not (= lambda!308439 lambda!308435))))

(declare-fun bs!1334747 () Bool)

(assert (= bs!1334747 (and b!5713341 d!1802101)))

(assert (=> bs!1334747 (not (= lambda!308439 lambda!308395))))

(declare-fun bs!1334748 () Bool)

(assert (= bs!1334748 (and b!5713341 d!1802069)))

(assert (=> bs!1334748 (not (= lambda!308439 lambda!308373))))

(assert (=> bs!1334744 (not (= lambda!308439 lambda!308345))))

(declare-fun bs!1334749 () Bool)

(assert (= bs!1334749 (and b!5713341 b!5712658)))

(assert (=> bs!1334749 (not (= lambda!308439 lambda!308388))))

(declare-fun bs!1334750 () Bool)

(assert (= bs!1334750 (and b!5713341 d!1802255)))

(assert (=> bs!1334750 (not (= lambda!308439 lambda!308431))))

(declare-fun bs!1334751 () Bool)

(assert (= bs!1334751 (and b!5713341 b!5713196)))

(assert (=> bs!1334751 (not (= lambda!308439 lambda!308438))))

(assert (=> bs!1334745 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (reg!16036 lt!2275993) (reg!16036 (regOne!31926 r!7292))) (= lt!2275993 (Star!15707 (reg!16036 (regOne!31926 r!7292))))) (= lambda!308439 lambda!308370))))

(assert (=> bs!1334741 (not (= lambda!308439 lambda!308343))))

(assert (=> bs!1334740 (not (= lambda!308439 lambda!308349))))

(assert (=> bs!1334747 (not (= lambda!308439 lambda!308393))))

(assert (=> bs!1334746 (not (= lambda!308439 lambda!308432))))

(assert (=> b!5713341 true))

(assert (=> b!5713341 true))

(declare-fun bs!1334752 () Bool)

(declare-fun b!5713343 () Bool)

(assert (= bs!1334752 (and b!5713343 b!5712330)))

(declare-fun lambda!308440 () Int)

(assert (=> bs!1334752 (not (= lambda!308440 lambda!308347))))

(declare-fun bs!1334753 () Bool)

(assert (= bs!1334753 (and b!5713343 b!5713341)))

(assert (=> bs!1334753 (not (= lambda!308440 lambda!308439))))

(declare-fun bs!1334754 () Bool)

(assert (= bs!1334754 (and b!5713343 b!5712367)))

(assert (=> bs!1334754 (not (= lambda!308440 lambda!308342))))

(declare-fun bs!1334755 () Bool)

(assert (= bs!1334755 (and b!5713343 b!5713194)))

(assert (=> bs!1334755 (not (= lambda!308440 lambda!308436))))

(assert (=> bs!1334752 (not (= lambda!308440 lambda!308348))))

(declare-fun bs!1334756 () Bool)

(assert (= bs!1334756 (and b!5713343 b!5712656)))

(assert (=> bs!1334756 (not (= lambda!308440 lambda!308387))))

(declare-fun bs!1334757 () Bool)

(assert (= bs!1334757 (and b!5713343 b!5712345)))

(assert (=> bs!1334757 (= (and (= (regOne!31926 lt!2275993) lt!2275979) (= (regTwo!31926 lt!2275993) (regTwo!31926 r!7292))) (= lambda!308440 lambda!308346))))

(declare-fun bs!1334758 () Bool)

(assert (= bs!1334758 (and b!5713343 d!1802057)))

(assert (=> bs!1334758 (not (= lambda!308440 lambda!308369))))

(declare-fun bs!1334759 () Bool)

(assert (= bs!1334759 (and b!5713343 d!1802263)))

(assert (=> bs!1334759 (= (and (= (regOne!31926 lt!2275993) (regOne!31926 r!7292)) (= (regTwo!31926 lt!2275993) (regTwo!31926 r!7292))) (= lambda!308440 lambda!308435))))

(declare-fun bs!1334760 () Bool)

(assert (= bs!1334760 (and b!5713343 d!1802101)))

(assert (=> bs!1334760 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 lt!2275993) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 lt!2275993) lt!2275979)) (= lambda!308440 lambda!308395))))

(declare-fun bs!1334761 () Bool)

(assert (= bs!1334761 (and b!5713343 d!1802069)))

(assert (=> bs!1334761 (not (= lambda!308440 lambda!308373))))

(assert (=> bs!1334757 (not (= lambda!308440 lambda!308345))))

(declare-fun bs!1334762 () Bool)

(assert (= bs!1334762 (and b!5713343 b!5712658)))

(assert (=> bs!1334762 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 lt!2275993) (regOne!31926 lt!2275979)) (= (regTwo!31926 lt!2275993) (regTwo!31926 lt!2275979))) (= lambda!308440 lambda!308388))))

(declare-fun bs!1334763 () Bool)

(assert (= bs!1334763 (and b!5713343 d!1802255)))

(assert (=> bs!1334763 (not (= lambda!308440 lambda!308431))))

(declare-fun bs!1334764 () Bool)

(assert (= bs!1334764 (and b!5713343 b!5713196)))

(assert (=> bs!1334764 (= (and (= (regOne!31926 lt!2275993) (regOne!31926 r!7292)) (= (regTwo!31926 lt!2275993) (regTwo!31926 r!7292))) (= lambda!308440 lambda!308438))))

(assert (=> bs!1334758 (not (= lambda!308440 lambda!308370))))

(assert (=> bs!1334754 (= (and (= (regOne!31926 lt!2275993) (regOne!31926 r!7292)) (= (regTwo!31926 lt!2275993) (regTwo!31926 r!7292))) (= lambda!308440 lambda!308343))))

(assert (=> bs!1334752 (= (and (= s!2326 (_1!36107 lt!2275961)) (= (regOne!31926 lt!2275993) (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 lt!2275993) lt!2275979)) (= lambda!308440 lambda!308349))))

(assert (=> bs!1334760 (not (= lambda!308440 lambda!308393))))

(assert (=> bs!1334759 (not (= lambda!308440 lambda!308432))))

(assert (=> b!5713343 true))

(assert (=> b!5713343 true))

(declare-fun b!5713340 () Bool)

(declare-fun e!3513837 () Bool)

(declare-fun e!3513838 () Bool)

(assert (=> b!5713340 (= e!3513837 e!3513838)))

(declare-fun res!2412043 () Bool)

(assert (=> b!5713340 (= res!2412043 (not ((_ is EmptyLang!15707) lt!2275993)))))

(assert (=> b!5713340 (=> (not res!2412043) (not e!3513838))))

(declare-fun bm!436152 () Bool)

(declare-fun call!436157 () Bool)

(assert (=> bm!436152 (= call!436157 (isEmpty!35168 s!2326))))

(declare-fun e!3513834 () Bool)

(declare-fun call!436158 () Bool)

(assert (=> b!5713341 (= e!3513834 call!436158)))

(declare-fun b!5713342 () Bool)

(declare-fun e!3513839 () Bool)

(assert (=> b!5713342 (= e!3513839 (matchRSpec!2810 (regTwo!31927 lt!2275993) s!2326))))

(declare-fun e!3513836 () Bool)

(assert (=> b!5713343 (= e!3513836 call!436158)))

(declare-fun b!5713344 () Bool)

(declare-fun res!2412044 () Bool)

(assert (=> b!5713344 (=> res!2412044 e!3513834)))

(assert (=> b!5713344 (= res!2412044 call!436157)))

(assert (=> b!5713344 (= e!3513836 e!3513834)))

(declare-fun c!1007188 () Bool)

(declare-fun bm!436153 () Bool)

(assert (=> bm!436153 (= call!436158 (Exists!2807 (ite c!1007188 lambda!308439 lambda!308440)))))

(declare-fun b!5713345 () Bool)

(declare-fun c!1007187 () Bool)

(assert (=> b!5713345 (= c!1007187 ((_ is Union!15707) lt!2275993))))

(declare-fun e!3513835 () Bool)

(declare-fun e!3513840 () Bool)

(assert (=> b!5713345 (= e!3513835 e!3513840)))

(declare-fun d!1802291 () Bool)

(declare-fun c!1007190 () Bool)

(assert (=> d!1802291 (= c!1007190 ((_ is EmptyExpr!15707) lt!2275993))))

(assert (=> d!1802291 (= (matchRSpec!2810 lt!2275993 s!2326) e!3513837)))

(declare-fun b!5713346 () Bool)

(assert (=> b!5713346 (= e!3513840 e!3513836)))

(assert (=> b!5713346 (= c!1007188 ((_ is Star!15707) lt!2275993))))

(declare-fun b!5713347 () Bool)

(assert (=> b!5713347 (= e!3513840 e!3513839)))

(declare-fun res!2412042 () Bool)

(assert (=> b!5713347 (= res!2412042 (matchRSpec!2810 (regOne!31927 lt!2275993) s!2326))))

(assert (=> b!5713347 (=> res!2412042 e!3513839)))

(declare-fun b!5713348 () Bool)

(declare-fun c!1007189 () Bool)

(assert (=> b!5713348 (= c!1007189 ((_ is ElementMatch!15707) lt!2275993))))

(assert (=> b!5713348 (= e!3513838 e!3513835)))

(declare-fun b!5713349 () Bool)

(assert (=> b!5713349 (= e!3513837 call!436157)))

(declare-fun b!5713350 () Bool)

(assert (=> b!5713350 (= e!3513835 (= s!2326 (Cons!63296 (c!1006919 lt!2275993) Nil!63296)))))

(assert (= (and d!1802291 c!1007190) b!5713349))

(assert (= (and d!1802291 (not c!1007190)) b!5713340))

(assert (= (and b!5713340 res!2412043) b!5713348))

(assert (= (and b!5713348 c!1007189) b!5713350))

(assert (= (and b!5713348 (not c!1007189)) b!5713345))

(assert (= (and b!5713345 c!1007187) b!5713347))

(assert (= (and b!5713345 (not c!1007187)) b!5713346))

(assert (= (and b!5713347 (not res!2412042)) b!5713342))

(assert (= (and b!5713346 c!1007188) b!5713344))

(assert (= (and b!5713346 (not c!1007188)) b!5713343))

(assert (= (and b!5713344 (not res!2412044)) b!5713341))

(assert (= (or b!5713341 b!5713343) bm!436153))

(assert (= (or b!5713349 b!5713344) bm!436152))

(assert (=> bm!436152 m!6666118))

(declare-fun m!6666870 () Bool)

(assert (=> b!5713342 m!6666870))

(declare-fun m!6666872 () Bool)

(assert (=> bm!436153 m!6666872))

(declare-fun m!6666874 () Bool)

(assert (=> b!5713347 m!6666874))

(assert (=> b!5712369 d!1802291))

(declare-fun d!1802293 () Bool)

(assert (=> d!1802293 (= (matchR!7892 lt!2275993 s!2326) (matchRSpec!2810 lt!2275993 s!2326))))

(declare-fun lt!2276143 () Unit!156360)

(assert (=> d!1802293 (= lt!2276143 (choose!43190 lt!2275993 s!2326))))

(assert (=> d!1802293 (validRegex!7443 lt!2275993)))

(assert (=> d!1802293 (= (mainMatchTheorem!2810 lt!2275993 s!2326) lt!2276143)))

(declare-fun bs!1334765 () Bool)

(assert (= bs!1334765 d!1802293))

(assert (=> bs!1334765 m!6665818))

(assert (=> bs!1334765 m!6665820))

(declare-fun m!6666876 () Bool)

(assert (=> bs!1334765 m!6666876))

(assert (=> bs!1334765 m!6666868))

(assert (=> b!5712369 d!1802293))

(declare-fun d!1802295 () Bool)

(assert (=> d!1802295 (= (Exists!2807 lambda!308346) (choose!43186 lambda!308346))))

(declare-fun bs!1334766 () Bool)

(assert (= bs!1334766 d!1802295))

(declare-fun m!6666878 () Bool)

(assert (=> bs!1334766 m!6666878))

(assert (=> b!5712345 d!1802295))

(declare-fun b!5713351 () Bool)

(declare-fun e!3513844 () Option!15716)

(declare-fun e!3513845 () Option!15716)

(assert (=> b!5713351 (= e!3513844 e!3513845)))

(declare-fun c!1007192 () Bool)

(assert (=> b!5713351 (= c!1007192 ((_ is Nil!63296) s!2326))))

(declare-fun b!5713352 () Bool)

(declare-fun e!3513841 () Bool)

(declare-fun lt!2276144 () Option!15716)

(assert (=> b!5713352 (= e!3513841 (= (++!13899 (_1!36107 (get!21820 lt!2276144)) (_2!36107 (get!21820 lt!2276144))) s!2326))))

(declare-fun b!5713353 () Bool)

(declare-fun e!3513842 () Bool)

(assert (=> b!5713353 (= e!3513842 (not (isDefined!12419 lt!2276144)))))

(declare-fun b!5713354 () Bool)

(assert (=> b!5713354 (= e!3513844 (Some!15715 (tuple2!65609 Nil!63296 s!2326)))))

(declare-fun b!5713355 () Bool)

(assert (=> b!5713355 (= e!3513845 None!15715)))

(declare-fun b!5713356 () Bool)

(declare-fun e!3513843 () Bool)

(assert (=> b!5713356 (= e!3513843 (matchR!7892 (regTwo!31926 r!7292) s!2326))))

(declare-fun b!5713357 () Bool)

(declare-fun res!2412045 () Bool)

(assert (=> b!5713357 (=> (not res!2412045) (not e!3513841))))

(assert (=> b!5713357 (= res!2412045 (matchR!7892 lt!2275979 (_1!36107 (get!21820 lt!2276144))))))

(declare-fun d!1802297 () Bool)

(assert (=> d!1802297 e!3513842))

(declare-fun res!2412049 () Bool)

(assert (=> d!1802297 (=> res!2412049 e!3513842)))

(assert (=> d!1802297 (= res!2412049 e!3513841)))

(declare-fun res!2412048 () Bool)

(assert (=> d!1802297 (=> (not res!2412048) (not e!3513841))))

(assert (=> d!1802297 (= res!2412048 (isDefined!12419 lt!2276144))))

(assert (=> d!1802297 (= lt!2276144 e!3513844)))

(declare-fun c!1007191 () Bool)

(assert (=> d!1802297 (= c!1007191 e!3513843)))

(declare-fun res!2412046 () Bool)

(assert (=> d!1802297 (=> (not res!2412046) (not e!3513843))))

(assert (=> d!1802297 (= res!2412046 (matchR!7892 lt!2275979 Nil!63296))))

(assert (=> d!1802297 (validRegex!7443 lt!2275979)))

(assert (=> d!1802297 (= (findConcatSeparation!2130 lt!2275979 (regTwo!31926 r!7292) Nil!63296 s!2326 s!2326) lt!2276144)))

(declare-fun b!5713358 () Bool)

(declare-fun lt!2276146 () Unit!156360)

(declare-fun lt!2276145 () Unit!156360)

(assert (=> b!5713358 (= lt!2276146 lt!2276145)))

(assert (=> b!5713358 (= (++!13899 (++!13899 Nil!63296 (Cons!63296 (h!69744 s!2326) Nil!63296)) (t!376740 s!2326)) s!2326)))

(assert (=> b!5713358 (= lt!2276145 (lemmaMoveElementToOtherListKeepsConcatEq!2064 Nil!63296 (h!69744 s!2326) (t!376740 s!2326) s!2326))))

(assert (=> b!5713358 (= e!3513845 (findConcatSeparation!2130 lt!2275979 (regTwo!31926 r!7292) (++!13899 Nil!63296 (Cons!63296 (h!69744 s!2326) Nil!63296)) (t!376740 s!2326) s!2326))))

(declare-fun b!5713359 () Bool)

(declare-fun res!2412047 () Bool)

(assert (=> b!5713359 (=> (not res!2412047) (not e!3513841))))

(assert (=> b!5713359 (= res!2412047 (matchR!7892 (regTwo!31926 r!7292) (_2!36107 (get!21820 lt!2276144))))))

(assert (= (and d!1802297 res!2412046) b!5713356))

(assert (= (and d!1802297 c!1007191) b!5713354))

(assert (= (and d!1802297 (not c!1007191)) b!5713351))

(assert (= (and b!5713351 c!1007192) b!5713355))

(assert (= (and b!5713351 (not c!1007192)) b!5713358))

(assert (= (and d!1802297 res!2412048) b!5713357))

(assert (= (and b!5713357 res!2412045) b!5713359))

(assert (= (and b!5713359 res!2412047) b!5713352))

(assert (= (and d!1802297 (not res!2412049)) b!5713353))

(declare-fun m!6666880 () Bool)

(assert (=> b!5713357 m!6666880))

(declare-fun m!6666882 () Bool)

(assert (=> b!5713357 m!6666882))

(assert (=> b!5713356 m!6666732))

(assert (=> b!5713358 m!6666734))

(assert (=> b!5713358 m!6666734))

(assert (=> b!5713358 m!6666736))

(assert (=> b!5713358 m!6666738))

(assert (=> b!5713358 m!6666734))

(declare-fun m!6666884 () Bool)

(assert (=> b!5713358 m!6666884))

(assert (=> b!5713359 m!6666880))

(declare-fun m!6666886 () Bool)

(assert (=> b!5713359 m!6666886))

(assert (=> b!5713352 m!6666880))

(declare-fun m!6666888 () Bool)

(assert (=> b!5713352 m!6666888))

(declare-fun m!6666890 () Bool)

(assert (=> d!1802297 m!6666890))

(declare-fun m!6666892 () Bool)

(assert (=> d!1802297 m!6666892))

(assert (=> d!1802297 m!6666208))

(assert (=> b!5713353 m!6666890))

(assert (=> b!5712345 d!1802297))

(declare-fun d!1802299 () Bool)

(assert (=> d!1802299 (= (isDefined!12419 lt!2275994) (not (isEmpty!35170 lt!2275994)))))

(declare-fun bs!1334767 () Bool)

(assert (= bs!1334767 d!1802299))

(declare-fun m!6666894 () Bool)

(assert (=> bs!1334767 m!6666894))

(assert (=> b!5712345 d!1802299))

(declare-fun bs!1334768 () Bool)

(declare-fun d!1802301 () Bool)

(assert (= bs!1334768 (and d!1802301 b!5712330)))

(declare-fun lambda!308441 () Int)

(assert (=> bs!1334768 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308441 lambda!308347))))

(declare-fun bs!1334769 () Bool)

(assert (= bs!1334769 (and d!1802301 b!5713341)))

(assert (=> bs!1334769 (not (= lambda!308441 lambda!308439))))

(declare-fun bs!1334770 () Bool)

(assert (= bs!1334770 (and d!1802301 b!5712367)))

(assert (=> bs!1334770 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308441 lambda!308342))))

(declare-fun bs!1334771 () Bool)

(assert (= bs!1334771 (and d!1802301 b!5713194)))

(assert (=> bs!1334771 (not (= lambda!308441 lambda!308436))))

(assert (=> bs!1334768 (not (= lambda!308441 lambda!308348))))

(declare-fun bs!1334772 () Bool)

(assert (= bs!1334772 (and d!1802301 b!5712656)))

(assert (=> bs!1334772 (not (= lambda!308441 lambda!308387))))

(declare-fun bs!1334773 () Bool)

(assert (= bs!1334773 (and d!1802301 b!5712345)))

(assert (=> bs!1334773 (not (= lambda!308441 lambda!308346))))

(declare-fun bs!1334774 () Bool)

(assert (= bs!1334774 (and d!1802301 d!1802057)))

(assert (=> bs!1334774 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) (Star!15707 (reg!16036 (regOne!31926 r!7292))))) (= lambda!308441 lambda!308369))))

(declare-fun bs!1334775 () Bool)

(assert (= bs!1334775 (and d!1802301 d!1802263)))

(assert (=> bs!1334775 (not (= lambda!308441 lambda!308435))))

(declare-fun bs!1334776 () Bool)

(assert (= bs!1334776 (and d!1802301 d!1802101)))

(assert (=> bs!1334776 (not (= lambda!308441 lambda!308395))))

(declare-fun bs!1334777 () Bool)

(assert (= bs!1334777 (and d!1802301 d!1802069)))

(assert (=> bs!1334777 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308441 lambda!308373))))

(assert (=> bs!1334773 (= lambda!308441 lambda!308345)))

(declare-fun bs!1334778 () Bool)

(assert (= bs!1334778 (and d!1802301 b!5712658)))

(assert (=> bs!1334778 (not (= lambda!308441 lambda!308388))))

(declare-fun bs!1334779 () Bool)

(assert (= bs!1334779 (and d!1802301 d!1802255)))

(assert (=> bs!1334779 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308441 lambda!308431))))

(declare-fun bs!1334780 () Bool)

(assert (= bs!1334780 (and d!1802301 b!5713196)))

(assert (=> bs!1334780 (not (= lambda!308441 lambda!308438))))

(assert (=> bs!1334774 (not (= lambda!308441 lambda!308370))))

(assert (=> bs!1334770 (not (= lambda!308441 lambda!308343))))

(assert (=> bs!1334768 (not (= lambda!308441 lambda!308349))))

(declare-fun bs!1334781 () Bool)

(assert (= bs!1334781 (and d!1802301 b!5713343)))

(assert (=> bs!1334781 (not (= lambda!308441 lambda!308440))))

(assert (=> bs!1334776 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308441 lambda!308393))))

(assert (=> bs!1334775 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308441 lambda!308432))))

(assert (=> d!1802301 true))

(assert (=> d!1802301 true))

(assert (=> d!1802301 true))

(assert (=> d!1802301 (= (isDefined!12419 (findConcatSeparation!2130 lt!2275979 (regTwo!31926 r!7292) Nil!63296 s!2326 s!2326)) (Exists!2807 lambda!308441))))

(declare-fun lt!2276147 () Unit!156360)

(assert (=> d!1802301 (= lt!2276147 (choose!43189 lt!2275979 (regTwo!31926 r!7292) s!2326))))

(assert (=> d!1802301 (validRegex!7443 lt!2275979)))

(assert (=> d!1802301 (= (lemmaFindConcatSeparationEquivalentToExists!1894 lt!2275979 (regTwo!31926 r!7292) s!2326) lt!2276147)))

(declare-fun bs!1334782 () Bool)

(assert (= bs!1334782 d!1802301))

(assert (=> bs!1334782 m!6665956))

(declare-fun m!6666896 () Bool)

(assert (=> bs!1334782 m!6666896))

(assert (=> bs!1334782 m!6666208))

(declare-fun m!6666898 () Bool)

(assert (=> bs!1334782 m!6666898))

(assert (=> bs!1334782 m!6665956))

(declare-fun m!6666900 () Bool)

(assert (=> bs!1334782 m!6666900))

(assert (=> b!5712345 d!1802301))

(declare-fun bs!1334783 () Bool)

(declare-fun d!1802303 () Bool)

(assert (= bs!1334783 (and d!1802303 b!5712330)))

(declare-fun lambda!308442 () Int)

(assert (=> bs!1334783 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308442 lambda!308347))))

(declare-fun bs!1334784 () Bool)

(assert (= bs!1334784 (and d!1802303 b!5712367)))

(assert (=> bs!1334784 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308442 lambda!308342))))

(declare-fun bs!1334785 () Bool)

(assert (= bs!1334785 (and d!1802303 b!5713194)))

(assert (=> bs!1334785 (not (= lambda!308442 lambda!308436))))

(assert (=> bs!1334783 (not (= lambda!308442 lambda!308348))))

(declare-fun bs!1334786 () Bool)

(assert (= bs!1334786 (and d!1802303 b!5712656)))

(assert (=> bs!1334786 (not (= lambda!308442 lambda!308387))))

(declare-fun bs!1334787 () Bool)

(assert (= bs!1334787 (and d!1802303 b!5712345)))

(assert (=> bs!1334787 (not (= lambda!308442 lambda!308346))))

(declare-fun bs!1334788 () Bool)

(assert (= bs!1334788 (and d!1802303 d!1802057)))

(assert (=> bs!1334788 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) (Star!15707 (reg!16036 (regOne!31926 r!7292))))) (= lambda!308442 lambda!308369))))

(declare-fun bs!1334789 () Bool)

(assert (= bs!1334789 (and d!1802303 d!1802263)))

(assert (=> bs!1334789 (not (= lambda!308442 lambda!308435))))

(declare-fun bs!1334790 () Bool)

(assert (= bs!1334790 (and d!1802303 b!5713341)))

(assert (=> bs!1334790 (not (= lambda!308442 lambda!308439))))

(declare-fun bs!1334791 () Bool)

(assert (= bs!1334791 (and d!1802303 d!1802301)))

(assert (=> bs!1334791 (= lambda!308442 lambda!308441)))

(declare-fun bs!1334792 () Bool)

(assert (= bs!1334792 (and d!1802303 d!1802101)))

(assert (=> bs!1334792 (not (= lambda!308442 lambda!308395))))

(declare-fun bs!1334793 () Bool)

(assert (= bs!1334793 (and d!1802303 d!1802069)))

(assert (=> bs!1334793 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308442 lambda!308373))))

(assert (=> bs!1334787 (= lambda!308442 lambda!308345)))

(declare-fun bs!1334794 () Bool)

(assert (= bs!1334794 (and d!1802303 b!5712658)))

(assert (=> bs!1334794 (not (= lambda!308442 lambda!308388))))

(declare-fun bs!1334795 () Bool)

(assert (= bs!1334795 (and d!1802303 d!1802255)))

(assert (=> bs!1334795 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308442 lambda!308431))))

(declare-fun bs!1334796 () Bool)

(assert (= bs!1334796 (and d!1802303 b!5713196)))

(assert (=> bs!1334796 (not (= lambda!308442 lambda!308438))))

(assert (=> bs!1334788 (not (= lambda!308442 lambda!308370))))

(assert (=> bs!1334784 (not (= lambda!308442 lambda!308343))))

(assert (=> bs!1334783 (not (= lambda!308442 lambda!308349))))

(declare-fun bs!1334797 () Bool)

(assert (= bs!1334797 (and d!1802303 b!5713343)))

(assert (=> bs!1334797 (not (= lambda!308442 lambda!308440))))

(assert (=> bs!1334792 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308442 lambda!308393))))

(assert (=> bs!1334789 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308442 lambda!308432))))

(assert (=> d!1802303 true))

(assert (=> d!1802303 true))

(assert (=> d!1802303 true))

(declare-fun lambda!308443 () Int)

(assert (=> bs!1334784 (not (= lambda!308443 lambda!308342))))

(assert (=> bs!1334785 (not (= lambda!308443 lambda!308436))))

(assert (=> bs!1334783 (not (= lambda!308443 lambda!308348))))

(assert (=> bs!1334786 (not (= lambda!308443 lambda!308387))))

(assert (=> bs!1334787 (= lambda!308443 lambda!308346)))

(assert (=> bs!1334788 (not (= lambda!308443 lambda!308369))))

(assert (=> bs!1334789 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308443 lambda!308435))))

(declare-fun bs!1334798 () Bool)

(assert (= bs!1334798 d!1802303))

(assert (=> bs!1334798 (not (= lambda!308443 lambda!308442))))

(assert (=> bs!1334783 (not (= lambda!308443 lambda!308347))))

(assert (=> bs!1334790 (not (= lambda!308443 lambda!308439))))

(assert (=> bs!1334791 (not (= lambda!308443 lambda!308441))))

(assert (=> bs!1334792 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308443 lambda!308395))))

(assert (=> bs!1334793 (not (= lambda!308443 lambda!308373))))

(assert (=> bs!1334787 (not (= lambda!308443 lambda!308345))))

(assert (=> bs!1334794 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (regOne!31926 lt!2275979)) (= (regTwo!31926 r!7292) (regTwo!31926 lt!2275979))) (= lambda!308443 lambda!308388))))

(assert (=> bs!1334795 (not (= lambda!308443 lambda!308431))))

(assert (=> bs!1334796 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308443 lambda!308438))))

(assert (=> bs!1334788 (not (= lambda!308443 lambda!308370))))

(assert (=> bs!1334784 (= (= lt!2275979 (regOne!31926 r!7292)) (= lambda!308443 lambda!308343))))

(assert (=> bs!1334783 (= (and (= s!2326 (_1!36107 lt!2275961)) (= lt!2275979 (reg!16036 (regOne!31926 r!7292))) (= (regTwo!31926 r!7292) lt!2275979)) (= lambda!308443 lambda!308349))))

(assert (=> bs!1334797 (= (and (= lt!2275979 (regOne!31926 lt!2275993)) (= (regTwo!31926 r!7292) (regTwo!31926 lt!2275993))) (= lambda!308443 lambda!308440))))

(assert (=> bs!1334792 (not (= lambda!308443 lambda!308393))))

(assert (=> bs!1334789 (not (= lambda!308443 lambda!308432))))

(assert (=> d!1802303 true))

(assert (=> d!1802303 true))

(assert (=> d!1802303 true))

(assert (=> d!1802303 (= (Exists!2807 lambda!308442) (Exists!2807 lambda!308443))))

(declare-fun lt!2276148 () Unit!156360)

(assert (=> d!1802303 (= lt!2276148 (choose!43194 lt!2275979 (regTwo!31926 r!7292) s!2326))))

(assert (=> d!1802303 (validRegex!7443 lt!2275979)))

(assert (=> d!1802303 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1436 lt!2275979 (regTwo!31926 r!7292) s!2326) lt!2276148)))

(declare-fun m!6666902 () Bool)

(assert (=> bs!1334798 m!6666902))

(declare-fun m!6666904 () Bool)

(assert (=> bs!1334798 m!6666904))

(declare-fun m!6666906 () Bool)

(assert (=> bs!1334798 m!6666906))

(assert (=> bs!1334798 m!6666208))

(assert (=> b!5712345 d!1802303))

(declare-fun b!5713360 () Bool)

(declare-fun e!3513847 () List!63420)

(assert (=> b!5713360 (= e!3513847 (_2!36107 lt!2275961))))

(declare-fun b!5713362 () Bool)

(declare-fun res!2412050 () Bool)

(declare-fun e!3513846 () Bool)

(assert (=> b!5713362 (=> (not res!2412050) (not e!3513846))))

(declare-fun lt!2276149 () List!63420)

(assert (=> b!5713362 (= res!2412050 (= (size!40021 lt!2276149) (+ (size!40021 (_1!36107 lt!2275961)) (size!40021 (_2!36107 lt!2275961)))))))

(declare-fun b!5713361 () Bool)

(assert (=> b!5713361 (= e!3513847 (Cons!63296 (h!69744 (_1!36107 lt!2275961)) (++!13899 (t!376740 (_1!36107 lt!2275961)) (_2!36107 lt!2275961))))))

(declare-fun b!5713363 () Bool)

(assert (=> b!5713363 (= e!3513846 (or (not (= (_2!36107 lt!2275961) Nil!63296)) (= lt!2276149 (_1!36107 lt!2275961))))))

(declare-fun d!1802305 () Bool)

(assert (=> d!1802305 e!3513846))

(declare-fun res!2412051 () Bool)

(assert (=> d!1802305 (=> (not res!2412051) (not e!3513846))))

(assert (=> d!1802305 (= res!2412051 (= (content!11496 lt!2276149) ((_ map or) (content!11496 (_1!36107 lt!2275961)) (content!11496 (_2!36107 lt!2275961)))))))

(assert (=> d!1802305 (= lt!2276149 e!3513847)))

(declare-fun c!1007193 () Bool)

(assert (=> d!1802305 (= c!1007193 ((_ is Nil!63296) (_1!36107 lt!2275961)))))

(assert (=> d!1802305 (= (++!13899 (_1!36107 lt!2275961) (_2!36107 lt!2275961)) lt!2276149)))

(assert (= (and d!1802305 c!1007193) b!5713360))

(assert (= (and d!1802305 (not c!1007193)) b!5713361))

(assert (= (and d!1802305 res!2412051) b!5713362))

(assert (= (and b!5713362 res!2412050) b!5713363))

(declare-fun m!6666908 () Bool)

(assert (=> b!5713362 m!6666908))

(declare-fun m!6666910 () Bool)

(assert (=> b!5713362 m!6666910))

(assert (=> b!5713362 m!6666474))

(declare-fun m!6666912 () Bool)

(assert (=> b!5713361 m!6666912))

(declare-fun m!6666914 () Bool)

(assert (=> d!1802305 m!6666914))

(declare-fun m!6666916 () Bool)

(assert (=> d!1802305 m!6666916))

(assert (=> d!1802305 m!6666482))

(assert (=> b!5712345 d!1802305))

(declare-fun d!1802307 () Bool)

(assert (=> d!1802307 (= (get!21820 lt!2275994) (v!51770 lt!2275994))))

(assert (=> b!5712345 d!1802307))

(declare-fun d!1802309 () Bool)

(assert (=> d!1802309 (= (Exists!2807 lambda!308345) (choose!43186 lambda!308345))))

(declare-fun bs!1334799 () Bool)

(assert (= bs!1334799 d!1802309))

(declare-fun m!6666918 () Bool)

(assert (=> bs!1334799 m!6666918))

(assert (=> b!5712345 d!1802309))

(declare-fun call!436159 () (InoxSet Context!10182))

(declare-fun b!5713364 () Bool)

(declare-fun e!3513850 () (InoxSet Context!10182))

(assert (=> b!5713364 (= e!3513850 ((_ map or) call!436159 (derivationStepZipperUp!975 (Context!10183 (t!376741 (exprs!5591 lt!2275966))) (h!69744 s!2326))))))

(declare-fun b!5713365 () Bool)

(declare-fun e!3513848 () (InoxSet Context!10182))

(assert (=> b!5713365 (= e!3513848 ((as const (Array Context!10182 Bool)) false))))

(declare-fun b!5713366 () Bool)

(assert (=> b!5713366 (= e!3513848 call!436159)))

(declare-fun b!5713367 () Bool)

(assert (=> b!5713367 (= e!3513850 e!3513848)))

(declare-fun c!1007194 () Bool)

(assert (=> b!5713367 (= c!1007194 ((_ is Cons!63297) (exprs!5591 lt!2275966)))))

(declare-fun bm!436154 () Bool)

(assert (=> bm!436154 (= call!436159 (derivationStepZipperDown!1049 (h!69745 (exprs!5591 lt!2275966)) (Context!10183 (t!376741 (exprs!5591 lt!2275966))) (h!69744 s!2326)))))

(declare-fun b!5713368 () Bool)

(declare-fun e!3513849 () Bool)

(assert (=> b!5713368 (= e!3513849 (nullable!5739 (h!69745 (exprs!5591 lt!2275966))))))

(declare-fun d!1802311 () Bool)

(declare-fun c!1007195 () Bool)

(assert (=> d!1802311 (= c!1007195 e!3513849)))

(declare-fun res!2412052 () Bool)

(assert (=> d!1802311 (=> (not res!2412052) (not e!3513849))))

(assert (=> d!1802311 (= res!2412052 ((_ is Cons!63297) (exprs!5591 lt!2275966)))))

(assert (=> d!1802311 (= (derivationStepZipperUp!975 lt!2275966 (h!69744 s!2326)) e!3513850)))

(assert (= (and d!1802311 res!2412052) b!5713368))

(assert (= (and d!1802311 c!1007195) b!5713364))

(assert (= (and d!1802311 (not c!1007195)) b!5713367))

(assert (= (and b!5713367 c!1007194) b!5713366))

(assert (= (and b!5713367 (not c!1007194)) b!5713365))

(assert (= (or b!5713364 b!5713366) bm!436154))

(declare-fun m!6666920 () Bool)

(assert (=> b!5713364 m!6666920))

(declare-fun m!6666922 () Bool)

(assert (=> bm!436154 m!6666922))

(declare-fun m!6666924 () Bool)

(assert (=> b!5713368 m!6666924))

(assert (=> b!5712346 d!1802311))

(declare-fun d!1802313 () Bool)

(assert (=> d!1802313 (= (flatMap!1320 lt!2275950 lambda!308344) (choose!43196 lt!2275950 lambda!308344))))

(declare-fun bs!1334800 () Bool)

(assert (= bs!1334800 d!1802313))

(declare-fun m!6666926 () Bool)

(assert (=> bs!1334800 m!6666926))

(assert (=> b!5712346 d!1802313))

(declare-fun call!436160 () (InoxSet Context!10182))

(declare-fun b!5713369 () Bool)

(declare-fun e!3513853 () (InoxSet Context!10182))

(assert (=> b!5713369 (= e!3513853 ((_ map or) call!436160 (derivationStepZipperUp!975 (Context!10183 (t!376741 (exprs!5591 lt!2275956))) (h!69744 s!2326))))))

(declare-fun b!5713370 () Bool)

(declare-fun e!3513851 () (InoxSet Context!10182))

(assert (=> b!5713370 (= e!3513851 ((as const (Array Context!10182 Bool)) false))))

(declare-fun b!5713371 () Bool)

(assert (=> b!5713371 (= e!3513851 call!436160)))

(declare-fun b!5713372 () Bool)

(assert (=> b!5713372 (= e!3513853 e!3513851)))

(declare-fun c!1007196 () Bool)

(assert (=> b!5713372 (= c!1007196 ((_ is Cons!63297) (exprs!5591 lt!2275956)))))

(declare-fun bm!436155 () Bool)

(assert (=> bm!436155 (= call!436160 (derivationStepZipperDown!1049 (h!69745 (exprs!5591 lt!2275956)) (Context!10183 (t!376741 (exprs!5591 lt!2275956))) (h!69744 s!2326)))))

(declare-fun b!5713373 () Bool)

(declare-fun e!3513852 () Bool)

(assert (=> b!5713373 (= e!3513852 (nullable!5739 (h!69745 (exprs!5591 lt!2275956))))))

(declare-fun d!1802315 () Bool)

(declare-fun c!1007197 () Bool)

(assert (=> d!1802315 (= c!1007197 e!3513852)))

(declare-fun res!2412053 () Bool)

(assert (=> d!1802315 (=> (not res!2412053) (not e!3513852))))

(assert (=> d!1802315 (= res!2412053 ((_ is Cons!63297) (exprs!5591 lt!2275956)))))

(assert (=> d!1802315 (= (derivationStepZipperUp!975 lt!2275956 (h!69744 s!2326)) e!3513853)))

(assert (= (and d!1802315 res!2412053) b!5713373))

(assert (= (and d!1802315 c!1007197) b!5713369))

(assert (= (and d!1802315 (not c!1007197)) b!5713372))

(assert (= (and b!5713372 c!1007196) b!5713371))

(assert (= (and b!5713372 (not c!1007196)) b!5713370))

(assert (= (or b!5713369 b!5713371) bm!436155))

(declare-fun m!6666928 () Bool)

(assert (=> b!5713369 m!6666928))

(declare-fun m!6666930 () Bool)

(assert (=> bm!436155 m!6666930))

(declare-fun m!6666932 () Bool)

(assert (=> b!5713373 m!6666932))

(assert (=> b!5712346 d!1802315))

(declare-fun d!1802317 () Bool)

(declare-fun lt!2276150 () Regex!15707)

(assert (=> d!1802317 (validRegex!7443 lt!2276150)))

(assert (=> d!1802317 (= lt!2276150 (generalisedUnion!1570 (unfocusZipperList!1135 (Cons!63298 lt!2275956 Nil!63298))))))

(assert (=> d!1802317 (= (unfocusZipper!1449 (Cons!63298 lt!2275956 Nil!63298)) lt!2276150)))

(declare-fun bs!1334801 () Bool)

(assert (= bs!1334801 d!1802317))

(declare-fun m!6666934 () Bool)

(assert (=> bs!1334801 m!6666934))

(declare-fun m!6666936 () Bool)

(assert (=> bs!1334801 m!6666936))

(assert (=> bs!1334801 m!6666936))

(declare-fun m!6666938 () Bool)

(assert (=> bs!1334801 m!6666938))

(assert (=> b!5712346 d!1802317))

(declare-fun d!1802319 () Bool)

(assert (=> d!1802319 (= (flatMap!1320 lt!2275955 lambda!308344) (choose!43196 lt!2275955 lambda!308344))))

(declare-fun bs!1334802 () Bool)

(assert (= bs!1334802 d!1802319))

(declare-fun m!6666940 () Bool)

(assert (=> bs!1334802 m!6666940))

(assert (=> b!5712346 d!1802319))

(declare-fun d!1802321 () Bool)

(assert (=> d!1802321 (= (flatMap!1320 lt!2275950 lambda!308344) (dynLambda!24770 lambda!308344 lt!2275956))))

(declare-fun lt!2276151 () Unit!156360)

(assert (=> d!1802321 (= lt!2276151 (choose!43197 lt!2275950 lt!2275956 lambda!308344))))

(assert (=> d!1802321 (= lt!2275950 (store ((as const (Array Context!10182 Bool)) false) lt!2275956 true))))

(assert (=> d!1802321 (= (lemmaFlatMapOnSingletonSet!852 lt!2275950 lt!2275956 lambda!308344) lt!2276151)))

(declare-fun b_lambda!215931 () Bool)

(assert (=> (not b_lambda!215931) (not d!1802321)))

(declare-fun bs!1334803 () Bool)

(assert (= bs!1334803 d!1802321))

(assert (=> bs!1334803 m!6665900))

(declare-fun m!6666942 () Bool)

(assert (=> bs!1334803 m!6666942))

(declare-fun m!6666944 () Bool)

(assert (=> bs!1334803 m!6666944))

(assert (=> bs!1334803 m!6665912))

(assert (=> b!5712346 d!1802321))

(declare-fun d!1802323 () Bool)

(assert (=> d!1802323 (= (flatMap!1320 lt!2275955 lambda!308344) (dynLambda!24770 lambda!308344 lt!2275966))))

(declare-fun lt!2276152 () Unit!156360)

(assert (=> d!1802323 (= lt!2276152 (choose!43197 lt!2275955 lt!2275966 lambda!308344))))

(assert (=> d!1802323 (= lt!2275955 (store ((as const (Array Context!10182 Bool)) false) lt!2275966 true))))

(assert (=> d!1802323 (= (lemmaFlatMapOnSingletonSet!852 lt!2275955 lt!2275966 lambda!308344) lt!2276152)))

(declare-fun b_lambda!215933 () Bool)

(assert (=> (not b_lambda!215933) (not d!1802323)))

(declare-fun bs!1334804 () Bool)

(assert (= bs!1334804 d!1802323))

(assert (=> bs!1334804 m!6665904))

(declare-fun m!6666946 () Bool)

(assert (=> bs!1334804 m!6666946))

(declare-fun m!6666948 () Bool)

(assert (=> bs!1334804 m!6666948))

(assert (=> bs!1334804 m!6665914))

(assert (=> b!5712346 d!1802323))

(declare-fun condSetEmpty!38261 () Bool)

(assert (=> setNonEmpty!38255 (= condSetEmpty!38261 (= setRest!38255 ((as const (Array Context!10182 Bool)) false)))))

(declare-fun setRes!38261 () Bool)

(assert (=> setNonEmpty!38255 (= tp!1583112 setRes!38261)))

(declare-fun setIsEmpty!38261 () Bool)

(assert (=> setIsEmpty!38261 setRes!38261))

(declare-fun setElem!38261 () Context!10182)

(declare-fun e!3513856 () Bool)

(declare-fun tp!1583181 () Bool)

(declare-fun setNonEmpty!38261 () Bool)

(assert (=> setNonEmpty!38261 (= setRes!38261 (and tp!1583181 (inv!82514 setElem!38261) e!3513856))))

(declare-fun setRest!38261 () (InoxSet Context!10182))

(assert (=> setNonEmpty!38261 (= setRest!38255 ((_ map or) (store ((as const (Array Context!10182 Bool)) false) setElem!38261 true) setRest!38261))))

(declare-fun b!5713378 () Bool)

(declare-fun tp!1583182 () Bool)

(assert (=> b!5713378 (= e!3513856 tp!1583182)))

(assert (= (and setNonEmpty!38255 condSetEmpty!38261) setIsEmpty!38261))

(assert (= (and setNonEmpty!38255 (not condSetEmpty!38261)) setNonEmpty!38261))

(assert (= setNonEmpty!38261 b!5713378))

(declare-fun m!6666950 () Bool)

(assert (=> setNonEmpty!38261 m!6666950))

(declare-fun b!5713383 () Bool)

(declare-fun e!3513859 () Bool)

(declare-fun tp!1583187 () Bool)

(declare-fun tp!1583188 () Bool)

(assert (=> b!5713383 (= e!3513859 (and tp!1583187 tp!1583188))))

(assert (=> b!5712343 (= tp!1583115 e!3513859)))

(assert (= (and b!5712343 ((_ is Cons!63297) (exprs!5591 (h!69746 zl!343)))) b!5713383))

(declare-fun b!5713388 () Bool)

(declare-fun e!3513862 () Bool)

(declare-fun tp!1583191 () Bool)

(assert (=> b!5713388 (= e!3513862 (and tp_is_empty!40667 tp!1583191))))

(assert (=> b!5712339 (= tp!1583110 e!3513862)))

(assert (= (and b!5712339 ((_ is Cons!63296) (t!376740 s!2326))) b!5713388))

(declare-fun b!5713402 () Bool)

(declare-fun e!3513865 () Bool)

(declare-fun tp!1583205 () Bool)

(declare-fun tp!1583202 () Bool)

(assert (=> b!5713402 (= e!3513865 (and tp!1583205 tp!1583202))))

(assert (=> b!5712355 (= tp!1583111 e!3513865)))

(declare-fun b!5713399 () Bool)

(assert (=> b!5713399 (= e!3513865 tp_is_empty!40667)))

(declare-fun b!5713401 () Bool)

(declare-fun tp!1583204 () Bool)

(assert (=> b!5713401 (= e!3513865 tp!1583204)))

(declare-fun b!5713400 () Bool)

(declare-fun tp!1583206 () Bool)

(declare-fun tp!1583203 () Bool)

(assert (=> b!5713400 (= e!3513865 (and tp!1583206 tp!1583203))))

(assert (= (and b!5712355 ((_ is ElementMatch!15707) (regOne!31926 r!7292))) b!5713399))

(assert (= (and b!5712355 ((_ is Concat!24552) (regOne!31926 r!7292))) b!5713400))

(assert (= (and b!5712355 ((_ is Star!15707) (regOne!31926 r!7292))) b!5713401))

(assert (= (and b!5712355 ((_ is Union!15707) (regOne!31926 r!7292))) b!5713402))

(declare-fun b!5713406 () Bool)

(declare-fun e!3513866 () Bool)

(declare-fun tp!1583210 () Bool)

(declare-fun tp!1583207 () Bool)

(assert (=> b!5713406 (= e!3513866 (and tp!1583210 tp!1583207))))

(assert (=> b!5712355 (= tp!1583116 e!3513866)))

(declare-fun b!5713403 () Bool)

(assert (=> b!5713403 (= e!3513866 tp_is_empty!40667)))

(declare-fun b!5713405 () Bool)

(declare-fun tp!1583209 () Bool)

(assert (=> b!5713405 (= e!3513866 tp!1583209)))

(declare-fun b!5713404 () Bool)

(declare-fun tp!1583211 () Bool)

(declare-fun tp!1583208 () Bool)

(assert (=> b!5713404 (= e!3513866 (and tp!1583211 tp!1583208))))

(assert (= (and b!5712355 ((_ is ElementMatch!15707) (regTwo!31926 r!7292))) b!5713403))

(assert (= (and b!5712355 ((_ is Concat!24552) (regTwo!31926 r!7292))) b!5713404))

(assert (= (and b!5712355 ((_ is Star!15707) (regTwo!31926 r!7292))) b!5713405))

(assert (= (and b!5712355 ((_ is Union!15707) (regTwo!31926 r!7292))) b!5713406))

(declare-fun b!5713410 () Bool)

(declare-fun e!3513867 () Bool)

(declare-fun tp!1583215 () Bool)

(declare-fun tp!1583212 () Bool)

(assert (=> b!5713410 (= e!3513867 (and tp!1583215 tp!1583212))))

(assert (=> b!5712361 (= tp!1583118 e!3513867)))

(declare-fun b!5713407 () Bool)

(assert (=> b!5713407 (= e!3513867 tp_is_empty!40667)))

(declare-fun b!5713409 () Bool)

(declare-fun tp!1583214 () Bool)

(assert (=> b!5713409 (= e!3513867 tp!1583214)))

(declare-fun b!5713408 () Bool)

(declare-fun tp!1583216 () Bool)

(declare-fun tp!1583213 () Bool)

(assert (=> b!5713408 (= e!3513867 (and tp!1583216 tp!1583213))))

(assert (= (and b!5712361 ((_ is ElementMatch!15707) (reg!16036 r!7292))) b!5713407))

(assert (= (and b!5712361 ((_ is Concat!24552) (reg!16036 r!7292))) b!5713408))

(assert (= (and b!5712361 ((_ is Star!15707) (reg!16036 r!7292))) b!5713409))

(assert (= (and b!5712361 ((_ is Union!15707) (reg!16036 r!7292))) b!5713410))

(declare-fun b!5713411 () Bool)

(declare-fun e!3513868 () Bool)

(declare-fun tp!1583217 () Bool)

(declare-fun tp!1583218 () Bool)

(assert (=> b!5713411 (= e!3513868 (and tp!1583217 tp!1583218))))

(assert (=> b!5712350 (= tp!1583109 e!3513868)))

(assert (= (and b!5712350 ((_ is Cons!63297) (exprs!5591 setElem!38255))) b!5713411))

(declare-fun b!5713415 () Bool)

(declare-fun e!3513869 () Bool)

(declare-fun tp!1583222 () Bool)

(declare-fun tp!1583219 () Bool)

(assert (=> b!5713415 (= e!3513869 (and tp!1583222 tp!1583219))))

(assert (=> b!5712341 (= tp!1583113 e!3513869)))

(declare-fun b!5713412 () Bool)

(assert (=> b!5713412 (= e!3513869 tp_is_empty!40667)))

(declare-fun b!5713414 () Bool)

(declare-fun tp!1583221 () Bool)

(assert (=> b!5713414 (= e!3513869 tp!1583221)))

(declare-fun b!5713413 () Bool)

(declare-fun tp!1583223 () Bool)

(declare-fun tp!1583220 () Bool)

(assert (=> b!5713413 (= e!3513869 (and tp!1583223 tp!1583220))))

(assert (= (and b!5712341 ((_ is ElementMatch!15707) (regOne!31927 r!7292))) b!5713412))

(assert (= (and b!5712341 ((_ is Concat!24552) (regOne!31927 r!7292))) b!5713413))

(assert (= (and b!5712341 ((_ is Star!15707) (regOne!31927 r!7292))) b!5713414))

(assert (= (and b!5712341 ((_ is Union!15707) (regOne!31927 r!7292))) b!5713415))

(declare-fun b!5713419 () Bool)

(declare-fun e!3513870 () Bool)

(declare-fun tp!1583227 () Bool)

(declare-fun tp!1583224 () Bool)

(assert (=> b!5713419 (= e!3513870 (and tp!1583227 tp!1583224))))

(assert (=> b!5712341 (= tp!1583117 e!3513870)))

(declare-fun b!5713416 () Bool)

(assert (=> b!5713416 (= e!3513870 tp_is_empty!40667)))

(declare-fun b!5713418 () Bool)

(declare-fun tp!1583226 () Bool)

(assert (=> b!5713418 (= e!3513870 tp!1583226)))

(declare-fun b!5713417 () Bool)

(declare-fun tp!1583228 () Bool)

(declare-fun tp!1583225 () Bool)

(assert (=> b!5713417 (= e!3513870 (and tp!1583228 tp!1583225))))

(assert (= (and b!5712341 ((_ is ElementMatch!15707) (regTwo!31927 r!7292))) b!5713416))

(assert (= (and b!5712341 ((_ is Concat!24552) (regTwo!31927 r!7292))) b!5713417))

(assert (= (and b!5712341 ((_ is Star!15707) (regTwo!31927 r!7292))) b!5713418))

(assert (= (and b!5712341 ((_ is Union!15707) (regTwo!31927 r!7292))) b!5713419))

(declare-fun b!5713427 () Bool)

(declare-fun e!3513876 () Bool)

(declare-fun tp!1583233 () Bool)

(assert (=> b!5713427 (= e!3513876 tp!1583233)))

(declare-fun e!3513875 () Bool)

(declare-fun b!5713426 () Bool)

(declare-fun tp!1583234 () Bool)

(assert (=> b!5713426 (= e!3513875 (and (inv!82514 (h!69746 (t!376742 zl!343))) e!3513876 tp!1583234))))

(assert (=> b!5712356 (= tp!1583114 e!3513875)))

(assert (= b!5713426 b!5713427))

(assert (= (and b!5712356 ((_ is Cons!63298) (t!376742 zl!343))) b!5713426))

(declare-fun m!6666952 () Bool)

(assert (=> b!5713426 m!6666952))

(declare-fun b_lambda!215935 () Bool)

(assert (= b_lambda!215919 (or b!5712340 b_lambda!215935)))

(declare-fun bs!1334805 () Bool)

(declare-fun d!1802325 () Bool)

(assert (= bs!1334805 (and d!1802325 b!5712340)))

(assert (=> bs!1334805 (= (dynLambda!24770 lambda!308344 lt!2275989) (derivationStepZipperUp!975 lt!2275989 (h!69744 s!2326)))))

(assert (=> bs!1334805 m!6665878))

(assert (=> d!1802193 d!1802325))

(declare-fun b_lambda!215937 () Bool)

(assert (= b_lambda!215933 (or b!5712340 b_lambda!215937)))

(declare-fun bs!1334806 () Bool)

(declare-fun d!1802327 () Bool)

(assert (= bs!1334806 (and d!1802327 b!5712340)))

(assert (=> bs!1334806 (= (dynLambda!24770 lambda!308344 lt!2275966) (derivationStepZipperUp!975 lt!2275966 (h!69744 s!2326)))))

(assert (=> bs!1334806 m!6665908))

(assert (=> d!1802323 d!1802327))

(declare-fun b_lambda!215939 () Bool)

(assert (= b_lambda!215921 (or b!5712340 b_lambda!215939)))

(declare-fun bs!1334807 () Bool)

(declare-fun d!1802329 () Bool)

(assert (= bs!1334807 (and d!1802329 b!5712340)))

(assert (=> bs!1334807 (= (dynLambda!24770 lambda!308344 (h!69746 zl!343)) (derivationStepZipperUp!975 (h!69746 zl!343) (h!69744 s!2326)))))

(assert (=> bs!1334807 m!6665830))

(assert (=> d!1802219 d!1802329))

(declare-fun b_lambda!215941 () Bool)

(assert (= b_lambda!215931 (or b!5712340 b_lambda!215941)))

(declare-fun bs!1334808 () Bool)

(declare-fun d!1802331 () Bool)

(assert (= bs!1334808 (and d!1802331 b!5712340)))

(assert (=> bs!1334808 (= (dynLambda!24770 lambda!308344 lt!2275956) (derivationStepZipperUp!975 lt!2275956 (h!69744 s!2326)))))

(assert (=> bs!1334808 m!6665906))

(assert (=> d!1802321 d!1802331))

(check-sat tp_is_empty!40667 (not b!5713055) (not bm!436155) (not b!5713195) (not b!5713059) (not b!5712938) (not d!1802171) (not b!5713291) (not d!1802293) (not bm!436114) (not b!5712657) (not b!5713325) (not d!1802303) (not b!5712558) (not b!5713052) (not d!1802165) (not bm!436067) (not bm!436153) (not bm!436148) (not d!1802015) (not bm!436154) (not b!5713158) (not b!5713358) (not b!5713266) (not b!5713071) (not b!5713151) (not b!5713411) (not b!5713353) (not b!5712818) (not d!1802143) (not b!5712905) (not b!5713413) (not bm!436143) (not b!5712817) (not bm!436093) (not b!5713419) (not b!5712687) (not b!5713406) (not bm!436151) (not d!1802099) (not b!5713200) (not d!1802319) (not b!5713359) (not b!5712515) (not d!1802287) (not b!5713400) (not b!5712513) (not bm!436139) (not d!1802047) (not b!5713402) (not b!5713373) (not b!5712814) (not d!1802245) (not d!1802043) (not d!1802321) (not d!1802101) (not b!5713265) (not bm!436146) (not b!5713408) (not d!1802273) (not b!5713405) (not setNonEmpty!38261) (not b!5713303) (not d!1802049) (not b!5712559) (not bm!436149) (not d!1802045) (not d!1802295) (not bm!436132) (not d!1802155) (not d!1802253) (not b!5713310) (not b!5712986) (not d!1802195) (not b!5712881) (not d!1802317) (not b!5712915) (not bm!436138) (not b!5713275) (not d!1802301) (not bm!436116) (not b!5713271) (not d!1802271) (not b!5712520) (not d!1802305) (not bm!436137) (not b!5712952) (not d!1802243) (not b!5713050) (not d!1802255) (not b!5712556) (not b!5713364) (not bm!436109) (not d!1802309) (not b!5712947) (not b!5713316) (not b!5712906) (not b!5712948) (not d!1802213) (not bs!1334808) (not b!5712561) (not b!5712813) (not b!5712562) (not b_lambda!215937) (not b!5713321) (not b!5713329) (not b!5713313) (not b!5713008) (not b!5712516) (not d!1802041) (not b!5712911) (not bm!436150) (not bs!1334807) (not bm!436086) (not bm!436145) (not b!5713301) (not b!5713362) (not b!5713347) (not bs!1334805) (not b!5713053) (not b!5713330) (not b!5713368) (not b!5713414) (not b!5713401) (not b!5713157) (not d!1802123) (not b!5713155) (not b!5713152) (not b!5713134) (not bm!436115) (not b!5713323) (not b!5713156) (not b!5712563) (not b!5713315) (not b!5713357) (not d!1802069) (not b!5712888) (not b_lambda!215935) (not b!5712518) (not d!1802095) (not d!1802079) (not b!5713342) (not d!1802057) (not b!5712913) (not b!5713299) (not d!1802163) (not b!5713409) (not d!1802141) (not bs!1334806) (not b!5712880) (not b!5712951) (not b!5713427) (not b!5713070) (not b!5712560) (not b!5713311) (not b!5713004) (not b!5713054) (not b!5713064) (not bm!436152) (not b!5713273) (not b!5713415) (not d!1802135) (not b!5713404) (not b!5713383) (not d!1802125) (not d!1802193) (not d!1802323) (not b!5713339) (not b!5712523) (not b!5713327) (not b!5713263) (not d!1802313) (not b!5713116) (not b!5712820) (not d!1802211) (not d!1802197) (not d!1802105) (not b!5712557) (not b!5713378) (not b!5712890) (not b!5713293) (not b!5713426) (not d!1802131) (not b!5712519) (not bm!436136) (not b!5713066) (not d!1802107) (not b!5713388) (not b!5713144) (not b!5713138) (not b!5713361) (not d!1802055) (not b!5712517) (not d!1802263) (not d!1802289) (not b!5713356) (not b!5713294) (not b!5713335) (not b!5712570) (not b!5712662) (not d!1802275) (not d!1802281) (not b!5712939) (not d!1802249) (not d!1802151) (not b!5712886) (not b!5713369) (not b!5713352) (not d!1802219) (not b!5713417) (not d!1802299) (not b!5713337) (not b!5713057) (not bm!436110) (not b!5712903) (not b!5713418) (not b!5712688) (not d!1802127) (not b_lambda!215939) (not b!5713410) (not b!5712878) (not b!5713075) (not d!1802297) (not d!1802265) (not bm!436066) (not d!1802053) (not d!1802203) (not bm!436131) (not b!5712819) (not b_lambda!215941) (not d!1802185))
(check-sat)
