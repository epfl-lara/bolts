; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!635882 () Bool)

(assert start!635882)

(declare-fun b!6444787 () Bool)

(assert (=> b!6444787 true))

(assert (=> b!6444787 true))

(declare-fun lambda!356561 () Int)

(declare-fun lambda!356560 () Int)

(assert (=> b!6444787 (not (= lambda!356561 lambda!356560))))

(assert (=> b!6444787 true))

(assert (=> b!6444787 true))

(declare-fun b!6444820 () Bool)

(assert (=> b!6444820 true))

(declare-fun bs!1624815 () Bool)

(declare-fun b!6444793 () Bool)

(assert (= bs!1624815 (and b!6444793 b!6444787)))

(declare-datatypes ((C!32952 0))(
  ( (C!32953 (val!26178 Int)) )
))
(declare-datatypes ((Regex!16341 0))(
  ( (ElementMatch!16341 (c!1178714 C!32952)) (Concat!25186 (regOne!33194 Regex!16341) (regTwo!33194 Regex!16341)) (EmptyExpr!16341) (Star!16341 (reg!16670 Regex!16341)) (EmptyLang!16341) (Union!16341 (regOne!33195 Regex!16341) (regTwo!33195 Regex!16341)) )
))
(declare-fun r!7292 () Regex!16341)

(declare-fun lt!2381422 () Regex!16341)

(declare-fun lambda!356563 () Int)

(assert (=> bs!1624815 (= (= lt!2381422 (regOne!33194 r!7292)) (= lambda!356563 lambda!356560))))

(assert (=> bs!1624815 (not (= lambda!356563 lambda!356561))))

(assert (=> b!6444793 true))

(assert (=> b!6444793 true))

(assert (=> b!6444793 true))

(declare-fun lambda!356564 () Int)

(assert (=> bs!1624815 (not (= lambda!356564 lambda!356560))))

(assert (=> bs!1624815 (= (= lt!2381422 (regOne!33194 r!7292)) (= lambda!356564 lambda!356561))))

(assert (=> b!6444793 (not (= lambda!356564 lambda!356563))))

(assert (=> b!6444793 true))

(assert (=> b!6444793 true))

(assert (=> b!6444793 true))

(declare-fun bs!1624816 () Bool)

(declare-fun b!6444795 () Bool)

(assert (= bs!1624816 (and b!6444795 b!6444787)))

(declare-datatypes ((List!65322 0))(
  ( (Nil!65198) (Cons!65198 (h!71646 C!32952) (t!378942 List!65322)) )
))
(declare-fun s!2326 () List!65322)

(declare-datatypes ((tuple2!66640 0))(
  ( (tuple2!66641 (_1!36623 List!65322) (_2!36623 List!65322)) )
))
(declare-fun lt!2381393 () tuple2!66640)

(declare-fun lambda!356565 () Int)

(assert (=> bs!1624816 (= (and (= (_1!36623 lt!2381393) s!2326) (= (reg!16670 (regOne!33194 r!7292)) (regOne!33194 r!7292)) (= lt!2381422 (regTwo!33194 r!7292))) (= lambda!356565 lambda!356560))))

(assert (=> bs!1624816 (not (= lambda!356565 lambda!356561))))

(declare-fun bs!1624817 () Bool)

(assert (= bs!1624817 (and b!6444795 b!6444793)))

(assert (=> bs!1624817 (= (and (= (_1!36623 lt!2381393) s!2326) (= (reg!16670 (regOne!33194 r!7292)) lt!2381422) (= lt!2381422 (regTwo!33194 r!7292))) (= lambda!356565 lambda!356563))))

(assert (=> bs!1624817 (not (= lambda!356565 lambda!356564))))

(assert (=> b!6444795 true))

(assert (=> b!6444795 true))

(assert (=> b!6444795 true))

(declare-fun lambda!356566 () Int)

(assert (=> bs!1624817 (not (= lambda!356566 lambda!356563))))

(assert (=> bs!1624816 (not (= lambda!356566 lambda!356561))))

(assert (=> bs!1624816 (not (= lambda!356566 lambda!356560))))

(assert (=> bs!1624817 (not (= lambda!356566 lambda!356564))))

(assert (=> b!6444795 (not (= lambda!356566 lambda!356565))))

(assert (=> b!6444795 true))

(assert (=> b!6444795 true))

(assert (=> b!6444795 true))

(declare-fun lambda!356567 () Int)

(assert (=> bs!1624817 (not (= lambda!356567 lambda!356563))))

(assert (=> bs!1624816 (= (and (= (_1!36623 lt!2381393) s!2326) (= (reg!16670 (regOne!33194 r!7292)) (regOne!33194 r!7292)) (= lt!2381422 (regTwo!33194 r!7292))) (= lambda!356567 lambda!356561))))

(assert (=> bs!1624816 (not (= lambda!356567 lambda!356560))))

(assert (=> bs!1624817 (= (and (= (_1!36623 lt!2381393) s!2326) (= (reg!16670 (regOne!33194 r!7292)) lt!2381422) (= lt!2381422 (regTwo!33194 r!7292))) (= lambda!356567 lambda!356564))))

(assert (=> b!6444795 (not (= lambda!356567 lambda!356566))))

(assert (=> b!6444795 (not (= lambda!356567 lambda!356565))))

(assert (=> b!6444795 true))

(assert (=> b!6444795 true))

(assert (=> b!6444795 true))

(declare-fun b!6444778 () Bool)

(declare-fun e!3908878 () Bool)

(declare-fun tp!1786794 () Bool)

(assert (=> b!6444778 (= e!3908878 tp!1786794)))

(declare-fun b!6444779 () Bool)

(declare-fun res!2648586 () Bool)

(declare-fun e!3908880 () Bool)

(assert (=> b!6444779 (=> res!2648586 e!3908880)))

(declare-datatypes ((List!65323 0))(
  ( (Nil!65199) (Cons!65199 (h!71647 Regex!16341) (t!378943 List!65323)) )
))
(declare-datatypes ((Context!11450 0))(
  ( (Context!11451 (exprs!6225 List!65323)) )
))
(declare-datatypes ((List!65324 0))(
  ( (Nil!65200) (Cons!65200 (h!71648 Context!11450) (t!378944 List!65324)) )
))
(declare-fun zl!343 () List!65324)

(declare-fun isEmpty!37372 (List!65323) Bool)

(assert (=> b!6444779 (= res!2648586 (isEmpty!37372 (t!378943 (exprs!6225 (h!71648 zl!343)))))))

(declare-fun b!6444780 () Bool)

(declare-fun res!2648576 () Bool)

(declare-fun e!3908879 () Bool)

(assert (=> b!6444780 (=> (not res!2648576) (not e!3908879))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11450))

(declare-fun toList!10125 ((InoxSet Context!11450)) List!65324)

(assert (=> b!6444780 (= res!2648576 (= (toList!10125 z!1189) zl!343))))

(declare-fun b!6444781 () Bool)

(declare-fun res!2648585 () Bool)

(declare-fun e!3908890 () Bool)

(assert (=> b!6444781 (=> res!2648585 e!3908890)))

(get-info :version)

(assert (=> b!6444781 (= res!2648585 (not ((_ is Cons!65199) (exprs!6225 (h!71648 zl!343)))))))

(declare-fun b!6444782 () Bool)

(declare-fun res!2648587 () Bool)

(declare-fun e!3908871 () Bool)

(assert (=> b!6444782 (=> res!2648587 e!3908871)))

(declare-fun matchR!8524 (Regex!16341 List!65322) Bool)

(assert (=> b!6444782 (= res!2648587 (not (matchR!8524 (regTwo!33194 r!7292) (_2!36623 lt!2381393))))))

(declare-fun b!6444783 () Bool)

(declare-fun e!3908888 () Bool)

(declare-fun nullable!6334 (Regex!16341) Bool)

(assert (=> b!6444783 (= e!3908888 (nullable!6334 (regOne!33194 (regOne!33194 r!7292))))))

(declare-fun b!6444784 () Bool)

(declare-fun e!3908881 () Bool)

(assert (=> b!6444784 (= e!3908881 (not e!3908890))))

(declare-fun res!2648588 () Bool)

(assert (=> b!6444784 (=> res!2648588 e!3908890)))

(assert (=> b!6444784 (= res!2648588 (not ((_ is Cons!65200) zl!343)))))

(declare-fun lt!2381403 () Bool)

(declare-fun lt!2381419 () Bool)

(assert (=> b!6444784 (= lt!2381403 lt!2381419)))

(declare-fun matchRSpec!3442 (Regex!16341 List!65322) Bool)

(assert (=> b!6444784 (= lt!2381419 (matchRSpec!3442 r!7292 s!2326))))

(assert (=> b!6444784 (= lt!2381403 (matchR!8524 r!7292 s!2326))))

(declare-datatypes ((Unit!158695 0))(
  ( (Unit!158696) )
))
(declare-fun lt!2381387 () Unit!158695)

(declare-fun mainMatchTheorem!3442 (Regex!16341 List!65322) Unit!158695)

(assert (=> b!6444784 (= lt!2381387 (mainMatchTheorem!3442 r!7292 s!2326))))

(declare-fun b!6444785 () Bool)

(declare-fun res!2648571 () Bool)

(assert (=> b!6444785 (=> res!2648571 e!3908890)))

(assert (=> b!6444785 (= res!2648571 (or ((_ is EmptyExpr!16341) r!7292) ((_ is EmptyLang!16341) r!7292) ((_ is ElementMatch!16341) r!7292) ((_ is Union!16341) r!7292) (not ((_ is Concat!25186) r!7292))))))

(declare-fun b!6444786 () Bool)

(declare-fun res!2648577 () Bool)

(declare-fun e!3908874 () Bool)

(assert (=> b!6444786 (=> res!2648577 e!3908874)))

(declare-fun lt!2381415 () (InoxSet Context!11450))

(declare-fun lt!2381424 () List!65324)

(assert (=> b!6444786 (= res!2648577 (not (= (toList!10125 lt!2381415) lt!2381424)))))

(assert (=> b!6444787 (= e!3908890 e!3908880)))

(declare-fun res!2648558 () Bool)

(assert (=> b!6444787 (=> res!2648558 e!3908880)))

(declare-fun lt!2381408 () Bool)

(assert (=> b!6444787 (= res!2648558 (or (not (= lt!2381403 lt!2381408)) ((_ is Nil!65198) s!2326)))))

(declare-fun Exists!3411 (Int) Bool)

(assert (=> b!6444787 (= (Exists!3411 lambda!356560) (Exists!3411 lambda!356561))))

(declare-fun lt!2381391 () Unit!158695)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1948 (Regex!16341 Regex!16341 List!65322) Unit!158695)

(assert (=> b!6444787 (= lt!2381391 (lemmaExistCutMatchRandMatchRSpecEquivalent!1948 (regOne!33194 r!7292) (regTwo!33194 r!7292) s!2326))))

(assert (=> b!6444787 (= lt!2381408 (Exists!3411 lambda!356560))))

(declare-datatypes ((Option!16232 0))(
  ( (None!16231) (Some!16231 (v!52406 tuple2!66640)) )
))
(declare-fun isDefined!12935 (Option!16232) Bool)

(declare-fun findConcatSeparation!2646 (Regex!16341 Regex!16341 List!65322 List!65322 List!65322) Option!16232)

(assert (=> b!6444787 (= lt!2381408 (isDefined!12935 (findConcatSeparation!2646 (regOne!33194 r!7292) (regTwo!33194 r!7292) Nil!65198 s!2326 s!2326)))))

(declare-fun lt!2381374 () Unit!158695)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2410 (Regex!16341 Regex!16341 List!65322) Unit!158695)

(assert (=> b!6444787 (= lt!2381374 (lemmaFindConcatSeparationEquivalentToExists!2410 (regOne!33194 r!7292) (regTwo!33194 r!7292) s!2326))))

(declare-fun b!6444788 () Bool)

(declare-fun res!2648568 () Bool)

(assert (=> b!6444788 (=> res!2648568 e!3908871)))

(assert (=> b!6444788 (= res!2648568 (not (matchR!8524 lt!2381422 (_1!36623 lt!2381393))))))

(declare-fun b!6444789 () Bool)

(declare-fun e!3908872 () Bool)

(declare-fun e!3908876 () Bool)

(assert (=> b!6444789 (= e!3908872 e!3908876)))

(declare-fun res!2648581 () Bool)

(assert (=> b!6444789 (=> res!2648581 e!3908876)))

(declare-fun lt!2381390 () (InoxSet Context!11450))

(declare-fun lt!2381389 () (InoxSet Context!11450))

(assert (=> b!6444789 (= res!2648581 (not (= lt!2381390 lt!2381389)))))

(declare-fun lt!2381377 () Context!11450)

(declare-fun lambda!356562 () Int)

(declare-fun lt!2381400 () (InoxSet Context!11450))

(declare-fun flatMap!1846 ((InoxSet Context!11450) Int) (InoxSet Context!11450))

(declare-fun derivationStepZipperUp!1515 (Context!11450 C!32952) (InoxSet Context!11450))

(assert (=> b!6444789 (= (flatMap!1846 lt!2381400 lambda!356562) (derivationStepZipperUp!1515 lt!2381377 (h!71646 s!2326)))))

(declare-fun lt!2381407 () Unit!158695)

(declare-fun lemmaFlatMapOnSingletonSet!1372 ((InoxSet Context!11450) Context!11450 Int) Unit!158695)

(assert (=> b!6444789 (= lt!2381407 (lemmaFlatMapOnSingletonSet!1372 lt!2381400 lt!2381377 lambda!356562))))

(declare-fun lt!2381383 () (InoxSet Context!11450))

(assert (=> b!6444789 (= lt!2381383 (derivationStepZipperUp!1515 lt!2381377 (h!71646 s!2326)))))

(declare-fun derivationStepZipper!2307 ((InoxSet Context!11450) C!32952) (InoxSet Context!11450))

(assert (=> b!6444789 (= lt!2381390 (derivationStepZipper!2307 lt!2381400 (h!71646 s!2326)))))

(assert (=> b!6444789 (= lt!2381400 (store ((as const (Array Context!11450 Bool)) false) lt!2381377 true))))

(declare-fun lt!2381380 () List!65323)

(assert (=> b!6444789 (= lt!2381377 (Context!11451 (Cons!65199 (reg!16670 (regOne!33194 r!7292)) lt!2381380)))))

(declare-fun b!6444790 () Bool)

(declare-fun e!3908883 () Bool)

(declare-fun e!3908887 () Bool)

(assert (=> b!6444790 (= e!3908883 e!3908887)))

(declare-fun res!2648580 () Bool)

(assert (=> b!6444790 (=> res!2648580 e!3908887)))

(declare-fun lt!2381406 () Regex!16341)

(declare-fun unfocusZipper!2083 (List!65324) Regex!16341)

(assert (=> b!6444790 (= res!2648580 (not (= (unfocusZipper!2083 (Cons!65200 lt!2381377 Nil!65200)) lt!2381406)))))

(declare-fun lt!2381402 () Regex!16341)

(assert (=> b!6444790 (= lt!2381406 (Concat!25186 (reg!16670 (regOne!33194 r!7292)) lt!2381402))))

(declare-fun b!6444791 () Bool)

(declare-fun e!3908885 () Bool)

(assert (=> b!6444791 (= e!3908887 e!3908885)))

(declare-fun res!2648560 () Bool)

(assert (=> b!6444791 (=> res!2648560 e!3908885)))

(declare-fun lt!2381379 () Regex!16341)

(assert (=> b!6444791 (= res!2648560 (not (= lt!2381379 (reg!16670 (regOne!33194 r!7292)))))))

(assert (=> b!6444791 (= lt!2381379 (unfocusZipper!2083 lt!2381424))))

(declare-fun lt!2381411 () Context!11450)

(assert (=> b!6444791 (= lt!2381424 (Cons!65200 lt!2381411 Nil!65200))))

(declare-fun lt!2381420 () Context!11450)

(declare-fun lt!2381398 () (InoxSet Context!11450))

(assert (=> b!6444791 (= (flatMap!1846 lt!2381398 lambda!356562) (derivationStepZipperUp!1515 lt!2381420 (h!71646 s!2326)))))

(declare-fun lt!2381401 () Unit!158695)

(assert (=> b!6444791 (= lt!2381401 (lemmaFlatMapOnSingletonSet!1372 lt!2381398 lt!2381420 lambda!356562))))

(assert (=> b!6444791 (= (flatMap!1846 lt!2381415 lambda!356562) (derivationStepZipperUp!1515 lt!2381411 (h!71646 s!2326)))))

(declare-fun lt!2381409 () Unit!158695)

(assert (=> b!6444791 (= lt!2381409 (lemmaFlatMapOnSingletonSet!1372 lt!2381415 lt!2381411 lambda!356562))))

(declare-fun lt!2381396 () (InoxSet Context!11450))

(assert (=> b!6444791 (= lt!2381396 (derivationStepZipperUp!1515 lt!2381420 (h!71646 s!2326)))))

(declare-fun lt!2381418 () (InoxSet Context!11450))

(assert (=> b!6444791 (= lt!2381418 (derivationStepZipperUp!1515 lt!2381411 (h!71646 s!2326)))))

(assert (=> b!6444791 (= lt!2381398 (store ((as const (Array Context!11450 Bool)) false) lt!2381420 true))))

(assert (=> b!6444791 (= lt!2381415 (store ((as const (Array Context!11450 Bool)) false) lt!2381411 true))))

(assert (=> b!6444791 (= lt!2381411 (Context!11451 (Cons!65199 (reg!16670 (regOne!33194 r!7292)) Nil!65199)))))

(declare-fun b!6444792 () Bool)

(declare-fun e!3908891 () Bool)

(declare-fun tp!1786793 () Bool)

(assert (=> b!6444792 (= e!3908891 tp!1786793)))

(declare-fun e!3908894 () Bool)

(assert (=> b!6444793 (= e!3908894 e!3908871)))

(declare-fun res!2648591 () Bool)

(assert (=> b!6444793 (=> res!2648591 e!3908871)))

(declare-fun ++!14409 (List!65322 List!65322) List!65322)

(assert (=> b!6444793 (= res!2648591 (not (= (++!14409 (_1!36623 lt!2381393) (_2!36623 lt!2381393)) s!2326)))))

(declare-fun lt!2381376 () Option!16232)

(declare-fun get!22595 (Option!16232) tuple2!66640)

(assert (=> b!6444793 (= lt!2381393 (get!22595 lt!2381376))))

(assert (=> b!6444793 (= (Exists!3411 lambda!356563) (Exists!3411 lambda!356564))))

(declare-fun lt!2381394 () Unit!158695)

(assert (=> b!6444793 (= lt!2381394 (lemmaExistCutMatchRandMatchRSpecEquivalent!1948 lt!2381422 (regTwo!33194 r!7292) s!2326))))

(assert (=> b!6444793 (= (isDefined!12935 lt!2381376) (Exists!3411 lambda!356563))))

(assert (=> b!6444793 (= lt!2381376 (findConcatSeparation!2646 lt!2381422 (regTwo!33194 r!7292) Nil!65198 s!2326 s!2326))))

(declare-fun lt!2381417 () Unit!158695)

(assert (=> b!6444793 (= lt!2381417 (lemmaFindConcatSeparationEquivalentToExists!2410 lt!2381422 (regTwo!33194 r!7292) s!2326))))

(declare-fun b!6444794 () Bool)

(declare-fun res!2648573 () Bool)

(assert (=> b!6444794 (=> res!2648573 e!3908890)))

(declare-fun isEmpty!37373 (List!65324) Bool)

(assert (=> b!6444794 (= res!2648573 (not (isEmpty!37373 (t!378944 zl!343))))))

(declare-fun e!3908893 () Bool)

(assert (=> b!6444795 (= e!3908871 e!3908893)))

(declare-fun res!2648557 () Bool)

(assert (=> b!6444795 (=> res!2648557 e!3908893)))

(declare-fun lt!2381397 () List!65322)

(assert (=> b!6444795 (= res!2648557 (not (= (_1!36623 lt!2381393) lt!2381397)))))

(declare-fun lt!2381399 () tuple2!66640)

(assert (=> b!6444795 (= lt!2381397 (++!14409 (_1!36623 lt!2381399) (_2!36623 lt!2381399)))))

(declare-fun lt!2381416 () Option!16232)

(assert (=> b!6444795 (= lt!2381399 (get!22595 lt!2381416))))

(assert (=> b!6444795 (= (Exists!3411 lambda!356565) (Exists!3411 lambda!356567))))

(declare-fun lt!2381413 () Unit!158695)

(assert (=> b!6444795 (= lt!2381413 (lemmaExistCutMatchRandMatchRSpecEquivalent!1948 (reg!16670 (regOne!33194 r!7292)) lt!2381422 (_1!36623 lt!2381393)))))

(assert (=> b!6444795 (= (Exists!3411 lambda!356565) (Exists!3411 lambda!356566))))

(declare-fun lt!2381375 () Unit!158695)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!632 (Regex!16341 List!65322) Unit!158695)

(assert (=> b!6444795 (= lt!2381375 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!632 (reg!16670 (regOne!33194 r!7292)) (_1!36623 lt!2381393)))))

(assert (=> b!6444795 (= (isDefined!12935 lt!2381416) (Exists!3411 lambda!356565))))

(assert (=> b!6444795 (= lt!2381416 (findConcatSeparation!2646 (reg!16670 (regOne!33194 r!7292)) lt!2381422 Nil!65198 (_1!36623 lt!2381393) (_1!36623 lt!2381393)))))

(declare-fun lt!2381423 () Unit!158695)

(assert (=> b!6444795 (= lt!2381423 (lemmaFindConcatSeparationEquivalentToExists!2410 (reg!16670 (regOne!33194 r!7292)) lt!2381422 (_1!36623 lt!2381393)))))

(assert (=> b!6444795 (matchRSpec!3442 lt!2381422 (_1!36623 lt!2381393))))

(declare-fun lt!2381392 () Unit!158695)

(assert (=> b!6444795 (= lt!2381392 (mainMatchTheorem!3442 lt!2381422 (_1!36623 lt!2381393)))))

(declare-fun b!6444796 () Bool)

(declare-fun e!3908882 () Bool)

(declare-fun tp_is_empty!41935 () Bool)

(declare-fun tp!1786798 () Bool)

(assert (=> b!6444796 (= e!3908882 (and tp_is_empty!41935 tp!1786798))))

(declare-fun b!6444797 () Bool)

(declare-fun tp!1786801 () Bool)

(declare-fun tp!1786802 () Bool)

(assert (=> b!6444797 (= e!3908891 (and tp!1786801 tp!1786802))))

(declare-fun b!6444798 () Bool)

(declare-fun e!3908892 () Bool)

(assert (=> b!6444798 (= e!3908892 e!3908874)))

(declare-fun res!2648563 () Bool)

(assert (=> b!6444798 (=> res!2648563 e!3908874)))

(declare-fun validRegex!8077 (Regex!16341) Bool)

(assert (=> b!6444798 (= res!2648563 (not (validRegex!8077 (reg!16670 (regOne!33194 r!7292)))))))

(declare-fun lt!2381378 () List!65322)

(assert (=> b!6444798 (matchR!8524 lt!2381402 lt!2381378)))

(declare-fun lt!2381384 () Unit!158695)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!304 (Regex!16341 Regex!16341 List!65322 List!65322) Unit!158695)

(assert (=> b!6444798 (= lt!2381384 (lemmaTwoRegexMatchThenConcatMatchesConcatString!304 lt!2381422 (regTwo!33194 r!7292) (_2!36623 lt!2381399) (_2!36623 lt!2381393)))))

(assert (=> b!6444798 (matchR!8524 lt!2381422 lt!2381397)))

(declare-fun lt!2381385 () Unit!158695)

(declare-fun lemmaStarApp!118 (Regex!16341 List!65322 List!65322) Unit!158695)

(assert (=> b!6444798 (= lt!2381385 (lemmaStarApp!118 (reg!16670 (regOne!33194 r!7292)) (_1!36623 lt!2381399) (_2!36623 lt!2381399)))))

(declare-fun b!6444799 () Bool)

(declare-fun res!2648584 () Bool)

(assert (=> b!6444799 (=> res!2648584 e!3908876)))

(declare-fun lt!2381405 () Regex!16341)

(assert (=> b!6444799 (= res!2648584 (not (= lt!2381405 r!7292)))))

(declare-fun b!6444800 () Bool)

(declare-fun e!3908877 () Unit!158695)

(declare-fun Unit!158697 () Unit!158695)

(assert (=> b!6444800 (= e!3908877 Unit!158697)))

(declare-fun lt!2381414 () (InoxSet Context!11450))

(declare-fun lt!2381421 () Unit!158695)

(declare-fun lt!2381386 () (InoxSet Context!11450))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1172 ((InoxSet Context!11450) (InoxSet Context!11450) List!65322) Unit!158695)

(assert (=> b!6444800 (= lt!2381421 (lemmaZipperConcatMatchesSameAsBothZippers!1172 lt!2381414 lt!2381386 (t!378942 s!2326)))))

(declare-fun res!2648559 () Bool)

(declare-fun matchZipper!2353 ((InoxSet Context!11450) List!65322) Bool)

(assert (=> b!6444800 (= res!2648559 (matchZipper!2353 lt!2381414 (t!378942 s!2326)))))

(declare-fun e!3908873 () Bool)

(assert (=> b!6444800 (=> res!2648559 e!3908873)))

(assert (=> b!6444800 (= (matchZipper!2353 ((_ map or) lt!2381414 lt!2381386) (t!378942 s!2326)) e!3908873)))

(declare-fun b!6444801 () Bool)

(declare-fun e!3908875 () Bool)

(declare-fun tp!1786799 () Bool)

(assert (=> b!6444801 (= e!3908875 tp!1786799)))

(declare-fun setElem!43984 () Context!11450)

(declare-fun setNonEmpty!43984 () Bool)

(declare-fun tp!1786797 () Bool)

(declare-fun setRes!43984 () Bool)

(declare-fun inv!84099 (Context!11450) Bool)

(assert (=> setNonEmpty!43984 (= setRes!43984 (and tp!1786797 (inv!84099 setElem!43984) e!3908875))))

(declare-fun setRest!43984 () (InoxSet Context!11450))

(assert (=> setNonEmpty!43984 (= z!1189 ((_ map or) (store ((as const (Array Context!11450 Bool)) false) setElem!43984 true) setRest!43984))))

(declare-fun b!6444802 () Bool)

(declare-fun res!2648582 () Bool)

(assert (=> b!6444802 (=> res!2648582 e!3908890)))

(declare-fun generalisedUnion!2185 (List!65323) Regex!16341)

(declare-fun unfocusZipperList!1762 (List!65324) List!65323)

(assert (=> b!6444802 (= res!2648582 (not (= r!7292 (generalisedUnion!2185 (unfocusZipperList!1762 zl!343)))))))

(declare-fun b!6444803 () Bool)

(declare-fun res!2648589 () Bool)

(assert (=> b!6444803 (=> res!2648589 e!3908890)))

(declare-fun generalisedConcat!1938 (List!65323) Regex!16341)

(assert (=> b!6444803 (= res!2648589 (not (= r!7292 (generalisedConcat!1938 (exprs!6225 (h!71648 zl!343))))))))

(declare-fun b!6444804 () Bool)

(assert (=> b!6444804 (= e!3908879 e!3908881)))

(declare-fun res!2648575 () Bool)

(assert (=> b!6444804 (=> (not res!2648575) (not e!3908881))))

(assert (=> b!6444804 (= res!2648575 (= r!7292 lt!2381405))))

(assert (=> b!6444804 (= lt!2381405 (unfocusZipper!2083 zl!343))))

(declare-fun b!6444805 () Bool)

(declare-fun Unit!158698 () Unit!158695)

(assert (=> b!6444805 (= e!3908877 Unit!158698)))

(declare-fun b!6444806 () Bool)

(assert (=> b!6444806 (= e!3908891 tp_is_empty!41935)))

(declare-fun setIsEmpty!43984 () Bool)

(assert (=> setIsEmpty!43984 setRes!43984))

(declare-fun b!6444807 () Bool)

(assert (=> b!6444807 (= e!3908876 e!3908883)))

(declare-fun res!2648583 () Bool)

(assert (=> b!6444807 (=> res!2648583 e!3908883)))

(assert (=> b!6444807 (= res!2648583 (not (= r!7292 lt!2381402)))))

(assert (=> b!6444807 (= lt!2381402 (Concat!25186 lt!2381422 (regTwo!33194 r!7292)))))

(declare-fun b!6444808 () Bool)

(assert (=> b!6444808 (= e!3908885 e!3908894)))

(declare-fun res!2648570 () Bool)

(assert (=> b!6444808 (=> res!2648570 e!3908894)))

(assert (=> b!6444808 (= res!2648570 (not lt!2381403))))

(declare-fun e!3908884 () Bool)

(assert (=> b!6444808 e!3908884))

(declare-fun res!2648562 () Bool)

(assert (=> b!6444808 (=> (not res!2648562) (not e!3908884))))

(assert (=> b!6444808 (= res!2648562 (= (matchR!8524 lt!2381406 s!2326) (matchRSpec!3442 lt!2381406 s!2326)))))

(declare-fun lt!2381395 () Unit!158695)

(assert (=> b!6444808 (= lt!2381395 (mainMatchTheorem!3442 lt!2381406 s!2326))))

(declare-fun b!6444809 () Bool)

(declare-fun e!3908886 () Bool)

(assert (=> b!6444809 (= e!3908886 e!3908872)))

(declare-fun res!2648579 () Bool)

(assert (=> b!6444809 (=> res!2648579 e!3908872)))

(assert (=> b!6444809 (= res!2648579 (not (= lt!2381414 lt!2381389)))))

(declare-fun derivationStepZipperDown!1589 (Regex!16341 Context!11450 C!32952) (InoxSet Context!11450))

(assert (=> b!6444809 (= lt!2381389 (derivationStepZipperDown!1589 (reg!16670 (regOne!33194 r!7292)) lt!2381420 (h!71646 s!2326)))))

(assert (=> b!6444809 (= lt!2381420 (Context!11451 lt!2381380))))

(assert (=> b!6444809 (= lt!2381380 (Cons!65199 lt!2381422 (t!378943 (exprs!6225 (h!71648 zl!343)))))))

(assert (=> b!6444809 (= lt!2381422 (Star!16341 (reg!16670 (regOne!33194 r!7292))))))

(declare-fun b!6444810 () Bool)

(declare-fun res!2648564 () Bool)

(assert (=> b!6444810 (=> res!2648564 e!3908876)))

(assert (=> b!6444810 (= res!2648564 (not (= (matchZipper!2353 lt!2381400 s!2326) (matchZipper!2353 lt!2381390 (t!378942 s!2326)))))))

(declare-fun b!6444811 () Bool)

(assert (=> b!6444811 (= e!3908884 (or (not lt!2381403) lt!2381419))))

(declare-fun b!6444812 () Bool)

(declare-fun res!2648592 () Bool)

(assert (=> b!6444812 (=> res!2648592 e!3908892)))

(assert (=> b!6444812 (= res!2648592 (not (matchR!8524 (reg!16670 (regOne!33194 r!7292)) (_1!36623 lt!2381399))))))

(declare-fun b!6444813 () Bool)

(declare-fun res!2648578 () Bool)

(assert (=> b!6444813 (=> res!2648578 e!3908871)))

(declare-fun isEmpty!37374 (List!65322) Bool)

(assert (=> b!6444813 (= res!2648578 (isEmpty!37374 (_1!36623 lt!2381393)))))

(declare-fun b!6444814 () Bool)

(assert (=> b!6444814 (= e!3908874 (= (reg!16670 (regOne!33194 r!7292)) lt!2381379))))

(declare-fun b!6444815 () Bool)

(declare-fun res!2648574 () Bool)

(assert (=> b!6444815 (=> res!2648574 e!3908886)))

(assert (=> b!6444815 (= res!2648574 (or ((_ is Concat!25186) (regOne!33194 r!7292)) (not ((_ is Star!16341) (regOne!33194 r!7292)))))))

(declare-fun b!6444816 () Bool)

(declare-fun e!3908889 () Bool)

(declare-fun tp!1786796 () Bool)

(assert (=> b!6444816 (= e!3908889 (and (inv!84099 (h!71648 zl!343)) e!3908878 tp!1786796))))

(declare-fun b!6444817 () Bool)

(declare-fun res!2648565 () Bool)

(assert (=> b!6444817 (=> res!2648565 e!3908885)))

(assert (=> b!6444817 (= res!2648565 (not (= (unfocusZipper!2083 (Cons!65200 lt!2381420 Nil!65200)) lt!2381402)))))

(declare-fun res!2648590 () Bool)

(assert (=> start!635882 (=> (not res!2648590) (not e!3908879))))

(assert (=> start!635882 (= res!2648590 (validRegex!8077 r!7292))))

(assert (=> start!635882 e!3908879))

(assert (=> start!635882 e!3908891))

(declare-fun condSetEmpty!43984 () Bool)

(assert (=> start!635882 (= condSetEmpty!43984 (= z!1189 ((as const (Array Context!11450 Bool)) false)))))

(assert (=> start!635882 setRes!43984))

(assert (=> start!635882 e!3908889))

(assert (=> start!635882 e!3908882))

(declare-fun b!6444818 () Bool)

(declare-fun tp!1786795 () Bool)

(declare-fun tp!1786800 () Bool)

(assert (=> b!6444818 (= e!3908891 (and tp!1786795 tp!1786800))))

(declare-fun b!6444819 () Bool)

(assert (=> b!6444819 (= e!3908893 e!3908892)))

(declare-fun res!2648572 () Bool)

(assert (=> b!6444819 (=> res!2648572 e!3908892)))

(declare-fun lt!2381404 () List!65322)

(assert (=> b!6444819 (= res!2648572 (not (= lt!2381404 s!2326)))))

(assert (=> b!6444819 (= lt!2381404 (++!14409 (_1!36623 lt!2381399) lt!2381378))))

(assert (=> b!6444819 (= lt!2381404 (++!14409 lt!2381397 (_2!36623 lt!2381393)))))

(assert (=> b!6444819 (= lt!2381378 (++!14409 (_2!36623 lt!2381399) (_2!36623 lt!2381393)))))

(declare-fun lt!2381410 () Unit!158695)

(declare-fun lemmaConcatAssociativity!2912 (List!65322 List!65322 List!65322) Unit!158695)

(assert (=> b!6444819 (= lt!2381410 (lemmaConcatAssociativity!2912 (_1!36623 lt!2381399) (_2!36623 lt!2381399) (_2!36623 lt!2381393)))))

(assert (=> b!6444820 (= e!3908880 e!3908886)))

(declare-fun res!2648561 () Bool)

(assert (=> b!6444820 (=> res!2648561 e!3908886)))

(assert (=> b!6444820 (= res!2648561 (or (and ((_ is ElementMatch!16341) (regOne!33194 r!7292)) (= (c!1178714 (regOne!33194 r!7292)) (h!71646 s!2326))) ((_ is Union!16341) (regOne!33194 r!7292))))))

(declare-fun lt!2381381 () Unit!158695)

(assert (=> b!6444820 (= lt!2381381 e!3908877)))

(declare-fun c!1178713 () Bool)

(assert (=> b!6444820 (= c!1178713 (nullable!6334 (h!71647 (exprs!6225 (h!71648 zl!343)))))))

(assert (=> b!6444820 (= (flatMap!1846 z!1189 lambda!356562) (derivationStepZipperUp!1515 (h!71648 zl!343) (h!71646 s!2326)))))

(declare-fun lt!2381388 () Unit!158695)

(assert (=> b!6444820 (= lt!2381388 (lemmaFlatMapOnSingletonSet!1372 z!1189 (h!71648 zl!343) lambda!356562))))

(declare-fun lt!2381382 () Context!11450)

(assert (=> b!6444820 (= lt!2381386 (derivationStepZipperUp!1515 lt!2381382 (h!71646 s!2326)))))

(assert (=> b!6444820 (= lt!2381414 (derivationStepZipperDown!1589 (h!71647 (exprs!6225 (h!71648 zl!343))) lt!2381382 (h!71646 s!2326)))))

(assert (=> b!6444820 (= lt!2381382 (Context!11451 (t!378943 (exprs!6225 (h!71648 zl!343)))))))

(declare-fun lt!2381412 () (InoxSet Context!11450))

(assert (=> b!6444820 (= lt!2381412 (derivationStepZipperUp!1515 (Context!11451 (Cons!65199 (h!71647 (exprs!6225 (h!71648 zl!343))) (t!378943 (exprs!6225 (h!71648 zl!343))))) (h!71646 s!2326)))))

(declare-fun b!6444821 () Bool)

(assert (=> b!6444821 (= e!3908873 (matchZipper!2353 lt!2381386 (t!378942 s!2326)))))

(declare-fun b!6444822 () Bool)

(declare-fun res!2648567 () Bool)

(assert (=> b!6444822 (=> res!2648567 e!3908892)))

(assert (=> b!6444822 (= res!2648567 (not (matchR!8524 lt!2381422 (_2!36623 lt!2381399))))))

(declare-fun b!6444823 () Bool)

(declare-fun res!2648569 () Bool)

(assert (=> b!6444823 (=> res!2648569 e!3908886)))

(assert (=> b!6444823 (= res!2648569 e!3908888)))

(declare-fun res!2648566 () Bool)

(assert (=> b!6444823 (=> (not res!2648566) (not e!3908888))))

(assert (=> b!6444823 (= res!2648566 ((_ is Concat!25186) (regOne!33194 r!7292)))))

(assert (= (and start!635882 res!2648590) b!6444780))

(assert (= (and b!6444780 res!2648576) b!6444804))

(assert (= (and b!6444804 res!2648575) b!6444784))

(assert (= (and b!6444784 (not res!2648588)) b!6444794))

(assert (= (and b!6444794 (not res!2648573)) b!6444803))

(assert (= (and b!6444803 (not res!2648589)) b!6444781))

(assert (= (and b!6444781 (not res!2648585)) b!6444802))

(assert (= (and b!6444802 (not res!2648582)) b!6444785))

(assert (= (and b!6444785 (not res!2648571)) b!6444787))

(assert (= (and b!6444787 (not res!2648558)) b!6444779))

(assert (= (and b!6444779 (not res!2648586)) b!6444820))

(assert (= (and b!6444820 c!1178713) b!6444800))

(assert (= (and b!6444820 (not c!1178713)) b!6444805))

(assert (= (and b!6444800 (not res!2648559)) b!6444821))

(assert (= (and b!6444820 (not res!2648561)) b!6444823))

(assert (= (and b!6444823 res!2648566) b!6444783))

(assert (= (and b!6444823 (not res!2648569)) b!6444815))

(assert (= (and b!6444815 (not res!2648574)) b!6444809))

(assert (= (and b!6444809 (not res!2648579)) b!6444789))

(assert (= (and b!6444789 (not res!2648581)) b!6444810))

(assert (= (and b!6444810 (not res!2648564)) b!6444799))

(assert (= (and b!6444799 (not res!2648584)) b!6444807))

(assert (= (and b!6444807 (not res!2648583)) b!6444790))

(assert (= (and b!6444790 (not res!2648580)) b!6444791))

(assert (= (and b!6444791 (not res!2648560)) b!6444817))

(assert (= (and b!6444817 (not res!2648565)) b!6444808))

(assert (= (and b!6444808 res!2648562) b!6444811))

(assert (= (and b!6444808 (not res!2648570)) b!6444793))

(assert (= (and b!6444793 (not res!2648591)) b!6444788))

(assert (= (and b!6444788 (not res!2648568)) b!6444782))

(assert (= (and b!6444782 (not res!2648587)) b!6444813))

(assert (= (and b!6444813 (not res!2648578)) b!6444795))

(assert (= (and b!6444795 (not res!2648557)) b!6444819))

(assert (= (and b!6444819 (not res!2648572)) b!6444812))

(assert (= (and b!6444812 (not res!2648592)) b!6444822))

(assert (= (and b!6444822 (not res!2648567)) b!6444798))

(assert (= (and b!6444798 (not res!2648563)) b!6444786))

(assert (= (and b!6444786 (not res!2648577)) b!6444814))

(assert (= (and start!635882 ((_ is ElementMatch!16341) r!7292)) b!6444806))

(assert (= (and start!635882 ((_ is Concat!25186) r!7292)) b!6444797))

(assert (= (and start!635882 ((_ is Star!16341) r!7292)) b!6444792))

(assert (= (and start!635882 ((_ is Union!16341) r!7292)) b!6444818))

(assert (= (and start!635882 condSetEmpty!43984) setIsEmpty!43984))

(assert (= (and start!635882 (not condSetEmpty!43984)) setNonEmpty!43984))

(assert (= setNonEmpty!43984 b!6444801))

(assert (= b!6444816 b!6444778))

(assert (= (and start!635882 ((_ is Cons!65200) zl!343)) b!6444816))

(assert (= (and start!635882 ((_ is Cons!65198) s!2326)) b!6444796))

(declare-fun m!7237464 () Bool)

(assert (=> b!6444795 m!7237464))

(declare-fun m!7237466 () Bool)

(assert (=> b!6444795 m!7237466))

(declare-fun m!7237468 () Bool)

(assert (=> b!6444795 m!7237468))

(declare-fun m!7237470 () Bool)

(assert (=> b!6444795 m!7237470))

(declare-fun m!7237472 () Bool)

(assert (=> b!6444795 m!7237472))

(declare-fun m!7237474 () Bool)

(assert (=> b!6444795 m!7237474))

(assert (=> b!6444795 m!7237468))

(assert (=> b!6444795 m!7237468))

(declare-fun m!7237476 () Bool)

(assert (=> b!6444795 m!7237476))

(declare-fun m!7237478 () Bool)

(assert (=> b!6444795 m!7237478))

(declare-fun m!7237480 () Bool)

(assert (=> b!6444795 m!7237480))

(declare-fun m!7237482 () Bool)

(assert (=> b!6444795 m!7237482))

(declare-fun m!7237484 () Bool)

(assert (=> b!6444795 m!7237484))

(declare-fun m!7237486 () Bool)

(assert (=> b!6444795 m!7237486))

(declare-fun m!7237488 () Bool)

(assert (=> b!6444820 m!7237488))

(declare-fun m!7237490 () Bool)

(assert (=> b!6444820 m!7237490))

(declare-fun m!7237492 () Bool)

(assert (=> b!6444820 m!7237492))

(declare-fun m!7237494 () Bool)

(assert (=> b!6444820 m!7237494))

(declare-fun m!7237496 () Bool)

(assert (=> b!6444820 m!7237496))

(declare-fun m!7237498 () Bool)

(assert (=> b!6444820 m!7237498))

(declare-fun m!7237500 () Bool)

(assert (=> b!6444820 m!7237500))

(declare-fun m!7237502 () Bool)

(assert (=> b!6444790 m!7237502))

(declare-fun m!7237504 () Bool)

(assert (=> setNonEmpty!43984 m!7237504))

(declare-fun m!7237506 () Bool)

(assert (=> b!6444786 m!7237506))

(declare-fun m!7237508 () Bool)

(assert (=> start!635882 m!7237508))

(declare-fun m!7237510 () Bool)

(assert (=> b!6444791 m!7237510))

(declare-fun m!7237512 () Bool)

(assert (=> b!6444791 m!7237512))

(declare-fun m!7237514 () Bool)

(assert (=> b!6444791 m!7237514))

(declare-fun m!7237516 () Bool)

(assert (=> b!6444791 m!7237516))

(declare-fun m!7237518 () Bool)

(assert (=> b!6444791 m!7237518))

(declare-fun m!7237520 () Bool)

(assert (=> b!6444791 m!7237520))

(declare-fun m!7237522 () Bool)

(assert (=> b!6444791 m!7237522))

(declare-fun m!7237524 () Bool)

(assert (=> b!6444791 m!7237524))

(declare-fun m!7237526 () Bool)

(assert (=> b!6444791 m!7237526))

(declare-fun m!7237528 () Bool)

(assert (=> b!6444808 m!7237528))

(declare-fun m!7237530 () Bool)

(assert (=> b!6444808 m!7237530))

(declare-fun m!7237532 () Bool)

(assert (=> b!6444808 m!7237532))

(declare-fun m!7237534 () Bool)

(assert (=> b!6444821 m!7237534))

(declare-fun m!7237536 () Bool)

(assert (=> b!6444817 m!7237536))

(declare-fun m!7237538 () Bool)

(assert (=> b!6444787 m!7237538))

(declare-fun m!7237540 () Bool)

(assert (=> b!6444787 m!7237540))

(assert (=> b!6444787 m!7237538))

(declare-fun m!7237542 () Bool)

(assert (=> b!6444787 m!7237542))

(declare-fun m!7237544 () Bool)

(assert (=> b!6444787 m!7237544))

(declare-fun m!7237546 () Bool)

(assert (=> b!6444787 m!7237546))

(assert (=> b!6444787 m!7237546))

(declare-fun m!7237548 () Bool)

(assert (=> b!6444787 m!7237548))

(declare-fun m!7237550 () Bool)

(assert (=> b!6444816 m!7237550))

(declare-fun m!7237552 () Bool)

(assert (=> b!6444803 m!7237552))

(declare-fun m!7237554 () Bool)

(assert (=> b!6444819 m!7237554))

(declare-fun m!7237556 () Bool)

(assert (=> b!6444819 m!7237556))

(declare-fun m!7237558 () Bool)

(assert (=> b!6444819 m!7237558))

(declare-fun m!7237560 () Bool)

(assert (=> b!6444819 m!7237560))

(declare-fun m!7237562 () Bool)

(assert (=> b!6444809 m!7237562))

(declare-fun m!7237564 () Bool)

(assert (=> b!6444788 m!7237564))

(declare-fun m!7237566 () Bool)

(assert (=> b!6444794 m!7237566))

(declare-fun m!7237568 () Bool)

(assert (=> b!6444810 m!7237568))

(declare-fun m!7237570 () Bool)

(assert (=> b!6444810 m!7237570))

(declare-fun m!7237572 () Bool)

(assert (=> b!6444793 m!7237572))

(declare-fun m!7237574 () Bool)

(assert (=> b!6444793 m!7237574))

(declare-fun m!7237576 () Bool)

(assert (=> b!6444793 m!7237576))

(declare-fun m!7237578 () Bool)

(assert (=> b!6444793 m!7237578))

(declare-fun m!7237580 () Bool)

(assert (=> b!6444793 m!7237580))

(declare-fun m!7237582 () Bool)

(assert (=> b!6444793 m!7237582))

(declare-fun m!7237584 () Bool)

(assert (=> b!6444793 m!7237584))

(declare-fun m!7237586 () Bool)

(assert (=> b!6444793 m!7237586))

(assert (=> b!6444793 m!7237586))

(declare-fun m!7237588 () Bool)

(assert (=> b!6444789 m!7237588))

(declare-fun m!7237590 () Bool)

(assert (=> b!6444789 m!7237590))

(declare-fun m!7237592 () Bool)

(assert (=> b!6444789 m!7237592))

(declare-fun m!7237594 () Bool)

(assert (=> b!6444789 m!7237594))

(declare-fun m!7237596 () Bool)

(assert (=> b!6444789 m!7237596))

(declare-fun m!7237598 () Bool)

(assert (=> b!6444822 m!7237598))

(declare-fun m!7237600 () Bool)

(assert (=> b!6444780 m!7237600))

(declare-fun m!7237602 () Bool)

(assert (=> b!6444812 m!7237602))

(declare-fun m!7237604 () Bool)

(assert (=> b!6444779 m!7237604))

(declare-fun m!7237606 () Bool)

(assert (=> b!6444784 m!7237606))

(declare-fun m!7237608 () Bool)

(assert (=> b!6444784 m!7237608))

(declare-fun m!7237610 () Bool)

(assert (=> b!6444784 m!7237610))

(declare-fun m!7237612 () Bool)

(assert (=> b!6444798 m!7237612))

(declare-fun m!7237614 () Bool)

(assert (=> b!6444798 m!7237614))

(declare-fun m!7237616 () Bool)

(assert (=> b!6444798 m!7237616))

(declare-fun m!7237618 () Bool)

(assert (=> b!6444798 m!7237618))

(declare-fun m!7237620 () Bool)

(assert (=> b!6444798 m!7237620))

(declare-fun m!7237622 () Bool)

(assert (=> b!6444804 m!7237622))

(declare-fun m!7237624 () Bool)

(assert (=> b!6444783 m!7237624))

(declare-fun m!7237626 () Bool)

(assert (=> b!6444802 m!7237626))

(assert (=> b!6444802 m!7237626))

(declare-fun m!7237628 () Bool)

(assert (=> b!6444802 m!7237628))

(declare-fun m!7237630 () Bool)

(assert (=> b!6444800 m!7237630))

(declare-fun m!7237632 () Bool)

(assert (=> b!6444800 m!7237632))

(declare-fun m!7237634 () Bool)

(assert (=> b!6444800 m!7237634))

(declare-fun m!7237636 () Bool)

(assert (=> b!6444813 m!7237636))

(declare-fun m!7237638 () Bool)

(assert (=> b!6444782 m!7237638))

(check-sat (not b!6444792) (not b!6444786) (not b!6444784) (not b!6444813) (not b!6444790) (not b!6444793) (not b!6444822) (not setNonEmpty!43984) tp_is_empty!41935 (not b!6444820) (not b!6444818) (not b!6444788) (not start!635882) (not b!6444778) (not b!6444796) (not b!6444802) (not b!6444783) (not b!6444817) (not b!6444804) (not b!6444808) (not b!6444809) (not b!6444789) (not b!6444821) (not b!6444797) (not b!6444794) (not b!6444816) (not b!6444791) (not b!6444803) (not b!6444787) (not b!6444819) (not b!6444782) (not b!6444801) (not b!6444779) (not b!6444798) (not b!6444812) (not b!6444800) (not b!6444795) (not b!6444780) (not b!6444810))
(check-sat)
