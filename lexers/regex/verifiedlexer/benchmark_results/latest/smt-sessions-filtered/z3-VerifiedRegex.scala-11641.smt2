; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!650924 () Bool)

(assert start!650924)

(declare-fun b!6711599 () Bool)

(assert (=> b!6711599 true))

(assert (=> b!6711599 true))

(declare-fun b!6711593 () Bool)

(declare-fun e!4056192 () Bool)

(declare-fun tp!1839385 () Bool)

(assert (=> b!6711593 (= e!4056192 tp!1839385)))

(declare-fun setIsEmpty!45705 () Bool)

(declare-fun setRes!45705 () Bool)

(assert (=> setIsEmpty!45705 setRes!45705))

(declare-fun b!6711594 () Bool)

(declare-fun e!4056191 () Bool)

(declare-fun tp_is_empty!42311 () Bool)

(assert (=> b!6711594 (= e!4056191 tp_is_empty!42311)))

(declare-fun b!6711595 () Bool)

(declare-fun res!2746515 () Bool)

(declare-fun e!4056187 () Bool)

(assert (=> b!6711595 (=> res!2746515 e!4056187)))

(declare-datatypes ((C!33328 0))(
  ( (C!33329 (val!26366 Int)) )
))
(declare-datatypes ((Regex!16529 0))(
  ( (ElementMatch!16529 (c!1244463 C!33328)) (Concat!25374 (regOne!33570 Regex!16529) (regTwo!33570 Regex!16529)) (EmptyExpr!16529) (Star!16529 (reg!16858 Regex!16529)) (EmptyLang!16529) (Union!16529 (regOne!33571 Regex!16529) (regTwo!33571 Regex!16529)) )
))
(declare-datatypes ((List!65886 0))(
  ( (Nil!65762) (Cons!65762 (h!72210 Regex!16529) (t!379563 List!65886)) )
))
(declare-datatypes ((Context!11826 0))(
  ( (Context!11827 (exprs!6413 List!65886)) )
))
(declare-datatypes ((List!65887 0))(
  ( (Nil!65763) (Cons!65763 (h!72211 Context!11826) (t!379564 List!65887)) )
))
(declare-fun zl!343 () List!65887)

(declare-fun isEmpty!38078 (List!65887) Bool)

(assert (=> b!6711595 (= res!2746515 (not (isEmpty!38078 (t!379564 zl!343))))))

(declare-fun b!6711596 () Bool)

(declare-fun e!4056186 () Bool)

(declare-fun tp!1839391 () Bool)

(assert (=> b!6711596 (= e!4056186 (and tp_is_empty!42311 tp!1839391))))

(declare-fun b!6711597 () Bool)

(declare-fun tp!1839388 () Bool)

(assert (=> b!6711597 (= e!4056191 tp!1839388)))

(declare-fun b!6711598 () Bool)

(declare-fun res!2746516 () Bool)

(declare-fun e!4056190 () Bool)

(assert (=> b!6711598 (=> (not res!2746516) (not e!4056190))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11826))

(declare-fun toList!10313 ((InoxSet Context!11826)) List!65887)

(assert (=> b!6711598 (= res!2746516 (= (toList!10313 z!1189) zl!343))))

(declare-fun b!6711600 () Bool)

(declare-fun tp!1839384 () Bool)

(declare-fun tp!1839390 () Bool)

(assert (=> b!6711600 (= e!4056191 (and tp!1839384 tp!1839390))))

(declare-fun b!6711601 () Bool)

(declare-fun res!2746517 () Bool)

(assert (=> b!6711601 (=> res!2746517 e!4056187)))

(declare-fun r!7292 () Regex!16529)

(declare-fun generalisedConcat!2126 (List!65886) Regex!16529)

(assert (=> b!6711601 (= res!2746517 (not (= r!7292 (generalisedConcat!2126 (exprs!6413 (h!72211 zl!343))))))))

(declare-fun b!6711602 () Bool)

(assert (=> b!6711602 (= e!4056190 (not e!4056187))))

(declare-fun res!2746521 () Bool)

(assert (=> b!6711602 (=> res!2746521 e!4056187)))

(get-info :version)

(assert (=> b!6711602 (= res!2746521 (not ((_ is Cons!65763) zl!343)))))

(declare-datatypes ((List!65888 0))(
  ( (Nil!65764) (Cons!65764 (h!72212 C!33328) (t!379565 List!65888)) )
))
(declare-fun s!2326 () List!65888)

(declare-fun matchR!8712 (Regex!16529 List!65888) Bool)

(declare-fun matchRSpec!3630 (Regex!16529 List!65888) Bool)

(assert (=> b!6711602 (= (matchR!8712 r!7292 s!2326) (matchRSpec!3630 r!7292 s!2326))))

(declare-datatypes ((Unit!159749 0))(
  ( (Unit!159750) )
))
(declare-fun lt!2435695 () Unit!159749)

(declare-fun mainMatchTheorem!3630 (Regex!16529 List!65888) Unit!159749)

(assert (=> b!6711602 (= lt!2435695 (mainMatchTheorem!3630 r!7292 s!2326))))

(declare-fun b!6711603 () Bool)

(declare-fun res!2746520 () Bool)

(assert (=> b!6711603 (=> res!2746520 e!4056187)))

(declare-fun generalisedUnion!2373 (List!65886) Regex!16529)

(declare-fun unfocusZipperList!1950 (List!65887) List!65886)

(assert (=> b!6711603 (= res!2746520 (not (= r!7292 (generalisedUnion!2373 (unfocusZipperList!1950 zl!343)))))))

(declare-fun b!6711604 () Bool)

(declare-fun res!2746519 () Bool)

(assert (=> b!6711604 (=> res!2746519 e!4056187)))

(assert (=> b!6711604 (= res!2746519 (or ((_ is EmptyExpr!16529) r!7292) ((_ is EmptyLang!16529) r!7292) ((_ is ElementMatch!16529) r!7292) ((_ is Union!16529) r!7292) ((_ is Concat!25374) r!7292)))))

(declare-fun b!6711605 () Bool)

(declare-fun tp!1839392 () Bool)

(declare-fun tp!1839389 () Bool)

(assert (=> b!6711605 (= e!4056191 (and tp!1839392 tp!1839389))))

(declare-fun setElem!45705 () Context!11826)

(declare-fun tp!1839386 () Bool)

(declare-fun setNonEmpty!45705 () Bool)

(declare-fun inv!84569 (Context!11826) Bool)

(assert (=> setNonEmpty!45705 (= setRes!45705 (and tp!1839386 (inv!84569 setElem!45705) e!4056192))))

(declare-fun setRest!45705 () (InoxSet Context!11826))

(assert (=> setNonEmpty!45705 (= z!1189 ((_ map or) (store ((as const (Array Context!11826 Bool)) false) setElem!45705 true) setRest!45705))))

(declare-fun b!6711606 () Bool)

(declare-fun res!2746522 () Bool)

(assert (=> b!6711606 (=> (not res!2746522) (not e!4056190))))

(declare-fun unfocusZipper!2271 (List!65887) Regex!16529)

(assert (=> b!6711606 (= res!2746522 (= r!7292 (unfocusZipper!2271 zl!343)))))

(declare-fun b!6711607 () Bool)

(declare-fun e!4056188 () Bool)

(declare-fun tp!1839393 () Bool)

(assert (=> b!6711607 (= e!4056188 tp!1839393)))

(declare-fun validRegex!8265 (Regex!16529) Bool)

(assert (=> b!6711599 (= e!4056187 (validRegex!8265 (reg!16858 r!7292)))))

(declare-fun lambda!376179 () Int)

(declare-datatypes ((tuple2!67008 0))(
  ( (tuple2!67009 (_1!36807 List!65888) (_2!36807 List!65888)) )
))
(declare-datatypes ((Option!16416 0))(
  ( (None!16415) (Some!16415 (v!52613 tuple2!67008)) )
))
(declare-fun isDefined!13119 (Option!16416) Bool)

(declare-fun findConcatSeparation!2830 (Regex!16529 Regex!16529 List!65888 List!65888 List!65888) Option!16416)

(declare-fun Exists!3597 (Int) Bool)

(assert (=> b!6711599 (= (isDefined!13119 (findConcatSeparation!2830 (reg!16858 r!7292) r!7292 Nil!65764 s!2326 s!2326)) (Exists!3597 lambda!376179))))

(declare-fun lt!2435696 () Unit!159749)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2594 (Regex!16529 Regex!16529 List!65888) Unit!159749)

(assert (=> b!6711599 (= lt!2435696 (lemmaFindConcatSeparationEquivalentToExists!2594 (reg!16858 r!7292) r!7292 s!2326))))

(declare-fun res!2746514 () Bool)

(assert (=> start!650924 (=> (not res!2746514) (not e!4056190))))

(assert (=> start!650924 (= res!2746514 (validRegex!8265 r!7292))))

(assert (=> start!650924 e!4056190))

(assert (=> start!650924 e!4056191))

(declare-fun condSetEmpty!45705 () Bool)

(assert (=> start!650924 (= condSetEmpty!45705 (= z!1189 ((as const (Array Context!11826 Bool)) false)))))

(assert (=> start!650924 setRes!45705))

(declare-fun e!4056189 () Bool)

(assert (=> start!650924 e!4056189))

(assert (=> start!650924 e!4056186))

(declare-fun b!6711608 () Bool)

(declare-fun tp!1839387 () Bool)

(assert (=> b!6711608 (= e!4056189 (and (inv!84569 (h!72211 zl!343)) e!4056188 tp!1839387))))

(declare-fun b!6711609 () Bool)

(declare-fun res!2746518 () Bool)

(assert (=> b!6711609 (=> res!2746518 e!4056187)))

(assert (=> b!6711609 (= res!2746518 (not ((_ is Cons!65762) (exprs!6413 (h!72211 zl!343)))))))

(assert (= (and start!650924 res!2746514) b!6711598))

(assert (= (and b!6711598 res!2746516) b!6711606))

(assert (= (and b!6711606 res!2746522) b!6711602))

(assert (= (and b!6711602 (not res!2746521)) b!6711595))

(assert (= (and b!6711595 (not res!2746515)) b!6711601))

(assert (= (and b!6711601 (not res!2746517)) b!6711609))

(assert (= (and b!6711609 (not res!2746518)) b!6711603))

(assert (= (and b!6711603 (not res!2746520)) b!6711604))

(assert (= (and b!6711604 (not res!2746519)) b!6711599))

(assert (= (and start!650924 ((_ is ElementMatch!16529) r!7292)) b!6711594))

(assert (= (and start!650924 ((_ is Concat!25374) r!7292)) b!6711605))

(assert (= (and start!650924 ((_ is Star!16529) r!7292)) b!6711597))

(assert (= (and start!650924 ((_ is Union!16529) r!7292)) b!6711600))

(assert (= (and start!650924 condSetEmpty!45705) setIsEmpty!45705))

(assert (= (and start!650924 (not condSetEmpty!45705)) setNonEmpty!45705))

(assert (= setNonEmpty!45705 b!6711593))

(assert (= b!6711608 b!6711607))

(assert (= (and start!650924 ((_ is Cons!65763) zl!343)) b!6711608))

(assert (= (and start!650924 ((_ is Cons!65764) s!2326)) b!6711596))

(declare-fun m!7477362 () Bool)

(assert (=> b!6711608 m!7477362))

(declare-fun m!7477364 () Bool)

(assert (=> b!6711606 m!7477364))

(declare-fun m!7477366 () Bool)

(assert (=> b!6711603 m!7477366))

(assert (=> b!6711603 m!7477366))

(declare-fun m!7477368 () Bool)

(assert (=> b!6711603 m!7477368))

(declare-fun m!7477370 () Bool)

(assert (=> b!6711595 m!7477370))

(declare-fun m!7477372 () Bool)

(assert (=> b!6711601 m!7477372))

(declare-fun m!7477374 () Bool)

(assert (=> b!6711602 m!7477374))

(declare-fun m!7477376 () Bool)

(assert (=> b!6711602 m!7477376))

(declare-fun m!7477378 () Bool)

(assert (=> b!6711602 m!7477378))

(declare-fun m!7477380 () Bool)

(assert (=> b!6711598 m!7477380))

(declare-fun m!7477382 () Bool)

(assert (=> b!6711599 m!7477382))

(declare-fun m!7477384 () Bool)

(assert (=> b!6711599 m!7477384))

(declare-fun m!7477386 () Bool)

(assert (=> b!6711599 m!7477386))

(assert (=> b!6711599 m!7477386))

(declare-fun m!7477388 () Bool)

(assert (=> b!6711599 m!7477388))

(declare-fun m!7477390 () Bool)

(assert (=> b!6711599 m!7477390))

(declare-fun m!7477392 () Bool)

(assert (=> start!650924 m!7477392))

(declare-fun m!7477394 () Bool)

(assert (=> setNonEmpty!45705 m!7477394))

(check-sat tp_is_empty!42311 (not b!6711603) (not b!6711608) (not b!6711605) (not b!6711595) (not b!6711602) (not b!6711597) (not b!6711598) (not b!6711596) (not b!6711606) (not start!650924) (not b!6711607) (not b!6711600) (not setNonEmpty!45705) (not b!6711593) (not b!6711599) (not b!6711601))
(check-sat)
(get-model)

(declare-fun b!6711668 () Bool)

(declare-fun e!4056225 () Bool)

(declare-fun lt!2435704 () Regex!16529)

(declare-fun isEmptyExpr!1901 (Regex!16529) Bool)

(assert (=> b!6711668 (= e!4056225 (isEmptyExpr!1901 lt!2435704))))

(declare-fun b!6711670 () Bool)

(declare-fun e!4056228 () Bool)

(assert (=> b!6711670 (= e!4056225 e!4056228)))

(declare-fun c!1244486 () Bool)

(declare-fun isEmpty!38081 (List!65886) Bool)

(declare-fun tail!12582 (List!65886) List!65886)

(assert (=> b!6711670 (= c!1244486 (isEmpty!38081 (tail!12582 (exprs!6413 (h!72211 zl!343)))))))

(declare-fun b!6711671 () Bool)

(declare-fun isConcat!1424 (Regex!16529) Bool)

(assert (=> b!6711671 (= e!4056228 (isConcat!1424 lt!2435704))))

(declare-fun b!6711672 () Bool)

(declare-fun head!13497 (List!65886) Regex!16529)

(assert (=> b!6711672 (= e!4056228 (= lt!2435704 (head!13497 (exprs!6413 (h!72211 zl!343)))))))

(declare-fun b!6711673 () Bool)

(declare-fun e!4056227 () Regex!16529)

(assert (=> b!6711673 (= e!4056227 (h!72210 (exprs!6413 (h!72211 zl!343))))))

(declare-fun b!6711674 () Bool)

(declare-fun e!4056226 () Bool)

(assert (=> b!6711674 (= e!4056226 e!4056225)))

(declare-fun c!1244488 () Bool)

(assert (=> b!6711674 (= c!1244488 (isEmpty!38081 (exprs!6413 (h!72211 zl!343))))))

(declare-fun b!6711675 () Bool)

(declare-fun e!4056229 () Regex!16529)

(assert (=> b!6711675 (= e!4056227 e!4056229)))

(declare-fun c!1244489 () Bool)

(assert (=> b!6711675 (= c!1244489 ((_ is Cons!65762) (exprs!6413 (h!72211 zl!343))))))

(declare-fun b!6711669 () Bool)

(assert (=> b!6711669 (= e!4056229 (Concat!25374 (h!72210 (exprs!6413 (h!72211 zl!343))) (generalisedConcat!2126 (t!379563 (exprs!6413 (h!72211 zl!343))))))))

(declare-fun d!2110294 () Bool)

(assert (=> d!2110294 e!4056226))

(declare-fun res!2746534 () Bool)

(assert (=> d!2110294 (=> (not res!2746534) (not e!4056226))))

(assert (=> d!2110294 (= res!2746534 (validRegex!8265 lt!2435704))))

(assert (=> d!2110294 (= lt!2435704 e!4056227)))

(declare-fun c!1244487 () Bool)

(declare-fun e!4056230 () Bool)

(assert (=> d!2110294 (= c!1244487 e!4056230)))

(declare-fun res!2746533 () Bool)

(assert (=> d!2110294 (=> (not res!2746533) (not e!4056230))))

(assert (=> d!2110294 (= res!2746533 ((_ is Cons!65762) (exprs!6413 (h!72211 zl!343))))))

(declare-fun lambda!376187 () Int)

(declare-fun forall!15735 (List!65886 Int) Bool)

(assert (=> d!2110294 (forall!15735 (exprs!6413 (h!72211 zl!343)) lambda!376187)))

(assert (=> d!2110294 (= (generalisedConcat!2126 (exprs!6413 (h!72211 zl!343))) lt!2435704)))

(declare-fun b!6711676 () Bool)

(assert (=> b!6711676 (= e!4056229 EmptyExpr!16529)))

(declare-fun b!6711677 () Bool)

(assert (=> b!6711677 (= e!4056230 (isEmpty!38081 (t!379563 (exprs!6413 (h!72211 zl!343)))))))

(assert (= (and d!2110294 res!2746533) b!6711677))

(assert (= (and d!2110294 c!1244487) b!6711673))

(assert (= (and d!2110294 (not c!1244487)) b!6711675))

(assert (= (and b!6711675 c!1244489) b!6711669))

(assert (= (and b!6711675 (not c!1244489)) b!6711676))

(assert (= (and d!2110294 res!2746534) b!6711674))

(assert (= (and b!6711674 c!1244488) b!6711668))

(assert (= (and b!6711674 (not c!1244488)) b!6711670))

(assert (= (and b!6711670 c!1244486) b!6711672))

(assert (= (and b!6711670 (not c!1244486)) b!6711671))

(declare-fun m!7477420 () Bool)

(assert (=> d!2110294 m!7477420))

(declare-fun m!7477422 () Bool)

(assert (=> d!2110294 m!7477422))

(declare-fun m!7477424 () Bool)

(assert (=> b!6711668 m!7477424))

(declare-fun m!7477426 () Bool)

(assert (=> b!6711671 m!7477426))

(declare-fun m!7477428 () Bool)

(assert (=> b!6711677 m!7477428))

(declare-fun m!7477430 () Bool)

(assert (=> b!6711669 m!7477430))

(declare-fun m!7477432 () Bool)

(assert (=> b!6711672 m!7477432))

(declare-fun m!7477434 () Bool)

(assert (=> b!6711674 m!7477434))

(declare-fun m!7477436 () Bool)

(assert (=> b!6711670 m!7477436))

(assert (=> b!6711670 m!7477436))

(declare-fun m!7477438 () Bool)

(assert (=> b!6711670 m!7477438))

(assert (=> b!6711601 d!2110294))

(declare-fun d!2110302 () Bool)

(declare-fun lt!2435708 () Regex!16529)

(assert (=> d!2110302 (validRegex!8265 lt!2435708)))

(assert (=> d!2110302 (= lt!2435708 (generalisedUnion!2373 (unfocusZipperList!1950 zl!343)))))

(assert (=> d!2110302 (= (unfocusZipper!2271 zl!343) lt!2435708)))

(declare-fun bs!1786549 () Bool)

(assert (= bs!1786549 d!2110302))

(declare-fun m!7477440 () Bool)

(assert (=> bs!1786549 m!7477440))

(assert (=> bs!1786549 m!7477366))

(assert (=> bs!1786549 m!7477366))

(assert (=> bs!1786549 m!7477368))

(assert (=> b!6711606 d!2110302))

(declare-fun b!6711780 () Bool)

(declare-fun res!2746581 () Bool)

(declare-fun e!4056289 () Bool)

(assert (=> b!6711780 (=> res!2746581 e!4056289)))

(assert (=> b!6711780 (= res!2746581 (not ((_ is ElementMatch!16529) r!7292)))))

(declare-fun e!4056290 () Bool)

(assert (=> b!6711780 (= e!4056290 e!4056289)))

(declare-fun b!6711781 () Bool)

(declare-fun res!2746586 () Bool)

(declare-fun e!4056288 () Bool)

(assert (=> b!6711781 (=> (not res!2746586) (not e!4056288))))

(declare-fun call!605897 () Bool)

(assert (=> b!6711781 (= res!2746586 (not call!605897))))

(declare-fun b!6711782 () Bool)

(declare-fun e!4056285 () Bool)

(declare-fun e!4056287 () Bool)

(assert (=> b!6711782 (= e!4056285 e!4056287)))

(declare-fun res!2746588 () Bool)

(assert (=> b!6711782 (=> res!2746588 e!4056287)))

(assert (=> b!6711782 (= res!2746588 call!605897)))

(declare-fun d!2110304 () Bool)

(declare-fun e!4056286 () Bool)

(assert (=> d!2110304 e!4056286))

(declare-fun c!1244520 () Bool)

(assert (=> d!2110304 (= c!1244520 ((_ is EmptyExpr!16529) r!7292))))

(declare-fun lt!2435720 () Bool)

(declare-fun e!4056291 () Bool)

(assert (=> d!2110304 (= lt!2435720 e!4056291)))

(declare-fun c!1244519 () Bool)

(declare-fun isEmpty!38082 (List!65888) Bool)

(assert (=> d!2110304 (= c!1244519 (isEmpty!38082 s!2326))))

(assert (=> d!2110304 (validRegex!8265 r!7292)))

(assert (=> d!2110304 (= (matchR!8712 r!7292 s!2326) lt!2435720)))

(declare-fun b!6711783 () Bool)

(assert (=> b!6711783 (= e!4056286 (= lt!2435720 call!605897))))

(declare-fun b!6711784 () Bool)

(declare-fun derivativeStep!5207 (Regex!16529 C!33328) Regex!16529)

(declare-fun head!13498 (List!65888) C!33328)

(declare-fun tail!12583 (List!65888) List!65888)

(assert (=> b!6711784 (= e!4056291 (matchR!8712 (derivativeStep!5207 r!7292 (head!13498 s!2326)) (tail!12583 s!2326)))))

(declare-fun b!6711785 () Bool)

(assert (=> b!6711785 (= e!4056290 (not lt!2435720))))

(declare-fun b!6711786 () Bool)

(declare-fun res!2746583 () Bool)

(assert (=> b!6711786 (=> (not res!2746583) (not e!4056288))))

(assert (=> b!6711786 (= res!2746583 (isEmpty!38082 (tail!12583 s!2326)))))

(declare-fun b!6711787 () Bool)

(assert (=> b!6711787 (= e!4056289 e!4056285)))

(declare-fun res!2746582 () Bool)

(assert (=> b!6711787 (=> (not res!2746582) (not e!4056285))))

(assert (=> b!6711787 (= res!2746582 (not lt!2435720))))

(declare-fun b!6711788 () Bool)

(assert (=> b!6711788 (= e!4056287 (not (= (head!13498 s!2326) (c!1244463 r!7292))))))

(declare-fun bm!605892 () Bool)

(assert (=> bm!605892 (= call!605897 (isEmpty!38082 s!2326))))

(declare-fun b!6711789 () Bool)

(declare-fun nullable!6520 (Regex!16529) Bool)

(assert (=> b!6711789 (= e!4056291 (nullable!6520 r!7292))))

(declare-fun b!6711790 () Bool)

(declare-fun res!2746584 () Bool)

(assert (=> b!6711790 (=> res!2746584 e!4056287)))

(assert (=> b!6711790 (= res!2746584 (not (isEmpty!38082 (tail!12583 s!2326))))))

(declare-fun b!6711791 () Bool)

(assert (=> b!6711791 (= e!4056288 (= (head!13498 s!2326) (c!1244463 r!7292)))))

(declare-fun b!6711792 () Bool)

(declare-fun res!2746585 () Bool)

(assert (=> b!6711792 (=> res!2746585 e!4056289)))

(assert (=> b!6711792 (= res!2746585 e!4056288)))

(declare-fun res!2746587 () Bool)

(assert (=> b!6711792 (=> (not res!2746587) (not e!4056288))))

(assert (=> b!6711792 (= res!2746587 lt!2435720)))

(declare-fun b!6711793 () Bool)

(assert (=> b!6711793 (= e!4056286 e!4056290)))

(declare-fun c!1244518 () Bool)

(assert (=> b!6711793 (= c!1244518 ((_ is EmptyLang!16529) r!7292))))

(assert (= (and d!2110304 c!1244519) b!6711789))

(assert (= (and d!2110304 (not c!1244519)) b!6711784))

(assert (= (and d!2110304 c!1244520) b!6711783))

(assert (= (and d!2110304 (not c!1244520)) b!6711793))

(assert (= (and b!6711793 c!1244518) b!6711785))

(assert (= (and b!6711793 (not c!1244518)) b!6711780))

(assert (= (and b!6711780 (not res!2746581)) b!6711792))

(assert (= (and b!6711792 res!2746587) b!6711781))

(assert (= (and b!6711781 res!2746586) b!6711786))

(assert (= (and b!6711786 res!2746583) b!6711791))

(assert (= (and b!6711792 (not res!2746585)) b!6711787))

(assert (= (and b!6711787 res!2746582) b!6711782))

(assert (= (and b!6711782 (not res!2746588)) b!6711790))

(assert (= (and b!6711790 (not res!2746584)) b!6711788))

(assert (= (or b!6711783 b!6711781 b!6711782) bm!605892))

(declare-fun m!7477482 () Bool)

(assert (=> bm!605892 m!7477482))

(declare-fun m!7477484 () Bool)

(assert (=> b!6711784 m!7477484))

(assert (=> b!6711784 m!7477484))

(declare-fun m!7477486 () Bool)

(assert (=> b!6711784 m!7477486))

(declare-fun m!7477488 () Bool)

(assert (=> b!6711784 m!7477488))

(assert (=> b!6711784 m!7477486))

(assert (=> b!6711784 m!7477488))

(declare-fun m!7477490 () Bool)

(assert (=> b!6711784 m!7477490))

(assert (=> b!6711790 m!7477488))

(assert (=> b!6711790 m!7477488))

(declare-fun m!7477492 () Bool)

(assert (=> b!6711790 m!7477492))

(assert (=> b!6711788 m!7477484))

(assert (=> d!2110304 m!7477482))

(assert (=> d!2110304 m!7477392))

(assert (=> b!6711791 m!7477484))

(declare-fun m!7477494 () Bool)

(assert (=> b!6711789 m!7477494))

(assert (=> b!6711786 m!7477488))

(assert (=> b!6711786 m!7477488))

(assert (=> b!6711786 m!7477492))

(assert (=> b!6711602 d!2110304))

(declare-fun bs!1786568 () Bool)

(declare-fun b!6711903 () Bool)

(assert (= bs!1786568 (and b!6711903 b!6711599)))

(declare-fun lambda!376206 () Int)

(assert (=> bs!1786568 (not (= lambda!376206 lambda!376179))))

(assert (=> b!6711903 true))

(assert (=> b!6711903 true))

(declare-fun bs!1786569 () Bool)

(declare-fun b!6711905 () Bool)

(assert (= bs!1786569 (and b!6711905 b!6711599)))

(declare-fun lambda!376207 () Int)

(assert (=> bs!1786569 (not (= lambda!376207 lambda!376179))))

(declare-fun bs!1786570 () Bool)

(assert (= bs!1786570 (and b!6711905 b!6711903)))

(assert (=> bs!1786570 (not (= lambda!376207 lambda!376206))))

(assert (=> b!6711905 true))

(assert (=> b!6711905 true))

(declare-fun b!6711896 () Bool)

(declare-fun res!2746640 () Bool)

(declare-fun e!4056356 () Bool)

(assert (=> b!6711896 (=> res!2746640 e!4056356)))

(declare-fun call!605918 () Bool)

(assert (=> b!6711896 (= res!2746640 call!605918)))

(declare-fun e!4056358 () Bool)

(assert (=> b!6711896 (= e!4056358 e!4056356)))

(declare-fun b!6711897 () Bool)

(declare-fun c!1244550 () Bool)

(assert (=> b!6711897 (= c!1244550 ((_ is Union!16529) r!7292))))

(declare-fun e!4056360 () Bool)

(declare-fun e!4056362 () Bool)

(assert (=> b!6711897 (= e!4056360 e!4056362)))

(declare-fun bm!605912 () Bool)

(declare-fun c!1244547 () Bool)

(declare-fun call!605917 () Bool)

(assert (=> bm!605912 (= call!605917 (Exists!3597 (ite c!1244547 lambda!376206 lambda!376207)))))

(declare-fun b!6711898 () Bool)

(declare-fun e!4056359 () Bool)

(assert (=> b!6711898 (= e!4056362 e!4056359)))

(declare-fun res!2746639 () Bool)

(assert (=> b!6711898 (= res!2746639 (matchRSpec!3630 (regOne!33571 r!7292) s!2326))))

(assert (=> b!6711898 (=> res!2746639 e!4056359)))

(declare-fun b!6711899 () Bool)

(assert (=> b!6711899 (= e!4056359 (matchRSpec!3630 (regTwo!33571 r!7292) s!2326))))

(declare-fun b!6711900 () Bool)

(assert (=> b!6711900 (= e!4056360 (= s!2326 (Cons!65764 (c!1244463 r!7292) Nil!65764)))))

(declare-fun b!6711901 () Bool)

(declare-fun e!4056361 () Bool)

(assert (=> b!6711901 (= e!4056361 call!605918)))

(declare-fun b!6711902 () Bool)

(declare-fun e!4056357 () Bool)

(assert (=> b!6711902 (= e!4056361 e!4056357)))

(declare-fun res!2746641 () Bool)

(assert (=> b!6711902 (= res!2746641 (not ((_ is EmptyLang!16529) r!7292)))))

(assert (=> b!6711902 (=> (not res!2746641) (not e!4056357))))

(assert (=> b!6711903 (= e!4056356 call!605917)))

(declare-fun bm!605913 () Bool)

(assert (=> bm!605913 (= call!605918 (isEmpty!38082 s!2326))))

(declare-fun b!6711904 () Bool)

(assert (=> b!6711904 (= e!4056362 e!4056358)))

(assert (=> b!6711904 (= c!1244547 ((_ is Star!16529) r!7292))))

(declare-fun d!2110316 () Bool)

(declare-fun c!1244549 () Bool)

(assert (=> d!2110316 (= c!1244549 ((_ is EmptyExpr!16529) r!7292))))

(assert (=> d!2110316 (= (matchRSpec!3630 r!7292 s!2326) e!4056361)))

(assert (=> b!6711905 (= e!4056358 call!605917)))

(declare-fun b!6711906 () Bool)

(declare-fun c!1244548 () Bool)

(assert (=> b!6711906 (= c!1244548 ((_ is ElementMatch!16529) r!7292))))

(assert (=> b!6711906 (= e!4056357 e!4056360)))

(assert (= (and d!2110316 c!1244549) b!6711901))

(assert (= (and d!2110316 (not c!1244549)) b!6711902))

(assert (= (and b!6711902 res!2746641) b!6711906))

(assert (= (and b!6711906 c!1244548) b!6711900))

(assert (= (and b!6711906 (not c!1244548)) b!6711897))

(assert (= (and b!6711897 c!1244550) b!6711898))

(assert (= (and b!6711897 (not c!1244550)) b!6711904))

(assert (= (and b!6711898 (not res!2746639)) b!6711899))

(assert (= (and b!6711904 c!1244547) b!6711896))

(assert (= (and b!6711904 (not c!1244547)) b!6711905))

(assert (= (and b!6711896 (not res!2746640)) b!6711903))

(assert (= (or b!6711903 b!6711905) bm!605912))

(assert (= (or b!6711901 b!6711896) bm!605913))

(declare-fun m!7477514 () Bool)

(assert (=> bm!605912 m!7477514))

(declare-fun m!7477516 () Bool)

(assert (=> b!6711898 m!7477516))

(declare-fun m!7477518 () Bool)

(assert (=> b!6711899 m!7477518))

(assert (=> bm!605913 m!7477482))

(assert (=> b!6711602 d!2110316))

(declare-fun d!2110328 () Bool)

(assert (=> d!2110328 (= (matchR!8712 r!7292 s!2326) (matchRSpec!3630 r!7292 s!2326))))

(declare-fun lt!2435732 () Unit!159749)

(declare-fun choose!49994 (Regex!16529 List!65888) Unit!159749)

(assert (=> d!2110328 (= lt!2435732 (choose!49994 r!7292 s!2326))))

(assert (=> d!2110328 (validRegex!8265 r!7292)))

(assert (=> d!2110328 (= (mainMatchTheorem!3630 r!7292 s!2326) lt!2435732)))

(declare-fun bs!1786571 () Bool)

(assert (= bs!1786571 d!2110328))

(assert (=> bs!1786571 m!7477374))

(assert (=> bs!1786571 m!7477376))

(declare-fun m!7477520 () Bool)

(assert (=> bs!1786571 m!7477520))

(assert (=> bs!1786571 m!7477392))

(assert (=> b!6711602 d!2110328))

(declare-fun bs!1786576 () Bool)

(declare-fun d!2110330 () Bool)

(assert (= bs!1786576 (and d!2110330 d!2110294)))

(declare-fun lambda!376213 () Int)

(assert (=> bs!1786576 (= lambda!376213 lambda!376187)))

(declare-fun b!6711958 () Bool)

(declare-fun e!4056395 () Bool)

(declare-fun lt!2435741 () Regex!16529)

(declare-fun isEmptyLang!1909 (Regex!16529) Bool)

(assert (=> b!6711958 (= e!4056395 (isEmptyLang!1909 lt!2435741))))

(declare-fun b!6711959 () Bool)

(declare-fun e!4056393 () Bool)

(declare-fun isUnion!1339 (Regex!16529) Bool)

(assert (=> b!6711959 (= e!4056393 (isUnion!1339 lt!2435741))))

(declare-fun b!6711960 () Bool)

(declare-fun e!4056394 () Regex!16529)

(assert (=> b!6711960 (= e!4056394 EmptyLang!16529)))

(declare-fun e!4056396 () Bool)

(assert (=> d!2110330 e!4056396))

(declare-fun res!2746665 () Bool)

(assert (=> d!2110330 (=> (not res!2746665) (not e!4056396))))

(assert (=> d!2110330 (= res!2746665 (validRegex!8265 lt!2435741))))

(declare-fun e!4056397 () Regex!16529)

(assert (=> d!2110330 (= lt!2435741 e!4056397)))

(declare-fun c!1244565 () Bool)

(declare-fun e!4056392 () Bool)

(assert (=> d!2110330 (= c!1244565 e!4056392)))

(declare-fun res!2746666 () Bool)

(assert (=> d!2110330 (=> (not res!2746666) (not e!4056392))))

(assert (=> d!2110330 (= res!2746666 ((_ is Cons!65762) (unfocusZipperList!1950 zl!343)))))

(assert (=> d!2110330 (forall!15735 (unfocusZipperList!1950 zl!343) lambda!376213)))

(assert (=> d!2110330 (= (generalisedUnion!2373 (unfocusZipperList!1950 zl!343)) lt!2435741)))

(declare-fun b!6711961 () Bool)

(assert (=> b!6711961 (= e!4056397 (h!72210 (unfocusZipperList!1950 zl!343)))))

(declare-fun b!6711962 () Bool)

(assert (=> b!6711962 (= e!4056393 (= lt!2435741 (head!13497 (unfocusZipperList!1950 zl!343))))))

(declare-fun b!6711963 () Bool)

(assert (=> b!6711963 (= e!4056397 e!4056394)))

(declare-fun c!1244568 () Bool)

(assert (=> b!6711963 (= c!1244568 ((_ is Cons!65762) (unfocusZipperList!1950 zl!343)))))

(declare-fun b!6711964 () Bool)

(assert (=> b!6711964 (= e!4056392 (isEmpty!38081 (t!379563 (unfocusZipperList!1950 zl!343))))))

(declare-fun b!6711965 () Bool)

(assert (=> b!6711965 (= e!4056395 e!4056393)))

(declare-fun c!1244566 () Bool)

(assert (=> b!6711965 (= c!1244566 (isEmpty!38081 (tail!12582 (unfocusZipperList!1950 zl!343))))))

(declare-fun b!6711966 () Bool)

(assert (=> b!6711966 (= e!4056396 e!4056395)))

(declare-fun c!1244567 () Bool)

(assert (=> b!6711966 (= c!1244567 (isEmpty!38081 (unfocusZipperList!1950 zl!343)))))

(declare-fun b!6711967 () Bool)

(assert (=> b!6711967 (= e!4056394 (Union!16529 (h!72210 (unfocusZipperList!1950 zl!343)) (generalisedUnion!2373 (t!379563 (unfocusZipperList!1950 zl!343)))))))

(assert (= (and d!2110330 res!2746666) b!6711964))

(assert (= (and d!2110330 c!1244565) b!6711961))

(assert (= (and d!2110330 (not c!1244565)) b!6711963))

(assert (= (and b!6711963 c!1244568) b!6711967))

(assert (= (and b!6711963 (not c!1244568)) b!6711960))

(assert (= (and d!2110330 res!2746665) b!6711966))

(assert (= (and b!6711966 c!1244567) b!6711958))

(assert (= (and b!6711966 (not c!1244567)) b!6711965))

(assert (= (and b!6711965 c!1244566) b!6711962))

(assert (= (and b!6711965 (not c!1244566)) b!6711959))

(assert (=> b!6711966 m!7477366))

(declare-fun m!7477552 () Bool)

(assert (=> b!6711966 m!7477552))

(declare-fun m!7477554 () Bool)

(assert (=> b!6711964 m!7477554))

(declare-fun m!7477556 () Bool)

(assert (=> b!6711967 m!7477556))

(declare-fun m!7477558 () Bool)

(assert (=> b!6711958 m!7477558))

(assert (=> b!6711962 m!7477366))

(declare-fun m!7477560 () Bool)

(assert (=> b!6711962 m!7477560))

(declare-fun m!7477562 () Bool)

(assert (=> b!6711959 m!7477562))

(declare-fun m!7477564 () Bool)

(assert (=> d!2110330 m!7477564))

(assert (=> d!2110330 m!7477366))

(declare-fun m!7477566 () Bool)

(assert (=> d!2110330 m!7477566))

(assert (=> b!6711965 m!7477366))

(declare-fun m!7477568 () Bool)

(assert (=> b!6711965 m!7477568))

(assert (=> b!6711965 m!7477568))

(declare-fun m!7477570 () Bool)

(assert (=> b!6711965 m!7477570))

(assert (=> b!6711603 d!2110330))

(declare-fun bs!1786577 () Bool)

(declare-fun d!2110338 () Bool)

(assert (= bs!1786577 (and d!2110338 d!2110294)))

(declare-fun lambda!376216 () Int)

(assert (=> bs!1786577 (= lambda!376216 lambda!376187)))

(declare-fun bs!1786578 () Bool)

(assert (= bs!1786578 (and d!2110338 d!2110330)))

(assert (=> bs!1786578 (= lambda!376216 lambda!376213)))

(declare-fun lt!2435747 () List!65886)

(assert (=> d!2110338 (forall!15735 lt!2435747 lambda!376216)))

(declare-fun e!4056430 () List!65886)

(assert (=> d!2110338 (= lt!2435747 e!4056430)))

(declare-fun c!1244573 () Bool)

(assert (=> d!2110338 (= c!1244573 ((_ is Cons!65763) zl!343))))

(assert (=> d!2110338 (= (unfocusZipperList!1950 zl!343) lt!2435747)))

(declare-fun b!6712029 () Bool)

(assert (=> b!6712029 (= e!4056430 (Cons!65762 (generalisedConcat!2126 (exprs!6413 (h!72211 zl!343))) (unfocusZipperList!1950 (t!379564 zl!343))))))

(declare-fun b!6712030 () Bool)

(assert (=> b!6712030 (= e!4056430 Nil!65762)))

(assert (= (and d!2110338 c!1244573) b!6712029))

(assert (= (and d!2110338 (not c!1244573)) b!6712030))

(declare-fun m!7477582 () Bool)

(assert (=> d!2110338 m!7477582))

(assert (=> b!6712029 m!7477372))

(declare-fun m!7477584 () Bool)

(assert (=> b!6712029 m!7477584))

(assert (=> b!6711603 d!2110338))

(declare-fun d!2110342 () Bool)

(declare-fun e!4056436 () Bool)

(assert (=> d!2110342 e!4056436))

(declare-fun res!2746677 () Bool)

(assert (=> d!2110342 (=> (not res!2746677) (not e!4056436))))

(declare-fun lt!2435750 () List!65887)

(declare-fun noDuplicate!2327 (List!65887) Bool)

(assert (=> d!2110342 (= res!2746677 (noDuplicate!2327 lt!2435750))))

(declare-fun choose!49995 ((InoxSet Context!11826)) List!65887)

(assert (=> d!2110342 (= lt!2435750 (choose!49995 z!1189))))

(assert (=> d!2110342 (= (toList!10313 z!1189) lt!2435750)))

(declare-fun b!6712042 () Bool)

(declare-fun content!12746 (List!65887) (InoxSet Context!11826))

(assert (=> b!6712042 (= e!4056436 (= (content!12746 lt!2435750) z!1189))))

(assert (= (and d!2110342 res!2746677) b!6712042))

(declare-fun m!7477586 () Bool)

(assert (=> d!2110342 m!7477586))

(declare-fun m!7477588 () Bool)

(assert (=> d!2110342 m!7477588))

(declare-fun m!7477590 () Bool)

(assert (=> b!6712042 m!7477590))

(assert (=> b!6711598 d!2110342))

(declare-fun bs!1786579 () Bool)

(declare-fun d!2110344 () Bool)

(assert (= bs!1786579 (and d!2110344 d!2110294)))

(declare-fun lambda!376219 () Int)

(assert (=> bs!1786579 (= lambda!376219 lambda!376187)))

(declare-fun bs!1786580 () Bool)

(assert (= bs!1786580 (and d!2110344 d!2110330)))

(assert (=> bs!1786580 (= lambda!376219 lambda!376213)))

(declare-fun bs!1786581 () Bool)

(assert (= bs!1786581 (and d!2110344 d!2110338)))

(assert (=> bs!1786581 (= lambda!376219 lambda!376216)))

(assert (=> d!2110344 (= (inv!84569 (h!72211 zl!343)) (forall!15735 (exprs!6413 (h!72211 zl!343)) lambda!376219))))

(declare-fun bs!1786582 () Bool)

(assert (= bs!1786582 d!2110344))

(declare-fun m!7477592 () Bool)

(assert (=> bs!1786582 m!7477592))

(assert (=> b!6711608 d!2110344))

(declare-fun d!2110346 () Bool)

(declare-fun isEmpty!38084 (Option!16416) Bool)

(assert (=> d!2110346 (= (isDefined!13119 (findConcatSeparation!2830 (reg!16858 r!7292) r!7292 Nil!65764 s!2326 s!2326)) (not (isEmpty!38084 (findConcatSeparation!2830 (reg!16858 r!7292) r!7292 Nil!65764 s!2326 s!2326))))))

(declare-fun bs!1786583 () Bool)

(assert (= bs!1786583 d!2110346))

(assert (=> bs!1786583 m!7477386))

(declare-fun m!7477594 () Bool)

(assert (=> bs!1786583 m!7477594))

(assert (=> b!6711599 d!2110346))

(declare-fun b!6712061 () Bool)

(declare-fun e!4056457 () Bool)

(declare-fun e!4056454 () Bool)

(assert (=> b!6712061 (= e!4056457 e!4056454)))

(declare-fun res!2746691 () Bool)

(assert (=> b!6712061 (=> (not res!2746691) (not e!4056454))))

(declare-fun call!605929 () Bool)

(assert (=> b!6712061 (= res!2746691 call!605929)))

(declare-fun b!6712062 () Bool)

(declare-fun res!2746689 () Bool)

(declare-fun e!4056453 () Bool)

(assert (=> b!6712062 (=> (not res!2746689) (not e!4056453))))

(assert (=> b!6712062 (= res!2746689 call!605929)))

(declare-fun e!4056452 () Bool)

(assert (=> b!6712062 (= e!4056452 e!4056453)))

(declare-fun c!1244578 () Bool)

(declare-fun bm!605923 () Bool)

(declare-fun call!605928 () Bool)

(declare-fun c!1244579 () Bool)

(assert (=> bm!605923 (= call!605928 (validRegex!8265 (ite c!1244579 (reg!16858 (reg!16858 r!7292)) (ite c!1244578 (regTwo!33571 (reg!16858 r!7292)) (regTwo!33570 (reg!16858 r!7292))))))))

(declare-fun b!6712063 () Bool)

(declare-fun e!4056451 () Bool)

(assert (=> b!6712063 (= e!4056451 e!4056452)))

(assert (=> b!6712063 (= c!1244578 ((_ is Union!16529) (reg!16858 r!7292)))))

(declare-fun bm!605924 () Bool)

(declare-fun call!605930 () Bool)

(assert (=> bm!605924 (= call!605930 call!605928)))

(declare-fun b!6712064 () Bool)

(declare-fun res!2746692 () Bool)

(assert (=> b!6712064 (=> res!2746692 e!4056457)))

(assert (=> b!6712064 (= res!2746692 (not ((_ is Concat!25374) (reg!16858 r!7292))))))

(assert (=> b!6712064 (= e!4056452 e!4056457)))

(declare-fun b!6712065 () Bool)

(declare-fun e!4056455 () Bool)

(assert (=> b!6712065 (= e!4056451 e!4056455)))

(declare-fun res!2746688 () Bool)

(assert (=> b!6712065 (= res!2746688 (not (nullable!6520 (reg!16858 (reg!16858 r!7292)))))))

(assert (=> b!6712065 (=> (not res!2746688) (not e!4056455))))

(declare-fun bm!605925 () Bool)

(assert (=> bm!605925 (= call!605929 (validRegex!8265 (ite c!1244578 (regOne!33571 (reg!16858 r!7292)) (regOne!33570 (reg!16858 r!7292)))))))

(declare-fun b!6712066 () Bool)

(assert (=> b!6712066 (= e!4056454 call!605930)))

(declare-fun b!6712067 () Bool)

(declare-fun e!4056456 () Bool)

(assert (=> b!6712067 (= e!4056456 e!4056451)))

(assert (=> b!6712067 (= c!1244579 ((_ is Star!16529) (reg!16858 r!7292)))))

(declare-fun b!6712068 () Bool)

(assert (=> b!6712068 (= e!4056453 call!605930)))

(declare-fun d!2110348 () Bool)

(declare-fun res!2746690 () Bool)

(assert (=> d!2110348 (=> res!2746690 e!4056456)))

(assert (=> d!2110348 (= res!2746690 ((_ is ElementMatch!16529) (reg!16858 r!7292)))))

(assert (=> d!2110348 (= (validRegex!8265 (reg!16858 r!7292)) e!4056456)))

(declare-fun b!6712069 () Bool)

(assert (=> b!6712069 (= e!4056455 call!605928)))

(assert (= (and d!2110348 (not res!2746690)) b!6712067))

(assert (= (and b!6712067 c!1244579) b!6712065))

(assert (= (and b!6712067 (not c!1244579)) b!6712063))

(assert (= (and b!6712065 res!2746688) b!6712069))

(assert (= (and b!6712063 c!1244578) b!6712062))

(assert (= (and b!6712063 (not c!1244578)) b!6712064))

(assert (= (and b!6712062 res!2746689) b!6712068))

(assert (= (and b!6712064 (not res!2746692)) b!6712061))

(assert (= (and b!6712061 res!2746691) b!6712066))

(assert (= (or b!6712068 b!6712066) bm!605924))

(assert (= (or b!6712062 b!6712061) bm!605925))

(assert (= (or b!6712069 bm!605924) bm!605923))

(declare-fun m!7477596 () Bool)

(assert (=> bm!605923 m!7477596))

(declare-fun m!7477598 () Bool)

(assert (=> b!6712065 m!7477598))

(declare-fun m!7477600 () Bool)

(assert (=> bm!605925 m!7477600))

(assert (=> b!6711599 d!2110348))

(declare-fun d!2110350 () Bool)

(declare-fun choose!49997 (Int) Bool)

(assert (=> d!2110350 (= (Exists!3597 lambda!376179) (choose!49997 lambda!376179))))

(declare-fun bs!1786584 () Bool)

(assert (= bs!1786584 d!2110350))

(declare-fun m!7477602 () Bool)

(assert (=> bs!1786584 m!7477602))

(assert (=> b!6711599 d!2110350))

(declare-fun d!2110352 () Bool)

(declare-fun e!4056470 () Bool)

(assert (=> d!2110352 e!4056470))

(declare-fun res!2746706 () Bool)

(assert (=> d!2110352 (=> res!2746706 e!4056470)))

(declare-fun e!4056472 () Bool)

(assert (=> d!2110352 (= res!2746706 e!4056472)))

(declare-fun res!2746703 () Bool)

(assert (=> d!2110352 (=> (not res!2746703) (not e!4056472))))

(declare-fun lt!2435758 () Option!16416)

(assert (=> d!2110352 (= res!2746703 (isDefined!13119 lt!2435758))))

(declare-fun e!4056468 () Option!16416)

(assert (=> d!2110352 (= lt!2435758 e!4056468)))

(declare-fun c!1244585 () Bool)

(declare-fun e!4056471 () Bool)

(assert (=> d!2110352 (= c!1244585 e!4056471)))

(declare-fun res!2746705 () Bool)

(assert (=> d!2110352 (=> (not res!2746705) (not e!4056471))))

(assert (=> d!2110352 (= res!2746705 (matchR!8712 (reg!16858 r!7292) Nil!65764))))

(assert (=> d!2110352 (validRegex!8265 (reg!16858 r!7292))))

(assert (=> d!2110352 (= (findConcatSeparation!2830 (reg!16858 r!7292) r!7292 Nil!65764 s!2326 s!2326) lt!2435758)))

(declare-fun b!6712088 () Bool)

(declare-fun lt!2435757 () Unit!159749)

(declare-fun lt!2435759 () Unit!159749)

(assert (=> b!6712088 (= lt!2435757 lt!2435759)))

(declare-fun ++!14691 (List!65888 List!65888) List!65888)

(assert (=> b!6712088 (= (++!14691 (++!14691 Nil!65764 (Cons!65764 (h!72212 s!2326) Nil!65764)) (t!379565 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2664 (List!65888 C!33328 List!65888 List!65888) Unit!159749)

(assert (=> b!6712088 (= lt!2435759 (lemmaMoveElementToOtherListKeepsConcatEq!2664 Nil!65764 (h!72212 s!2326) (t!379565 s!2326) s!2326))))

(declare-fun e!4056469 () Option!16416)

(assert (=> b!6712088 (= e!4056469 (findConcatSeparation!2830 (reg!16858 r!7292) r!7292 (++!14691 Nil!65764 (Cons!65764 (h!72212 s!2326) Nil!65764)) (t!379565 s!2326) s!2326))))

(declare-fun b!6712089 () Bool)

(assert (=> b!6712089 (= e!4056470 (not (isDefined!13119 lt!2435758)))))

(declare-fun b!6712090 () Bool)

(assert (=> b!6712090 (= e!4056469 None!16415)))

(declare-fun b!6712091 () Bool)

(declare-fun res!2746704 () Bool)

(assert (=> b!6712091 (=> (not res!2746704) (not e!4056472))))

(declare-fun get!22871 (Option!16416) tuple2!67008)

(assert (=> b!6712091 (= res!2746704 (matchR!8712 (reg!16858 r!7292) (_1!36807 (get!22871 lt!2435758))))))

(declare-fun b!6712092 () Bool)

(assert (=> b!6712092 (= e!4056468 e!4056469)))

(declare-fun c!1244584 () Bool)

(assert (=> b!6712092 (= c!1244584 ((_ is Nil!65764) s!2326))))

(declare-fun b!6712093 () Bool)

(assert (=> b!6712093 (= e!4056472 (= (++!14691 (_1!36807 (get!22871 lt!2435758)) (_2!36807 (get!22871 lt!2435758))) s!2326))))

(declare-fun b!6712094 () Bool)

(assert (=> b!6712094 (= e!4056468 (Some!16415 (tuple2!67009 Nil!65764 s!2326)))))

(declare-fun b!6712095 () Bool)

(assert (=> b!6712095 (= e!4056471 (matchR!8712 r!7292 s!2326))))

(declare-fun b!6712096 () Bool)

(declare-fun res!2746707 () Bool)

(assert (=> b!6712096 (=> (not res!2746707) (not e!4056472))))

(assert (=> b!6712096 (= res!2746707 (matchR!8712 r!7292 (_2!36807 (get!22871 lt!2435758))))))

(assert (= (and d!2110352 res!2746705) b!6712095))

(assert (= (and d!2110352 c!1244585) b!6712094))

(assert (= (and d!2110352 (not c!1244585)) b!6712092))

(assert (= (and b!6712092 c!1244584) b!6712090))

(assert (= (and b!6712092 (not c!1244584)) b!6712088))

(assert (= (and d!2110352 res!2746703) b!6712091))

(assert (= (and b!6712091 res!2746704) b!6712096))

(assert (= (and b!6712096 res!2746707) b!6712093))

(assert (= (and d!2110352 (not res!2746706)) b!6712089))

(declare-fun m!7477604 () Bool)

(assert (=> d!2110352 m!7477604))

(declare-fun m!7477606 () Bool)

(assert (=> d!2110352 m!7477606))

(assert (=> d!2110352 m!7477384))

(declare-fun m!7477608 () Bool)

(assert (=> b!6712091 m!7477608))

(declare-fun m!7477610 () Bool)

(assert (=> b!6712091 m!7477610))

(assert (=> b!6712096 m!7477608))

(declare-fun m!7477612 () Bool)

(assert (=> b!6712096 m!7477612))

(assert (=> b!6712093 m!7477608))

(declare-fun m!7477614 () Bool)

(assert (=> b!6712093 m!7477614))

(assert (=> b!6712089 m!7477604))

(assert (=> b!6712095 m!7477374))

(declare-fun m!7477616 () Bool)

(assert (=> b!6712088 m!7477616))

(assert (=> b!6712088 m!7477616))

(declare-fun m!7477618 () Bool)

(assert (=> b!6712088 m!7477618))

(declare-fun m!7477620 () Bool)

(assert (=> b!6712088 m!7477620))

(assert (=> b!6712088 m!7477616))

(declare-fun m!7477622 () Bool)

(assert (=> b!6712088 m!7477622))

(assert (=> b!6711599 d!2110352))

(declare-fun bs!1786585 () Bool)

(declare-fun d!2110354 () Bool)

(assert (= bs!1786585 (and d!2110354 b!6711599)))

(declare-fun lambda!376222 () Int)

(assert (=> bs!1786585 (= lambda!376222 lambda!376179)))

(declare-fun bs!1786586 () Bool)

(assert (= bs!1786586 (and d!2110354 b!6711903)))

(assert (=> bs!1786586 (not (= lambda!376222 lambda!376206))))

(declare-fun bs!1786587 () Bool)

(assert (= bs!1786587 (and d!2110354 b!6711905)))

(assert (=> bs!1786587 (not (= lambda!376222 lambda!376207))))

(assert (=> d!2110354 true))

(assert (=> d!2110354 true))

(assert (=> d!2110354 true))

(assert (=> d!2110354 (= (isDefined!13119 (findConcatSeparation!2830 (reg!16858 r!7292) r!7292 Nil!65764 s!2326 s!2326)) (Exists!3597 lambda!376222))))

(declare-fun lt!2435762 () Unit!159749)

(declare-fun choose!49999 (Regex!16529 Regex!16529 List!65888) Unit!159749)

(assert (=> d!2110354 (= lt!2435762 (choose!49999 (reg!16858 r!7292) r!7292 s!2326))))

(assert (=> d!2110354 (validRegex!8265 (reg!16858 r!7292))))

(assert (=> d!2110354 (= (lemmaFindConcatSeparationEquivalentToExists!2594 (reg!16858 r!7292) r!7292 s!2326) lt!2435762)))

(declare-fun bs!1786588 () Bool)

(assert (= bs!1786588 d!2110354))

(assert (=> bs!1786588 m!7477384))

(assert (=> bs!1786588 m!7477386))

(assert (=> bs!1786588 m!7477388))

(assert (=> bs!1786588 m!7477386))

(declare-fun m!7477624 () Bool)

(assert (=> bs!1786588 m!7477624))

(declare-fun m!7477626 () Bool)

(assert (=> bs!1786588 m!7477626))

(assert (=> b!6711599 d!2110354))

(declare-fun b!6712101 () Bool)

(declare-fun e!4056481 () Bool)

(declare-fun e!4056478 () Bool)

(assert (=> b!6712101 (= e!4056481 e!4056478)))

(declare-fun res!2746715 () Bool)

(assert (=> b!6712101 (=> (not res!2746715) (not e!4056478))))

(declare-fun call!605932 () Bool)

(assert (=> b!6712101 (= res!2746715 call!605932)))

(declare-fun b!6712102 () Bool)

(declare-fun res!2746713 () Bool)

(declare-fun e!4056477 () Bool)

(assert (=> b!6712102 (=> (not res!2746713) (not e!4056477))))

(assert (=> b!6712102 (= res!2746713 call!605932)))

(declare-fun e!4056476 () Bool)

(assert (=> b!6712102 (= e!4056476 e!4056477)))

(declare-fun c!1244587 () Bool)

(declare-fun bm!605926 () Bool)

(declare-fun call!605931 () Bool)

(declare-fun c!1244586 () Bool)

(assert (=> bm!605926 (= call!605931 (validRegex!8265 (ite c!1244587 (reg!16858 r!7292) (ite c!1244586 (regTwo!33571 r!7292) (regTwo!33570 r!7292)))))))

(declare-fun b!6712103 () Bool)

(declare-fun e!4056475 () Bool)

(assert (=> b!6712103 (= e!4056475 e!4056476)))

(assert (=> b!6712103 (= c!1244586 ((_ is Union!16529) r!7292))))

(declare-fun bm!605927 () Bool)

(declare-fun call!605933 () Bool)

(assert (=> bm!605927 (= call!605933 call!605931)))

(declare-fun b!6712104 () Bool)

(declare-fun res!2746716 () Bool)

(assert (=> b!6712104 (=> res!2746716 e!4056481)))

(assert (=> b!6712104 (= res!2746716 (not ((_ is Concat!25374) r!7292)))))

(assert (=> b!6712104 (= e!4056476 e!4056481)))

(declare-fun b!6712105 () Bool)

(declare-fun e!4056479 () Bool)

(assert (=> b!6712105 (= e!4056475 e!4056479)))

(declare-fun res!2746712 () Bool)

(assert (=> b!6712105 (= res!2746712 (not (nullable!6520 (reg!16858 r!7292))))))

(assert (=> b!6712105 (=> (not res!2746712) (not e!4056479))))

(declare-fun bm!605928 () Bool)

(assert (=> bm!605928 (= call!605932 (validRegex!8265 (ite c!1244586 (regOne!33571 r!7292) (regOne!33570 r!7292))))))

(declare-fun b!6712106 () Bool)

(assert (=> b!6712106 (= e!4056478 call!605933)))

(declare-fun b!6712107 () Bool)

(declare-fun e!4056480 () Bool)

(assert (=> b!6712107 (= e!4056480 e!4056475)))

(assert (=> b!6712107 (= c!1244587 ((_ is Star!16529) r!7292))))

(declare-fun b!6712108 () Bool)

(assert (=> b!6712108 (= e!4056477 call!605933)))

(declare-fun d!2110356 () Bool)

(declare-fun res!2746714 () Bool)

(assert (=> d!2110356 (=> res!2746714 e!4056480)))

(assert (=> d!2110356 (= res!2746714 ((_ is ElementMatch!16529) r!7292))))

(assert (=> d!2110356 (= (validRegex!8265 r!7292) e!4056480)))

(declare-fun b!6712109 () Bool)

(assert (=> b!6712109 (= e!4056479 call!605931)))

(assert (= (and d!2110356 (not res!2746714)) b!6712107))

(assert (= (and b!6712107 c!1244587) b!6712105))

(assert (= (and b!6712107 (not c!1244587)) b!6712103))

(assert (= (and b!6712105 res!2746712) b!6712109))

(assert (= (and b!6712103 c!1244586) b!6712102))

(assert (= (and b!6712103 (not c!1244586)) b!6712104))

(assert (= (and b!6712102 res!2746713) b!6712108))

(assert (= (and b!6712104 (not res!2746716)) b!6712101))

(assert (= (and b!6712101 res!2746715) b!6712106))

(assert (= (or b!6712108 b!6712106) bm!605927))

(assert (= (or b!6712102 b!6712101) bm!605928))

(assert (= (or b!6712109 bm!605927) bm!605926))

(declare-fun m!7477628 () Bool)

(assert (=> bm!605926 m!7477628))

(declare-fun m!7477630 () Bool)

(assert (=> b!6712105 m!7477630))

(declare-fun m!7477632 () Bool)

(assert (=> bm!605928 m!7477632))

(assert (=> start!650924 d!2110356))

(declare-fun d!2110358 () Bool)

(assert (=> d!2110358 (= (isEmpty!38078 (t!379564 zl!343)) ((_ is Nil!65763) (t!379564 zl!343)))))

(assert (=> b!6711595 d!2110358))

(declare-fun bs!1786589 () Bool)

(declare-fun d!2110360 () Bool)

(assert (= bs!1786589 (and d!2110360 d!2110294)))

(declare-fun lambda!376223 () Int)

(assert (=> bs!1786589 (= lambda!376223 lambda!376187)))

(declare-fun bs!1786590 () Bool)

(assert (= bs!1786590 (and d!2110360 d!2110330)))

(assert (=> bs!1786590 (= lambda!376223 lambda!376213)))

(declare-fun bs!1786591 () Bool)

(assert (= bs!1786591 (and d!2110360 d!2110338)))

(assert (=> bs!1786591 (= lambda!376223 lambda!376216)))

(declare-fun bs!1786592 () Bool)

(assert (= bs!1786592 (and d!2110360 d!2110344)))

(assert (=> bs!1786592 (= lambda!376223 lambda!376219)))

(assert (=> d!2110360 (= (inv!84569 setElem!45705) (forall!15735 (exprs!6413 setElem!45705) lambda!376223))))

(declare-fun bs!1786593 () Bool)

(assert (= bs!1786593 d!2110360))

(declare-fun m!7477634 () Bool)

(assert (=> bs!1786593 m!7477634))

(assert (=> setNonEmpty!45705 d!2110360))

(declare-fun b!6712114 () Bool)

(declare-fun e!4056484 () Bool)

(declare-fun tp!1839454 () Bool)

(assert (=> b!6712114 (= e!4056484 (and tp_is_empty!42311 tp!1839454))))

(assert (=> b!6711596 (= tp!1839391 e!4056484)))

(assert (= (and b!6711596 ((_ is Cons!65764) (t!379565 s!2326))) b!6712114))

(declare-fun b!6712126 () Bool)

(declare-fun e!4056487 () Bool)

(declare-fun tp!1839469 () Bool)

(declare-fun tp!1839467 () Bool)

(assert (=> b!6712126 (= e!4056487 (and tp!1839469 tp!1839467))))

(declare-fun b!6712127 () Bool)

(declare-fun tp!1839468 () Bool)

(assert (=> b!6712127 (= e!4056487 tp!1839468)))

(declare-fun b!6712125 () Bool)

(assert (=> b!6712125 (= e!4056487 tp_is_empty!42311)))

(assert (=> b!6711597 (= tp!1839388 e!4056487)))

(declare-fun b!6712128 () Bool)

(declare-fun tp!1839465 () Bool)

(declare-fun tp!1839466 () Bool)

(assert (=> b!6712128 (= e!4056487 (and tp!1839465 tp!1839466))))

(assert (= (and b!6711597 ((_ is ElementMatch!16529) (reg!16858 r!7292))) b!6712125))

(assert (= (and b!6711597 ((_ is Concat!25374) (reg!16858 r!7292))) b!6712126))

(assert (= (and b!6711597 ((_ is Star!16529) (reg!16858 r!7292))) b!6712127))

(assert (= (and b!6711597 ((_ is Union!16529) (reg!16858 r!7292))) b!6712128))

(declare-fun b!6712133 () Bool)

(declare-fun e!4056490 () Bool)

(declare-fun tp!1839474 () Bool)

(declare-fun tp!1839475 () Bool)

(assert (=> b!6712133 (= e!4056490 (and tp!1839474 tp!1839475))))

(assert (=> b!6711593 (= tp!1839385 e!4056490)))

(assert (= (and b!6711593 ((_ is Cons!65762) (exprs!6413 setElem!45705))) b!6712133))

(declare-fun b!6712134 () Bool)

(declare-fun e!4056491 () Bool)

(declare-fun tp!1839476 () Bool)

(declare-fun tp!1839477 () Bool)

(assert (=> b!6712134 (= e!4056491 (and tp!1839476 tp!1839477))))

(assert (=> b!6711607 (= tp!1839393 e!4056491)))

(assert (= (and b!6711607 ((_ is Cons!65762) (exprs!6413 (h!72211 zl!343)))) b!6712134))

(declare-fun b!6712142 () Bool)

(declare-fun e!4056497 () Bool)

(declare-fun tp!1839482 () Bool)

(assert (=> b!6712142 (= e!4056497 tp!1839482)))

(declare-fun b!6712141 () Bool)

(declare-fun tp!1839483 () Bool)

(declare-fun e!4056496 () Bool)

(assert (=> b!6712141 (= e!4056496 (and (inv!84569 (h!72211 (t!379564 zl!343))) e!4056497 tp!1839483))))

(assert (=> b!6711608 (= tp!1839387 e!4056496)))

(assert (= b!6712141 b!6712142))

(assert (= (and b!6711608 ((_ is Cons!65763) (t!379564 zl!343))) b!6712141))

(declare-fun m!7477636 () Bool)

(assert (=> b!6712141 m!7477636))

(declare-fun b!6712144 () Bool)

(declare-fun e!4056498 () Bool)

(declare-fun tp!1839488 () Bool)

(declare-fun tp!1839486 () Bool)

(assert (=> b!6712144 (= e!4056498 (and tp!1839488 tp!1839486))))

(declare-fun b!6712145 () Bool)

(declare-fun tp!1839487 () Bool)

(assert (=> b!6712145 (= e!4056498 tp!1839487)))

(declare-fun b!6712143 () Bool)

(assert (=> b!6712143 (= e!4056498 tp_is_empty!42311)))

(assert (=> b!6711605 (= tp!1839392 e!4056498)))

(declare-fun b!6712146 () Bool)

(declare-fun tp!1839484 () Bool)

(declare-fun tp!1839485 () Bool)

(assert (=> b!6712146 (= e!4056498 (and tp!1839484 tp!1839485))))

(assert (= (and b!6711605 ((_ is ElementMatch!16529) (regOne!33570 r!7292))) b!6712143))

(assert (= (and b!6711605 ((_ is Concat!25374) (regOne!33570 r!7292))) b!6712144))

(assert (= (and b!6711605 ((_ is Star!16529) (regOne!33570 r!7292))) b!6712145))

(assert (= (and b!6711605 ((_ is Union!16529) (regOne!33570 r!7292))) b!6712146))

(declare-fun b!6712148 () Bool)

(declare-fun e!4056499 () Bool)

(declare-fun tp!1839493 () Bool)

(declare-fun tp!1839491 () Bool)

(assert (=> b!6712148 (= e!4056499 (and tp!1839493 tp!1839491))))

(declare-fun b!6712149 () Bool)

(declare-fun tp!1839492 () Bool)

(assert (=> b!6712149 (= e!4056499 tp!1839492)))

(declare-fun b!6712147 () Bool)

(assert (=> b!6712147 (= e!4056499 tp_is_empty!42311)))

(assert (=> b!6711605 (= tp!1839389 e!4056499)))

(declare-fun b!6712150 () Bool)

(declare-fun tp!1839489 () Bool)

(declare-fun tp!1839490 () Bool)

(assert (=> b!6712150 (= e!4056499 (and tp!1839489 tp!1839490))))

(assert (= (and b!6711605 ((_ is ElementMatch!16529) (regTwo!33570 r!7292))) b!6712147))

(assert (= (and b!6711605 ((_ is Concat!25374) (regTwo!33570 r!7292))) b!6712148))

(assert (= (and b!6711605 ((_ is Star!16529) (regTwo!33570 r!7292))) b!6712149))

(assert (= (and b!6711605 ((_ is Union!16529) (regTwo!33570 r!7292))) b!6712150))

(declare-fun b!6712152 () Bool)

(declare-fun e!4056500 () Bool)

(declare-fun tp!1839498 () Bool)

(declare-fun tp!1839496 () Bool)

(assert (=> b!6712152 (= e!4056500 (and tp!1839498 tp!1839496))))

(declare-fun b!6712153 () Bool)

(declare-fun tp!1839497 () Bool)

(assert (=> b!6712153 (= e!4056500 tp!1839497)))

(declare-fun b!6712151 () Bool)

(assert (=> b!6712151 (= e!4056500 tp_is_empty!42311)))

(assert (=> b!6711600 (= tp!1839384 e!4056500)))

(declare-fun b!6712154 () Bool)

(declare-fun tp!1839494 () Bool)

(declare-fun tp!1839495 () Bool)

(assert (=> b!6712154 (= e!4056500 (and tp!1839494 tp!1839495))))

(assert (= (and b!6711600 ((_ is ElementMatch!16529) (regOne!33571 r!7292))) b!6712151))

(assert (= (and b!6711600 ((_ is Concat!25374) (regOne!33571 r!7292))) b!6712152))

(assert (= (and b!6711600 ((_ is Star!16529) (regOne!33571 r!7292))) b!6712153))

(assert (= (and b!6711600 ((_ is Union!16529) (regOne!33571 r!7292))) b!6712154))

(declare-fun b!6712156 () Bool)

(declare-fun e!4056501 () Bool)

(declare-fun tp!1839503 () Bool)

(declare-fun tp!1839501 () Bool)

(assert (=> b!6712156 (= e!4056501 (and tp!1839503 tp!1839501))))

(declare-fun b!6712157 () Bool)

(declare-fun tp!1839502 () Bool)

(assert (=> b!6712157 (= e!4056501 tp!1839502)))

(declare-fun b!6712155 () Bool)

(assert (=> b!6712155 (= e!4056501 tp_is_empty!42311)))

(assert (=> b!6711600 (= tp!1839390 e!4056501)))

(declare-fun b!6712158 () Bool)

(declare-fun tp!1839499 () Bool)

(declare-fun tp!1839500 () Bool)

(assert (=> b!6712158 (= e!4056501 (and tp!1839499 tp!1839500))))

(assert (= (and b!6711600 ((_ is ElementMatch!16529) (regTwo!33571 r!7292))) b!6712155))

(assert (= (and b!6711600 ((_ is Concat!25374) (regTwo!33571 r!7292))) b!6712156))

(assert (= (and b!6711600 ((_ is Star!16529) (regTwo!33571 r!7292))) b!6712157))

(assert (= (and b!6711600 ((_ is Union!16529) (regTwo!33571 r!7292))) b!6712158))

(declare-fun condSetEmpty!45711 () Bool)

(assert (=> setNonEmpty!45705 (= condSetEmpty!45711 (= setRest!45705 ((as const (Array Context!11826 Bool)) false)))))

(declare-fun setRes!45711 () Bool)

(assert (=> setNonEmpty!45705 (= tp!1839386 setRes!45711)))

(declare-fun setIsEmpty!45711 () Bool)

(assert (=> setIsEmpty!45711 setRes!45711))

(declare-fun tp!1839508 () Bool)

(declare-fun setElem!45711 () Context!11826)

(declare-fun setNonEmpty!45711 () Bool)

(declare-fun e!4056504 () Bool)

(assert (=> setNonEmpty!45711 (= setRes!45711 (and tp!1839508 (inv!84569 setElem!45711) e!4056504))))

(declare-fun setRest!45711 () (InoxSet Context!11826))

(assert (=> setNonEmpty!45711 (= setRest!45705 ((_ map or) (store ((as const (Array Context!11826 Bool)) false) setElem!45711 true) setRest!45711))))

(declare-fun b!6712163 () Bool)

(declare-fun tp!1839509 () Bool)

(assert (=> b!6712163 (= e!4056504 tp!1839509)))

(assert (= (and setNonEmpty!45705 condSetEmpty!45711) setIsEmpty!45711))

(assert (= (and setNonEmpty!45705 (not condSetEmpty!45711)) setNonEmpty!45711))

(assert (= setNonEmpty!45711 b!6712163))

(declare-fun m!7477638 () Bool)

(assert (=> setNonEmpty!45711 m!7477638))

(check-sat (not b!6712149) tp_is_empty!42311 (not b!6712142) (not b!6711959) (not d!2110294) (not d!2110302) (not d!2110354) (not b!6712095) (not b!6711899) (not b!6711668) (not bm!605923) (not b!6712144) (not b!6711789) (not bm!605892) (not b!6712141) (not b!6711898) (not d!2110344) (not b!6712133) (not b!6712146) (not b!6711958) (not b!6712042) (not b!6711677) (not b!6711967) (not bm!605912) (not b!6712128) (not b!6711964) (not b!6711966) (not d!2110304) (not d!2110346) (not b!6711784) (not b!6712096) (not b!6712126) (not b!6711671) (not b!6712093) (not b!6712105) (not b!6711674) (not b!6712127) (not b!6712065) (not d!2110352) (not b!6712154) (not b!6711791) (not b!6711965) (not b!6712150) (not b!6712088) (not b!6712091) (not bm!605926) (not b!6712158) (not b!6711788) (not d!2110338) (not b!6712163) (not bm!605928) (not b!6711672) (not b!6712114) (not b!6712156) (not b!6711786) (not bm!605913) (not d!2110330) (not b!6712145) (not b!6711669) (not b!6712089) (not setNonEmpty!45711) (not d!2110328) (not b!6712157) (not b!6712148) (not b!6712134) (not bm!605925) (not d!2110350) (not b!6711670) (not d!2110342) (not b!6712153) (not b!6712029) (not b!6712152) (not d!2110360) (not b!6711962) (not b!6711790))
(check-sat)
