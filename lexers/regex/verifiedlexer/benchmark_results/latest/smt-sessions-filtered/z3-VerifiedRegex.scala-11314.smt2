; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596696 () Bool)

(assert start!596696)

(declare-fun b!5823812 () Bool)

(declare-fun res!2455501 () Bool)

(declare-fun e!3573887 () Bool)

(assert (=> b!5823812 (=> res!2455501 e!3573887)))

(declare-datatypes ((C!32020 0))(
  ( (C!32021 (val!25712 Int)) )
))
(declare-datatypes ((Regex!15875 0))(
  ( (ElementMatch!15875 (c!1032031 C!32020)) (Concat!24720 (regOne!32262 Regex!15875) (regTwo!32262 Regex!15875)) (EmptyExpr!15875) (Star!15875 (reg!16204 Regex!15875)) (EmptyLang!15875) (Union!15875 (regOne!32263 Regex!15875) (regTwo!32263 Regex!15875)) )
))
(declare-fun r!7292 () Regex!15875)

(declare-datatypes ((List!63924 0))(
  ( (Nil!63800) (Cons!63800 (h!70248 Regex!15875) (t!377279 List!63924)) )
))
(declare-datatypes ((Context!10518 0))(
  ( (Context!10519 (exprs!5759 List!63924)) )
))
(declare-datatypes ((List!63925 0))(
  ( (Nil!63801) (Cons!63801 (h!70249 Context!10518) (t!377280 List!63925)) )
))
(declare-fun zl!343 () List!63925)

(declare-fun generalisedUnion!1719 (List!63924) Regex!15875)

(declare-fun unfocusZipperList!1296 (List!63925) List!63924)

(assert (=> b!5823812 (= res!2455501 (not (= r!7292 (generalisedUnion!1719 (unfocusZipperList!1296 zl!343)))))))

(declare-fun b!5823813 () Bool)

(declare-fun e!3573885 () Bool)

(declare-fun tp_is_empty!41003 () Bool)

(declare-fun tp!1607592 () Bool)

(assert (=> b!5823813 (= e!3573885 (and tp_is_empty!41003 tp!1607592))))

(declare-fun b!5823814 () Bool)

(declare-fun e!3573889 () Bool)

(declare-fun tp!1607599 () Bool)

(declare-fun tp!1607600 () Bool)

(assert (=> b!5823814 (= e!3573889 (and tp!1607599 tp!1607600))))

(declare-fun b!5823815 () Bool)

(declare-fun res!2455497 () Bool)

(declare-fun e!3573890 () Bool)

(assert (=> b!5823815 (=> (not res!2455497) (not e!3573890))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10518))

(declare-fun toList!9659 ((InoxSet Context!10518)) List!63925)

(assert (=> b!5823815 (= res!2455497 (= (toList!9659 z!1189) zl!343))))

(declare-fun b!5823816 () Bool)

(declare-fun res!2455498 () Bool)

(assert (=> b!5823816 (=> (not res!2455498) (not e!3573890))))

(declare-fun unfocusZipper!1617 (List!63925) Regex!15875)

(assert (=> b!5823816 (= res!2455498 (= r!7292 (unfocusZipper!1617 zl!343)))))

(declare-fun b!5823817 () Bool)

(declare-fun e!3573888 () Bool)

(declare-fun tp!1607591 () Bool)

(assert (=> b!5823817 (= e!3573888 tp!1607591)))

(declare-fun tp!1607593 () Bool)

(declare-fun b!5823818 () Bool)

(declare-fun e!3573886 () Bool)

(declare-fun inv!82934 (Context!10518) Bool)

(assert (=> b!5823818 (= e!3573886 (and (inv!82934 (h!70249 zl!343)) e!3573888 tp!1607593))))

(declare-fun b!5823819 () Bool)

(declare-fun res!2455502 () Bool)

(assert (=> b!5823819 (=> res!2455502 e!3573887)))

(get-info :version)

(assert (=> b!5823819 (= res!2455502 (not ((_ is Cons!63800) (exprs!5759 (h!70249 zl!343)))))))

(declare-fun b!5823820 () Bool)

(declare-fun res!2455495 () Bool)

(assert (=> b!5823820 (=> res!2455495 e!3573887)))

(declare-fun generalisedConcat!1472 (List!63924) Regex!15875)

(assert (=> b!5823820 (= res!2455495 (not (= r!7292 (generalisedConcat!1472 (exprs!5759 (h!70249 zl!343))))))))

(declare-fun b!5823821 () Bool)

(declare-fun res!2455496 () Bool)

(assert (=> b!5823821 (=> res!2455496 e!3573887)))

(assert (=> b!5823821 (= res!2455496 (or ((_ is EmptyExpr!15875) r!7292) (not ((_ is EmptyLang!15875) r!7292))))))

(declare-fun b!5823822 () Bool)

(assert (=> b!5823822 (= e!3573887 (inv!82934 (Context!10519 (Cons!63800 r!7292 Nil!63800))))))

(declare-fun b!5823823 () Bool)

(declare-fun tp!1607596 () Bool)

(declare-fun tp!1607594 () Bool)

(assert (=> b!5823823 (= e!3573889 (and tp!1607596 tp!1607594))))

(declare-fun setElem!39364 () Context!10518)

(declare-fun setNonEmpty!39364 () Bool)

(declare-fun tp!1607598 () Bool)

(declare-fun e!3573891 () Bool)

(declare-fun setRes!39364 () Bool)

(assert (=> setNonEmpty!39364 (= setRes!39364 (and tp!1607598 (inv!82934 setElem!39364) e!3573891))))

(declare-fun setRest!39364 () (InoxSet Context!10518))

(assert (=> setNonEmpty!39364 (= z!1189 ((_ map or) (store ((as const (Array Context!10518 Bool)) false) setElem!39364 true) setRest!39364))))

(declare-fun b!5823824 () Bool)

(declare-fun tp!1607597 () Bool)

(assert (=> b!5823824 (= e!3573891 tp!1607597)))

(declare-fun setIsEmpty!39364 () Bool)

(assert (=> setIsEmpty!39364 setRes!39364))

(declare-fun res!2455494 () Bool)

(assert (=> start!596696 (=> (not res!2455494) (not e!3573890))))

(declare-fun validRegex!7611 (Regex!15875) Bool)

(assert (=> start!596696 (= res!2455494 (validRegex!7611 r!7292))))

(assert (=> start!596696 e!3573890))

(assert (=> start!596696 e!3573889))

(declare-fun condSetEmpty!39364 () Bool)

(assert (=> start!596696 (= condSetEmpty!39364 (= z!1189 ((as const (Array Context!10518 Bool)) false)))))

(assert (=> start!596696 setRes!39364))

(assert (=> start!596696 e!3573886))

(assert (=> start!596696 e!3573885))

(declare-fun b!5823825 () Bool)

(assert (=> b!5823825 (= e!3573889 tp_is_empty!41003)))

(declare-fun b!5823826 () Bool)

(declare-fun res!2455500 () Bool)

(assert (=> b!5823826 (=> res!2455500 e!3573887)))

(declare-fun isEmpty!35667 (List!63925) Bool)

(assert (=> b!5823826 (= res!2455500 (not (isEmpty!35667 (t!377280 zl!343))))))

(declare-fun b!5823827 () Bool)

(declare-fun tp!1607595 () Bool)

(assert (=> b!5823827 (= e!3573889 tp!1607595)))

(declare-fun b!5823828 () Bool)

(assert (=> b!5823828 (= e!3573890 (not e!3573887))))

(declare-fun res!2455499 () Bool)

(assert (=> b!5823828 (=> res!2455499 e!3573887)))

(assert (=> b!5823828 (= res!2455499 (not ((_ is Cons!63801) zl!343)))))

(declare-datatypes ((List!63926 0))(
  ( (Nil!63802) (Cons!63802 (h!70250 C!32020) (t!377281 List!63926)) )
))
(declare-fun s!2326 () List!63926)

(declare-fun matchR!8058 (Regex!15875 List!63926) Bool)

(declare-fun matchRSpec!2976 (Regex!15875 List!63926) Bool)

(assert (=> b!5823828 (= (matchR!8058 r!7292 s!2326) (matchRSpec!2976 r!7292 s!2326))))

(declare-datatypes ((Unit!157021 0))(
  ( (Unit!157022) )
))
(declare-fun lt!2302518 () Unit!157021)

(declare-fun mainMatchTheorem!2976 (Regex!15875 List!63926) Unit!157021)

(assert (=> b!5823828 (= lt!2302518 (mainMatchTheorem!2976 r!7292 s!2326))))

(assert (= (and start!596696 res!2455494) b!5823815))

(assert (= (and b!5823815 res!2455497) b!5823816))

(assert (= (and b!5823816 res!2455498) b!5823828))

(assert (= (and b!5823828 (not res!2455499)) b!5823826))

(assert (= (and b!5823826 (not res!2455500)) b!5823820))

(assert (= (and b!5823820 (not res!2455495)) b!5823819))

(assert (= (and b!5823819 (not res!2455502)) b!5823812))

(assert (= (and b!5823812 (not res!2455501)) b!5823821))

(assert (= (and b!5823821 (not res!2455496)) b!5823822))

(assert (= (and start!596696 ((_ is ElementMatch!15875) r!7292)) b!5823825))

(assert (= (and start!596696 ((_ is Concat!24720) r!7292)) b!5823814))

(assert (= (and start!596696 ((_ is Star!15875) r!7292)) b!5823827))

(assert (= (and start!596696 ((_ is Union!15875) r!7292)) b!5823823))

(assert (= (and start!596696 condSetEmpty!39364) setIsEmpty!39364))

(assert (= (and start!596696 (not condSetEmpty!39364)) setNonEmpty!39364))

(assert (= setNonEmpty!39364 b!5823824))

(assert (= b!5823818 b!5823817))

(assert (= (and start!596696 ((_ is Cons!63801) zl!343)) b!5823818))

(assert (= (and start!596696 ((_ is Cons!63802) s!2326)) b!5823813))

(declare-fun m!6757458 () Bool)

(assert (=> b!5823818 m!6757458))

(declare-fun m!6757460 () Bool)

(assert (=> b!5823820 m!6757460))

(declare-fun m!6757462 () Bool)

(assert (=> start!596696 m!6757462))

(declare-fun m!6757464 () Bool)

(assert (=> b!5823812 m!6757464))

(assert (=> b!5823812 m!6757464))

(declare-fun m!6757466 () Bool)

(assert (=> b!5823812 m!6757466))

(declare-fun m!6757468 () Bool)

(assert (=> b!5823816 m!6757468))

(declare-fun m!6757470 () Bool)

(assert (=> b!5823822 m!6757470))

(declare-fun m!6757472 () Bool)

(assert (=> b!5823826 m!6757472))

(declare-fun m!6757474 () Bool)

(assert (=> b!5823828 m!6757474))

(declare-fun m!6757476 () Bool)

(assert (=> b!5823828 m!6757476))

(declare-fun m!6757478 () Bool)

(assert (=> b!5823828 m!6757478))

(declare-fun m!6757480 () Bool)

(assert (=> setNonEmpty!39364 m!6757480))

(declare-fun m!6757482 () Bool)

(assert (=> b!5823815 m!6757482))

(check-sat (not b!5823815) (not b!5823813) tp_is_empty!41003 (not b!5823823) (not b!5823814) (not start!596696) (not b!5823822) (not setNonEmpty!39364) (not b!5823827) (not b!5823826) (not b!5823817) (not b!5823824) (not b!5823816) (not b!5823828) (not b!5823812) (not b!5823820) (not b!5823818))
(check-sat)
(get-model)

(declare-fun d!1832309 () Bool)

(declare-fun lambda!318720 () Int)

(declare-fun forall!14966 (List!63924 Int) Bool)

(assert (=> d!1832309 (= (inv!82934 (Context!10519 (Cons!63800 r!7292 Nil!63800))) (forall!14966 (exprs!5759 (Context!10519 (Cons!63800 r!7292 Nil!63800))) lambda!318720))))

(declare-fun bs!1373752 () Bool)

(assert (= bs!1373752 d!1832309))

(declare-fun m!6757494 () Bool)

(assert (=> bs!1373752 m!6757494))

(assert (=> b!5823822 d!1832309))

(declare-fun d!1832321 () Bool)

(assert (=> d!1832321 (= (isEmpty!35667 (t!377280 zl!343)) ((_ is Nil!63801) (t!377280 zl!343)))))

(assert (=> b!5823826 d!1832321))

(declare-fun bs!1373753 () Bool)

(declare-fun d!1832323 () Bool)

(assert (= bs!1373753 (and d!1832323 d!1832309)))

(declare-fun lambda!318723 () Int)

(assert (=> bs!1373753 (= lambda!318723 lambda!318720)))

(declare-fun b!5823916 () Bool)

(declare-fun e!3573943 () Regex!15875)

(assert (=> b!5823916 (= e!3573943 (h!70248 (unfocusZipperList!1296 zl!343)))))

(declare-fun b!5823917 () Bool)

(declare-fun e!3573944 () Bool)

(declare-fun lt!2302530 () Regex!15875)

(declare-fun isUnion!752 (Regex!15875) Bool)

(assert (=> b!5823917 (= e!3573944 (isUnion!752 lt!2302530))))

(declare-fun b!5823918 () Bool)

(declare-fun head!12312 (List!63924) Regex!15875)

(assert (=> b!5823918 (= e!3573944 (= lt!2302530 (head!12312 (unfocusZipperList!1296 zl!343))))))

(declare-fun b!5823919 () Bool)

(declare-fun e!3573946 () Bool)

(declare-fun isEmpty!35669 (List!63924) Bool)

(assert (=> b!5823919 (= e!3573946 (isEmpty!35669 (t!377279 (unfocusZipperList!1296 zl!343))))))

(declare-fun b!5823920 () Bool)

(declare-fun e!3573942 () Bool)

(declare-fun isEmptyLang!1322 (Regex!15875) Bool)

(assert (=> b!5823920 (= e!3573942 (isEmptyLang!1322 lt!2302530))))

(declare-fun b!5823921 () Bool)

(assert (=> b!5823921 (= e!3573942 e!3573944)))

(declare-fun c!1032060 () Bool)

(declare-fun tail!11397 (List!63924) List!63924)

(assert (=> b!5823921 (= c!1032060 (isEmpty!35669 (tail!11397 (unfocusZipperList!1296 zl!343))))))

(declare-fun b!5823922 () Bool)

(declare-fun e!3573945 () Bool)

(assert (=> b!5823922 (= e!3573945 e!3573942)))

(declare-fun c!1032058 () Bool)

(assert (=> b!5823922 (= c!1032058 (isEmpty!35669 (unfocusZipperList!1296 zl!343)))))

(declare-fun b!5823923 () Bool)

(declare-fun e!3573947 () Regex!15875)

(assert (=> b!5823923 (= e!3573947 (Union!15875 (h!70248 (unfocusZipperList!1296 zl!343)) (generalisedUnion!1719 (t!377279 (unfocusZipperList!1296 zl!343)))))))

(assert (=> d!1832323 e!3573945))

(declare-fun res!2455540 () Bool)

(assert (=> d!1832323 (=> (not res!2455540) (not e!3573945))))

(assert (=> d!1832323 (= res!2455540 (validRegex!7611 lt!2302530))))

(assert (=> d!1832323 (= lt!2302530 e!3573943)))

(declare-fun c!1032059 () Bool)

(assert (=> d!1832323 (= c!1032059 e!3573946)))

(declare-fun res!2455541 () Bool)

(assert (=> d!1832323 (=> (not res!2455541) (not e!3573946))))

(assert (=> d!1832323 (= res!2455541 ((_ is Cons!63800) (unfocusZipperList!1296 zl!343)))))

(assert (=> d!1832323 (forall!14966 (unfocusZipperList!1296 zl!343) lambda!318723)))

(assert (=> d!1832323 (= (generalisedUnion!1719 (unfocusZipperList!1296 zl!343)) lt!2302530)))

(declare-fun b!5823924 () Bool)

(assert (=> b!5823924 (= e!3573947 EmptyLang!15875)))

(declare-fun b!5823925 () Bool)

(assert (=> b!5823925 (= e!3573943 e!3573947)))

(declare-fun c!1032057 () Bool)

(assert (=> b!5823925 (= c!1032057 ((_ is Cons!63800) (unfocusZipperList!1296 zl!343)))))

(assert (= (and d!1832323 res!2455541) b!5823919))

(assert (= (and d!1832323 c!1032059) b!5823916))

(assert (= (and d!1832323 (not c!1032059)) b!5823925))

(assert (= (and b!5823925 c!1032057) b!5823923))

(assert (= (and b!5823925 (not c!1032057)) b!5823924))

(assert (= (and d!1832323 res!2455540) b!5823922))

(assert (= (and b!5823922 c!1032058) b!5823920))

(assert (= (and b!5823922 (not c!1032058)) b!5823921))

(assert (= (and b!5823921 c!1032060) b!5823918))

(assert (= (and b!5823921 (not c!1032060)) b!5823917))

(declare-fun m!6757510 () Bool)

(assert (=> b!5823919 m!6757510))

(assert (=> b!5823921 m!6757464))

(declare-fun m!6757512 () Bool)

(assert (=> b!5823921 m!6757512))

(assert (=> b!5823921 m!6757512))

(declare-fun m!6757514 () Bool)

(assert (=> b!5823921 m!6757514))

(declare-fun m!6757516 () Bool)

(assert (=> b!5823917 m!6757516))

(assert (=> b!5823922 m!6757464))

(declare-fun m!6757518 () Bool)

(assert (=> b!5823922 m!6757518))

(assert (=> b!5823918 m!6757464))

(declare-fun m!6757520 () Bool)

(assert (=> b!5823918 m!6757520))

(declare-fun m!6757522 () Bool)

(assert (=> b!5823920 m!6757522))

(declare-fun m!6757524 () Bool)

(assert (=> d!1832323 m!6757524))

(assert (=> d!1832323 m!6757464))

(declare-fun m!6757526 () Bool)

(assert (=> d!1832323 m!6757526))

(declare-fun m!6757528 () Bool)

(assert (=> b!5823923 m!6757528))

(assert (=> b!5823812 d!1832323))

(declare-fun bs!1373754 () Bool)

(declare-fun d!1832327 () Bool)

(assert (= bs!1373754 (and d!1832327 d!1832309)))

(declare-fun lambda!318730 () Int)

(assert (=> bs!1373754 (= lambda!318730 lambda!318720)))

(declare-fun bs!1373755 () Bool)

(assert (= bs!1373755 (and d!1832327 d!1832323)))

(assert (=> bs!1373755 (= lambda!318730 lambda!318723)))

(declare-fun lt!2302533 () List!63924)

(assert (=> d!1832327 (forall!14966 lt!2302533 lambda!318730)))

(declare-fun e!3573954 () List!63924)

(assert (=> d!1832327 (= lt!2302533 e!3573954)))

(declare-fun c!1032063 () Bool)

(assert (=> d!1832327 (= c!1032063 ((_ is Cons!63801) zl!343))))

(assert (=> d!1832327 (= (unfocusZipperList!1296 zl!343) lt!2302533)))

(declare-fun b!5823940 () Bool)

(assert (=> b!5823940 (= e!3573954 (Cons!63800 (generalisedConcat!1472 (exprs!5759 (h!70249 zl!343))) (unfocusZipperList!1296 (t!377280 zl!343))))))

(declare-fun b!5823941 () Bool)

(assert (=> b!5823941 (= e!3573954 Nil!63800)))

(assert (= (and d!1832327 c!1032063) b!5823940))

(assert (= (and d!1832327 (not c!1032063)) b!5823941))

(declare-fun m!6757530 () Bool)

(assert (=> d!1832327 m!6757530))

(assert (=> b!5823940 m!6757460))

(declare-fun m!6757532 () Bool)

(assert (=> b!5823940 m!6757532))

(assert (=> b!5823812 d!1832327))

(declare-fun d!1832329 () Bool)

(declare-fun lt!2302536 () Regex!15875)

(assert (=> d!1832329 (validRegex!7611 lt!2302536)))

(assert (=> d!1832329 (= lt!2302536 (generalisedUnion!1719 (unfocusZipperList!1296 zl!343)))))

(assert (=> d!1832329 (= (unfocusZipper!1617 zl!343) lt!2302536)))

(declare-fun bs!1373756 () Bool)

(assert (= bs!1373756 d!1832329))

(declare-fun m!6757534 () Bool)

(assert (=> bs!1373756 m!6757534))

(assert (=> bs!1373756 m!6757464))

(assert (=> bs!1373756 m!6757464))

(assert (=> bs!1373756 m!6757466))

(assert (=> b!5823816 d!1832329))

(declare-fun b!5823975 () Bool)

(declare-fun e!3573982 () Bool)

(declare-fun e!3573977 () Bool)

(assert (=> b!5823975 (= e!3573982 e!3573977)))

(declare-fun res!2455568 () Bool)

(declare-fun nullable!5878 (Regex!15875) Bool)

(assert (=> b!5823975 (= res!2455568 (not (nullable!5878 (reg!16204 r!7292))))))

(assert (=> b!5823975 (=> (not res!2455568) (not e!3573977))))

(declare-fun b!5823976 () Bool)

(declare-fun e!3573981 () Bool)

(assert (=> b!5823976 (= e!3573982 e!3573981)))

(declare-fun c!1032073 () Bool)

(assert (=> b!5823976 (= c!1032073 ((_ is Union!15875) r!7292))))

(declare-fun b!5823977 () Bool)

(declare-fun e!3573980 () Bool)

(declare-fun call!454804 () Bool)

(assert (=> b!5823977 (= e!3573980 call!454804)))

(declare-fun b!5823978 () Bool)

(declare-fun e!3573979 () Bool)

(assert (=> b!5823978 (= e!3573979 e!3573982)))

(declare-fun c!1032072 () Bool)

(assert (=> b!5823978 (= c!1032072 ((_ is Star!15875) r!7292))))

(declare-fun bm!454799 () Bool)

(assert (=> bm!454799 (= call!454804 (validRegex!7611 (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))))))

(declare-fun d!1832331 () Bool)

(declare-fun res!2455565 () Bool)

(assert (=> d!1832331 (=> res!2455565 e!3573979)))

(assert (=> d!1832331 (= res!2455565 ((_ is ElementMatch!15875) r!7292))))

(assert (=> d!1832331 (= (validRegex!7611 r!7292) e!3573979)))

(declare-fun b!5823979 () Bool)

(declare-fun e!3573978 () Bool)

(assert (=> b!5823979 (= e!3573978 call!454804)))

(declare-fun bm!454800 () Bool)

(declare-fun call!454805 () Bool)

(declare-fun call!454806 () Bool)

(assert (=> bm!454800 (= call!454805 call!454806)))

(declare-fun b!5823980 () Bool)

(declare-fun res!2455569 () Bool)

(declare-fun e!3573976 () Bool)

(assert (=> b!5823980 (=> res!2455569 e!3573976)))

(assert (=> b!5823980 (= res!2455569 (not ((_ is Concat!24720) r!7292)))))

(assert (=> b!5823980 (= e!3573981 e!3573976)))

(declare-fun b!5823981 () Bool)

(assert (=> b!5823981 (= e!3573977 call!454806)))

(declare-fun b!5823982 () Bool)

(assert (=> b!5823982 (= e!3573976 e!3573980)))

(declare-fun res!2455567 () Bool)

(assert (=> b!5823982 (=> (not res!2455567) (not e!3573980))))

(assert (=> b!5823982 (= res!2455567 call!454805)))

(declare-fun bm!454801 () Bool)

(assert (=> bm!454801 (= call!454806 (validRegex!7611 (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))))))

(declare-fun b!5823983 () Bool)

(declare-fun res!2455566 () Bool)

(assert (=> b!5823983 (=> (not res!2455566) (not e!3573978))))

(assert (=> b!5823983 (= res!2455566 call!454805)))

(assert (=> b!5823983 (= e!3573981 e!3573978)))

(assert (= (and d!1832331 (not res!2455565)) b!5823978))

(assert (= (and b!5823978 c!1032072) b!5823975))

(assert (= (and b!5823978 (not c!1032072)) b!5823976))

(assert (= (and b!5823975 res!2455568) b!5823981))

(assert (= (and b!5823976 c!1032073) b!5823983))

(assert (= (and b!5823976 (not c!1032073)) b!5823980))

(assert (= (and b!5823983 res!2455566) b!5823979))

(assert (= (and b!5823980 (not res!2455569)) b!5823982))

(assert (= (and b!5823982 res!2455567) b!5823977))

(assert (= (or b!5823979 b!5823977) bm!454799))

(assert (= (or b!5823983 b!5823982) bm!454800))

(assert (= (or b!5823981 bm!454800) bm!454801))

(declare-fun m!6757544 () Bool)

(assert (=> b!5823975 m!6757544))

(declare-fun m!6757546 () Bool)

(assert (=> bm!454799 m!6757546))

(declare-fun m!6757548 () Bool)

(assert (=> bm!454801 m!6757548))

(assert (=> start!596696 d!1832331))

(declare-fun d!1832337 () Bool)

(declare-fun e!3573985 () Bool)

(assert (=> d!1832337 e!3573985))

(declare-fun res!2455572 () Bool)

(assert (=> d!1832337 (=> (not res!2455572) (not e!3573985))))

(declare-fun lt!2302542 () List!63925)

(declare-fun noDuplicate!1745 (List!63925) Bool)

(assert (=> d!1832337 (= res!2455572 (noDuplicate!1745 lt!2302542))))

(declare-fun choose!44265 ((InoxSet Context!10518)) List!63925)

(assert (=> d!1832337 (= lt!2302542 (choose!44265 z!1189))))

(assert (=> d!1832337 (= (toList!9659 z!1189) lt!2302542)))

(declare-fun b!5823986 () Bool)

(declare-fun content!11711 (List!63925) (InoxSet Context!10518))

(assert (=> b!5823986 (= e!3573985 (= (content!11711 lt!2302542) z!1189))))

(assert (= (and d!1832337 res!2455572) b!5823986))

(declare-fun m!6757550 () Bool)

(assert (=> d!1832337 m!6757550))

(declare-fun m!6757552 () Bool)

(assert (=> d!1832337 m!6757552))

(declare-fun m!6757554 () Bool)

(assert (=> b!5823986 m!6757554))

(assert (=> b!5823815 d!1832337))

(declare-fun bs!1373760 () Bool)

(declare-fun d!1832339 () Bool)

(assert (= bs!1373760 (and d!1832339 d!1832309)))

(declare-fun lambda!318738 () Int)

(assert (=> bs!1373760 (= lambda!318738 lambda!318720)))

(declare-fun bs!1373761 () Bool)

(assert (= bs!1373761 (and d!1832339 d!1832323)))

(assert (=> bs!1373761 (= lambda!318738 lambda!318723)))

(declare-fun bs!1373762 () Bool)

(assert (= bs!1373762 (and d!1832339 d!1832327)))

(assert (=> bs!1373762 (= lambda!318738 lambda!318730)))

(declare-fun b!5824037 () Bool)

(declare-fun e!3574018 () Bool)

(declare-fun e!3574016 () Bool)

(assert (=> b!5824037 (= e!3574018 e!3574016)))

(declare-fun c!1032094 () Bool)

(assert (=> b!5824037 (= c!1032094 (isEmpty!35669 (exprs!5759 (h!70249 zl!343))))))

(declare-fun b!5824038 () Bool)

(declare-fun e!3574021 () Regex!15875)

(assert (=> b!5824038 (= e!3574021 EmptyExpr!15875)))

(declare-fun b!5824039 () Bool)

(declare-fun e!3574019 () Regex!15875)

(assert (=> b!5824039 (= e!3574019 e!3574021)))

(declare-fun c!1032095 () Bool)

(assert (=> b!5824039 (= c!1032095 ((_ is Cons!63800) (exprs!5759 (h!70249 zl!343))))))

(declare-fun b!5824040 () Bool)

(declare-fun e!3574017 () Bool)

(assert (=> b!5824040 (= e!3574016 e!3574017)))

(declare-fun c!1032096 () Bool)

(assert (=> b!5824040 (= c!1032096 (isEmpty!35669 (tail!11397 (exprs!5759 (h!70249 zl!343)))))))

(declare-fun b!5824041 () Bool)

(assert (=> b!5824041 (= e!3574021 (Concat!24720 (h!70248 (exprs!5759 (h!70249 zl!343))) (generalisedConcat!1472 (t!377279 (exprs!5759 (h!70249 zl!343))))))))

(declare-fun b!5824042 () Bool)

(declare-fun lt!2302548 () Regex!15875)

(declare-fun isEmptyExpr!1313 (Regex!15875) Bool)

(assert (=> b!5824042 (= e!3574016 (isEmptyExpr!1313 lt!2302548))))

(declare-fun b!5824043 () Bool)

(assert (=> b!5824043 (= e!3574017 (= lt!2302548 (head!12312 (exprs!5759 (h!70249 zl!343)))))))

(assert (=> d!1832339 e!3574018))

(declare-fun res!2455584 () Bool)

(assert (=> d!1832339 (=> (not res!2455584) (not e!3574018))))

(assert (=> d!1832339 (= res!2455584 (validRegex!7611 lt!2302548))))

(assert (=> d!1832339 (= lt!2302548 e!3574019)))

(declare-fun c!1032097 () Bool)

(declare-fun e!3574020 () Bool)

(assert (=> d!1832339 (= c!1032097 e!3574020)))

(declare-fun res!2455583 () Bool)

(assert (=> d!1832339 (=> (not res!2455583) (not e!3574020))))

(assert (=> d!1832339 (= res!2455583 ((_ is Cons!63800) (exprs!5759 (h!70249 zl!343))))))

(assert (=> d!1832339 (forall!14966 (exprs!5759 (h!70249 zl!343)) lambda!318738)))

(assert (=> d!1832339 (= (generalisedConcat!1472 (exprs!5759 (h!70249 zl!343))) lt!2302548)))

(declare-fun b!5824044 () Bool)

(assert (=> b!5824044 (= e!3574020 (isEmpty!35669 (t!377279 (exprs!5759 (h!70249 zl!343)))))))

(declare-fun b!5824045 () Bool)

(assert (=> b!5824045 (= e!3574019 (h!70248 (exprs!5759 (h!70249 zl!343))))))

(declare-fun b!5824046 () Bool)

(declare-fun isConcat!836 (Regex!15875) Bool)

(assert (=> b!5824046 (= e!3574017 (isConcat!836 lt!2302548))))

(assert (= (and d!1832339 res!2455583) b!5824044))

(assert (= (and d!1832339 c!1032097) b!5824045))

(assert (= (and d!1832339 (not c!1032097)) b!5824039))

(assert (= (and b!5824039 c!1032095) b!5824041))

(assert (= (and b!5824039 (not c!1032095)) b!5824038))

(assert (= (and d!1832339 res!2455584) b!5824037))

(assert (= (and b!5824037 c!1032094) b!5824042))

(assert (= (and b!5824037 (not c!1032094)) b!5824040))

(assert (= (and b!5824040 c!1032096) b!5824043))

(assert (= (and b!5824040 (not c!1032096)) b!5824046))

(declare-fun m!6757576 () Bool)

(assert (=> b!5824046 m!6757576))

(declare-fun m!6757578 () Bool)

(assert (=> b!5824042 m!6757578))

(declare-fun m!6757580 () Bool)

(assert (=> b!5824041 m!6757580))

(declare-fun m!6757582 () Bool)

(assert (=> d!1832339 m!6757582))

(declare-fun m!6757584 () Bool)

(assert (=> d!1832339 m!6757584))

(declare-fun m!6757586 () Bool)

(assert (=> b!5824040 m!6757586))

(assert (=> b!5824040 m!6757586))

(declare-fun m!6757588 () Bool)

(assert (=> b!5824040 m!6757588))

(declare-fun m!6757590 () Bool)

(assert (=> b!5824043 m!6757590))

(declare-fun m!6757592 () Bool)

(assert (=> b!5824037 m!6757592))

(declare-fun m!6757594 () Bool)

(assert (=> b!5824044 m!6757594))

(assert (=> b!5823820 d!1832339))

(declare-fun bs!1373763 () Bool)

(declare-fun d!1832343 () Bool)

(assert (= bs!1373763 (and d!1832343 d!1832309)))

(declare-fun lambda!318739 () Int)

(assert (=> bs!1373763 (= lambda!318739 lambda!318720)))

(declare-fun bs!1373764 () Bool)

(assert (= bs!1373764 (and d!1832343 d!1832323)))

(assert (=> bs!1373764 (= lambda!318739 lambda!318723)))

(declare-fun bs!1373765 () Bool)

(assert (= bs!1373765 (and d!1832343 d!1832327)))

(assert (=> bs!1373765 (= lambda!318739 lambda!318730)))

(declare-fun bs!1373766 () Bool)

(assert (= bs!1373766 (and d!1832343 d!1832339)))

(assert (=> bs!1373766 (= lambda!318739 lambda!318738)))

(assert (=> d!1832343 (= (inv!82934 setElem!39364) (forall!14966 (exprs!5759 setElem!39364) lambda!318739))))

(declare-fun bs!1373767 () Bool)

(assert (= bs!1373767 d!1832343))

(declare-fun m!6757596 () Bool)

(assert (=> bs!1373767 m!6757596))

(assert (=> setNonEmpty!39364 d!1832343))

(declare-fun b!5824111 () Bool)

(declare-fun res!2455614 () Bool)

(declare-fun e!3574061 () Bool)

(assert (=> b!5824111 (=> res!2455614 e!3574061)))

(declare-fun isEmpty!35671 (List!63926) Bool)

(declare-fun tail!11399 (List!63926) List!63926)

(assert (=> b!5824111 (= res!2455614 (not (isEmpty!35671 (tail!11399 s!2326))))))

(declare-fun b!5824112 () Bool)

(declare-fun e!3574059 () Bool)

(declare-fun head!12314 (List!63926) C!32020)

(assert (=> b!5824112 (= e!3574059 (= (head!12314 s!2326) (c!1032031 r!7292)))))

(declare-fun bm!454804 () Bool)

(declare-fun call!454809 () Bool)

(assert (=> bm!454804 (= call!454809 (isEmpty!35671 s!2326))))

(declare-fun d!1832345 () Bool)

(declare-fun e!3574060 () Bool)

(assert (=> d!1832345 e!3574060))

(declare-fun c!1032119 () Bool)

(assert (=> d!1832345 (= c!1032119 ((_ is EmptyExpr!15875) r!7292))))

(declare-fun lt!2302557 () Bool)

(declare-fun e!3574058 () Bool)

(assert (=> d!1832345 (= lt!2302557 e!3574058)))

(declare-fun c!1032120 () Bool)

(assert (=> d!1832345 (= c!1032120 (isEmpty!35671 s!2326))))

(assert (=> d!1832345 (validRegex!7611 r!7292)))

(assert (=> d!1832345 (= (matchR!8058 r!7292 s!2326) lt!2302557)))

(declare-fun b!5824113 () Bool)

(declare-fun e!3574063 () Bool)

(declare-fun e!3574062 () Bool)

(assert (=> b!5824113 (= e!3574063 e!3574062)))

(declare-fun res!2455607 () Bool)

(assert (=> b!5824113 (=> (not res!2455607) (not e!3574062))))

(assert (=> b!5824113 (= res!2455607 (not lt!2302557))))

(declare-fun b!5824114 () Bool)

(declare-fun derivativeStep!4618 (Regex!15875 C!32020) Regex!15875)

(assert (=> b!5824114 (= e!3574058 (matchR!8058 (derivativeStep!4618 r!7292 (head!12314 s!2326)) (tail!11399 s!2326)))))

(declare-fun b!5824115 () Bool)

(assert (=> b!5824115 (= e!3574061 (not (= (head!12314 s!2326) (c!1032031 r!7292))))))

(declare-fun b!5824116 () Bool)

(declare-fun res!2455613 () Bool)

(assert (=> b!5824116 (=> res!2455613 e!3574063)))

(assert (=> b!5824116 (= res!2455613 e!3574059)))

(declare-fun res!2455612 () Bool)

(assert (=> b!5824116 (=> (not res!2455612) (not e!3574059))))

(assert (=> b!5824116 (= res!2455612 lt!2302557)))

(declare-fun b!5824117 () Bool)

(declare-fun res!2455610 () Bool)

(assert (=> b!5824117 (=> (not res!2455610) (not e!3574059))))

(assert (=> b!5824117 (= res!2455610 (isEmpty!35671 (tail!11399 s!2326)))))

(declare-fun b!5824118 () Bool)

(declare-fun e!3574057 () Bool)

(assert (=> b!5824118 (= e!3574060 e!3574057)))

(declare-fun c!1032121 () Bool)

(assert (=> b!5824118 (= c!1032121 ((_ is EmptyLang!15875) r!7292))))

(declare-fun b!5824119 () Bool)

(assert (=> b!5824119 (= e!3574057 (not lt!2302557))))

(declare-fun b!5824120 () Bool)

(assert (=> b!5824120 (= e!3574058 (nullable!5878 r!7292))))

(declare-fun b!5824121 () Bool)

(assert (=> b!5824121 (= e!3574062 e!3574061)))

(declare-fun res!2455611 () Bool)

(assert (=> b!5824121 (=> res!2455611 e!3574061)))

(assert (=> b!5824121 (= res!2455611 call!454809)))

(declare-fun b!5824122 () Bool)

(declare-fun res!2455609 () Bool)

(assert (=> b!5824122 (=> res!2455609 e!3574063)))

(assert (=> b!5824122 (= res!2455609 (not ((_ is ElementMatch!15875) r!7292)))))

(assert (=> b!5824122 (= e!3574057 e!3574063)))

(declare-fun b!5824123 () Bool)

(declare-fun res!2455608 () Bool)

(assert (=> b!5824123 (=> (not res!2455608) (not e!3574059))))

(assert (=> b!5824123 (= res!2455608 (not call!454809))))

(declare-fun b!5824124 () Bool)

(assert (=> b!5824124 (= e!3574060 (= lt!2302557 call!454809))))

(assert (= (and d!1832345 c!1032120) b!5824120))

(assert (= (and d!1832345 (not c!1032120)) b!5824114))

(assert (= (and d!1832345 c!1032119) b!5824124))

(assert (= (and d!1832345 (not c!1032119)) b!5824118))

(assert (= (and b!5824118 c!1032121) b!5824119))

(assert (= (and b!5824118 (not c!1032121)) b!5824122))

(assert (= (and b!5824122 (not res!2455609)) b!5824116))

(assert (= (and b!5824116 res!2455612) b!5824123))

(assert (= (and b!5824123 res!2455608) b!5824117))

(assert (= (and b!5824117 res!2455610) b!5824112))

(assert (= (and b!5824116 (not res!2455613)) b!5824113))

(assert (= (and b!5824113 res!2455607) b!5824121))

(assert (= (and b!5824121 (not res!2455611)) b!5824111))

(assert (= (and b!5824111 (not res!2455614)) b!5824115))

(assert (= (or b!5824124 b!5824121 b!5824123) bm!454804))

(declare-fun m!6757606 () Bool)

(assert (=> d!1832345 m!6757606))

(assert (=> d!1832345 m!6757462))

(declare-fun m!6757608 () Bool)

(assert (=> b!5824115 m!6757608))

(declare-fun m!6757610 () Bool)

(assert (=> b!5824117 m!6757610))

(assert (=> b!5824117 m!6757610))

(declare-fun m!6757612 () Bool)

(assert (=> b!5824117 m!6757612))

(assert (=> b!5824114 m!6757608))

(assert (=> b!5824114 m!6757608))

(declare-fun m!6757614 () Bool)

(assert (=> b!5824114 m!6757614))

(assert (=> b!5824114 m!6757610))

(assert (=> b!5824114 m!6757614))

(assert (=> b!5824114 m!6757610))

(declare-fun m!6757616 () Bool)

(assert (=> b!5824114 m!6757616))

(declare-fun m!6757618 () Bool)

(assert (=> b!5824120 m!6757618))

(assert (=> b!5824112 m!6757608))

(assert (=> bm!454804 m!6757606))

(assert (=> b!5824111 m!6757610))

(assert (=> b!5824111 m!6757610))

(assert (=> b!5824111 m!6757612))

(assert (=> b!5823828 d!1832345))

(declare-fun b!5824242 () Bool)

(assert (=> b!5824242 true))

(assert (=> b!5824242 true))

(declare-fun bs!1373784 () Bool)

(declare-fun b!5824238 () Bool)

(assert (= bs!1373784 (and b!5824238 b!5824242)))

(declare-fun lambda!318753 () Int)

(declare-fun lambda!318752 () Int)

(assert (=> bs!1373784 (not (= lambda!318753 lambda!318752))))

(assert (=> b!5824238 true))

(assert (=> b!5824238 true))

(declare-fun e!3574127 () Bool)

(declare-fun call!454824 () Bool)

(assert (=> b!5824238 (= e!3574127 call!454824)))

(declare-fun bm!454818 () Bool)

(declare-fun call!454823 () Bool)

(assert (=> bm!454818 (= call!454823 (isEmpty!35671 s!2326))))

(declare-fun b!5824239 () Bool)

(declare-fun e!3574128 () Bool)

(declare-fun e!3574129 () Bool)

(assert (=> b!5824239 (= e!3574128 e!3574129)))

(declare-fun res!2455647 () Bool)

(assert (=> b!5824239 (= res!2455647 (not ((_ is EmptyLang!15875) r!7292)))))

(assert (=> b!5824239 (=> (not res!2455647) (not e!3574129))))

(declare-fun b!5824240 () Bool)

(declare-fun c!1032138 () Bool)

(assert (=> b!5824240 (= c!1032138 ((_ is Union!15875) r!7292))))

(declare-fun e!3574130 () Bool)

(declare-fun e!3574126 () Bool)

(assert (=> b!5824240 (= e!3574130 e!3574126)))

(declare-fun b!5824241 () Bool)

(declare-fun c!1032139 () Bool)

(assert (=> b!5824241 (= c!1032139 ((_ is ElementMatch!15875) r!7292))))

(assert (=> b!5824241 (= e!3574129 e!3574130)))

(declare-fun e!3574131 () Bool)

(assert (=> b!5824242 (= e!3574131 call!454824)))

(declare-fun b!5824243 () Bool)

(declare-fun e!3574132 () Bool)

(assert (=> b!5824243 (= e!3574126 e!3574132)))

(declare-fun res!2455646 () Bool)

(assert (=> b!5824243 (= res!2455646 (matchRSpec!2976 (regOne!32263 r!7292) s!2326))))

(assert (=> b!5824243 (=> res!2455646 e!3574132)))

(declare-fun b!5824244 () Bool)

(assert (=> b!5824244 (= e!3574128 call!454823)))

(declare-fun d!1832353 () Bool)

(declare-fun c!1032137 () Bool)

(assert (=> d!1832353 (= c!1032137 ((_ is EmptyExpr!15875) r!7292))))

(assert (=> d!1832353 (= (matchRSpec!2976 r!7292 s!2326) e!3574128)))

(declare-fun bm!454819 () Bool)

(declare-fun c!1032136 () Bool)

(declare-fun Exists!2953 (Int) Bool)

(assert (=> bm!454819 (= call!454824 (Exists!2953 (ite c!1032136 lambda!318752 lambda!318753)))))

(declare-fun b!5824245 () Bool)

(assert (=> b!5824245 (= e!3574126 e!3574127)))

(assert (=> b!5824245 (= c!1032136 ((_ is Star!15875) r!7292))))

(declare-fun b!5824246 () Bool)

(assert (=> b!5824246 (= e!3574130 (= s!2326 (Cons!63802 (c!1032031 r!7292) Nil!63802)))))

(declare-fun b!5824247 () Bool)

(assert (=> b!5824247 (= e!3574132 (matchRSpec!2976 (regTwo!32263 r!7292) s!2326))))

(declare-fun b!5824248 () Bool)

(declare-fun res!2455648 () Bool)

(assert (=> b!5824248 (=> res!2455648 e!3574131)))

(assert (=> b!5824248 (= res!2455648 call!454823)))

(assert (=> b!5824248 (= e!3574127 e!3574131)))

(assert (= (and d!1832353 c!1032137) b!5824244))

(assert (= (and d!1832353 (not c!1032137)) b!5824239))

(assert (= (and b!5824239 res!2455647) b!5824241))

(assert (= (and b!5824241 c!1032139) b!5824246))

(assert (= (and b!5824241 (not c!1032139)) b!5824240))

(assert (= (and b!5824240 c!1032138) b!5824243))

(assert (= (and b!5824240 (not c!1032138)) b!5824245))

(assert (= (and b!5824243 (not res!2455646)) b!5824247))

(assert (= (and b!5824245 c!1032136) b!5824248))

(assert (= (and b!5824245 (not c!1032136)) b!5824238))

(assert (= (and b!5824248 (not res!2455648)) b!5824242))

(assert (= (or b!5824242 b!5824238) bm!454819))

(assert (= (or b!5824244 b!5824248) bm!454818))

(assert (=> bm!454818 m!6757606))

(declare-fun m!6757650 () Bool)

(assert (=> b!5824243 m!6757650))

(declare-fun m!6757652 () Bool)

(assert (=> bm!454819 m!6757652))

(declare-fun m!6757654 () Bool)

(assert (=> b!5824247 m!6757654))

(assert (=> b!5823828 d!1832353))

(declare-fun d!1832357 () Bool)

(assert (=> d!1832357 (= (matchR!8058 r!7292 s!2326) (matchRSpec!2976 r!7292 s!2326))))

(declare-fun lt!2302560 () Unit!157021)

(declare-fun choose!44266 (Regex!15875 List!63926) Unit!157021)

(assert (=> d!1832357 (= lt!2302560 (choose!44266 r!7292 s!2326))))

(assert (=> d!1832357 (validRegex!7611 r!7292)))

(assert (=> d!1832357 (= (mainMatchTheorem!2976 r!7292 s!2326) lt!2302560)))

(declare-fun bs!1373785 () Bool)

(assert (= bs!1373785 d!1832357))

(assert (=> bs!1373785 m!6757474))

(assert (=> bs!1373785 m!6757476))

(declare-fun m!6757656 () Bool)

(assert (=> bs!1373785 m!6757656))

(assert (=> bs!1373785 m!6757462))

(assert (=> b!5823828 d!1832357))

(declare-fun bs!1373786 () Bool)

(declare-fun d!1832359 () Bool)

(assert (= bs!1373786 (and d!1832359 d!1832327)))

(declare-fun lambda!318754 () Int)

(assert (=> bs!1373786 (= lambda!318754 lambda!318730)))

(declare-fun bs!1373787 () Bool)

(assert (= bs!1373787 (and d!1832359 d!1832309)))

(assert (=> bs!1373787 (= lambda!318754 lambda!318720)))

(declare-fun bs!1373788 () Bool)

(assert (= bs!1373788 (and d!1832359 d!1832343)))

(assert (=> bs!1373788 (= lambda!318754 lambda!318739)))

(declare-fun bs!1373789 () Bool)

(assert (= bs!1373789 (and d!1832359 d!1832339)))

(assert (=> bs!1373789 (= lambda!318754 lambda!318738)))

(declare-fun bs!1373790 () Bool)

(assert (= bs!1373790 (and d!1832359 d!1832323)))

(assert (=> bs!1373790 (= lambda!318754 lambda!318723)))

(assert (=> d!1832359 (= (inv!82934 (h!70249 zl!343)) (forall!14966 (exprs!5759 (h!70249 zl!343)) lambda!318754))))

(declare-fun bs!1373791 () Bool)

(assert (= bs!1373791 d!1832359))

(declare-fun m!6757658 () Bool)

(assert (=> bs!1373791 m!6757658))

(assert (=> b!5823818 d!1832359))

(declare-fun b!5824257 () Bool)

(declare-fun e!3574135 () Bool)

(declare-fun tp!1607663 () Bool)

(declare-fun tp!1607664 () Bool)

(assert (=> b!5824257 (= e!3574135 (and tp!1607663 tp!1607664))))

(assert (=> b!5823824 (= tp!1607597 e!3574135)))

(assert (= (and b!5823824 ((_ is Cons!63800) (exprs!5759 setElem!39364))) b!5824257))

(declare-fun b!5824270 () Bool)

(declare-fun e!3574138 () Bool)

(declare-fun tp!1607678 () Bool)

(assert (=> b!5824270 (= e!3574138 tp!1607678)))

(declare-fun b!5824269 () Bool)

(declare-fun tp!1607676 () Bool)

(declare-fun tp!1607675 () Bool)

(assert (=> b!5824269 (= e!3574138 (and tp!1607676 tp!1607675))))

(declare-fun b!5824268 () Bool)

(assert (=> b!5824268 (= e!3574138 tp_is_empty!41003)))

(declare-fun b!5824271 () Bool)

(declare-fun tp!1607679 () Bool)

(declare-fun tp!1607677 () Bool)

(assert (=> b!5824271 (= e!3574138 (and tp!1607679 tp!1607677))))

(assert (=> b!5823814 (= tp!1607599 e!3574138)))

(assert (= (and b!5823814 ((_ is ElementMatch!15875) (regOne!32262 r!7292))) b!5824268))

(assert (= (and b!5823814 ((_ is Concat!24720) (regOne!32262 r!7292))) b!5824269))

(assert (= (and b!5823814 ((_ is Star!15875) (regOne!32262 r!7292))) b!5824270))

(assert (= (and b!5823814 ((_ is Union!15875) (regOne!32262 r!7292))) b!5824271))

(declare-fun b!5824274 () Bool)

(declare-fun e!3574139 () Bool)

(declare-fun tp!1607683 () Bool)

(assert (=> b!5824274 (= e!3574139 tp!1607683)))

(declare-fun b!5824273 () Bool)

(declare-fun tp!1607681 () Bool)

(declare-fun tp!1607680 () Bool)

(assert (=> b!5824273 (= e!3574139 (and tp!1607681 tp!1607680))))

(declare-fun b!5824272 () Bool)

(assert (=> b!5824272 (= e!3574139 tp_is_empty!41003)))

(declare-fun b!5824275 () Bool)

(declare-fun tp!1607684 () Bool)

(declare-fun tp!1607682 () Bool)

(assert (=> b!5824275 (= e!3574139 (and tp!1607684 tp!1607682))))

(assert (=> b!5823814 (= tp!1607600 e!3574139)))

(assert (= (and b!5823814 ((_ is ElementMatch!15875) (regTwo!32262 r!7292))) b!5824272))

(assert (= (and b!5823814 ((_ is Concat!24720) (regTwo!32262 r!7292))) b!5824273))

(assert (= (and b!5823814 ((_ is Star!15875) (regTwo!32262 r!7292))) b!5824274))

(assert (= (and b!5823814 ((_ is Union!15875) (regTwo!32262 r!7292))) b!5824275))

(declare-fun condSetEmpty!39370 () Bool)

(assert (=> setNonEmpty!39364 (= condSetEmpty!39370 (= setRest!39364 ((as const (Array Context!10518 Bool)) false)))))

(declare-fun setRes!39370 () Bool)

(assert (=> setNonEmpty!39364 (= tp!1607598 setRes!39370)))

(declare-fun setIsEmpty!39370 () Bool)

(assert (=> setIsEmpty!39370 setRes!39370))

(declare-fun tp!1607689 () Bool)

(declare-fun e!3574142 () Bool)

(declare-fun setElem!39370 () Context!10518)

(declare-fun setNonEmpty!39370 () Bool)

(assert (=> setNonEmpty!39370 (= setRes!39370 (and tp!1607689 (inv!82934 setElem!39370) e!3574142))))

(declare-fun setRest!39370 () (InoxSet Context!10518))

(assert (=> setNonEmpty!39370 (= setRest!39364 ((_ map or) (store ((as const (Array Context!10518 Bool)) false) setElem!39370 true) setRest!39370))))

(declare-fun b!5824280 () Bool)

(declare-fun tp!1607690 () Bool)

(assert (=> b!5824280 (= e!3574142 tp!1607690)))

(assert (= (and setNonEmpty!39364 condSetEmpty!39370) setIsEmpty!39370))

(assert (= (and setNonEmpty!39364 (not condSetEmpty!39370)) setNonEmpty!39370))

(assert (= setNonEmpty!39370 b!5824280))

(declare-fun m!6757660 () Bool)

(assert (=> setNonEmpty!39370 m!6757660))

(declare-fun b!5824285 () Bool)

(declare-fun e!3574145 () Bool)

(declare-fun tp!1607693 () Bool)

(assert (=> b!5824285 (= e!3574145 (and tp_is_empty!41003 tp!1607693))))

(assert (=> b!5823813 (= tp!1607592 e!3574145)))

(assert (= (and b!5823813 ((_ is Cons!63802) (t!377281 s!2326))) b!5824285))

(declare-fun b!5824293 () Bool)

(declare-fun e!3574151 () Bool)

(declare-fun tp!1607698 () Bool)

(assert (=> b!5824293 (= e!3574151 tp!1607698)))

(declare-fun e!3574150 () Bool)

(declare-fun b!5824292 () Bool)

(declare-fun tp!1607699 () Bool)

(assert (=> b!5824292 (= e!3574150 (and (inv!82934 (h!70249 (t!377280 zl!343))) e!3574151 tp!1607699))))

(assert (=> b!5823818 (= tp!1607593 e!3574150)))

(assert (= b!5824292 b!5824293))

(assert (= (and b!5823818 ((_ is Cons!63801) (t!377280 zl!343))) b!5824292))

(declare-fun m!6757662 () Bool)

(assert (=> b!5824292 m!6757662))

(declare-fun b!5824296 () Bool)

(declare-fun e!3574152 () Bool)

(declare-fun tp!1607703 () Bool)

(assert (=> b!5824296 (= e!3574152 tp!1607703)))

(declare-fun b!5824295 () Bool)

(declare-fun tp!1607701 () Bool)

(declare-fun tp!1607700 () Bool)

(assert (=> b!5824295 (= e!3574152 (and tp!1607701 tp!1607700))))

(declare-fun b!5824294 () Bool)

(assert (=> b!5824294 (= e!3574152 tp_is_empty!41003)))

(declare-fun b!5824297 () Bool)

(declare-fun tp!1607704 () Bool)

(declare-fun tp!1607702 () Bool)

(assert (=> b!5824297 (= e!3574152 (and tp!1607704 tp!1607702))))

(assert (=> b!5823823 (= tp!1607596 e!3574152)))

(assert (= (and b!5823823 ((_ is ElementMatch!15875) (regOne!32263 r!7292))) b!5824294))

(assert (= (and b!5823823 ((_ is Concat!24720) (regOne!32263 r!7292))) b!5824295))

(assert (= (and b!5823823 ((_ is Star!15875) (regOne!32263 r!7292))) b!5824296))

(assert (= (and b!5823823 ((_ is Union!15875) (regOne!32263 r!7292))) b!5824297))

(declare-fun b!5824300 () Bool)

(declare-fun e!3574153 () Bool)

(declare-fun tp!1607708 () Bool)

(assert (=> b!5824300 (= e!3574153 tp!1607708)))

(declare-fun b!5824299 () Bool)

(declare-fun tp!1607706 () Bool)

(declare-fun tp!1607705 () Bool)

(assert (=> b!5824299 (= e!3574153 (and tp!1607706 tp!1607705))))

(declare-fun b!5824298 () Bool)

(assert (=> b!5824298 (= e!3574153 tp_is_empty!41003)))

(declare-fun b!5824301 () Bool)

(declare-fun tp!1607709 () Bool)

(declare-fun tp!1607707 () Bool)

(assert (=> b!5824301 (= e!3574153 (and tp!1607709 tp!1607707))))

(assert (=> b!5823823 (= tp!1607594 e!3574153)))

(assert (= (and b!5823823 ((_ is ElementMatch!15875) (regTwo!32263 r!7292))) b!5824298))

(assert (= (and b!5823823 ((_ is Concat!24720) (regTwo!32263 r!7292))) b!5824299))

(assert (= (and b!5823823 ((_ is Star!15875) (regTwo!32263 r!7292))) b!5824300))

(assert (= (and b!5823823 ((_ is Union!15875) (regTwo!32263 r!7292))) b!5824301))

(declare-fun b!5824304 () Bool)

(declare-fun e!3574154 () Bool)

(declare-fun tp!1607713 () Bool)

(assert (=> b!5824304 (= e!3574154 tp!1607713)))

(declare-fun b!5824303 () Bool)

(declare-fun tp!1607711 () Bool)

(declare-fun tp!1607710 () Bool)

(assert (=> b!5824303 (= e!3574154 (and tp!1607711 tp!1607710))))

(declare-fun b!5824302 () Bool)

(assert (=> b!5824302 (= e!3574154 tp_is_empty!41003)))

(declare-fun b!5824305 () Bool)

(declare-fun tp!1607714 () Bool)

(declare-fun tp!1607712 () Bool)

(assert (=> b!5824305 (= e!3574154 (and tp!1607714 tp!1607712))))

(assert (=> b!5823827 (= tp!1607595 e!3574154)))

(assert (= (and b!5823827 ((_ is ElementMatch!15875) (reg!16204 r!7292))) b!5824302))

(assert (= (and b!5823827 ((_ is Concat!24720) (reg!16204 r!7292))) b!5824303))

(assert (= (and b!5823827 ((_ is Star!15875) (reg!16204 r!7292))) b!5824304))

(assert (= (and b!5823827 ((_ is Union!15875) (reg!16204 r!7292))) b!5824305))

(declare-fun b!5824306 () Bool)

(declare-fun e!3574155 () Bool)

(declare-fun tp!1607715 () Bool)

(declare-fun tp!1607716 () Bool)

(assert (=> b!5824306 (= e!3574155 (and tp!1607715 tp!1607716))))

(assert (=> b!5823817 (= tp!1607591 e!3574155)))

(assert (= (and b!5823817 ((_ is Cons!63800) (exprs!5759 (h!70249 zl!343)))) b!5824306))

(check-sat (not b!5824247) (not d!1832343) (not d!1832329) (not b!5824274) (not b!5824280) (not b!5824114) (not b!5824295) (not b!5824115) (not d!1832359) (not d!1832345) (not b!5824273) (not b!5824275) (not b!5824306) (not b!5823940) (not b!5824041) (not b!5823917) (not b!5824117) (not b!5824292) (not b!5823975) (not b!5823919) tp_is_empty!41003 (not d!1832309) (not b!5824243) (not b!5823923) (not b!5824112) (not b!5824301) (not b!5824303) (not b!5824297) (not b!5824304) (not b!5824269) (not b!5824040) (not bm!454818) (not b!5824270) (not d!1832337) (not b!5824299) (not d!1832327) (not b!5824037) (not b!5824271) (not bm!454804) (not bm!454801) (not b!5824044) (not b!5823918) (not b!5824305) (not b!5824111) (not b!5823920) (not b!5824257) (not d!1832323) (not b!5824285) (not b!5824293) (not d!1832357) (not b!5824042) (not d!1832339) (not b!5824300) (not b!5824046) (not bm!454819) (not b!5824120) (not b!5823986) (not setNonEmpty!39370) (not bm!454799) (not b!5823922) (not b!5823921) (not b!5824296) (not b!5824043))
(check-sat)
(get-model)

(declare-fun d!1832361 () Bool)

(assert (=> d!1832361 (= (isEmpty!35669 (t!377279 (exprs!5759 (h!70249 zl!343)))) ((_ is Nil!63800) (t!377279 (exprs!5759 (h!70249 zl!343)))))))

(assert (=> b!5824044 d!1832361))

(declare-fun d!1832363 () Bool)

(assert (=> d!1832363 (= (head!12312 (exprs!5759 (h!70249 zl!343))) (h!70248 (exprs!5759 (h!70249 zl!343))))))

(assert (=> b!5824043 d!1832363))

(declare-fun d!1832365 () Bool)

(declare-fun res!2455653 () Bool)

(declare-fun e!3574160 () Bool)

(assert (=> d!1832365 (=> res!2455653 e!3574160)))

(assert (=> d!1832365 (= res!2455653 ((_ is Nil!63800) (exprs!5759 setElem!39364)))))

(assert (=> d!1832365 (= (forall!14966 (exprs!5759 setElem!39364) lambda!318739) e!3574160)))

(declare-fun b!5824311 () Bool)

(declare-fun e!3574161 () Bool)

(assert (=> b!5824311 (= e!3574160 e!3574161)))

(declare-fun res!2455654 () Bool)

(assert (=> b!5824311 (=> (not res!2455654) (not e!3574161))))

(declare-fun dynLambda!24967 (Int Regex!15875) Bool)

(assert (=> b!5824311 (= res!2455654 (dynLambda!24967 lambda!318739 (h!70248 (exprs!5759 setElem!39364))))))

(declare-fun b!5824312 () Bool)

(assert (=> b!5824312 (= e!3574161 (forall!14966 (t!377279 (exprs!5759 setElem!39364)) lambda!318739))))

(assert (= (and d!1832365 (not res!2455653)) b!5824311))

(assert (= (and b!5824311 res!2455654) b!5824312))

(declare-fun b_lambda!219533 () Bool)

(assert (=> (not b_lambda!219533) (not b!5824311)))

(declare-fun m!6757664 () Bool)

(assert (=> b!5824311 m!6757664))

(declare-fun m!6757666 () Bool)

(assert (=> b!5824312 m!6757666))

(assert (=> d!1832343 d!1832365))

(declare-fun d!1832367 () Bool)

(declare-fun res!2455655 () Bool)

(declare-fun e!3574162 () Bool)

(assert (=> d!1832367 (=> res!2455655 e!3574162)))

(assert (=> d!1832367 (= res!2455655 ((_ is Nil!63800) (exprs!5759 (h!70249 zl!343))))))

(assert (=> d!1832367 (= (forall!14966 (exprs!5759 (h!70249 zl!343)) lambda!318754) e!3574162)))

(declare-fun b!5824313 () Bool)

(declare-fun e!3574163 () Bool)

(assert (=> b!5824313 (= e!3574162 e!3574163)))

(declare-fun res!2455656 () Bool)

(assert (=> b!5824313 (=> (not res!2455656) (not e!3574163))))

(assert (=> b!5824313 (= res!2455656 (dynLambda!24967 lambda!318754 (h!70248 (exprs!5759 (h!70249 zl!343)))))))

(declare-fun b!5824314 () Bool)

(assert (=> b!5824314 (= e!3574163 (forall!14966 (t!377279 (exprs!5759 (h!70249 zl!343))) lambda!318754))))

(assert (= (and d!1832367 (not res!2455655)) b!5824313))

(assert (= (and b!5824313 res!2455656) b!5824314))

(declare-fun b_lambda!219535 () Bool)

(assert (=> (not b_lambda!219535) (not b!5824313)))

(declare-fun m!6757668 () Bool)

(assert (=> b!5824313 m!6757668))

(declare-fun m!6757670 () Bool)

(assert (=> b!5824314 m!6757670))

(assert (=> d!1832359 d!1832367))

(declare-fun d!1832369 () Bool)

(assert (=> d!1832369 (= (isEmptyExpr!1313 lt!2302548) ((_ is EmptyExpr!15875) lt!2302548))))

(assert (=> b!5824042 d!1832369))

(declare-fun bs!1373792 () Bool)

(declare-fun d!1832371 () Bool)

(assert (= bs!1373792 (and d!1832371 d!1832327)))

(declare-fun lambda!318755 () Int)

(assert (=> bs!1373792 (= lambda!318755 lambda!318730)))

(declare-fun bs!1373793 () Bool)

(assert (= bs!1373793 (and d!1832371 d!1832309)))

(assert (=> bs!1373793 (= lambda!318755 lambda!318720)))

(declare-fun bs!1373794 () Bool)

(assert (= bs!1373794 (and d!1832371 d!1832343)))

(assert (=> bs!1373794 (= lambda!318755 lambda!318739)))

(declare-fun bs!1373795 () Bool)

(assert (= bs!1373795 (and d!1832371 d!1832339)))

(assert (=> bs!1373795 (= lambda!318755 lambda!318738)))

(declare-fun bs!1373796 () Bool)

(assert (= bs!1373796 (and d!1832371 d!1832323)))

(assert (=> bs!1373796 (= lambda!318755 lambda!318723)))

(declare-fun bs!1373797 () Bool)

(assert (= bs!1373797 (and d!1832371 d!1832359)))

(assert (=> bs!1373797 (= lambda!318755 lambda!318754)))

(declare-fun b!5824315 () Bool)

(declare-fun e!3574166 () Bool)

(declare-fun e!3574164 () Bool)

(assert (=> b!5824315 (= e!3574166 e!3574164)))

(declare-fun c!1032140 () Bool)

(assert (=> b!5824315 (= c!1032140 (isEmpty!35669 (t!377279 (exprs!5759 (h!70249 zl!343)))))))

(declare-fun b!5824316 () Bool)

(declare-fun e!3574169 () Regex!15875)

(assert (=> b!5824316 (= e!3574169 EmptyExpr!15875)))

(declare-fun b!5824317 () Bool)

(declare-fun e!3574167 () Regex!15875)

(assert (=> b!5824317 (= e!3574167 e!3574169)))

(declare-fun c!1032141 () Bool)

(assert (=> b!5824317 (= c!1032141 ((_ is Cons!63800) (t!377279 (exprs!5759 (h!70249 zl!343)))))))

(declare-fun b!5824318 () Bool)

(declare-fun e!3574165 () Bool)

(assert (=> b!5824318 (= e!3574164 e!3574165)))

(declare-fun c!1032142 () Bool)

(assert (=> b!5824318 (= c!1032142 (isEmpty!35669 (tail!11397 (t!377279 (exprs!5759 (h!70249 zl!343))))))))

(declare-fun b!5824319 () Bool)

(assert (=> b!5824319 (= e!3574169 (Concat!24720 (h!70248 (t!377279 (exprs!5759 (h!70249 zl!343)))) (generalisedConcat!1472 (t!377279 (t!377279 (exprs!5759 (h!70249 zl!343)))))))))

(declare-fun b!5824320 () Bool)

(declare-fun lt!2302561 () Regex!15875)

(assert (=> b!5824320 (= e!3574164 (isEmptyExpr!1313 lt!2302561))))

(declare-fun b!5824321 () Bool)

(assert (=> b!5824321 (= e!3574165 (= lt!2302561 (head!12312 (t!377279 (exprs!5759 (h!70249 zl!343))))))))

(assert (=> d!1832371 e!3574166))

(declare-fun res!2455658 () Bool)

(assert (=> d!1832371 (=> (not res!2455658) (not e!3574166))))

(assert (=> d!1832371 (= res!2455658 (validRegex!7611 lt!2302561))))

(assert (=> d!1832371 (= lt!2302561 e!3574167)))

(declare-fun c!1032143 () Bool)

(declare-fun e!3574168 () Bool)

(assert (=> d!1832371 (= c!1032143 e!3574168)))

(declare-fun res!2455657 () Bool)

(assert (=> d!1832371 (=> (not res!2455657) (not e!3574168))))

(assert (=> d!1832371 (= res!2455657 ((_ is Cons!63800) (t!377279 (exprs!5759 (h!70249 zl!343)))))))

(assert (=> d!1832371 (forall!14966 (t!377279 (exprs!5759 (h!70249 zl!343))) lambda!318755)))

(assert (=> d!1832371 (= (generalisedConcat!1472 (t!377279 (exprs!5759 (h!70249 zl!343)))) lt!2302561)))

(declare-fun b!5824322 () Bool)

(assert (=> b!5824322 (= e!3574168 (isEmpty!35669 (t!377279 (t!377279 (exprs!5759 (h!70249 zl!343))))))))

(declare-fun b!5824323 () Bool)

(assert (=> b!5824323 (= e!3574167 (h!70248 (t!377279 (exprs!5759 (h!70249 zl!343)))))))

(declare-fun b!5824324 () Bool)

(assert (=> b!5824324 (= e!3574165 (isConcat!836 lt!2302561))))

(assert (= (and d!1832371 res!2455657) b!5824322))

(assert (= (and d!1832371 c!1032143) b!5824323))

(assert (= (and d!1832371 (not c!1032143)) b!5824317))

(assert (= (and b!5824317 c!1032141) b!5824319))

(assert (= (and b!5824317 (not c!1032141)) b!5824316))

(assert (= (and d!1832371 res!2455658) b!5824315))

(assert (= (and b!5824315 c!1032140) b!5824320))

(assert (= (and b!5824315 (not c!1032140)) b!5824318))

(assert (= (and b!5824318 c!1032142) b!5824321))

(assert (= (and b!5824318 (not c!1032142)) b!5824324))

(declare-fun m!6757672 () Bool)

(assert (=> b!5824324 m!6757672))

(declare-fun m!6757674 () Bool)

(assert (=> b!5824320 m!6757674))

(declare-fun m!6757676 () Bool)

(assert (=> b!5824319 m!6757676))

(declare-fun m!6757678 () Bool)

(assert (=> d!1832371 m!6757678))

(declare-fun m!6757680 () Bool)

(assert (=> d!1832371 m!6757680))

(declare-fun m!6757682 () Bool)

(assert (=> b!5824318 m!6757682))

(assert (=> b!5824318 m!6757682))

(declare-fun m!6757684 () Bool)

(assert (=> b!5824318 m!6757684))

(declare-fun m!6757686 () Bool)

(assert (=> b!5824321 m!6757686))

(assert (=> b!5824315 m!6757594))

(declare-fun m!6757688 () Bool)

(assert (=> b!5824322 m!6757688))

(assert (=> b!5824041 d!1832371))

(declare-fun bs!1373798 () Bool)

(declare-fun b!5824329 () Bool)

(assert (= bs!1373798 (and b!5824329 b!5824242)))

(declare-fun lambda!318756 () Int)

(assert (=> bs!1373798 (= (and (= (reg!16204 (regTwo!32263 r!7292)) (reg!16204 r!7292)) (= (regTwo!32263 r!7292) r!7292)) (= lambda!318756 lambda!318752))))

(declare-fun bs!1373799 () Bool)

(assert (= bs!1373799 (and b!5824329 b!5824238)))

(assert (=> bs!1373799 (not (= lambda!318756 lambda!318753))))

(assert (=> b!5824329 true))

(assert (=> b!5824329 true))

(declare-fun bs!1373800 () Bool)

(declare-fun b!5824325 () Bool)

(assert (= bs!1373800 (and b!5824325 b!5824242)))

(declare-fun lambda!318757 () Int)

(assert (=> bs!1373800 (not (= lambda!318757 lambda!318752))))

(declare-fun bs!1373801 () Bool)

(assert (= bs!1373801 (and b!5824325 b!5824238)))

(assert (=> bs!1373801 (= (and (= (regOne!32262 (regTwo!32263 r!7292)) (regOne!32262 r!7292)) (= (regTwo!32262 (regTwo!32263 r!7292)) (regTwo!32262 r!7292))) (= lambda!318757 lambda!318753))))

(declare-fun bs!1373802 () Bool)

(assert (= bs!1373802 (and b!5824325 b!5824329)))

(assert (=> bs!1373802 (not (= lambda!318757 lambda!318756))))

(assert (=> b!5824325 true))

(assert (=> b!5824325 true))

(declare-fun e!3574171 () Bool)

(declare-fun call!454826 () Bool)

(assert (=> b!5824325 (= e!3574171 call!454826)))

(declare-fun bm!454820 () Bool)

(declare-fun call!454825 () Bool)

(assert (=> bm!454820 (= call!454825 (isEmpty!35671 s!2326))))

(declare-fun b!5824326 () Bool)

(declare-fun e!3574172 () Bool)

(declare-fun e!3574173 () Bool)

(assert (=> b!5824326 (= e!3574172 e!3574173)))

(declare-fun res!2455660 () Bool)

(assert (=> b!5824326 (= res!2455660 (not ((_ is EmptyLang!15875) (regTwo!32263 r!7292))))))

(assert (=> b!5824326 (=> (not res!2455660) (not e!3574173))))

(declare-fun b!5824327 () Bool)

(declare-fun c!1032146 () Bool)

(assert (=> b!5824327 (= c!1032146 ((_ is Union!15875) (regTwo!32263 r!7292)))))

(declare-fun e!3574174 () Bool)

(declare-fun e!3574170 () Bool)

(assert (=> b!5824327 (= e!3574174 e!3574170)))

(declare-fun b!5824328 () Bool)

(declare-fun c!1032147 () Bool)

(assert (=> b!5824328 (= c!1032147 ((_ is ElementMatch!15875) (regTwo!32263 r!7292)))))

(assert (=> b!5824328 (= e!3574173 e!3574174)))

(declare-fun e!3574175 () Bool)

(assert (=> b!5824329 (= e!3574175 call!454826)))

(declare-fun b!5824330 () Bool)

(declare-fun e!3574176 () Bool)

(assert (=> b!5824330 (= e!3574170 e!3574176)))

(declare-fun res!2455659 () Bool)

(assert (=> b!5824330 (= res!2455659 (matchRSpec!2976 (regOne!32263 (regTwo!32263 r!7292)) s!2326))))

(assert (=> b!5824330 (=> res!2455659 e!3574176)))

(declare-fun b!5824331 () Bool)

(assert (=> b!5824331 (= e!3574172 call!454825)))

(declare-fun d!1832373 () Bool)

(declare-fun c!1032145 () Bool)

(assert (=> d!1832373 (= c!1032145 ((_ is EmptyExpr!15875) (regTwo!32263 r!7292)))))

(assert (=> d!1832373 (= (matchRSpec!2976 (regTwo!32263 r!7292) s!2326) e!3574172)))

(declare-fun c!1032144 () Bool)

(declare-fun bm!454821 () Bool)

(assert (=> bm!454821 (= call!454826 (Exists!2953 (ite c!1032144 lambda!318756 lambda!318757)))))

(declare-fun b!5824332 () Bool)

(assert (=> b!5824332 (= e!3574170 e!3574171)))

(assert (=> b!5824332 (= c!1032144 ((_ is Star!15875) (regTwo!32263 r!7292)))))

(declare-fun b!5824333 () Bool)

(assert (=> b!5824333 (= e!3574174 (= s!2326 (Cons!63802 (c!1032031 (regTwo!32263 r!7292)) Nil!63802)))))

(declare-fun b!5824334 () Bool)

(assert (=> b!5824334 (= e!3574176 (matchRSpec!2976 (regTwo!32263 (regTwo!32263 r!7292)) s!2326))))

(declare-fun b!5824335 () Bool)

(declare-fun res!2455661 () Bool)

(assert (=> b!5824335 (=> res!2455661 e!3574175)))

(assert (=> b!5824335 (= res!2455661 call!454825)))

(assert (=> b!5824335 (= e!3574171 e!3574175)))

(assert (= (and d!1832373 c!1032145) b!5824331))

(assert (= (and d!1832373 (not c!1032145)) b!5824326))

(assert (= (and b!5824326 res!2455660) b!5824328))

(assert (= (and b!5824328 c!1032147) b!5824333))

(assert (= (and b!5824328 (not c!1032147)) b!5824327))

(assert (= (and b!5824327 c!1032146) b!5824330))

(assert (= (and b!5824327 (not c!1032146)) b!5824332))

(assert (= (and b!5824330 (not res!2455659)) b!5824334))

(assert (= (and b!5824332 c!1032144) b!5824335))

(assert (= (and b!5824332 (not c!1032144)) b!5824325))

(assert (= (and b!5824335 (not res!2455661)) b!5824329))

(assert (= (or b!5824329 b!5824325) bm!454821))

(assert (= (or b!5824331 b!5824335) bm!454820))

(assert (=> bm!454820 m!6757606))

(declare-fun m!6757690 () Bool)

(assert (=> b!5824330 m!6757690))

(declare-fun m!6757692 () Bool)

(assert (=> bm!454821 m!6757692))

(declare-fun m!6757694 () Bool)

(assert (=> b!5824334 m!6757694))

(assert (=> b!5824247 d!1832373))

(declare-fun d!1832375 () Bool)

(declare-fun res!2455662 () Bool)

(declare-fun e!3574177 () Bool)

(assert (=> d!1832375 (=> res!2455662 e!3574177)))

(assert (=> d!1832375 (= res!2455662 ((_ is Nil!63800) lt!2302533))))

(assert (=> d!1832375 (= (forall!14966 lt!2302533 lambda!318730) e!3574177)))

(declare-fun b!5824336 () Bool)

(declare-fun e!3574178 () Bool)

(assert (=> b!5824336 (= e!3574177 e!3574178)))

(declare-fun res!2455663 () Bool)

(assert (=> b!5824336 (=> (not res!2455663) (not e!3574178))))

(assert (=> b!5824336 (= res!2455663 (dynLambda!24967 lambda!318730 (h!70248 lt!2302533)))))

(declare-fun b!5824337 () Bool)

(assert (=> b!5824337 (= e!3574178 (forall!14966 (t!377279 lt!2302533) lambda!318730))))

(assert (= (and d!1832375 (not res!2455662)) b!5824336))

(assert (= (and b!5824336 res!2455663) b!5824337))

(declare-fun b_lambda!219537 () Bool)

(assert (=> (not b_lambda!219537) (not b!5824336)))

(declare-fun m!6757696 () Bool)

(assert (=> b!5824336 m!6757696))

(declare-fun m!6757698 () Bool)

(assert (=> b!5824337 m!6757698))

(assert (=> d!1832327 d!1832375))

(declare-fun d!1832377 () Bool)

(declare-fun res!2455664 () Bool)

(declare-fun e!3574179 () Bool)

(assert (=> d!1832377 (=> res!2455664 e!3574179)))

(assert (=> d!1832377 (= res!2455664 ((_ is Nil!63800) (exprs!5759 (Context!10519 (Cons!63800 r!7292 Nil!63800)))))))

(assert (=> d!1832377 (= (forall!14966 (exprs!5759 (Context!10519 (Cons!63800 r!7292 Nil!63800))) lambda!318720) e!3574179)))

(declare-fun b!5824338 () Bool)

(declare-fun e!3574180 () Bool)

(assert (=> b!5824338 (= e!3574179 e!3574180)))

(declare-fun res!2455665 () Bool)

(assert (=> b!5824338 (=> (not res!2455665) (not e!3574180))))

(assert (=> b!5824338 (= res!2455665 (dynLambda!24967 lambda!318720 (h!70248 (exprs!5759 (Context!10519 (Cons!63800 r!7292 Nil!63800))))))))

(declare-fun b!5824339 () Bool)

(assert (=> b!5824339 (= e!3574180 (forall!14966 (t!377279 (exprs!5759 (Context!10519 (Cons!63800 r!7292 Nil!63800)))) lambda!318720))))

(assert (= (and d!1832377 (not res!2455664)) b!5824338))

(assert (= (and b!5824338 res!2455665) b!5824339))

(declare-fun b_lambda!219539 () Bool)

(assert (=> (not b_lambda!219539) (not b!5824338)))

(declare-fun m!6757700 () Bool)

(assert (=> b!5824338 m!6757700))

(declare-fun m!6757702 () Bool)

(assert (=> b!5824339 m!6757702))

(assert (=> d!1832309 d!1832377))

(declare-fun b!5824340 () Bool)

(declare-fun e!3574187 () Bool)

(declare-fun e!3574182 () Bool)

(assert (=> b!5824340 (= e!3574187 e!3574182)))

(declare-fun res!2455669 () Bool)

(assert (=> b!5824340 (= res!2455669 (not (nullable!5878 (reg!16204 lt!2302548))))))

(assert (=> b!5824340 (=> (not res!2455669) (not e!3574182))))

(declare-fun b!5824341 () Bool)

(declare-fun e!3574186 () Bool)

(assert (=> b!5824341 (= e!3574187 e!3574186)))

(declare-fun c!1032149 () Bool)

(assert (=> b!5824341 (= c!1032149 ((_ is Union!15875) lt!2302548))))

(declare-fun b!5824342 () Bool)

(declare-fun e!3574185 () Bool)

(declare-fun call!454827 () Bool)

(assert (=> b!5824342 (= e!3574185 call!454827)))

(declare-fun b!5824343 () Bool)

(declare-fun e!3574184 () Bool)

(assert (=> b!5824343 (= e!3574184 e!3574187)))

(declare-fun c!1032148 () Bool)

(assert (=> b!5824343 (= c!1032148 ((_ is Star!15875) lt!2302548))))

(declare-fun bm!454822 () Bool)

(assert (=> bm!454822 (= call!454827 (validRegex!7611 (ite c!1032149 (regTwo!32263 lt!2302548) (regTwo!32262 lt!2302548))))))

(declare-fun d!1832379 () Bool)

(declare-fun res!2455666 () Bool)

(assert (=> d!1832379 (=> res!2455666 e!3574184)))

(assert (=> d!1832379 (= res!2455666 ((_ is ElementMatch!15875) lt!2302548))))

(assert (=> d!1832379 (= (validRegex!7611 lt!2302548) e!3574184)))

(declare-fun b!5824344 () Bool)

(declare-fun e!3574183 () Bool)

(assert (=> b!5824344 (= e!3574183 call!454827)))

(declare-fun bm!454823 () Bool)

(declare-fun call!454828 () Bool)

(declare-fun call!454829 () Bool)

(assert (=> bm!454823 (= call!454828 call!454829)))

(declare-fun b!5824345 () Bool)

(declare-fun res!2455670 () Bool)

(declare-fun e!3574181 () Bool)

(assert (=> b!5824345 (=> res!2455670 e!3574181)))

(assert (=> b!5824345 (= res!2455670 (not ((_ is Concat!24720) lt!2302548)))))

(assert (=> b!5824345 (= e!3574186 e!3574181)))

(declare-fun b!5824346 () Bool)

(assert (=> b!5824346 (= e!3574182 call!454829)))

(declare-fun b!5824347 () Bool)

(assert (=> b!5824347 (= e!3574181 e!3574185)))

(declare-fun res!2455668 () Bool)

(assert (=> b!5824347 (=> (not res!2455668) (not e!3574185))))

(assert (=> b!5824347 (= res!2455668 call!454828)))

(declare-fun bm!454824 () Bool)

(assert (=> bm!454824 (= call!454829 (validRegex!7611 (ite c!1032148 (reg!16204 lt!2302548) (ite c!1032149 (regOne!32263 lt!2302548) (regOne!32262 lt!2302548)))))))

(declare-fun b!5824348 () Bool)

(declare-fun res!2455667 () Bool)

(assert (=> b!5824348 (=> (not res!2455667) (not e!3574183))))

(assert (=> b!5824348 (= res!2455667 call!454828)))

(assert (=> b!5824348 (= e!3574186 e!3574183)))

(assert (= (and d!1832379 (not res!2455666)) b!5824343))

(assert (= (and b!5824343 c!1032148) b!5824340))

(assert (= (and b!5824343 (not c!1032148)) b!5824341))

(assert (= (and b!5824340 res!2455669) b!5824346))

(assert (= (and b!5824341 c!1032149) b!5824348))

(assert (= (and b!5824341 (not c!1032149)) b!5824345))

(assert (= (and b!5824348 res!2455667) b!5824344))

(assert (= (and b!5824345 (not res!2455670)) b!5824347))

(assert (= (and b!5824347 res!2455668) b!5824342))

(assert (= (or b!5824344 b!5824342) bm!454822))

(assert (= (or b!5824348 b!5824347) bm!454823))

(assert (= (or b!5824346 bm!454823) bm!454824))

(declare-fun m!6757704 () Bool)

(assert (=> b!5824340 m!6757704))

(declare-fun m!6757706 () Bool)

(assert (=> bm!454822 m!6757706))

(declare-fun m!6757708 () Bool)

(assert (=> bm!454824 m!6757708))

(assert (=> d!1832339 d!1832379))

(declare-fun d!1832381 () Bool)

(declare-fun res!2455671 () Bool)

(declare-fun e!3574188 () Bool)

(assert (=> d!1832381 (=> res!2455671 e!3574188)))

(assert (=> d!1832381 (= res!2455671 ((_ is Nil!63800) (exprs!5759 (h!70249 zl!343))))))

(assert (=> d!1832381 (= (forall!14966 (exprs!5759 (h!70249 zl!343)) lambda!318738) e!3574188)))

(declare-fun b!5824349 () Bool)

(declare-fun e!3574189 () Bool)

(assert (=> b!5824349 (= e!3574188 e!3574189)))

(declare-fun res!2455672 () Bool)

(assert (=> b!5824349 (=> (not res!2455672) (not e!3574189))))

(assert (=> b!5824349 (= res!2455672 (dynLambda!24967 lambda!318738 (h!70248 (exprs!5759 (h!70249 zl!343)))))))

(declare-fun b!5824350 () Bool)

(assert (=> b!5824350 (= e!3574189 (forall!14966 (t!377279 (exprs!5759 (h!70249 zl!343))) lambda!318738))))

(assert (= (and d!1832381 (not res!2455671)) b!5824349))

(assert (= (and b!5824349 res!2455672) b!5824350))

(declare-fun b_lambda!219541 () Bool)

(assert (=> (not b_lambda!219541) (not b!5824349)))

(declare-fun m!6757710 () Bool)

(assert (=> b!5824349 m!6757710))

(declare-fun m!6757712 () Bool)

(assert (=> b!5824350 m!6757712))

(assert (=> d!1832339 d!1832381))

(assert (=> b!5823940 d!1832339))

(declare-fun bs!1373803 () Bool)

(declare-fun d!1832383 () Bool)

(assert (= bs!1373803 (and d!1832383 d!1832327)))

(declare-fun lambda!318758 () Int)

(assert (=> bs!1373803 (= lambda!318758 lambda!318730)))

(declare-fun bs!1373804 () Bool)

(assert (= bs!1373804 (and d!1832383 d!1832309)))

(assert (=> bs!1373804 (= lambda!318758 lambda!318720)))

(declare-fun bs!1373805 () Bool)

(assert (= bs!1373805 (and d!1832383 d!1832371)))

(assert (=> bs!1373805 (= lambda!318758 lambda!318755)))

(declare-fun bs!1373806 () Bool)

(assert (= bs!1373806 (and d!1832383 d!1832343)))

(assert (=> bs!1373806 (= lambda!318758 lambda!318739)))

(declare-fun bs!1373807 () Bool)

(assert (= bs!1373807 (and d!1832383 d!1832339)))

(assert (=> bs!1373807 (= lambda!318758 lambda!318738)))

(declare-fun bs!1373808 () Bool)

(assert (= bs!1373808 (and d!1832383 d!1832323)))

(assert (=> bs!1373808 (= lambda!318758 lambda!318723)))

(declare-fun bs!1373809 () Bool)

(assert (= bs!1373809 (and d!1832383 d!1832359)))

(assert (=> bs!1373809 (= lambda!318758 lambda!318754)))

(declare-fun lt!2302562 () List!63924)

(assert (=> d!1832383 (forall!14966 lt!2302562 lambda!318758)))

(declare-fun e!3574190 () List!63924)

(assert (=> d!1832383 (= lt!2302562 e!3574190)))

(declare-fun c!1032150 () Bool)

(assert (=> d!1832383 (= c!1032150 ((_ is Cons!63801) (t!377280 zl!343)))))

(assert (=> d!1832383 (= (unfocusZipperList!1296 (t!377280 zl!343)) lt!2302562)))

(declare-fun b!5824351 () Bool)

(assert (=> b!5824351 (= e!3574190 (Cons!63800 (generalisedConcat!1472 (exprs!5759 (h!70249 (t!377280 zl!343)))) (unfocusZipperList!1296 (t!377280 (t!377280 zl!343)))))))

(declare-fun b!5824352 () Bool)

(assert (=> b!5824352 (= e!3574190 Nil!63800)))

(assert (= (and d!1832383 c!1032150) b!5824351))

(assert (= (and d!1832383 (not c!1032150)) b!5824352))

(declare-fun m!6757714 () Bool)

(assert (=> d!1832383 m!6757714))

(declare-fun m!6757716 () Bool)

(assert (=> b!5824351 m!6757716))

(declare-fun m!6757718 () Bool)

(assert (=> b!5824351 m!6757718))

(assert (=> b!5823940 d!1832383))

(declare-fun d!1832385 () Bool)

(assert (=> d!1832385 (= (isEmpty!35669 (tail!11397 (exprs!5759 (h!70249 zl!343)))) ((_ is Nil!63800) (tail!11397 (exprs!5759 (h!70249 zl!343)))))))

(assert (=> b!5824040 d!1832385))

(declare-fun d!1832387 () Bool)

(assert (=> d!1832387 (= (tail!11397 (exprs!5759 (h!70249 zl!343))) (t!377279 (exprs!5759 (h!70249 zl!343))))))

(assert (=> b!5824040 d!1832387))

(declare-fun d!1832389 () Bool)

(declare-fun res!2455677 () Bool)

(declare-fun e!3574195 () Bool)

(assert (=> d!1832389 (=> res!2455677 e!3574195)))

(assert (=> d!1832389 (= res!2455677 ((_ is Nil!63801) lt!2302542))))

(assert (=> d!1832389 (= (noDuplicate!1745 lt!2302542) e!3574195)))

(declare-fun b!5824357 () Bool)

(declare-fun e!3574196 () Bool)

(assert (=> b!5824357 (= e!3574195 e!3574196)))

(declare-fun res!2455678 () Bool)

(assert (=> b!5824357 (=> (not res!2455678) (not e!3574196))))

(declare-fun contains!19904 (List!63925 Context!10518) Bool)

(assert (=> b!5824357 (= res!2455678 (not (contains!19904 (t!377280 lt!2302542) (h!70249 lt!2302542))))))

(declare-fun b!5824358 () Bool)

(assert (=> b!5824358 (= e!3574196 (noDuplicate!1745 (t!377280 lt!2302542)))))

(assert (= (and d!1832389 (not res!2455677)) b!5824357))

(assert (= (and b!5824357 res!2455678) b!5824358))

(declare-fun m!6757720 () Bool)

(assert (=> b!5824357 m!6757720))

(declare-fun m!6757722 () Bool)

(assert (=> b!5824358 m!6757722))

(assert (=> d!1832337 d!1832389))

(declare-fun d!1832391 () Bool)

(declare-fun e!3574204 () Bool)

(assert (=> d!1832391 e!3574204))

(declare-fun res!2455683 () Bool)

(assert (=> d!1832391 (=> (not res!2455683) (not e!3574204))))

(declare-fun res!2455684 () List!63925)

(assert (=> d!1832391 (= res!2455683 (noDuplicate!1745 res!2455684))))

(declare-fun e!3574203 () Bool)

(assert (=> d!1832391 e!3574203))

(assert (=> d!1832391 (= (choose!44265 z!1189) res!2455684)))

(declare-fun b!5824366 () Bool)

(declare-fun e!3574205 () Bool)

(declare-fun tp!1607722 () Bool)

(assert (=> b!5824366 (= e!3574205 tp!1607722)))

(declare-fun tp!1607721 () Bool)

(declare-fun b!5824365 () Bool)

(assert (=> b!5824365 (= e!3574203 (and (inv!82934 (h!70249 res!2455684)) e!3574205 tp!1607721))))

(declare-fun b!5824367 () Bool)

(assert (=> b!5824367 (= e!3574204 (= (content!11711 res!2455684) z!1189))))

(assert (= b!5824365 b!5824366))

(assert (= (and d!1832391 ((_ is Cons!63801) res!2455684)) b!5824365))

(assert (= (and d!1832391 res!2455683) b!5824367))

(declare-fun m!6757724 () Bool)

(assert (=> d!1832391 m!6757724))

(declare-fun m!6757726 () Bool)

(assert (=> b!5824365 m!6757726))

(declare-fun m!6757728 () Bool)

(assert (=> b!5824367 m!6757728))

(assert (=> d!1832337 d!1832391))

(declare-fun b!5824368 () Bool)

(declare-fun e!3574212 () Bool)

(declare-fun e!3574207 () Bool)

(assert (=> b!5824368 (= e!3574212 e!3574207)))

(declare-fun res!2455688 () Bool)

(assert (=> b!5824368 (= res!2455688 (not (nullable!5878 (reg!16204 (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))))))))

(assert (=> b!5824368 (=> (not res!2455688) (not e!3574207))))

(declare-fun b!5824369 () Bool)

(declare-fun e!3574211 () Bool)

(assert (=> b!5824369 (= e!3574212 e!3574211)))

(declare-fun c!1032152 () Bool)

(assert (=> b!5824369 (= c!1032152 ((_ is Union!15875) (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))))))

(declare-fun b!5824370 () Bool)

(declare-fun e!3574210 () Bool)

(declare-fun call!454830 () Bool)

(assert (=> b!5824370 (= e!3574210 call!454830)))

(declare-fun b!5824371 () Bool)

(declare-fun e!3574209 () Bool)

(assert (=> b!5824371 (= e!3574209 e!3574212)))

(declare-fun c!1032151 () Bool)

(assert (=> b!5824371 (= c!1032151 ((_ is Star!15875) (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))))))

(declare-fun bm!454825 () Bool)

(assert (=> bm!454825 (= call!454830 (validRegex!7611 (ite c!1032152 (regTwo!32263 (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))) (regTwo!32262 (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))))))))

(declare-fun d!1832395 () Bool)

(declare-fun res!2455685 () Bool)

(assert (=> d!1832395 (=> res!2455685 e!3574209)))

(assert (=> d!1832395 (= res!2455685 ((_ is ElementMatch!15875) (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))))))

(assert (=> d!1832395 (= (validRegex!7611 (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))) e!3574209)))

(declare-fun b!5824372 () Bool)

(declare-fun e!3574208 () Bool)

(assert (=> b!5824372 (= e!3574208 call!454830)))

(declare-fun bm!454826 () Bool)

(declare-fun call!454831 () Bool)

(declare-fun call!454832 () Bool)

(assert (=> bm!454826 (= call!454831 call!454832)))

(declare-fun b!5824373 () Bool)

(declare-fun res!2455689 () Bool)

(declare-fun e!3574206 () Bool)

(assert (=> b!5824373 (=> res!2455689 e!3574206)))

(assert (=> b!5824373 (= res!2455689 (not ((_ is Concat!24720) (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292)))))))

(assert (=> b!5824373 (= e!3574211 e!3574206)))

(declare-fun b!5824374 () Bool)

(assert (=> b!5824374 (= e!3574207 call!454832)))

(declare-fun b!5824375 () Bool)

(assert (=> b!5824375 (= e!3574206 e!3574210)))

(declare-fun res!2455687 () Bool)

(assert (=> b!5824375 (=> (not res!2455687) (not e!3574210))))

(assert (=> b!5824375 (= res!2455687 call!454831)))

(declare-fun bm!454827 () Bool)

(assert (=> bm!454827 (= call!454832 (validRegex!7611 (ite c!1032151 (reg!16204 (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))) (ite c!1032152 (regOne!32263 (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292))) (regOne!32262 (ite c!1032073 (regTwo!32263 r!7292) (regTwo!32262 r!7292)))))))))

(declare-fun b!5824376 () Bool)

(declare-fun res!2455686 () Bool)

(assert (=> b!5824376 (=> (not res!2455686) (not e!3574208))))

(assert (=> b!5824376 (= res!2455686 call!454831)))

(assert (=> b!5824376 (= e!3574211 e!3574208)))

(assert (= (and d!1832395 (not res!2455685)) b!5824371))

(assert (= (and b!5824371 c!1032151) b!5824368))

(assert (= (and b!5824371 (not c!1032151)) b!5824369))

(assert (= (and b!5824368 res!2455688) b!5824374))

(assert (= (and b!5824369 c!1032152) b!5824376))

(assert (= (and b!5824369 (not c!1032152)) b!5824373))

(assert (= (and b!5824376 res!2455686) b!5824372))

(assert (= (and b!5824373 (not res!2455689)) b!5824375))

(assert (= (and b!5824375 res!2455687) b!5824370))

(assert (= (or b!5824372 b!5824370) bm!454825))

(assert (= (or b!5824376 b!5824375) bm!454826))

(assert (= (or b!5824374 bm!454826) bm!454827))

(declare-fun m!6757730 () Bool)

(assert (=> b!5824368 m!6757730))

(declare-fun m!6757732 () Bool)

(assert (=> bm!454825 m!6757732))

(declare-fun m!6757734 () Bool)

(assert (=> bm!454827 m!6757734))

(assert (=> bm!454799 d!1832395))

(declare-fun d!1832397 () Bool)

(assert (=> d!1832397 (= (isEmpty!35671 s!2326) ((_ is Nil!63802) s!2326))))

(assert (=> bm!454804 d!1832397))

(declare-fun d!1832401 () Bool)

(assert (=> d!1832401 (= (isEmpty!35671 (tail!11399 s!2326)) ((_ is Nil!63802) (tail!11399 s!2326)))))

(assert (=> b!5824111 d!1832401))

(declare-fun d!1832403 () Bool)

(assert (=> d!1832403 (= (tail!11399 s!2326) (t!377281 s!2326))))

(assert (=> b!5824111 d!1832403))

(declare-fun d!1832405 () Bool)

(assert (=> d!1832405 (= (head!12314 s!2326) (h!70250 s!2326))))

(assert (=> b!5824112 d!1832405))

(declare-fun bs!1373810 () Bool)

(declare-fun d!1832407 () Bool)

(assert (= bs!1373810 (and d!1832407 d!1832327)))

(declare-fun lambda!318759 () Int)

(assert (=> bs!1373810 (= lambda!318759 lambda!318730)))

(declare-fun bs!1373812 () Bool)

(assert (= bs!1373812 (and d!1832407 d!1832309)))

(assert (=> bs!1373812 (= lambda!318759 lambda!318720)))

(declare-fun bs!1373813 () Bool)

(assert (= bs!1373813 (and d!1832407 d!1832371)))

(assert (=> bs!1373813 (= lambda!318759 lambda!318755)))

(declare-fun bs!1373814 () Bool)

(assert (= bs!1373814 (and d!1832407 d!1832343)))

(assert (=> bs!1373814 (= lambda!318759 lambda!318739)))

(declare-fun bs!1373815 () Bool)

(assert (= bs!1373815 (and d!1832407 d!1832339)))

(assert (=> bs!1373815 (= lambda!318759 lambda!318738)))

(declare-fun bs!1373816 () Bool)

(assert (= bs!1373816 (and d!1832407 d!1832383)))

(assert (=> bs!1373816 (= lambda!318759 lambda!318758)))

(declare-fun bs!1373817 () Bool)

(assert (= bs!1373817 (and d!1832407 d!1832323)))

(assert (=> bs!1373817 (= lambda!318759 lambda!318723)))

(declare-fun bs!1373818 () Bool)

(assert (= bs!1373818 (and d!1832407 d!1832359)))

(assert (=> bs!1373818 (= lambda!318759 lambda!318754)))

(assert (=> d!1832407 (= (inv!82934 (h!70249 (t!377280 zl!343))) (forall!14966 (exprs!5759 (h!70249 (t!377280 zl!343))) lambda!318759))))

(declare-fun bs!1373819 () Bool)

(assert (= bs!1373819 d!1832407))

(declare-fun m!6757738 () Bool)

(assert (=> bs!1373819 m!6757738))

(assert (=> b!5824292 d!1832407))

(declare-fun d!1832411 () Bool)

(assert (=> d!1832411 (= (isConcat!836 lt!2302548) ((_ is Concat!24720) lt!2302548))))

(assert (=> b!5824046 d!1832411))

(declare-fun bs!1373820 () Bool)

(declare-fun d!1832415 () Bool)

(assert (= bs!1373820 (and d!1832415 d!1832327)))

(declare-fun lambda!318760 () Int)

(assert (=> bs!1373820 (= lambda!318760 lambda!318730)))

(declare-fun bs!1373821 () Bool)

(assert (= bs!1373821 (and d!1832415 d!1832309)))

(assert (=> bs!1373821 (= lambda!318760 lambda!318720)))

(declare-fun bs!1373822 () Bool)

(assert (= bs!1373822 (and d!1832415 d!1832371)))

(assert (=> bs!1373822 (= lambda!318760 lambda!318755)))

(declare-fun bs!1373823 () Bool)

(assert (= bs!1373823 (and d!1832415 d!1832343)))

(assert (=> bs!1373823 (= lambda!318760 lambda!318739)))

(declare-fun bs!1373824 () Bool)

(assert (= bs!1373824 (and d!1832415 d!1832339)))

(assert (=> bs!1373824 (= lambda!318760 lambda!318738)))

(declare-fun bs!1373825 () Bool)

(assert (= bs!1373825 (and d!1832415 d!1832407)))

(assert (=> bs!1373825 (= lambda!318760 lambda!318759)))

(declare-fun bs!1373826 () Bool)

(assert (= bs!1373826 (and d!1832415 d!1832383)))

(assert (=> bs!1373826 (= lambda!318760 lambda!318758)))

(declare-fun bs!1373827 () Bool)

(assert (= bs!1373827 (and d!1832415 d!1832323)))

(assert (=> bs!1373827 (= lambda!318760 lambda!318723)))

(declare-fun bs!1373828 () Bool)

(assert (= bs!1373828 (and d!1832415 d!1832359)))

(assert (=> bs!1373828 (= lambda!318760 lambda!318754)))

(assert (=> d!1832415 (= (inv!82934 setElem!39370) (forall!14966 (exprs!5759 setElem!39370) lambda!318760))))

(declare-fun bs!1373829 () Bool)

(assert (= bs!1373829 d!1832415))

(declare-fun m!6757740 () Bool)

(assert (=> bs!1373829 m!6757740))

(assert (=> setNonEmpty!39370 d!1832415))

(declare-fun b!5824377 () Bool)

(declare-fun e!3574219 () Bool)

(declare-fun e!3574214 () Bool)

(assert (=> b!5824377 (= e!3574219 e!3574214)))

(declare-fun res!2455693 () Bool)

(assert (=> b!5824377 (= res!2455693 (not (nullable!5878 (reg!16204 lt!2302530))))))

(assert (=> b!5824377 (=> (not res!2455693) (not e!3574214))))

(declare-fun b!5824378 () Bool)

(declare-fun e!3574218 () Bool)

(assert (=> b!5824378 (= e!3574219 e!3574218)))

(declare-fun c!1032154 () Bool)

(assert (=> b!5824378 (= c!1032154 ((_ is Union!15875) lt!2302530))))

(declare-fun b!5824379 () Bool)

(declare-fun e!3574217 () Bool)

(declare-fun call!454833 () Bool)

(assert (=> b!5824379 (= e!3574217 call!454833)))

(declare-fun b!5824380 () Bool)

(declare-fun e!3574216 () Bool)

(assert (=> b!5824380 (= e!3574216 e!3574219)))

(declare-fun c!1032153 () Bool)

(assert (=> b!5824380 (= c!1032153 ((_ is Star!15875) lt!2302530))))

(declare-fun bm!454828 () Bool)

(assert (=> bm!454828 (= call!454833 (validRegex!7611 (ite c!1032154 (regTwo!32263 lt!2302530) (regTwo!32262 lt!2302530))))))

(declare-fun d!1832419 () Bool)

(declare-fun res!2455690 () Bool)

(assert (=> d!1832419 (=> res!2455690 e!3574216)))

(assert (=> d!1832419 (= res!2455690 ((_ is ElementMatch!15875) lt!2302530))))

(assert (=> d!1832419 (= (validRegex!7611 lt!2302530) e!3574216)))

(declare-fun b!5824381 () Bool)

(declare-fun e!3574215 () Bool)

(assert (=> b!5824381 (= e!3574215 call!454833)))

(declare-fun bm!454829 () Bool)

(declare-fun call!454834 () Bool)

(declare-fun call!454835 () Bool)

(assert (=> bm!454829 (= call!454834 call!454835)))

(declare-fun b!5824382 () Bool)

(declare-fun res!2455694 () Bool)

(declare-fun e!3574213 () Bool)

(assert (=> b!5824382 (=> res!2455694 e!3574213)))

(assert (=> b!5824382 (= res!2455694 (not ((_ is Concat!24720) lt!2302530)))))

(assert (=> b!5824382 (= e!3574218 e!3574213)))

(declare-fun b!5824383 () Bool)

(assert (=> b!5824383 (= e!3574214 call!454835)))

(declare-fun b!5824384 () Bool)

(assert (=> b!5824384 (= e!3574213 e!3574217)))

(declare-fun res!2455692 () Bool)

(assert (=> b!5824384 (=> (not res!2455692) (not e!3574217))))

(assert (=> b!5824384 (= res!2455692 call!454834)))

(declare-fun bm!454830 () Bool)

(assert (=> bm!454830 (= call!454835 (validRegex!7611 (ite c!1032153 (reg!16204 lt!2302530) (ite c!1032154 (regOne!32263 lt!2302530) (regOne!32262 lt!2302530)))))))

(declare-fun b!5824385 () Bool)

(declare-fun res!2455691 () Bool)

(assert (=> b!5824385 (=> (not res!2455691) (not e!3574215))))

(assert (=> b!5824385 (= res!2455691 call!454834)))

(assert (=> b!5824385 (= e!3574218 e!3574215)))

(assert (= (and d!1832419 (not res!2455690)) b!5824380))

(assert (= (and b!5824380 c!1032153) b!5824377))

(assert (= (and b!5824380 (not c!1032153)) b!5824378))

(assert (= (and b!5824377 res!2455693) b!5824383))

(assert (= (and b!5824378 c!1032154) b!5824385))

(assert (= (and b!5824378 (not c!1032154)) b!5824382))

(assert (= (and b!5824385 res!2455691) b!5824381))

(assert (= (and b!5824382 (not res!2455694)) b!5824384))

(assert (= (and b!5824384 res!2455692) b!5824379))

(assert (= (or b!5824381 b!5824379) bm!454828))

(assert (= (or b!5824385 b!5824384) bm!454829))

(assert (= (or b!5824383 bm!454829) bm!454830))

(declare-fun m!6757742 () Bool)

(assert (=> b!5824377 m!6757742))

(declare-fun m!6757744 () Bool)

(assert (=> bm!454828 m!6757744))

(declare-fun m!6757746 () Bool)

(assert (=> bm!454830 m!6757746))

(assert (=> d!1832323 d!1832419))

(declare-fun d!1832421 () Bool)

(declare-fun res!2455695 () Bool)

(declare-fun e!3574220 () Bool)

(assert (=> d!1832421 (=> res!2455695 e!3574220)))

(assert (=> d!1832421 (= res!2455695 ((_ is Nil!63800) (unfocusZipperList!1296 zl!343)))))

(assert (=> d!1832421 (= (forall!14966 (unfocusZipperList!1296 zl!343) lambda!318723) e!3574220)))

(declare-fun b!5824386 () Bool)

(declare-fun e!3574221 () Bool)

(assert (=> b!5824386 (= e!3574220 e!3574221)))

(declare-fun res!2455696 () Bool)

(assert (=> b!5824386 (=> (not res!2455696) (not e!3574221))))

(assert (=> b!5824386 (= res!2455696 (dynLambda!24967 lambda!318723 (h!70248 (unfocusZipperList!1296 zl!343))))))

(declare-fun b!5824387 () Bool)

(assert (=> b!5824387 (= e!3574221 (forall!14966 (t!377279 (unfocusZipperList!1296 zl!343)) lambda!318723))))

(assert (= (and d!1832421 (not res!2455695)) b!5824386))

(assert (= (and b!5824386 res!2455696) b!5824387))

(declare-fun b_lambda!219543 () Bool)

(assert (=> (not b_lambda!219543) (not b!5824386)))

(declare-fun m!6757748 () Bool)

(assert (=> b!5824386 m!6757748))

(declare-fun m!6757750 () Bool)

(assert (=> b!5824387 m!6757750))

(assert (=> d!1832323 d!1832421))

(declare-fun b!5824392 () Bool)

(declare-fun e!3574230 () Bool)

(declare-fun e!3574225 () Bool)

(assert (=> b!5824392 (= e!3574230 e!3574225)))

(declare-fun res!2455700 () Bool)

(assert (=> b!5824392 (= res!2455700 (not (nullable!5878 (reg!16204 (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))))))))

(assert (=> b!5824392 (=> (not res!2455700) (not e!3574225))))

(declare-fun b!5824393 () Bool)

(declare-fun e!3574229 () Bool)

(assert (=> b!5824393 (= e!3574230 e!3574229)))

(declare-fun c!1032158 () Bool)

(assert (=> b!5824393 (= c!1032158 ((_ is Union!15875) (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))))))

(declare-fun b!5824394 () Bool)

(declare-fun e!3574228 () Bool)

(declare-fun call!454836 () Bool)

(assert (=> b!5824394 (= e!3574228 call!454836)))

(declare-fun b!5824395 () Bool)

(declare-fun e!3574227 () Bool)

(assert (=> b!5824395 (= e!3574227 e!3574230)))

(declare-fun c!1032157 () Bool)

(assert (=> b!5824395 (= c!1032157 ((_ is Star!15875) (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))))))

(declare-fun bm!454831 () Bool)

(assert (=> bm!454831 (= call!454836 (validRegex!7611 (ite c!1032158 (regTwo!32263 (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))) (regTwo!32262 (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))))))))

(declare-fun d!1832423 () Bool)

(declare-fun res!2455697 () Bool)

(assert (=> d!1832423 (=> res!2455697 e!3574227)))

(assert (=> d!1832423 (= res!2455697 ((_ is ElementMatch!15875) (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))))))

(assert (=> d!1832423 (= (validRegex!7611 (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))) e!3574227)))

(declare-fun b!5824396 () Bool)

(declare-fun e!3574226 () Bool)

(assert (=> b!5824396 (= e!3574226 call!454836)))

(declare-fun bm!454832 () Bool)

(declare-fun call!454837 () Bool)

(declare-fun call!454838 () Bool)

(assert (=> bm!454832 (= call!454837 call!454838)))

(declare-fun b!5824397 () Bool)

(declare-fun res!2455701 () Bool)

(declare-fun e!3574224 () Bool)

(assert (=> b!5824397 (=> res!2455701 e!3574224)))

(assert (=> b!5824397 (= res!2455701 (not ((_ is Concat!24720) (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292))))))))

(assert (=> b!5824397 (= e!3574229 e!3574224)))

(declare-fun b!5824398 () Bool)

(assert (=> b!5824398 (= e!3574225 call!454838)))

(declare-fun b!5824399 () Bool)

(assert (=> b!5824399 (= e!3574224 e!3574228)))

(declare-fun res!2455699 () Bool)

(assert (=> b!5824399 (=> (not res!2455699) (not e!3574228))))

(assert (=> b!5824399 (= res!2455699 call!454837)))

(declare-fun bm!454833 () Bool)

(assert (=> bm!454833 (= call!454838 (validRegex!7611 (ite c!1032157 (reg!16204 (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))) (ite c!1032158 (regOne!32263 (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292)))) (regOne!32262 (ite c!1032072 (reg!16204 r!7292) (ite c!1032073 (regOne!32263 r!7292) (regOne!32262 r!7292))))))))))

(declare-fun b!5824400 () Bool)

(declare-fun res!2455698 () Bool)

(assert (=> b!5824400 (=> (not res!2455698) (not e!3574226))))

(assert (=> b!5824400 (= res!2455698 call!454837)))

(assert (=> b!5824400 (= e!3574229 e!3574226)))

(assert (= (and d!1832423 (not res!2455697)) b!5824395))

(assert (= (and b!5824395 c!1032157) b!5824392))

(assert (= (and b!5824395 (not c!1032157)) b!5824393))

(assert (= (and b!5824392 res!2455700) b!5824398))

(assert (= (and b!5824393 c!1032158) b!5824400))

(assert (= (and b!5824393 (not c!1032158)) b!5824397))

(assert (= (and b!5824400 res!2455698) b!5824396))

(assert (= (and b!5824397 (not res!2455701)) b!5824399))

(assert (= (and b!5824399 res!2455699) b!5824394))

(assert (= (or b!5824396 b!5824394) bm!454831))

(assert (= (or b!5824400 b!5824399) bm!454832))

(assert (= (or b!5824398 bm!454832) bm!454833))

(declare-fun m!6757752 () Bool)

(assert (=> b!5824392 m!6757752))

(declare-fun m!6757754 () Bool)

(assert (=> bm!454831 m!6757754))

(declare-fun m!6757756 () Bool)

(assert (=> bm!454833 m!6757756))

(assert (=> bm!454801 d!1832423))

(assert (=> b!5824117 d!1832401))

(assert (=> b!5824117 d!1832403))

(declare-fun d!1832425 () Bool)

(assert (=> d!1832425 (= (isEmpty!35669 (unfocusZipperList!1296 zl!343)) ((_ is Nil!63800) (unfocusZipperList!1296 zl!343)))))

(assert (=> b!5823922 d!1832425))

(declare-fun d!1832427 () Bool)

(assert (=> d!1832427 (= (isEmpty!35669 (tail!11397 (unfocusZipperList!1296 zl!343))) ((_ is Nil!63800) (tail!11397 (unfocusZipperList!1296 zl!343))))))

(assert (=> b!5823921 d!1832427))

(declare-fun d!1832429 () Bool)

(assert (=> d!1832429 (= (tail!11397 (unfocusZipperList!1296 zl!343)) (t!377279 (unfocusZipperList!1296 zl!343)))))

(assert (=> b!5823921 d!1832429))

(declare-fun d!1832431 () Bool)

(declare-fun c!1032162 () Bool)

(assert (=> d!1832431 (= c!1032162 ((_ is Nil!63801) lt!2302542))))

(declare-fun e!3574234 () (InoxSet Context!10518))

(assert (=> d!1832431 (= (content!11711 lt!2302542) e!3574234)))

(declare-fun b!5824407 () Bool)

(assert (=> b!5824407 (= e!3574234 ((as const (Array Context!10518 Bool)) false))))

(declare-fun b!5824408 () Bool)

(assert (=> b!5824408 (= e!3574234 ((_ map or) (store ((as const (Array Context!10518 Bool)) false) (h!70249 lt!2302542) true) (content!11711 (t!377280 lt!2302542))))))

(assert (= (and d!1832431 c!1032162) b!5824407))

(assert (= (and d!1832431 (not c!1032162)) b!5824408))

(declare-fun m!6757762 () Bool)

(assert (=> b!5824408 m!6757762))

(declare-fun m!6757764 () Bool)

(assert (=> b!5824408 m!6757764))

(assert (=> b!5823986 d!1832431))

(declare-fun d!1832435 () Bool)

(assert (=> d!1832435 (= (isEmptyLang!1322 lt!2302530) ((_ is EmptyLang!15875) lt!2302530))))

(assert (=> b!5823920 d!1832435))

(declare-fun d!1832439 () Bool)

(assert (=> d!1832439 (= (isEmpty!35669 (t!377279 (unfocusZipperList!1296 zl!343))) ((_ is Nil!63800) (t!377279 (unfocusZipperList!1296 zl!343))))))

(assert (=> b!5823919 d!1832439))

(declare-fun b!5824419 () Bool)

(declare-fun res!2455711 () Bool)

(declare-fun e!3574245 () Bool)

(assert (=> b!5824419 (=> res!2455711 e!3574245)))

(assert (=> b!5824419 (= res!2455711 (not (isEmpty!35671 (tail!11399 (tail!11399 s!2326)))))))

(declare-fun b!5824420 () Bool)

(declare-fun e!3574243 () Bool)

(assert (=> b!5824420 (= e!3574243 (= (head!12314 (tail!11399 s!2326)) (c!1032031 (derivativeStep!4618 r!7292 (head!12314 s!2326)))))))

(declare-fun bm!454834 () Bool)

(declare-fun call!454839 () Bool)

(assert (=> bm!454834 (= call!454839 (isEmpty!35671 (tail!11399 s!2326)))))

(declare-fun d!1832441 () Bool)

(declare-fun e!3574244 () Bool)

(assert (=> d!1832441 e!3574244))

(declare-fun c!1032167 () Bool)

(assert (=> d!1832441 (= c!1032167 ((_ is EmptyExpr!15875) (derivativeStep!4618 r!7292 (head!12314 s!2326))))))

(declare-fun lt!2302564 () Bool)

(declare-fun e!3574242 () Bool)

(assert (=> d!1832441 (= lt!2302564 e!3574242)))

(declare-fun c!1032168 () Bool)

(assert (=> d!1832441 (= c!1032168 (isEmpty!35671 (tail!11399 s!2326)))))

(assert (=> d!1832441 (validRegex!7611 (derivativeStep!4618 r!7292 (head!12314 s!2326)))))

(assert (=> d!1832441 (= (matchR!8058 (derivativeStep!4618 r!7292 (head!12314 s!2326)) (tail!11399 s!2326)) lt!2302564)))

(declare-fun b!5824421 () Bool)

(declare-fun e!3574247 () Bool)

(declare-fun e!3574246 () Bool)

(assert (=> b!5824421 (= e!3574247 e!3574246)))

(declare-fun res!2455704 () Bool)

(assert (=> b!5824421 (=> (not res!2455704) (not e!3574246))))

(assert (=> b!5824421 (= res!2455704 (not lt!2302564))))

(declare-fun b!5824422 () Bool)

(assert (=> b!5824422 (= e!3574242 (matchR!8058 (derivativeStep!4618 (derivativeStep!4618 r!7292 (head!12314 s!2326)) (head!12314 (tail!11399 s!2326))) (tail!11399 (tail!11399 s!2326))))))

(declare-fun b!5824423 () Bool)

(assert (=> b!5824423 (= e!3574245 (not (= (head!12314 (tail!11399 s!2326)) (c!1032031 (derivativeStep!4618 r!7292 (head!12314 s!2326))))))))

(declare-fun b!5824424 () Bool)

(declare-fun res!2455710 () Bool)

(assert (=> b!5824424 (=> res!2455710 e!3574247)))

(assert (=> b!5824424 (= res!2455710 e!3574243)))

(declare-fun res!2455709 () Bool)

(assert (=> b!5824424 (=> (not res!2455709) (not e!3574243))))

(assert (=> b!5824424 (= res!2455709 lt!2302564)))

(declare-fun b!5824425 () Bool)

(declare-fun res!2455707 () Bool)

(assert (=> b!5824425 (=> (not res!2455707) (not e!3574243))))

(assert (=> b!5824425 (= res!2455707 (isEmpty!35671 (tail!11399 (tail!11399 s!2326))))))

(declare-fun b!5824426 () Bool)

(declare-fun e!3574241 () Bool)

(assert (=> b!5824426 (= e!3574244 e!3574241)))

(declare-fun c!1032169 () Bool)

(assert (=> b!5824426 (= c!1032169 ((_ is EmptyLang!15875) (derivativeStep!4618 r!7292 (head!12314 s!2326))))))

(declare-fun b!5824427 () Bool)

(assert (=> b!5824427 (= e!3574241 (not lt!2302564))))

(declare-fun b!5824428 () Bool)

(assert (=> b!5824428 (= e!3574242 (nullable!5878 (derivativeStep!4618 r!7292 (head!12314 s!2326))))))

(declare-fun b!5824429 () Bool)

(assert (=> b!5824429 (= e!3574246 e!3574245)))

(declare-fun res!2455708 () Bool)

(assert (=> b!5824429 (=> res!2455708 e!3574245)))

(assert (=> b!5824429 (= res!2455708 call!454839)))

(declare-fun b!5824430 () Bool)

(declare-fun res!2455706 () Bool)

(assert (=> b!5824430 (=> res!2455706 e!3574247)))

(assert (=> b!5824430 (= res!2455706 (not ((_ is ElementMatch!15875) (derivativeStep!4618 r!7292 (head!12314 s!2326)))))))

(assert (=> b!5824430 (= e!3574241 e!3574247)))

(declare-fun b!5824431 () Bool)

(declare-fun res!2455705 () Bool)

(assert (=> b!5824431 (=> (not res!2455705) (not e!3574243))))

(assert (=> b!5824431 (= res!2455705 (not call!454839))))

(declare-fun b!5824432 () Bool)

(assert (=> b!5824432 (= e!3574244 (= lt!2302564 call!454839))))

(assert (= (and d!1832441 c!1032168) b!5824428))

(assert (= (and d!1832441 (not c!1032168)) b!5824422))

(assert (= (and d!1832441 c!1032167) b!5824432))

(assert (= (and d!1832441 (not c!1032167)) b!5824426))

(assert (= (and b!5824426 c!1032169) b!5824427))

(assert (= (and b!5824426 (not c!1032169)) b!5824430))

(assert (= (and b!5824430 (not res!2455706)) b!5824424))

(assert (= (and b!5824424 res!2455709) b!5824431))

(assert (= (and b!5824431 res!2455705) b!5824425))

(assert (= (and b!5824425 res!2455707) b!5824420))

(assert (= (and b!5824424 (not res!2455710)) b!5824421))

(assert (= (and b!5824421 res!2455704) b!5824429))

(assert (= (and b!5824429 (not res!2455708)) b!5824419))

(assert (= (and b!5824419 (not res!2455711)) b!5824423))

(assert (= (or b!5824432 b!5824429 b!5824431) bm!454834))

(assert (=> d!1832441 m!6757610))

(assert (=> d!1832441 m!6757612))

(assert (=> d!1832441 m!6757614))

(declare-fun m!6757766 () Bool)

(assert (=> d!1832441 m!6757766))

(assert (=> b!5824423 m!6757610))

(declare-fun m!6757768 () Bool)

(assert (=> b!5824423 m!6757768))

(assert (=> b!5824425 m!6757610))

(declare-fun m!6757770 () Bool)

(assert (=> b!5824425 m!6757770))

(assert (=> b!5824425 m!6757770))

(declare-fun m!6757772 () Bool)

(assert (=> b!5824425 m!6757772))

(assert (=> b!5824422 m!6757610))

(assert (=> b!5824422 m!6757768))

(assert (=> b!5824422 m!6757614))

(assert (=> b!5824422 m!6757768))

(declare-fun m!6757774 () Bool)

(assert (=> b!5824422 m!6757774))

(assert (=> b!5824422 m!6757610))

(assert (=> b!5824422 m!6757770))

(assert (=> b!5824422 m!6757774))

(assert (=> b!5824422 m!6757770))

(declare-fun m!6757776 () Bool)

(assert (=> b!5824422 m!6757776))

(assert (=> b!5824428 m!6757614))

(declare-fun m!6757778 () Bool)

(assert (=> b!5824428 m!6757778))

(assert (=> b!5824420 m!6757610))

(assert (=> b!5824420 m!6757768))

(assert (=> bm!454834 m!6757610))

(assert (=> bm!454834 m!6757612))

(assert (=> b!5824419 m!6757610))

(assert (=> b!5824419 m!6757770))

(assert (=> b!5824419 m!6757770))

(assert (=> b!5824419 m!6757772))

(assert (=> b!5824114 d!1832441))

(declare-fun bm!454843 () Bool)

(declare-fun call!454849 () Regex!15875)

(declare-fun call!454848 () Regex!15875)

(assert (=> bm!454843 (= call!454849 call!454848)))

(declare-fun d!1832443 () Bool)

(declare-fun lt!2302569 () Regex!15875)

(assert (=> d!1832443 (validRegex!7611 lt!2302569)))

(declare-fun e!3574272 () Regex!15875)

(assert (=> d!1832443 (= lt!2302569 e!3574272)))

(declare-fun c!1032189 () Bool)

(assert (=> d!1832443 (= c!1032189 (or ((_ is EmptyExpr!15875) r!7292) ((_ is EmptyLang!15875) r!7292)))))

(assert (=> d!1832443 (validRegex!7611 r!7292)))

(assert (=> d!1832443 (= (derivativeStep!4618 r!7292 (head!12314 s!2326)) lt!2302569)))

(declare-fun b!5824471 () Bool)

(declare-fun e!3574274 () Regex!15875)

(declare-fun call!454850 () Regex!15875)

(assert (=> b!5824471 (= e!3574274 (Union!15875 call!454850 call!454848))))

(declare-fun b!5824472 () Bool)

(declare-fun e!3574273 () Regex!15875)

(assert (=> b!5824472 (= e!3574273 (Concat!24720 call!454849 r!7292))))

(declare-fun c!1032188 () Bool)

(declare-fun bm!454844 () Bool)

(assert (=> bm!454844 (= call!454850 (derivativeStep!4618 (ite c!1032188 (regOne!32263 r!7292) (regOne!32262 r!7292)) (head!12314 s!2326)))))

(declare-fun b!5824473 () Bool)

(assert (=> b!5824473 (= c!1032188 ((_ is Union!15875) r!7292))))

(declare-fun e!3574275 () Regex!15875)

(assert (=> b!5824473 (= e!3574275 e!3574274)))

(declare-fun b!5824474 () Bool)

(assert (=> b!5824474 (= e!3574274 e!3574273)))

(declare-fun c!1032186 () Bool)

(assert (=> b!5824474 (= c!1032186 ((_ is Star!15875) r!7292))))

(declare-fun b!5824475 () Bool)

(assert (=> b!5824475 (= e!3574272 e!3574275)))

(declare-fun c!1032185 () Bool)

(assert (=> b!5824475 (= c!1032185 ((_ is ElementMatch!15875) r!7292))))

(declare-fun b!5824476 () Bool)

(assert (=> b!5824476 (= e!3574272 EmptyLang!15875)))

(declare-fun b!5824477 () Bool)

(declare-fun e!3574271 () Regex!15875)

(declare-fun call!454851 () Regex!15875)

(assert (=> b!5824477 (= e!3574271 (Union!15875 (Concat!24720 call!454851 (regTwo!32262 r!7292)) EmptyLang!15875))))

(declare-fun b!5824478 () Bool)

(assert (=> b!5824478 (= e!3574271 (Union!15875 (Concat!24720 call!454850 (regTwo!32262 r!7292)) call!454851))))

(declare-fun bm!454845 () Bool)

(assert (=> bm!454845 (= call!454851 call!454849)))

(declare-fun b!5824479 () Bool)

(assert (=> b!5824479 (= e!3574275 (ite (= (head!12314 s!2326) (c!1032031 r!7292)) EmptyExpr!15875 EmptyLang!15875))))

(declare-fun b!5824480 () Bool)

(declare-fun c!1032187 () Bool)

(assert (=> b!5824480 (= c!1032187 (nullable!5878 (regOne!32262 r!7292)))))

(assert (=> b!5824480 (= e!3574273 e!3574271)))

(declare-fun bm!454846 () Bool)

(assert (=> bm!454846 (= call!454848 (derivativeStep!4618 (ite c!1032188 (regTwo!32263 r!7292) (ite c!1032186 (reg!16204 r!7292) (ite c!1032187 (regTwo!32262 r!7292) (regOne!32262 r!7292)))) (head!12314 s!2326)))))

(assert (= (and d!1832443 c!1032189) b!5824476))

(assert (= (and d!1832443 (not c!1032189)) b!5824475))

(assert (= (and b!5824475 c!1032185) b!5824479))

(assert (= (and b!5824475 (not c!1032185)) b!5824473))

(assert (= (and b!5824473 c!1032188) b!5824471))

(assert (= (and b!5824473 (not c!1032188)) b!5824474))

(assert (= (and b!5824474 c!1032186) b!5824472))

(assert (= (and b!5824474 (not c!1032186)) b!5824480))

(assert (= (and b!5824480 c!1032187) b!5824478))

(assert (= (and b!5824480 (not c!1032187)) b!5824477))

(assert (= (or b!5824478 b!5824477) bm!454845))

(assert (= (or b!5824472 bm!454845) bm!454843))

(assert (= (or b!5824471 bm!454843) bm!454846))

(assert (= (or b!5824471 b!5824478) bm!454844))

(declare-fun m!6757820 () Bool)

(assert (=> d!1832443 m!6757820))

(assert (=> d!1832443 m!6757462))

(assert (=> bm!454844 m!6757608))

(declare-fun m!6757822 () Bool)

(assert (=> bm!454844 m!6757822))

(declare-fun m!6757824 () Bool)

(assert (=> b!5824480 m!6757824))

(assert (=> bm!454846 m!6757608))

(declare-fun m!6757826 () Bool)

(assert (=> bm!454846 m!6757826))

(assert (=> b!5824114 d!1832443))

(assert (=> b!5824114 d!1832405))

(assert (=> b!5824114 d!1832403))

(assert (=> bm!454818 d!1832397))

(assert (=> b!5824115 d!1832405))

(declare-fun d!1832455 () Bool)

(assert (=> d!1832455 (= (head!12312 (unfocusZipperList!1296 zl!343)) (h!70248 (unfocusZipperList!1296 zl!343)))))

(assert (=> b!5823918 d!1832455))

(declare-fun d!1832457 () Bool)

(assert (=> d!1832457 (= (isUnion!752 lt!2302530) ((_ is Union!15875) lt!2302530))))

(assert (=> b!5823917 d!1832457))

(declare-fun b!5824483 () Bool)

(declare-fun e!3574284 () Bool)

(declare-fun e!3574279 () Bool)

(assert (=> b!5824483 (= e!3574284 e!3574279)))

(declare-fun res!2455725 () Bool)

(assert (=> b!5824483 (= res!2455725 (not (nullable!5878 (reg!16204 lt!2302536))))))

(assert (=> b!5824483 (=> (not res!2455725) (not e!3574279))))

(declare-fun b!5824484 () Bool)

(declare-fun e!3574283 () Bool)

(assert (=> b!5824484 (= e!3574284 e!3574283)))

(declare-fun c!1032191 () Bool)

(assert (=> b!5824484 (= c!1032191 ((_ is Union!15875) lt!2302536))))

(declare-fun b!5824485 () Bool)

(declare-fun e!3574282 () Bool)

(declare-fun call!454852 () Bool)

(assert (=> b!5824485 (= e!3574282 call!454852)))

(declare-fun b!5824486 () Bool)

(declare-fun e!3574281 () Bool)

(assert (=> b!5824486 (= e!3574281 e!3574284)))

(declare-fun c!1032190 () Bool)

(assert (=> b!5824486 (= c!1032190 ((_ is Star!15875) lt!2302536))))

(declare-fun bm!454847 () Bool)

(assert (=> bm!454847 (= call!454852 (validRegex!7611 (ite c!1032191 (regTwo!32263 lt!2302536) (regTwo!32262 lt!2302536))))))

(declare-fun d!1832461 () Bool)

(declare-fun res!2455722 () Bool)

(assert (=> d!1832461 (=> res!2455722 e!3574281)))

(assert (=> d!1832461 (= res!2455722 ((_ is ElementMatch!15875) lt!2302536))))

(assert (=> d!1832461 (= (validRegex!7611 lt!2302536) e!3574281)))

(declare-fun b!5824487 () Bool)

(declare-fun e!3574280 () Bool)

(assert (=> b!5824487 (= e!3574280 call!454852)))

(declare-fun bm!454848 () Bool)

(declare-fun call!454853 () Bool)

(declare-fun call!454854 () Bool)

(assert (=> bm!454848 (= call!454853 call!454854)))

(declare-fun b!5824488 () Bool)

(declare-fun res!2455726 () Bool)

(declare-fun e!3574278 () Bool)

(assert (=> b!5824488 (=> res!2455726 e!3574278)))

(assert (=> b!5824488 (= res!2455726 (not ((_ is Concat!24720) lt!2302536)))))

(assert (=> b!5824488 (= e!3574283 e!3574278)))

(declare-fun b!5824489 () Bool)

(assert (=> b!5824489 (= e!3574279 call!454854)))

(declare-fun b!5824490 () Bool)

(assert (=> b!5824490 (= e!3574278 e!3574282)))

(declare-fun res!2455724 () Bool)

(assert (=> b!5824490 (=> (not res!2455724) (not e!3574282))))

(assert (=> b!5824490 (= res!2455724 call!454853)))

(declare-fun bm!454849 () Bool)

(assert (=> bm!454849 (= call!454854 (validRegex!7611 (ite c!1032190 (reg!16204 lt!2302536) (ite c!1032191 (regOne!32263 lt!2302536) (regOne!32262 lt!2302536)))))))

(declare-fun b!5824491 () Bool)

(declare-fun res!2455723 () Bool)

(assert (=> b!5824491 (=> (not res!2455723) (not e!3574280))))

(assert (=> b!5824491 (= res!2455723 call!454853)))

(assert (=> b!5824491 (= e!3574283 e!3574280)))

(assert (= (and d!1832461 (not res!2455722)) b!5824486))

(assert (= (and b!5824486 c!1032190) b!5824483))

(assert (= (and b!5824486 (not c!1032190)) b!5824484))

(assert (= (and b!5824483 res!2455725) b!5824489))

(assert (= (and b!5824484 c!1032191) b!5824491))

(assert (= (and b!5824484 (not c!1032191)) b!5824488))

(assert (= (and b!5824491 res!2455723) b!5824487))

(assert (= (and b!5824488 (not res!2455726)) b!5824490))

(assert (= (and b!5824490 res!2455724) b!5824485))

(assert (= (or b!5824487 b!5824485) bm!454847))

(assert (= (or b!5824491 b!5824490) bm!454848))

(assert (= (or b!5824489 bm!454848) bm!454849))

(declare-fun m!6757838 () Bool)

(assert (=> b!5824483 m!6757838))

(declare-fun m!6757840 () Bool)

(assert (=> bm!454847 m!6757840))

(declare-fun m!6757842 () Bool)

(assert (=> bm!454849 m!6757842))

(assert (=> d!1832329 d!1832461))

(assert (=> d!1832329 d!1832323))

(assert (=> d!1832329 d!1832327))

(assert (=> d!1832357 d!1832345))

(assert (=> d!1832357 d!1832353))

(declare-fun d!1832465 () Bool)

(assert (=> d!1832465 (= (matchR!8058 r!7292 s!2326) (matchRSpec!2976 r!7292 s!2326))))

(assert (=> d!1832465 true))

(declare-fun _$88!4159 () Unit!157021)

(assert (=> d!1832465 (= (choose!44266 r!7292 s!2326) _$88!4159)))

(declare-fun bs!1373851 () Bool)

(assert (= bs!1373851 d!1832465))

(assert (=> bs!1373851 m!6757474))

(assert (=> bs!1373851 m!6757476))

(assert (=> d!1832357 d!1832465))

(assert (=> d!1832357 d!1832331))

(declare-fun d!1832469 () Bool)

(declare-fun choose!44268 (Int) Bool)

(assert (=> d!1832469 (= (Exists!2953 (ite c!1032136 lambda!318752 lambda!318753)) (choose!44268 (ite c!1032136 lambda!318752 lambda!318753)))))

(declare-fun bs!1373853 () Bool)

(assert (= bs!1373853 d!1832469))

(declare-fun m!6757850 () Bool)

(assert (=> bs!1373853 m!6757850))

(assert (=> bm!454819 d!1832469))

(declare-fun d!1832471 () Bool)

(assert (=> d!1832471 (= (isEmpty!35669 (exprs!5759 (h!70249 zl!343))) ((_ is Nil!63800) (exprs!5759 (h!70249 zl!343))))))

(assert (=> b!5824037 d!1832471))

(assert (=> d!1832345 d!1832397))

(assert (=> d!1832345 d!1832331))

(declare-fun d!1832473 () Bool)

(declare-fun nullableFct!1884 (Regex!15875) Bool)

(assert (=> d!1832473 (= (nullable!5878 (reg!16204 r!7292)) (nullableFct!1884 (reg!16204 r!7292)))))

(declare-fun bs!1373855 () Bool)

(assert (= bs!1373855 d!1832473))

(declare-fun m!6757852 () Bool)

(assert (=> bs!1373855 m!6757852))

(assert (=> b!5823975 d!1832473))

(declare-fun bs!1373858 () Bool)

(declare-fun b!5824516 () Bool)

(assert (= bs!1373858 (and b!5824516 b!5824242)))

(declare-fun lambda!318766 () Int)

(assert (=> bs!1373858 (= (and (= (reg!16204 (regOne!32263 r!7292)) (reg!16204 r!7292)) (= (regOne!32263 r!7292) r!7292)) (= lambda!318766 lambda!318752))))

(declare-fun bs!1373860 () Bool)

(assert (= bs!1373860 (and b!5824516 b!5824238)))

(assert (=> bs!1373860 (not (= lambda!318766 lambda!318753))))

(declare-fun bs!1373861 () Bool)

(assert (= bs!1373861 (and b!5824516 b!5824329)))

(assert (=> bs!1373861 (= (and (= (reg!16204 (regOne!32263 r!7292)) (reg!16204 (regTwo!32263 r!7292))) (= (regOne!32263 r!7292) (regTwo!32263 r!7292))) (= lambda!318766 lambda!318756))))

(declare-fun bs!1373862 () Bool)

(assert (= bs!1373862 (and b!5824516 b!5824325)))

(assert (=> bs!1373862 (not (= lambda!318766 lambda!318757))))

(assert (=> b!5824516 true))

(assert (=> b!5824516 true))

(declare-fun bs!1373863 () Bool)

(declare-fun b!5824512 () Bool)

(assert (= bs!1373863 (and b!5824512 b!5824325)))

(declare-fun lambda!318767 () Int)

(assert (=> bs!1373863 (= (and (= (regOne!32262 (regOne!32263 r!7292)) (regOne!32262 (regTwo!32263 r!7292))) (= (regTwo!32262 (regOne!32263 r!7292)) (regTwo!32262 (regTwo!32263 r!7292)))) (= lambda!318767 lambda!318757))))

(declare-fun bs!1373864 () Bool)

(assert (= bs!1373864 (and b!5824512 b!5824238)))

(assert (=> bs!1373864 (= (and (= (regOne!32262 (regOne!32263 r!7292)) (regOne!32262 r!7292)) (= (regTwo!32262 (regOne!32263 r!7292)) (regTwo!32262 r!7292))) (= lambda!318767 lambda!318753))))

(declare-fun bs!1373865 () Bool)

(assert (= bs!1373865 (and b!5824512 b!5824516)))

(assert (=> bs!1373865 (not (= lambda!318767 lambda!318766))))

(declare-fun bs!1373866 () Bool)

(assert (= bs!1373866 (and b!5824512 b!5824242)))

(assert (=> bs!1373866 (not (= lambda!318767 lambda!318752))))

(declare-fun bs!1373867 () Bool)

(assert (= bs!1373867 (and b!5824512 b!5824329)))

(assert (=> bs!1373867 (not (= lambda!318767 lambda!318756))))

(assert (=> b!5824512 true))

(assert (=> b!5824512 true))

(declare-fun e!3574300 () Bool)

(declare-fun call!454861 () Bool)

(assert (=> b!5824512 (= e!3574300 call!454861)))

(declare-fun bm!454855 () Bool)

(declare-fun call!454860 () Bool)

(assert (=> bm!454855 (= call!454860 (isEmpty!35671 s!2326))))

(declare-fun b!5824513 () Bool)

(declare-fun e!3574301 () Bool)

(declare-fun e!3574302 () Bool)

(assert (=> b!5824513 (= e!3574301 e!3574302)))

(declare-fun res!2455736 () Bool)

(assert (=> b!5824513 (= res!2455736 (not ((_ is EmptyLang!15875) (regOne!32263 r!7292))))))

(assert (=> b!5824513 (=> (not res!2455736) (not e!3574302))))

(declare-fun b!5824514 () Bool)

(declare-fun c!1032200 () Bool)

(assert (=> b!5824514 (= c!1032200 ((_ is Union!15875) (regOne!32263 r!7292)))))

(declare-fun e!3574303 () Bool)

(declare-fun e!3574299 () Bool)

(assert (=> b!5824514 (= e!3574303 e!3574299)))

(declare-fun b!5824515 () Bool)

(declare-fun c!1032201 () Bool)

(assert (=> b!5824515 (= c!1032201 ((_ is ElementMatch!15875) (regOne!32263 r!7292)))))

(assert (=> b!5824515 (= e!3574302 e!3574303)))

(declare-fun e!3574304 () Bool)

(assert (=> b!5824516 (= e!3574304 call!454861)))

(declare-fun b!5824517 () Bool)

(declare-fun e!3574305 () Bool)

(assert (=> b!5824517 (= e!3574299 e!3574305)))

(declare-fun res!2455735 () Bool)

(assert (=> b!5824517 (= res!2455735 (matchRSpec!2976 (regOne!32263 (regOne!32263 r!7292)) s!2326))))

(assert (=> b!5824517 (=> res!2455735 e!3574305)))

(declare-fun b!5824518 () Bool)

(assert (=> b!5824518 (= e!3574301 call!454860)))

(declare-fun d!1832475 () Bool)

(declare-fun c!1032199 () Bool)

(assert (=> d!1832475 (= c!1032199 ((_ is EmptyExpr!15875) (regOne!32263 r!7292)))))

(assert (=> d!1832475 (= (matchRSpec!2976 (regOne!32263 r!7292) s!2326) e!3574301)))

(declare-fun bm!454856 () Bool)

(declare-fun c!1032198 () Bool)

(assert (=> bm!454856 (= call!454861 (Exists!2953 (ite c!1032198 lambda!318766 lambda!318767)))))

(declare-fun b!5824519 () Bool)

(assert (=> b!5824519 (= e!3574299 e!3574300)))

(assert (=> b!5824519 (= c!1032198 ((_ is Star!15875) (regOne!32263 r!7292)))))

(declare-fun b!5824520 () Bool)

(assert (=> b!5824520 (= e!3574303 (= s!2326 (Cons!63802 (c!1032031 (regOne!32263 r!7292)) Nil!63802)))))

(declare-fun b!5824521 () Bool)

(assert (=> b!5824521 (= e!3574305 (matchRSpec!2976 (regTwo!32263 (regOne!32263 r!7292)) s!2326))))

(declare-fun b!5824522 () Bool)

(declare-fun res!2455737 () Bool)

(assert (=> b!5824522 (=> res!2455737 e!3574304)))

(assert (=> b!5824522 (= res!2455737 call!454860)))

(assert (=> b!5824522 (= e!3574300 e!3574304)))

(assert (= (and d!1832475 c!1032199) b!5824518))

(assert (= (and d!1832475 (not c!1032199)) b!5824513))

(assert (= (and b!5824513 res!2455736) b!5824515))

(assert (= (and b!5824515 c!1032201) b!5824520))

(assert (= (and b!5824515 (not c!1032201)) b!5824514))

(assert (= (and b!5824514 c!1032200) b!5824517))

(assert (= (and b!5824514 (not c!1032200)) b!5824519))

(assert (= (and b!5824517 (not res!2455735)) b!5824521))

(assert (= (and b!5824519 c!1032198) b!5824522))

(assert (= (and b!5824519 (not c!1032198)) b!5824512))

(assert (= (and b!5824522 (not res!2455737)) b!5824516))

(assert (= (or b!5824516 b!5824512) bm!454856))

(assert (= (or b!5824518 b!5824522) bm!454855))

(assert (=> bm!454855 m!6757606))

(declare-fun m!6757860 () Bool)

(assert (=> b!5824517 m!6757860))

(declare-fun m!6757862 () Bool)

(assert (=> bm!454856 m!6757862))

(declare-fun m!6757864 () Bool)

(assert (=> b!5824521 m!6757864))

(assert (=> b!5824243 d!1832475))

(declare-fun d!1832479 () Bool)

(assert (=> d!1832479 (= (nullable!5878 r!7292) (nullableFct!1884 r!7292))))

(declare-fun bs!1373868 () Bool)

(assert (= bs!1373868 d!1832479))

(declare-fun m!6757866 () Bool)

(assert (=> bs!1373868 m!6757866))

(assert (=> b!5824120 d!1832479))

(declare-fun bs!1373869 () Bool)

(declare-fun d!1832481 () Bool)

(assert (= bs!1373869 (and d!1832481 d!1832327)))

(declare-fun lambda!318768 () Int)

(assert (=> bs!1373869 (= lambda!318768 lambda!318730)))

(declare-fun bs!1373871 () Bool)

(assert (= bs!1373871 (and d!1832481 d!1832309)))

(assert (=> bs!1373871 (= lambda!318768 lambda!318720)))

(declare-fun bs!1373872 () Bool)

(assert (= bs!1373872 (and d!1832481 d!1832371)))

(assert (=> bs!1373872 (= lambda!318768 lambda!318755)))

(declare-fun bs!1373873 () Bool)

(assert (= bs!1373873 (and d!1832481 d!1832415)))

(assert (=> bs!1373873 (= lambda!318768 lambda!318760)))

(declare-fun bs!1373874 () Bool)

(assert (= bs!1373874 (and d!1832481 d!1832343)))

(assert (=> bs!1373874 (= lambda!318768 lambda!318739)))

(declare-fun bs!1373875 () Bool)

(assert (= bs!1373875 (and d!1832481 d!1832339)))

(assert (=> bs!1373875 (= lambda!318768 lambda!318738)))

(declare-fun bs!1373876 () Bool)

(assert (= bs!1373876 (and d!1832481 d!1832407)))

(assert (=> bs!1373876 (= lambda!318768 lambda!318759)))

(declare-fun bs!1373877 () Bool)

(assert (= bs!1373877 (and d!1832481 d!1832383)))

(assert (=> bs!1373877 (= lambda!318768 lambda!318758)))

(declare-fun bs!1373878 () Bool)

(assert (= bs!1373878 (and d!1832481 d!1832323)))

(assert (=> bs!1373878 (= lambda!318768 lambda!318723)))

(declare-fun bs!1373879 () Bool)

(assert (= bs!1373879 (and d!1832481 d!1832359)))

(assert (=> bs!1373879 (= lambda!318768 lambda!318754)))

(declare-fun b!5824523 () Bool)

(declare-fun e!3574307 () Regex!15875)

(assert (=> b!5824523 (= e!3574307 (h!70248 (t!377279 (unfocusZipperList!1296 zl!343))))))

(declare-fun b!5824524 () Bool)

(declare-fun e!3574308 () Bool)

(declare-fun lt!2302570 () Regex!15875)

(assert (=> b!5824524 (= e!3574308 (isUnion!752 lt!2302570))))

(declare-fun b!5824525 () Bool)

(assert (=> b!5824525 (= e!3574308 (= lt!2302570 (head!12312 (t!377279 (unfocusZipperList!1296 zl!343)))))))

(declare-fun b!5824526 () Bool)

(declare-fun e!3574310 () Bool)

(assert (=> b!5824526 (= e!3574310 (isEmpty!35669 (t!377279 (t!377279 (unfocusZipperList!1296 zl!343)))))))

(declare-fun b!5824527 () Bool)

(declare-fun e!3574306 () Bool)

(assert (=> b!5824527 (= e!3574306 (isEmptyLang!1322 lt!2302570))))

(declare-fun b!5824528 () Bool)

(assert (=> b!5824528 (= e!3574306 e!3574308)))

(declare-fun c!1032205 () Bool)

(assert (=> b!5824528 (= c!1032205 (isEmpty!35669 (tail!11397 (t!377279 (unfocusZipperList!1296 zl!343)))))))

(declare-fun b!5824529 () Bool)

(declare-fun e!3574309 () Bool)

(assert (=> b!5824529 (= e!3574309 e!3574306)))

(declare-fun c!1032203 () Bool)

(assert (=> b!5824529 (= c!1032203 (isEmpty!35669 (t!377279 (unfocusZipperList!1296 zl!343))))))

(declare-fun b!5824530 () Bool)

(declare-fun e!3574311 () Regex!15875)

(assert (=> b!5824530 (= e!3574311 (Union!15875 (h!70248 (t!377279 (unfocusZipperList!1296 zl!343))) (generalisedUnion!1719 (t!377279 (t!377279 (unfocusZipperList!1296 zl!343))))))))

(assert (=> d!1832481 e!3574309))

(declare-fun res!2455738 () Bool)

(assert (=> d!1832481 (=> (not res!2455738) (not e!3574309))))

(assert (=> d!1832481 (= res!2455738 (validRegex!7611 lt!2302570))))

(assert (=> d!1832481 (= lt!2302570 e!3574307)))

(declare-fun c!1032204 () Bool)

(assert (=> d!1832481 (= c!1032204 e!3574310)))

(declare-fun res!2455739 () Bool)

(assert (=> d!1832481 (=> (not res!2455739) (not e!3574310))))

(assert (=> d!1832481 (= res!2455739 ((_ is Cons!63800) (t!377279 (unfocusZipperList!1296 zl!343))))))

(assert (=> d!1832481 (forall!14966 (t!377279 (unfocusZipperList!1296 zl!343)) lambda!318768)))

(assert (=> d!1832481 (= (generalisedUnion!1719 (t!377279 (unfocusZipperList!1296 zl!343))) lt!2302570)))

(declare-fun b!5824531 () Bool)

(assert (=> b!5824531 (= e!3574311 EmptyLang!15875)))

(declare-fun b!5824532 () Bool)

(assert (=> b!5824532 (= e!3574307 e!3574311)))

(declare-fun c!1032202 () Bool)

(assert (=> b!5824532 (= c!1032202 ((_ is Cons!63800) (t!377279 (unfocusZipperList!1296 zl!343))))))

(assert (= (and d!1832481 res!2455739) b!5824526))

(assert (= (and d!1832481 c!1032204) b!5824523))

(assert (= (and d!1832481 (not c!1032204)) b!5824532))

(assert (= (and b!5824532 c!1032202) b!5824530))

(assert (= (and b!5824532 (not c!1032202)) b!5824531))

(assert (= (and d!1832481 res!2455738) b!5824529))

(assert (= (and b!5824529 c!1032203) b!5824527))

(assert (= (and b!5824529 (not c!1032203)) b!5824528))

(assert (= (and b!5824528 c!1032205) b!5824525))

(assert (= (and b!5824528 (not c!1032205)) b!5824524))

(declare-fun m!6757870 () Bool)

(assert (=> b!5824526 m!6757870))

(declare-fun m!6757872 () Bool)

(assert (=> b!5824528 m!6757872))

(assert (=> b!5824528 m!6757872))

(declare-fun m!6757874 () Bool)

(assert (=> b!5824528 m!6757874))

(declare-fun m!6757876 () Bool)

(assert (=> b!5824524 m!6757876))

(assert (=> b!5824529 m!6757510))

(declare-fun m!6757878 () Bool)

(assert (=> b!5824525 m!6757878))

(declare-fun m!6757880 () Bool)

(assert (=> b!5824527 m!6757880))

(declare-fun m!6757882 () Bool)

(assert (=> d!1832481 m!6757882))

(declare-fun m!6757884 () Bool)

(assert (=> d!1832481 m!6757884))

(declare-fun m!6757886 () Bool)

(assert (=> b!5824530 m!6757886))

(assert (=> b!5823923 d!1832481))

(declare-fun b!5824535 () Bool)

(declare-fun e!3574312 () Bool)

(declare-fun tp!1607726 () Bool)

(assert (=> b!5824535 (= e!3574312 tp!1607726)))

(declare-fun b!5824534 () Bool)

(declare-fun tp!1607724 () Bool)

(declare-fun tp!1607723 () Bool)

(assert (=> b!5824534 (= e!3574312 (and tp!1607724 tp!1607723))))

(declare-fun b!5824533 () Bool)

(assert (=> b!5824533 (= e!3574312 tp_is_empty!41003)))

(declare-fun b!5824536 () Bool)

(declare-fun tp!1607727 () Bool)

(declare-fun tp!1607725 () Bool)

(assert (=> b!5824536 (= e!3574312 (and tp!1607727 tp!1607725))))

(assert (=> b!5824270 (= tp!1607678 e!3574312)))

(assert (= (and b!5824270 ((_ is ElementMatch!15875) (reg!16204 (regOne!32262 r!7292)))) b!5824533))

(assert (= (and b!5824270 ((_ is Concat!24720) (reg!16204 (regOne!32262 r!7292)))) b!5824534))

(assert (= (and b!5824270 ((_ is Star!15875) (reg!16204 (regOne!32262 r!7292)))) b!5824535))

(assert (= (and b!5824270 ((_ is Union!15875) (reg!16204 (regOne!32262 r!7292)))) b!5824536))

(declare-fun b!5824539 () Bool)

(declare-fun e!3574315 () Bool)

(declare-fun tp!1607728 () Bool)

(assert (=> b!5824539 (= e!3574315 (and tp_is_empty!41003 tp!1607728))))

(assert (=> b!5824285 (= tp!1607693 e!3574315)))

(assert (= (and b!5824285 ((_ is Cons!63802) (t!377281 (t!377281 s!2326)))) b!5824539))

(declare-fun b!5824544 () Bool)

(declare-fun e!3574318 () Bool)

(declare-fun tp!1607732 () Bool)

(assert (=> b!5824544 (= e!3574318 tp!1607732)))

(declare-fun b!5824543 () Bool)

(declare-fun tp!1607730 () Bool)

(declare-fun tp!1607729 () Bool)

(assert (=> b!5824543 (= e!3574318 (and tp!1607730 tp!1607729))))

(declare-fun b!5824542 () Bool)

(assert (=> b!5824542 (= e!3574318 tp_is_empty!41003)))

(declare-fun b!5824545 () Bool)

(declare-fun tp!1607733 () Bool)

(declare-fun tp!1607731 () Bool)

(assert (=> b!5824545 (= e!3574318 (and tp!1607733 tp!1607731))))

(assert (=> b!5824271 (= tp!1607679 e!3574318)))

(assert (= (and b!5824271 ((_ is ElementMatch!15875) (regOne!32263 (regOne!32262 r!7292)))) b!5824542))

(assert (= (and b!5824271 ((_ is Concat!24720) (regOne!32263 (regOne!32262 r!7292)))) b!5824543))

(assert (= (and b!5824271 ((_ is Star!15875) (regOne!32263 (regOne!32262 r!7292)))) b!5824544))

(assert (= (and b!5824271 ((_ is Union!15875) (regOne!32263 (regOne!32262 r!7292)))) b!5824545))

(declare-fun b!5824548 () Bool)

(declare-fun e!3574319 () Bool)

(declare-fun tp!1607737 () Bool)

(assert (=> b!5824548 (= e!3574319 tp!1607737)))

(declare-fun b!5824547 () Bool)

(declare-fun tp!1607735 () Bool)

(declare-fun tp!1607734 () Bool)

(assert (=> b!5824547 (= e!3574319 (and tp!1607735 tp!1607734))))

(declare-fun b!5824546 () Bool)

(assert (=> b!5824546 (= e!3574319 tp_is_empty!41003)))

(declare-fun b!5824549 () Bool)

(declare-fun tp!1607738 () Bool)

(declare-fun tp!1607736 () Bool)

(assert (=> b!5824549 (= e!3574319 (and tp!1607738 tp!1607736))))

(assert (=> b!5824271 (= tp!1607677 e!3574319)))

(assert (= (and b!5824271 ((_ is ElementMatch!15875) (regTwo!32263 (regOne!32262 r!7292)))) b!5824546))

(assert (= (and b!5824271 ((_ is Concat!24720) (regTwo!32263 (regOne!32262 r!7292)))) b!5824547))

(assert (= (and b!5824271 ((_ is Star!15875) (regTwo!32263 (regOne!32262 r!7292)))) b!5824548))

(assert (= (and b!5824271 ((_ is Union!15875) (regTwo!32263 (regOne!32262 r!7292)))) b!5824549))

(declare-fun b!5824552 () Bool)

(declare-fun e!3574320 () Bool)

(declare-fun tp!1607742 () Bool)

(assert (=> b!5824552 (= e!3574320 tp!1607742)))

(declare-fun b!5824551 () Bool)

(declare-fun tp!1607740 () Bool)

(declare-fun tp!1607739 () Bool)

(assert (=> b!5824551 (= e!3574320 (and tp!1607740 tp!1607739))))

(declare-fun b!5824550 () Bool)

(assert (=> b!5824550 (= e!3574320 tp_is_empty!41003)))

(declare-fun b!5824553 () Bool)

(declare-fun tp!1607743 () Bool)

(declare-fun tp!1607741 () Bool)

(assert (=> b!5824553 (= e!3574320 (and tp!1607743 tp!1607741))))

(assert (=> b!5824269 (= tp!1607676 e!3574320)))

(assert (= (and b!5824269 ((_ is ElementMatch!15875) (regOne!32262 (regOne!32262 r!7292)))) b!5824550))

(assert (= (and b!5824269 ((_ is Concat!24720) (regOne!32262 (regOne!32262 r!7292)))) b!5824551))

(assert (= (and b!5824269 ((_ is Star!15875) (regOne!32262 (regOne!32262 r!7292)))) b!5824552))

(assert (= (and b!5824269 ((_ is Union!15875) (regOne!32262 (regOne!32262 r!7292)))) b!5824553))

(declare-fun b!5824556 () Bool)

(declare-fun e!3574321 () Bool)

(declare-fun tp!1607747 () Bool)

(assert (=> b!5824556 (= e!3574321 tp!1607747)))

(declare-fun b!5824555 () Bool)

(declare-fun tp!1607745 () Bool)

(declare-fun tp!1607744 () Bool)

(assert (=> b!5824555 (= e!3574321 (and tp!1607745 tp!1607744))))

(declare-fun b!5824554 () Bool)

(assert (=> b!5824554 (= e!3574321 tp_is_empty!41003)))

(declare-fun b!5824557 () Bool)

(declare-fun tp!1607748 () Bool)

(declare-fun tp!1607746 () Bool)

(assert (=> b!5824557 (= e!3574321 (and tp!1607748 tp!1607746))))

(assert (=> b!5824269 (= tp!1607675 e!3574321)))

(assert (= (and b!5824269 ((_ is ElementMatch!15875) (regTwo!32262 (regOne!32262 r!7292)))) b!5824554))

(assert (= (and b!5824269 ((_ is Concat!24720) (regTwo!32262 (regOne!32262 r!7292)))) b!5824555))

(assert (= (and b!5824269 ((_ is Star!15875) (regTwo!32262 (regOne!32262 r!7292)))) b!5824556))

(assert (= (and b!5824269 ((_ is Union!15875) (regTwo!32262 (regOne!32262 r!7292)))) b!5824557))

(declare-fun b!5824560 () Bool)

(declare-fun e!3574322 () Bool)

(declare-fun tp!1607752 () Bool)

(assert (=> b!5824560 (= e!3574322 tp!1607752)))

(declare-fun b!5824559 () Bool)

(declare-fun tp!1607750 () Bool)

(declare-fun tp!1607749 () Bool)

(assert (=> b!5824559 (= e!3574322 (and tp!1607750 tp!1607749))))

(declare-fun b!5824558 () Bool)

(assert (=> b!5824558 (= e!3574322 tp_is_empty!41003)))

(declare-fun b!5824561 () Bool)

(declare-fun tp!1607753 () Bool)

(declare-fun tp!1607751 () Bool)

(assert (=> b!5824561 (= e!3574322 (and tp!1607753 tp!1607751))))

(assert (=> b!5824306 (= tp!1607715 e!3574322)))

(assert (= (and b!5824306 ((_ is ElementMatch!15875) (h!70248 (exprs!5759 (h!70249 zl!343))))) b!5824558))

(assert (= (and b!5824306 ((_ is Concat!24720) (h!70248 (exprs!5759 (h!70249 zl!343))))) b!5824559))

(assert (= (and b!5824306 ((_ is Star!15875) (h!70248 (exprs!5759 (h!70249 zl!343))))) b!5824560))

(assert (= (and b!5824306 ((_ is Union!15875) (h!70248 (exprs!5759 (h!70249 zl!343))))) b!5824561))

(declare-fun b!5824562 () Bool)

(declare-fun e!3574323 () Bool)

(declare-fun tp!1607754 () Bool)

(declare-fun tp!1607755 () Bool)

(assert (=> b!5824562 (= e!3574323 (and tp!1607754 tp!1607755))))

(assert (=> b!5824306 (= tp!1607716 e!3574323)))

(assert (= (and b!5824306 ((_ is Cons!63800) (t!377279 (exprs!5759 (h!70249 zl!343))))) b!5824562))

(declare-fun b!5824565 () Bool)

(declare-fun e!3574324 () Bool)

(declare-fun tp!1607759 () Bool)

(assert (=> b!5824565 (= e!3574324 tp!1607759)))

(declare-fun b!5824564 () Bool)

(declare-fun tp!1607757 () Bool)

(declare-fun tp!1607756 () Bool)

(assert (=> b!5824564 (= e!3574324 (and tp!1607757 tp!1607756))))

(declare-fun b!5824563 () Bool)

(assert (=> b!5824563 (= e!3574324 tp_is_empty!41003)))

(declare-fun b!5824566 () Bool)

(declare-fun tp!1607760 () Bool)

(declare-fun tp!1607758 () Bool)

(assert (=> b!5824566 (= e!3574324 (and tp!1607760 tp!1607758))))

(assert (=> b!5824301 (= tp!1607709 e!3574324)))

(assert (= (and b!5824301 ((_ is ElementMatch!15875) (regOne!32263 (regTwo!32263 r!7292)))) b!5824563))

(assert (= (and b!5824301 ((_ is Concat!24720) (regOne!32263 (regTwo!32263 r!7292)))) b!5824564))

(assert (= (and b!5824301 ((_ is Star!15875) (regOne!32263 (regTwo!32263 r!7292)))) b!5824565))

(assert (= (and b!5824301 ((_ is Union!15875) (regOne!32263 (regTwo!32263 r!7292)))) b!5824566))

(declare-fun b!5824569 () Bool)

(declare-fun e!3574325 () Bool)

(declare-fun tp!1607764 () Bool)

(assert (=> b!5824569 (= e!3574325 tp!1607764)))

(declare-fun b!5824568 () Bool)

(declare-fun tp!1607762 () Bool)

(declare-fun tp!1607761 () Bool)

(assert (=> b!5824568 (= e!3574325 (and tp!1607762 tp!1607761))))

(declare-fun b!5824567 () Bool)

(assert (=> b!5824567 (= e!3574325 tp_is_empty!41003)))

(declare-fun b!5824570 () Bool)

(declare-fun tp!1607765 () Bool)

(declare-fun tp!1607763 () Bool)

(assert (=> b!5824570 (= e!3574325 (and tp!1607765 tp!1607763))))

(assert (=> b!5824301 (= tp!1607707 e!3574325)))

(assert (= (and b!5824301 ((_ is ElementMatch!15875) (regTwo!32263 (regTwo!32263 r!7292)))) b!5824567))

(assert (= (and b!5824301 ((_ is Concat!24720) (regTwo!32263 (regTwo!32263 r!7292)))) b!5824568))

(assert (= (and b!5824301 ((_ is Star!15875) (regTwo!32263 (regTwo!32263 r!7292)))) b!5824569))

(assert (= (and b!5824301 ((_ is Union!15875) (regTwo!32263 (regTwo!32263 r!7292)))) b!5824570))

(declare-fun b!5824571 () Bool)

(declare-fun e!3574326 () Bool)

(declare-fun tp!1607766 () Bool)

(declare-fun tp!1607767 () Bool)

(assert (=> b!5824571 (= e!3574326 (and tp!1607766 tp!1607767))))

(assert (=> b!5824280 (= tp!1607690 e!3574326)))

(assert (= (and b!5824280 ((_ is Cons!63800) (exprs!5759 setElem!39370))) b!5824571))

(declare-fun b!5824574 () Bool)

(declare-fun e!3574327 () Bool)

(declare-fun tp!1607771 () Bool)

(assert (=> b!5824574 (= e!3574327 tp!1607771)))

(declare-fun b!5824573 () Bool)

(declare-fun tp!1607769 () Bool)

(declare-fun tp!1607768 () Bool)

(assert (=> b!5824573 (= e!3574327 (and tp!1607769 tp!1607768))))

(declare-fun b!5824572 () Bool)

(assert (=> b!5824572 (= e!3574327 tp_is_empty!41003)))

(declare-fun b!5824575 () Bool)

(declare-fun tp!1607772 () Bool)

(declare-fun tp!1607770 () Bool)

(assert (=> b!5824575 (= e!3574327 (and tp!1607772 tp!1607770))))

(assert (=> b!5824257 (= tp!1607663 e!3574327)))

(assert (= (and b!5824257 ((_ is ElementMatch!15875) (h!70248 (exprs!5759 setElem!39364)))) b!5824572))

(assert (= (and b!5824257 ((_ is Concat!24720) (h!70248 (exprs!5759 setElem!39364)))) b!5824573))

(assert (= (and b!5824257 ((_ is Star!15875) (h!70248 (exprs!5759 setElem!39364)))) b!5824574))

(assert (= (and b!5824257 ((_ is Union!15875) (h!70248 (exprs!5759 setElem!39364)))) b!5824575))

(declare-fun b!5824576 () Bool)

(declare-fun e!3574328 () Bool)

(declare-fun tp!1607773 () Bool)

(declare-fun tp!1607774 () Bool)

(assert (=> b!5824576 (= e!3574328 (and tp!1607773 tp!1607774))))

(assert (=> b!5824257 (= tp!1607664 e!3574328)))

(assert (= (and b!5824257 ((_ is Cons!63800) (t!377279 (exprs!5759 setElem!39364)))) b!5824576))

(declare-fun b!5824578 () Bool)

(declare-fun e!3574330 () Bool)

(declare-fun tp!1607775 () Bool)

(assert (=> b!5824578 (= e!3574330 tp!1607775)))

(declare-fun tp!1607776 () Bool)

(declare-fun b!5824577 () Bool)

(declare-fun e!3574329 () Bool)

(assert (=> b!5824577 (= e!3574329 (and (inv!82934 (h!70249 (t!377280 (t!377280 zl!343)))) e!3574330 tp!1607776))))

(assert (=> b!5824292 (= tp!1607699 e!3574329)))

(assert (= b!5824577 b!5824578))

(assert (= (and b!5824292 ((_ is Cons!63801) (t!377280 (t!377280 zl!343)))) b!5824577))

(declare-fun m!6757888 () Bool)

(assert (=> b!5824577 m!6757888))

(declare-fun b!5824581 () Bool)

(declare-fun e!3574333 () Bool)

(declare-fun tp!1607777 () Bool)

(declare-fun tp!1607778 () Bool)

(assert (=> b!5824581 (= e!3574333 (and tp!1607777 tp!1607778))))

(assert (=> b!5824293 (= tp!1607698 e!3574333)))

(assert (= (and b!5824293 ((_ is Cons!63800) (exprs!5759 (h!70249 (t!377280 zl!343))))) b!5824581))

(declare-fun b!5824584 () Bool)

(declare-fun e!3574334 () Bool)

(declare-fun tp!1607782 () Bool)

(assert (=> b!5824584 (= e!3574334 tp!1607782)))

(declare-fun b!5824583 () Bool)

(declare-fun tp!1607780 () Bool)

(declare-fun tp!1607779 () Bool)

(assert (=> b!5824583 (= e!3574334 (and tp!1607780 tp!1607779))))

(declare-fun b!5824582 () Bool)

(assert (=> b!5824582 (= e!3574334 tp_is_empty!41003)))

(declare-fun b!5824585 () Bool)

(declare-fun tp!1607783 () Bool)

(declare-fun tp!1607781 () Bool)

(assert (=> b!5824585 (= e!3574334 (and tp!1607783 tp!1607781))))

(assert (=> b!5824300 (= tp!1607708 e!3574334)))

(assert (= (and b!5824300 ((_ is ElementMatch!15875) (reg!16204 (regTwo!32263 r!7292)))) b!5824582))

(assert (= (and b!5824300 ((_ is Concat!24720) (reg!16204 (regTwo!32263 r!7292)))) b!5824583))

(assert (= (and b!5824300 ((_ is Star!15875) (reg!16204 (regTwo!32263 r!7292)))) b!5824584))

(assert (= (and b!5824300 ((_ is Union!15875) (reg!16204 (regTwo!32263 r!7292)))) b!5824585))

(declare-fun condSetEmpty!39371 () Bool)

(assert (=> setNonEmpty!39370 (= condSetEmpty!39371 (= setRest!39370 ((as const (Array Context!10518 Bool)) false)))))

(declare-fun setRes!39371 () Bool)

(assert (=> setNonEmpty!39370 (= tp!1607689 setRes!39371)))

(declare-fun setIsEmpty!39371 () Bool)

(assert (=> setIsEmpty!39371 setRes!39371))

(declare-fun setElem!39371 () Context!10518)

(declare-fun tp!1607784 () Bool)

(declare-fun e!3574335 () Bool)

(declare-fun setNonEmpty!39371 () Bool)

(assert (=> setNonEmpty!39371 (= setRes!39371 (and tp!1607784 (inv!82934 setElem!39371) e!3574335))))

(declare-fun setRest!39371 () (InoxSet Context!10518))

(assert (=> setNonEmpty!39371 (= setRest!39370 ((_ map or) (store ((as const (Array Context!10518 Bool)) false) setElem!39371 true) setRest!39371))))

(declare-fun b!5824586 () Bool)

(declare-fun tp!1607785 () Bool)

(assert (=> b!5824586 (= e!3574335 tp!1607785)))

(assert (= (and setNonEmpty!39370 condSetEmpty!39371) setIsEmpty!39371))

(assert (= (and setNonEmpty!39370 (not condSetEmpty!39371)) setNonEmpty!39371))

(assert (= setNonEmpty!39371 b!5824586))

(declare-fun m!6757894 () Bool)

(assert (=> setNonEmpty!39371 m!6757894))

(declare-fun b!5824589 () Bool)

(declare-fun e!3574336 () Bool)

(declare-fun tp!1607789 () Bool)

(assert (=> b!5824589 (= e!3574336 tp!1607789)))

(declare-fun b!5824588 () Bool)

(declare-fun tp!1607787 () Bool)

(declare-fun tp!1607786 () Bool)

(assert (=> b!5824588 (= e!3574336 (and tp!1607787 tp!1607786))))

(declare-fun b!5824587 () Bool)

(assert (=> b!5824587 (= e!3574336 tp_is_empty!41003)))

(declare-fun b!5824590 () Bool)

(declare-fun tp!1607790 () Bool)

(declare-fun tp!1607788 () Bool)

(assert (=> b!5824590 (= e!3574336 (and tp!1607790 tp!1607788))))

(assert (=> b!5824299 (= tp!1607706 e!3574336)))

(assert (= (and b!5824299 ((_ is ElementMatch!15875) (regOne!32262 (regTwo!32263 r!7292)))) b!5824587))

(assert (= (and b!5824299 ((_ is Concat!24720) (regOne!32262 (regTwo!32263 r!7292)))) b!5824588))

(assert (= (and b!5824299 ((_ is Star!15875) (regOne!32262 (regTwo!32263 r!7292)))) b!5824589))

(assert (= (and b!5824299 ((_ is Union!15875) (regOne!32262 (regTwo!32263 r!7292)))) b!5824590))

(declare-fun b!5824593 () Bool)

(declare-fun e!3574337 () Bool)

(declare-fun tp!1607794 () Bool)

(assert (=> b!5824593 (= e!3574337 tp!1607794)))

(declare-fun b!5824592 () Bool)

(declare-fun tp!1607792 () Bool)

(declare-fun tp!1607791 () Bool)

(assert (=> b!5824592 (= e!3574337 (and tp!1607792 tp!1607791))))

(declare-fun b!5824591 () Bool)

(assert (=> b!5824591 (= e!3574337 tp_is_empty!41003)))

(declare-fun b!5824594 () Bool)

(declare-fun tp!1607795 () Bool)

(declare-fun tp!1607793 () Bool)

(assert (=> b!5824594 (= e!3574337 (and tp!1607795 tp!1607793))))

(assert (=> b!5824299 (= tp!1607705 e!3574337)))

(assert (= (and b!5824299 ((_ is ElementMatch!15875) (regTwo!32262 (regTwo!32263 r!7292)))) b!5824591))

(assert (= (and b!5824299 ((_ is Concat!24720) (regTwo!32262 (regTwo!32263 r!7292)))) b!5824592))

(assert (= (and b!5824299 ((_ is Star!15875) (regTwo!32262 (regTwo!32263 r!7292)))) b!5824593))

(assert (= (and b!5824299 ((_ is Union!15875) (regTwo!32262 (regTwo!32263 r!7292)))) b!5824594))

(declare-fun b!5824597 () Bool)

(declare-fun e!3574338 () Bool)

(declare-fun tp!1607799 () Bool)

(assert (=> b!5824597 (= e!3574338 tp!1607799)))

(declare-fun b!5824596 () Bool)

(declare-fun tp!1607797 () Bool)

(declare-fun tp!1607796 () Bool)

(assert (=> b!5824596 (= e!3574338 (and tp!1607797 tp!1607796))))

(declare-fun b!5824595 () Bool)

(assert (=> b!5824595 (= e!3574338 tp_is_empty!41003)))

(declare-fun b!5824598 () Bool)

(declare-fun tp!1607800 () Bool)

(declare-fun tp!1607798 () Bool)

(assert (=> b!5824598 (= e!3574338 (and tp!1607800 tp!1607798))))

(assert (=> b!5824275 (= tp!1607684 e!3574338)))

(assert (= (and b!5824275 ((_ is ElementMatch!15875) (regOne!32263 (regTwo!32262 r!7292)))) b!5824595))

(assert (= (and b!5824275 ((_ is Concat!24720) (regOne!32263 (regTwo!32262 r!7292)))) b!5824596))

(assert (= (and b!5824275 ((_ is Star!15875) (regOne!32263 (regTwo!32262 r!7292)))) b!5824597))

(assert (= (and b!5824275 ((_ is Union!15875) (regOne!32263 (regTwo!32262 r!7292)))) b!5824598))

(declare-fun b!5824601 () Bool)

(declare-fun e!3574339 () Bool)

(declare-fun tp!1607804 () Bool)

(assert (=> b!5824601 (= e!3574339 tp!1607804)))

(declare-fun b!5824600 () Bool)

(declare-fun tp!1607802 () Bool)

(declare-fun tp!1607801 () Bool)

(assert (=> b!5824600 (= e!3574339 (and tp!1607802 tp!1607801))))

(declare-fun b!5824599 () Bool)

(assert (=> b!5824599 (= e!3574339 tp_is_empty!41003)))

(declare-fun b!5824602 () Bool)

(declare-fun tp!1607805 () Bool)

(declare-fun tp!1607803 () Bool)

(assert (=> b!5824602 (= e!3574339 (and tp!1607805 tp!1607803))))

(assert (=> b!5824275 (= tp!1607682 e!3574339)))

(assert (= (and b!5824275 ((_ is ElementMatch!15875) (regTwo!32263 (regTwo!32262 r!7292)))) b!5824599))

(assert (= (and b!5824275 ((_ is Concat!24720) (regTwo!32263 (regTwo!32262 r!7292)))) b!5824600))

(assert (= (and b!5824275 ((_ is Star!15875) (regTwo!32263 (regTwo!32262 r!7292)))) b!5824601))

(assert (= (and b!5824275 ((_ is Union!15875) (regTwo!32263 (regTwo!32262 r!7292)))) b!5824602))

(declare-fun b!5824607 () Bool)

(declare-fun e!3574342 () Bool)

(declare-fun tp!1607809 () Bool)

(assert (=> b!5824607 (= e!3574342 tp!1607809)))

(declare-fun b!5824606 () Bool)

(declare-fun tp!1607807 () Bool)

(declare-fun tp!1607806 () Bool)

(assert (=> b!5824606 (= e!3574342 (and tp!1607807 tp!1607806))))

(declare-fun b!5824605 () Bool)

(assert (=> b!5824605 (= e!3574342 tp_is_empty!41003)))

(declare-fun b!5824608 () Bool)

(declare-fun tp!1607810 () Bool)

(declare-fun tp!1607808 () Bool)

(assert (=> b!5824608 (= e!3574342 (and tp!1607810 tp!1607808))))

(assert (=> b!5824274 (= tp!1607683 e!3574342)))

(assert (= (and b!5824274 ((_ is ElementMatch!15875) (reg!16204 (regTwo!32262 r!7292)))) b!5824605))

(assert (= (and b!5824274 ((_ is Concat!24720) (reg!16204 (regTwo!32262 r!7292)))) b!5824606))

(assert (= (and b!5824274 ((_ is Star!15875) (reg!16204 (regTwo!32262 r!7292)))) b!5824607))

(assert (= (and b!5824274 ((_ is Union!15875) (reg!16204 (regTwo!32262 r!7292)))) b!5824608))

(declare-fun b!5824613 () Bool)

(declare-fun e!3574345 () Bool)

(declare-fun tp!1607818 () Bool)

(assert (=> b!5824613 (= e!3574345 tp!1607818)))

(declare-fun b!5824612 () Bool)

(declare-fun tp!1607816 () Bool)

(declare-fun tp!1607815 () Bool)

(assert (=> b!5824612 (= e!3574345 (and tp!1607816 tp!1607815))))

(declare-fun b!5824611 () Bool)

(assert (=> b!5824611 (= e!3574345 tp_is_empty!41003)))

(declare-fun b!5824614 () Bool)

(declare-fun tp!1607819 () Bool)

(declare-fun tp!1607817 () Bool)

(assert (=> b!5824614 (= e!3574345 (and tp!1607819 tp!1607817))))

(assert (=> b!5824273 (= tp!1607681 e!3574345)))

(assert (= (and b!5824273 ((_ is ElementMatch!15875) (regOne!32262 (regTwo!32262 r!7292)))) b!5824611))

(assert (= (and b!5824273 ((_ is Concat!24720) (regOne!32262 (regTwo!32262 r!7292)))) b!5824612))

(assert (= (and b!5824273 ((_ is Star!15875) (regOne!32262 (regTwo!32262 r!7292)))) b!5824613))

(assert (= (and b!5824273 ((_ is Union!15875) (regOne!32262 (regTwo!32262 r!7292)))) b!5824614))

(declare-fun b!5824619 () Bool)

(declare-fun e!3574348 () Bool)

(declare-fun tp!1607823 () Bool)

(assert (=> b!5824619 (= e!3574348 tp!1607823)))

(declare-fun b!5824618 () Bool)

(declare-fun tp!1607821 () Bool)

(declare-fun tp!1607820 () Bool)

(assert (=> b!5824618 (= e!3574348 (and tp!1607821 tp!1607820))))

(declare-fun b!5824617 () Bool)

(assert (=> b!5824617 (= e!3574348 tp_is_empty!41003)))

(declare-fun b!5824620 () Bool)

(declare-fun tp!1607824 () Bool)

(declare-fun tp!1607822 () Bool)

(assert (=> b!5824620 (= e!3574348 (and tp!1607824 tp!1607822))))

(assert (=> b!5824273 (= tp!1607680 e!3574348)))

(assert (= (and b!5824273 ((_ is ElementMatch!15875) (regTwo!32262 (regTwo!32262 r!7292)))) b!5824617))

(assert (= (and b!5824273 ((_ is Concat!24720) (regTwo!32262 (regTwo!32262 r!7292)))) b!5824618))

(assert (= (and b!5824273 ((_ is Star!15875) (regTwo!32262 (regTwo!32262 r!7292)))) b!5824619))

(assert (= (and b!5824273 ((_ is Union!15875) (regTwo!32262 (regTwo!32262 r!7292)))) b!5824620))

(declare-fun b!5824623 () Bool)

(declare-fun e!3574349 () Bool)

(declare-fun tp!1607828 () Bool)

(assert (=> b!5824623 (= e!3574349 tp!1607828)))

(declare-fun b!5824622 () Bool)

(declare-fun tp!1607826 () Bool)

(declare-fun tp!1607825 () Bool)

(assert (=> b!5824622 (= e!3574349 (and tp!1607826 tp!1607825))))

(declare-fun b!5824621 () Bool)

(assert (=> b!5824621 (= e!3574349 tp_is_empty!41003)))

(declare-fun b!5824624 () Bool)

(declare-fun tp!1607829 () Bool)

(declare-fun tp!1607827 () Bool)

(assert (=> b!5824624 (= e!3574349 (and tp!1607829 tp!1607827))))

(assert (=> b!5824296 (= tp!1607703 e!3574349)))

(assert (= (and b!5824296 ((_ is ElementMatch!15875) (reg!16204 (regOne!32263 r!7292)))) b!5824621))

(assert (= (and b!5824296 ((_ is Concat!24720) (reg!16204 (regOne!32263 r!7292)))) b!5824622))

(assert (= (and b!5824296 ((_ is Star!15875) (reg!16204 (regOne!32263 r!7292)))) b!5824623))

(assert (= (and b!5824296 ((_ is Union!15875) (reg!16204 (regOne!32263 r!7292)))) b!5824624))

(declare-fun b!5824627 () Bool)

(declare-fun e!3574350 () Bool)

(declare-fun tp!1607833 () Bool)

(assert (=> b!5824627 (= e!3574350 tp!1607833)))

(declare-fun b!5824626 () Bool)

(declare-fun tp!1607831 () Bool)

(declare-fun tp!1607830 () Bool)

(assert (=> b!5824626 (= e!3574350 (and tp!1607831 tp!1607830))))

(declare-fun b!5824625 () Bool)

(assert (=> b!5824625 (= e!3574350 tp_is_empty!41003)))

(declare-fun b!5824628 () Bool)

(declare-fun tp!1607834 () Bool)

(declare-fun tp!1607832 () Bool)

(assert (=> b!5824628 (= e!3574350 (and tp!1607834 tp!1607832))))

(assert (=> b!5824297 (= tp!1607704 e!3574350)))

(assert (= (and b!5824297 ((_ is ElementMatch!15875) (regOne!32263 (regOne!32263 r!7292)))) b!5824625))

(assert (= (and b!5824297 ((_ is Concat!24720) (regOne!32263 (regOne!32263 r!7292)))) b!5824626))

(assert (= (and b!5824297 ((_ is Star!15875) (regOne!32263 (regOne!32263 r!7292)))) b!5824627))

(assert (= (and b!5824297 ((_ is Union!15875) (regOne!32263 (regOne!32263 r!7292)))) b!5824628))

(declare-fun b!5824631 () Bool)

(declare-fun e!3574351 () Bool)

(declare-fun tp!1607838 () Bool)

(assert (=> b!5824631 (= e!3574351 tp!1607838)))

(declare-fun b!5824630 () Bool)

(declare-fun tp!1607836 () Bool)

(declare-fun tp!1607835 () Bool)

(assert (=> b!5824630 (= e!3574351 (and tp!1607836 tp!1607835))))

(declare-fun b!5824629 () Bool)

(assert (=> b!5824629 (= e!3574351 tp_is_empty!41003)))

(declare-fun b!5824632 () Bool)

(declare-fun tp!1607839 () Bool)

(declare-fun tp!1607837 () Bool)

(assert (=> b!5824632 (= e!3574351 (and tp!1607839 tp!1607837))))

(assert (=> b!5824297 (= tp!1607702 e!3574351)))

(assert (= (and b!5824297 ((_ is ElementMatch!15875) (regTwo!32263 (regOne!32263 r!7292)))) b!5824629))

(assert (= (and b!5824297 ((_ is Concat!24720) (regTwo!32263 (regOne!32263 r!7292)))) b!5824630))

(assert (= (and b!5824297 ((_ is Star!15875) (regTwo!32263 (regOne!32263 r!7292)))) b!5824631))

(assert (= (and b!5824297 ((_ is Union!15875) (regTwo!32263 (regOne!32263 r!7292)))) b!5824632))

(declare-fun b!5824635 () Bool)

(declare-fun e!3574352 () Bool)

(declare-fun tp!1607843 () Bool)

(assert (=> b!5824635 (= e!3574352 tp!1607843)))

(declare-fun b!5824634 () Bool)

(declare-fun tp!1607841 () Bool)

(declare-fun tp!1607840 () Bool)

(assert (=> b!5824634 (= e!3574352 (and tp!1607841 tp!1607840))))

(declare-fun b!5824633 () Bool)

(assert (=> b!5824633 (= e!3574352 tp_is_empty!41003)))

(declare-fun b!5824636 () Bool)

(declare-fun tp!1607844 () Bool)

(declare-fun tp!1607842 () Bool)

(assert (=> b!5824636 (= e!3574352 (and tp!1607844 tp!1607842))))

(assert (=> b!5824295 (= tp!1607701 e!3574352)))

(assert (= (and b!5824295 ((_ is ElementMatch!15875) (regOne!32262 (regOne!32263 r!7292)))) b!5824633))

(assert (= (and b!5824295 ((_ is Concat!24720) (regOne!32262 (regOne!32263 r!7292)))) b!5824634))

(assert (= (and b!5824295 ((_ is Star!15875) (regOne!32262 (regOne!32263 r!7292)))) b!5824635))

(assert (= (and b!5824295 ((_ is Union!15875) (regOne!32262 (regOne!32263 r!7292)))) b!5824636))

(declare-fun b!5824639 () Bool)

(declare-fun e!3574353 () Bool)

(declare-fun tp!1607848 () Bool)

(assert (=> b!5824639 (= e!3574353 tp!1607848)))

(declare-fun b!5824638 () Bool)

(declare-fun tp!1607846 () Bool)

(declare-fun tp!1607845 () Bool)

(assert (=> b!5824638 (= e!3574353 (and tp!1607846 tp!1607845))))

(declare-fun b!5824637 () Bool)

(assert (=> b!5824637 (= e!3574353 tp_is_empty!41003)))

(declare-fun b!5824640 () Bool)

(declare-fun tp!1607849 () Bool)

(declare-fun tp!1607847 () Bool)

(assert (=> b!5824640 (= e!3574353 (and tp!1607849 tp!1607847))))

(assert (=> b!5824295 (= tp!1607700 e!3574353)))

(assert (= (and b!5824295 ((_ is ElementMatch!15875) (regTwo!32262 (regOne!32263 r!7292)))) b!5824637))

(assert (= (and b!5824295 ((_ is Concat!24720) (regTwo!32262 (regOne!32263 r!7292)))) b!5824638))

(assert (= (and b!5824295 ((_ is Star!15875) (regTwo!32262 (regOne!32263 r!7292)))) b!5824639))

(assert (= (and b!5824295 ((_ is Union!15875) (regTwo!32262 (regOne!32263 r!7292)))) b!5824640))

(declare-fun b!5824646 () Bool)

(declare-fun e!3574357 () Bool)

(declare-fun tp!1607855 () Bool)

(assert (=> b!5824646 (= e!3574357 tp!1607855)))

(declare-fun b!5824645 () Bool)

(declare-fun tp!1607853 () Bool)

(declare-fun tp!1607852 () Bool)

(assert (=> b!5824645 (= e!3574357 (and tp!1607853 tp!1607852))))

(declare-fun b!5824644 () Bool)

(assert (=> b!5824644 (= e!3574357 tp_is_empty!41003)))

(declare-fun b!5824647 () Bool)

(declare-fun tp!1607856 () Bool)

(declare-fun tp!1607854 () Bool)

(assert (=> b!5824647 (= e!3574357 (and tp!1607856 tp!1607854))))

(assert (=> b!5824304 (= tp!1607713 e!3574357)))

(assert (= (and b!5824304 ((_ is ElementMatch!15875) (reg!16204 (reg!16204 r!7292)))) b!5824644))

(assert (= (and b!5824304 ((_ is Concat!24720) (reg!16204 (reg!16204 r!7292)))) b!5824645))

(assert (= (and b!5824304 ((_ is Star!15875) (reg!16204 (reg!16204 r!7292)))) b!5824646))

(assert (= (and b!5824304 ((_ is Union!15875) (reg!16204 (reg!16204 r!7292)))) b!5824647))

(declare-fun b!5824650 () Bool)

(declare-fun e!3574358 () Bool)

(declare-fun tp!1607860 () Bool)

(assert (=> b!5824650 (= e!3574358 tp!1607860)))

(declare-fun b!5824649 () Bool)

(declare-fun tp!1607858 () Bool)

(declare-fun tp!1607857 () Bool)

(assert (=> b!5824649 (= e!3574358 (and tp!1607858 tp!1607857))))

(declare-fun b!5824648 () Bool)

(assert (=> b!5824648 (= e!3574358 tp_is_empty!41003)))

(declare-fun b!5824651 () Bool)

(declare-fun tp!1607861 () Bool)

(declare-fun tp!1607859 () Bool)

(assert (=> b!5824651 (= e!3574358 (and tp!1607861 tp!1607859))))

(assert (=> b!5824305 (= tp!1607714 e!3574358)))

(assert (= (and b!5824305 ((_ is ElementMatch!15875) (regOne!32263 (reg!16204 r!7292)))) b!5824648))

(assert (= (and b!5824305 ((_ is Concat!24720) (regOne!32263 (reg!16204 r!7292)))) b!5824649))

(assert (= (and b!5824305 ((_ is Star!15875) (regOne!32263 (reg!16204 r!7292)))) b!5824650))

(assert (= (and b!5824305 ((_ is Union!15875) (regOne!32263 (reg!16204 r!7292)))) b!5824651))

(declare-fun b!5824654 () Bool)

(declare-fun e!3574359 () Bool)

(declare-fun tp!1607865 () Bool)

(assert (=> b!5824654 (= e!3574359 tp!1607865)))

(declare-fun b!5824653 () Bool)

(declare-fun tp!1607863 () Bool)

(declare-fun tp!1607862 () Bool)

(assert (=> b!5824653 (= e!3574359 (and tp!1607863 tp!1607862))))

(declare-fun b!5824652 () Bool)

(assert (=> b!5824652 (= e!3574359 tp_is_empty!41003)))

(declare-fun b!5824655 () Bool)

(declare-fun tp!1607866 () Bool)

(declare-fun tp!1607864 () Bool)

(assert (=> b!5824655 (= e!3574359 (and tp!1607866 tp!1607864))))

(assert (=> b!5824305 (= tp!1607712 e!3574359)))

(assert (= (and b!5824305 ((_ is ElementMatch!15875) (regTwo!32263 (reg!16204 r!7292)))) b!5824652))

(assert (= (and b!5824305 ((_ is Concat!24720) (regTwo!32263 (reg!16204 r!7292)))) b!5824653))

(assert (= (and b!5824305 ((_ is Star!15875) (regTwo!32263 (reg!16204 r!7292)))) b!5824654))

(assert (= (and b!5824305 ((_ is Union!15875) (regTwo!32263 (reg!16204 r!7292)))) b!5824655))

(declare-fun b!5824658 () Bool)

(declare-fun e!3574360 () Bool)

(declare-fun tp!1607870 () Bool)

(assert (=> b!5824658 (= e!3574360 tp!1607870)))

(declare-fun b!5824657 () Bool)

(declare-fun tp!1607868 () Bool)

(declare-fun tp!1607867 () Bool)

(assert (=> b!5824657 (= e!3574360 (and tp!1607868 tp!1607867))))

(declare-fun b!5824656 () Bool)

(assert (=> b!5824656 (= e!3574360 tp_is_empty!41003)))

(declare-fun b!5824659 () Bool)

(declare-fun tp!1607871 () Bool)

(declare-fun tp!1607869 () Bool)

(assert (=> b!5824659 (= e!3574360 (and tp!1607871 tp!1607869))))

(assert (=> b!5824303 (= tp!1607711 e!3574360)))

(assert (= (and b!5824303 ((_ is ElementMatch!15875) (regOne!32262 (reg!16204 r!7292)))) b!5824656))

(assert (= (and b!5824303 ((_ is Concat!24720) (regOne!32262 (reg!16204 r!7292)))) b!5824657))

(assert (= (and b!5824303 ((_ is Star!15875) (regOne!32262 (reg!16204 r!7292)))) b!5824658))

(assert (= (and b!5824303 ((_ is Union!15875) (regOne!32262 (reg!16204 r!7292)))) b!5824659))

(declare-fun b!5824662 () Bool)

(declare-fun e!3574361 () Bool)

(declare-fun tp!1607875 () Bool)

(assert (=> b!5824662 (= e!3574361 tp!1607875)))

(declare-fun b!5824661 () Bool)

(declare-fun tp!1607873 () Bool)

(declare-fun tp!1607872 () Bool)

(assert (=> b!5824661 (= e!3574361 (and tp!1607873 tp!1607872))))

(declare-fun b!5824660 () Bool)

(assert (=> b!5824660 (= e!3574361 tp_is_empty!41003)))

(declare-fun b!5824663 () Bool)

(declare-fun tp!1607876 () Bool)

(declare-fun tp!1607874 () Bool)

(assert (=> b!5824663 (= e!3574361 (and tp!1607876 tp!1607874))))

(assert (=> b!5824303 (= tp!1607710 e!3574361)))

(assert (= (and b!5824303 ((_ is ElementMatch!15875) (regTwo!32262 (reg!16204 r!7292)))) b!5824660))

(assert (= (and b!5824303 ((_ is Concat!24720) (regTwo!32262 (reg!16204 r!7292)))) b!5824661))

(assert (= (and b!5824303 ((_ is Star!15875) (regTwo!32262 (reg!16204 r!7292)))) b!5824662))

(assert (= (and b!5824303 ((_ is Union!15875) (regTwo!32262 (reg!16204 r!7292)))) b!5824663))

(declare-fun b_lambda!219549 () Bool)

(assert (= b_lambda!219539 (or d!1832309 b_lambda!219549)))

(declare-fun bs!1373884 () Bool)

(declare-fun d!1832495 () Bool)

(assert (= bs!1373884 (and d!1832495 d!1832309)))

(assert (=> bs!1373884 (= (dynLambda!24967 lambda!318720 (h!70248 (exprs!5759 (Context!10519 (Cons!63800 r!7292 Nil!63800))))) (validRegex!7611 (h!70248 (exprs!5759 (Context!10519 (Cons!63800 r!7292 Nil!63800))))))))

(declare-fun m!6757902 () Bool)

(assert (=> bs!1373884 m!6757902))

(assert (=> b!5824338 d!1832495))

(declare-fun b_lambda!219551 () Bool)

(assert (= b_lambda!219541 (or d!1832339 b_lambda!219551)))

(declare-fun bs!1373887 () Bool)

(declare-fun d!1832497 () Bool)

(assert (= bs!1373887 (and d!1832497 d!1832339)))

(assert (=> bs!1373887 (= (dynLambda!24967 lambda!318738 (h!70248 (exprs!5759 (h!70249 zl!343)))) (validRegex!7611 (h!70248 (exprs!5759 (h!70249 zl!343)))))))

(declare-fun m!6757904 () Bool)

(assert (=> bs!1373887 m!6757904))

(assert (=> b!5824349 d!1832497))

(declare-fun b_lambda!219553 () Bool)

(assert (= b_lambda!219535 (or d!1832359 b_lambda!219553)))

(declare-fun bs!1373890 () Bool)

(declare-fun d!1832499 () Bool)

(assert (= bs!1373890 (and d!1832499 d!1832359)))

(assert (=> bs!1373890 (= (dynLambda!24967 lambda!318754 (h!70248 (exprs!5759 (h!70249 zl!343)))) (validRegex!7611 (h!70248 (exprs!5759 (h!70249 zl!343)))))))

(assert (=> bs!1373890 m!6757904))

(assert (=> b!5824313 d!1832499))

(declare-fun b_lambda!219555 () Bool)

(assert (= b_lambda!219533 (or d!1832343 b_lambda!219555)))

(declare-fun bs!1373892 () Bool)

(declare-fun d!1832501 () Bool)

(assert (= bs!1373892 (and d!1832501 d!1832343)))

(assert (=> bs!1373892 (= (dynLambda!24967 lambda!318739 (h!70248 (exprs!5759 setElem!39364))) (validRegex!7611 (h!70248 (exprs!5759 setElem!39364))))))

(declare-fun m!6757906 () Bool)

(assert (=> bs!1373892 m!6757906))

(assert (=> b!5824311 d!1832501))

(declare-fun b_lambda!219557 () Bool)

(assert (= b_lambda!219537 (or d!1832327 b_lambda!219557)))

(declare-fun bs!1373893 () Bool)

(declare-fun d!1832503 () Bool)

(assert (= bs!1373893 (and d!1832503 d!1832327)))

(assert (=> bs!1373893 (= (dynLambda!24967 lambda!318730 (h!70248 lt!2302533)) (validRegex!7611 (h!70248 lt!2302533)))))

(declare-fun m!6757910 () Bool)

(assert (=> bs!1373893 m!6757910))

(assert (=> b!5824336 d!1832503))

(declare-fun b_lambda!219559 () Bool)

(assert (= b_lambda!219543 (or d!1832323 b_lambda!219559)))

(declare-fun bs!1373895 () Bool)

(declare-fun d!1832505 () Bool)

(assert (= bs!1373895 (and d!1832505 d!1832323)))

(assert (=> bs!1373895 (= (dynLambda!24967 lambda!318723 (h!70248 (unfocusZipperList!1296 zl!343))) (validRegex!7611 (h!70248 (unfocusZipperList!1296 zl!343))))))

(declare-fun m!6757912 () Bool)

(assert (=> bs!1373895 m!6757912))

(assert (=> b!5824386 d!1832505))

(check-sat (not b!5824351) (not b!5824614) (not bs!1373887) (not b!5824320) (not b!5824598) (not bs!1373884) (not b!5824626) (not bs!1373893) (not b!5824392) (not b!5824535) (not b!5824575) (not b!5824517) (not b!5824387) (not b!5824548) (not b!5824619) (not d!1832415) (not bm!454855) (not b!5824483) (not b!5824569) (not d!1832479) (not b!5824613) (not b!5824589) (not b!5824314) (not b!5824592) (not bm!454825) (not b!5824585) (not b!5824623) (not bm!454821) (not b!5824647) (not b!5824631) (not b!5824556) (not b!5824312) (not b!5824526) (not b!5824525) (not b!5824420) (not b_lambda!219555) (not b!5824425) (not b!5824630) (not b!5824358) (not b!5824527) (not b!5824529) (not d!1832469) (not b!5824634) (not b!5824586) (not bm!454830) (not b!5824551) tp_is_empty!41003 (not b!5824639) (not b!5824601) (not b!5824318) (not b!5824583) (not b!5824368) (not b!5824590) (not d!1832443) (not b!5824534) (not b!5824608) (not b!5824528) (not b!5824596) (not b!5824574) (not bm!454827) (not b!5824543) (not bm!454824) (not b_lambda!219559) (not b!5824539) (not b!5824624) (not b!5824555) (not b!5824606) (not b!5824646) (not b!5824571) (not b!5824562) (not b!5824366) (not b!5824655) (not d!1832407) (not b!5824419) (not d!1832465) (not bm!454847) (not b!5824319) (not b!5824650) (not b!5824321) (not b!5824659) (not b!5824547) (not b!5824573) (not b!5824653) (not b!5824638) (not b!5824651) (not b!5824530) (not b!5824339) (not b!5824423) (not b!5824480) (not bm!454856) (not b!5824565) (not b!5824602) (not b!5824593) (not b!5824620) (not b!5824661) (not b!5824367) (not b_lambda!219551) (not b!5824350) (not b!5824330) (not b!5824564) (not b!5824658) (not b!5824635) (not b!5824568) (not b!5824588) (not b!5824618) (not bm!454833) (not b!5824357) (not b!5824645) (not b!5824422) (not b!5824600) (not bm!454846) (not b!5824377) (not b!5824594) (not b!5824521) (not b!5824544) (not bm!454834) (not b!5824428) (not b!5824337) (not b!5824340) (not bs!1373892) (not bm!454844) (not b!5824612) (not b!5824324) (not b!5824322) (not bm!454849) (not setNonEmpty!39371) (not b!5824654) (not d!1832371) (not b!5824607) (not bm!454831) (not b!5824578) (not b!5824577) (not bs!1373890) (not bm!454828) (not b!5824557) (not b!5824663) (not b!5824581) (not d!1832391) (not b!5824408) (not bs!1373895) (not b!5824649) (not b!5824315) (not b_lambda!219557) (not b!5824524) (not b!5824640) (not b!5824636) (not b!5824662) (not b!5824560) (not b!5824566) (not b!5824561) (not b!5824559) (not b_lambda!219549) (not d!1832383) (not b!5824536) (not b!5824657) (not d!1832441) (not b!5824545) (not b!5824597) (not b!5824584) (not b!5824632) (not b!5824570) (not b!5824549) (not d!1832473) (not bm!454820) (not b!5824365) (not b_lambda!219553) (not b!5824576) (not b!5824622) (not b!5824628) (not b!5824553) (not b!5824627) (not bm!454822) (not b!5824552) (not b!5824334) (not d!1832481))
(check-sat)
