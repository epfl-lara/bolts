; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597540 () Bool)

(assert start!597540)

(declare-fun b!5835636 () Bool)

(declare-fun e!3579823 () Bool)

(declare-fun lt!2303201 () Bool)

(declare-fun lt!2303203 () Bool)

(assert (=> b!5835636 (= e!3579823 (= lt!2303201 lt!2303203))))

(declare-datatypes ((C!32060 0))(
  ( (C!32061 (val!25732 Int)) )
))
(declare-datatypes ((List!63984 0))(
  ( (Nil!63860) (Cons!63860 (h!70308 C!32060) (t!377339 List!63984)) )
))
(declare-fun s!2326 () List!63984)

(declare-datatypes ((Regex!15895 0))(
  ( (ElementMatch!15895 (c!1033879 C!32060)) (Concat!24740 (regOne!32302 Regex!15895) (regTwo!32302 Regex!15895)) (EmptyExpr!15895) (Star!15895 (reg!16224 Regex!15895)) (EmptyLang!15895) (Union!15895 (regOne!32303 Regex!15895) (regTwo!32303 Regex!15895)) )
))
(declare-fun r!7292 () Regex!15895)

(assert (=> b!5835636 (= lt!2303203 (= s!2326 (Cons!63860 (c!1033879 r!7292) Nil!63860)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63985 0))(
  ( (Nil!63861) (Cons!63861 (h!70309 Regex!15895) (t!377340 List!63985)) )
))
(declare-datatypes ((Context!10558 0))(
  ( (Context!10559 (exprs!5779 List!63985)) )
))
(declare-fun z!1189 () (InoxSet Context!10558))

(declare-fun matchZipper!1977 ((InoxSet Context!10558) List!63984) Bool)

(assert (=> b!5835636 (= lt!2303203 (matchZipper!1977 z!1189 s!2326))))

(declare-datatypes ((Unit!157061 0))(
  ( (Unit!157062) )
))
(declare-fun lt!2303202 () Unit!157061)

(declare-fun lt!2303206 () Context!10558)

(declare-fun lemmaElementMatchZipperAcceptsOnlyThisChar!4 ((InoxSet Context!10558) Context!10558 C!32060 List!63984) Unit!157061)

(assert (=> b!5835636 (= lt!2303202 (lemmaElementMatchZipperAcceptsOnlyThisChar!4 z!1189 lt!2303206 (c!1033879 r!7292) s!2326))))

(declare-fun b!5835637 () Bool)

(declare-fun res!2458822 () Bool)

(declare-fun e!3579824 () Bool)

(assert (=> b!5835637 (=> res!2458822 e!3579824)))

(declare-datatypes ((List!63986 0))(
  ( (Nil!63862) (Cons!63862 (h!70310 Context!10558) (t!377341 List!63986)) )
))
(declare-fun zl!343 () List!63986)

(declare-fun generalisedUnion!1739 (List!63985) Regex!15895)

(declare-fun unfocusZipperList!1316 (List!63986) List!63985)

(assert (=> b!5835637 (= res!2458822 (not (= r!7292 (generalisedUnion!1739 (unfocusZipperList!1316 zl!343)))))))

(declare-fun setElem!39496 () Context!10558)

(declare-fun e!3579822 () Bool)

(declare-fun setRes!39496 () Bool)

(declare-fun tp!1613453 () Bool)

(declare-fun setNonEmpty!39496 () Bool)

(declare-fun inv!82984 (Context!10558) Bool)

(assert (=> setNonEmpty!39496 (= setRes!39496 (and tp!1613453 (inv!82984 setElem!39496) e!3579822))))

(declare-fun setRest!39496 () (InoxSet Context!10558))

(assert (=> setNonEmpty!39496 (= z!1189 ((_ map or) (store ((as const (Array Context!10558 Bool)) false) setElem!39496 true) setRest!39496))))

(declare-fun setIsEmpty!39496 () Bool)

(assert (=> setIsEmpty!39496 setRes!39496))

(declare-fun b!5835638 () Bool)

(assert (=> b!5835638 (= e!3579824 e!3579823)))

(declare-fun res!2458813 () Bool)

(assert (=> b!5835638 (=> res!2458813 e!3579823)))

(assert (=> b!5835638 (= res!2458813 (not (= z!1189 (store ((as const (Array Context!10558 Bool)) false) lt!2303206 true))))))

(declare-fun lt!2303204 () List!63985)

(assert (=> b!5835638 (= lt!2303206 (Context!10559 lt!2303204))))

(declare-fun lt!2303200 () Regex!15895)

(assert (=> b!5835638 (= lt!2303204 (Cons!63861 lt!2303200 Nil!63861))))

(assert (=> b!5835638 (= lt!2303200 (ElementMatch!15895 (c!1033879 r!7292)))))

(declare-fun b!5835639 () Bool)

(declare-fun tp!1613452 () Bool)

(declare-fun e!3579820 () Bool)

(declare-fun e!3579821 () Bool)

(assert (=> b!5835639 (= e!3579821 (and (inv!82984 (h!70310 zl!343)) e!3579820 tp!1613452))))

(declare-fun b!5835640 () Bool)

(declare-fun res!2458817 () Bool)

(declare-fun e!3579827 () Bool)

(assert (=> b!5835640 (=> (not res!2458817) (not e!3579827))))

(declare-fun toList!9679 ((InoxSet Context!10558)) List!63986)

(assert (=> b!5835640 (= res!2458817 (= (toList!9679 z!1189) zl!343))))

(declare-fun b!5835641 () Bool)

(declare-fun res!2458816 () Bool)

(assert (=> b!5835641 (=> res!2458816 e!3579824)))

(declare-fun generalisedConcat!1492 (List!63985) Regex!15895)

(assert (=> b!5835641 (= res!2458816 (not (= r!7292 (generalisedConcat!1492 (exprs!5779 (h!70310 zl!343))))))))

(declare-fun b!5835642 () Bool)

(declare-fun res!2458815 () Bool)

(assert (=> b!5835642 (=> res!2458815 e!3579823)))

(declare-fun isEmpty!35727 (List!63985) Bool)

(assert (=> b!5835642 (= res!2458815 (isEmpty!35727 lt!2303204))))

(declare-fun b!5835643 () Bool)

(declare-fun res!2458810 () Bool)

(assert (=> b!5835643 (=> (not res!2458810) (not e!3579827))))

(declare-fun unfocusZipper!1637 (List!63986) Regex!15895)

(assert (=> b!5835643 (= res!2458810 (= r!7292 (unfocusZipper!1637 zl!343)))))

(declare-fun b!5835644 () Bool)

(declare-fun res!2458818 () Bool)

(assert (=> b!5835644 (=> res!2458818 e!3579824)))

(declare-fun isEmpty!35728 (List!63986) Bool)

(assert (=> b!5835644 (= res!2458818 (not (isEmpty!35728 (t!377341 zl!343))))))

(declare-fun b!5835645 () Bool)

(declare-fun res!2458812 () Bool)

(assert (=> b!5835645 (=> res!2458812 e!3579823)))

(declare-fun head!12351 (List!63985) Regex!15895)

(assert (=> b!5835645 (= res!2458812 (not (= (head!12351 lt!2303204) lt!2303200)))))

(declare-fun b!5835647 () Bool)

(declare-fun res!2458814 () Bool)

(assert (=> b!5835647 (=> res!2458814 e!3579824)))

(get-info :version)

(assert (=> b!5835647 (= res!2458814 (or ((_ is EmptyExpr!15895) r!7292) ((_ is EmptyLang!15895) r!7292) (not ((_ is ElementMatch!15895) r!7292))))))

(declare-fun b!5835648 () Bool)

(declare-fun e!3579825 () Bool)

(declare-fun tp_is_empty!41043 () Bool)

(assert (=> b!5835648 (= e!3579825 tp_is_empty!41043)))

(declare-fun b!5835646 () Bool)

(declare-fun res!2458819 () Bool)

(assert (=> b!5835646 (=> res!2458819 e!3579824)))

(assert (=> b!5835646 (= res!2458819 (not ((_ is Cons!63861) (exprs!5779 (h!70310 zl!343)))))))

(declare-fun res!2458821 () Bool)

(assert (=> start!597540 (=> (not res!2458821) (not e!3579827))))

(declare-fun validRegex!7631 (Regex!15895) Bool)

(assert (=> start!597540 (= res!2458821 (validRegex!7631 r!7292))))

(assert (=> start!597540 e!3579827))

(assert (=> start!597540 e!3579825))

(declare-fun condSetEmpty!39496 () Bool)

(assert (=> start!597540 (= condSetEmpty!39496 (= z!1189 ((as const (Array Context!10558 Bool)) false)))))

(assert (=> start!597540 setRes!39496))

(assert (=> start!597540 e!3579821))

(declare-fun e!3579826 () Bool)

(assert (=> start!597540 e!3579826))

(declare-fun b!5835649 () Bool)

(declare-fun tp!1613449 () Bool)

(assert (=> b!5835649 (= e!3579820 tp!1613449)))

(declare-fun b!5835650 () Bool)

(declare-fun tp!1613451 () Bool)

(assert (=> b!5835650 (= e!3579825 tp!1613451)))

(declare-fun b!5835651 () Bool)

(declare-fun tp!1613448 () Bool)

(declare-fun tp!1613447 () Bool)

(assert (=> b!5835651 (= e!3579825 (and tp!1613448 tp!1613447))))

(declare-fun b!5835652 () Bool)

(assert (=> b!5835652 (= e!3579827 (not e!3579824))))

(declare-fun res!2458811 () Bool)

(assert (=> b!5835652 (=> res!2458811 e!3579824)))

(assert (=> b!5835652 (= res!2458811 (not ((_ is Cons!63862) zl!343)))))

(declare-fun matchRSpec!2996 (Regex!15895 List!63984) Bool)

(assert (=> b!5835652 (= lt!2303201 (matchRSpec!2996 r!7292 s!2326))))

(declare-fun matchR!8078 (Regex!15895 List!63984) Bool)

(assert (=> b!5835652 (= lt!2303201 (matchR!8078 r!7292 s!2326))))

(declare-fun lt!2303205 () Unit!157061)

(declare-fun mainMatchTheorem!2996 (Regex!15895 List!63984) Unit!157061)

(assert (=> b!5835652 (= lt!2303205 (mainMatchTheorem!2996 r!7292 s!2326))))

(declare-fun b!5835653 () Bool)

(declare-fun tp!1613454 () Bool)

(declare-fun tp!1613455 () Bool)

(assert (=> b!5835653 (= e!3579825 (and tp!1613454 tp!1613455))))

(declare-fun b!5835654 () Bool)

(declare-fun tp!1613456 () Bool)

(assert (=> b!5835654 (= e!3579822 tp!1613456)))

(declare-fun b!5835655 () Bool)

(declare-fun tp!1613450 () Bool)

(assert (=> b!5835655 (= e!3579826 (and tp_is_empty!41043 tp!1613450))))

(declare-fun b!5835656 () Bool)

(declare-fun res!2458820 () Bool)

(assert (=> b!5835656 (=> res!2458820 e!3579823)))

(declare-fun tail!11436 (List!63985) List!63985)

(assert (=> b!5835656 (= res!2458820 (not (isEmpty!35727 (tail!11436 lt!2303204))))))

(assert (= (and start!597540 res!2458821) b!5835640))

(assert (= (and b!5835640 res!2458817) b!5835643))

(assert (= (and b!5835643 res!2458810) b!5835652))

(assert (= (and b!5835652 (not res!2458811)) b!5835644))

(assert (= (and b!5835644 (not res!2458818)) b!5835641))

(assert (= (and b!5835641 (not res!2458816)) b!5835646))

(assert (= (and b!5835646 (not res!2458819)) b!5835637))

(assert (= (and b!5835637 (not res!2458822)) b!5835647))

(assert (= (and b!5835647 (not res!2458814)) b!5835638))

(assert (= (and b!5835638 (not res!2458813)) b!5835642))

(assert (= (and b!5835642 (not res!2458815)) b!5835645))

(assert (= (and b!5835645 (not res!2458812)) b!5835656))

(assert (= (and b!5835656 (not res!2458820)) b!5835636))

(assert (= (and start!597540 ((_ is ElementMatch!15895) r!7292)) b!5835648))

(assert (= (and start!597540 ((_ is Concat!24740) r!7292)) b!5835653))

(assert (= (and start!597540 ((_ is Star!15895) r!7292)) b!5835650))

(assert (= (and start!597540 ((_ is Union!15895) r!7292)) b!5835651))

(assert (= (and start!597540 condSetEmpty!39496) setIsEmpty!39496))

(assert (= (and start!597540 (not condSetEmpty!39496)) setNonEmpty!39496))

(assert (= setNonEmpty!39496 b!5835654))

(assert (= b!5835639 b!5835649))

(assert (= (and start!597540 ((_ is Cons!63862) zl!343)) b!5835639))

(assert (= (and start!597540 ((_ is Cons!63860) s!2326)) b!5835655))

(declare-fun m!6762542 () Bool)

(assert (=> b!5835637 m!6762542))

(assert (=> b!5835637 m!6762542))

(declare-fun m!6762544 () Bool)

(assert (=> b!5835637 m!6762544))

(declare-fun m!6762546 () Bool)

(assert (=> b!5835642 m!6762546))

(declare-fun m!6762548 () Bool)

(assert (=> setNonEmpty!39496 m!6762548))

(declare-fun m!6762550 () Bool)

(assert (=> b!5835640 m!6762550))

(declare-fun m!6762552 () Bool)

(assert (=> start!597540 m!6762552))

(declare-fun m!6762554 () Bool)

(assert (=> b!5835656 m!6762554))

(assert (=> b!5835656 m!6762554))

(declare-fun m!6762556 () Bool)

(assert (=> b!5835656 m!6762556))

(declare-fun m!6762558 () Bool)

(assert (=> b!5835652 m!6762558))

(declare-fun m!6762560 () Bool)

(assert (=> b!5835652 m!6762560))

(declare-fun m!6762562 () Bool)

(assert (=> b!5835652 m!6762562))

(declare-fun m!6762564 () Bool)

(assert (=> b!5835636 m!6762564))

(declare-fun m!6762566 () Bool)

(assert (=> b!5835636 m!6762566))

(declare-fun m!6762568 () Bool)

(assert (=> b!5835641 m!6762568))

(declare-fun m!6762570 () Bool)

(assert (=> b!5835644 m!6762570))

(declare-fun m!6762572 () Bool)

(assert (=> b!5835643 m!6762572))

(declare-fun m!6762574 () Bool)

(assert (=> b!5835638 m!6762574))

(declare-fun m!6762576 () Bool)

(assert (=> b!5835639 m!6762576))

(declare-fun m!6762578 () Bool)

(assert (=> b!5835645 m!6762578))

(check-sat (not b!5835641) (not b!5835649) (not b!5835653) (not b!5835650) (not b!5835645) (not setNonEmpty!39496) (not b!5835652) (not b!5835656) (not b!5835639) (not b!5835655) (not b!5835643) (not start!597540) (not b!5835644) (not b!5835654) (not b!5835636) (not b!5835642) (not b!5835640) (not b!5835637) (not b!5835651) tp_is_empty!41043)
(check-sat)
(get-model)

(declare-fun d!1834343 () Bool)

(declare-fun e!3579830 () Bool)

(assert (=> d!1834343 e!3579830))

(declare-fun res!2458825 () Bool)

(assert (=> d!1834343 (=> (not res!2458825) (not e!3579830))))

(declare-fun lt!2303209 () List!63986)

(declare-fun noDuplicate!1763 (List!63986) Bool)

(assert (=> d!1834343 (= res!2458825 (noDuplicate!1763 lt!2303209))))

(declare-fun choose!44310 ((InoxSet Context!10558)) List!63986)

(assert (=> d!1834343 (= lt!2303209 (choose!44310 z!1189))))

(assert (=> d!1834343 (= (toList!9679 z!1189) lt!2303209)))

(declare-fun b!5835659 () Bool)

(declare-fun content!11728 (List!63986) (InoxSet Context!10558))

(assert (=> b!5835659 (= e!3579830 (= (content!11728 lt!2303209) z!1189))))

(assert (= (and d!1834343 res!2458825) b!5835659))

(declare-fun m!6762580 () Bool)

(assert (=> d!1834343 m!6762580))

(declare-fun m!6762582 () Bool)

(assert (=> d!1834343 m!6762582))

(declare-fun m!6762584 () Bool)

(assert (=> b!5835659 m!6762584))

(assert (=> b!5835640 d!1834343))

(declare-fun d!1834347 () Bool)

(declare-fun lambda!319233 () Int)

(declare-fun forall!14985 (List!63985 Int) Bool)

(assert (=> d!1834347 (= (inv!82984 (h!70310 zl!343)) (forall!14985 (exprs!5779 (h!70310 zl!343)) lambda!319233))))

(declare-fun bs!1375357 () Bool)

(assert (= bs!1375357 d!1834347))

(declare-fun m!6762594 () Bool)

(assert (=> bs!1375357 m!6762594))

(assert (=> b!5835639 d!1834347))

(declare-fun b!5835742 () Bool)

(assert (=> b!5835742 true))

(assert (=> b!5835742 true))

(declare-fun bs!1375358 () Bool)

(declare-fun b!5835745 () Bool)

(assert (= bs!1375358 (and b!5835745 b!5835742)))

(declare-fun lambda!319239 () Int)

(declare-fun lambda!319238 () Int)

(assert (=> bs!1375358 (not (= lambda!319239 lambda!319238))))

(assert (=> b!5835745 true))

(assert (=> b!5835745 true))

(declare-fun b!5835741 () Bool)

(declare-fun e!3579890 () Bool)

(declare-fun e!3579887 () Bool)

(assert (=> b!5835741 (= e!3579890 e!3579887)))

(declare-fun res!2458863 () Bool)

(assert (=> b!5835741 (= res!2458863 (matchRSpec!2996 (regOne!32303 r!7292) s!2326))))

(assert (=> b!5835741 (=> res!2458863 e!3579887)))

(declare-fun e!3579886 () Bool)

(declare-fun call!455751 () Bool)

(assert (=> b!5835742 (= e!3579886 call!455751)))

(declare-fun b!5835743 () Bool)

(declare-fun e!3579888 () Bool)

(declare-fun call!455750 () Bool)

(assert (=> b!5835743 (= e!3579888 call!455750)))

(declare-fun b!5835744 () Bool)

(declare-fun res!2458864 () Bool)

(assert (=> b!5835744 (=> res!2458864 e!3579886)))

(assert (=> b!5835744 (= res!2458864 call!455750)))

(declare-fun e!3579885 () Bool)

(assert (=> b!5835744 (= e!3579885 e!3579886)))

(declare-fun bm!455745 () Bool)

(declare-fun isEmpty!35729 (List!63984) Bool)

(assert (=> bm!455745 (= call!455750 (isEmpty!35729 s!2326))))

(declare-fun bm!455746 () Bool)

(declare-fun c!1033904 () Bool)

(declare-fun Exists!2970 (Int) Bool)

(assert (=> bm!455746 (= call!455751 (Exists!2970 (ite c!1033904 lambda!319238 lambda!319239)))))

(assert (=> b!5835745 (= e!3579885 call!455751)))

(declare-fun b!5835746 () Bool)

(declare-fun e!3579884 () Bool)

(assert (=> b!5835746 (= e!3579888 e!3579884)))

(declare-fun res!2458865 () Bool)

(assert (=> b!5835746 (= res!2458865 (not ((_ is EmptyLang!15895) r!7292)))))

(assert (=> b!5835746 (=> (not res!2458865) (not e!3579884))))

(declare-fun b!5835747 () Bool)

(assert (=> b!5835747 (= e!3579887 (matchRSpec!2996 (regTwo!32303 r!7292) s!2326))))

(declare-fun b!5835748 () Bool)

(declare-fun e!3579889 () Bool)

(assert (=> b!5835748 (= e!3579889 (= s!2326 (Cons!63860 (c!1033879 r!7292) Nil!63860)))))

(declare-fun d!1834353 () Bool)

(declare-fun c!1033902 () Bool)

(assert (=> d!1834353 (= c!1033902 ((_ is EmptyExpr!15895) r!7292))))

(assert (=> d!1834353 (= (matchRSpec!2996 r!7292 s!2326) e!3579888)))

(declare-fun b!5835749 () Bool)

(declare-fun c!1033903 () Bool)

(assert (=> b!5835749 (= c!1033903 ((_ is ElementMatch!15895) r!7292))))

(assert (=> b!5835749 (= e!3579884 e!3579889)))

(declare-fun b!5835750 () Bool)

(declare-fun c!1033905 () Bool)

(assert (=> b!5835750 (= c!1033905 ((_ is Union!15895) r!7292))))

(assert (=> b!5835750 (= e!3579889 e!3579890)))

(declare-fun b!5835751 () Bool)

(assert (=> b!5835751 (= e!3579890 e!3579885)))

(assert (=> b!5835751 (= c!1033904 ((_ is Star!15895) r!7292))))

(assert (= (and d!1834353 c!1033902) b!5835743))

(assert (= (and d!1834353 (not c!1033902)) b!5835746))

(assert (= (and b!5835746 res!2458865) b!5835749))

(assert (= (and b!5835749 c!1033903) b!5835748))

(assert (= (and b!5835749 (not c!1033903)) b!5835750))

(assert (= (and b!5835750 c!1033905) b!5835741))

(assert (= (and b!5835750 (not c!1033905)) b!5835751))

(assert (= (and b!5835741 (not res!2458863)) b!5835747))

(assert (= (and b!5835751 c!1033904) b!5835744))

(assert (= (and b!5835751 (not c!1033904)) b!5835745))

(assert (= (and b!5835744 (not res!2458864)) b!5835742))

(assert (= (or b!5835742 b!5835745) bm!455746))

(assert (= (or b!5835743 b!5835744) bm!455745))

(declare-fun m!6762596 () Bool)

(assert (=> b!5835741 m!6762596))

(declare-fun m!6762598 () Bool)

(assert (=> bm!455745 m!6762598))

(declare-fun m!6762600 () Bool)

(assert (=> bm!455746 m!6762600))

(declare-fun m!6762602 () Bool)

(assert (=> b!5835747 m!6762602))

(assert (=> b!5835652 d!1834353))

(declare-fun d!1834355 () Bool)

(declare-fun e!3579907 () Bool)

(assert (=> d!1834355 e!3579907))

(declare-fun c!1033914 () Bool)

(assert (=> d!1834355 (= c!1033914 ((_ is EmptyExpr!15895) r!7292))))

(declare-fun lt!2303215 () Bool)

(declare-fun e!3579908 () Bool)

(assert (=> d!1834355 (= lt!2303215 e!3579908)))

(declare-fun c!1033912 () Bool)

(assert (=> d!1834355 (= c!1033912 (isEmpty!35729 s!2326))))

(assert (=> d!1834355 (validRegex!7631 r!7292)))

(assert (=> d!1834355 (= (matchR!8078 r!7292 s!2326) lt!2303215)))

(declare-fun bm!455749 () Bool)

(declare-fun call!455754 () Bool)

(assert (=> bm!455749 (= call!455754 (isEmpty!35729 s!2326))))

(declare-fun b!5835784 () Bool)

(assert (=> b!5835784 (= e!3579907 (= lt!2303215 call!455754))))

(declare-fun b!5835785 () Bool)

(declare-fun res!2458882 () Bool)

(declare-fun e!3579905 () Bool)

(assert (=> b!5835785 (=> res!2458882 e!3579905)))

(assert (=> b!5835785 (= res!2458882 (not ((_ is ElementMatch!15895) r!7292)))))

(declare-fun e!3579906 () Bool)

(assert (=> b!5835785 (= e!3579906 e!3579905)))

(declare-fun b!5835786 () Bool)

(declare-fun e!3579910 () Bool)

(declare-fun e!3579909 () Bool)

(assert (=> b!5835786 (= e!3579910 e!3579909)))

(declare-fun res!2458883 () Bool)

(assert (=> b!5835786 (=> res!2458883 e!3579909)))

(assert (=> b!5835786 (= res!2458883 call!455754)))

(declare-fun b!5835787 () Bool)

(declare-fun e!3579911 () Bool)

(declare-fun head!12352 (List!63984) C!32060)

(assert (=> b!5835787 (= e!3579911 (= (head!12352 s!2326) (c!1033879 r!7292)))))

(declare-fun b!5835788 () Bool)

(declare-fun res!2458884 () Bool)

(assert (=> b!5835788 (=> res!2458884 e!3579909)))

(declare-fun tail!11437 (List!63984) List!63984)

(assert (=> b!5835788 (= res!2458884 (not (isEmpty!35729 (tail!11437 s!2326))))))

(declare-fun b!5835789 () Bool)

(assert (=> b!5835789 (= e!3579909 (not (= (head!12352 s!2326) (c!1033879 r!7292))))))

(declare-fun b!5835790 () Bool)

(declare-fun res!2458889 () Bool)

(assert (=> b!5835790 (=> (not res!2458889) (not e!3579911))))

(assert (=> b!5835790 (= res!2458889 (not call!455754))))

(declare-fun b!5835791 () Bool)

(assert (=> b!5835791 (= e!3579907 e!3579906)))

(declare-fun c!1033913 () Bool)

(assert (=> b!5835791 (= c!1033913 ((_ is EmptyLang!15895) r!7292))))

(declare-fun b!5835792 () Bool)

(declare-fun res!2458885 () Bool)

(assert (=> b!5835792 (=> res!2458885 e!3579905)))

(assert (=> b!5835792 (= res!2458885 e!3579911)))

(declare-fun res!2458886 () Bool)

(assert (=> b!5835792 (=> (not res!2458886) (not e!3579911))))

(assert (=> b!5835792 (= res!2458886 lt!2303215)))

(declare-fun b!5835793 () Bool)

(declare-fun derivativeStep!4636 (Regex!15895 C!32060) Regex!15895)

(assert (=> b!5835793 (= e!3579908 (matchR!8078 (derivativeStep!4636 r!7292 (head!12352 s!2326)) (tail!11437 s!2326)))))

(declare-fun b!5835794 () Bool)

(assert (=> b!5835794 (= e!3579906 (not lt!2303215))))

(declare-fun b!5835795 () Bool)

(declare-fun res!2458888 () Bool)

(assert (=> b!5835795 (=> (not res!2458888) (not e!3579911))))

(assert (=> b!5835795 (= res!2458888 (isEmpty!35729 (tail!11437 s!2326)))))

(declare-fun b!5835796 () Bool)

(declare-fun nullable!5896 (Regex!15895) Bool)

(assert (=> b!5835796 (= e!3579908 (nullable!5896 r!7292))))

(declare-fun b!5835797 () Bool)

(assert (=> b!5835797 (= e!3579905 e!3579910)))

(declare-fun res!2458887 () Bool)

(assert (=> b!5835797 (=> (not res!2458887) (not e!3579910))))

(assert (=> b!5835797 (= res!2458887 (not lt!2303215))))

(assert (= (and d!1834355 c!1033912) b!5835796))

(assert (= (and d!1834355 (not c!1033912)) b!5835793))

(assert (= (and d!1834355 c!1033914) b!5835784))

(assert (= (and d!1834355 (not c!1033914)) b!5835791))

(assert (= (and b!5835791 c!1033913) b!5835794))

(assert (= (and b!5835791 (not c!1033913)) b!5835785))

(assert (= (and b!5835785 (not res!2458882)) b!5835792))

(assert (= (and b!5835792 res!2458886) b!5835790))

(assert (= (and b!5835790 res!2458889) b!5835795))

(assert (= (and b!5835795 res!2458888) b!5835787))

(assert (= (and b!5835792 (not res!2458885)) b!5835797))

(assert (= (and b!5835797 res!2458887) b!5835786))

(assert (= (and b!5835786 (not res!2458883)) b!5835788))

(assert (= (and b!5835788 (not res!2458884)) b!5835789))

(assert (= (or b!5835784 b!5835786 b!5835790) bm!455749))

(declare-fun m!6762604 () Bool)

(assert (=> b!5835795 m!6762604))

(assert (=> b!5835795 m!6762604))

(declare-fun m!6762606 () Bool)

(assert (=> b!5835795 m!6762606))

(declare-fun m!6762608 () Bool)

(assert (=> b!5835787 m!6762608))

(assert (=> d!1834355 m!6762598))

(assert (=> d!1834355 m!6762552))

(assert (=> bm!455749 m!6762598))

(assert (=> b!5835789 m!6762608))

(assert (=> b!5835788 m!6762604))

(assert (=> b!5835788 m!6762604))

(assert (=> b!5835788 m!6762606))

(declare-fun m!6762610 () Bool)

(assert (=> b!5835796 m!6762610))

(assert (=> b!5835793 m!6762608))

(assert (=> b!5835793 m!6762608))

(declare-fun m!6762612 () Bool)

(assert (=> b!5835793 m!6762612))

(assert (=> b!5835793 m!6762604))

(assert (=> b!5835793 m!6762612))

(assert (=> b!5835793 m!6762604))

(declare-fun m!6762614 () Bool)

(assert (=> b!5835793 m!6762614))

(assert (=> b!5835652 d!1834355))

(declare-fun d!1834357 () Bool)

(assert (=> d!1834357 (= (matchR!8078 r!7292 s!2326) (matchRSpec!2996 r!7292 s!2326))))

(declare-fun lt!2303218 () Unit!157061)

(declare-fun choose!44311 (Regex!15895 List!63984) Unit!157061)

(assert (=> d!1834357 (= lt!2303218 (choose!44311 r!7292 s!2326))))

(assert (=> d!1834357 (validRegex!7631 r!7292)))

(assert (=> d!1834357 (= (mainMatchTheorem!2996 r!7292 s!2326) lt!2303218)))

(declare-fun bs!1375359 () Bool)

(assert (= bs!1375359 d!1834357))

(assert (=> bs!1375359 m!6762560))

(assert (=> bs!1375359 m!6762558))

(declare-fun m!6762616 () Bool)

(assert (=> bs!1375359 m!6762616))

(assert (=> bs!1375359 m!6762552))

(assert (=> b!5835652 d!1834357))

(declare-fun bs!1375360 () Bool)

(declare-fun d!1834359 () Bool)

(assert (= bs!1375360 (and d!1834359 d!1834347)))

(declare-fun lambda!319242 () Int)

(assert (=> bs!1375360 (= lambda!319242 lambda!319233)))

(declare-fun b!5835818 () Bool)

(declare-fun e!3579929 () Bool)

(declare-fun lt!2303221 () Regex!15895)

(assert (=> b!5835818 (= e!3579929 (= lt!2303221 (head!12351 (exprs!5779 (h!70310 zl!343)))))))

(declare-fun e!3579926 () Bool)

(assert (=> d!1834359 e!3579926))

(declare-fun res!2458894 () Bool)

(assert (=> d!1834359 (=> (not res!2458894) (not e!3579926))))

(assert (=> d!1834359 (= res!2458894 (validRegex!7631 lt!2303221))))

(declare-fun e!3579928 () Regex!15895)

(assert (=> d!1834359 (= lt!2303221 e!3579928)))

(declare-fun c!1033926 () Bool)

(declare-fun e!3579925 () Bool)

(assert (=> d!1834359 (= c!1033926 e!3579925)))

(declare-fun res!2458895 () Bool)

(assert (=> d!1834359 (=> (not res!2458895) (not e!3579925))))

(assert (=> d!1834359 (= res!2458895 ((_ is Cons!63861) (exprs!5779 (h!70310 zl!343))))))

(assert (=> d!1834359 (forall!14985 (exprs!5779 (h!70310 zl!343)) lambda!319242)))

(assert (=> d!1834359 (= (generalisedConcat!1492 (exprs!5779 (h!70310 zl!343))) lt!2303221)))

(declare-fun b!5835819 () Bool)

(declare-fun e!3579924 () Regex!15895)

(assert (=> b!5835819 (= e!3579924 (Concat!24740 (h!70309 (exprs!5779 (h!70310 zl!343))) (generalisedConcat!1492 (t!377340 (exprs!5779 (h!70310 zl!343))))))))

(declare-fun b!5835820 () Bool)

(assert (=> b!5835820 (= e!3579924 EmptyExpr!15895)))

(declare-fun b!5835821 () Bool)

(assert (=> b!5835821 (= e!3579925 (isEmpty!35727 (t!377340 (exprs!5779 (h!70310 zl!343)))))))

(declare-fun b!5835822 () Bool)

(declare-fun e!3579927 () Bool)

(declare-fun isEmptyExpr!1333 (Regex!15895) Bool)

(assert (=> b!5835822 (= e!3579927 (isEmptyExpr!1333 lt!2303221))))

(declare-fun b!5835823 () Bool)

(assert (=> b!5835823 (= e!3579927 e!3579929)))

(declare-fun c!1033925 () Bool)

(assert (=> b!5835823 (= c!1033925 (isEmpty!35727 (tail!11436 (exprs!5779 (h!70310 zl!343)))))))

(declare-fun b!5835824 () Bool)

(assert (=> b!5835824 (= e!3579928 (h!70309 (exprs!5779 (h!70310 zl!343))))))

(declare-fun b!5835825 () Bool)

(declare-fun isConcat!856 (Regex!15895) Bool)

(assert (=> b!5835825 (= e!3579929 (isConcat!856 lt!2303221))))

(declare-fun b!5835826 () Bool)

(assert (=> b!5835826 (= e!3579926 e!3579927)))

(declare-fun c!1033924 () Bool)

(assert (=> b!5835826 (= c!1033924 (isEmpty!35727 (exprs!5779 (h!70310 zl!343))))))

(declare-fun b!5835827 () Bool)

(assert (=> b!5835827 (= e!3579928 e!3579924)))

(declare-fun c!1033923 () Bool)

(assert (=> b!5835827 (= c!1033923 ((_ is Cons!63861) (exprs!5779 (h!70310 zl!343))))))

(assert (= (and d!1834359 res!2458895) b!5835821))

(assert (= (and d!1834359 c!1033926) b!5835824))

(assert (= (and d!1834359 (not c!1033926)) b!5835827))

(assert (= (and b!5835827 c!1033923) b!5835819))

(assert (= (and b!5835827 (not c!1033923)) b!5835820))

(assert (= (and d!1834359 res!2458894) b!5835826))

(assert (= (and b!5835826 c!1033924) b!5835822))

(assert (= (and b!5835826 (not c!1033924)) b!5835823))

(assert (= (and b!5835823 c!1033925) b!5835818))

(assert (= (and b!5835823 (not c!1033925)) b!5835825))

(declare-fun m!6762618 () Bool)

(assert (=> b!5835821 m!6762618))

(declare-fun m!6762620 () Bool)

(assert (=> b!5835818 m!6762620))

(declare-fun m!6762622 () Bool)

(assert (=> b!5835825 m!6762622))

(declare-fun m!6762624 () Bool)

(assert (=> b!5835819 m!6762624))

(declare-fun m!6762626 () Bool)

(assert (=> b!5835823 m!6762626))

(assert (=> b!5835823 m!6762626))

(declare-fun m!6762628 () Bool)

(assert (=> b!5835823 m!6762628))

(declare-fun m!6762630 () Bool)

(assert (=> b!5835822 m!6762630))

(declare-fun m!6762632 () Bool)

(assert (=> b!5835826 m!6762632))

(declare-fun m!6762634 () Bool)

(assert (=> d!1834359 m!6762634))

(declare-fun m!6762636 () Bool)

(assert (=> d!1834359 m!6762636))

(assert (=> b!5835641 d!1834359))

(declare-fun bm!455756 () Bool)

(declare-fun call!455763 () Bool)

(declare-fun c!1033932 () Bool)

(declare-fun c!1033931 () Bool)

(assert (=> bm!455756 (= call!455763 (validRegex!7631 (ite c!1033932 (reg!16224 r!7292) (ite c!1033931 (regTwo!32303 r!7292) (regTwo!32302 r!7292)))))))

(declare-fun b!5835846 () Bool)

(declare-fun e!3579948 () Bool)

(assert (=> b!5835846 (= e!3579948 call!455763)))

(declare-fun b!5835847 () Bool)

(declare-fun res!2458907 () Bool)

(declare-fun e!3579944 () Bool)

(assert (=> b!5835847 (=> res!2458907 e!3579944)))

(assert (=> b!5835847 (= res!2458907 (not ((_ is Concat!24740) r!7292)))))

(declare-fun e!3579946 () Bool)

(assert (=> b!5835847 (= e!3579946 e!3579944)))

(declare-fun b!5835848 () Bool)

(declare-fun e!3579947 () Bool)

(declare-fun call!455762 () Bool)

(assert (=> b!5835848 (= e!3579947 call!455762)))

(declare-fun b!5835849 () Bool)

(declare-fun e!3579945 () Bool)

(assert (=> b!5835849 (= e!3579945 e!3579948)))

(declare-fun res!2458909 () Bool)

(assert (=> b!5835849 (= res!2458909 (not (nullable!5896 (reg!16224 r!7292))))))

(assert (=> b!5835849 (=> (not res!2458909) (not e!3579948))))

(declare-fun b!5835850 () Bool)

(declare-fun e!3579949 () Bool)

(assert (=> b!5835850 (= e!3579949 call!455762)))

(declare-fun b!5835851 () Bool)

(declare-fun e!3579950 () Bool)

(assert (=> b!5835851 (= e!3579950 e!3579945)))

(assert (=> b!5835851 (= c!1033932 ((_ is Star!15895) r!7292))))

(declare-fun d!1834361 () Bool)

(declare-fun res!2458908 () Bool)

(assert (=> d!1834361 (=> res!2458908 e!3579950)))

(assert (=> d!1834361 (= res!2458908 ((_ is ElementMatch!15895) r!7292))))

(assert (=> d!1834361 (= (validRegex!7631 r!7292) e!3579950)))

(declare-fun bm!455757 () Bool)

(declare-fun call!455761 () Bool)

(assert (=> bm!455757 (= call!455761 (validRegex!7631 (ite c!1033931 (regOne!32303 r!7292) (regOne!32302 r!7292))))))

(declare-fun b!5835852 () Bool)

(assert (=> b!5835852 (= e!3579945 e!3579946)))

(assert (=> b!5835852 (= c!1033931 ((_ is Union!15895) r!7292))))

(declare-fun b!5835853 () Bool)

(declare-fun res!2458910 () Bool)

(assert (=> b!5835853 (=> (not res!2458910) (not e!3579947))))

(assert (=> b!5835853 (= res!2458910 call!455761)))

(assert (=> b!5835853 (= e!3579946 e!3579947)))

(declare-fun bm!455758 () Bool)

(assert (=> bm!455758 (= call!455762 call!455763)))

(declare-fun b!5835854 () Bool)

(assert (=> b!5835854 (= e!3579944 e!3579949)))

(declare-fun res!2458906 () Bool)

(assert (=> b!5835854 (=> (not res!2458906) (not e!3579949))))

(assert (=> b!5835854 (= res!2458906 call!455761)))

(assert (= (and d!1834361 (not res!2458908)) b!5835851))

(assert (= (and b!5835851 c!1033932) b!5835849))

(assert (= (and b!5835851 (not c!1033932)) b!5835852))

(assert (= (and b!5835849 res!2458909) b!5835846))

(assert (= (and b!5835852 c!1033931) b!5835853))

(assert (= (and b!5835852 (not c!1033931)) b!5835847))

(assert (= (and b!5835853 res!2458910) b!5835848))

(assert (= (and b!5835847 (not res!2458907)) b!5835854))

(assert (= (and b!5835854 res!2458906) b!5835850))

(assert (= (or b!5835848 b!5835850) bm!455758))

(assert (= (or b!5835853 b!5835854) bm!455757))

(assert (= (or b!5835846 bm!455758) bm!455756))

(declare-fun m!6762638 () Bool)

(assert (=> bm!455756 m!6762638))

(declare-fun m!6762640 () Bool)

(assert (=> b!5835849 m!6762640))

(declare-fun m!6762642 () Bool)

(assert (=> bm!455757 m!6762642))

(assert (=> start!597540 d!1834361))

(declare-fun d!1834363 () Bool)

(assert (=> d!1834363 (= (isEmpty!35727 lt!2303204) ((_ is Nil!63861) lt!2303204))))

(assert (=> b!5835642 d!1834363))

(declare-fun d!1834365 () Bool)

(assert (=> d!1834365 (= (isEmpty!35728 (t!377341 zl!343)) ((_ is Nil!63862) (t!377341 zl!343)))))

(assert (=> b!5835644 d!1834365))

(declare-fun d!1834367 () Bool)

(declare-fun lt!2303224 () Regex!15895)

(assert (=> d!1834367 (validRegex!7631 lt!2303224)))

(assert (=> d!1834367 (= lt!2303224 (generalisedUnion!1739 (unfocusZipperList!1316 zl!343)))))

(assert (=> d!1834367 (= (unfocusZipper!1637 zl!343) lt!2303224)))

(declare-fun bs!1375361 () Bool)

(assert (= bs!1375361 d!1834367))

(declare-fun m!6762644 () Bool)

(assert (=> bs!1375361 m!6762644))

(assert (=> bs!1375361 m!6762542))

(assert (=> bs!1375361 m!6762542))

(assert (=> bs!1375361 m!6762544))

(assert (=> b!5835643 d!1834367))

(declare-fun d!1834369 () Bool)

(assert (=> d!1834369 (= (isEmpty!35727 (tail!11436 lt!2303204)) ((_ is Nil!63861) (tail!11436 lt!2303204)))))

(assert (=> b!5835656 d!1834369))

(declare-fun d!1834371 () Bool)

(assert (=> d!1834371 (= (tail!11436 lt!2303204) (t!377340 lt!2303204))))

(assert (=> b!5835656 d!1834371))

(declare-fun d!1834373 () Bool)

(assert (=> d!1834373 (= (head!12351 lt!2303204) (h!70309 lt!2303204))))

(assert (=> b!5835645 d!1834373))

(declare-fun d!1834375 () Bool)

(declare-fun c!1033935 () Bool)

(assert (=> d!1834375 (= c!1033935 (isEmpty!35729 s!2326))))

(declare-fun e!3579957 () Bool)

(assert (=> d!1834375 (= (matchZipper!1977 z!1189 s!2326) e!3579957)))

(declare-fun b!5835869 () Bool)

(declare-fun nullableZipper!1749 ((InoxSet Context!10558)) Bool)

(assert (=> b!5835869 (= e!3579957 (nullableZipper!1749 z!1189))))

(declare-fun b!5835870 () Bool)

(declare-fun derivationStepZipper!1911 ((InoxSet Context!10558) C!32060) (InoxSet Context!10558))

(assert (=> b!5835870 (= e!3579957 (matchZipper!1977 (derivationStepZipper!1911 z!1189 (head!12352 s!2326)) (tail!11437 s!2326)))))

(assert (= (and d!1834375 c!1033935) b!5835869))

(assert (= (and d!1834375 (not c!1033935)) b!5835870))

(assert (=> d!1834375 m!6762598))

(declare-fun m!6762646 () Bool)

(assert (=> b!5835869 m!6762646))

(assert (=> b!5835870 m!6762608))

(assert (=> b!5835870 m!6762608))

(declare-fun m!6762648 () Bool)

(assert (=> b!5835870 m!6762648))

(assert (=> b!5835870 m!6762604))

(assert (=> b!5835870 m!6762648))

(assert (=> b!5835870 m!6762604))

(declare-fun m!6762650 () Bool)

(assert (=> b!5835870 m!6762650))

(assert (=> b!5835636 d!1834375))

(declare-fun d!1834377 () Bool)

(assert (=> d!1834377 (= (matchZipper!1977 z!1189 s!2326) (= s!2326 (Cons!63860 (c!1033879 r!7292) Nil!63860)))))

(declare-fun lt!2303227 () Unit!157061)

(declare-fun choose!44312 ((InoxSet Context!10558) Context!10558 C!32060 List!63984) Unit!157061)

(assert (=> d!1834377 (= lt!2303227 (choose!44312 z!1189 lt!2303206 (c!1033879 r!7292) s!2326))))

(assert (=> d!1834377 (= z!1189 (store ((as const (Array Context!10558 Bool)) false) lt!2303206 true))))

(assert (=> d!1834377 (= (lemmaElementMatchZipperAcceptsOnlyThisChar!4 z!1189 lt!2303206 (c!1033879 r!7292) s!2326) lt!2303227)))

(declare-fun bs!1375363 () Bool)

(assert (= bs!1375363 d!1834377))

(assert (=> bs!1375363 m!6762564))

(declare-fun m!6762660 () Bool)

(assert (=> bs!1375363 m!6762660))

(assert (=> bs!1375363 m!6762574))

(assert (=> b!5835636 d!1834377))

(declare-fun bs!1375364 () Bool)

(declare-fun d!1834381 () Bool)

(assert (= bs!1375364 (and d!1834381 d!1834347)))

(declare-fun lambda!319249 () Int)

(assert (=> bs!1375364 (= lambda!319249 lambda!319233)))

(declare-fun bs!1375365 () Bool)

(assert (= bs!1375365 (and d!1834381 d!1834359)))

(assert (=> bs!1375365 (= lambda!319249 lambda!319242)))

(assert (=> d!1834381 (= (inv!82984 setElem!39496) (forall!14985 (exprs!5779 setElem!39496) lambda!319249))))

(declare-fun bs!1375366 () Bool)

(assert (= bs!1375366 d!1834381))

(declare-fun m!6762662 () Bool)

(assert (=> bs!1375366 m!6762662))

(assert (=> setNonEmpty!39496 d!1834381))

(declare-fun bs!1375367 () Bool)

(declare-fun d!1834383 () Bool)

(assert (= bs!1375367 (and d!1834383 d!1834347)))

(declare-fun lambda!319252 () Int)

(assert (=> bs!1375367 (= lambda!319252 lambda!319233)))

(declare-fun bs!1375368 () Bool)

(assert (= bs!1375368 (and d!1834383 d!1834359)))

(assert (=> bs!1375368 (= lambda!319252 lambda!319242)))

(declare-fun bs!1375369 () Bool)

(assert (= bs!1375369 (and d!1834383 d!1834381)))

(assert (=> bs!1375369 (= lambda!319252 lambda!319249)))

(declare-fun e!3579991 () Bool)

(assert (=> d!1834383 e!3579991))

(declare-fun res!2458945 () Bool)

(assert (=> d!1834383 (=> (not res!2458945) (not e!3579991))))

(declare-fun lt!2303232 () Regex!15895)

(assert (=> d!1834383 (= res!2458945 (validRegex!7631 lt!2303232))))

(declare-fun e!3579995 () Regex!15895)

(assert (=> d!1834383 (= lt!2303232 e!3579995)))

(declare-fun c!1033955 () Bool)

(declare-fun e!3579993 () Bool)

(assert (=> d!1834383 (= c!1033955 e!3579993)))

(declare-fun res!2458944 () Bool)

(assert (=> d!1834383 (=> (not res!2458944) (not e!3579993))))

(assert (=> d!1834383 (= res!2458944 ((_ is Cons!63861) (unfocusZipperList!1316 zl!343)))))

(assert (=> d!1834383 (forall!14985 (unfocusZipperList!1316 zl!343) lambda!319252)))

(assert (=> d!1834383 (= (generalisedUnion!1739 (unfocusZipperList!1316 zl!343)) lt!2303232)))

(declare-fun b!5835934 () Bool)

(assert (=> b!5835934 (= e!3579993 (isEmpty!35727 (t!377340 (unfocusZipperList!1316 zl!343))))))

(declare-fun b!5835935 () Bool)

(assert (=> b!5835935 (= e!3579995 (h!70309 (unfocusZipperList!1316 zl!343)))))

(declare-fun b!5835936 () Bool)

(declare-fun e!3579994 () Regex!15895)

(assert (=> b!5835936 (= e!3579995 e!3579994)))

(declare-fun c!1033956 () Bool)

(assert (=> b!5835936 (= c!1033956 ((_ is Cons!63861) (unfocusZipperList!1316 zl!343)))))

(declare-fun b!5835937 () Bool)

(declare-fun e!3579992 () Bool)

(declare-fun e!3579996 () Bool)

(assert (=> b!5835937 (= e!3579992 e!3579996)))

(declare-fun c!1033957 () Bool)

(assert (=> b!5835937 (= c!1033957 (isEmpty!35727 (tail!11436 (unfocusZipperList!1316 zl!343))))))

(declare-fun b!5835938 () Bool)

(declare-fun isUnion!771 (Regex!15895) Bool)

(assert (=> b!5835938 (= e!3579996 (isUnion!771 lt!2303232))))

(declare-fun b!5835939 () Bool)

(assert (=> b!5835939 (= e!3579991 e!3579992)))

(declare-fun c!1033958 () Bool)

(assert (=> b!5835939 (= c!1033958 (isEmpty!35727 (unfocusZipperList!1316 zl!343)))))

(declare-fun b!5835940 () Bool)

(assert (=> b!5835940 (= e!3579994 (Union!15895 (h!70309 (unfocusZipperList!1316 zl!343)) (generalisedUnion!1739 (t!377340 (unfocusZipperList!1316 zl!343)))))))

(declare-fun b!5835941 () Bool)

(assert (=> b!5835941 (= e!3579994 EmptyLang!15895)))

(declare-fun b!5835942 () Bool)

(assert (=> b!5835942 (= e!3579996 (= lt!2303232 (head!12351 (unfocusZipperList!1316 zl!343))))))

(declare-fun b!5835943 () Bool)

(declare-fun isEmptyLang!1341 (Regex!15895) Bool)

(assert (=> b!5835943 (= e!3579992 (isEmptyLang!1341 lt!2303232))))

(assert (= (and d!1834383 res!2458944) b!5835934))

(assert (= (and d!1834383 c!1033955) b!5835935))

(assert (= (and d!1834383 (not c!1033955)) b!5835936))

(assert (= (and b!5835936 c!1033956) b!5835940))

(assert (= (and b!5835936 (not c!1033956)) b!5835941))

(assert (= (and d!1834383 res!2458945) b!5835939))

(assert (= (and b!5835939 c!1033958) b!5835943))

(assert (= (and b!5835939 (not c!1033958)) b!5835937))

(assert (= (and b!5835937 c!1033957) b!5835942))

(assert (= (and b!5835937 (not c!1033957)) b!5835938))

(assert (=> b!5835939 m!6762542))

(declare-fun m!6762664 () Bool)

(assert (=> b!5835939 m!6762664))

(declare-fun m!6762666 () Bool)

(assert (=> b!5835938 m!6762666))

(assert (=> b!5835937 m!6762542))

(declare-fun m!6762668 () Bool)

(assert (=> b!5835937 m!6762668))

(assert (=> b!5835937 m!6762668))

(declare-fun m!6762670 () Bool)

(assert (=> b!5835937 m!6762670))

(declare-fun m!6762672 () Bool)

(assert (=> b!5835943 m!6762672))

(declare-fun m!6762674 () Bool)

(assert (=> b!5835940 m!6762674))

(declare-fun m!6762676 () Bool)

(assert (=> b!5835934 m!6762676))

(assert (=> b!5835942 m!6762542))

(declare-fun m!6762678 () Bool)

(assert (=> b!5835942 m!6762678))

(declare-fun m!6762680 () Bool)

(assert (=> d!1834383 m!6762680))

(assert (=> d!1834383 m!6762542))

(declare-fun m!6762682 () Bool)

(assert (=> d!1834383 m!6762682))

(assert (=> b!5835637 d!1834383))

(declare-fun bs!1375370 () Bool)

(declare-fun d!1834385 () Bool)

(assert (= bs!1375370 (and d!1834385 d!1834347)))

(declare-fun lambda!319255 () Int)

(assert (=> bs!1375370 (= lambda!319255 lambda!319233)))

(declare-fun bs!1375371 () Bool)

(assert (= bs!1375371 (and d!1834385 d!1834359)))

(assert (=> bs!1375371 (= lambda!319255 lambda!319242)))

(declare-fun bs!1375372 () Bool)

(assert (= bs!1375372 (and d!1834385 d!1834381)))

(assert (=> bs!1375372 (= lambda!319255 lambda!319249)))

(declare-fun bs!1375373 () Bool)

(assert (= bs!1375373 (and d!1834385 d!1834383)))

(assert (=> bs!1375373 (= lambda!319255 lambda!319252)))

(declare-fun lt!2303236 () List!63985)

(assert (=> d!1834385 (forall!14985 lt!2303236 lambda!319255)))

(declare-fun e!3580006 () List!63985)

(assert (=> d!1834385 (= lt!2303236 e!3580006)))

(declare-fun c!1033964 () Bool)

(assert (=> d!1834385 (= c!1033964 ((_ is Cons!63862) zl!343))))

(assert (=> d!1834385 (= (unfocusZipperList!1316 zl!343) lt!2303236)))

(declare-fun b!5835962 () Bool)

(assert (=> b!5835962 (= e!3580006 (Cons!63861 (generalisedConcat!1492 (exprs!5779 (h!70310 zl!343))) (unfocusZipperList!1316 (t!377341 zl!343))))))

(declare-fun b!5835963 () Bool)

(assert (=> b!5835963 (= e!3580006 Nil!63861)))

(assert (= (and d!1834385 c!1033964) b!5835962))

(assert (= (and d!1834385 (not c!1033964)) b!5835963))

(declare-fun m!6762696 () Bool)

(assert (=> d!1834385 m!6762696))

(assert (=> b!5835962 m!6762568))

(declare-fun m!6762698 () Bool)

(assert (=> b!5835962 m!6762698))

(assert (=> b!5835637 d!1834385))

(declare-fun b!5835977 () Bool)

(declare-fun e!3580009 () Bool)

(declare-fun tp!1613471 () Bool)

(declare-fun tp!1613467 () Bool)

(assert (=> b!5835977 (= e!3580009 (and tp!1613471 tp!1613467))))

(declare-fun b!5835975 () Bool)

(declare-fun tp!1613469 () Bool)

(declare-fun tp!1613468 () Bool)

(assert (=> b!5835975 (= e!3580009 (and tp!1613469 tp!1613468))))

(declare-fun b!5835974 () Bool)

(assert (=> b!5835974 (= e!3580009 tp_is_empty!41043)))

(declare-fun b!5835976 () Bool)

(declare-fun tp!1613470 () Bool)

(assert (=> b!5835976 (= e!3580009 tp!1613470)))

(assert (=> b!5835650 (= tp!1613451 e!3580009)))

(assert (= (and b!5835650 ((_ is ElementMatch!15895) (reg!16224 r!7292))) b!5835974))

(assert (= (and b!5835650 ((_ is Concat!24740) (reg!16224 r!7292))) b!5835975))

(assert (= (and b!5835650 ((_ is Star!15895) (reg!16224 r!7292))) b!5835976))

(assert (= (and b!5835650 ((_ is Union!15895) (reg!16224 r!7292))) b!5835977))

(declare-fun b!5835982 () Bool)

(declare-fun e!3580012 () Bool)

(declare-fun tp!1613474 () Bool)

(assert (=> b!5835982 (= e!3580012 (and tp_is_empty!41043 tp!1613474))))

(assert (=> b!5835655 (= tp!1613450 e!3580012)))

(assert (= (and b!5835655 ((_ is Cons!63860) (t!377339 s!2326))) b!5835982))

(declare-fun b!5835990 () Bool)

(declare-fun e!3580018 () Bool)

(declare-fun tp!1613479 () Bool)

(assert (=> b!5835990 (= e!3580018 tp!1613479)))

(declare-fun b!5835989 () Bool)

(declare-fun e!3580017 () Bool)

(declare-fun tp!1613480 () Bool)

(assert (=> b!5835989 (= e!3580017 (and (inv!82984 (h!70310 (t!377341 zl!343))) e!3580018 tp!1613480))))

(assert (=> b!5835639 (= tp!1613452 e!3580017)))

(assert (= b!5835989 b!5835990))

(assert (= (and b!5835639 ((_ is Cons!63862) (t!377341 zl!343))) b!5835989))

(declare-fun m!6762702 () Bool)

(assert (=> b!5835989 m!6762702))

(declare-fun condSetEmpty!39499 () Bool)

(assert (=> setNonEmpty!39496 (= condSetEmpty!39499 (= setRest!39496 ((as const (Array Context!10558 Bool)) false)))))

(declare-fun setRes!39499 () Bool)

(assert (=> setNonEmpty!39496 (= tp!1613453 setRes!39499)))

(declare-fun setIsEmpty!39499 () Bool)

(assert (=> setIsEmpty!39499 setRes!39499))

(declare-fun tp!1613485 () Bool)

(declare-fun setElem!39499 () Context!10558)

(declare-fun e!3580021 () Bool)

(declare-fun setNonEmpty!39499 () Bool)

(assert (=> setNonEmpty!39499 (= setRes!39499 (and tp!1613485 (inv!82984 setElem!39499) e!3580021))))

(declare-fun setRest!39499 () (InoxSet Context!10558))

(assert (=> setNonEmpty!39499 (= setRest!39496 ((_ map or) (store ((as const (Array Context!10558 Bool)) false) setElem!39499 true) setRest!39499))))

(declare-fun b!5835995 () Bool)

(declare-fun tp!1613486 () Bool)

(assert (=> b!5835995 (= e!3580021 tp!1613486)))

(assert (= (and setNonEmpty!39496 condSetEmpty!39499) setIsEmpty!39499))

(assert (= (and setNonEmpty!39496 (not condSetEmpty!39499)) setNonEmpty!39499))

(assert (= setNonEmpty!39499 b!5835995))

(declare-fun m!6762704 () Bool)

(assert (=> setNonEmpty!39499 m!6762704))

(declare-fun b!5835999 () Bool)

(declare-fun e!3580022 () Bool)

(declare-fun tp!1613491 () Bool)

(declare-fun tp!1613487 () Bool)

(assert (=> b!5835999 (= e!3580022 (and tp!1613491 tp!1613487))))

(declare-fun b!5835997 () Bool)

(declare-fun tp!1613489 () Bool)

(declare-fun tp!1613488 () Bool)

(assert (=> b!5835997 (= e!3580022 (and tp!1613489 tp!1613488))))

(declare-fun b!5835996 () Bool)

(assert (=> b!5835996 (= e!3580022 tp_is_empty!41043)))

(declare-fun b!5835998 () Bool)

(declare-fun tp!1613490 () Bool)

(assert (=> b!5835998 (= e!3580022 tp!1613490)))

(assert (=> b!5835651 (= tp!1613448 e!3580022)))

(assert (= (and b!5835651 ((_ is ElementMatch!15895) (regOne!32303 r!7292))) b!5835996))

(assert (= (and b!5835651 ((_ is Concat!24740) (regOne!32303 r!7292))) b!5835997))

(assert (= (and b!5835651 ((_ is Star!15895) (regOne!32303 r!7292))) b!5835998))

(assert (= (and b!5835651 ((_ is Union!15895) (regOne!32303 r!7292))) b!5835999))

(declare-fun b!5836003 () Bool)

(declare-fun e!3580023 () Bool)

(declare-fun tp!1613496 () Bool)

(declare-fun tp!1613492 () Bool)

(assert (=> b!5836003 (= e!3580023 (and tp!1613496 tp!1613492))))

(declare-fun b!5836001 () Bool)

(declare-fun tp!1613494 () Bool)

(declare-fun tp!1613493 () Bool)

(assert (=> b!5836001 (= e!3580023 (and tp!1613494 tp!1613493))))

(declare-fun b!5836000 () Bool)

(assert (=> b!5836000 (= e!3580023 tp_is_empty!41043)))

(declare-fun b!5836002 () Bool)

(declare-fun tp!1613495 () Bool)

(assert (=> b!5836002 (= e!3580023 tp!1613495)))

(assert (=> b!5835651 (= tp!1613447 e!3580023)))

(assert (= (and b!5835651 ((_ is ElementMatch!15895) (regTwo!32303 r!7292))) b!5836000))

(assert (= (and b!5835651 ((_ is Concat!24740) (regTwo!32303 r!7292))) b!5836001))

(assert (= (and b!5835651 ((_ is Star!15895) (regTwo!32303 r!7292))) b!5836002))

(assert (= (and b!5835651 ((_ is Union!15895) (regTwo!32303 r!7292))) b!5836003))

(declare-fun b!5836007 () Bool)

(declare-fun e!3580024 () Bool)

(declare-fun tp!1613501 () Bool)

(declare-fun tp!1613497 () Bool)

(assert (=> b!5836007 (= e!3580024 (and tp!1613501 tp!1613497))))

(declare-fun b!5836005 () Bool)

(declare-fun tp!1613499 () Bool)

(declare-fun tp!1613498 () Bool)

(assert (=> b!5836005 (= e!3580024 (and tp!1613499 tp!1613498))))

(declare-fun b!5836004 () Bool)

(assert (=> b!5836004 (= e!3580024 tp_is_empty!41043)))

(declare-fun b!5836006 () Bool)

(declare-fun tp!1613500 () Bool)

(assert (=> b!5836006 (= e!3580024 tp!1613500)))

(assert (=> b!5835653 (= tp!1613454 e!3580024)))

(assert (= (and b!5835653 ((_ is ElementMatch!15895) (regOne!32302 r!7292))) b!5836004))

(assert (= (and b!5835653 ((_ is Concat!24740) (regOne!32302 r!7292))) b!5836005))

(assert (= (and b!5835653 ((_ is Star!15895) (regOne!32302 r!7292))) b!5836006))

(assert (= (and b!5835653 ((_ is Union!15895) (regOne!32302 r!7292))) b!5836007))

(declare-fun b!5836011 () Bool)

(declare-fun e!3580025 () Bool)

(declare-fun tp!1613506 () Bool)

(declare-fun tp!1613502 () Bool)

(assert (=> b!5836011 (= e!3580025 (and tp!1613506 tp!1613502))))

(declare-fun b!5836009 () Bool)

(declare-fun tp!1613504 () Bool)

(declare-fun tp!1613503 () Bool)

(assert (=> b!5836009 (= e!3580025 (and tp!1613504 tp!1613503))))

(declare-fun b!5836008 () Bool)

(assert (=> b!5836008 (= e!3580025 tp_is_empty!41043)))

(declare-fun b!5836010 () Bool)

(declare-fun tp!1613505 () Bool)

(assert (=> b!5836010 (= e!3580025 tp!1613505)))

(assert (=> b!5835653 (= tp!1613455 e!3580025)))

(assert (= (and b!5835653 ((_ is ElementMatch!15895) (regTwo!32302 r!7292))) b!5836008))

(assert (= (and b!5835653 ((_ is Concat!24740) (regTwo!32302 r!7292))) b!5836009))

(assert (= (and b!5835653 ((_ is Star!15895) (regTwo!32302 r!7292))) b!5836010))

(assert (= (and b!5835653 ((_ is Union!15895) (regTwo!32302 r!7292))) b!5836011))

(declare-fun b!5836016 () Bool)

(declare-fun e!3580028 () Bool)

(declare-fun tp!1613511 () Bool)

(declare-fun tp!1613512 () Bool)

(assert (=> b!5836016 (= e!3580028 (and tp!1613511 tp!1613512))))

(assert (=> b!5835649 (= tp!1613449 e!3580028)))

(assert (= (and b!5835649 ((_ is Cons!63861) (exprs!5779 (h!70310 zl!343)))) b!5836016))

(declare-fun b!5836017 () Bool)

(declare-fun e!3580029 () Bool)

(declare-fun tp!1613513 () Bool)

(declare-fun tp!1613514 () Bool)

(assert (=> b!5836017 (= e!3580029 (and tp!1613513 tp!1613514))))

(assert (=> b!5835654 (= tp!1613456 e!3580029)))

(assert (= (and b!5835654 ((_ is Cons!63861) (exprs!5779 setElem!39496))) b!5836017))

(check-sat (not b!5835940) (not b!5835823) (not b!5835788) (not b!5835793) (not b!5835795) (not b!5835943) (not b!5835975) (not b!5835789) (not b!5835942) (not b!5835977) (not d!1834383) (not b!5836007) (not b!5836011) (not b!5835997) (not b!5835747) (not d!1834377) (not b!5835982) (not b!5836016) (not b!5836009) (not b!5835826) (not d!1834375) (not b!5836006) (not b!5835818) (not bm!455749) (not b!5836002) (not d!1834347) (not d!1834357) (not d!1834355) (not bm!455757) (not b!5835990) (not b!5835822) (not bm!455746) (not b!5835825) (not b!5835995) (not b!5835962) (not d!1834367) (not b!5835787) (not d!1834359) (not b!5836001) (not b!5835821) (not b!5835849) (not setNonEmpty!39499) (not b!5835937) (not b!5835870) (not b!5835934) (not b!5835989) (not b!5836003) (not bm!455745) (not b!5835869) (not b!5835659) (not b!5835939) (not bm!455756) (not d!1834381) (not b!5835938) (not b!5835999) (not b!5836017) (not d!1834385) (not b!5836010) (not b!5835819) tp_is_empty!41043 (not b!5835998) (not b!5835741) (not b!5835976) (not d!1834343) (not b!5836005) (not b!5835796))
(check-sat)
