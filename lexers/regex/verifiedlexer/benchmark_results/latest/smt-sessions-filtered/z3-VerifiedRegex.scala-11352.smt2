; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!601196 () Bool)

(assert start!601196)

(declare-fun b!5909604 () Bool)

(declare-fun e!3618883 () Bool)

(declare-datatypes ((C!32172 0))(
  ( (C!32173 (val!25788 Int)) )
))
(declare-datatypes ((Regex!15951 0))(
  ( (ElementMatch!15951 (c!1050237 C!32172)) (Concat!24796 (regOne!32414 Regex!15951) (regTwo!32414 Regex!15951)) (EmptyExpr!15951) (Star!15951 (reg!16280 Regex!15951)) (EmptyLang!15951) (Union!15951 (regOne!32415 Regex!15951) (regTwo!32415 Regex!15951)) )
))
(declare-fun r!7292 () Regex!15951)

(declare-fun validRegex!7687 (Regex!15951) Bool)

(assert (=> b!5909604 (= e!3618883 (validRegex!7687 (regOne!32414 r!7292)))))

(declare-fun b!5909605 () Bool)

(declare-fun e!3618882 () Bool)

(assert (=> b!5909605 (= e!3618882 (not e!3618883))))

(declare-fun res!2478008 () Bool)

(assert (=> b!5909605 (=> res!2478008 e!3618883)))

(declare-datatypes ((List!64152 0))(
  ( (Nil!64028) (Cons!64028 (h!70476 Regex!15951) (t!377541 List!64152)) )
))
(declare-datatypes ((Context!10670 0))(
  ( (Context!10671 (exprs!5835 List!64152)) )
))
(declare-datatypes ((List!64153 0))(
  ( (Nil!64029) (Cons!64029 (h!70477 Context!10670) (t!377542 List!64153)) )
))
(declare-fun zl!343 () List!64153)

(get-info :version)

(assert (=> b!5909605 (= res!2478008 (not ((_ is Cons!64029) zl!343)))))

(declare-datatypes ((List!64154 0))(
  ( (Nil!64030) (Cons!64030 (h!70478 C!32172) (t!377543 List!64154)) )
))
(declare-fun s!2326 () List!64154)

(declare-fun matchR!8134 (Regex!15951 List!64154) Bool)

(declare-fun matchRSpec!3052 (Regex!15951 List!64154) Bool)

(assert (=> b!5909605 (= (matchR!8134 r!7292 s!2326) (matchRSpec!3052 r!7292 s!2326))))

(declare-datatypes ((Unit!157173 0))(
  ( (Unit!157174) )
))
(declare-fun lt!2308902 () Unit!157173)

(declare-fun mainMatchTheorem!3052 (Regex!15951 List!64154) Unit!157173)

(assert (=> b!5909605 (= lt!2308902 (mainMatchTheorem!3052 r!7292 s!2326))))

(declare-fun b!5909606 () Bool)

(declare-fun res!2478000 () Bool)

(assert (=> b!5909606 (=> res!2478000 e!3618883)))

(declare-fun isEmpty!35882 (List!64153) Bool)

(assert (=> b!5909606 (= res!2478000 (not (isEmpty!35882 (t!377542 zl!343))))))

(declare-fun b!5909607 () Bool)

(declare-fun e!3618879 () Bool)

(declare-fun tp!1641889 () Bool)

(assert (=> b!5909607 (= e!3618879 tp!1641889)))

(declare-fun b!5909608 () Bool)

(declare-fun e!3618881 () Bool)

(declare-fun tp!1641890 () Bool)

(assert (=> b!5909608 (= e!3618881 tp!1641890)))

(declare-fun res!2478007 () Bool)

(assert (=> start!601196 (=> (not res!2478007) (not e!3618882))))

(assert (=> start!601196 (= res!2478007 (validRegex!7687 r!7292))))

(assert (=> start!601196 e!3618882))

(declare-fun e!3618878 () Bool)

(assert (=> start!601196 e!3618878))

(declare-fun condSetEmpty!40060 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10670))

(assert (=> start!601196 (= condSetEmpty!40060 (= z!1189 ((as const (Array Context!10670 Bool)) false)))))

(declare-fun setRes!40060 () Bool)

(assert (=> start!601196 setRes!40060))

(declare-fun e!3618877 () Bool)

(assert (=> start!601196 e!3618877))

(declare-fun e!3618880 () Bool)

(assert (=> start!601196 e!3618880))

(declare-fun b!5909609 () Bool)

(declare-fun res!2478001 () Bool)

(assert (=> b!5909609 (=> res!2478001 e!3618883)))

(assert (=> b!5909609 (= res!2478001 (not ((_ is Cons!64028) (exprs!5835 (h!70477 zl!343)))))))

(declare-fun b!5909610 () Bool)

(declare-fun res!2478002 () Bool)

(assert (=> b!5909610 (=> (not res!2478002) (not e!3618882))))

(declare-fun unfocusZipper!1693 (List!64153) Regex!15951)

(assert (=> b!5909610 (= res!2478002 (= r!7292 (unfocusZipper!1693 zl!343)))))

(declare-fun b!5909611 () Bool)

(declare-fun res!2478006 () Bool)

(assert (=> b!5909611 (=> res!2478006 e!3618883)))

(declare-fun generalisedUnion!1795 (List!64152) Regex!15951)

(declare-fun unfocusZipperList!1372 (List!64153) List!64152)

(assert (=> b!5909611 (= res!2478006 (not (= r!7292 (generalisedUnion!1795 (unfocusZipperList!1372 zl!343)))))))

(declare-fun b!5909612 () Bool)

(declare-fun tp_is_empty!41155 () Bool)

(assert (=> b!5909612 (= e!3618878 tp_is_empty!41155)))

(declare-fun b!5909613 () Bool)

(declare-fun tp!1641897 () Bool)

(declare-fun tp!1641894 () Bool)

(assert (=> b!5909613 (= e!3618878 (and tp!1641897 tp!1641894))))

(declare-fun b!5909614 () Bool)

(declare-fun res!2478005 () Bool)

(assert (=> b!5909614 (=> res!2478005 e!3618883)))

(declare-fun generalisedConcat!1548 (List!64152) Regex!15951)

(assert (=> b!5909614 (= res!2478005 (not (= r!7292 (generalisedConcat!1548 (exprs!5835 (h!70477 zl!343))))))))

(declare-fun b!5909615 () Bool)

(declare-fun tp!1641898 () Bool)

(assert (=> b!5909615 (= e!3618878 tp!1641898)))

(declare-fun b!5909616 () Bool)

(declare-fun res!2478003 () Bool)

(assert (=> b!5909616 (=> (not res!2478003) (not e!3618882))))

(declare-fun toList!9735 ((InoxSet Context!10670)) List!64153)

(assert (=> b!5909616 (= res!2478003 (= (toList!9735 z!1189) zl!343))))

(declare-fun b!5909617 () Bool)

(declare-fun tp!1641893 () Bool)

(declare-fun inv!83124 (Context!10670) Bool)

(assert (=> b!5909617 (= e!3618877 (and (inv!83124 (h!70477 zl!343)) e!3618879 tp!1641893))))

(declare-fun b!5909618 () Bool)

(declare-fun res!2478004 () Bool)

(assert (=> b!5909618 (=> res!2478004 e!3618883)))

(assert (=> b!5909618 (= res!2478004 (or ((_ is EmptyExpr!15951) r!7292) ((_ is EmptyLang!15951) r!7292) ((_ is ElementMatch!15951) r!7292) ((_ is Union!15951) r!7292) (not ((_ is Concat!24796) r!7292))))))

(declare-fun b!5909619 () Bool)

(declare-fun tp!1641891 () Bool)

(assert (=> b!5909619 (= e!3618880 (and tp_is_empty!41155 tp!1641891))))

(declare-fun setIsEmpty!40060 () Bool)

(assert (=> setIsEmpty!40060 setRes!40060))

(declare-fun b!5909620 () Bool)

(declare-fun tp!1641896 () Bool)

(declare-fun tp!1641892 () Bool)

(assert (=> b!5909620 (= e!3618878 (and tp!1641896 tp!1641892))))

(declare-fun setElem!40060 () Context!10670)

(declare-fun tp!1641895 () Bool)

(declare-fun setNonEmpty!40060 () Bool)

(assert (=> setNonEmpty!40060 (= setRes!40060 (and tp!1641895 (inv!83124 setElem!40060) e!3618881))))

(declare-fun setRest!40060 () (InoxSet Context!10670))

(assert (=> setNonEmpty!40060 (= z!1189 ((_ map or) (store ((as const (Array Context!10670 Bool)) false) setElem!40060 true) setRest!40060))))

(assert (= (and start!601196 res!2478007) b!5909616))

(assert (= (and b!5909616 res!2478003) b!5909610))

(assert (= (and b!5909610 res!2478002) b!5909605))

(assert (= (and b!5909605 (not res!2478008)) b!5909606))

(assert (= (and b!5909606 (not res!2478000)) b!5909614))

(assert (= (and b!5909614 (not res!2478005)) b!5909609))

(assert (= (and b!5909609 (not res!2478001)) b!5909611))

(assert (= (and b!5909611 (not res!2478006)) b!5909618))

(assert (= (and b!5909618 (not res!2478004)) b!5909604))

(assert (= (and start!601196 ((_ is ElementMatch!15951) r!7292)) b!5909612))

(assert (= (and start!601196 ((_ is Concat!24796) r!7292)) b!5909613))

(assert (= (and start!601196 ((_ is Star!15951) r!7292)) b!5909615))

(assert (= (and start!601196 ((_ is Union!15951) r!7292)) b!5909620))

(assert (= (and start!601196 condSetEmpty!40060) setIsEmpty!40060))

(assert (= (and start!601196 (not condSetEmpty!40060)) setNonEmpty!40060))

(assert (= setNonEmpty!40060 b!5909608))

(assert (= b!5909617 b!5909607))

(assert (= (and start!601196 ((_ is Cons!64029) zl!343)) b!5909617))

(assert (= (and start!601196 ((_ is Cons!64030) s!2326)) b!5909619))

(declare-fun m!6810474 () Bool)

(assert (=> b!5909616 m!6810474))

(declare-fun m!6810476 () Bool)

(assert (=> b!5909614 m!6810476))

(declare-fun m!6810478 () Bool)

(assert (=> b!5909611 m!6810478))

(assert (=> b!5909611 m!6810478))

(declare-fun m!6810480 () Bool)

(assert (=> b!5909611 m!6810480))

(declare-fun m!6810482 () Bool)

(assert (=> b!5909610 m!6810482))

(declare-fun m!6810484 () Bool)

(assert (=> start!601196 m!6810484))

(declare-fun m!6810486 () Bool)

(assert (=> b!5909617 m!6810486))

(declare-fun m!6810488 () Bool)

(assert (=> b!5909605 m!6810488))

(declare-fun m!6810490 () Bool)

(assert (=> b!5909605 m!6810490))

(declare-fun m!6810492 () Bool)

(assert (=> b!5909605 m!6810492))

(declare-fun m!6810494 () Bool)

(assert (=> setNonEmpty!40060 m!6810494))

(declare-fun m!6810496 () Bool)

(assert (=> b!5909606 m!6810496))

(declare-fun m!6810498 () Bool)

(assert (=> b!5909604 m!6810498))

(check-sat (not b!5909608) (not b!5909606) (not setNonEmpty!40060) (not b!5909611) (not b!5909620) (not b!5909610) (not b!5909607) tp_is_empty!41155 (not b!5909613) (not start!601196) (not b!5909615) (not b!5909616) (not b!5909619) (not b!5909604) (not b!5909605) (not b!5909617) (not b!5909614))
(check-sat)
(get-model)

(declare-fun d!1854487 () Bool)

(declare-fun lt!2308905 () Regex!15951)

(assert (=> d!1854487 (validRegex!7687 lt!2308905)))

(assert (=> d!1854487 (= lt!2308905 (generalisedUnion!1795 (unfocusZipperList!1372 zl!343)))))

(assert (=> d!1854487 (= (unfocusZipper!1693 zl!343) lt!2308905)))

(declare-fun bs!1399840 () Bool)

(assert (= bs!1399840 d!1854487))

(declare-fun m!6810500 () Bool)

(assert (=> bs!1399840 m!6810500))

(assert (=> bs!1399840 m!6810478))

(assert (=> bs!1399840 m!6810478))

(assert (=> bs!1399840 m!6810480))

(assert (=> b!5909610 d!1854487))

(declare-fun b!5909649 () Bool)

(declare-fun e!3618903 () Bool)

(declare-fun lt!2308908 () Bool)

(declare-fun call!468387 () Bool)

(assert (=> b!5909649 (= e!3618903 (= lt!2308908 call!468387))))

(declare-fun b!5909650 () Bool)

(declare-fun e!3618900 () Bool)

(declare-fun head!12450 (List!64154) C!32172)

(assert (=> b!5909650 (= e!3618900 (not (= (head!12450 s!2326) (c!1050237 r!7292))))))

(declare-fun bm!468382 () Bool)

(declare-fun isEmpty!35883 (List!64154) Bool)

(assert (=> bm!468382 (= call!468387 (isEmpty!35883 s!2326))))

(declare-fun b!5909651 () Bool)

(declare-fun res!2478032 () Bool)

(declare-fun e!3618904 () Bool)

(assert (=> b!5909651 (=> (not res!2478032) (not e!3618904))))

(assert (=> b!5909651 (= res!2478032 (not call!468387))))

(declare-fun b!5909652 () Bool)

(declare-fun e!3618898 () Bool)

(declare-fun e!3618902 () Bool)

(assert (=> b!5909652 (= e!3618898 e!3618902)))

(declare-fun res!2478025 () Bool)

(assert (=> b!5909652 (=> (not res!2478025) (not e!3618902))))

(assert (=> b!5909652 (= res!2478025 (not lt!2308908))))

(declare-fun b!5909653 () Bool)

(declare-fun res!2478029 () Bool)

(assert (=> b!5909653 (=> res!2478029 e!3618898)))

(assert (=> b!5909653 (= res!2478029 e!3618904)))

(declare-fun res!2478028 () Bool)

(assert (=> b!5909653 (=> (not res!2478028) (not e!3618904))))

(assert (=> b!5909653 (= res!2478028 lt!2308908)))

(declare-fun b!5909654 () Bool)

(declare-fun e!3618899 () Bool)

(assert (=> b!5909654 (= e!3618903 e!3618899)))

(declare-fun c!1050244 () Bool)

(assert (=> b!5909654 (= c!1050244 ((_ is EmptyLang!15951) r!7292))))

(declare-fun b!5909655 () Bool)

(declare-fun e!3618901 () Bool)

(declare-fun derivativeStep!4686 (Regex!15951 C!32172) Regex!15951)

(declare-fun tail!11535 (List!64154) List!64154)

(assert (=> b!5909655 (= e!3618901 (matchR!8134 (derivativeStep!4686 r!7292 (head!12450 s!2326)) (tail!11535 s!2326)))))

(declare-fun b!5909656 () Bool)

(declare-fun res!2478030 () Bool)

(assert (=> b!5909656 (=> res!2478030 e!3618900)))

(assert (=> b!5909656 (= res!2478030 (not (isEmpty!35883 (tail!11535 s!2326))))))

(declare-fun b!5909657 () Bool)

(assert (=> b!5909657 (= e!3618904 (= (head!12450 s!2326) (c!1050237 r!7292)))))

(declare-fun d!1854489 () Bool)

(assert (=> d!1854489 e!3618903))

(declare-fun c!1050246 () Bool)

(assert (=> d!1854489 (= c!1050246 ((_ is EmptyExpr!15951) r!7292))))

(assert (=> d!1854489 (= lt!2308908 e!3618901)))

(declare-fun c!1050245 () Bool)

(assert (=> d!1854489 (= c!1050245 (isEmpty!35883 s!2326))))

(assert (=> d!1854489 (validRegex!7687 r!7292)))

(assert (=> d!1854489 (= (matchR!8134 r!7292 s!2326) lt!2308908)))

(declare-fun b!5909658 () Bool)

(assert (=> b!5909658 (= e!3618902 e!3618900)))

(declare-fun res!2478026 () Bool)

(assert (=> b!5909658 (=> res!2478026 e!3618900)))

(assert (=> b!5909658 (= res!2478026 call!468387)))

(declare-fun b!5909659 () Bool)

(declare-fun res!2478027 () Bool)

(assert (=> b!5909659 (=> (not res!2478027) (not e!3618904))))

(assert (=> b!5909659 (= res!2478027 (isEmpty!35883 (tail!11535 s!2326)))))

(declare-fun b!5909660 () Bool)

(declare-fun res!2478031 () Bool)

(assert (=> b!5909660 (=> res!2478031 e!3618898)))

(assert (=> b!5909660 (= res!2478031 (not ((_ is ElementMatch!15951) r!7292)))))

(assert (=> b!5909660 (= e!3618899 e!3618898)))

(declare-fun b!5909661 () Bool)

(declare-fun nullable!5949 (Regex!15951) Bool)

(assert (=> b!5909661 (= e!3618901 (nullable!5949 r!7292))))

(declare-fun b!5909662 () Bool)

(assert (=> b!5909662 (= e!3618899 (not lt!2308908))))

(assert (= (and d!1854489 c!1050245) b!5909661))

(assert (= (and d!1854489 (not c!1050245)) b!5909655))

(assert (= (and d!1854489 c!1050246) b!5909649))

(assert (= (and d!1854489 (not c!1050246)) b!5909654))

(assert (= (and b!5909654 c!1050244) b!5909662))

(assert (= (and b!5909654 (not c!1050244)) b!5909660))

(assert (= (and b!5909660 (not res!2478031)) b!5909653))

(assert (= (and b!5909653 res!2478028) b!5909651))

(assert (= (and b!5909651 res!2478032) b!5909659))

(assert (= (and b!5909659 res!2478027) b!5909657))

(assert (= (and b!5909653 (not res!2478029)) b!5909652))

(assert (= (and b!5909652 res!2478025) b!5909658))

(assert (= (and b!5909658 (not res!2478026)) b!5909656))

(assert (= (and b!5909656 (not res!2478030)) b!5909650))

(assert (= (or b!5909649 b!5909651 b!5909658) bm!468382))

(declare-fun m!6810502 () Bool)

(assert (=> bm!468382 m!6810502))

(declare-fun m!6810504 () Bool)

(assert (=> b!5909659 m!6810504))

(assert (=> b!5909659 m!6810504))

(declare-fun m!6810506 () Bool)

(assert (=> b!5909659 m!6810506))

(assert (=> d!1854489 m!6810502))

(assert (=> d!1854489 m!6810484))

(declare-fun m!6810508 () Bool)

(assert (=> b!5909655 m!6810508))

(assert (=> b!5909655 m!6810508))

(declare-fun m!6810510 () Bool)

(assert (=> b!5909655 m!6810510))

(assert (=> b!5909655 m!6810504))

(assert (=> b!5909655 m!6810510))

(assert (=> b!5909655 m!6810504))

(declare-fun m!6810512 () Bool)

(assert (=> b!5909655 m!6810512))

(assert (=> b!5909657 m!6810508))

(declare-fun m!6810514 () Bool)

(assert (=> b!5909661 m!6810514))

(assert (=> b!5909650 m!6810508))

(assert (=> b!5909656 m!6810504))

(assert (=> b!5909656 m!6810504))

(assert (=> b!5909656 m!6810506))

(assert (=> b!5909605 d!1854489))

(declare-fun b!5909798 () Bool)

(assert (=> b!5909798 true))

(assert (=> b!5909798 true))

(declare-fun bs!1399841 () Bool)

(declare-fun b!5909796 () Bool)

(assert (= bs!1399841 (and b!5909796 b!5909798)))

(declare-fun lambda!322288 () Int)

(declare-fun lambda!322285 () Int)

(assert (=> bs!1399841 (not (= lambda!322288 lambda!322285))))

(assert (=> b!5909796 true))

(assert (=> b!5909796 true))

(declare-fun d!1854493 () Bool)

(declare-fun c!1050281 () Bool)

(assert (=> d!1854493 (= c!1050281 ((_ is EmptyExpr!15951) r!7292))))

(declare-fun e!3618985 () Bool)

(assert (=> d!1854493 (= (matchRSpec!3052 r!7292 s!2326) e!3618985)))

(declare-fun b!5909792 () Bool)

(declare-fun e!3618982 () Bool)

(declare-fun e!3618983 () Bool)

(assert (=> b!5909792 (= e!3618982 e!3618983)))

(declare-fun res!2478100 () Bool)

(assert (=> b!5909792 (= res!2478100 (matchRSpec!3052 (regOne!32415 r!7292) s!2326))))

(assert (=> b!5909792 (=> res!2478100 e!3618983)))

(declare-fun b!5909793 () Bool)

(declare-fun e!3618986 () Bool)

(assert (=> b!5909793 (= e!3618986 (= s!2326 (Cons!64030 (c!1050237 r!7292) Nil!64030)))))

(declare-fun bm!468399 () Bool)

(declare-fun call!468405 () Bool)

(assert (=> bm!468399 (= call!468405 (isEmpty!35883 s!2326))))

(declare-fun b!5909794 () Bool)

(declare-fun e!3618987 () Bool)

(assert (=> b!5909794 (= e!3618982 e!3618987)))

(declare-fun c!1050280 () Bool)

(assert (=> b!5909794 (= c!1050280 ((_ is Star!15951) r!7292))))

(declare-fun b!5909795 () Bool)

(assert (=> b!5909795 (= e!3618985 call!468405)))

(declare-fun call!468404 () Bool)

(assert (=> b!5909796 (= e!3618987 call!468404)))

(declare-fun b!5909797 () Bool)

(declare-fun c!1050279 () Bool)

(assert (=> b!5909797 (= c!1050279 ((_ is Union!15951) r!7292))))

(assert (=> b!5909797 (= e!3618986 e!3618982)))

(declare-fun e!3618984 () Bool)

(assert (=> b!5909798 (= e!3618984 call!468404)))

(declare-fun b!5909799 () Bool)

(assert (=> b!5909799 (= e!3618983 (matchRSpec!3052 (regTwo!32415 r!7292) s!2326))))

(declare-fun b!5909800 () Bool)

(declare-fun res!2478101 () Bool)

(assert (=> b!5909800 (=> res!2478101 e!3618984)))

(assert (=> b!5909800 (= res!2478101 call!468405)))

(assert (=> b!5909800 (= e!3618987 e!3618984)))

(declare-fun b!5909801 () Bool)

(declare-fun c!1050278 () Bool)

(assert (=> b!5909801 (= c!1050278 ((_ is ElementMatch!15951) r!7292))))

(declare-fun e!3618981 () Bool)

(assert (=> b!5909801 (= e!3618981 e!3618986)))

(declare-fun bm!468400 () Bool)

(declare-fun Exists!3020 (Int) Bool)

(assert (=> bm!468400 (= call!468404 (Exists!3020 (ite c!1050280 lambda!322285 lambda!322288)))))

(declare-fun b!5909802 () Bool)

(assert (=> b!5909802 (= e!3618985 e!3618981)))

(declare-fun res!2478102 () Bool)

(assert (=> b!5909802 (= res!2478102 (not ((_ is EmptyLang!15951) r!7292)))))

(assert (=> b!5909802 (=> (not res!2478102) (not e!3618981))))

(assert (= (and d!1854493 c!1050281) b!5909795))

(assert (= (and d!1854493 (not c!1050281)) b!5909802))

(assert (= (and b!5909802 res!2478102) b!5909801))

(assert (= (and b!5909801 c!1050278) b!5909793))

(assert (= (and b!5909801 (not c!1050278)) b!5909797))

(assert (= (and b!5909797 c!1050279) b!5909792))

(assert (= (and b!5909797 (not c!1050279)) b!5909794))

(assert (= (and b!5909792 (not res!2478100)) b!5909799))

(assert (= (and b!5909794 c!1050280) b!5909800))

(assert (= (and b!5909794 (not c!1050280)) b!5909796))

(assert (= (and b!5909800 (not res!2478101)) b!5909798))

(assert (= (or b!5909798 b!5909796) bm!468400))

(assert (= (or b!5909795 b!5909800) bm!468399))

(declare-fun m!6810536 () Bool)

(assert (=> b!5909792 m!6810536))

(assert (=> bm!468399 m!6810502))

(declare-fun m!6810538 () Bool)

(assert (=> b!5909799 m!6810538))

(declare-fun m!6810540 () Bool)

(assert (=> bm!468400 m!6810540))

(assert (=> b!5909605 d!1854493))

(declare-fun d!1854499 () Bool)

(assert (=> d!1854499 (= (matchR!8134 r!7292 s!2326) (matchRSpec!3052 r!7292 s!2326))))

(declare-fun lt!2308914 () Unit!157173)

(declare-fun choose!44574 (Regex!15951 List!64154) Unit!157173)

(assert (=> d!1854499 (= lt!2308914 (choose!44574 r!7292 s!2326))))

(assert (=> d!1854499 (validRegex!7687 r!7292)))

(assert (=> d!1854499 (= (mainMatchTheorem!3052 r!7292 s!2326) lt!2308914)))

(declare-fun bs!1399842 () Bool)

(assert (= bs!1399842 d!1854499))

(assert (=> bs!1399842 m!6810488))

(assert (=> bs!1399842 m!6810490))

(declare-fun m!6810542 () Bool)

(assert (=> bs!1399842 m!6810542))

(assert (=> bs!1399842 m!6810484))

(assert (=> b!5909605 d!1854499))

(declare-fun d!1854501 () Bool)

(declare-fun e!3618999 () Bool)

(assert (=> d!1854501 e!3618999))

(declare-fun res!2478112 () Bool)

(assert (=> d!1854501 (=> (not res!2478112) (not e!3618999))))

(declare-fun lt!2308917 () List!64153)

(declare-fun noDuplicate!1813 (List!64153) Bool)

(assert (=> d!1854501 (= res!2478112 (noDuplicate!1813 lt!2308917))))

(declare-fun choose!44575 ((InoxSet Context!10670)) List!64153)

(assert (=> d!1854501 (= lt!2308917 (choose!44575 z!1189))))

(assert (=> d!1854501 (= (toList!9735 z!1189) lt!2308917)))

(declare-fun b!5909828 () Bool)

(declare-fun content!11778 (List!64153) (InoxSet Context!10670))

(assert (=> b!5909828 (= e!3618999 (= (content!11778 lt!2308917) z!1189))))

(assert (= (and d!1854501 res!2478112) b!5909828))

(declare-fun m!6810550 () Bool)

(assert (=> d!1854501 m!6810550))

(declare-fun m!6810552 () Bool)

(assert (=> d!1854501 m!6810552))

(declare-fun m!6810554 () Bool)

(assert (=> b!5909828 m!6810554))

(assert (=> b!5909616 d!1854501))

(declare-fun b!5909858 () Bool)

(declare-fun e!3619020 () Bool)

(declare-fun e!3619019 () Bool)

(assert (=> b!5909858 (= e!3619020 e!3619019)))

(declare-fun c!1050299 () Bool)

(declare-fun isEmpty!35885 (List!64152) Bool)

(assert (=> b!5909858 (= c!1050299 (isEmpty!35885 (unfocusZipperList!1372 zl!343)))))

(declare-fun b!5909859 () Bool)

(declare-fun e!3619021 () Regex!15951)

(assert (=> b!5909859 (= e!3619021 (h!70476 (unfocusZipperList!1372 zl!343)))))

(declare-fun b!5909860 () Bool)

(declare-fun e!3619023 () Bool)

(declare-fun lt!2308923 () Regex!15951)

(declare-fun isUnion!821 (Regex!15951) Bool)

(assert (=> b!5909860 (= e!3619023 (isUnion!821 lt!2308923))))

(declare-fun b!5909861 () Bool)

(declare-fun e!3619022 () Regex!15951)

(assert (=> b!5909861 (= e!3619022 (Union!15951 (h!70476 (unfocusZipperList!1372 zl!343)) (generalisedUnion!1795 (t!377541 (unfocusZipperList!1372 zl!343)))))))

(declare-fun b!5909862 () Bool)

(assert (=> b!5909862 (= e!3619022 EmptyLang!15951)))

(declare-fun b!5909863 () Bool)

(declare-fun head!12452 (List!64152) Regex!15951)

(assert (=> b!5909863 (= e!3619023 (= lt!2308923 (head!12452 (unfocusZipperList!1372 zl!343))))))

(declare-fun b!5909864 () Bool)

(assert (=> b!5909864 (= e!3619021 e!3619022)))

(declare-fun c!1050296 () Bool)

(assert (=> b!5909864 (= c!1050296 ((_ is Cons!64028) (unfocusZipperList!1372 zl!343)))))

(declare-fun b!5909865 () Bool)

(declare-fun e!3619024 () Bool)

(assert (=> b!5909865 (= e!3619024 (isEmpty!35885 (t!377541 (unfocusZipperList!1372 zl!343))))))

(declare-fun b!5909866 () Bool)

(declare-fun isEmptyLang!1391 (Regex!15951) Bool)

(assert (=> b!5909866 (= e!3619019 (isEmptyLang!1391 lt!2308923))))

(declare-fun d!1854505 () Bool)

(assert (=> d!1854505 e!3619020))

(declare-fun res!2478122 () Bool)

(assert (=> d!1854505 (=> (not res!2478122) (not e!3619020))))

(assert (=> d!1854505 (= res!2478122 (validRegex!7687 lt!2308923))))

(assert (=> d!1854505 (= lt!2308923 e!3619021)))

(declare-fun c!1050297 () Bool)

(assert (=> d!1854505 (= c!1050297 e!3619024)))

(declare-fun res!2478123 () Bool)

(assert (=> d!1854505 (=> (not res!2478123) (not e!3619024))))

(assert (=> d!1854505 (= res!2478123 ((_ is Cons!64028) (unfocusZipperList!1372 zl!343)))))

(declare-fun lambda!322297 () Int)

(declare-fun forall!15037 (List!64152 Int) Bool)

(assert (=> d!1854505 (forall!15037 (unfocusZipperList!1372 zl!343) lambda!322297)))

(assert (=> d!1854505 (= (generalisedUnion!1795 (unfocusZipperList!1372 zl!343)) lt!2308923)))

(declare-fun b!5909867 () Bool)

(assert (=> b!5909867 (= e!3619019 e!3619023)))

(declare-fun c!1050298 () Bool)

(declare-fun tail!11537 (List!64152) List!64152)

(assert (=> b!5909867 (= c!1050298 (isEmpty!35885 (tail!11537 (unfocusZipperList!1372 zl!343))))))

(assert (= (and d!1854505 res!2478123) b!5909865))

(assert (= (and d!1854505 c!1050297) b!5909859))

(assert (= (and d!1854505 (not c!1050297)) b!5909864))

(assert (= (and b!5909864 c!1050296) b!5909861))

(assert (= (and b!5909864 (not c!1050296)) b!5909862))

(assert (= (and d!1854505 res!2478122) b!5909858))

(assert (= (and b!5909858 c!1050299) b!5909866))

(assert (= (and b!5909858 (not c!1050299)) b!5909867))

(assert (= (and b!5909867 c!1050298) b!5909863))

(assert (= (and b!5909867 (not c!1050298)) b!5909860))

(declare-fun m!6810568 () Bool)

(assert (=> d!1854505 m!6810568))

(assert (=> d!1854505 m!6810478))

(declare-fun m!6810570 () Bool)

(assert (=> d!1854505 m!6810570))

(assert (=> b!5909863 m!6810478))

(declare-fun m!6810572 () Bool)

(assert (=> b!5909863 m!6810572))

(assert (=> b!5909858 m!6810478))

(declare-fun m!6810574 () Bool)

(assert (=> b!5909858 m!6810574))

(declare-fun m!6810576 () Bool)

(assert (=> b!5909860 m!6810576))

(declare-fun m!6810578 () Bool)

(assert (=> b!5909861 m!6810578))

(declare-fun m!6810580 () Bool)

(assert (=> b!5909866 m!6810580))

(assert (=> b!5909867 m!6810478))

(declare-fun m!6810582 () Bool)

(assert (=> b!5909867 m!6810582))

(assert (=> b!5909867 m!6810582))

(declare-fun m!6810584 () Bool)

(assert (=> b!5909867 m!6810584))

(declare-fun m!6810586 () Bool)

(assert (=> b!5909865 m!6810586))

(assert (=> b!5909611 d!1854505))

(declare-fun bs!1399848 () Bool)

(declare-fun d!1854517 () Bool)

(assert (= bs!1399848 (and d!1854517 d!1854505)))

(declare-fun lambda!322302 () Int)

(assert (=> bs!1399848 (= lambda!322302 lambda!322297)))

(declare-fun lt!2308928 () List!64152)

(assert (=> d!1854517 (forall!15037 lt!2308928 lambda!322302)))

(declare-fun e!3619039 () List!64152)

(assert (=> d!1854517 (= lt!2308928 e!3619039)))

(declare-fun c!1050310 () Bool)

(assert (=> d!1854517 (= c!1050310 ((_ is Cons!64029) zl!343))))

(assert (=> d!1854517 (= (unfocusZipperList!1372 zl!343) lt!2308928)))

(declare-fun b!5909892 () Bool)

(assert (=> b!5909892 (= e!3619039 (Cons!64028 (generalisedConcat!1548 (exprs!5835 (h!70477 zl!343))) (unfocusZipperList!1372 (t!377542 zl!343))))))

(declare-fun b!5909893 () Bool)

(assert (=> b!5909893 (= e!3619039 Nil!64028)))

(assert (= (and d!1854517 c!1050310) b!5909892))

(assert (= (and d!1854517 (not c!1050310)) b!5909893))

(declare-fun m!6810588 () Bool)

(assert (=> d!1854517 m!6810588))

(assert (=> b!5909892 m!6810476))

(declare-fun m!6810590 () Bool)

(assert (=> b!5909892 m!6810590))

(assert (=> b!5909611 d!1854517))

(declare-fun bs!1399851 () Bool)

(declare-fun d!1854519 () Bool)

(assert (= bs!1399851 (and d!1854519 d!1854505)))

(declare-fun lambda!322306 () Int)

(assert (=> bs!1399851 (= lambda!322306 lambda!322297)))

(declare-fun bs!1399852 () Bool)

(assert (= bs!1399852 (and d!1854519 d!1854517)))

(assert (=> bs!1399852 (= lambda!322306 lambda!322302)))

(assert (=> d!1854519 (= (inv!83124 setElem!40060) (forall!15037 (exprs!5835 setElem!40060) lambda!322306))))

(declare-fun bs!1399853 () Bool)

(assert (= bs!1399853 d!1854519))

(declare-fun m!6810592 () Bool)

(assert (=> bs!1399853 m!6810592))

(assert (=> setNonEmpty!40060 d!1854519))

(declare-fun d!1854521 () Bool)

(assert (=> d!1854521 (= (isEmpty!35882 (t!377542 zl!343)) ((_ is Nil!64029) (t!377542 zl!343)))))

(assert (=> b!5909606 d!1854521))

(declare-fun bs!1399854 () Bool)

(declare-fun d!1854525 () Bool)

(assert (= bs!1399854 (and d!1854525 d!1854505)))

(declare-fun lambda!322307 () Int)

(assert (=> bs!1399854 (= lambda!322307 lambda!322297)))

(declare-fun bs!1399855 () Bool)

(assert (= bs!1399855 (and d!1854525 d!1854517)))

(assert (=> bs!1399855 (= lambda!322307 lambda!322302)))

(declare-fun bs!1399856 () Bool)

(assert (= bs!1399856 (and d!1854525 d!1854519)))

(assert (=> bs!1399856 (= lambda!322307 lambda!322306)))

(assert (=> d!1854525 (= (inv!83124 (h!70477 zl!343)) (forall!15037 (exprs!5835 (h!70477 zl!343)) lambda!322307))))

(declare-fun bs!1399857 () Bool)

(assert (= bs!1399857 d!1854525))

(declare-fun m!6810614 () Bool)

(assert (=> bs!1399857 m!6810614))

(assert (=> b!5909617 d!1854525))

(declare-fun bs!1399861 () Bool)

(declare-fun d!1854527 () Bool)

(assert (= bs!1399861 (and d!1854527 d!1854505)))

(declare-fun lambda!322313 () Int)

(assert (=> bs!1399861 (= lambda!322313 lambda!322297)))

(declare-fun bs!1399862 () Bool)

(assert (= bs!1399862 (and d!1854527 d!1854517)))

(assert (=> bs!1399862 (= lambda!322313 lambda!322302)))

(declare-fun bs!1399863 () Bool)

(assert (= bs!1399863 (and d!1854527 d!1854519)))

(assert (=> bs!1399863 (= lambda!322313 lambda!322306)))

(declare-fun bs!1399864 () Bool)

(assert (= bs!1399864 (and d!1854527 d!1854525)))

(assert (=> bs!1399864 (= lambda!322313 lambda!322307)))

(declare-fun e!3619081 () Bool)

(assert (=> d!1854527 e!3619081))

(declare-fun res!2478141 () Bool)

(assert (=> d!1854527 (=> (not res!2478141) (not e!3619081))))

(declare-fun lt!2308935 () Regex!15951)

(assert (=> d!1854527 (= res!2478141 (validRegex!7687 lt!2308935))))

(declare-fun e!3619079 () Regex!15951)

(assert (=> d!1854527 (= lt!2308935 e!3619079)))

(declare-fun c!1050338 () Bool)

(declare-fun e!3619077 () Bool)

(assert (=> d!1854527 (= c!1050338 e!3619077)))

(declare-fun res!2478140 () Bool)

(assert (=> d!1854527 (=> (not res!2478140) (not e!3619077))))

(assert (=> d!1854527 (= res!2478140 ((_ is Cons!64028) (exprs!5835 (h!70477 zl!343))))))

(assert (=> d!1854527 (forall!15037 (exprs!5835 (h!70477 zl!343)) lambda!322313)))

(assert (=> d!1854527 (= (generalisedConcat!1548 (exprs!5835 (h!70477 zl!343))) lt!2308935)))

(declare-fun b!5909954 () Bool)

(declare-fun e!3619076 () Bool)

(assert (=> b!5909954 (= e!3619081 e!3619076)))

(declare-fun c!1050336 () Bool)

(assert (=> b!5909954 (= c!1050336 (isEmpty!35885 (exprs!5835 (h!70477 zl!343))))))

(declare-fun b!5909955 () Bool)

(declare-fun e!3619078 () Bool)

(assert (=> b!5909955 (= e!3619078 (= lt!2308935 (head!12452 (exprs!5835 (h!70477 zl!343)))))))

(declare-fun b!5909956 () Bool)

(declare-fun e!3619080 () Regex!15951)

(assert (=> b!5909956 (= e!3619080 EmptyExpr!15951)))

(declare-fun b!5909957 () Bool)

(assert (=> b!5909957 (= e!3619079 (h!70476 (exprs!5835 (h!70477 zl!343))))))

(declare-fun b!5909958 () Bool)

(declare-fun isConcat!906 (Regex!15951) Bool)

(assert (=> b!5909958 (= e!3619078 (isConcat!906 lt!2308935))))

(declare-fun b!5909959 () Bool)

(assert (=> b!5909959 (= e!3619077 (isEmpty!35885 (t!377541 (exprs!5835 (h!70477 zl!343)))))))

(declare-fun b!5909960 () Bool)

(assert (=> b!5909960 (= e!3619080 (Concat!24796 (h!70476 (exprs!5835 (h!70477 zl!343))) (generalisedConcat!1548 (t!377541 (exprs!5835 (h!70477 zl!343))))))))

(declare-fun b!5909961 () Bool)

(assert (=> b!5909961 (= e!3619079 e!3619080)))

(declare-fun c!1050335 () Bool)

(assert (=> b!5909961 (= c!1050335 ((_ is Cons!64028) (exprs!5835 (h!70477 zl!343))))))

(declare-fun b!5909962 () Bool)

(assert (=> b!5909962 (= e!3619076 e!3619078)))

(declare-fun c!1050337 () Bool)

(assert (=> b!5909962 (= c!1050337 (isEmpty!35885 (tail!11537 (exprs!5835 (h!70477 zl!343)))))))

(declare-fun b!5909963 () Bool)

(declare-fun isEmptyExpr!1383 (Regex!15951) Bool)

(assert (=> b!5909963 (= e!3619076 (isEmptyExpr!1383 lt!2308935))))

(assert (= (and d!1854527 res!2478140) b!5909959))

(assert (= (and d!1854527 c!1050338) b!5909957))

(assert (= (and d!1854527 (not c!1050338)) b!5909961))

(assert (= (and b!5909961 c!1050335) b!5909960))

(assert (= (and b!5909961 (not c!1050335)) b!5909956))

(assert (= (and d!1854527 res!2478141) b!5909954))

(assert (= (and b!5909954 c!1050336) b!5909963))

(assert (= (and b!5909954 (not c!1050336)) b!5909962))

(assert (= (and b!5909962 c!1050337) b!5909955))

(assert (= (and b!5909962 (not c!1050337)) b!5909958))

(declare-fun m!6810636 () Bool)

(assert (=> b!5909955 m!6810636))

(declare-fun m!6810638 () Bool)

(assert (=> d!1854527 m!6810638))

(declare-fun m!6810640 () Bool)

(assert (=> d!1854527 m!6810640))

(declare-fun m!6810642 () Bool)

(assert (=> b!5909962 m!6810642))

(assert (=> b!5909962 m!6810642))

(declare-fun m!6810644 () Bool)

(assert (=> b!5909962 m!6810644))

(declare-fun m!6810646 () Bool)

(assert (=> b!5909958 m!6810646))

(declare-fun m!6810648 () Bool)

(assert (=> b!5909959 m!6810648))

(declare-fun m!6810650 () Bool)

(assert (=> b!5909960 m!6810650))

(declare-fun m!6810652 () Bool)

(assert (=> b!5909954 m!6810652))

(declare-fun m!6810654 () Bool)

(assert (=> b!5909963 m!6810654))

(assert (=> b!5909614 d!1854527))

(declare-fun b!5909991 () Bool)

(declare-fun e!3619105 () Bool)

(declare-fun call!468423 () Bool)

(assert (=> b!5909991 (= e!3619105 call!468423)))

(declare-fun b!5909992 () Bool)

(declare-fun e!3619108 () Bool)

(declare-fun call!468422 () Bool)

(assert (=> b!5909992 (= e!3619108 call!468422)))

(declare-fun b!5909993 () Bool)

(declare-fun res!2478155 () Bool)

(declare-fun e!3619104 () Bool)

(assert (=> b!5909993 (=> res!2478155 e!3619104)))

(assert (=> b!5909993 (= res!2478155 (not ((_ is Concat!24796) r!7292)))))

(declare-fun e!3619107 () Bool)

(assert (=> b!5909993 (= e!3619107 e!3619104)))

(declare-fun b!5909994 () Bool)

(declare-fun e!3619106 () Bool)

(declare-fun e!3619103 () Bool)

(assert (=> b!5909994 (= e!3619106 e!3619103)))

(declare-fun c!1050347 () Bool)

(assert (=> b!5909994 (= c!1050347 ((_ is Star!15951) r!7292))))

(declare-fun b!5909995 () Bool)

(declare-fun res!2478157 () Bool)

(assert (=> b!5909995 (=> (not res!2478157) (not e!3619108))))

(declare-fun call!468421 () Bool)

(assert (=> b!5909995 (= res!2478157 call!468421)))

(assert (=> b!5909995 (= e!3619107 e!3619108)))

(declare-fun b!5909996 () Bool)

(assert (=> b!5909996 (= e!3619103 e!3619105)))

(declare-fun res!2478159 () Bool)

(assert (=> b!5909996 (= res!2478159 (not (nullable!5949 (reg!16280 r!7292))))))

(assert (=> b!5909996 (=> (not res!2478159) (not e!3619105))))

(declare-fun bm!468417 () Bool)

(assert (=> bm!468417 (= call!468422 call!468423)))

(declare-fun bm!468418 () Bool)

(declare-fun c!1050346 () Bool)

(assert (=> bm!468418 (= call!468423 (validRegex!7687 (ite c!1050347 (reg!16280 r!7292) (ite c!1050346 (regTwo!32415 r!7292) (regTwo!32414 r!7292)))))))

(declare-fun b!5909997 () Bool)

(declare-fun e!3619102 () Bool)

(assert (=> b!5909997 (= e!3619102 call!468422)))

(declare-fun bm!468416 () Bool)

(assert (=> bm!468416 (= call!468421 (validRegex!7687 (ite c!1050346 (regOne!32415 r!7292) (regOne!32414 r!7292))))))

(declare-fun d!1854531 () Bool)

(declare-fun res!2478156 () Bool)

(assert (=> d!1854531 (=> res!2478156 e!3619106)))

(assert (=> d!1854531 (= res!2478156 ((_ is ElementMatch!15951) r!7292))))

(assert (=> d!1854531 (= (validRegex!7687 r!7292) e!3619106)))

(declare-fun b!5909998 () Bool)

(assert (=> b!5909998 (= e!3619104 e!3619102)))

(declare-fun res!2478158 () Bool)

(assert (=> b!5909998 (=> (not res!2478158) (not e!3619102))))

(assert (=> b!5909998 (= res!2478158 call!468421)))

(declare-fun b!5909999 () Bool)

(assert (=> b!5909999 (= e!3619103 e!3619107)))

(assert (=> b!5909999 (= c!1050346 ((_ is Union!15951) r!7292))))

(assert (= (and d!1854531 (not res!2478156)) b!5909994))

(assert (= (and b!5909994 c!1050347) b!5909996))

(assert (= (and b!5909994 (not c!1050347)) b!5909999))

(assert (= (and b!5909996 res!2478159) b!5909991))

(assert (= (and b!5909999 c!1050346) b!5909995))

(assert (= (and b!5909999 (not c!1050346)) b!5909993))

(assert (= (and b!5909995 res!2478157) b!5909992))

(assert (= (and b!5909993 (not res!2478155)) b!5909998))

(assert (= (and b!5909998 res!2478158) b!5909997))

(assert (= (or b!5909992 b!5909997) bm!468417))

(assert (= (or b!5909995 b!5909998) bm!468416))

(assert (= (or b!5909991 bm!468417) bm!468418))

(declare-fun m!6810666 () Bool)

(assert (=> b!5909996 m!6810666))

(declare-fun m!6810668 () Bool)

(assert (=> bm!468418 m!6810668))

(declare-fun m!6810670 () Bool)

(assert (=> bm!468416 m!6810670))

(assert (=> start!601196 d!1854531))

(declare-fun b!5910000 () Bool)

(declare-fun e!3619112 () Bool)

(declare-fun call!468426 () Bool)

(assert (=> b!5910000 (= e!3619112 call!468426)))

(declare-fun b!5910001 () Bool)

(declare-fun e!3619115 () Bool)

(declare-fun call!468425 () Bool)

(assert (=> b!5910001 (= e!3619115 call!468425)))

(declare-fun b!5910002 () Bool)

(declare-fun res!2478160 () Bool)

(declare-fun e!3619111 () Bool)

(assert (=> b!5910002 (=> res!2478160 e!3619111)))

(assert (=> b!5910002 (= res!2478160 (not ((_ is Concat!24796) (regOne!32414 r!7292))))))

(declare-fun e!3619114 () Bool)

(assert (=> b!5910002 (= e!3619114 e!3619111)))

(declare-fun b!5910003 () Bool)

(declare-fun e!3619113 () Bool)

(declare-fun e!3619110 () Bool)

(assert (=> b!5910003 (= e!3619113 e!3619110)))

(declare-fun c!1050349 () Bool)

(assert (=> b!5910003 (= c!1050349 ((_ is Star!15951) (regOne!32414 r!7292)))))

(declare-fun b!5910004 () Bool)

(declare-fun res!2478162 () Bool)

(assert (=> b!5910004 (=> (not res!2478162) (not e!3619115))))

(declare-fun call!468424 () Bool)

(assert (=> b!5910004 (= res!2478162 call!468424)))

(assert (=> b!5910004 (= e!3619114 e!3619115)))

(declare-fun b!5910005 () Bool)

(assert (=> b!5910005 (= e!3619110 e!3619112)))

(declare-fun res!2478164 () Bool)

(assert (=> b!5910005 (= res!2478164 (not (nullable!5949 (reg!16280 (regOne!32414 r!7292)))))))

(assert (=> b!5910005 (=> (not res!2478164) (not e!3619112))))

(declare-fun bm!468420 () Bool)

(assert (=> bm!468420 (= call!468425 call!468426)))

(declare-fun bm!468421 () Bool)

(declare-fun c!1050348 () Bool)

(assert (=> bm!468421 (= call!468426 (validRegex!7687 (ite c!1050349 (reg!16280 (regOne!32414 r!7292)) (ite c!1050348 (regTwo!32415 (regOne!32414 r!7292)) (regTwo!32414 (regOne!32414 r!7292))))))))

(declare-fun b!5910006 () Bool)

(declare-fun e!3619109 () Bool)

(assert (=> b!5910006 (= e!3619109 call!468425)))

(declare-fun bm!468419 () Bool)

(assert (=> bm!468419 (= call!468424 (validRegex!7687 (ite c!1050348 (regOne!32415 (regOne!32414 r!7292)) (regOne!32414 (regOne!32414 r!7292)))))))

(declare-fun d!1854537 () Bool)

(declare-fun res!2478161 () Bool)

(assert (=> d!1854537 (=> res!2478161 e!3619113)))

(assert (=> d!1854537 (= res!2478161 ((_ is ElementMatch!15951) (regOne!32414 r!7292)))))

(assert (=> d!1854537 (= (validRegex!7687 (regOne!32414 r!7292)) e!3619113)))

(declare-fun b!5910007 () Bool)

(assert (=> b!5910007 (= e!3619111 e!3619109)))

(declare-fun res!2478163 () Bool)

(assert (=> b!5910007 (=> (not res!2478163) (not e!3619109))))

(assert (=> b!5910007 (= res!2478163 call!468424)))

(declare-fun b!5910008 () Bool)

(assert (=> b!5910008 (= e!3619110 e!3619114)))

(assert (=> b!5910008 (= c!1050348 ((_ is Union!15951) (regOne!32414 r!7292)))))

(assert (= (and d!1854537 (not res!2478161)) b!5910003))

(assert (= (and b!5910003 c!1050349) b!5910005))

(assert (= (and b!5910003 (not c!1050349)) b!5910008))

(assert (= (and b!5910005 res!2478164) b!5910000))

(assert (= (and b!5910008 c!1050348) b!5910004))

(assert (= (and b!5910008 (not c!1050348)) b!5910002))

(assert (= (and b!5910004 res!2478162) b!5910001))

(assert (= (and b!5910002 (not res!2478160)) b!5910007))

(assert (= (and b!5910007 res!2478163) b!5910006))

(assert (= (or b!5910001 b!5910006) bm!468420))

(assert (= (or b!5910004 b!5910007) bm!468419))

(assert (= (or b!5910000 bm!468420) bm!468421))

(declare-fun m!6810672 () Bool)

(assert (=> b!5910005 m!6810672))

(declare-fun m!6810674 () Bool)

(assert (=> bm!468421 m!6810674))

(declare-fun m!6810676 () Bool)

(assert (=> bm!468419 m!6810676))

(assert (=> b!5909604 d!1854537))

(declare-fun b!5910027 () Bool)

(declare-fun e!3619120 () Bool)

(assert (=> b!5910027 (= e!3619120 tp_is_empty!41155)))

(declare-fun b!5910029 () Bool)

(declare-fun tp!1641915 () Bool)

(assert (=> b!5910029 (= e!3619120 tp!1641915)))

(declare-fun b!5910030 () Bool)

(declare-fun tp!1641913 () Bool)

(declare-fun tp!1641916 () Bool)

(assert (=> b!5910030 (= e!3619120 (and tp!1641913 tp!1641916))))

(declare-fun b!5910028 () Bool)

(declare-fun tp!1641914 () Bool)

(declare-fun tp!1641917 () Bool)

(assert (=> b!5910028 (= e!3619120 (and tp!1641914 tp!1641917))))

(assert (=> b!5909620 (= tp!1641896 e!3619120)))

(assert (= (and b!5909620 ((_ is ElementMatch!15951) (regOne!32415 r!7292))) b!5910027))

(assert (= (and b!5909620 ((_ is Concat!24796) (regOne!32415 r!7292))) b!5910028))

(assert (= (and b!5909620 ((_ is Star!15951) (regOne!32415 r!7292))) b!5910029))

(assert (= (and b!5909620 ((_ is Union!15951) (regOne!32415 r!7292))) b!5910030))

(declare-fun b!5910033 () Bool)

(declare-fun e!3619121 () Bool)

(assert (=> b!5910033 (= e!3619121 tp_is_empty!41155)))

(declare-fun b!5910035 () Bool)

(declare-fun tp!1641926 () Bool)

(assert (=> b!5910035 (= e!3619121 tp!1641926)))

(declare-fun b!5910036 () Bool)

(declare-fun tp!1641924 () Bool)

(declare-fun tp!1641927 () Bool)

(assert (=> b!5910036 (= e!3619121 (and tp!1641924 tp!1641927))))

(declare-fun b!5910034 () Bool)

(declare-fun tp!1641925 () Bool)

(declare-fun tp!1641928 () Bool)

(assert (=> b!5910034 (= e!3619121 (and tp!1641925 tp!1641928))))

(assert (=> b!5909620 (= tp!1641892 e!3619121)))

(assert (= (and b!5909620 ((_ is ElementMatch!15951) (regTwo!32415 r!7292))) b!5910033))

(assert (= (and b!5909620 ((_ is Concat!24796) (regTwo!32415 r!7292))) b!5910034))

(assert (= (and b!5909620 ((_ is Star!15951) (regTwo!32415 r!7292))) b!5910035))

(assert (= (and b!5909620 ((_ is Union!15951) (regTwo!32415 r!7292))) b!5910036))

(declare-fun condSetEmpty!40063 () Bool)

(assert (=> setNonEmpty!40060 (= condSetEmpty!40063 (= setRest!40060 ((as const (Array Context!10670 Bool)) false)))))

(declare-fun setRes!40063 () Bool)

(assert (=> setNonEmpty!40060 (= tp!1641895 setRes!40063)))

(declare-fun setIsEmpty!40063 () Bool)

(assert (=> setIsEmpty!40063 setRes!40063))

(declare-fun setNonEmpty!40063 () Bool)

(declare-fun tp!1641947 () Bool)

(declare-fun setElem!40063 () Context!10670)

(declare-fun e!3619129 () Bool)

(assert (=> setNonEmpty!40063 (= setRes!40063 (and tp!1641947 (inv!83124 setElem!40063) e!3619129))))

(declare-fun setRest!40063 () (InoxSet Context!10670))

(assert (=> setNonEmpty!40063 (= setRest!40060 ((_ map or) (store ((as const (Array Context!10670 Bool)) false) setElem!40063 true) setRest!40063))))

(declare-fun b!5910054 () Bool)

(declare-fun tp!1641946 () Bool)

(assert (=> b!5910054 (= e!3619129 tp!1641946)))

(assert (= (and setNonEmpty!40060 condSetEmpty!40063) setIsEmpty!40063))

(assert (= (and setNonEmpty!40060 (not condSetEmpty!40063)) setNonEmpty!40063))

(assert (= setNonEmpty!40063 b!5910054))

(declare-fun m!6810680 () Bool)

(assert (=> setNonEmpty!40063 m!6810680))

(declare-fun b!5910070 () Bool)

(declare-fun e!3619138 () Bool)

(declare-fun tp!1641961 () Bool)

(assert (=> b!5910070 (= e!3619138 tp!1641961)))

(declare-fun tp!1641962 () Bool)

(declare-fun e!3619137 () Bool)

(declare-fun b!5910069 () Bool)

(assert (=> b!5910069 (= e!3619137 (and (inv!83124 (h!70477 (t!377542 zl!343))) e!3619138 tp!1641962))))

(assert (=> b!5909617 (= tp!1641893 e!3619137)))

(assert (= b!5910069 b!5910070))

(assert (= (and b!5909617 ((_ is Cons!64029) (t!377542 zl!343))) b!5910069))

(declare-fun m!6810682 () Bool)

(assert (=> b!5910069 m!6810682))

(declare-fun b!5910080 () Bool)

(declare-fun e!3619144 () Bool)

(declare-fun tp!1641969 () Bool)

(declare-fun tp!1641970 () Bool)

(assert (=> b!5910080 (= e!3619144 (and tp!1641969 tp!1641970))))

(assert (=> b!5909607 (= tp!1641889 e!3619144)))

(assert (= (and b!5909607 ((_ is Cons!64028) (exprs!5835 (h!70477 zl!343)))) b!5910080))

(declare-fun b!5910083 () Bool)

(declare-fun e!3619147 () Bool)

(assert (=> b!5910083 (= e!3619147 tp_is_empty!41155)))

(declare-fun b!5910085 () Bool)

(declare-fun tp!1641977 () Bool)

(assert (=> b!5910085 (= e!3619147 tp!1641977)))

(declare-fun b!5910086 () Bool)

(declare-fun tp!1641973 () Bool)

(declare-fun tp!1641978 () Bool)

(assert (=> b!5910086 (= e!3619147 (and tp!1641973 tp!1641978))))

(declare-fun b!5910084 () Bool)

(declare-fun tp!1641976 () Bool)

(declare-fun tp!1641979 () Bool)

(assert (=> b!5910084 (= e!3619147 (and tp!1641976 tp!1641979))))

(assert (=> b!5909613 (= tp!1641897 e!3619147)))

(assert (= (and b!5909613 ((_ is ElementMatch!15951) (regOne!32414 r!7292))) b!5910083))

(assert (= (and b!5909613 ((_ is Concat!24796) (regOne!32414 r!7292))) b!5910084))

(assert (= (and b!5909613 ((_ is Star!15951) (regOne!32414 r!7292))) b!5910085))

(assert (= (and b!5909613 ((_ is Union!15951) (regOne!32414 r!7292))) b!5910086))

(declare-fun b!5910087 () Bool)

(declare-fun e!3619148 () Bool)

(assert (=> b!5910087 (= e!3619148 tp_is_empty!41155)))

(declare-fun b!5910089 () Bool)

(declare-fun tp!1641982 () Bool)

(assert (=> b!5910089 (= e!3619148 tp!1641982)))

(declare-fun b!5910090 () Bool)

(declare-fun tp!1641980 () Bool)

(declare-fun tp!1641983 () Bool)

(assert (=> b!5910090 (= e!3619148 (and tp!1641980 tp!1641983))))

(declare-fun b!5910088 () Bool)

(declare-fun tp!1641981 () Bool)

(declare-fun tp!1641984 () Bool)

(assert (=> b!5910088 (= e!3619148 (and tp!1641981 tp!1641984))))

(assert (=> b!5909613 (= tp!1641894 e!3619148)))

(assert (= (and b!5909613 ((_ is ElementMatch!15951) (regTwo!32414 r!7292))) b!5910087))

(assert (= (and b!5909613 ((_ is Concat!24796) (regTwo!32414 r!7292))) b!5910088))

(assert (= (and b!5909613 ((_ is Star!15951) (regTwo!32414 r!7292))) b!5910089))

(assert (= (and b!5909613 ((_ is Union!15951) (regTwo!32414 r!7292))) b!5910090))

(declare-fun b!5910091 () Bool)

(declare-fun e!3619149 () Bool)

(declare-fun tp!1641985 () Bool)

(declare-fun tp!1641986 () Bool)

(assert (=> b!5910091 (= e!3619149 (and tp!1641985 tp!1641986))))

(assert (=> b!5909608 (= tp!1641890 e!3619149)))

(assert (= (and b!5909608 ((_ is Cons!64028) (exprs!5835 setElem!40060))) b!5910091))

(declare-fun b!5910102 () Bool)

(declare-fun e!3619155 () Bool)

(declare-fun tp!1641996 () Bool)

(assert (=> b!5910102 (= e!3619155 (and tp_is_empty!41155 tp!1641996))))

(assert (=> b!5909619 (= tp!1641891 e!3619155)))

(assert (= (and b!5909619 ((_ is Cons!64030) (t!377543 s!2326))) b!5910102))

(declare-fun b!5910103 () Bool)

(declare-fun e!3619156 () Bool)

(assert (=> b!5910103 (= e!3619156 tp_is_empty!41155)))

(declare-fun b!5910105 () Bool)

(declare-fun tp!1641999 () Bool)

(assert (=> b!5910105 (= e!3619156 tp!1641999)))

(declare-fun b!5910106 () Bool)

(declare-fun tp!1641997 () Bool)

(declare-fun tp!1642000 () Bool)

(assert (=> b!5910106 (= e!3619156 (and tp!1641997 tp!1642000))))

(declare-fun b!5910104 () Bool)

(declare-fun tp!1641998 () Bool)

(declare-fun tp!1642001 () Bool)

(assert (=> b!5910104 (= e!3619156 (and tp!1641998 tp!1642001))))

(assert (=> b!5909615 (= tp!1641898 e!3619156)))

(assert (= (and b!5909615 ((_ is ElementMatch!15951) (reg!16280 r!7292))) b!5910103))

(assert (= (and b!5909615 ((_ is Concat!24796) (reg!16280 r!7292))) b!5910104))

(assert (= (and b!5909615 ((_ is Star!15951) (reg!16280 r!7292))) b!5910105))

(assert (= (and b!5909615 ((_ is Union!15951) (reg!16280 r!7292))) b!5910106))

(check-sat (not d!1854501) (not b!5910070) (not d!1854525) (not b!5909963) (not bm!468421) (not b!5910105) (not b!5910088) (not b!5909960) (not b!5909865) (not b!5909861) (not b!5909863) (not setNonEmpty!40063) (not b!5909828) (not d!1854489) (not b!5909955) (not b!5910085) (not b!5909996) (not bm!468416) (not b!5910029) (not bm!468418) (not b!5910084) (not d!1854519) (not d!1854527) (not b!5909858) (not b!5909867) (not b!5909860) (not b!5909792) (not d!1854505) (not b!5910030) (not b!5910034) tp_is_empty!41155 (not b!5910089) (not b!5909799) (not d!1854487) (not b!5910069) (not b!5909650) (not b!5910036) (not b!5910005) (not b!5909657) (not b!5910086) (not b!5910080) (not b!5909954) (not b!5910090) (not d!1854499) (not b!5909659) (not b!5909656) (not b!5909959) (not b!5909892) (not b!5909962) (not bm!468419) (not b!5909655) (not b!5909958) (not b!5909661) (not bm!468382) (not bm!468399) (not b!5910106) (not b!5910104) (not b!5910102) (not b!5910035) (not d!1854517) (not b!5909866) (not b!5910028) (not b!5910054) (not bm!468400) (not b!5910091))
(check-sat)
