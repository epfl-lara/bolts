; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588356 () Bool)

(assert start!588356)

(declare-fun b!5713769 () Bool)

(assert (=> b!5713769 true))

(assert (=> b!5713769 true))

(declare-fun lambda!308513 () Int)

(declare-fun lambda!308512 () Int)

(assert (=> b!5713769 (not (= lambda!308513 lambda!308512))))

(assert (=> b!5713769 true))

(assert (=> b!5713769 true))

(declare-fun b!5713772 () Bool)

(assert (=> b!5713772 true))

(declare-fun bs!1334814 () Bool)

(declare-fun b!5713760 () Bool)

(assert (= bs!1334814 (and b!5713760 b!5713769)))

(declare-datatypes ((C!31688 0))(
  ( (C!31689 (val!25546 Int)) )
))
(declare-datatypes ((Regex!15709 0))(
  ( (ElementMatch!15709 (c!1007223 C!31688)) (Concat!24554 (regOne!31930 Regex!15709) (regTwo!31930 Regex!15709)) (EmptyExpr!15709) (Star!15709 (reg!16038 Regex!15709)) (EmptyLang!15709) (Union!15709 (regOne!31931 Regex!15709) (regTwo!31931 Regex!15709)) )
))
(declare-fun r!7292 () Regex!15709)

(declare-fun lt!2276410 () Regex!15709)

(declare-fun lambda!308515 () Int)

(assert (=> bs!1334814 (= (= lt!2276410 (regOne!31930 r!7292)) (= lambda!308515 lambda!308512))))

(assert (=> bs!1334814 (not (= lambda!308515 lambda!308513))))

(assert (=> b!5713760 true))

(assert (=> b!5713760 true))

(assert (=> b!5713760 true))

(declare-fun lambda!308516 () Int)

(assert (=> bs!1334814 (not (= lambda!308516 lambda!308512))))

(assert (=> bs!1334814 (= (= lt!2276410 (regOne!31930 r!7292)) (= lambda!308516 lambda!308513))))

(assert (=> b!5713760 (not (= lambda!308516 lambda!308515))))

(assert (=> b!5713760 true))

(assert (=> b!5713760 true))

(assert (=> b!5713760 true))

(declare-fun bs!1334815 () Bool)

(declare-fun b!5713748 () Bool)

(assert (= bs!1334815 (and b!5713748 b!5713769)))

(declare-datatypes ((List!63426 0))(
  ( (Nil!63302) (Cons!63302 (h!69750 C!31688) (t!376746 List!63426)) )
))
(declare-fun s!2326 () List!63426)

(declare-fun lambda!308517 () Int)

(declare-datatypes ((tuple2!65612 0))(
  ( (tuple2!65613 (_1!36109 List!63426) (_2!36109 List!63426)) )
))
(declare-fun lt!2276398 () tuple2!65612)

(assert (=> bs!1334815 (= (and (= (_1!36109 lt!2276398) s!2326) (= (reg!16038 (regOne!31930 r!7292)) (regOne!31930 r!7292)) (= lt!2276410 (regTwo!31930 r!7292))) (= lambda!308517 lambda!308512))))

(assert (=> bs!1334815 (not (= lambda!308517 lambda!308513))))

(declare-fun bs!1334816 () Bool)

(assert (= bs!1334816 (and b!5713748 b!5713760)))

(assert (=> bs!1334816 (= (and (= (_1!36109 lt!2276398) s!2326) (= (reg!16038 (regOne!31930 r!7292)) lt!2276410) (= lt!2276410 (regTwo!31930 r!7292))) (= lambda!308517 lambda!308515))))

(assert (=> bs!1334816 (not (= lambda!308517 lambda!308516))))

(assert (=> b!5713748 true))

(assert (=> b!5713748 true))

(assert (=> b!5713748 true))

(declare-fun lambda!308518 () Int)

(assert (=> bs!1334815 (not (= lambda!308518 lambda!308512))))

(assert (=> b!5713748 (not (= lambda!308518 lambda!308517))))

(assert (=> bs!1334816 (not (= lambda!308518 lambda!308516))))

(assert (=> bs!1334815 (not (= lambda!308518 lambda!308513))))

(assert (=> bs!1334816 (not (= lambda!308518 lambda!308515))))

(assert (=> b!5713748 true))

(assert (=> b!5713748 true))

(assert (=> b!5713748 true))

(declare-fun lambda!308519 () Int)

(assert (=> b!5713748 (not (= lambda!308519 lambda!308518))))

(assert (=> bs!1334815 (not (= lambda!308519 lambda!308512))))

(assert (=> b!5713748 (not (= lambda!308519 lambda!308517))))

(assert (=> bs!1334816 (= (and (= (_1!36109 lt!2276398) s!2326) (= (reg!16038 (regOne!31930 r!7292)) lt!2276410) (= lt!2276410 (regTwo!31930 r!7292))) (= lambda!308519 lambda!308516))))

(assert (=> bs!1334815 (= (and (= (_1!36109 lt!2276398) s!2326) (= (reg!16038 (regOne!31930 r!7292)) (regOne!31930 r!7292)) (= lt!2276410 (regTwo!31930 r!7292))) (= lambda!308519 lambda!308513))))

(assert (=> bs!1334816 (not (= lambda!308519 lambda!308515))))

(assert (=> b!5713748 true))

(assert (=> b!5713748 true))

(assert (=> b!5713748 true))

(declare-fun e!3514042 () Bool)

(declare-fun e!3514053 () Bool)

(assert (=> b!5713748 (= e!3514042 e!3514053)))

(declare-fun res!2412344 () Bool)

(assert (=> b!5713748 (=> res!2412344 e!3514053)))

(declare-fun lt!2276411 () List!63426)

(assert (=> b!5713748 (= res!2412344 (not (= (_1!36109 lt!2276398) lt!2276411)))))

(declare-fun lt!2276406 () tuple2!65612)

(declare-fun ++!13901 (List!63426 List!63426) List!63426)

(assert (=> b!5713748 (= lt!2276411 (++!13901 (_1!36109 lt!2276406) (_2!36109 lt!2276406)))))

(declare-datatypes ((Option!15718 0))(
  ( (None!15717) (Some!15717 (v!51772 tuple2!65612)) )
))
(declare-fun lt!2276443 () Option!15718)

(declare-fun get!21823 (Option!15718) tuple2!65612)

(assert (=> b!5713748 (= lt!2276406 (get!21823 lt!2276443))))

(declare-fun Exists!2809 (Int) Bool)

(assert (=> b!5713748 (= (Exists!2809 lambda!308517) (Exists!2809 lambda!308519))))

(declare-datatypes ((Unit!156368 0))(
  ( (Unit!156369) )
))
(declare-fun lt!2276442 () Unit!156368)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1438 (Regex!15709 Regex!15709 List!63426) Unit!156368)

(assert (=> b!5713748 (= lt!2276442 (lemmaExistCutMatchRandMatchRSpecEquivalent!1438 (reg!16038 (regOne!31930 r!7292)) lt!2276410 (_1!36109 lt!2276398)))))

(assert (=> b!5713748 (= (Exists!2809 lambda!308517) (Exists!2809 lambda!308518))))

(declare-fun lt!2276420 () Unit!156368)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!546 (Regex!15709 List!63426) Unit!156368)

(assert (=> b!5713748 (= lt!2276420 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!546 (reg!16038 (regOne!31930 r!7292)) (_1!36109 lt!2276398)))))

(declare-fun isDefined!12421 (Option!15718) Bool)

(assert (=> b!5713748 (= (isDefined!12421 lt!2276443) (Exists!2809 lambda!308517))))

(declare-fun findConcatSeparation!2132 (Regex!15709 Regex!15709 List!63426 List!63426 List!63426) Option!15718)

(assert (=> b!5713748 (= lt!2276443 (findConcatSeparation!2132 (reg!16038 (regOne!31930 r!7292)) lt!2276410 Nil!63302 (_1!36109 lt!2276398) (_1!36109 lt!2276398)))))

(declare-fun lt!2276435 () Unit!156368)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1896 (Regex!15709 Regex!15709 List!63426) Unit!156368)

(assert (=> b!5713748 (= lt!2276435 (lemmaFindConcatSeparationEquivalentToExists!1896 (reg!16038 (regOne!31930 r!7292)) lt!2276410 (_1!36109 lt!2276398)))))

(declare-fun matchRSpec!2812 (Regex!15709 List!63426) Bool)

(assert (=> b!5713748 (matchRSpec!2812 lt!2276410 (_1!36109 lt!2276398))))

(declare-fun lt!2276424 () Unit!156368)

(declare-fun mainMatchTheorem!2812 (Regex!15709 List!63426) Unit!156368)

(assert (=> b!5713748 (= lt!2276424 (mainMatchTheorem!2812 lt!2276410 (_1!36109 lt!2276398)))))

(declare-fun b!5713749 () Bool)

(declare-fun e!3514048 () Bool)

(declare-fun e!3514036 () Bool)

(assert (=> b!5713749 (= e!3514048 (not e!3514036))))

(declare-fun res!2412330 () Bool)

(assert (=> b!5713749 (=> res!2412330 e!3514036)))

(declare-datatypes ((List!63427 0))(
  ( (Nil!63303) (Cons!63303 (h!69751 Regex!15709) (t!376747 List!63427)) )
))
(declare-datatypes ((Context!10186 0))(
  ( (Context!10187 (exprs!5593 List!63427)) )
))
(declare-datatypes ((List!63428 0))(
  ( (Nil!63304) (Cons!63304 (h!69752 Context!10186) (t!376748 List!63428)) )
))
(declare-fun zl!343 () List!63428)

(get-info :version)

(assert (=> b!5713749 (= res!2412330 (not ((_ is Cons!63304) zl!343)))))

(declare-fun lt!2276423 () Bool)

(declare-fun lt!2276407 () Bool)

(assert (=> b!5713749 (= lt!2276423 lt!2276407)))

(assert (=> b!5713749 (= lt!2276407 (matchRSpec!2812 r!7292 s!2326))))

(declare-fun matchR!7894 (Regex!15709 List!63426) Bool)

(assert (=> b!5713749 (= lt!2276423 (matchR!7894 r!7292 s!2326))))

(declare-fun lt!2276415 () Unit!156368)

(assert (=> b!5713749 (= lt!2276415 (mainMatchTheorem!2812 r!7292 s!2326))))

(declare-fun b!5713750 () Bool)

(declare-fun e!3514037 () Bool)

(assert (=> b!5713750 (= e!3514037 true)))

(declare-fun lt!2276431 () Regex!15709)

(declare-fun lt!2276429 () List!63426)

(assert (=> b!5713750 (matchR!7894 lt!2276431 lt!2276429)))

(declare-fun lt!2276401 () Unit!156368)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!264 (Regex!15709 Regex!15709 List!63426 List!63426) Unit!156368)

(assert (=> b!5713750 (= lt!2276401 (lemmaTwoRegexMatchThenConcatMatchesConcatString!264 lt!2276410 (regTwo!31930 r!7292) (_2!36109 lt!2276406) (_2!36109 lt!2276398)))))

(assert (=> b!5713750 (matchR!7894 lt!2276410 lt!2276411)))

(declare-fun lt!2276399 () Unit!156368)

(declare-fun lemmaStarApp!88 (Regex!15709 List!63426 List!63426) Unit!156368)

(assert (=> b!5713750 (= lt!2276399 (lemmaStarApp!88 (reg!16038 (regOne!31930 r!7292)) (_1!36109 lt!2276406) (_2!36109 lt!2276406)))))

(declare-fun b!5713751 () Bool)

(declare-fun res!2412332 () Bool)

(assert (=> b!5713751 (=> res!2412332 e!3514036)))

(declare-fun isEmpty!35174 (List!63428) Bool)

(assert (=> b!5713751 (= res!2412332 (not (isEmpty!35174 (t!376748 zl!343))))))

(declare-fun b!5713752 () Bool)

(declare-fun e!3514051 () Bool)

(declare-fun nullable!5741 (Regex!15709) Bool)

(assert (=> b!5713752 (= e!3514051 (nullable!5741 (regOne!31930 (regOne!31930 r!7292))))))

(declare-fun b!5713753 () Bool)

(declare-fun res!2412339 () Bool)

(assert (=> b!5713753 (=> res!2412339 e!3514036)))

(assert (=> b!5713753 (= res!2412339 (not ((_ is Cons!63303) (exprs!5593 (h!69752 zl!343)))))))

(declare-fun res!2412318 () Bool)

(declare-fun e!3514052 () Bool)

(assert (=> start!588356 (=> (not res!2412318) (not e!3514052))))

(declare-fun validRegex!7445 (Regex!15709) Bool)

(assert (=> start!588356 (= res!2412318 (validRegex!7445 r!7292))))

(assert (=> start!588356 e!3514052))

(declare-fun e!3514058 () Bool)

(assert (=> start!588356 e!3514058))

(declare-fun condSetEmpty!38267 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10186))

(assert (=> start!588356 (= condSetEmpty!38267 (= z!1189 ((as const (Array Context!10186 Bool)) false)))))

(declare-fun setRes!38267 () Bool)

(assert (=> start!588356 setRes!38267))

(declare-fun e!3514039 () Bool)

(assert (=> start!588356 e!3514039))

(declare-fun e!3514038 () Bool)

(assert (=> start!588356 e!3514038))

(declare-fun b!5713754 () Bool)

(declare-fun e!3514047 () Unit!156368)

(declare-fun Unit!156370 () Unit!156368)

(assert (=> b!5713754 (= e!3514047 Unit!156370)))

(declare-fun b!5713755 () Bool)

(declare-fun Unit!156371 () Unit!156368)

(assert (=> b!5713755 (= e!3514047 Unit!156371)))

(declare-fun lt!2276413 () Unit!156368)

(declare-fun lt!2276419 () (InoxSet Context!10186))

(declare-fun lt!2276433 () (InoxSet Context!10186))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!734 ((InoxSet Context!10186) (InoxSet Context!10186) List!63426) Unit!156368)

(assert (=> b!5713755 (= lt!2276413 (lemmaZipperConcatMatchesSameAsBothZippers!734 lt!2276419 lt!2276433 (t!376746 s!2326)))))

(declare-fun res!2412333 () Bool)

(declare-fun matchZipper!1847 ((InoxSet Context!10186) List!63426) Bool)

(assert (=> b!5713755 (= res!2412333 (matchZipper!1847 lt!2276419 (t!376746 s!2326)))))

(declare-fun e!3514044 () Bool)

(assert (=> b!5713755 (=> res!2412333 e!3514044)))

(assert (=> b!5713755 (= (matchZipper!1847 ((_ map or) lt!2276419 lt!2276433) (t!376746 s!2326)) e!3514044)))

(declare-fun b!5713756 () Bool)

(declare-fun res!2412319 () Bool)

(assert (=> b!5713756 (=> res!2412319 e!3514036)))

(assert (=> b!5713756 (= res!2412319 (or ((_ is EmptyExpr!15709) r!7292) ((_ is EmptyLang!15709) r!7292) ((_ is ElementMatch!15709) r!7292) ((_ is Union!15709) r!7292) (not ((_ is Concat!24554) r!7292))))))

(declare-fun b!5713757 () Bool)

(declare-fun e!3514050 () Bool)

(declare-fun e!3514045 () Bool)

(assert (=> b!5713757 (= e!3514050 e!3514045)))

(declare-fun res!2412342 () Bool)

(assert (=> b!5713757 (=> res!2412342 e!3514045)))

(declare-fun lt!2276404 () (InoxSet Context!10186))

(declare-fun lt!2276430 () (InoxSet Context!10186))

(assert (=> b!5713757 (= res!2412342 (not (= lt!2276404 lt!2276430)))))

(declare-fun lambda!308514 () Int)

(declare-fun lt!2276421 () Context!10186)

(declare-fun lt!2276405 () (InoxSet Context!10186))

(declare-fun flatMap!1322 ((InoxSet Context!10186) Int) (InoxSet Context!10186))

(declare-fun derivationStepZipperUp!977 (Context!10186 C!31688) (InoxSet Context!10186))

(assert (=> b!5713757 (= (flatMap!1322 lt!2276405 lambda!308514) (derivationStepZipperUp!977 lt!2276421 (h!69750 s!2326)))))

(declare-fun lt!2276436 () Unit!156368)

(declare-fun lemmaFlatMapOnSingletonSet!854 ((InoxSet Context!10186) Context!10186 Int) Unit!156368)

(assert (=> b!5713757 (= lt!2276436 (lemmaFlatMapOnSingletonSet!854 lt!2276405 lt!2276421 lambda!308514))))

(declare-fun lt!2276418 () (InoxSet Context!10186))

(assert (=> b!5713757 (= lt!2276418 (derivationStepZipperUp!977 lt!2276421 (h!69750 s!2326)))))

(declare-fun derivationStepZipper!1792 ((InoxSet Context!10186) C!31688) (InoxSet Context!10186))

(assert (=> b!5713757 (= lt!2276404 (derivationStepZipper!1792 lt!2276405 (h!69750 s!2326)))))

(assert (=> b!5713757 (= lt!2276405 (store ((as const (Array Context!10186 Bool)) false) lt!2276421 true))))

(declare-fun lt!2276409 () List!63427)

(assert (=> b!5713757 (= lt!2276421 (Context!10187 (Cons!63303 (reg!16038 (regOne!31930 r!7292)) lt!2276409)))))

(declare-fun b!5713758 () Bool)

(declare-fun res!2412322 () Bool)

(assert (=> b!5713758 (=> res!2412322 e!3514037)))

(assert (=> b!5713758 (= res!2412322 (not (matchR!7894 lt!2276410 (_2!36109 lt!2276406))))))

(declare-fun b!5713759 () Bool)

(declare-fun e!3514056 () Bool)

(assert (=> b!5713759 (= e!3514056 (or (not lt!2276423) lt!2276407))))

(declare-fun e!3514054 () Bool)

(assert (=> b!5713760 (= e!3514054 e!3514042)))

(declare-fun res!2412335 () Bool)

(assert (=> b!5713760 (=> res!2412335 e!3514042)))

(assert (=> b!5713760 (= res!2412335 (not (= (++!13901 (_1!36109 lt!2276398) (_2!36109 lt!2276398)) s!2326)))))

(declare-fun lt!2276403 () Option!15718)

(assert (=> b!5713760 (= lt!2276398 (get!21823 lt!2276403))))

(assert (=> b!5713760 (= (Exists!2809 lambda!308515) (Exists!2809 lambda!308516))))

(declare-fun lt!2276432 () Unit!156368)

(assert (=> b!5713760 (= lt!2276432 (lemmaExistCutMatchRandMatchRSpecEquivalent!1438 lt!2276410 (regTwo!31930 r!7292) s!2326))))

(assert (=> b!5713760 (= (isDefined!12421 lt!2276403) (Exists!2809 lambda!308515))))

(assert (=> b!5713760 (= lt!2276403 (findConcatSeparation!2132 lt!2276410 (regTwo!31930 r!7292) Nil!63302 s!2326 s!2326))))

(declare-fun lt!2276445 () Unit!156368)

(assert (=> b!5713760 (= lt!2276445 (lemmaFindConcatSeparationEquivalentToExists!1896 lt!2276410 (regTwo!31930 r!7292) s!2326))))

(declare-fun b!5713761 () Bool)

(declare-fun res!2412346 () Bool)

(assert (=> b!5713761 (=> res!2412346 e!3514045)))

(assert (=> b!5713761 (= res!2412346 (not (= (matchZipper!1847 lt!2276405 s!2326) (matchZipper!1847 lt!2276404 (t!376746 s!2326)))))))

(declare-fun b!5713762 () Bool)

(declare-fun res!2412334 () Bool)

(assert (=> b!5713762 (=> res!2412334 e!3514037)))

(assert (=> b!5713762 (= res!2412334 (not (matchR!7894 (reg!16038 (regOne!31930 r!7292)) (_1!36109 lt!2276406))))))

(declare-fun b!5713763 () Bool)

(declare-fun e!3514040 () Bool)

(assert (=> b!5713763 (= e!3514040 e!3514050)))

(declare-fun res!2412336 () Bool)

(assert (=> b!5713763 (=> res!2412336 e!3514050)))

(assert (=> b!5713763 (= res!2412336 (not (= lt!2276419 lt!2276430)))))

(declare-fun lt!2276440 () Context!10186)

(declare-fun derivationStepZipperDown!1051 (Regex!15709 Context!10186 C!31688) (InoxSet Context!10186))

(assert (=> b!5713763 (= lt!2276430 (derivationStepZipperDown!1051 (reg!16038 (regOne!31930 r!7292)) lt!2276440 (h!69750 s!2326)))))

(assert (=> b!5713763 (= lt!2276440 (Context!10187 lt!2276409))))

(assert (=> b!5713763 (= lt!2276409 (Cons!63303 lt!2276410 (t!376747 (exprs!5593 (h!69752 zl!343)))))))

(assert (=> b!5713763 (= lt!2276410 (Star!15709 (reg!16038 (regOne!31930 r!7292))))))

(declare-fun b!5713764 () Bool)

(assert (=> b!5713764 (= e!3514052 e!3514048)))

(declare-fun res!2412348 () Bool)

(assert (=> b!5713764 (=> (not res!2412348) (not e!3514048))))

(declare-fun lt!2276414 () Regex!15709)

(assert (=> b!5713764 (= res!2412348 (= r!7292 lt!2276414))))

(declare-fun unfocusZipper!1451 (List!63428) Regex!15709)

(assert (=> b!5713764 (= lt!2276414 (unfocusZipper!1451 zl!343))))

(declare-fun b!5713765 () Bool)

(declare-fun tp!1583293 () Bool)

(declare-fun tp!1583285 () Bool)

(assert (=> b!5713765 (= e!3514058 (and tp!1583293 tp!1583285))))

(declare-fun b!5713766 () Bool)

(declare-fun e!3514057 () Bool)

(declare-fun e!3514043 () Bool)

(assert (=> b!5713766 (= e!3514057 e!3514043)))

(declare-fun res!2412321 () Bool)

(assert (=> b!5713766 (=> res!2412321 e!3514043)))

(declare-fun lt!2276439 () Context!10186)

(assert (=> b!5713766 (= res!2412321 (not (= (unfocusZipper!1451 (Cons!63304 lt!2276439 Nil!63304)) (reg!16038 (regOne!31930 r!7292)))))))

(declare-fun lt!2276438 () (InoxSet Context!10186))

(assert (=> b!5713766 (= (flatMap!1322 lt!2276438 lambda!308514) (derivationStepZipperUp!977 lt!2276440 (h!69750 s!2326)))))

(declare-fun lt!2276444 () Unit!156368)

(assert (=> b!5713766 (= lt!2276444 (lemmaFlatMapOnSingletonSet!854 lt!2276438 lt!2276440 lambda!308514))))

(declare-fun lt!2276412 () (InoxSet Context!10186))

(assert (=> b!5713766 (= (flatMap!1322 lt!2276412 lambda!308514) (derivationStepZipperUp!977 lt!2276439 (h!69750 s!2326)))))

(declare-fun lt!2276422 () Unit!156368)

(assert (=> b!5713766 (= lt!2276422 (lemmaFlatMapOnSingletonSet!854 lt!2276412 lt!2276439 lambda!308514))))

(declare-fun lt!2276428 () (InoxSet Context!10186))

(assert (=> b!5713766 (= lt!2276428 (derivationStepZipperUp!977 lt!2276440 (h!69750 s!2326)))))

(declare-fun lt!2276402 () (InoxSet Context!10186))

(assert (=> b!5713766 (= lt!2276402 (derivationStepZipperUp!977 lt!2276439 (h!69750 s!2326)))))

(assert (=> b!5713766 (= lt!2276438 (store ((as const (Array Context!10186 Bool)) false) lt!2276440 true))))

(assert (=> b!5713766 (= lt!2276412 (store ((as const (Array Context!10186 Bool)) false) lt!2276439 true))))

(assert (=> b!5713766 (= lt!2276439 (Context!10187 (Cons!63303 (reg!16038 (regOne!31930 r!7292)) Nil!63303)))))

(declare-fun b!5713767 () Bool)

(declare-fun res!2412338 () Bool)

(assert (=> b!5713767 (=> res!2412338 e!3514042)))

(declare-fun isEmpty!35175 (List!63426) Bool)

(assert (=> b!5713767 (= res!2412338 (isEmpty!35175 (_1!36109 lt!2276398)))))

(declare-fun b!5713768 () Bool)

(declare-fun e!3514046 () Bool)

(declare-fun tp!1583292 () Bool)

(assert (=> b!5713768 (= e!3514046 tp!1583292)))

(declare-fun e!3514049 () Bool)

(assert (=> b!5713769 (= e!3514036 e!3514049)))

(declare-fun res!2412325 () Bool)

(assert (=> b!5713769 (=> res!2412325 e!3514049)))

(declare-fun lt!2276408 () Bool)

(assert (=> b!5713769 (= res!2412325 (or (not (= lt!2276423 lt!2276408)) ((_ is Nil!63302) s!2326)))))

(assert (=> b!5713769 (= (Exists!2809 lambda!308512) (Exists!2809 lambda!308513))))

(declare-fun lt!2276441 () Unit!156368)

(assert (=> b!5713769 (= lt!2276441 (lemmaExistCutMatchRandMatchRSpecEquivalent!1438 (regOne!31930 r!7292) (regTwo!31930 r!7292) s!2326))))

(assert (=> b!5713769 (= lt!2276408 (Exists!2809 lambda!308512))))

(assert (=> b!5713769 (= lt!2276408 (isDefined!12421 (findConcatSeparation!2132 (regOne!31930 r!7292) (regTwo!31930 r!7292) Nil!63302 s!2326 s!2326)))))

(declare-fun lt!2276425 () Unit!156368)

(assert (=> b!5713769 (= lt!2276425 (lemmaFindConcatSeparationEquivalentToExists!1896 (regOne!31930 r!7292) (regTwo!31930 r!7292) s!2326))))

(declare-fun b!5713770 () Bool)

(declare-fun res!2412347 () Bool)

(assert (=> b!5713770 (=> (not res!2412347) (not e!3514052))))

(declare-fun toList!9493 ((InoxSet Context!10186)) List!63428)

(assert (=> b!5713770 (= res!2412347 (= (toList!9493 z!1189) zl!343))))

(declare-fun b!5713771 () Bool)

(declare-fun e!3514041 () Bool)

(assert (=> b!5713771 (= e!3514045 e!3514041)))

(declare-fun res!2412337 () Bool)

(assert (=> b!5713771 (=> res!2412337 e!3514041)))

(assert (=> b!5713771 (= res!2412337 (not (= r!7292 lt!2276431)))))

(assert (=> b!5713771 (= lt!2276431 (Concat!24554 lt!2276410 (regTwo!31930 r!7292)))))

(assert (=> b!5713772 (= e!3514049 e!3514040)))

(declare-fun res!2412324 () Bool)

(assert (=> b!5713772 (=> res!2412324 e!3514040)))

(assert (=> b!5713772 (= res!2412324 (or (and ((_ is ElementMatch!15709) (regOne!31930 r!7292)) (= (c!1007223 (regOne!31930 r!7292)) (h!69750 s!2326))) ((_ is Union!15709) (regOne!31930 r!7292))))))

(declare-fun lt!2276446 () Unit!156368)

(assert (=> b!5713772 (= lt!2276446 e!3514047)))

(declare-fun c!1007222 () Bool)

(assert (=> b!5713772 (= c!1007222 (nullable!5741 (h!69751 (exprs!5593 (h!69752 zl!343)))))))

(assert (=> b!5713772 (= (flatMap!1322 z!1189 lambda!308514) (derivationStepZipperUp!977 (h!69752 zl!343) (h!69750 s!2326)))))

(declare-fun lt!2276426 () Unit!156368)

(assert (=> b!5713772 (= lt!2276426 (lemmaFlatMapOnSingletonSet!854 z!1189 (h!69752 zl!343) lambda!308514))))

(declare-fun lt!2276427 () Context!10186)

(assert (=> b!5713772 (= lt!2276433 (derivationStepZipperUp!977 lt!2276427 (h!69750 s!2326)))))

(assert (=> b!5713772 (= lt!2276419 (derivationStepZipperDown!1051 (h!69751 (exprs!5593 (h!69752 zl!343))) lt!2276427 (h!69750 s!2326)))))

(assert (=> b!5713772 (= lt!2276427 (Context!10187 (t!376747 (exprs!5593 (h!69752 zl!343)))))))

(declare-fun lt!2276434 () (InoxSet Context!10186))

(assert (=> b!5713772 (= lt!2276434 (derivationStepZipperUp!977 (Context!10187 (Cons!63303 (h!69751 (exprs!5593 (h!69752 zl!343))) (t!376747 (exprs!5593 (h!69752 zl!343))))) (h!69750 s!2326)))))

(declare-fun b!5713773 () Bool)

(declare-fun tp_is_empty!40671 () Bool)

(declare-fun tp!1583287 () Bool)

(assert (=> b!5713773 (= e!3514038 (and tp_is_empty!40671 tp!1583287))))

(declare-fun b!5713774 () Bool)

(assert (=> b!5713774 (= e!3514041 e!3514057)))

(declare-fun res!2412328 () Bool)

(assert (=> b!5713774 (=> res!2412328 e!3514057)))

(declare-fun lt!2276416 () Regex!15709)

(assert (=> b!5713774 (= res!2412328 (not (= (unfocusZipper!1451 (Cons!63304 lt!2276421 Nil!63304)) lt!2276416)))))

(assert (=> b!5713774 (= lt!2276416 (Concat!24554 (reg!16038 (regOne!31930 r!7292)) lt!2276431))))

(declare-fun tp!1583291 () Bool)

(declare-fun setElem!38267 () Context!10186)

(declare-fun setNonEmpty!38267 () Bool)

(declare-fun inv!82519 (Context!10186) Bool)

(assert (=> setNonEmpty!38267 (= setRes!38267 (and tp!1583291 (inv!82519 setElem!38267) e!3514046))))

(declare-fun setRest!38267 () (InoxSet Context!10186))

(assert (=> setNonEmpty!38267 (= z!1189 ((_ map or) (store ((as const (Array Context!10186 Bool)) false) setElem!38267 true) setRest!38267))))

(declare-fun b!5713775 () Bool)

(declare-fun res!2412317 () Bool)

(assert (=> b!5713775 (=> res!2412317 e!3514036)))

(declare-fun generalisedConcat!1324 (List!63427) Regex!15709)

(assert (=> b!5713775 (= res!2412317 (not (= r!7292 (generalisedConcat!1324 (exprs!5593 (h!69752 zl!343))))))))

(declare-fun b!5713776 () Bool)

(declare-fun res!2412343 () Bool)

(assert (=> b!5713776 (=> res!2412343 e!3514049)))

(declare-fun isEmpty!35176 (List!63427) Bool)

(assert (=> b!5713776 (= res!2412343 (isEmpty!35176 (t!376747 (exprs!5593 (h!69752 zl!343)))))))

(declare-fun b!5713777 () Bool)

(assert (=> b!5713777 (= e!3514043 e!3514054)))

(declare-fun res!2412341 () Bool)

(assert (=> b!5713777 (=> res!2412341 e!3514054)))

(assert (=> b!5713777 (= res!2412341 (not lt!2276423))))

(assert (=> b!5713777 e!3514056))

(declare-fun res!2412349 () Bool)

(assert (=> b!5713777 (=> (not res!2412349) (not e!3514056))))

(assert (=> b!5713777 (= res!2412349 (= (matchR!7894 lt!2276416 s!2326) (matchRSpec!2812 lt!2276416 s!2326)))))

(declare-fun lt!2276400 () Unit!156368)

(assert (=> b!5713777 (= lt!2276400 (mainMatchTheorem!2812 lt!2276416 s!2326))))

(declare-fun b!5713778 () Bool)

(declare-fun res!2412340 () Bool)

(assert (=> b!5713778 (=> res!2412340 e!3514045)))

(assert (=> b!5713778 (= res!2412340 (not (= lt!2276414 r!7292)))))

(declare-fun b!5713779 () Bool)

(assert (=> b!5713779 (= e!3514044 (matchZipper!1847 lt!2276433 (t!376746 s!2326)))))

(declare-fun b!5713780 () Bool)

(assert (=> b!5713780 (= e!3514053 e!3514037)))

(declare-fun res!2412320 () Bool)

(assert (=> b!5713780 (=> res!2412320 e!3514037)))

(declare-fun lt!2276437 () List!63426)

(assert (=> b!5713780 (= res!2412320 (not (= lt!2276437 s!2326)))))

(assert (=> b!5713780 (= lt!2276437 (++!13901 (_1!36109 lt!2276406) lt!2276429))))

(assert (=> b!5713780 (= lt!2276437 (++!13901 lt!2276411 (_2!36109 lt!2276398)))))

(assert (=> b!5713780 (= lt!2276429 (++!13901 (_2!36109 lt!2276406) (_2!36109 lt!2276398)))))

(declare-fun lt!2276417 () Unit!156368)

(declare-fun lemmaConcatAssociativity!2876 (List!63426 List!63426 List!63426) Unit!156368)

(assert (=> b!5713780 (= lt!2276417 (lemmaConcatAssociativity!2876 (_1!36109 lt!2276406) (_2!36109 lt!2276406) (_2!36109 lt!2276398)))))

(declare-fun b!5713781 () Bool)

(declare-fun res!2412331 () Bool)

(assert (=> b!5713781 (=> res!2412331 e!3514042)))

(assert (=> b!5713781 (= res!2412331 (not (matchR!7894 lt!2276410 (_1!36109 lt!2276398))))))

(declare-fun b!5713782 () Bool)

(declare-fun res!2412345 () Bool)

(assert (=> b!5713782 (=> res!2412345 e!3514040)))

(assert (=> b!5713782 (= res!2412345 (or ((_ is Concat!24554) (regOne!31930 r!7292)) (not ((_ is Star!15709) (regOne!31930 r!7292)))))))

(declare-fun tp!1583290 () Bool)

(declare-fun e!3514055 () Bool)

(declare-fun b!5713783 () Bool)

(assert (=> b!5713783 (= e!3514039 (and (inv!82519 (h!69752 zl!343)) e!3514055 tp!1583290))))

(declare-fun setIsEmpty!38267 () Bool)

(assert (=> setIsEmpty!38267 setRes!38267))

(declare-fun b!5713784 () Bool)

(declare-fun tp!1583294 () Bool)

(assert (=> b!5713784 (= e!3514058 tp!1583294)))

(declare-fun b!5713785 () Bool)

(declare-fun tp!1583288 () Bool)

(assert (=> b!5713785 (= e!3514055 tp!1583288)))

(declare-fun b!5713786 () Bool)

(declare-fun res!2412327 () Bool)

(assert (=> b!5713786 (=> res!2412327 e!3514043)))

(assert (=> b!5713786 (= res!2412327 (not (= (unfocusZipper!1451 (Cons!63304 lt!2276440 Nil!63304)) lt!2276431)))))

(declare-fun b!5713787 () Bool)

(declare-fun res!2412326 () Bool)

(assert (=> b!5713787 (=> res!2412326 e!3514040)))

(assert (=> b!5713787 (= res!2412326 e!3514051)))

(declare-fun res!2412316 () Bool)

(assert (=> b!5713787 (=> (not res!2412316) (not e!3514051))))

(assert (=> b!5713787 (= res!2412316 ((_ is Concat!24554) (regOne!31930 r!7292)))))

(declare-fun b!5713788 () Bool)

(declare-fun res!2412323 () Bool)

(assert (=> b!5713788 (=> res!2412323 e!3514036)))

(declare-fun generalisedUnion!1572 (List!63427) Regex!15709)

(declare-fun unfocusZipperList!1137 (List!63428) List!63427)

(assert (=> b!5713788 (= res!2412323 (not (= r!7292 (generalisedUnion!1572 (unfocusZipperList!1137 zl!343)))))))

(declare-fun b!5713789 () Bool)

(assert (=> b!5713789 (= e!3514058 tp_is_empty!40671)))

(declare-fun b!5713790 () Bool)

(declare-fun res!2412329 () Bool)

(assert (=> b!5713790 (=> res!2412329 e!3514042)))

(assert (=> b!5713790 (= res!2412329 (not (matchR!7894 (regTwo!31930 r!7292) (_2!36109 lt!2276398))))))

(declare-fun b!5713791 () Bool)

(declare-fun tp!1583286 () Bool)

(declare-fun tp!1583289 () Bool)

(assert (=> b!5713791 (= e!3514058 (and tp!1583286 tp!1583289))))

(assert (= (and start!588356 res!2412318) b!5713770))

(assert (= (and b!5713770 res!2412347) b!5713764))

(assert (= (and b!5713764 res!2412348) b!5713749))

(assert (= (and b!5713749 (not res!2412330)) b!5713751))

(assert (= (and b!5713751 (not res!2412332)) b!5713775))

(assert (= (and b!5713775 (not res!2412317)) b!5713753))

(assert (= (and b!5713753 (not res!2412339)) b!5713788))

(assert (= (and b!5713788 (not res!2412323)) b!5713756))

(assert (= (and b!5713756 (not res!2412319)) b!5713769))

(assert (= (and b!5713769 (not res!2412325)) b!5713776))

(assert (= (and b!5713776 (not res!2412343)) b!5713772))

(assert (= (and b!5713772 c!1007222) b!5713755))

(assert (= (and b!5713772 (not c!1007222)) b!5713754))

(assert (= (and b!5713755 (not res!2412333)) b!5713779))

(assert (= (and b!5713772 (not res!2412324)) b!5713787))

(assert (= (and b!5713787 res!2412316) b!5713752))

(assert (= (and b!5713787 (not res!2412326)) b!5713782))

(assert (= (and b!5713782 (not res!2412345)) b!5713763))

(assert (= (and b!5713763 (not res!2412336)) b!5713757))

(assert (= (and b!5713757 (not res!2412342)) b!5713761))

(assert (= (and b!5713761 (not res!2412346)) b!5713778))

(assert (= (and b!5713778 (not res!2412340)) b!5713771))

(assert (= (and b!5713771 (not res!2412337)) b!5713774))

(assert (= (and b!5713774 (not res!2412328)) b!5713766))

(assert (= (and b!5713766 (not res!2412321)) b!5713786))

(assert (= (and b!5713786 (not res!2412327)) b!5713777))

(assert (= (and b!5713777 res!2412349) b!5713759))

(assert (= (and b!5713777 (not res!2412341)) b!5713760))

(assert (= (and b!5713760 (not res!2412335)) b!5713781))

(assert (= (and b!5713781 (not res!2412331)) b!5713790))

(assert (= (and b!5713790 (not res!2412329)) b!5713767))

(assert (= (and b!5713767 (not res!2412338)) b!5713748))

(assert (= (and b!5713748 (not res!2412344)) b!5713780))

(assert (= (and b!5713780 (not res!2412320)) b!5713762))

(assert (= (and b!5713762 (not res!2412334)) b!5713758))

(assert (= (and b!5713758 (not res!2412322)) b!5713750))

(assert (= (and start!588356 ((_ is ElementMatch!15709) r!7292)) b!5713789))

(assert (= (and start!588356 ((_ is Concat!24554) r!7292)) b!5713765))

(assert (= (and start!588356 ((_ is Star!15709) r!7292)) b!5713784))

(assert (= (and start!588356 ((_ is Union!15709) r!7292)) b!5713791))

(assert (= (and start!588356 condSetEmpty!38267) setIsEmpty!38267))

(assert (= (and start!588356 (not condSetEmpty!38267)) setNonEmpty!38267))

(assert (= setNonEmpty!38267 b!5713768))

(assert (= b!5713783 b!5713785))

(assert (= (and start!588356 ((_ is Cons!63304) zl!343)) b!5713783))

(assert (= (and start!588356 ((_ is Cons!63302) s!2326)) b!5713773))

(declare-fun m!6667126 () Bool)

(assert (=> b!5713757 m!6667126))

(declare-fun m!6667128 () Bool)

(assert (=> b!5713757 m!6667128))

(declare-fun m!6667130 () Bool)

(assert (=> b!5713757 m!6667130))

(declare-fun m!6667132 () Bool)

(assert (=> b!5713757 m!6667132))

(declare-fun m!6667134 () Bool)

(assert (=> b!5713757 m!6667134))

(declare-fun m!6667136 () Bool)

(assert (=> b!5713788 m!6667136))

(assert (=> b!5713788 m!6667136))

(declare-fun m!6667138 () Bool)

(assert (=> b!5713788 m!6667138))

(declare-fun m!6667140 () Bool)

(assert (=> b!5713766 m!6667140))

(declare-fun m!6667142 () Bool)

(assert (=> b!5713766 m!6667142))

(declare-fun m!6667144 () Bool)

(assert (=> b!5713766 m!6667144))

(declare-fun m!6667146 () Bool)

(assert (=> b!5713766 m!6667146))

(declare-fun m!6667148 () Bool)

(assert (=> b!5713766 m!6667148))

(declare-fun m!6667150 () Bool)

(assert (=> b!5713766 m!6667150))

(declare-fun m!6667152 () Bool)

(assert (=> b!5713766 m!6667152))

(declare-fun m!6667154 () Bool)

(assert (=> b!5713766 m!6667154))

(declare-fun m!6667156 () Bool)

(assert (=> b!5713766 m!6667156))

(declare-fun m!6667158 () Bool)

(assert (=> b!5713775 m!6667158))

(declare-fun m!6667160 () Bool)

(assert (=> b!5713763 m!6667160))

(declare-fun m!6667162 () Bool)

(assert (=> b!5713786 m!6667162))

(declare-fun m!6667164 () Bool)

(assert (=> b!5713751 m!6667164))

(declare-fun m!6667166 () Bool)

(assert (=> b!5713780 m!6667166))

(declare-fun m!6667168 () Bool)

(assert (=> b!5713780 m!6667168))

(declare-fun m!6667170 () Bool)

(assert (=> b!5713780 m!6667170))

(declare-fun m!6667172 () Bool)

(assert (=> b!5713780 m!6667172))

(declare-fun m!6667174 () Bool)

(assert (=> start!588356 m!6667174))

(declare-fun m!6667176 () Bool)

(assert (=> b!5713749 m!6667176))

(declare-fun m!6667178 () Bool)

(assert (=> b!5713749 m!6667178))

(declare-fun m!6667180 () Bool)

(assert (=> b!5713749 m!6667180))

(declare-fun m!6667182 () Bool)

(assert (=> b!5713762 m!6667182))

(declare-fun m!6667184 () Bool)

(assert (=> b!5713752 m!6667184))

(declare-fun m!6667186 () Bool)

(assert (=> b!5713748 m!6667186))

(declare-fun m!6667188 () Bool)

(assert (=> b!5713748 m!6667188))

(declare-fun m!6667190 () Bool)

(assert (=> b!5713748 m!6667190))

(declare-fun m!6667192 () Bool)

(assert (=> b!5713748 m!6667192))

(declare-fun m!6667194 () Bool)

(assert (=> b!5713748 m!6667194))

(declare-fun m!6667196 () Bool)

(assert (=> b!5713748 m!6667196))

(declare-fun m!6667198 () Bool)

(assert (=> b!5713748 m!6667198))

(declare-fun m!6667200 () Bool)

(assert (=> b!5713748 m!6667200))

(declare-fun m!6667202 () Bool)

(assert (=> b!5713748 m!6667202))

(declare-fun m!6667204 () Bool)

(assert (=> b!5713748 m!6667204))

(assert (=> b!5713748 m!6667200))

(declare-fun m!6667206 () Bool)

(assert (=> b!5713748 m!6667206))

(declare-fun m!6667208 () Bool)

(assert (=> b!5713748 m!6667208))

(assert (=> b!5713748 m!6667200))

(declare-fun m!6667210 () Bool)

(assert (=> b!5713772 m!6667210))

(declare-fun m!6667212 () Bool)

(assert (=> b!5713772 m!6667212))

(declare-fun m!6667214 () Bool)

(assert (=> b!5713772 m!6667214))

(declare-fun m!6667216 () Bool)

(assert (=> b!5713772 m!6667216))

(declare-fun m!6667218 () Bool)

(assert (=> b!5713772 m!6667218))

(declare-fun m!6667220 () Bool)

(assert (=> b!5713772 m!6667220))

(declare-fun m!6667222 () Bool)

(assert (=> b!5713772 m!6667222))

(declare-fun m!6667224 () Bool)

(assert (=> b!5713769 m!6667224))

(declare-fun m!6667226 () Bool)

(assert (=> b!5713769 m!6667226))

(declare-fun m!6667228 () Bool)

(assert (=> b!5713769 m!6667228))

(assert (=> b!5713769 m!6667224))

(declare-fun m!6667230 () Bool)

(assert (=> b!5713769 m!6667230))

(declare-fun m!6667232 () Bool)

(assert (=> b!5713769 m!6667232))

(assert (=> b!5713769 m!6667226))

(declare-fun m!6667234 () Bool)

(assert (=> b!5713769 m!6667234))

(declare-fun m!6667236 () Bool)

(assert (=> b!5713770 m!6667236))

(declare-fun m!6667238 () Bool)

(assert (=> b!5713764 m!6667238))

(declare-fun m!6667240 () Bool)

(assert (=> b!5713755 m!6667240))

(declare-fun m!6667242 () Bool)

(assert (=> b!5713755 m!6667242))

(declare-fun m!6667244 () Bool)

(assert (=> b!5713755 m!6667244))

(declare-fun m!6667246 () Bool)

(assert (=> b!5713783 m!6667246))

(declare-fun m!6667248 () Bool)

(assert (=> b!5713777 m!6667248))

(declare-fun m!6667250 () Bool)

(assert (=> b!5713777 m!6667250))

(declare-fun m!6667252 () Bool)

(assert (=> b!5713777 m!6667252))

(declare-fun m!6667254 () Bool)

(assert (=> b!5713776 m!6667254))

(declare-fun m!6667256 () Bool)

(assert (=> b!5713774 m!6667256))

(declare-fun m!6667258 () Bool)

(assert (=> b!5713760 m!6667258))

(declare-fun m!6667260 () Bool)

(assert (=> b!5713760 m!6667260))

(declare-fun m!6667262 () Bool)

(assert (=> b!5713760 m!6667262))

(declare-fun m!6667264 () Bool)

(assert (=> b!5713760 m!6667264))

(declare-fun m!6667266 () Bool)

(assert (=> b!5713760 m!6667266))

(declare-fun m!6667268 () Bool)

(assert (=> b!5713760 m!6667268))

(declare-fun m!6667270 () Bool)

(assert (=> b!5713760 m!6667270))

(assert (=> b!5713760 m!6667262))

(declare-fun m!6667272 () Bool)

(assert (=> b!5713760 m!6667272))

(declare-fun m!6667274 () Bool)

(assert (=> b!5713779 m!6667274))

(declare-fun m!6667276 () Bool)

(assert (=> setNonEmpty!38267 m!6667276))

(declare-fun m!6667278 () Bool)

(assert (=> b!5713750 m!6667278))

(declare-fun m!6667280 () Bool)

(assert (=> b!5713750 m!6667280))

(declare-fun m!6667282 () Bool)

(assert (=> b!5713750 m!6667282))

(declare-fun m!6667284 () Bool)

(assert (=> b!5713750 m!6667284))

(declare-fun m!6667286 () Bool)

(assert (=> b!5713758 m!6667286))

(declare-fun m!6667288 () Bool)

(assert (=> b!5713790 m!6667288))

(declare-fun m!6667290 () Bool)

(assert (=> b!5713761 m!6667290))

(declare-fun m!6667292 () Bool)

(assert (=> b!5713761 m!6667292))

(declare-fun m!6667294 () Bool)

(assert (=> b!5713781 m!6667294))

(declare-fun m!6667296 () Bool)

(assert (=> b!5713767 m!6667296))

(check-sat (not b!5713765) (not b!5713781) (not b!5713749) (not b!5713774) (not b!5713780) (not b!5713752) (not b!5713751) (not b!5713788) (not b!5713750) (not b!5713783) tp_is_empty!40671 (not b!5713777) (not b!5713757) (not b!5713773) (not b!5713779) (not b!5713768) (not b!5713761) (not b!5713769) (not start!588356) (not b!5713760) (not b!5713762) (not b!5713785) (not b!5713748) (not b!5713770) (not b!5713790) (not b!5713776) (not b!5713775) (not setNonEmpty!38267) (not b!5713767) (not b!5713766) (not b!5713772) (not b!5713763) (not b!5713784) (not b!5713764) (not b!5713755) (not b!5713786) (not b!5713791) (not b!5713758))
(check-sat)
