; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!597120 () Bool)

(assert start!597120)

(declare-fun b!5829720 () Bool)

(declare-fun res!2457146 () Bool)

(declare-fun e!3576859 () Bool)

(assert (=> b!5829720 (=> res!2457146 e!3576859)))

(declare-datatypes ((C!32040 0))(
  ( (C!32041 (val!25722 Int)) )
))
(declare-datatypes ((Regex!15885 0))(
  ( (ElementMatch!15885 (c!1032959 C!32040)) (Concat!24730 (regOne!32282 Regex!15885) (regTwo!32282 Regex!15885)) (EmptyExpr!15885) (Star!15885 (reg!16214 Regex!15885)) (EmptyLang!15885) (Union!15885 (regOne!32283 Regex!15885) (regTwo!32283 Regex!15885)) )
))
(declare-datatypes ((List!63954 0))(
  ( (Nil!63830) (Cons!63830 (h!70278 Regex!15885) (t!377309 List!63954)) )
))
(declare-datatypes ((Context!10538 0))(
  ( (Context!10539 (exprs!5769 List!63954)) )
))
(declare-datatypes ((List!63955 0))(
  ( (Nil!63831) (Cons!63831 (h!70279 Context!10538) (t!377310 List!63955)) )
))
(declare-fun zl!343 () List!63955)

(get-info :version)

(assert (=> b!5829720 (= res!2457146 (not ((_ is Cons!63830) (exprs!5769 (h!70279 zl!343)))))))

(declare-fun b!5829721 () Bool)

(declare-fun e!3576855 () Bool)

(declare-fun tp_is_empty!41023 () Bool)

(declare-fun tp!1610525 () Bool)

(assert (=> b!5829721 (= e!3576855 (and tp_is_empty!41023 tp!1610525))))

(declare-fun setNonEmpty!39430 () Bool)

(declare-fun tp!1610526 () Bool)

(declare-fun setRes!39430 () Bool)

(declare-fun e!3576857 () Bool)

(declare-fun setElem!39430 () Context!10538)

(declare-fun inv!82959 (Context!10538) Bool)

(assert (=> setNonEmpty!39430 (= setRes!39430 (and tp!1610526 (inv!82959 setElem!39430) e!3576857))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10538))

(declare-fun setRest!39430 () (InoxSet Context!10538))

(assert (=> setNonEmpty!39430 (= z!1189 ((_ map or) (store ((as const (Array Context!10538 Bool)) false) setElem!39430 true) setRest!39430))))

(declare-fun b!5829722 () Bool)

(declare-fun tp!1610522 () Bool)

(assert (=> b!5829722 (= e!3576857 tp!1610522)))

(declare-fun b!5829723 () Bool)

(declare-fun r!7292 () Regex!15885)

(assert (=> b!5829723 (= e!3576859 (inv!82959 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830))))))

(declare-fun b!5829724 () Bool)

(declare-fun tp!1610519 () Bool)

(declare-fun e!3576858 () Bool)

(declare-fun e!3576854 () Bool)

(assert (=> b!5829724 (= e!3576858 (and (inv!82959 (h!70279 zl!343)) e!3576854 tp!1610519))))

(declare-fun b!5829725 () Bool)

(declare-fun res!2457144 () Bool)

(declare-fun e!3576853 () Bool)

(assert (=> b!5829725 (=> (not res!2457144) (not e!3576853))))

(declare-fun unfocusZipper!1627 (List!63955) Regex!15885)

(assert (=> b!5829725 (= res!2457144 (= r!7292 (unfocusZipper!1627 zl!343)))))

(declare-fun res!2457148 () Bool)

(assert (=> start!597120 (=> (not res!2457148) (not e!3576853))))

(declare-fun validRegex!7621 (Regex!15885) Bool)

(assert (=> start!597120 (= res!2457148 (validRegex!7621 r!7292))))

(assert (=> start!597120 e!3576853))

(declare-fun e!3576856 () Bool)

(assert (=> start!597120 e!3576856))

(declare-fun condSetEmpty!39430 () Bool)

(assert (=> start!597120 (= condSetEmpty!39430 (= z!1189 ((as const (Array Context!10538 Bool)) false)))))

(assert (=> start!597120 setRes!39430))

(assert (=> start!597120 e!3576858))

(assert (=> start!597120 e!3576855))

(declare-fun b!5829726 () Bool)

(declare-fun res!2457145 () Bool)

(assert (=> b!5829726 (=> (not res!2457145) (not e!3576853))))

(declare-fun toList!9669 ((InoxSet Context!10538)) List!63955)

(assert (=> b!5829726 (= res!2457145 (= (toList!9669 z!1189) zl!343))))

(declare-fun b!5829727 () Bool)

(declare-fun res!2457149 () Bool)

(assert (=> b!5829727 (=> res!2457149 e!3576859)))

(declare-fun isEmpty!35696 (List!63955) Bool)

(assert (=> b!5829727 (= res!2457149 (not (isEmpty!35696 (t!377310 zl!343))))))

(declare-fun b!5829728 () Bool)

(declare-fun tp!1610521 () Bool)

(assert (=> b!5829728 (= e!3576856 tp!1610521)))

(declare-fun b!5829729 () Bool)

(declare-fun tp!1610527 () Bool)

(assert (=> b!5829729 (= e!3576854 tp!1610527)))

(declare-fun b!5829730 () Bool)

(declare-fun res!2457147 () Bool)

(assert (=> b!5829730 (=> res!2457147 e!3576859)))

(declare-fun generalisedConcat!1482 (List!63954) Regex!15885)

(assert (=> b!5829730 (= res!2457147 (not (= r!7292 (generalisedConcat!1482 (exprs!5769 (h!70279 zl!343))))))))

(declare-fun setIsEmpty!39430 () Bool)

(assert (=> setIsEmpty!39430 setRes!39430))

(declare-fun b!5829731 () Bool)

(declare-fun tp!1610520 () Bool)

(declare-fun tp!1610523 () Bool)

(assert (=> b!5829731 (= e!3576856 (and tp!1610520 tp!1610523))))

(declare-fun b!5829732 () Bool)

(declare-fun tp!1610528 () Bool)

(declare-fun tp!1610524 () Bool)

(assert (=> b!5829732 (= e!3576856 (and tp!1610528 tp!1610524))))

(declare-fun b!5829733 () Bool)

(declare-fun res!2457143 () Bool)

(assert (=> b!5829733 (=> res!2457143 e!3576859)))

(declare-fun generalisedUnion!1729 (List!63954) Regex!15885)

(declare-fun unfocusZipperList!1306 (List!63955) List!63954)

(assert (=> b!5829733 (= res!2457143 (not (= r!7292 (generalisedUnion!1729 (unfocusZipperList!1306 zl!343)))))))

(declare-fun b!5829734 () Bool)

(declare-fun res!2457142 () Bool)

(assert (=> b!5829734 (=> res!2457142 e!3576859)))

(assert (=> b!5829734 (= res!2457142 (or ((_ is EmptyExpr!15885) r!7292) ((_ is EmptyLang!15885) r!7292) (not ((_ is ElementMatch!15885) r!7292))))))

(declare-fun b!5829735 () Bool)

(assert (=> b!5829735 (= e!3576853 (not e!3576859))))

(declare-fun res!2457150 () Bool)

(assert (=> b!5829735 (=> res!2457150 e!3576859)))

(assert (=> b!5829735 (= res!2457150 (not ((_ is Cons!63831) zl!343)))))

(declare-datatypes ((List!63956 0))(
  ( (Nil!63832) (Cons!63832 (h!70280 C!32040) (t!377311 List!63956)) )
))
(declare-fun s!2326 () List!63956)

(declare-fun matchR!8068 (Regex!15885 List!63956) Bool)

(declare-fun matchRSpec!2986 (Regex!15885 List!63956) Bool)

(assert (=> b!5829735 (= (matchR!8068 r!7292 s!2326) (matchRSpec!2986 r!7292 s!2326))))

(declare-datatypes ((Unit!157041 0))(
  ( (Unit!157042) )
))
(declare-fun lt!2302850 () Unit!157041)

(declare-fun mainMatchTheorem!2986 (Regex!15885 List!63956) Unit!157041)

(assert (=> b!5829735 (= lt!2302850 (mainMatchTheorem!2986 r!7292 s!2326))))

(declare-fun b!5829736 () Bool)

(assert (=> b!5829736 (= e!3576856 tp_is_empty!41023)))

(assert (= (and start!597120 res!2457148) b!5829726))

(assert (= (and b!5829726 res!2457145) b!5829725))

(assert (= (and b!5829725 res!2457144) b!5829735))

(assert (= (and b!5829735 (not res!2457150)) b!5829727))

(assert (= (and b!5829727 (not res!2457149)) b!5829730))

(assert (= (and b!5829730 (not res!2457147)) b!5829720))

(assert (= (and b!5829720 (not res!2457146)) b!5829733))

(assert (= (and b!5829733 (not res!2457143)) b!5829734))

(assert (= (and b!5829734 (not res!2457142)) b!5829723))

(assert (= (and start!597120 ((_ is ElementMatch!15885) r!7292)) b!5829736))

(assert (= (and start!597120 ((_ is Concat!24730) r!7292)) b!5829732))

(assert (= (and start!597120 ((_ is Star!15885) r!7292)) b!5829728))

(assert (= (and start!597120 ((_ is Union!15885) r!7292)) b!5829731))

(assert (= (and start!597120 condSetEmpty!39430) setIsEmpty!39430))

(assert (= (and start!597120 (not condSetEmpty!39430)) setNonEmpty!39430))

(assert (= setNonEmpty!39430 b!5829722))

(assert (= b!5829724 b!5829729))

(assert (= (and start!597120 ((_ is Cons!63831) zl!343)) b!5829724))

(assert (= (and start!597120 ((_ is Cons!63832) s!2326)) b!5829721))

(declare-fun m!6760002 () Bool)

(assert (=> b!5829735 m!6760002))

(declare-fun m!6760004 () Bool)

(assert (=> b!5829735 m!6760004))

(declare-fun m!6760006 () Bool)

(assert (=> b!5829735 m!6760006))

(declare-fun m!6760008 () Bool)

(assert (=> b!5829727 m!6760008))

(declare-fun m!6760010 () Bool)

(assert (=> b!5829730 m!6760010))

(declare-fun m!6760012 () Bool)

(assert (=> b!5829723 m!6760012))

(declare-fun m!6760014 () Bool)

(assert (=> setNonEmpty!39430 m!6760014))

(declare-fun m!6760016 () Bool)

(assert (=> start!597120 m!6760016))

(declare-fun m!6760018 () Bool)

(assert (=> b!5829733 m!6760018))

(assert (=> b!5829733 m!6760018))

(declare-fun m!6760020 () Bool)

(assert (=> b!5829733 m!6760020))

(declare-fun m!6760022 () Bool)

(assert (=> b!5829726 m!6760022))

(declare-fun m!6760024 () Bool)

(assert (=> b!5829724 m!6760024))

(declare-fun m!6760026 () Bool)

(assert (=> b!5829725 m!6760026))

(check-sat (not b!5829726) (not b!5829727) (not b!5829730) (not b!5829724) (not b!5829721) (not b!5829722) (not b!5829729) tp_is_empty!41023 (not b!5829735) (not setNonEmpty!39430) (not b!5829733) (not b!5829731) (not b!5829723) (not b!5829732) (not start!597120) (not b!5829725) (not b!5829728))
(check-sat)
(get-model)

(declare-fun d!1833328 () Bool)

(declare-fun lambda!318975 () Int)

(declare-fun forall!14975 (List!63954 Int) Bool)

(assert (=> d!1833328 (= (inv!82959 setElem!39430) (forall!14975 (exprs!5769 setElem!39430) lambda!318975))))

(declare-fun bs!1374555 () Bool)

(assert (= bs!1374555 d!1833328))

(declare-fun m!6760030 () Bool)

(assert (=> bs!1374555 m!6760030))

(assert (=> setNonEmpty!39430 d!1833328))

(declare-fun d!1833332 () Bool)

(assert (=> d!1833332 (= (isEmpty!35696 (t!377310 zl!343)) ((_ is Nil!63831) (t!377310 zl!343)))))

(assert (=> b!5829727 d!1833332))

(declare-fun bs!1374556 () Bool)

(declare-fun d!1833334 () Bool)

(assert (= bs!1374556 (and d!1833334 d!1833328)))

(declare-fun lambda!318978 () Int)

(assert (=> bs!1374556 (= lambda!318978 lambda!318975)))

(declare-fun b!5829757 () Bool)

(declare-fun e!3576874 () Regex!15885)

(assert (=> b!5829757 (= e!3576874 (Union!15885 (h!70278 (unfocusZipperList!1306 zl!343)) (generalisedUnion!1729 (t!377309 (unfocusZipperList!1306 zl!343)))))))

(declare-fun b!5829758 () Bool)

(assert (=> b!5829758 (= e!3576874 EmptyLang!15885)))

(declare-fun b!5829759 () Bool)

(declare-fun e!3576872 () Regex!15885)

(assert (=> b!5829759 (= e!3576872 (h!70278 (unfocusZipperList!1306 zl!343)))))

(declare-fun b!5829760 () Bool)

(declare-fun e!3576877 () Bool)

(declare-fun lt!2302856 () Regex!15885)

(declare-fun head!12330 (List!63954) Regex!15885)

(assert (=> b!5829760 (= e!3576877 (= lt!2302856 (head!12330 (unfocusZipperList!1306 zl!343))))))

(declare-fun b!5829761 () Bool)

(assert (=> b!5829761 (= e!3576872 e!3576874)))

(declare-fun c!1032970 () Bool)

(assert (=> b!5829761 (= c!1032970 ((_ is Cons!63830) (unfocusZipperList!1306 zl!343)))))

(declare-fun b!5829762 () Bool)

(declare-fun isUnion!761 (Regex!15885) Bool)

(assert (=> b!5829762 (= e!3576877 (isUnion!761 lt!2302856))))

(declare-fun b!5829763 () Bool)

(declare-fun e!3576873 () Bool)

(assert (=> b!5829763 (= e!3576873 e!3576877)))

(declare-fun c!1032969 () Bool)

(declare-fun isEmpty!35697 (List!63954) Bool)

(declare-fun tail!11415 (List!63954) List!63954)

(assert (=> b!5829763 (= c!1032969 (isEmpty!35697 (tail!11415 (unfocusZipperList!1306 zl!343))))))

(declare-fun b!5829764 () Bool)

(declare-fun e!3576875 () Bool)

(assert (=> b!5829764 (= e!3576875 (isEmpty!35697 (t!377309 (unfocusZipperList!1306 zl!343))))))

(declare-fun b!5829765 () Bool)

(declare-fun isEmptyLang!1331 (Regex!15885) Bool)

(assert (=> b!5829765 (= e!3576873 (isEmptyLang!1331 lt!2302856))))

(declare-fun b!5829766 () Bool)

(declare-fun e!3576876 () Bool)

(assert (=> b!5829766 (= e!3576876 e!3576873)))

(declare-fun c!1032968 () Bool)

(assert (=> b!5829766 (= c!1032968 (isEmpty!35697 (unfocusZipperList!1306 zl!343)))))

(assert (=> d!1833334 e!3576876))

(declare-fun res!2457156 () Bool)

(assert (=> d!1833334 (=> (not res!2457156) (not e!3576876))))

(assert (=> d!1833334 (= res!2457156 (validRegex!7621 lt!2302856))))

(assert (=> d!1833334 (= lt!2302856 e!3576872)))

(declare-fun c!1032971 () Bool)

(assert (=> d!1833334 (= c!1032971 e!3576875)))

(declare-fun res!2457155 () Bool)

(assert (=> d!1833334 (=> (not res!2457155) (not e!3576875))))

(assert (=> d!1833334 (= res!2457155 ((_ is Cons!63830) (unfocusZipperList!1306 zl!343)))))

(assert (=> d!1833334 (forall!14975 (unfocusZipperList!1306 zl!343) lambda!318978)))

(assert (=> d!1833334 (= (generalisedUnion!1729 (unfocusZipperList!1306 zl!343)) lt!2302856)))

(assert (= (and d!1833334 res!2457155) b!5829764))

(assert (= (and d!1833334 c!1032971) b!5829759))

(assert (= (and d!1833334 (not c!1032971)) b!5829761))

(assert (= (and b!5829761 c!1032970) b!5829757))

(assert (= (and b!5829761 (not c!1032970)) b!5829758))

(assert (= (and d!1833334 res!2457156) b!5829766))

(assert (= (and b!5829766 c!1032968) b!5829765))

(assert (= (and b!5829766 (not c!1032968)) b!5829763))

(assert (= (and b!5829763 c!1032969) b!5829760))

(assert (= (and b!5829763 (not c!1032969)) b!5829762))

(declare-fun m!6760032 () Bool)

(assert (=> b!5829764 m!6760032))

(declare-fun m!6760034 () Bool)

(assert (=> b!5829757 m!6760034))

(assert (=> b!5829766 m!6760018))

(declare-fun m!6760036 () Bool)

(assert (=> b!5829766 m!6760036))

(assert (=> b!5829760 m!6760018))

(declare-fun m!6760038 () Bool)

(assert (=> b!5829760 m!6760038))

(assert (=> b!5829763 m!6760018))

(declare-fun m!6760040 () Bool)

(assert (=> b!5829763 m!6760040))

(assert (=> b!5829763 m!6760040))

(declare-fun m!6760042 () Bool)

(assert (=> b!5829763 m!6760042))

(declare-fun m!6760044 () Bool)

(assert (=> b!5829762 m!6760044))

(declare-fun m!6760046 () Bool)

(assert (=> b!5829765 m!6760046))

(declare-fun m!6760048 () Bool)

(assert (=> d!1833334 m!6760048))

(assert (=> d!1833334 m!6760018))

(declare-fun m!6760050 () Bool)

(assert (=> d!1833334 m!6760050))

(assert (=> b!5829733 d!1833334))

(declare-fun bs!1374557 () Bool)

(declare-fun d!1833336 () Bool)

(assert (= bs!1374557 (and d!1833336 d!1833328)))

(declare-fun lambda!318981 () Int)

(assert (=> bs!1374557 (= lambda!318981 lambda!318975)))

(declare-fun bs!1374558 () Bool)

(assert (= bs!1374558 (and d!1833336 d!1833334)))

(assert (=> bs!1374558 (= lambda!318981 lambda!318978)))

(declare-fun lt!2302859 () List!63954)

(assert (=> d!1833336 (forall!14975 lt!2302859 lambda!318981)))

(declare-fun e!3576880 () List!63954)

(assert (=> d!1833336 (= lt!2302859 e!3576880)))

(declare-fun c!1032974 () Bool)

(assert (=> d!1833336 (= c!1032974 ((_ is Cons!63831) zl!343))))

(assert (=> d!1833336 (= (unfocusZipperList!1306 zl!343) lt!2302859)))

(declare-fun b!5829771 () Bool)

(assert (=> b!5829771 (= e!3576880 (Cons!63830 (generalisedConcat!1482 (exprs!5769 (h!70279 zl!343))) (unfocusZipperList!1306 (t!377310 zl!343))))))

(declare-fun b!5829772 () Bool)

(assert (=> b!5829772 (= e!3576880 Nil!63830)))

(assert (= (and d!1833336 c!1032974) b!5829771))

(assert (= (and d!1833336 (not c!1032974)) b!5829772))

(declare-fun m!6760052 () Bool)

(assert (=> d!1833336 m!6760052))

(assert (=> b!5829771 m!6760010))

(declare-fun m!6760054 () Bool)

(assert (=> b!5829771 m!6760054))

(assert (=> b!5829733 d!1833336))

(declare-fun bs!1374559 () Bool)

(declare-fun d!1833338 () Bool)

(assert (= bs!1374559 (and d!1833338 d!1833328)))

(declare-fun lambda!318982 () Int)

(assert (=> bs!1374559 (= lambda!318982 lambda!318975)))

(declare-fun bs!1374560 () Bool)

(assert (= bs!1374560 (and d!1833338 d!1833334)))

(assert (=> bs!1374560 (= lambda!318982 lambda!318978)))

(declare-fun bs!1374561 () Bool)

(assert (= bs!1374561 (and d!1833338 d!1833336)))

(assert (=> bs!1374561 (= lambda!318982 lambda!318981)))

(assert (=> d!1833338 (= (inv!82959 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830))) (forall!14975 (exprs!5769 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830))) lambda!318982))))

(declare-fun bs!1374562 () Bool)

(assert (= bs!1374562 d!1833338))

(declare-fun m!6760056 () Bool)

(assert (=> bs!1374562 m!6760056))

(assert (=> b!5829723 d!1833338))

(declare-fun bs!1374563 () Bool)

(declare-fun d!1833340 () Bool)

(assert (= bs!1374563 (and d!1833340 d!1833328)))

(declare-fun lambda!318983 () Int)

(assert (=> bs!1374563 (= lambda!318983 lambda!318975)))

(declare-fun bs!1374564 () Bool)

(assert (= bs!1374564 (and d!1833340 d!1833334)))

(assert (=> bs!1374564 (= lambda!318983 lambda!318978)))

(declare-fun bs!1374565 () Bool)

(assert (= bs!1374565 (and d!1833340 d!1833336)))

(assert (=> bs!1374565 (= lambda!318983 lambda!318981)))

(declare-fun bs!1374566 () Bool)

(assert (= bs!1374566 (and d!1833340 d!1833338)))

(assert (=> bs!1374566 (= lambda!318983 lambda!318982)))

(assert (=> d!1833340 (= (inv!82959 (h!70279 zl!343)) (forall!14975 (exprs!5769 (h!70279 zl!343)) lambda!318983))))

(declare-fun bs!1374567 () Bool)

(assert (= bs!1374567 d!1833340))

(declare-fun m!6760058 () Bool)

(assert (=> bs!1374567 m!6760058))

(assert (=> b!5829724 d!1833340))

(declare-fun d!1833342 () Bool)

(declare-fun res!2457170 () Bool)

(declare-fun e!3576898 () Bool)

(assert (=> d!1833342 (=> res!2457170 e!3576898)))

(assert (=> d!1833342 (= res!2457170 ((_ is ElementMatch!15885) r!7292))))

(assert (=> d!1833342 (= (validRegex!7621 r!7292) e!3576898)))

(declare-fun b!5829791 () Bool)

(declare-fun res!2457167 () Bool)

(declare-fun e!3576899 () Bool)

(assert (=> b!5829791 (=> res!2457167 e!3576899)))

(assert (=> b!5829791 (= res!2457167 (not ((_ is Concat!24730) r!7292)))))

(declare-fun e!3576895 () Bool)

(assert (=> b!5829791 (= e!3576895 e!3576899)))

(declare-fun b!5829792 () Bool)

(declare-fun e!3576900 () Bool)

(assert (=> b!5829792 (= e!3576899 e!3576900)))

(declare-fun res!2457171 () Bool)

(assert (=> b!5829792 (=> (not res!2457171) (not e!3576900))))

(declare-fun call!455271 () Bool)

(assert (=> b!5829792 (= res!2457171 call!455271)))

(declare-fun b!5829793 () Bool)

(declare-fun e!3576897 () Bool)

(assert (=> b!5829793 (= e!3576898 e!3576897)))

(declare-fun c!1032980 () Bool)

(assert (=> b!5829793 (= c!1032980 ((_ is Star!15885) r!7292))))

(declare-fun bm!455264 () Bool)

(declare-fun c!1032979 () Bool)

(assert (=> bm!455264 (= call!455271 (validRegex!7621 (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))))))

(declare-fun bm!455265 () Bool)

(declare-fun call!455270 () Bool)

(declare-fun call!455269 () Bool)

(assert (=> bm!455265 (= call!455270 call!455269)))

(declare-fun b!5829794 () Bool)

(assert (=> b!5829794 (= e!3576897 e!3576895)))

(assert (=> b!5829794 (= c!1032979 ((_ is Union!15885) r!7292))))

(declare-fun b!5829795 () Bool)

(declare-fun res!2457168 () Bool)

(declare-fun e!3576901 () Bool)

(assert (=> b!5829795 (=> (not res!2457168) (not e!3576901))))

(assert (=> b!5829795 (= res!2457168 call!455271)))

(assert (=> b!5829795 (= e!3576895 e!3576901)))

(declare-fun b!5829796 () Bool)

(assert (=> b!5829796 (= e!3576901 call!455270)))

(declare-fun b!5829797 () Bool)

(assert (=> b!5829797 (= e!3576900 call!455270)))

(declare-fun b!5829798 () Bool)

(declare-fun e!3576896 () Bool)

(assert (=> b!5829798 (= e!3576896 call!455269)))

(declare-fun b!5829799 () Bool)

(assert (=> b!5829799 (= e!3576897 e!3576896)))

(declare-fun res!2457169 () Bool)

(declare-fun nullable!5886 (Regex!15885) Bool)

(assert (=> b!5829799 (= res!2457169 (not (nullable!5886 (reg!16214 r!7292))))))

(assert (=> b!5829799 (=> (not res!2457169) (not e!3576896))))

(declare-fun bm!455266 () Bool)

(assert (=> bm!455266 (= call!455269 (validRegex!7621 (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))))))

(assert (= (and d!1833342 (not res!2457170)) b!5829793))

(assert (= (and b!5829793 c!1032980) b!5829799))

(assert (= (and b!5829793 (not c!1032980)) b!5829794))

(assert (= (and b!5829799 res!2457169) b!5829798))

(assert (= (and b!5829794 c!1032979) b!5829795))

(assert (= (and b!5829794 (not c!1032979)) b!5829791))

(assert (= (and b!5829795 res!2457168) b!5829796))

(assert (= (and b!5829791 (not res!2457167)) b!5829792))

(assert (= (and b!5829792 res!2457171) b!5829797))

(assert (= (or b!5829796 b!5829797) bm!455265))

(assert (= (or b!5829795 b!5829792) bm!455264))

(assert (= (or b!5829798 bm!455265) bm!455266))

(declare-fun m!6760060 () Bool)

(assert (=> bm!455264 m!6760060))

(declare-fun m!6760062 () Bool)

(assert (=> b!5829799 m!6760062))

(declare-fun m!6760064 () Bool)

(assert (=> bm!455266 m!6760064))

(assert (=> start!597120 d!1833342))

(declare-fun bs!1374568 () Bool)

(declare-fun d!1833344 () Bool)

(assert (= bs!1374568 (and d!1833344 d!1833338)))

(declare-fun lambda!318986 () Int)

(assert (=> bs!1374568 (= lambda!318986 lambda!318982)))

(declare-fun bs!1374569 () Bool)

(assert (= bs!1374569 (and d!1833344 d!1833340)))

(assert (=> bs!1374569 (= lambda!318986 lambda!318983)))

(declare-fun bs!1374570 () Bool)

(assert (= bs!1374570 (and d!1833344 d!1833328)))

(assert (=> bs!1374570 (= lambda!318986 lambda!318975)))

(declare-fun bs!1374571 () Bool)

(assert (= bs!1374571 (and d!1833344 d!1833336)))

(assert (=> bs!1374571 (= lambda!318986 lambda!318981)))

(declare-fun bs!1374572 () Bool)

(assert (= bs!1374572 (and d!1833344 d!1833334)))

(assert (=> bs!1374572 (= lambda!318986 lambda!318978)))

(declare-fun b!5829820 () Bool)

(declare-fun e!3576919 () Regex!15885)

(declare-fun e!3576914 () Regex!15885)

(assert (=> b!5829820 (= e!3576919 e!3576914)))

(declare-fun c!1032992 () Bool)

(assert (=> b!5829820 (= c!1032992 ((_ is Cons!63830) (exprs!5769 (h!70279 zl!343))))))

(declare-fun b!5829821 () Bool)

(declare-fun e!3576916 () Bool)

(declare-fun lt!2302862 () Regex!15885)

(declare-fun isEmptyExpr!1323 (Regex!15885) Bool)

(assert (=> b!5829821 (= e!3576916 (isEmptyExpr!1323 lt!2302862))))

(declare-fun b!5829822 () Bool)

(assert (=> b!5829822 (= e!3576919 (h!70278 (exprs!5769 (h!70279 zl!343))))))

(declare-fun b!5829824 () Bool)

(assert (=> b!5829824 (= e!3576914 (Concat!24730 (h!70278 (exprs!5769 (h!70279 zl!343))) (generalisedConcat!1482 (t!377309 (exprs!5769 (h!70279 zl!343))))))))

(declare-fun b!5829825 () Bool)

(declare-fun e!3576917 () Bool)

(declare-fun isConcat!846 (Regex!15885) Bool)

(assert (=> b!5829825 (= e!3576917 (isConcat!846 lt!2302862))))

(declare-fun b!5829826 () Bool)

(declare-fun e!3576915 () Bool)

(assert (=> b!5829826 (= e!3576915 (isEmpty!35697 (t!377309 (exprs!5769 (h!70279 zl!343)))))))

(declare-fun b!5829827 () Bool)

(declare-fun e!3576918 () Bool)

(assert (=> b!5829827 (= e!3576918 e!3576916)))

(declare-fun c!1032989 () Bool)

(assert (=> b!5829827 (= c!1032989 (isEmpty!35697 (exprs!5769 (h!70279 zl!343))))))

(declare-fun b!5829828 () Bool)

(assert (=> b!5829828 (= e!3576916 e!3576917)))

(declare-fun c!1032990 () Bool)

(assert (=> b!5829828 (= c!1032990 (isEmpty!35697 (tail!11415 (exprs!5769 (h!70279 zl!343)))))))

(declare-fun b!5829829 () Bool)

(assert (=> b!5829829 (= e!3576914 EmptyExpr!15885)))

(declare-fun b!5829823 () Bool)

(assert (=> b!5829823 (= e!3576917 (= lt!2302862 (head!12330 (exprs!5769 (h!70279 zl!343)))))))

(assert (=> d!1833344 e!3576918))

(declare-fun res!2457177 () Bool)

(assert (=> d!1833344 (=> (not res!2457177) (not e!3576918))))

(assert (=> d!1833344 (= res!2457177 (validRegex!7621 lt!2302862))))

(assert (=> d!1833344 (= lt!2302862 e!3576919)))

(declare-fun c!1032991 () Bool)

(assert (=> d!1833344 (= c!1032991 e!3576915)))

(declare-fun res!2457176 () Bool)

(assert (=> d!1833344 (=> (not res!2457176) (not e!3576915))))

(assert (=> d!1833344 (= res!2457176 ((_ is Cons!63830) (exprs!5769 (h!70279 zl!343))))))

(assert (=> d!1833344 (forall!14975 (exprs!5769 (h!70279 zl!343)) lambda!318986)))

(assert (=> d!1833344 (= (generalisedConcat!1482 (exprs!5769 (h!70279 zl!343))) lt!2302862)))

(assert (= (and d!1833344 res!2457176) b!5829826))

(assert (= (and d!1833344 c!1032991) b!5829822))

(assert (= (and d!1833344 (not c!1032991)) b!5829820))

(assert (= (and b!5829820 c!1032992) b!5829824))

(assert (= (and b!5829820 (not c!1032992)) b!5829829))

(assert (= (and d!1833344 res!2457177) b!5829827))

(assert (= (and b!5829827 c!1032989) b!5829821))

(assert (= (and b!5829827 (not c!1032989)) b!5829828))

(assert (= (and b!5829828 c!1032990) b!5829823))

(assert (= (and b!5829828 (not c!1032990)) b!5829825))

(declare-fun m!6760066 () Bool)

(assert (=> b!5829823 m!6760066))

(declare-fun m!6760068 () Bool)

(assert (=> d!1833344 m!6760068))

(declare-fun m!6760070 () Bool)

(assert (=> d!1833344 m!6760070))

(declare-fun m!6760072 () Bool)

(assert (=> b!5829825 m!6760072))

(declare-fun m!6760074 () Bool)

(assert (=> b!5829821 m!6760074))

(declare-fun m!6760076 () Bool)

(assert (=> b!5829828 m!6760076))

(assert (=> b!5829828 m!6760076))

(declare-fun m!6760078 () Bool)

(assert (=> b!5829828 m!6760078))

(declare-fun m!6760080 () Bool)

(assert (=> b!5829827 m!6760080))

(declare-fun m!6760082 () Bool)

(assert (=> b!5829826 m!6760082))

(declare-fun m!6760084 () Bool)

(assert (=> b!5829824 m!6760084))

(assert (=> b!5829730 d!1833344))

(declare-fun b!5829858 () Bool)

(declare-fun e!3576935 () Bool)

(declare-fun lt!2302865 () Bool)

(declare-fun call!455274 () Bool)

(assert (=> b!5829858 (= e!3576935 (= lt!2302865 call!455274))))

(declare-fun bm!455269 () Bool)

(declare-fun isEmpty!35698 (List!63956) Bool)

(assert (=> bm!455269 (= call!455274 (isEmpty!35698 s!2326))))

(declare-fun b!5829859 () Bool)

(declare-fun res!2457195 () Bool)

(declare-fun e!3576938 () Bool)

(assert (=> b!5829859 (=> res!2457195 e!3576938)))

(assert (=> b!5829859 (= res!2457195 (not ((_ is ElementMatch!15885) r!7292)))))

(declare-fun e!3576939 () Bool)

(assert (=> b!5829859 (= e!3576939 e!3576938)))

(declare-fun b!5829860 () Bool)

(declare-fun e!3576940 () Bool)

(assert (=> b!5829860 (= e!3576938 e!3576940)))

(declare-fun res!2457200 () Bool)

(assert (=> b!5829860 (=> (not res!2457200) (not e!3576940))))

(assert (=> b!5829860 (= res!2457200 (not lt!2302865))))

(declare-fun b!5829861 () Bool)

(assert (=> b!5829861 (= e!3576935 e!3576939)))

(declare-fun c!1032999 () Bool)

(assert (=> b!5829861 (= c!1032999 ((_ is EmptyLang!15885) r!7292))))

(declare-fun b!5829862 () Bool)

(declare-fun res!2457194 () Bool)

(declare-fun e!3576937 () Bool)

(assert (=> b!5829862 (=> (not res!2457194) (not e!3576937))))

(assert (=> b!5829862 (= res!2457194 (not call!455274))))

(declare-fun b!5829863 () Bool)

(declare-fun res!2457201 () Bool)

(assert (=> b!5829863 (=> res!2457201 e!3576938)))

(assert (=> b!5829863 (= res!2457201 e!3576937)))

(declare-fun res!2457196 () Bool)

(assert (=> b!5829863 (=> (not res!2457196) (not e!3576937))))

(assert (=> b!5829863 (= res!2457196 lt!2302865)))

(declare-fun d!1833346 () Bool)

(assert (=> d!1833346 e!3576935))

(declare-fun c!1033001 () Bool)

(assert (=> d!1833346 (= c!1033001 ((_ is EmptyExpr!15885) r!7292))))

(declare-fun e!3576936 () Bool)

(assert (=> d!1833346 (= lt!2302865 e!3576936)))

(declare-fun c!1033000 () Bool)

(assert (=> d!1833346 (= c!1033000 (isEmpty!35698 s!2326))))

(assert (=> d!1833346 (validRegex!7621 r!7292)))

(assert (=> d!1833346 (= (matchR!8068 r!7292 s!2326) lt!2302865)))

(declare-fun b!5829864 () Bool)

(assert (=> b!5829864 (= e!3576936 (nullable!5886 r!7292))))

(declare-fun b!5829865 () Bool)

(declare-fun res!2457197 () Bool)

(assert (=> b!5829865 (=> (not res!2457197) (not e!3576937))))

(declare-fun tail!11417 (List!63956) List!63956)

(assert (=> b!5829865 (= res!2457197 (isEmpty!35698 (tail!11417 s!2326)))))

(declare-fun b!5829866 () Bool)

(declare-fun res!2457198 () Bool)

(declare-fun e!3576934 () Bool)

(assert (=> b!5829866 (=> res!2457198 e!3576934)))

(assert (=> b!5829866 (= res!2457198 (not (isEmpty!35698 (tail!11417 s!2326))))))

(declare-fun b!5829867 () Bool)

(declare-fun head!12331 (List!63956) C!32040)

(assert (=> b!5829867 (= e!3576937 (= (head!12331 s!2326) (c!1032959 r!7292)))))

(declare-fun b!5829868 () Bool)

(assert (=> b!5829868 (= e!3576940 e!3576934)))

(declare-fun res!2457199 () Bool)

(assert (=> b!5829868 (=> res!2457199 e!3576934)))

(assert (=> b!5829868 (= res!2457199 call!455274)))

(declare-fun b!5829869 () Bool)

(assert (=> b!5829869 (= e!3576939 (not lt!2302865))))

(declare-fun b!5829870 () Bool)

(declare-fun derivativeStep!4626 (Regex!15885 C!32040) Regex!15885)

(assert (=> b!5829870 (= e!3576936 (matchR!8068 (derivativeStep!4626 r!7292 (head!12331 s!2326)) (tail!11417 s!2326)))))

(declare-fun b!5829871 () Bool)

(assert (=> b!5829871 (= e!3576934 (not (= (head!12331 s!2326) (c!1032959 r!7292))))))

(assert (= (and d!1833346 c!1033000) b!5829864))

(assert (= (and d!1833346 (not c!1033000)) b!5829870))

(assert (= (and d!1833346 c!1033001) b!5829858))

(assert (= (and d!1833346 (not c!1033001)) b!5829861))

(assert (= (and b!5829861 c!1032999) b!5829869))

(assert (= (and b!5829861 (not c!1032999)) b!5829859))

(assert (= (and b!5829859 (not res!2457195)) b!5829863))

(assert (= (and b!5829863 res!2457196) b!5829862))

(assert (= (and b!5829862 res!2457194) b!5829865))

(assert (= (and b!5829865 res!2457197) b!5829867))

(assert (= (and b!5829863 (not res!2457201)) b!5829860))

(assert (= (and b!5829860 res!2457200) b!5829868))

(assert (= (and b!5829868 (not res!2457199)) b!5829866))

(assert (= (and b!5829866 (not res!2457198)) b!5829871))

(assert (= (or b!5829858 b!5829862 b!5829868) bm!455269))

(declare-fun m!6760090 () Bool)

(assert (=> b!5829871 m!6760090))

(assert (=> b!5829870 m!6760090))

(assert (=> b!5829870 m!6760090))

(declare-fun m!6760092 () Bool)

(assert (=> b!5829870 m!6760092))

(declare-fun m!6760094 () Bool)

(assert (=> b!5829870 m!6760094))

(assert (=> b!5829870 m!6760092))

(assert (=> b!5829870 m!6760094))

(declare-fun m!6760096 () Bool)

(assert (=> b!5829870 m!6760096))

(declare-fun m!6760098 () Bool)

(assert (=> d!1833346 m!6760098))

(assert (=> d!1833346 m!6760016))

(assert (=> b!5829866 m!6760094))

(assert (=> b!5829866 m!6760094))

(declare-fun m!6760100 () Bool)

(assert (=> b!5829866 m!6760100))

(assert (=> bm!455269 m!6760098))

(assert (=> b!5829865 m!6760094))

(assert (=> b!5829865 m!6760094))

(assert (=> b!5829865 m!6760100))

(declare-fun m!6760102 () Bool)

(assert (=> b!5829864 m!6760102))

(assert (=> b!5829867 m!6760090))

(assert (=> b!5829735 d!1833346))

(declare-fun b!5829953 () Bool)

(assert (=> b!5829953 true))

(assert (=> b!5829953 true))

(declare-fun bs!1374576 () Bool)

(declare-fun b!5829946 () Bool)

(assert (= bs!1374576 (and b!5829946 b!5829953)))

(declare-fun lambda!318996 () Int)

(declare-fun lambda!318995 () Int)

(assert (=> bs!1374576 (not (= lambda!318996 lambda!318995))))

(assert (=> b!5829946 true))

(assert (=> b!5829946 true))

(declare-fun e!3576984 () Bool)

(declare-fun call!455283 () Bool)

(assert (=> b!5829946 (= e!3576984 call!455283)))

(declare-fun bm!455277 () Bool)

(declare-fun call!455282 () Bool)

(assert (=> bm!455277 (= call!455282 (isEmpty!35698 s!2326))))

(declare-fun b!5829947 () Bool)

(declare-fun e!3576986 () Bool)

(assert (=> b!5829947 (= e!3576986 (matchRSpec!2986 (regTwo!32283 r!7292) s!2326))))

(declare-fun b!5829948 () Bool)

(declare-fun res!2457242 () Bool)

(declare-fun e!3576980 () Bool)

(assert (=> b!5829948 (=> res!2457242 e!3576980)))

(assert (=> b!5829948 (= res!2457242 call!455282)))

(assert (=> b!5829948 (= e!3576984 e!3576980)))

(declare-fun b!5829949 () Bool)

(declare-fun c!1033022 () Bool)

(assert (=> b!5829949 (= c!1033022 ((_ is Union!15885) r!7292))))

(declare-fun e!3576981 () Bool)

(declare-fun e!3576985 () Bool)

(assert (=> b!5829949 (= e!3576981 e!3576985)))

(declare-fun bm!455278 () Bool)

(declare-fun c!1033020 () Bool)

(declare-fun Exists!2961 (Int) Bool)

(assert (=> bm!455278 (= call!455283 (Exists!2961 (ite c!1033020 lambda!318995 lambda!318996)))))

(declare-fun b!5829951 () Bool)

(assert (=> b!5829951 (= e!3576985 e!3576986)))

(declare-fun res!2457244 () Bool)

(assert (=> b!5829951 (= res!2457244 (matchRSpec!2986 (regOne!32283 r!7292) s!2326))))

(assert (=> b!5829951 (=> res!2457244 e!3576986)))

(declare-fun b!5829952 () Bool)

(assert (=> b!5829952 (= e!3576981 (= s!2326 (Cons!63832 (c!1032959 r!7292) Nil!63832)))))

(assert (=> b!5829953 (= e!3576980 call!455283)))

(declare-fun b!5829954 () Bool)

(declare-fun e!3576983 () Bool)

(declare-fun e!3576982 () Bool)

(assert (=> b!5829954 (= e!3576983 e!3576982)))

(declare-fun res!2457243 () Bool)

(assert (=> b!5829954 (= res!2457243 (not ((_ is EmptyLang!15885) r!7292)))))

(assert (=> b!5829954 (=> (not res!2457243) (not e!3576982))))

(declare-fun d!1833352 () Bool)

(declare-fun c!1033021 () Bool)

(assert (=> d!1833352 (= c!1033021 ((_ is EmptyExpr!15885) r!7292))))

(assert (=> d!1833352 (= (matchRSpec!2986 r!7292 s!2326) e!3576983)))

(declare-fun b!5829950 () Bool)

(assert (=> b!5829950 (= e!3576983 call!455282)))

(declare-fun b!5829955 () Bool)

(declare-fun c!1033019 () Bool)

(assert (=> b!5829955 (= c!1033019 ((_ is ElementMatch!15885) r!7292))))

(assert (=> b!5829955 (= e!3576982 e!3576981)))

(declare-fun b!5829956 () Bool)

(assert (=> b!5829956 (= e!3576985 e!3576984)))

(assert (=> b!5829956 (= c!1033020 ((_ is Star!15885) r!7292))))

(assert (= (and d!1833352 c!1033021) b!5829950))

(assert (= (and d!1833352 (not c!1033021)) b!5829954))

(assert (= (and b!5829954 res!2457243) b!5829955))

(assert (= (and b!5829955 c!1033019) b!5829952))

(assert (= (and b!5829955 (not c!1033019)) b!5829949))

(assert (= (and b!5829949 c!1033022) b!5829951))

(assert (= (and b!5829949 (not c!1033022)) b!5829956))

(assert (= (and b!5829951 (not res!2457244)) b!5829947))

(assert (= (and b!5829956 c!1033020) b!5829948))

(assert (= (and b!5829956 (not c!1033020)) b!5829946))

(assert (= (and b!5829948 (not res!2457242)) b!5829953))

(assert (= (or b!5829953 b!5829946) bm!455278))

(assert (= (or b!5829950 b!5829948) bm!455277))

(assert (=> bm!455277 m!6760098))

(declare-fun m!6760118 () Bool)

(assert (=> b!5829947 m!6760118))

(declare-fun m!6760120 () Bool)

(assert (=> bm!455278 m!6760120))

(declare-fun m!6760122 () Bool)

(assert (=> b!5829951 m!6760122))

(assert (=> b!5829735 d!1833352))

(declare-fun d!1833356 () Bool)

(assert (=> d!1833356 (= (matchR!8068 r!7292 s!2326) (matchRSpec!2986 r!7292 s!2326))))

(declare-fun lt!2302871 () Unit!157041)

(declare-fun choose!44289 (Regex!15885 List!63956) Unit!157041)

(assert (=> d!1833356 (= lt!2302871 (choose!44289 r!7292 s!2326))))

(assert (=> d!1833356 (validRegex!7621 r!7292)))

(assert (=> d!1833356 (= (mainMatchTheorem!2986 r!7292 s!2326) lt!2302871)))

(declare-fun bs!1374577 () Bool)

(assert (= bs!1374577 d!1833356))

(assert (=> bs!1374577 m!6760002))

(assert (=> bs!1374577 m!6760004))

(declare-fun m!6760124 () Bool)

(assert (=> bs!1374577 m!6760124))

(assert (=> bs!1374577 m!6760016))

(assert (=> b!5829735 d!1833356))

(declare-fun d!1833358 () Bool)

(declare-fun lt!2302874 () Regex!15885)

(assert (=> d!1833358 (validRegex!7621 lt!2302874)))

(assert (=> d!1833358 (= lt!2302874 (generalisedUnion!1729 (unfocusZipperList!1306 zl!343)))))

(assert (=> d!1833358 (= (unfocusZipper!1627 zl!343) lt!2302874)))

(declare-fun bs!1374578 () Bool)

(assert (= bs!1374578 d!1833358))

(declare-fun m!6760126 () Bool)

(assert (=> bs!1374578 m!6760126))

(assert (=> bs!1374578 m!6760018))

(assert (=> bs!1374578 m!6760018))

(assert (=> bs!1374578 m!6760020))

(assert (=> b!5829725 d!1833358))

(declare-fun d!1833360 () Bool)

(declare-fun e!3577007 () Bool)

(assert (=> d!1833360 e!3577007))

(declare-fun res!2457263 () Bool)

(assert (=> d!1833360 (=> (not res!2457263) (not e!3577007))))

(declare-fun lt!2302877 () List!63955)

(declare-fun noDuplicate!1755 (List!63955) Bool)

(assert (=> d!1833360 (= res!2457263 (noDuplicate!1755 lt!2302877))))

(declare-fun choose!44291 ((InoxSet Context!10538)) List!63955)

(assert (=> d!1833360 (= lt!2302877 (choose!44291 z!1189))))

(assert (=> d!1833360 (= (toList!9669 z!1189) lt!2302877)))

(declare-fun b!5829995 () Bool)

(declare-fun content!11720 (List!63955) (InoxSet Context!10538))

(assert (=> b!5829995 (= e!3577007 (= (content!11720 lt!2302877) z!1189))))

(assert (= (and d!1833360 res!2457263) b!5829995))

(declare-fun m!6760128 () Bool)

(assert (=> d!1833360 m!6760128))

(declare-fun m!6760130 () Bool)

(assert (=> d!1833360 m!6760130))

(declare-fun m!6760132 () Bool)

(assert (=> b!5829995 m!6760132))

(assert (=> b!5829726 d!1833360))

(declare-fun e!3577010 () Bool)

(assert (=> b!5829731 (= tp!1610520 e!3577010)))

(declare-fun b!5830006 () Bool)

(assert (=> b!5830006 (= e!3577010 tp_is_empty!41023)))

(declare-fun b!5830009 () Bool)

(declare-fun tp!1610541 () Bool)

(declare-fun tp!1610543 () Bool)

(assert (=> b!5830009 (= e!3577010 (and tp!1610541 tp!1610543))))

(declare-fun b!5830008 () Bool)

(declare-fun tp!1610542 () Bool)

(assert (=> b!5830008 (= e!3577010 tp!1610542)))

(declare-fun b!5830007 () Bool)

(declare-fun tp!1610540 () Bool)

(declare-fun tp!1610539 () Bool)

(assert (=> b!5830007 (= e!3577010 (and tp!1610540 tp!1610539))))

(assert (= (and b!5829731 ((_ is ElementMatch!15885) (regOne!32283 r!7292))) b!5830006))

(assert (= (and b!5829731 ((_ is Concat!24730) (regOne!32283 r!7292))) b!5830007))

(assert (= (and b!5829731 ((_ is Star!15885) (regOne!32283 r!7292))) b!5830008))

(assert (= (and b!5829731 ((_ is Union!15885) (regOne!32283 r!7292))) b!5830009))

(declare-fun e!3577011 () Bool)

(assert (=> b!5829731 (= tp!1610523 e!3577011)))

(declare-fun b!5830010 () Bool)

(assert (=> b!5830010 (= e!3577011 tp_is_empty!41023)))

(declare-fun b!5830013 () Bool)

(declare-fun tp!1610546 () Bool)

(declare-fun tp!1610548 () Bool)

(assert (=> b!5830013 (= e!3577011 (and tp!1610546 tp!1610548))))

(declare-fun b!5830012 () Bool)

(declare-fun tp!1610547 () Bool)

(assert (=> b!5830012 (= e!3577011 tp!1610547)))

(declare-fun b!5830011 () Bool)

(declare-fun tp!1610545 () Bool)

(declare-fun tp!1610544 () Bool)

(assert (=> b!5830011 (= e!3577011 (and tp!1610545 tp!1610544))))

(assert (= (and b!5829731 ((_ is ElementMatch!15885) (regTwo!32283 r!7292))) b!5830010))

(assert (= (and b!5829731 ((_ is Concat!24730) (regTwo!32283 r!7292))) b!5830011))

(assert (= (and b!5829731 ((_ is Star!15885) (regTwo!32283 r!7292))) b!5830012))

(assert (= (and b!5829731 ((_ is Union!15885) (regTwo!32283 r!7292))) b!5830013))

(declare-fun condSetEmpty!39433 () Bool)

(assert (=> setNonEmpty!39430 (= condSetEmpty!39433 (= setRest!39430 ((as const (Array Context!10538 Bool)) false)))))

(declare-fun setRes!39433 () Bool)

(assert (=> setNonEmpty!39430 (= tp!1610526 setRes!39433)))

(declare-fun setIsEmpty!39433 () Bool)

(assert (=> setIsEmpty!39433 setRes!39433))

(declare-fun setNonEmpty!39433 () Bool)

(declare-fun tp!1610554 () Bool)

(declare-fun e!3577021 () Bool)

(declare-fun setElem!39433 () Context!10538)

(assert (=> setNonEmpty!39433 (= setRes!39433 (and tp!1610554 (inv!82959 setElem!39433) e!3577021))))

(declare-fun setRest!39433 () (InoxSet Context!10538))

(assert (=> setNonEmpty!39433 (= setRest!39430 ((_ map or) (store ((as const (Array Context!10538 Bool)) false) setElem!39433 true) setRest!39433))))

(declare-fun b!5830029 () Bool)

(declare-fun tp!1610553 () Bool)

(assert (=> b!5830029 (= e!3577021 tp!1610553)))

(assert (= (and setNonEmpty!39430 condSetEmpty!39433) setIsEmpty!39433))

(assert (= (and setNonEmpty!39430 (not condSetEmpty!39433)) setNonEmpty!39433))

(assert (= setNonEmpty!39433 b!5830029))

(declare-fun m!6760134 () Bool)

(assert (=> setNonEmpty!39433 m!6760134))

(declare-fun b!5830036 () Bool)

(declare-fun e!3577024 () Bool)

(declare-fun tp!1610559 () Bool)

(declare-fun tp!1610560 () Bool)

(assert (=> b!5830036 (= e!3577024 (and tp!1610559 tp!1610560))))

(assert (=> b!5829722 (= tp!1610522 e!3577024)))

(assert (= (and b!5829722 ((_ is Cons!63830) (exprs!5769 setElem!39430))) b!5830036))

(declare-fun e!3577025 () Bool)

(assert (=> b!5829728 (= tp!1610521 e!3577025)))

(declare-fun b!5830039 () Bool)

(assert (=> b!5830039 (= e!3577025 tp_is_empty!41023)))

(declare-fun b!5830042 () Bool)

(declare-fun tp!1610563 () Bool)

(declare-fun tp!1610565 () Bool)

(assert (=> b!5830042 (= e!3577025 (and tp!1610563 tp!1610565))))

(declare-fun b!5830041 () Bool)

(declare-fun tp!1610564 () Bool)

(assert (=> b!5830041 (= e!3577025 tp!1610564)))

(declare-fun b!5830040 () Bool)

(declare-fun tp!1610562 () Bool)

(declare-fun tp!1610561 () Bool)

(assert (=> b!5830040 (= e!3577025 (and tp!1610562 tp!1610561))))

(assert (= (and b!5829728 ((_ is ElementMatch!15885) (reg!16214 r!7292))) b!5830039))

(assert (= (and b!5829728 ((_ is Concat!24730) (reg!16214 r!7292))) b!5830040))

(assert (= (and b!5829728 ((_ is Star!15885) (reg!16214 r!7292))) b!5830041))

(assert (= (and b!5829728 ((_ is Union!15885) (reg!16214 r!7292))) b!5830042))

(declare-fun e!3577026 () Bool)

(assert (=> b!5829732 (= tp!1610528 e!3577026)))

(declare-fun b!5830043 () Bool)

(assert (=> b!5830043 (= e!3577026 tp_is_empty!41023)))

(declare-fun b!5830046 () Bool)

(declare-fun tp!1610568 () Bool)

(declare-fun tp!1610570 () Bool)

(assert (=> b!5830046 (= e!3577026 (and tp!1610568 tp!1610570))))

(declare-fun b!5830045 () Bool)

(declare-fun tp!1610569 () Bool)

(assert (=> b!5830045 (= e!3577026 tp!1610569)))

(declare-fun b!5830044 () Bool)

(declare-fun tp!1610567 () Bool)

(declare-fun tp!1610566 () Bool)

(assert (=> b!5830044 (= e!3577026 (and tp!1610567 tp!1610566))))

(assert (= (and b!5829732 ((_ is ElementMatch!15885) (regOne!32282 r!7292))) b!5830043))

(assert (= (and b!5829732 ((_ is Concat!24730) (regOne!32282 r!7292))) b!5830044))

(assert (= (and b!5829732 ((_ is Star!15885) (regOne!32282 r!7292))) b!5830045))

(assert (= (and b!5829732 ((_ is Union!15885) (regOne!32282 r!7292))) b!5830046))

(declare-fun e!3577027 () Bool)

(assert (=> b!5829732 (= tp!1610524 e!3577027)))

(declare-fun b!5830047 () Bool)

(assert (=> b!5830047 (= e!3577027 tp_is_empty!41023)))

(declare-fun b!5830050 () Bool)

(declare-fun tp!1610573 () Bool)

(declare-fun tp!1610575 () Bool)

(assert (=> b!5830050 (= e!3577027 (and tp!1610573 tp!1610575))))

(declare-fun b!5830049 () Bool)

(declare-fun tp!1610574 () Bool)

(assert (=> b!5830049 (= e!3577027 tp!1610574)))

(declare-fun b!5830048 () Bool)

(declare-fun tp!1610572 () Bool)

(declare-fun tp!1610571 () Bool)

(assert (=> b!5830048 (= e!3577027 (and tp!1610572 tp!1610571))))

(assert (= (and b!5829732 ((_ is ElementMatch!15885) (regTwo!32282 r!7292))) b!5830047))

(assert (= (and b!5829732 ((_ is Concat!24730) (regTwo!32282 r!7292))) b!5830048))

(assert (= (and b!5829732 ((_ is Star!15885) (regTwo!32282 r!7292))) b!5830049))

(assert (= (and b!5829732 ((_ is Union!15885) (regTwo!32282 r!7292))) b!5830050))

(declare-fun b!5830058 () Bool)

(declare-fun e!3577033 () Bool)

(declare-fun tp!1610580 () Bool)

(assert (=> b!5830058 (= e!3577033 tp!1610580)))

(declare-fun e!3577032 () Bool)

(declare-fun b!5830057 () Bool)

(declare-fun tp!1610581 () Bool)

(assert (=> b!5830057 (= e!3577032 (and (inv!82959 (h!70279 (t!377310 zl!343))) e!3577033 tp!1610581))))

(assert (=> b!5829724 (= tp!1610519 e!3577032)))

(assert (= b!5830057 b!5830058))

(assert (= (and b!5829724 ((_ is Cons!63831) (t!377310 zl!343))) b!5830057))

(declare-fun m!6760142 () Bool)

(assert (=> b!5830057 m!6760142))

(declare-fun b!5830059 () Bool)

(declare-fun e!3577034 () Bool)

(declare-fun tp!1610582 () Bool)

(declare-fun tp!1610583 () Bool)

(assert (=> b!5830059 (= e!3577034 (and tp!1610582 tp!1610583))))

(assert (=> b!5829729 (= tp!1610527 e!3577034)))

(assert (= (and b!5829729 ((_ is Cons!63830) (exprs!5769 (h!70279 zl!343)))) b!5830059))

(declare-fun b!5830064 () Bool)

(declare-fun e!3577037 () Bool)

(declare-fun tp!1610586 () Bool)

(assert (=> b!5830064 (= e!3577037 (and tp_is_empty!41023 tp!1610586))))

(assert (=> b!5829721 (= tp!1610525 e!3577037)))

(assert (= (and b!5829721 ((_ is Cons!63832) (t!377311 s!2326))) b!5830064))

(check-sat (not b!5830046) (not b!5830064) (not b!5829870) (not b!5830007) (not bm!455278) (not d!1833338) (not b!5830058) (not bm!455277) (not b!5830042) (not b!5829764) (not b!5829824) (not b!5829828) (not b!5830036) (not b!5830050) (not b!5829823) (not b!5829757) (not b!5829771) (not d!1833328) (not b!5829871) (not d!1833346) (not b!5829865) (not b!5829826) (not b!5830057) (not b!5829765) (not b!5829827) (not d!1833334) (not d!1833340) (not b!5830012) (not b!5829951) (not d!1833344) (not b!5829866) (not b!5829825) (not b!5830029) (not d!1833336) (not d!1833360) (not b!5829864) (not setNonEmpty!39433) (not b!5830008) (not b!5830044) (not b!5830049) tp_is_empty!41023 (not b!5829760) (not b!5829799) (not b!5830040) (not b!5829947) (not b!5829867) (not b!5830048) (not bm!455264) (not bm!455266) (not b!5829766) (not bm!455269) (not b!5829821) (not b!5830041) (not b!5829763) (not b!5830059) (not b!5829995) (not d!1833358) (not b!5830011) (not b!5830013) (not b!5830009) (not d!1833356) (not b!5830045) (not b!5829762))
(check-sat)
(get-model)

(declare-fun d!1833378 () Bool)

(declare-fun res!2457300 () Bool)

(declare-fun e!3577127 () Bool)

(assert (=> d!1833378 (=> res!2457300 e!3577127)))

(assert (=> d!1833378 (= res!2457300 ((_ is ElementMatch!15885) lt!2302862))))

(assert (=> d!1833378 (= (validRegex!7621 lt!2302862) e!3577127)))

(declare-fun b!5830215 () Bool)

(declare-fun res!2457297 () Bool)

(declare-fun e!3577128 () Bool)

(assert (=> b!5830215 (=> res!2457297 e!3577128)))

(assert (=> b!5830215 (= res!2457297 (not ((_ is Concat!24730) lt!2302862)))))

(declare-fun e!3577124 () Bool)

(assert (=> b!5830215 (= e!3577124 e!3577128)))

(declare-fun b!5830216 () Bool)

(declare-fun e!3577129 () Bool)

(assert (=> b!5830216 (= e!3577128 e!3577129)))

(declare-fun res!2457301 () Bool)

(assert (=> b!5830216 (=> (not res!2457301) (not e!3577129))))

(declare-fun call!455301 () Bool)

(assert (=> b!5830216 (= res!2457301 call!455301)))

(declare-fun b!5830217 () Bool)

(declare-fun e!3577126 () Bool)

(assert (=> b!5830217 (= e!3577127 e!3577126)))

(declare-fun c!1033069 () Bool)

(assert (=> b!5830217 (= c!1033069 ((_ is Star!15885) lt!2302862))))

(declare-fun bm!455294 () Bool)

(declare-fun c!1033068 () Bool)

(assert (=> bm!455294 (= call!455301 (validRegex!7621 (ite c!1033068 (regOne!32283 lt!2302862) (regOne!32282 lt!2302862))))))

(declare-fun bm!455295 () Bool)

(declare-fun call!455300 () Bool)

(declare-fun call!455299 () Bool)

(assert (=> bm!455295 (= call!455300 call!455299)))

(declare-fun b!5830218 () Bool)

(assert (=> b!5830218 (= e!3577126 e!3577124)))

(assert (=> b!5830218 (= c!1033068 ((_ is Union!15885) lt!2302862))))

(declare-fun b!5830219 () Bool)

(declare-fun res!2457298 () Bool)

(declare-fun e!3577130 () Bool)

(assert (=> b!5830219 (=> (not res!2457298) (not e!3577130))))

(assert (=> b!5830219 (= res!2457298 call!455301)))

(assert (=> b!5830219 (= e!3577124 e!3577130)))

(declare-fun b!5830220 () Bool)

(assert (=> b!5830220 (= e!3577130 call!455300)))

(declare-fun b!5830221 () Bool)

(assert (=> b!5830221 (= e!3577129 call!455300)))

(declare-fun b!5830222 () Bool)

(declare-fun e!3577125 () Bool)

(assert (=> b!5830222 (= e!3577125 call!455299)))

(declare-fun b!5830223 () Bool)

(assert (=> b!5830223 (= e!3577126 e!3577125)))

(declare-fun res!2457299 () Bool)

(assert (=> b!5830223 (= res!2457299 (not (nullable!5886 (reg!16214 lt!2302862))))))

(assert (=> b!5830223 (=> (not res!2457299) (not e!3577125))))

(declare-fun bm!455296 () Bool)

(assert (=> bm!455296 (= call!455299 (validRegex!7621 (ite c!1033069 (reg!16214 lt!2302862) (ite c!1033068 (regTwo!32283 lt!2302862) (regTwo!32282 lt!2302862)))))))

(assert (= (and d!1833378 (not res!2457300)) b!5830217))

(assert (= (and b!5830217 c!1033069) b!5830223))

(assert (= (and b!5830217 (not c!1033069)) b!5830218))

(assert (= (and b!5830223 res!2457299) b!5830222))

(assert (= (and b!5830218 c!1033068) b!5830219))

(assert (= (and b!5830218 (not c!1033068)) b!5830215))

(assert (= (and b!5830219 res!2457298) b!5830220))

(assert (= (and b!5830215 (not res!2457297)) b!5830216))

(assert (= (and b!5830216 res!2457301) b!5830221))

(assert (= (or b!5830220 b!5830221) bm!455295))

(assert (= (or b!5830219 b!5830216) bm!455294))

(assert (= (or b!5830222 bm!455295) bm!455296))

(declare-fun m!6760208 () Bool)

(assert (=> bm!455294 m!6760208))

(declare-fun m!6760210 () Bool)

(assert (=> b!5830223 m!6760210))

(declare-fun m!6760212 () Bool)

(assert (=> bm!455296 m!6760212))

(assert (=> d!1833344 d!1833378))

(declare-fun d!1833380 () Bool)

(declare-fun res!2457306 () Bool)

(declare-fun e!3577135 () Bool)

(assert (=> d!1833380 (=> res!2457306 e!3577135)))

(assert (=> d!1833380 (= res!2457306 ((_ is Nil!63830) (exprs!5769 (h!70279 zl!343))))))

(assert (=> d!1833380 (= (forall!14975 (exprs!5769 (h!70279 zl!343)) lambda!318986) e!3577135)))

(declare-fun b!5830228 () Bool)

(declare-fun e!3577136 () Bool)

(assert (=> b!5830228 (= e!3577135 e!3577136)))

(declare-fun res!2457307 () Bool)

(assert (=> b!5830228 (=> (not res!2457307) (not e!3577136))))

(declare-fun dynLambda!24971 (Int Regex!15885) Bool)

(assert (=> b!5830228 (= res!2457307 (dynLambda!24971 lambda!318986 (h!70278 (exprs!5769 (h!70279 zl!343)))))))

(declare-fun b!5830229 () Bool)

(assert (=> b!5830229 (= e!3577136 (forall!14975 (t!377309 (exprs!5769 (h!70279 zl!343))) lambda!318986))))

(assert (= (and d!1833380 (not res!2457306)) b!5830228))

(assert (= (and b!5830228 res!2457307) b!5830229))

(declare-fun b_lambda!219701 () Bool)

(assert (=> (not b_lambda!219701) (not b!5830228)))

(declare-fun m!6760214 () Bool)

(assert (=> b!5830228 m!6760214))

(declare-fun m!6760216 () Bool)

(assert (=> b!5830229 m!6760216))

(assert (=> d!1833344 d!1833380))

(declare-fun d!1833382 () Bool)

(declare-fun res!2457308 () Bool)

(declare-fun e!3577137 () Bool)

(assert (=> d!1833382 (=> res!2457308 e!3577137)))

(assert (=> d!1833382 (= res!2457308 ((_ is Nil!63830) lt!2302859))))

(assert (=> d!1833382 (= (forall!14975 lt!2302859 lambda!318981) e!3577137)))

(declare-fun b!5830230 () Bool)

(declare-fun e!3577138 () Bool)

(assert (=> b!5830230 (= e!3577137 e!3577138)))

(declare-fun res!2457309 () Bool)

(assert (=> b!5830230 (=> (not res!2457309) (not e!3577138))))

(assert (=> b!5830230 (= res!2457309 (dynLambda!24971 lambda!318981 (h!70278 lt!2302859)))))

(declare-fun b!5830231 () Bool)

(assert (=> b!5830231 (= e!3577138 (forall!14975 (t!377309 lt!2302859) lambda!318981))))

(assert (= (and d!1833382 (not res!2457308)) b!5830230))

(assert (= (and b!5830230 res!2457309) b!5830231))

(declare-fun b_lambda!219703 () Bool)

(assert (=> (not b_lambda!219703) (not b!5830230)))

(declare-fun m!6760218 () Bool)

(assert (=> b!5830230 m!6760218))

(declare-fun m!6760220 () Bool)

(assert (=> b!5830231 m!6760220))

(assert (=> d!1833336 d!1833382))

(assert (=> b!5829771 d!1833344))

(declare-fun bs!1374596 () Bool)

(declare-fun d!1833384 () Bool)

(assert (= bs!1374596 (and d!1833384 d!1833338)))

(declare-fun lambda!319013 () Int)

(assert (=> bs!1374596 (= lambda!319013 lambda!318982)))

(declare-fun bs!1374597 () Bool)

(assert (= bs!1374597 (and d!1833384 d!1833340)))

(assert (=> bs!1374597 (= lambda!319013 lambda!318983)))

(declare-fun bs!1374598 () Bool)

(assert (= bs!1374598 (and d!1833384 d!1833328)))

(assert (=> bs!1374598 (= lambda!319013 lambda!318975)))

(declare-fun bs!1374599 () Bool)

(assert (= bs!1374599 (and d!1833384 d!1833344)))

(assert (=> bs!1374599 (= lambda!319013 lambda!318986)))

(declare-fun bs!1374600 () Bool)

(assert (= bs!1374600 (and d!1833384 d!1833336)))

(assert (=> bs!1374600 (= lambda!319013 lambda!318981)))

(declare-fun bs!1374601 () Bool)

(assert (= bs!1374601 (and d!1833384 d!1833334)))

(assert (=> bs!1374601 (= lambda!319013 lambda!318978)))

(declare-fun lt!2302893 () List!63954)

(assert (=> d!1833384 (forall!14975 lt!2302893 lambda!319013)))

(declare-fun e!3577139 () List!63954)

(assert (=> d!1833384 (= lt!2302893 e!3577139)))

(declare-fun c!1033070 () Bool)

(assert (=> d!1833384 (= c!1033070 ((_ is Cons!63831) (t!377310 zl!343)))))

(assert (=> d!1833384 (= (unfocusZipperList!1306 (t!377310 zl!343)) lt!2302893)))

(declare-fun b!5830232 () Bool)

(assert (=> b!5830232 (= e!3577139 (Cons!63830 (generalisedConcat!1482 (exprs!5769 (h!70279 (t!377310 zl!343)))) (unfocusZipperList!1306 (t!377310 (t!377310 zl!343)))))))

(declare-fun b!5830233 () Bool)

(assert (=> b!5830233 (= e!3577139 Nil!63830)))

(assert (= (and d!1833384 c!1033070) b!5830232))

(assert (= (and d!1833384 (not c!1033070)) b!5830233))

(declare-fun m!6760222 () Bool)

(assert (=> d!1833384 m!6760222))

(declare-fun m!6760224 () Bool)

(assert (=> b!5830232 m!6760224))

(declare-fun m!6760226 () Bool)

(assert (=> b!5830232 m!6760226))

(assert (=> b!5829771 d!1833384))

(declare-fun bs!1374602 () Bool)

(declare-fun d!1833386 () Bool)

(assert (= bs!1374602 (and d!1833386 d!1833338)))

(declare-fun lambda!319014 () Int)

(assert (=> bs!1374602 (= lambda!319014 lambda!318982)))

(declare-fun bs!1374603 () Bool)

(assert (= bs!1374603 (and d!1833386 d!1833340)))

(assert (=> bs!1374603 (= lambda!319014 lambda!318983)))

(declare-fun bs!1374604 () Bool)

(assert (= bs!1374604 (and d!1833386 d!1833328)))

(assert (=> bs!1374604 (= lambda!319014 lambda!318975)))

(declare-fun bs!1374605 () Bool)

(assert (= bs!1374605 (and d!1833386 d!1833384)))

(assert (=> bs!1374605 (= lambda!319014 lambda!319013)))

(declare-fun bs!1374606 () Bool)

(assert (= bs!1374606 (and d!1833386 d!1833344)))

(assert (=> bs!1374606 (= lambda!319014 lambda!318986)))

(declare-fun bs!1374607 () Bool)

(assert (= bs!1374607 (and d!1833386 d!1833336)))

(assert (=> bs!1374607 (= lambda!319014 lambda!318981)))

(declare-fun bs!1374608 () Bool)

(assert (= bs!1374608 (and d!1833386 d!1833334)))

(assert (=> bs!1374608 (= lambda!319014 lambda!318978)))

(assert (=> d!1833386 (= (inv!82959 setElem!39433) (forall!14975 (exprs!5769 setElem!39433) lambda!319014))))

(declare-fun bs!1374609 () Bool)

(assert (= bs!1374609 d!1833386))

(declare-fun m!6760228 () Bool)

(assert (=> bs!1374609 m!6760228))

(assert (=> setNonEmpty!39433 d!1833386))

(declare-fun d!1833388 () Bool)

(assert (=> d!1833388 (= (isEmpty!35698 s!2326) ((_ is Nil!63832) s!2326))))

(assert (=> d!1833346 d!1833388))

(assert (=> d!1833346 d!1833342))

(declare-fun d!1833390 () Bool)

(assert (=> d!1833390 (= (isEmptyLang!1331 lt!2302856) ((_ is EmptyLang!15885) lt!2302856))))

(assert (=> b!5829765 d!1833390))

(declare-fun d!1833392 () Bool)

(declare-fun res!2457310 () Bool)

(declare-fun e!3577140 () Bool)

(assert (=> d!1833392 (=> res!2457310 e!3577140)))

(assert (=> d!1833392 (= res!2457310 ((_ is Nil!63830) (exprs!5769 (h!70279 zl!343))))))

(assert (=> d!1833392 (= (forall!14975 (exprs!5769 (h!70279 zl!343)) lambda!318983) e!3577140)))

(declare-fun b!5830234 () Bool)

(declare-fun e!3577141 () Bool)

(assert (=> b!5830234 (= e!3577140 e!3577141)))

(declare-fun res!2457311 () Bool)

(assert (=> b!5830234 (=> (not res!2457311) (not e!3577141))))

(assert (=> b!5830234 (= res!2457311 (dynLambda!24971 lambda!318983 (h!70278 (exprs!5769 (h!70279 zl!343)))))))

(declare-fun b!5830235 () Bool)

(assert (=> b!5830235 (= e!3577141 (forall!14975 (t!377309 (exprs!5769 (h!70279 zl!343))) lambda!318983))))

(assert (= (and d!1833392 (not res!2457310)) b!5830234))

(assert (= (and b!5830234 res!2457311) b!5830235))

(declare-fun b_lambda!219705 () Bool)

(assert (=> (not b_lambda!219705) (not b!5830234)))

(declare-fun m!6760230 () Bool)

(assert (=> b!5830234 m!6760230))

(declare-fun m!6760232 () Bool)

(assert (=> b!5830235 m!6760232))

(assert (=> d!1833340 d!1833392))

(declare-fun d!1833394 () Bool)

(assert (=> d!1833394 (= (isEmpty!35697 (unfocusZipperList!1306 zl!343)) ((_ is Nil!63830) (unfocusZipperList!1306 zl!343)))))

(assert (=> b!5829766 d!1833394))

(declare-fun d!1833396 () Bool)

(assert (=> d!1833396 (= (isUnion!761 lt!2302856) ((_ is Union!15885) lt!2302856))))

(assert (=> b!5829762 d!1833396))

(declare-fun d!1833398 () Bool)

(assert (=> d!1833398 (= (isEmpty!35697 (tail!11415 (unfocusZipperList!1306 zl!343))) ((_ is Nil!63830) (tail!11415 (unfocusZipperList!1306 zl!343))))))

(assert (=> b!5829763 d!1833398))

(declare-fun d!1833400 () Bool)

(assert (=> d!1833400 (= (tail!11415 (unfocusZipperList!1306 zl!343)) (t!377309 (unfocusZipperList!1306 zl!343)))))

(assert (=> b!5829763 d!1833400))

(declare-fun d!1833402 () Bool)

(assert (=> d!1833402 (= (isEmpty!35697 (t!377309 (unfocusZipperList!1306 zl!343))) ((_ is Nil!63830) (t!377309 (unfocusZipperList!1306 zl!343))))))

(assert (=> b!5829764 d!1833402))

(assert (=> bm!455269 d!1833388))

(declare-fun d!1833404 () Bool)

(declare-fun res!2457315 () Bool)

(declare-fun e!3577145 () Bool)

(assert (=> d!1833404 (=> res!2457315 e!3577145)))

(assert (=> d!1833404 (= res!2457315 ((_ is ElementMatch!15885) (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))))))

(assert (=> d!1833404 (= (validRegex!7621 (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))) e!3577145)))

(declare-fun b!5830236 () Bool)

(declare-fun res!2457312 () Bool)

(declare-fun e!3577146 () Bool)

(assert (=> b!5830236 (=> res!2457312 e!3577146)))

(assert (=> b!5830236 (= res!2457312 (not ((_ is Concat!24730) (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292))))))))

(declare-fun e!3577142 () Bool)

(assert (=> b!5830236 (= e!3577142 e!3577146)))

(declare-fun b!5830237 () Bool)

(declare-fun e!3577147 () Bool)

(assert (=> b!5830237 (= e!3577146 e!3577147)))

(declare-fun res!2457316 () Bool)

(assert (=> b!5830237 (=> (not res!2457316) (not e!3577147))))

(declare-fun call!455304 () Bool)

(assert (=> b!5830237 (= res!2457316 call!455304)))

(declare-fun b!5830238 () Bool)

(declare-fun e!3577144 () Bool)

(assert (=> b!5830238 (= e!3577145 e!3577144)))

(declare-fun c!1033072 () Bool)

(assert (=> b!5830238 (= c!1033072 ((_ is Star!15885) (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))))))

(declare-fun c!1033071 () Bool)

(declare-fun bm!455297 () Bool)

(assert (=> bm!455297 (= call!455304 (validRegex!7621 (ite c!1033071 (regOne!32283 (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))) (regOne!32282 (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))))))))

(declare-fun bm!455298 () Bool)

(declare-fun call!455303 () Bool)

(declare-fun call!455302 () Bool)

(assert (=> bm!455298 (= call!455303 call!455302)))

(declare-fun b!5830239 () Bool)

(assert (=> b!5830239 (= e!3577144 e!3577142)))

(assert (=> b!5830239 (= c!1033071 ((_ is Union!15885) (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))))))

(declare-fun b!5830240 () Bool)

(declare-fun res!2457313 () Bool)

(declare-fun e!3577148 () Bool)

(assert (=> b!5830240 (=> (not res!2457313) (not e!3577148))))

(assert (=> b!5830240 (= res!2457313 call!455304)))

(assert (=> b!5830240 (= e!3577142 e!3577148)))

(declare-fun b!5830241 () Bool)

(assert (=> b!5830241 (= e!3577148 call!455303)))

(declare-fun b!5830242 () Bool)

(assert (=> b!5830242 (= e!3577147 call!455303)))

(declare-fun b!5830243 () Bool)

(declare-fun e!3577143 () Bool)

(assert (=> b!5830243 (= e!3577143 call!455302)))

(declare-fun b!5830244 () Bool)

(assert (=> b!5830244 (= e!3577144 e!3577143)))

(declare-fun res!2457314 () Bool)

(assert (=> b!5830244 (= res!2457314 (not (nullable!5886 (reg!16214 (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))))))))

(assert (=> b!5830244 (=> (not res!2457314) (not e!3577143))))

(declare-fun bm!455299 () Bool)

(assert (=> bm!455299 (= call!455302 (validRegex!7621 (ite c!1033072 (reg!16214 (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))) (ite c!1033071 (regTwo!32283 (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292)))) (regTwo!32282 (ite c!1032980 (reg!16214 r!7292) (ite c!1032979 (regTwo!32283 r!7292) (regTwo!32282 r!7292))))))))))

(assert (= (and d!1833404 (not res!2457315)) b!5830238))

(assert (= (and b!5830238 c!1033072) b!5830244))

(assert (= (and b!5830238 (not c!1033072)) b!5830239))

(assert (= (and b!5830244 res!2457314) b!5830243))

(assert (= (and b!5830239 c!1033071) b!5830240))

(assert (= (and b!5830239 (not c!1033071)) b!5830236))

(assert (= (and b!5830240 res!2457313) b!5830241))

(assert (= (and b!5830236 (not res!2457312)) b!5830237))

(assert (= (and b!5830237 res!2457316) b!5830242))

(assert (= (or b!5830241 b!5830242) bm!455298))

(assert (= (or b!5830240 b!5830237) bm!455297))

(assert (= (or b!5830243 bm!455298) bm!455299))

(declare-fun m!6760234 () Bool)

(assert (=> bm!455297 m!6760234))

(declare-fun m!6760236 () Bool)

(assert (=> b!5830244 m!6760236))

(declare-fun m!6760238 () Bool)

(assert (=> bm!455299 m!6760238))

(assert (=> bm!455266 d!1833404))

(declare-fun d!1833406 () Bool)

(assert (=> d!1833406 (= (head!12330 (unfocusZipperList!1306 zl!343)) (h!70278 (unfocusZipperList!1306 zl!343)))))

(assert (=> b!5829760 d!1833406))

(declare-fun d!1833408 () Bool)

(declare-fun c!1033075 () Bool)

(assert (=> d!1833408 (= c!1033075 ((_ is Nil!63831) lt!2302877))))

(declare-fun e!3577151 () (InoxSet Context!10538))

(assert (=> d!1833408 (= (content!11720 lt!2302877) e!3577151)))

(declare-fun b!5830249 () Bool)

(assert (=> b!5830249 (= e!3577151 ((as const (Array Context!10538 Bool)) false))))

(declare-fun b!5830250 () Bool)

(assert (=> b!5830250 (= e!3577151 ((_ map or) (store ((as const (Array Context!10538 Bool)) false) (h!70279 lt!2302877) true) (content!11720 (t!377310 lt!2302877))))))

(assert (= (and d!1833408 c!1033075) b!5830249))

(assert (= (and d!1833408 (not c!1033075)) b!5830250))

(declare-fun m!6760240 () Bool)

(assert (=> b!5830250 m!6760240))

(declare-fun m!6760242 () Bool)

(assert (=> b!5830250 m!6760242))

(assert (=> b!5829995 d!1833408))

(declare-fun bs!1374610 () Bool)

(declare-fun b!5830258 () Bool)

(assert (= bs!1374610 (and b!5830258 b!5829953)))

(declare-fun lambda!319015 () Int)

(assert (=> bs!1374610 (= (and (= (reg!16214 (regOne!32283 r!7292)) (reg!16214 r!7292)) (= (regOne!32283 r!7292) r!7292)) (= lambda!319015 lambda!318995))))

(declare-fun bs!1374611 () Bool)

(assert (= bs!1374611 (and b!5830258 b!5829946)))

(assert (=> bs!1374611 (not (= lambda!319015 lambda!318996))))

(assert (=> b!5830258 true))

(assert (=> b!5830258 true))

(declare-fun bs!1374612 () Bool)

(declare-fun b!5830251 () Bool)

(assert (= bs!1374612 (and b!5830251 b!5829953)))

(declare-fun lambda!319016 () Int)

(assert (=> bs!1374612 (not (= lambda!319016 lambda!318995))))

(declare-fun bs!1374613 () Bool)

(assert (= bs!1374613 (and b!5830251 b!5829946)))

(assert (=> bs!1374613 (= (and (= (regOne!32282 (regOne!32283 r!7292)) (regOne!32282 r!7292)) (= (regTwo!32282 (regOne!32283 r!7292)) (regTwo!32282 r!7292))) (= lambda!319016 lambda!318996))))

(declare-fun bs!1374614 () Bool)

(assert (= bs!1374614 (and b!5830251 b!5830258)))

(assert (=> bs!1374614 (not (= lambda!319016 lambda!319015))))

(assert (=> b!5830251 true))

(assert (=> b!5830251 true))

(declare-fun e!3577156 () Bool)

(declare-fun call!455306 () Bool)

(assert (=> b!5830251 (= e!3577156 call!455306)))

(declare-fun bm!455300 () Bool)

(declare-fun call!455305 () Bool)

(assert (=> bm!455300 (= call!455305 (isEmpty!35698 s!2326))))

(declare-fun b!5830252 () Bool)

(declare-fun e!3577158 () Bool)

(assert (=> b!5830252 (= e!3577158 (matchRSpec!2986 (regTwo!32283 (regOne!32283 r!7292)) s!2326))))

(declare-fun b!5830253 () Bool)

(declare-fun res!2457317 () Bool)

(declare-fun e!3577152 () Bool)

(assert (=> b!5830253 (=> res!2457317 e!3577152)))

(assert (=> b!5830253 (= res!2457317 call!455305)))

(assert (=> b!5830253 (= e!3577156 e!3577152)))

(declare-fun b!5830254 () Bool)

(declare-fun c!1033079 () Bool)

(assert (=> b!5830254 (= c!1033079 ((_ is Union!15885) (regOne!32283 r!7292)))))

(declare-fun e!3577153 () Bool)

(declare-fun e!3577157 () Bool)

(assert (=> b!5830254 (= e!3577153 e!3577157)))

(declare-fun c!1033077 () Bool)

(declare-fun bm!455301 () Bool)

(assert (=> bm!455301 (= call!455306 (Exists!2961 (ite c!1033077 lambda!319015 lambda!319016)))))

(declare-fun b!5830256 () Bool)

(assert (=> b!5830256 (= e!3577157 e!3577158)))

(declare-fun res!2457319 () Bool)

(assert (=> b!5830256 (= res!2457319 (matchRSpec!2986 (regOne!32283 (regOne!32283 r!7292)) s!2326))))

(assert (=> b!5830256 (=> res!2457319 e!3577158)))

(declare-fun b!5830257 () Bool)

(assert (=> b!5830257 (= e!3577153 (= s!2326 (Cons!63832 (c!1032959 (regOne!32283 r!7292)) Nil!63832)))))

(assert (=> b!5830258 (= e!3577152 call!455306)))

(declare-fun b!5830259 () Bool)

(declare-fun e!3577155 () Bool)

(declare-fun e!3577154 () Bool)

(assert (=> b!5830259 (= e!3577155 e!3577154)))

(declare-fun res!2457318 () Bool)

(assert (=> b!5830259 (= res!2457318 (not ((_ is EmptyLang!15885) (regOne!32283 r!7292))))))

(assert (=> b!5830259 (=> (not res!2457318) (not e!3577154))))

(declare-fun d!1833410 () Bool)

(declare-fun c!1033078 () Bool)

(assert (=> d!1833410 (= c!1033078 ((_ is EmptyExpr!15885) (regOne!32283 r!7292)))))

(assert (=> d!1833410 (= (matchRSpec!2986 (regOne!32283 r!7292) s!2326) e!3577155)))

(declare-fun b!5830255 () Bool)

(assert (=> b!5830255 (= e!3577155 call!455305)))

(declare-fun b!5830260 () Bool)

(declare-fun c!1033076 () Bool)

(assert (=> b!5830260 (= c!1033076 ((_ is ElementMatch!15885) (regOne!32283 r!7292)))))

(assert (=> b!5830260 (= e!3577154 e!3577153)))

(declare-fun b!5830261 () Bool)

(assert (=> b!5830261 (= e!3577157 e!3577156)))

(assert (=> b!5830261 (= c!1033077 ((_ is Star!15885) (regOne!32283 r!7292)))))

(assert (= (and d!1833410 c!1033078) b!5830255))

(assert (= (and d!1833410 (not c!1033078)) b!5830259))

(assert (= (and b!5830259 res!2457318) b!5830260))

(assert (= (and b!5830260 c!1033076) b!5830257))

(assert (= (and b!5830260 (not c!1033076)) b!5830254))

(assert (= (and b!5830254 c!1033079) b!5830256))

(assert (= (and b!5830254 (not c!1033079)) b!5830261))

(assert (= (and b!5830256 (not res!2457319)) b!5830252))

(assert (= (and b!5830261 c!1033077) b!5830253))

(assert (= (and b!5830261 (not c!1033077)) b!5830251))

(assert (= (and b!5830253 (not res!2457317)) b!5830258))

(assert (= (or b!5830258 b!5830251) bm!455301))

(assert (= (or b!5830255 b!5830253) bm!455300))

(assert (=> bm!455300 m!6760098))

(declare-fun m!6760244 () Bool)

(assert (=> b!5830252 m!6760244))

(declare-fun m!6760246 () Bool)

(assert (=> bm!455301 m!6760246))

(declare-fun m!6760248 () Bool)

(assert (=> b!5830256 m!6760248))

(assert (=> b!5829951 d!1833410))

(declare-fun d!1833412 () Bool)

(assert (=> d!1833412 (= (isEmpty!35697 (tail!11415 (exprs!5769 (h!70279 zl!343)))) ((_ is Nil!63830) (tail!11415 (exprs!5769 (h!70279 zl!343)))))))

(assert (=> b!5829828 d!1833412))

(declare-fun d!1833414 () Bool)

(assert (=> d!1833414 (= (tail!11415 (exprs!5769 (h!70279 zl!343))) (t!377309 (exprs!5769 (h!70279 zl!343))))))

(assert (=> b!5829828 d!1833414))

(declare-fun d!1833416 () Bool)

(declare-fun res!2457320 () Bool)

(declare-fun e!3577159 () Bool)

(assert (=> d!1833416 (=> res!2457320 e!3577159)))

(assert (=> d!1833416 (= res!2457320 ((_ is Nil!63830) (exprs!5769 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830)))))))

(assert (=> d!1833416 (= (forall!14975 (exprs!5769 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830))) lambda!318982) e!3577159)))

(declare-fun b!5830262 () Bool)

(declare-fun e!3577160 () Bool)

(assert (=> b!5830262 (= e!3577159 e!3577160)))

(declare-fun res!2457321 () Bool)

(assert (=> b!5830262 (=> (not res!2457321) (not e!3577160))))

(assert (=> b!5830262 (= res!2457321 (dynLambda!24971 lambda!318982 (h!70278 (exprs!5769 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830))))))))

(declare-fun b!5830263 () Bool)

(assert (=> b!5830263 (= e!3577160 (forall!14975 (t!377309 (exprs!5769 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830)))) lambda!318982))))

(assert (= (and d!1833416 (not res!2457320)) b!5830262))

(assert (= (and b!5830262 res!2457321) b!5830263))

(declare-fun b_lambda!219707 () Bool)

(assert (=> (not b_lambda!219707) (not b!5830262)))

(declare-fun m!6760250 () Bool)

(assert (=> b!5830262 m!6760250))

(declare-fun m!6760252 () Bool)

(assert (=> b!5830263 m!6760252))

(assert (=> d!1833338 d!1833416))

(declare-fun bs!1374615 () Bool)

(declare-fun d!1833418 () Bool)

(assert (= bs!1374615 (and d!1833418 d!1833338)))

(declare-fun lambda!319017 () Int)

(assert (=> bs!1374615 (= lambda!319017 lambda!318982)))

(declare-fun bs!1374616 () Bool)

(assert (= bs!1374616 (and d!1833418 d!1833340)))

(assert (=> bs!1374616 (= lambda!319017 lambda!318983)))

(declare-fun bs!1374617 () Bool)

(assert (= bs!1374617 (and d!1833418 d!1833328)))

(assert (=> bs!1374617 (= lambda!319017 lambda!318975)))

(declare-fun bs!1374618 () Bool)

(assert (= bs!1374618 (and d!1833418 d!1833384)))

(assert (=> bs!1374618 (= lambda!319017 lambda!319013)))

(declare-fun bs!1374619 () Bool)

(assert (= bs!1374619 (and d!1833418 d!1833344)))

(assert (=> bs!1374619 (= lambda!319017 lambda!318986)))

(declare-fun bs!1374620 () Bool)

(assert (= bs!1374620 (and d!1833418 d!1833336)))

(assert (=> bs!1374620 (= lambda!319017 lambda!318981)))

(declare-fun bs!1374621 () Bool)

(assert (= bs!1374621 (and d!1833418 d!1833386)))

(assert (=> bs!1374621 (= lambda!319017 lambda!319014)))

(declare-fun bs!1374622 () Bool)

(assert (= bs!1374622 (and d!1833418 d!1833334)))

(assert (=> bs!1374622 (= lambda!319017 lambda!318978)))

(declare-fun b!5830264 () Bool)

(declare-fun e!3577163 () Regex!15885)

(assert (=> b!5830264 (= e!3577163 (Union!15885 (h!70278 (t!377309 (unfocusZipperList!1306 zl!343))) (generalisedUnion!1729 (t!377309 (t!377309 (unfocusZipperList!1306 zl!343))))))))

(declare-fun b!5830265 () Bool)

(assert (=> b!5830265 (= e!3577163 EmptyLang!15885)))

(declare-fun b!5830266 () Bool)

(declare-fun e!3577161 () Regex!15885)

(assert (=> b!5830266 (= e!3577161 (h!70278 (t!377309 (unfocusZipperList!1306 zl!343))))))

(declare-fun b!5830267 () Bool)

(declare-fun e!3577166 () Bool)

(declare-fun lt!2302894 () Regex!15885)

(assert (=> b!5830267 (= e!3577166 (= lt!2302894 (head!12330 (t!377309 (unfocusZipperList!1306 zl!343)))))))

(declare-fun b!5830268 () Bool)

(assert (=> b!5830268 (= e!3577161 e!3577163)))

(declare-fun c!1033082 () Bool)

(assert (=> b!5830268 (= c!1033082 ((_ is Cons!63830) (t!377309 (unfocusZipperList!1306 zl!343))))))

(declare-fun b!5830269 () Bool)

(assert (=> b!5830269 (= e!3577166 (isUnion!761 lt!2302894))))

(declare-fun b!5830270 () Bool)

(declare-fun e!3577162 () Bool)

(assert (=> b!5830270 (= e!3577162 e!3577166)))

(declare-fun c!1033081 () Bool)

(assert (=> b!5830270 (= c!1033081 (isEmpty!35697 (tail!11415 (t!377309 (unfocusZipperList!1306 zl!343)))))))

(declare-fun b!5830271 () Bool)

(declare-fun e!3577164 () Bool)

(assert (=> b!5830271 (= e!3577164 (isEmpty!35697 (t!377309 (t!377309 (unfocusZipperList!1306 zl!343)))))))

(declare-fun b!5830272 () Bool)

(assert (=> b!5830272 (= e!3577162 (isEmptyLang!1331 lt!2302894))))

(declare-fun b!5830273 () Bool)

(declare-fun e!3577165 () Bool)

(assert (=> b!5830273 (= e!3577165 e!3577162)))

(declare-fun c!1033080 () Bool)

(assert (=> b!5830273 (= c!1033080 (isEmpty!35697 (t!377309 (unfocusZipperList!1306 zl!343))))))

(assert (=> d!1833418 e!3577165))

(declare-fun res!2457323 () Bool)

(assert (=> d!1833418 (=> (not res!2457323) (not e!3577165))))

(assert (=> d!1833418 (= res!2457323 (validRegex!7621 lt!2302894))))

(assert (=> d!1833418 (= lt!2302894 e!3577161)))

(declare-fun c!1033083 () Bool)

(assert (=> d!1833418 (= c!1033083 e!3577164)))

(declare-fun res!2457322 () Bool)

(assert (=> d!1833418 (=> (not res!2457322) (not e!3577164))))

(assert (=> d!1833418 (= res!2457322 ((_ is Cons!63830) (t!377309 (unfocusZipperList!1306 zl!343))))))

(assert (=> d!1833418 (forall!14975 (t!377309 (unfocusZipperList!1306 zl!343)) lambda!319017)))

(assert (=> d!1833418 (= (generalisedUnion!1729 (t!377309 (unfocusZipperList!1306 zl!343))) lt!2302894)))

(assert (= (and d!1833418 res!2457322) b!5830271))

(assert (= (and d!1833418 c!1033083) b!5830266))

(assert (= (and d!1833418 (not c!1033083)) b!5830268))

(assert (= (and b!5830268 c!1033082) b!5830264))

(assert (= (and b!5830268 (not c!1033082)) b!5830265))

(assert (= (and d!1833418 res!2457323) b!5830273))

(assert (= (and b!5830273 c!1033080) b!5830272))

(assert (= (and b!5830273 (not c!1033080)) b!5830270))

(assert (= (and b!5830270 c!1033081) b!5830267))

(assert (= (and b!5830270 (not c!1033081)) b!5830269))

(declare-fun m!6760254 () Bool)

(assert (=> b!5830271 m!6760254))

(declare-fun m!6760256 () Bool)

(assert (=> b!5830264 m!6760256))

(assert (=> b!5830273 m!6760032))

(declare-fun m!6760258 () Bool)

(assert (=> b!5830267 m!6760258))

(declare-fun m!6760260 () Bool)

(assert (=> b!5830270 m!6760260))

(assert (=> b!5830270 m!6760260))

(declare-fun m!6760262 () Bool)

(assert (=> b!5830270 m!6760262))

(declare-fun m!6760264 () Bool)

(assert (=> b!5830269 m!6760264))

(declare-fun m!6760266 () Bool)

(assert (=> b!5830272 m!6760266))

(declare-fun m!6760268 () Bool)

(assert (=> d!1833418 m!6760268))

(declare-fun m!6760270 () Bool)

(assert (=> d!1833418 m!6760270))

(assert (=> b!5829757 d!1833418))

(declare-fun bs!1374623 () Bool)

(declare-fun d!1833420 () Bool)

(assert (= bs!1374623 (and d!1833420 d!1833338)))

(declare-fun lambda!319018 () Int)

(assert (=> bs!1374623 (= lambda!319018 lambda!318982)))

(declare-fun bs!1374624 () Bool)

(assert (= bs!1374624 (and d!1833420 d!1833340)))

(assert (=> bs!1374624 (= lambda!319018 lambda!318983)))

(declare-fun bs!1374625 () Bool)

(assert (= bs!1374625 (and d!1833420 d!1833328)))

(assert (=> bs!1374625 (= lambda!319018 lambda!318975)))

(declare-fun bs!1374626 () Bool)

(assert (= bs!1374626 (and d!1833420 d!1833384)))

(assert (=> bs!1374626 (= lambda!319018 lambda!319013)))

(declare-fun bs!1374627 () Bool)

(assert (= bs!1374627 (and d!1833420 d!1833418)))

(assert (=> bs!1374627 (= lambda!319018 lambda!319017)))

(declare-fun bs!1374628 () Bool)

(assert (= bs!1374628 (and d!1833420 d!1833344)))

(assert (=> bs!1374628 (= lambda!319018 lambda!318986)))

(declare-fun bs!1374629 () Bool)

(assert (= bs!1374629 (and d!1833420 d!1833336)))

(assert (=> bs!1374629 (= lambda!319018 lambda!318981)))

(declare-fun bs!1374630 () Bool)

(assert (= bs!1374630 (and d!1833420 d!1833386)))

(assert (=> bs!1374630 (= lambda!319018 lambda!319014)))

(declare-fun bs!1374631 () Bool)

(assert (= bs!1374631 (and d!1833420 d!1833334)))

(assert (=> bs!1374631 (= lambda!319018 lambda!318978)))

(assert (=> d!1833420 (= (inv!82959 (h!70279 (t!377310 zl!343))) (forall!14975 (exprs!5769 (h!70279 (t!377310 zl!343))) lambda!319018))))

(declare-fun bs!1374632 () Bool)

(assert (= bs!1374632 d!1833420))

(declare-fun m!6760272 () Bool)

(assert (=> bs!1374632 m!6760272))

(assert (=> b!5830057 d!1833420))

(declare-fun d!1833422 () Bool)

(declare-fun res!2457328 () Bool)

(declare-fun e!3577171 () Bool)

(assert (=> d!1833422 (=> res!2457328 e!3577171)))

(assert (=> d!1833422 (= res!2457328 ((_ is Nil!63831) lt!2302877))))

(assert (=> d!1833422 (= (noDuplicate!1755 lt!2302877) e!3577171)))

(declare-fun b!5830278 () Bool)

(declare-fun e!3577172 () Bool)

(assert (=> b!5830278 (= e!3577171 e!3577172)))

(declare-fun res!2457329 () Bool)

(assert (=> b!5830278 (=> (not res!2457329) (not e!3577172))))

(declare-fun contains!19909 (List!63955 Context!10538) Bool)

(assert (=> b!5830278 (= res!2457329 (not (contains!19909 (t!377310 lt!2302877) (h!70279 lt!2302877))))))

(declare-fun b!5830279 () Bool)

(assert (=> b!5830279 (= e!3577172 (noDuplicate!1755 (t!377310 lt!2302877)))))

(assert (= (and d!1833422 (not res!2457328)) b!5830278))

(assert (= (and b!5830278 res!2457329) b!5830279))

(declare-fun m!6760274 () Bool)

(assert (=> b!5830278 m!6760274))

(declare-fun m!6760276 () Bool)

(assert (=> b!5830279 m!6760276))

(assert (=> d!1833360 d!1833422))

(declare-fun d!1833424 () Bool)

(declare-fun e!3577180 () Bool)

(assert (=> d!1833424 e!3577180))

(declare-fun res!2457334 () Bool)

(assert (=> d!1833424 (=> (not res!2457334) (not e!3577180))))

(declare-fun res!2457335 () List!63955)

(assert (=> d!1833424 (= res!2457334 (noDuplicate!1755 res!2457335))))

(declare-fun e!3577179 () Bool)

(assert (=> d!1833424 e!3577179))

(assert (=> d!1833424 (= (choose!44291 z!1189) res!2457335)))

(declare-fun b!5830287 () Bool)

(declare-fun e!3577181 () Bool)

(declare-fun tp!1610649 () Bool)

(assert (=> b!5830287 (= e!3577181 tp!1610649)))

(declare-fun tp!1610650 () Bool)

(declare-fun b!5830286 () Bool)

(assert (=> b!5830286 (= e!3577179 (and (inv!82959 (h!70279 res!2457335)) e!3577181 tp!1610650))))

(declare-fun b!5830288 () Bool)

(assert (=> b!5830288 (= e!3577180 (= (content!11720 res!2457335) z!1189))))

(assert (= b!5830286 b!5830287))

(assert (= (and d!1833424 ((_ is Cons!63831) res!2457335)) b!5830286))

(assert (= (and d!1833424 res!2457334) b!5830288))

(declare-fun m!6760278 () Bool)

(assert (=> d!1833424 m!6760278))

(declare-fun m!6760280 () Bool)

(assert (=> b!5830286 m!6760280))

(declare-fun m!6760282 () Bool)

(assert (=> b!5830288 m!6760282))

(assert (=> d!1833360 d!1833424))

(declare-fun d!1833430 () Bool)

(declare-fun res!2457336 () Bool)

(declare-fun e!3577182 () Bool)

(assert (=> d!1833430 (=> res!2457336 e!3577182)))

(assert (=> d!1833430 (= res!2457336 ((_ is Nil!63830) (exprs!5769 setElem!39430)))))

(assert (=> d!1833430 (= (forall!14975 (exprs!5769 setElem!39430) lambda!318975) e!3577182)))

(declare-fun b!5830289 () Bool)

(declare-fun e!3577183 () Bool)

(assert (=> b!5830289 (= e!3577182 e!3577183)))

(declare-fun res!2457337 () Bool)

(assert (=> b!5830289 (=> (not res!2457337) (not e!3577183))))

(assert (=> b!5830289 (= res!2457337 (dynLambda!24971 lambda!318975 (h!70278 (exprs!5769 setElem!39430))))))

(declare-fun b!5830290 () Bool)

(assert (=> b!5830290 (= e!3577183 (forall!14975 (t!377309 (exprs!5769 setElem!39430)) lambda!318975))))

(assert (= (and d!1833430 (not res!2457336)) b!5830289))

(assert (= (and b!5830289 res!2457337) b!5830290))

(declare-fun b_lambda!219709 () Bool)

(assert (=> (not b_lambda!219709) (not b!5830289)))

(declare-fun m!6760284 () Bool)

(assert (=> b!5830289 m!6760284))

(declare-fun m!6760286 () Bool)

(assert (=> b!5830290 m!6760286))

(assert (=> d!1833328 d!1833430))

(declare-fun d!1833432 () Bool)

(declare-fun nullableFct!1888 (Regex!15885) Bool)

(assert (=> d!1833432 (= (nullable!5886 (reg!16214 r!7292)) (nullableFct!1888 (reg!16214 r!7292)))))

(declare-fun bs!1374640 () Bool)

(assert (= bs!1374640 d!1833432))

(declare-fun m!6760290 () Bool)

(assert (=> bs!1374640 m!6760290))

(assert (=> b!5829799 d!1833432))

(declare-fun d!1833438 () Bool)

(declare-fun res!2457341 () Bool)

(declare-fun e!3577187 () Bool)

(assert (=> d!1833438 (=> res!2457341 e!3577187)))

(assert (=> d!1833438 (= res!2457341 ((_ is ElementMatch!15885) lt!2302856))))

(assert (=> d!1833438 (= (validRegex!7621 lt!2302856) e!3577187)))

(declare-fun b!5830291 () Bool)

(declare-fun res!2457338 () Bool)

(declare-fun e!3577188 () Bool)

(assert (=> b!5830291 (=> res!2457338 e!3577188)))

(assert (=> b!5830291 (= res!2457338 (not ((_ is Concat!24730) lt!2302856)))))

(declare-fun e!3577184 () Bool)

(assert (=> b!5830291 (= e!3577184 e!3577188)))

(declare-fun b!5830292 () Bool)

(declare-fun e!3577189 () Bool)

(assert (=> b!5830292 (= e!3577188 e!3577189)))

(declare-fun res!2457342 () Bool)

(assert (=> b!5830292 (=> (not res!2457342) (not e!3577189))))

(declare-fun call!455309 () Bool)

(assert (=> b!5830292 (= res!2457342 call!455309)))

(declare-fun b!5830293 () Bool)

(declare-fun e!3577186 () Bool)

(assert (=> b!5830293 (= e!3577187 e!3577186)))

(declare-fun c!1033085 () Bool)

(assert (=> b!5830293 (= c!1033085 ((_ is Star!15885) lt!2302856))))

(declare-fun bm!455302 () Bool)

(declare-fun c!1033084 () Bool)

(assert (=> bm!455302 (= call!455309 (validRegex!7621 (ite c!1033084 (regOne!32283 lt!2302856) (regOne!32282 lt!2302856))))))

(declare-fun bm!455303 () Bool)

(declare-fun call!455308 () Bool)

(declare-fun call!455307 () Bool)

(assert (=> bm!455303 (= call!455308 call!455307)))

(declare-fun b!5830294 () Bool)

(assert (=> b!5830294 (= e!3577186 e!3577184)))

(assert (=> b!5830294 (= c!1033084 ((_ is Union!15885) lt!2302856))))

(declare-fun b!5830295 () Bool)

(declare-fun res!2457339 () Bool)

(declare-fun e!3577190 () Bool)

(assert (=> b!5830295 (=> (not res!2457339) (not e!3577190))))

(assert (=> b!5830295 (= res!2457339 call!455309)))

(assert (=> b!5830295 (= e!3577184 e!3577190)))

(declare-fun b!5830296 () Bool)

(assert (=> b!5830296 (= e!3577190 call!455308)))

(declare-fun b!5830297 () Bool)

(assert (=> b!5830297 (= e!3577189 call!455308)))

(declare-fun b!5830298 () Bool)

(declare-fun e!3577185 () Bool)

(assert (=> b!5830298 (= e!3577185 call!455307)))

(declare-fun b!5830299 () Bool)

(assert (=> b!5830299 (= e!3577186 e!3577185)))

(declare-fun res!2457340 () Bool)

(assert (=> b!5830299 (= res!2457340 (not (nullable!5886 (reg!16214 lt!2302856))))))

(assert (=> b!5830299 (=> (not res!2457340) (not e!3577185))))

(declare-fun bm!455304 () Bool)

(assert (=> bm!455304 (= call!455307 (validRegex!7621 (ite c!1033085 (reg!16214 lt!2302856) (ite c!1033084 (regTwo!32283 lt!2302856) (regTwo!32282 lt!2302856)))))))

(assert (= (and d!1833438 (not res!2457341)) b!5830293))

(assert (= (and b!5830293 c!1033085) b!5830299))

(assert (= (and b!5830293 (not c!1033085)) b!5830294))

(assert (= (and b!5830299 res!2457340) b!5830298))

(assert (= (and b!5830294 c!1033084) b!5830295))

(assert (= (and b!5830294 (not c!1033084)) b!5830291))

(assert (= (and b!5830295 res!2457339) b!5830296))

(assert (= (and b!5830291 (not res!2457338)) b!5830292))

(assert (= (and b!5830292 res!2457342) b!5830297))

(assert (= (or b!5830296 b!5830297) bm!455303))

(assert (= (or b!5830295 b!5830292) bm!455302))

(assert (= (or b!5830298 bm!455303) bm!455304))

(declare-fun m!6760292 () Bool)

(assert (=> bm!455302 m!6760292))

(declare-fun m!6760294 () Bool)

(assert (=> b!5830299 m!6760294))

(declare-fun m!6760296 () Bool)

(assert (=> bm!455304 m!6760296))

(assert (=> d!1833334 d!1833438))

(declare-fun d!1833442 () Bool)

(declare-fun res!2457343 () Bool)

(declare-fun e!3577191 () Bool)

(assert (=> d!1833442 (=> res!2457343 e!3577191)))

(assert (=> d!1833442 (= res!2457343 ((_ is Nil!63830) (unfocusZipperList!1306 zl!343)))))

(assert (=> d!1833442 (= (forall!14975 (unfocusZipperList!1306 zl!343) lambda!318978) e!3577191)))

(declare-fun b!5830300 () Bool)

(declare-fun e!3577192 () Bool)

(assert (=> b!5830300 (= e!3577191 e!3577192)))

(declare-fun res!2457344 () Bool)

(assert (=> b!5830300 (=> (not res!2457344) (not e!3577192))))

(assert (=> b!5830300 (= res!2457344 (dynLambda!24971 lambda!318978 (h!70278 (unfocusZipperList!1306 zl!343))))))

(declare-fun b!5830301 () Bool)

(assert (=> b!5830301 (= e!3577192 (forall!14975 (t!377309 (unfocusZipperList!1306 zl!343)) lambda!318978))))

(assert (= (and d!1833442 (not res!2457343)) b!5830300))

(assert (= (and b!5830300 res!2457344) b!5830301))

(declare-fun b_lambda!219711 () Bool)

(assert (=> (not b_lambda!219711) (not b!5830300)))

(declare-fun m!6760298 () Bool)

(assert (=> b!5830300 m!6760298))

(declare-fun m!6760300 () Bool)

(assert (=> b!5830301 m!6760300))

(assert (=> d!1833334 d!1833442))

(declare-fun d!1833444 () Bool)

(assert (=> d!1833444 (= (isConcat!846 lt!2302862) ((_ is Concat!24730) lt!2302862))))

(assert (=> b!5829825 d!1833444))

(declare-fun b!5830302 () Bool)

(declare-fun e!3577194 () Bool)

(declare-fun lt!2302895 () Bool)

(declare-fun call!455310 () Bool)

(assert (=> b!5830302 (= e!3577194 (= lt!2302895 call!455310))))

(declare-fun bm!455305 () Bool)

(assert (=> bm!455305 (= call!455310 (isEmpty!35698 (tail!11417 s!2326)))))

(declare-fun b!5830303 () Bool)

(declare-fun res!2457346 () Bool)

(declare-fun e!3577197 () Bool)

(assert (=> b!5830303 (=> res!2457346 e!3577197)))

(assert (=> b!5830303 (= res!2457346 (not ((_ is ElementMatch!15885) (derivativeStep!4626 r!7292 (head!12331 s!2326)))))))

(declare-fun e!3577198 () Bool)

(assert (=> b!5830303 (= e!3577198 e!3577197)))

(declare-fun b!5830304 () Bool)

(declare-fun e!3577199 () Bool)

(assert (=> b!5830304 (= e!3577197 e!3577199)))

(declare-fun res!2457351 () Bool)

(assert (=> b!5830304 (=> (not res!2457351) (not e!3577199))))

(assert (=> b!5830304 (= res!2457351 (not lt!2302895))))

(declare-fun b!5830305 () Bool)

(assert (=> b!5830305 (= e!3577194 e!3577198)))

(declare-fun c!1033086 () Bool)

(assert (=> b!5830305 (= c!1033086 ((_ is EmptyLang!15885) (derivativeStep!4626 r!7292 (head!12331 s!2326))))))

(declare-fun b!5830306 () Bool)

(declare-fun res!2457345 () Bool)

(declare-fun e!3577196 () Bool)

(assert (=> b!5830306 (=> (not res!2457345) (not e!3577196))))

(assert (=> b!5830306 (= res!2457345 (not call!455310))))

(declare-fun b!5830307 () Bool)

(declare-fun res!2457352 () Bool)

(assert (=> b!5830307 (=> res!2457352 e!3577197)))

(assert (=> b!5830307 (= res!2457352 e!3577196)))

(declare-fun res!2457347 () Bool)

(assert (=> b!5830307 (=> (not res!2457347) (not e!3577196))))

(assert (=> b!5830307 (= res!2457347 lt!2302895)))

(declare-fun d!1833446 () Bool)

(assert (=> d!1833446 e!3577194))

(declare-fun c!1033088 () Bool)

(assert (=> d!1833446 (= c!1033088 ((_ is EmptyExpr!15885) (derivativeStep!4626 r!7292 (head!12331 s!2326))))))

(declare-fun e!3577195 () Bool)

(assert (=> d!1833446 (= lt!2302895 e!3577195)))

(declare-fun c!1033087 () Bool)

(assert (=> d!1833446 (= c!1033087 (isEmpty!35698 (tail!11417 s!2326)))))

(assert (=> d!1833446 (validRegex!7621 (derivativeStep!4626 r!7292 (head!12331 s!2326)))))

(assert (=> d!1833446 (= (matchR!8068 (derivativeStep!4626 r!7292 (head!12331 s!2326)) (tail!11417 s!2326)) lt!2302895)))

(declare-fun b!5830308 () Bool)

(assert (=> b!5830308 (= e!3577195 (nullable!5886 (derivativeStep!4626 r!7292 (head!12331 s!2326))))))

(declare-fun b!5830309 () Bool)

(declare-fun res!2457348 () Bool)

(assert (=> b!5830309 (=> (not res!2457348) (not e!3577196))))

(assert (=> b!5830309 (= res!2457348 (isEmpty!35698 (tail!11417 (tail!11417 s!2326))))))

(declare-fun b!5830310 () Bool)

(declare-fun res!2457349 () Bool)

(declare-fun e!3577193 () Bool)

(assert (=> b!5830310 (=> res!2457349 e!3577193)))

(assert (=> b!5830310 (= res!2457349 (not (isEmpty!35698 (tail!11417 (tail!11417 s!2326)))))))

(declare-fun b!5830311 () Bool)

(assert (=> b!5830311 (= e!3577196 (= (head!12331 (tail!11417 s!2326)) (c!1032959 (derivativeStep!4626 r!7292 (head!12331 s!2326)))))))

(declare-fun b!5830312 () Bool)

(assert (=> b!5830312 (= e!3577199 e!3577193)))

(declare-fun res!2457350 () Bool)

(assert (=> b!5830312 (=> res!2457350 e!3577193)))

(assert (=> b!5830312 (= res!2457350 call!455310)))

(declare-fun b!5830313 () Bool)

(assert (=> b!5830313 (= e!3577198 (not lt!2302895))))

(declare-fun b!5830314 () Bool)

(assert (=> b!5830314 (= e!3577195 (matchR!8068 (derivativeStep!4626 (derivativeStep!4626 r!7292 (head!12331 s!2326)) (head!12331 (tail!11417 s!2326))) (tail!11417 (tail!11417 s!2326))))))

(declare-fun b!5830315 () Bool)

(assert (=> b!5830315 (= e!3577193 (not (= (head!12331 (tail!11417 s!2326)) (c!1032959 (derivativeStep!4626 r!7292 (head!12331 s!2326))))))))

(assert (= (and d!1833446 c!1033087) b!5830308))

(assert (= (and d!1833446 (not c!1033087)) b!5830314))

(assert (= (and d!1833446 c!1033088) b!5830302))

(assert (= (and d!1833446 (not c!1033088)) b!5830305))

(assert (= (and b!5830305 c!1033086) b!5830313))

(assert (= (and b!5830305 (not c!1033086)) b!5830303))

(assert (= (and b!5830303 (not res!2457346)) b!5830307))

(assert (= (and b!5830307 res!2457347) b!5830306))

(assert (= (and b!5830306 res!2457345) b!5830309))

(assert (= (and b!5830309 res!2457348) b!5830311))

(assert (= (and b!5830307 (not res!2457352)) b!5830304))

(assert (= (and b!5830304 res!2457351) b!5830312))

(assert (= (and b!5830312 (not res!2457350)) b!5830310))

(assert (= (and b!5830310 (not res!2457349)) b!5830315))

(assert (= (or b!5830302 b!5830306 b!5830312) bm!455305))

(assert (=> b!5830315 m!6760094))

(declare-fun m!6760302 () Bool)

(assert (=> b!5830315 m!6760302))

(assert (=> b!5830314 m!6760094))

(assert (=> b!5830314 m!6760302))

(assert (=> b!5830314 m!6760092))

(assert (=> b!5830314 m!6760302))

(declare-fun m!6760304 () Bool)

(assert (=> b!5830314 m!6760304))

(assert (=> b!5830314 m!6760094))

(declare-fun m!6760306 () Bool)

(assert (=> b!5830314 m!6760306))

(assert (=> b!5830314 m!6760304))

(assert (=> b!5830314 m!6760306))

(declare-fun m!6760308 () Bool)

(assert (=> b!5830314 m!6760308))

(assert (=> d!1833446 m!6760094))

(assert (=> d!1833446 m!6760100))

(assert (=> d!1833446 m!6760092))

(declare-fun m!6760310 () Bool)

(assert (=> d!1833446 m!6760310))

(assert (=> b!5830310 m!6760094))

(assert (=> b!5830310 m!6760306))

(assert (=> b!5830310 m!6760306))

(declare-fun m!6760312 () Bool)

(assert (=> b!5830310 m!6760312))

(assert (=> bm!455305 m!6760094))

(assert (=> bm!455305 m!6760100))

(assert (=> b!5830309 m!6760094))

(assert (=> b!5830309 m!6760306))

(assert (=> b!5830309 m!6760306))

(assert (=> b!5830309 m!6760312))

(assert (=> b!5830308 m!6760092))

(declare-fun m!6760314 () Bool)

(assert (=> b!5830308 m!6760314))

(assert (=> b!5830311 m!6760094))

(assert (=> b!5830311 m!6760302))

(assert (=> b!5829870 d!1833446))

(declare-fun b!5830368 () Bool)

(declare-fun e!3577241 () Regex!15885)

(declare-fun call!455325 () Regex!15885)

(declare-fun call!455324 () Regex!15885)

(assert (=> b!5830368 (= e!3577241 (Union!15885 call!455325 call!455324))))

(declare-fun b!5830369 () Bool)

(declare-fun c!1033102 () Bool)

(assert (=> b!5830369 (= c!1033102 ((_ is Union!15885) r!7292))))

(declare-fun e!3577240 () Regex!15885)

(assert (=> b!5830369 (= e!3577240 e!3577241)))

(declare-fun d!1833450 () Bool)

(declare-fun lt!2302899 () Regex!15885)

(assert (=> d!1833450 (validRegex!7621 lt!2302899)))

(declare-fun e!3577239 () Regex!15885)

(assert (=> d!1833450 (= lt!2302899 e!3577239)))

(declare-fun c!1033104 () Bool)

(assert (=> d!1833450 (= c!1033104 (or ((_ is EmptyExpr!15885) r!7292) ((_ is EmptyLang!15885) r!7292)))))

(assert (=> d!1833450 (validRegex!7621 r!7292)))

(assert (=> d!1833450 (= (derivativeStep!4626 r!7292 (head!12331 s!2326)) lt!2302899)))

(declare-fun b!5830370 () Bool)

(declare-fun e!3577243 () Regex!15885)

(declare-fun call!455322 () Regex!15885)

(assert (=> b!5830370 (= e!3577243 (Union!15885 (Concat!24730 call!455322 (regTwo!32282 r!7292)) EmptyLang!15885))))

(declare-fun b!5830371 () Bool)

(declare-fun e!3577242 () Regex!15885)

(declare-fun call!455323 () Regex!15885)

(assert (=> b!5830371 (= e!3577242 (Concat!24730 call!455323 r!7292))))

(declare-fun b!5830372 () Bool)

(assert (=> b!5830372 (= e!3577241 e!3577242)))

(declare-fun c!1033106 () Bool)

(assert (=> b!5830372 (= c!1033106 ((_ is Star!15885) r!7292))))

(declare-fun b!5830373 () Bool)

(assert (=> b!5830373 (= e!3577239 e!3577240)))

(declare-fun c!1033105 () Bool)

(assert (=> b!5830373 (= c!1033105 ((_ is ElementMatch!15885) r!7292))))

(declare-fun bm!455317 () Bool)

(assert (=> bm!455317 (= call!455323 call!455324)))

(declare-fun bm!455318 () Bool)

(assert (=> bm!455318 (= call!455325 (derivativeStep!4626 (ite c!1033102 (regOne!32283 r!7292) (regOne!32282 r!7292)) (head!12331 s!2326)))))

(declare-fun b!5830374 () Bool)

(assert (=> b!5830374 (= e!3577239 EmptyLang!15885)))

(declare-fun bm!455319 () Bool)

(assert (=> bm!455319 (= call!455322 call!455323)))

(declare-fun b!5830375 () Bool)

(assert (=> b!5830375 (= e!3577243 (Union!15885 (Concat!24730 call!455325 (regTwo!32282 r!7292)) call!455322))))

(declare-fun b!5830376 () Bool)

(declare-fun c!1033103 () Bool)

(assert (=> b!5830376 (= c!1033103 (nullable!5886 (regOne!32282 r!7292)))))

(assert (=> b!5830376 (= e!3577242 e!3577243)))

(declare-fun bm!455320 () Bool)

(assert (=> bm!455320 (= call!455324 (derivativeStep!4626 (ite c!1033102 (regTwo!32283 r!7292) (ite c!1033106 (reg!16214 r!7292) (ite c!1033103 (regTwo!32282 r!7292) (regOne!32282 r!7292)))) (head!12331 s!2326)))))

(declare-fun b!5830377 () Bool)

(assert (=> b!5830377 (= e!3577240 (ite (= (head!12331 s!2326) (c!1032959 r!7292)) EmptyExpr!15885 EmptyLang!15885))))

(assert (= (and d!1833450 c!1033104) b!5830374))

(assert (= (and d!1833450 (not c!1033104)) b!5830373))

(assert (= (and b!5830373 c!1033105) b!5830377))

(assert (= (and b!5830373 (not c!1033105)) b!5830369))

(assert (= (and b!5830369 c!1033102) b!5830368))

(assert (= (and b!5830369 (not c!1033102)) b!5830372))

(assert (= (and b!5830372 c!1033106) b!5830371))

(assert (= (and b!5830372 (not c!1033106)) b!5830376))

(assert (= (and b!5830376 c!1033103) b!5830375))

(assert (= (and b!5830376 (not c!1033103)) b!5830370))

(assert (= (or b!5830375 b!5830370) bm!455319))

(assert (= (or b!5830371 bm!455319) bm!455317))

(assert (= (or b!5830368 bm!455317) bm!455320))

(assert (= (or b!5830368 b!5830375) bm!455318))

(declare-fun m!6760346 () Bool)

(assert (=> d!1833450 m!6760346))

(assert (=> d!1833450 m!6760016))

(assert (=> bm!455318 m!6760090))

(declare-fun m!6760348 () Bool)

(assert (=> bm!455318 m!6760348))

(declare-fun m!6760350 () Bool)

(assert (=> b!5830376 m!6760350))

(assert (=> bm!455320 m!6760090))

(declare-fun m!6760352 () Bool)

(assert (=> bm!455320 m!6760352))

(assert (=> b!5829870 d!1833450))

(declare-fun d!1833480 () Bool)

(assert (=> d!1833480 (= (head!12331 s!2326) (h!70280 s!2326))))

(assert (=> b!5829870 d!1833480))

(declare-fun d!1833482 () Bool)

(assert (=> d!1833482 (= (tail!11417 s!2326) (t!377311 s!2326))))

(assert (=> b!5829870 d!1833482))

(declare-fun d!1833484 () Bool)

(assert (=> d!1833484 (= (isEmpty!35697 (t!377309 (exprs!5769 (h!70279 zl!343)))) ((_ is Nil!63830) (t!377309 (exprs!5769 (h!70279 zl!343)))))))

(assert (=> b!5829826 d!1833484))

(declare-fun d!1833486 () Bool)

(declare-fun choose!44293 (Int) Bool)

(assert (=> d!1833486 (= (Exists!2961 (ite c!1033020 lambda!318995 lambda!318996)) (choose!44293 (ite c!1033020 lambda!318995 lambda!318996)))))

(declare-fun bs!1374659 () Bool)

(assert (= bs!1374659 d!1833486))

(declare-fun m!6760372 () Bool)

(assert (=> bs!1374659 m!6760372))

(assert (=> bm!455278 d!1833486))

(assert (=> b!5829871 d!1833480))

(declare-fun d!1833492 () Bool)

(assert (=> d!1833492 (= (isEmpty!35697 (exprs!5769 (h!70279 zl!343))) ((_ is Nil!63830) (exprs!5769 (h!70279 zl!343))))))

(assert (=> b!5829827 d!1833492))

(declare-fun bs!1374660 () Bool)

(declare-fun b!5830404 () Bool)

(assert (= bs!1374660 (and b!5830404 b!5829953)))

(declare-fun lambda!319022 () Int)

(assert (=> bs!1374660 (= (and (= (reg!16214 (regTwo!32283 r!7292)) (reg!16214 r!7292)) (= (regTwo!32283 r!7292) r!7292)) (= lambda!319022 lambda!318995))))

(declare-fun bs!1374661 () Bool)

(assert (= bs!1374661 (and b!5830404 b!5829946)))

(assert (=> bs!1374661 (not (= lambda!319022 lambda!318996))))

(declare-fun bs!1374662 () Bool)

(assert (= bs!1374662 (and b!5830404 b!5830258)))

(assert (=> bs!1374662 (= (and (= (reg!16214 (regTwo!32283 r!7292)) (reg!16214 (regOne!32283 r!7292))) (= (regTwo!32283 r!7292) (regOne!32283 r!7292))) (= lambda!319022 lambda!319015))))

(declare-fun bs!1374663 () Bool)

(assert (= bs!1374663 (and b!5830404 b!5830251)))

(assert (=> bs!1374663 (not (= lambda!319022 lambda!319016))))

(assert (=> b!5830404 true))

(assert (=> b!5830404 true))

(declare-fun bs!1374673 () Bool)

(declare-fun b!5830397 () Bool)

(assert (= bs!1374673 (and b!5830397 b!5830258)))

(declare-fun lambda!319024 () Int)

(assert (=> bs!1374673 (not (= lambda!319024 lambda!319015))))

(declare-fun bs!1374674 () Bool)

(assert (= bs!1374674 (and b!5830397 b!5829946)))

(assert (=> bs!1374674 (= (and (= (regOne!32282 (regTwo!32283 r!7292)) (regOne!32282 r!7292)) (= (regTwo!32282 (regTwo!32283 r!7292)) (regTwo!32282 r!7292))) (= lambda!319024 lambda!318996))))

(declare-fun bs!1374675 () Bool)

(assert (= bs!1374675 (and b!5830397 b!5830404)))

(assert (=> bs!1374675 (not (= lambda!319024 lambda!319022))))

(declare-fun bs!1374676 () Bool)

(assert (= bs!1374676 (and b!5830397 b!5829953)))

(assert (=> bs!1374676 (not (= lambda!319024 lambda!318995))))

(declare-fun bs!1374677 () Bool)

(assert (= bs!1374677 (and b!5830397 b!5830251)))

(assert (=> bs!1374677 (= (and (= (regOne!32282 (regTwo!32283 r!7292)) (regOne!32282 (regOne!32283 r!7292))) (= (regTwo!32282 (regTwo!32283 r!7292)) (regTwo!32282 (regOne!32283 r!7292)))) (= lambda!319024 lambda!319016))))

(assert (=> b!5830397 true))

(assert (=> b!5830397 true))

(declare-fun e!3577261 () Bool)

(declare-fun call!455330 () Bool)

(assert (=> b!5830397 (= e!3577261 call!455330)))

(declare-fun bm!455324 () Bool)

(declare-fun call!455329 () Bool)

(assert (=> bm!455324 (= call!455329 (isEmpty!35698 s!2326))))

(declare-fun b!5830398 () Bool)

(declare-fun e!3577263 () Bool)

(assert (=> b!5830398 (= e!3577263 (matchRSpec!2986 (regTwo!32283 (regTwo!32283 r!7292)) s!2326))))

(declare-fun b!5830399 () Bool)

(declare-fun res!2457383 () Bool)

(declare-fun e!3577257 () Bool)

(assert (=> b!5830399 (=> res!2457383 e!3577257)))

(assert (=> b!5830399 (= res!2457383 call!455329)))

(assert (=> b!5830399 (= e!3577261 e!3577257)))

(declare-fun b!5830400 () Bool)

(declare-fun c!1033116 () Bool)

(assert (=> b!5830400 (= c!1033116 ((_ is Union!15885) (regTwo!32283 r!7292)))))

(declare-fun e!3577258 () Bool)

(declare-fun e!3577262 () Bool)

(assert (=> b!5830400 (= e!3577258 e!3577262)))

(declare-fun c!1033114 () Bool)

(declare-fun bm!455325 () Bool)

(assert (=> bm!455325 (= call!455330 (Exists!2961 (ite c!1033114 lambda!319022 lambda!319024)))))

(declare-fun b!5830402 () Bool)

(assert (=> b!5830402 (= e!3577262 e!3577263)))

(declare-fun res!2457385 () Bool)

(assert (=> b!5830402 (= res!2457385 (matchRSpec!2986 (regOne!32283 (regTwo!32283 r!7292)) s!2326))))

(assert (=> b!5830402 (=> res!2457385 e!3577263)))

(declare-fun b!5830403 () Bool)

(assert (=> b!5830403 (= e!3577258 (= s!2326 (Cons!63832 (c!1032959 (regTwo!32283 r!7292)) Nil!63832)))))

(assert (=> b!5830404 (= e!3577257 call!455330)))

(declare-fun b!5830405 () Bool)

(declare-fun e!3577260 () Bool)

(declare-fun e!3577259 () Bool)

(assert (=> b!5830405 (= e!3577260 e!3577259)))

(declare-fun res!2457384 () Bool)

(assert (=> b!5830405 (= res!2457384 (not ((_ is EmptyLang!15885) (regTwo!32283 r!7292))))))

(assert (=> b!5830405 (=> (not res!2457384) (not e!3577259))))

(declare-fun d!1833494 () Bool)

(declare-fun c!1033115 () Bool)

(assert (=> d!1833494 (= c!1033115 ((_ is EmptyExpr!15885) (regTwo!32283 r!7292)))))

(assert (=> d!1833494 (= (matchRSpec!2986 (regTwo!32283 r!7292) s!2326) e!3577260)))

(declare-fun b!5830401 () Bool)

(assert (=> b!5830401 (= e!3577260 call!455329)))

(declare-fun b!5830406 () Bool)

(declare-fun c!1033113 () Bool)

(assert (=> b!5830406 (= c!1033113 ((_ is ElementMatch!15885) (regTwo!32283 r!7292)))))

(assert (=> b!5830406 (= e!3577259 e!3577258)))

(declare-fun b!5830407 () Bool)

(assert (=> b!5830407 (= e!3577262 e!3577261)))

(assert (=> b!5830407 (= c!1033114 ((_ is Star!15885) (regTwo!32283 r!7292)))))

(assert (= (and d!1833494 c!1033115) b!5830401))

(assert (= (and d!1833494 (not c!1033115)) b!5830405))

(assert (= (and b!5830405 res!2457384) b!5830406))

(assert (= (and b!5830406 c!1033113) b!5830403))

(assert (= (and b!5830406 (not c!1033113)) b!5830400))

(assert (= (and b!5830400 c!1033116) b!5830402))

(assert (= (and b!5830400 (not c!1033116)) b!5830407))

(assert (= (and b!5830402 (not res!2457385)) b!5830398))

(assert (= (and b!5830407 c!1033114) b!5830399))

(assert (= (and b!5830407 (not c!1033114)) b!5830397))

(assert (= (and b!5830399 (not res!2457383)) b!5830404))

(assert (= (or b!5830404 b!5830397) bm!455325))

(assert (= (or b!5830401 b!5830399) bm!455324))

(assert (=> bm!455324 m!6760098))

(declare-fun m!6760408 () Bool)

(assert (=> b!5830398 m!6760408))

(declare-fun m!6760410 () Bool)

(assert (=> bm!455325 m!6760410))

(declare-fun m!6760412 () Bool)

(assert (=> b!5830402 m!6760412))

(assert (=> b!5829947 d!1833494))

(declare-fun d!1833504 () Bool)

(declare-fun res!2457398 () Bool)

(declare-fun e!3577282 () Bool)

(assert (=> d!1833504 (=> res!2457398 e!3577282)))

(assert (=> d!1833504 (= res!2457398 ((_ is ElementMatch!15885) (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))))))

(assert (=> d!1833504 (= (validRegex!7621 (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))) e!3577282)))

(declare-fun b!5830429 () Bool)

(declare-fun res!2457395 () Bool)

(declare-fun e!3577283 () Bool)

(assert (=> b!5830429 (=> res!2457395 e!3577283)))

(assert (=> b!5830429 (= res!2457395 (not ((_ is Concat!24730) (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292)))))))

(declare-fun e!3577279 () Bool)

(assert (=> b!5830429 (= e!3577279 e!3577283)))

(declare-fun b!5830430 () Bool)

(declare-fun e!3577284 () Bool)

(assert (=> b!5830430 (= e!3577283 e!3577284)))

(declare-fun res!2457399 () Bool)

(assert (=> b!5830430 (=> (not res!2457399) (not e!3577284))))

(declare-fun call!455336 () Bool)

(assert (=> b!5830430 (= res!2457399 call!455336)))

(declare-fun b!5830431 () Bool)

(declare-fun e!3577281 () Bool)

(assert (=> b!5830431 (= e!3577282 e!3577281)))

(declare-fun c!1033124 () Bool)

(assert (=> b!5830431 (= c!1033124 ((_ is Star!15885) (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))))))

(declare-fun c!1033123 () Bool)

(declare-fun bm!455329 () Bool)

(assert (=> bm!455329 (= call!455336 (validRegex!7621 (ite c!1033123 (regOne!32283 (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))) (regOne!32282 (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))))))))

(declare-fun bm!455330 () Bool)

(declare-fun call!455335 () Bool)

(declare-fun call!455334 () Bool)

(assert (=> bm!455330 (= call!455335 call!455334)))

(declare-fun b!5830432 () Bool)

(assert (=> b!5830432 (= e!3577281 e!3577279)))

(assert (=> b!5830432 (= c!1033123 ((_ is Union!15885) (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))))))

(declare-fun b!5830433 () Bool)

(declare-fun res!2457396 () Bool)

(declare-fun e!3577285 () Bool)

(assert (=> b!5830433 (=> (not res!2457396) (not e!3577285))))

(assert (=> b!5830433 (= res!2457396 call!455336)))

(assert (=> b!5830433 (= e!3577279 e!3577285)))

(declare-fun b!5830434 () Bool)

(assert (=> b!5830434 (= e!3577285 call!455335)))

(declare-fun b!5830435 () Bool)

(assert (=> b!5830435 (= e!3577284 call!455335)))

(declare-fun b!5830436 () Bool)

(declare-fun e!3577280 () Bool)

(assert (=> b!5830436 (= e!3577280 call!455334)))

(declare-fun b!5830437 () Bool)

(assert (=> b!5830437 (= e!3577281 e!3577280)))

(declare-fun res!2457397 () Bool)

(assert (=> b!5830437 (= res!2457397 (not (nullable!5886 (reg!16214 (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))))))))

(assert (=> b!5830437 (=> (not res!2457397) (not e!3577280))))

(declare-fun bm!455331 () Bool)

(assert (=> bm!455331 (= call!455334 (validRegex!7621 (ite c!1033124 (reg!16214 (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))) (ite c!1033123 (regTwo!32283 (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292))) (regTwo!32282 (ite c!1032979 (regOne!32283 r!7292) (regOne!32282 r!7292)))))))))

(assert (= (and d!1833504 (not res!2457398)) b!5830431))

(assert (= (and b!5830431 c!1033124) b!5830437))

(assert (= (and b!5830431 (not c!1033124)) b!5830432))

(assert (= (and b!5830437 res!2457397) b!5830436))

(assert (= (and b!5830432 c!1033123) b!5830433))

(assert (= (and b!5830432 (not c!1033123)) b!5830429))

(assert (= (and b!5830433 res!2457396) b!5830434))

(assert (= (and b!5830429 (not res!2457395)) b!5830430))

(assert (= (and b!5830430 res!2457399) b!5830435))

(assert (= (or b!5830434 b!5830435) bm!455330))

(assert (= (or b!5830433 b!5830430) bm!455329))

(assert (= (or b!5830436 bm!455330) bm!455331))

(declare-fun m!6760414 () Bool)

(assert (=> bm!455329 m!6760414))

(declare-fun m!6760416 () Bool)

(assert (=> b!5830437 m!6760416))

(declare-fun m!6760420 () Bool)

(assert (=> bm!455331 m!6760420))

(assert (=> bm!455264 d!1833504))

(declare-fun d!1833506 () Bool)

(declare-fun res!2457403 () Bool)

(declare-fun e!3577289 () Bool)

(assert (=> d!1833506 (=> res!2457403 e!3577289)))

(assert (=> d!1833506 (= res!2457403 ((_ is ElementMatch!15885) lt!2302874))))

(assert (=> d!1833506 (= (validRegex!7621 lt!2302874) e!3577289)))

(declare-fun b!5830438 () Bool)

(declare-fun res!2457400 () Bool)

(declare-fun e!3577290 () Bool)

(assert (=> b!5830438 (=> res!2457400 e!3577290)))

(assert (=> b!5830438 (= res!2457400 (not ((_ is Concat!24730) lt!2302874)))))

(declare-fun e!3577286 () Bool)

(assert (=> b!5830438 (= e!3577286 e!3577290)))

(declare-fun b!5830439 () Bool)

(declare-fun e!3577291 () Bool)

(assert (=> b!5830439 (= e!3577290 e!3577291)))

(declare-fun res!2457404 () Bool)

(assert (=> b!5830439 (=> (not res!2457404) (not e!3577291))))

(declare-fun call!455339 () Bool)

(assert (=> b!5830439 (= res!2457404 call!455339)))

(declare-fun b!5830440 () Bool)

(declare-fun e!3577288 () Bool)

(assert (=> b!5830440 (= e!3577289 e!3577288)))

(declare-fun c!1033126 () Bool)

(assert (=> b!5830440 (= c!1033126 ((_ is Star!15885) lt!2302874))))

(declare-fun bm!455332 () Bool)

(declare-fun c!1033125 () Bool)

(assert (=> bm!455332 (= call!455339 (validRegex!7621 (ite c!1033125 (regOne!32283 lt!2302874) (regOne!32282 lt!2302874))))))

(declare-fun bm!455333 () Bool)

(declare-fun call!455338 () Bool)

(declare-fun call!455337 () Bool)

(assert (=> bm!455333 (= call!455338 call!455337)))

(declare-fun b!5830441 () Bool)

(assert (=> b!5830441 (= e!3577288 e!3577286)))

(assert (=> b!5830441 (= c!1033125 ((_ is Union!15885) lt!2302874))))

(declare-fun b!5830442 () Bool)

(declare-fun res!2457401 () Bool)

(declare-fun e!3577292 () Bool)

(assert (=> b!5830442 (=> (not res!2457401) (not e!3577292))))

(assert (=> b!5830442 (= res!2457401 call!455339)))

(assert (=> b!5830442 (= e!3577286 e!3577292)))

(declare-fun b!5830443 () Bool)

(assert (=> b!5830443 (= e!3577292 call!455338)))

(declare-fun b!5830444 () Bool)

(assert (=> b!5830444 (= e!3577291 call!455338)))

(declare-fun b!5830445 () Bool)

(declare-fun e!3577287 () Bool)

(assert (=> b!5830445 (= e!3577287 call!455337)))

(declare-fun b!5830446 () Bool)

(assert (=> b!5830446 (= e!3577288 e!3577287)))

(declare-fun res!2457402 () Bool)

(assert (=> b!5830446 (= res!2457402 (not (nullable!5886 (reg!16214 lt!2302874))))))

(assert (=> b!5830446 (=> (not res!2457402) (not e!3577287))))

(declare-fun bm!455334 () Bool)

(assert (=> bm!455334 (= call!455337 (validRegex!7621 (ite c!1033126 (reg!16214 lt!2302874) (ite c!1033125 (regTwo!32283 lt!2302874) (regTwo!32282 lt!2302874)))))))

(assert (= (and d!1833506 (not res!2457403)) b!5830440))

(assert (= (and b!5830440 c!1033126) b!5830446))

(assert (= (and b!5830440 (not c!1033126)) b!5830441))

(assert (= (and b!5830446 res!2457402) b!5830445))

(assert (= (and b!5830441 c!1033125) b!5830442))

(assert (= (and b!5830441 (not c!1033125)) b!5830438))

(assert (= (and b!5830442 res!2457401) b!5830443))

(assert (= (and b!5830438 (not res!2457400)) b!5830439))

(assert (= (and b!5830439 res!2457404) b!5830444))

(assert (= (or b!5830443 b!5830444) bm!455333))

(assert (= (or b!5830442 b!5830439) bm!455332))

(assert (= (or b!5830445 bm!455333) bm!455334))

(declare-fun m!6760422 () Bool)

(assert (=> bm!455332 m!6760422))

(declare-fun m!6760424 () Bool)

(assert (=> b!5830446 m!6760424))

(declare-fun m!6760426 () Bool)

(assert (=> bm!455334 m!6760426))

(assert (=> d!1833358 d!1833506))

(assert (=> d!1833358 d!1833334))

(assert (=> d!1833358 d!1833336))

(assert (=> b!5829867 d!1833480))

(declare-fun d!1833512 () Bool)

(assert (=> d!1833512 (= (head!12330 (exprs!5769 (h!70279 zl!343))) (h!70278 (exprs!5769 (h!70279 zl!343))))))

(assert (=> b!5829823 d!1833512))

(declare-fun bs!1374690 () Bool)

(declare-fun d!1833516 () Bool)

(assert (= bs!1374690 (and d!1833516 d!1833338)))

(declare-fun lambda!319026 () Int)

(assert (=> bs!1374690 (= lambda!319026 lambda!318982)))

(declare-fun bs!1374691 () Bool)

(assert (= bs!1374691 (and d!1833516 d!1833340)))

(assert (=> bs!1374691 (= lambda!319026 lambda!318983)))

(declare-fun bs!1374692 () Bool)

(assert (= bs!1374692 (and d!1833516 d!1833328)))

(assert (=> bs!1374692 (= lambda!319026 lambda!318975)))

(declare-fun bs!1374693 () Bool)

(assert (= bs!1374693 (and d!1833516 d!1833420)))

(assert (=> bs!1374693 (= lambda!319026 lambda!319018)))

(declare-fun bs!1374694 () Bool)

(assert (= bs!1374694 (and d!1833516 d!1833384)))

(assert (=> bs!1374694 (= lambda!319026 lambda!319013)))

(declare-fun bs!1374695 () Bool)

(assert (= bs!1374695 (and d!1833516 d!1833418)))

(assert (=> bs!1374695 (= lambda!319026 lambda!319017)))

(declare-fun bs!1374696 () Bool)

(assert (= bs!1374696 (and d!1833516 d!1833344)))

(assert (=> bs!1374696 (= lambda!319026 lambda!318986)))

(declare-fun bs!1374697 () Bool)

(assert (= bs!1374697 (and d!1833516 d!1833336)))

(assert (=> bs!1374697 (= lambda!319026 lambda!318981)))

(declare-fun bs!1374698 () Bool)

(assert (= bs!1374698 (and d!1833516 d!1833386)))

(assert (=> bs!1374698 (= lambda!319026 lambda!319014)))

(declare-fun bs!1374699 () Bool)

(assert (= bs!1374699 (and d!1833516 d!1833334)))

(assert (=> bs!1374699 (= lambda!319026 lambda!318978)))

(declare-fun b!5830447 () Bool)

(declare-fun e!3577298 () Regex!15885)

(declare-fun e!3577293 () Regex!15885)

(assert (=> b!5830447 (= e!3577298 e!3577293)))

(declare-fun c!1033130 () Bool)

(assert (=> b!5830447 (= c!1033130 ((_ is Cons!63830) (t!377309 (exprs!5769 (h!70279 zl!343)))))))

(declare-fun b!5830448 () Bool)

(declare-fun e!3577295 () Bool)

(declare-fun lt!2302902 () Regex!15885)

(assert (=> b!5830448 (= e!3577295 (isEmptyExpr!1323 lt!2302902))))

(declare-fun b!5830449 () Bool)

(assert (=> b!5830449 (= e!3577298 (h!70278 (t!377309 (exprs!5769 (h!70279 zl!343)))))))

(declare-fun b!5830451 () Bool)

(assert (=> b!5830451 (= e!3577293 (Concat!24730 (h!70278 (t!377309 (exprs!5769 (h!70279 zl!343)))) (generalisedConcat!1482 (t!377309 (t!377309 (exprs!5769 (h!70279 zl!343)))))))))

(declare-fun b!5830452 () Bool)

(declare-fun e!3577296 () Bool)

(assert (=> b!5830452 (= e!3577296 (isConcat!846 lt!2302902))))

(declare-fun b!5830453 () Bool)

(declare-fun e!3577294 () Bool)

(assert (=> b!5830453 (= e!3577294 (isEmpty!35697 (t!377309 (t!377309 (exprs!5769 (h!70279 zl!343))))))))

(declare-fun b!5830454 () Bool)

(declare-fun e!3577297 () Bool)

(assert (=> b!5830454 (= e!3577297 e!3577295)))

(declare-fun c!1033127 () Bool)

(assert (=> b!5830454 (= c!1033127 (isEmpty!35697 (t!377309 (exprs!5769 (h!70279 zl!343)))))))

(declare-fun b!5830455 () Bool)

(assert (=> b!5830455 (= e!3577295 e!3577296)))

(declare-fun c!1033128 () Bool)

(assert (=> b!5830455 (= c!1033128 (isEmpty!35697 (tail!11415 (t!377309 (exprs!5769 (h!70279 zl!343))))))))

(declare-fun b!5830456 () Bool)

(assert (=> b!5830456 (= e!3577293 EmptyExpr!15885)))

(declare-fun b!5830450 () Bool)

(assert (=> b!5830450 (= e!3577296 (= lt!2302902 (head!12330 (t!377309 (exprs!5769 (h!70279 zl!343))))))))

(assert (=> d!1833516 e!3577297))

(declare-fun res!2457406 () Bool)

(assert (=> d!1833516 (=> (not res!2457406) (not e!3577297))))

(assert (=> d!1833516 (= res!2457406 (validRegex!7621 lt!2302902))))

(assert (=> d!1833516 (= lt!2302902 e!3577298)))

(declare-fun c!1033129 () Bool)

(assert (=> d!1833516 (= c!1033129 e!3577294)))

(declare-fun res!2457405 () Bool)

(assert (=> d!1833516 (=> (not res!2457405) (not e!3577294))))

(assert (=> d!1833516 (= res!2457405 ((_ is Cons!63830) (t!377309 (exprs!5769 (h!70279 zl!343)))))))

(assert (=> d!1833516 (forall!14975 (t!377309 (exprs!5769 (h!70279 zl!343))) lambda!319026)))

(assert (=> d!1833516 (= (generalisedConcat!1482 (t!377309 (exprs!5769 (h!70279 zl!343)))) lt!2302902)))

(assert (= (and d!1833516 res!2457405) b!5830453))

(assert (= (and d!1833516 c!1033129) b!5830449))

(assert (= (and d!1833516 (not c!1033129)) b!5830447))

(assert (= (and b!5830447 c!1033130) b!5830451))

(assert (= (and b!5830447 (not c!1033130)) b!5830456))

(assert (= (and d!1833516 res!2457406) b!5830454))

(assert (= (and b!5830454 c!1033127) b!5830448))

(assert (= (and b!5830454 (not c!1033127)) b!5830455))

(assert (= (and b!5830455 c!1033128) b!5830450))

(assert (= (and b!5830455 (not c!1033128)) b!5830452))

(declare-fun m!6760430 () Bool)

(assert (=> b!5830450 m!6760430))

(declare-fun m!6760432 () Bool)

(assert (=> d!1833516 m!6760432))

(declare-fun m!6760434 () Bool)

(assert (=> d!1833516 m!6760434))

(declare-fun m!6760436 () Bool)

(assert (=> b!5830452 m!6760436))

(declare-fun m!6760438 () Bool)

(assert (=> b!5830448 m!6760438))

(declare-fun m!6760440 () Bool)

(assert (=> b!5830455 m!6760440))

(assert (=> b!5830455 m!6760440))

(declare-fun m!6760442 () Bool)

(assert (=> b!5830455 m!6760442))

(assert (=> b!5830454 m!6760082))

(declare-fun m!6760444 () Bool)

(assert (=> b!5830453 m!6760444))

(declare-fun m!6760446 () Bool)

(assert (=> b!5830451 m!6760446))

(assert (=> b!5829824 d!1833516))

(declare-fun d!1833520 () Bool)

(assert (=> d!1833520 (= (nullable!5886 r!7292) (nullableFct!1888 r!7292))))

(declare-fun bs!1374700 () Bool)

(assert (= bs!1374700 d!1833520))

(declare-fun m!6760448 () Bool)

(assert (=> bs!1374700 m!6760448))

(assert (=> b!5829864 d!1833520))

(declare-fun d!1833522 () Bool)

(assert (=> d!1833522 (= (isEmpty!35698 (tail!11417 s!2326)) ((_ is Nil!63832) (tail!11417 s!2326)))))

(assert (=> b!5829865 d!1833522))

(assert (=> b!5829865 d!1833482))

(assert (=> d!1833356 d!1833346))

(assert (=> d!1833356 d!1833352))

(declare-fun d!1833524 () Bool)

(assert (=> d!1833524 (= (matchR!8068 r!7292 s!2326) (matchRSpec!2986 r!7292 s!2326))))

(assert (=> d!1833524 true))

(declare-fun _$88!4174 () Unit!157041)

(assert (=> d!1833524 (= (choose!44289 r!7292 s!2326) _$88!4174)))

(declare-fun bs!1374701 () Bool)

(assert (= bs!1374701 d!1833524))

(assert (=> bs!1374701 m!6760002))

(assert (=> bs!1374701 m!6760004))

(assert (=> d!1833356 d!1833524))

(assert (=> d!1833356 d!1833342))

(declare-fun d!1833540 () Bool)

(assert (=> d!1833540 (= (isEmptyExpr!1323 lt!2302862) ((_ is EmptyExpr!15885) lt!2302862))))

(assert (=> b!5829821 d!1833540))

(assert (=> bm!455277 d!1833388))

(assert (=> b!5829866 d!1833522))

(assert (=> b!5829866 d!1833482))

(declare-fun e!3577320 () Bool)

(assert (=> b!5830011 (= tp!1610545 e!3577320)))

(declare-fun b!5830490 () Bool)

(assert (=> b!5830490 (= e!3577320 tp_is_empty!41023)))

(declare-fun b!5830493 () Bool)

(declare-fun tp!1610659 () Bool)

(declare-fun tp!1610661 () Bool)

(assert (=> b!5830493 (= e!3577320 (and tp!1610659 tp!1610661))))

(declare-fun b!5830492 () Bool)

(declare-fun tp!1610660 () Bool)

(assert (=> b!5830492 (= e!3577320 tp!1610660)))

(declare-fun b!5830491 () Bool)

(declare-fun tp!1610658 () Bool)

(declare-fun tp!1610657 () Bool)

(assert (=> b!5830491 (= e!3577320 (and tp!1610658 tp!1610657))))

(assert (= (and b!5830011 ((_ is ElementMatch!15885) (regOne!32282 (regTwo!32283 r!7292)))) b!5830490))

(assert (= (and b!5830011 ((_ is Concat!24730) (regOne!32282 (regTwo!32283 r!7292)))) b!5830491))

(assert (= (and b!5830011 ((_ is Star!15885) (regOne!32282 (regTwo!32283 r!7292)))) b!5830492))

(assert (= (and b!5830011 ((_ is Union!15885) (regOne!32282 (regTwo!32283 r!7292)))) b!5830493))

(declare-fun e!3577321 () Bool)

(assert (=> b!5830011 (= tp!1610544 e!3577321)))

(declare-fun b!5830494 () Bool)

(assert (=> b!5830494 (= e!3577321 tp_is_empty!41023)))

(declare-fun b!5830497 () Bool)

(declare-fun tp!1610664 () Bool)

(declare-fun tp!1610666 () Bool)

(assert (=> b!5830497 (= e!3577321 (and tp!1610664 tp!1610666))))

(declare-fun b!5830496 () Bool)

(declare-fun tp!1610665 () Bool)

(assert (=> b!5830496 (= e!3577321 tp!1610665)))

(declare-fun b!5830495 () Bool)

(declare-fun tp!1610663 () Bool)

(declare-fun tp!1610662 () Bool)

(assert (=> b!5830495 (= e!3577321 (and tp!1610663 tp!1610662))))

(assert (= (and b!5830011 ((_ is ElementMatch!15885) (regTwo!32282 (regTwo!32283 r!7292)))) b!5830494))

(assert (= (and b!5830011 ((_ is Concat!24730) (regTwo!32282 (regTwo!32283 r!7292)))) b!5830495))

(assert (= (and b!5830011 ((_ is Star!15885) (regTwo!32282 (regTwo!32283 r!7292)))) b!5830496))

(assert (= (and b!5830011 ((_ is Union!15885) (regTwo!32282 (regTwo!32283 r!7292)))) b!5830497))

(declare-fun e!3577322 () Bool)

(assert (=> b!5830012 (= tp!1610547 e!3577322)))

(declare-fun b!5830498 () Bool)

(assert (=> b!5830498 (= e!3577322 tp_is_empty!41023)))

(declare-fun b!5830501 () Bool)

(declare-fun tp!1610669 () Bool)

(declare-fun tp!1610671 () Bool)

(assert (=> b!5830501 (= e!3577322 (and tp!1610669 tp!1610671))))

(declare-fun b!5830500 () Bool)

(declare-fun tp!1610670 () Bool)

(assert (=> b!5830500 (= e!3577322 tp!1610670)))

(declare-fun b!5830499 () Bool)

(declare-fun tp!1610668 () Bool)

(declare-fun tp!1610667 () Bool)

(assert (=> b!5830499 (= e!3577322 (and tp!1610668 tp!1610667))))

(assert (= (and b!5830012 ((_ is ElementMatch!15885) (reg!16214 (regTwo!32283 r!7292)))) b!5830498))

(assert (= (and b!5830012 ((_ is Concat!24730) (reg!16214 (regTwo!32283 r!7292)))) b!5830499))

(assert (= (and b!5830012 ((_ is Star!15885) (reg!16214 (regTwo!32283 r!7292)))) b!5830500))

(assert (= (and b!5830012 ((_ is Union!15885) (reg!16214 (regTwo!32283 r!7292)))) b!5830501))

(declare-fun condSetEmpty!39437 () Bool)

(assert (=> setNonEmpty!39433 (= condSetEmpty!39437 (= setRest!39433 ((as const (Array Context!10538 Bool)) false)))))

(declare-fun setRes!39437 () Bool)

(assert (=> setNonEmpty!39433 (= tp!1610554 setRes!39437)))

(declare-fun setIsEmpty!39437 () Bool)

(assert (=> setIsEmpty!39437 setRes!39437))

(declare-fun tp!1610673 () Bool)

(declare-fun setNonEmpty!39437 () Bool)

(declare-fun e!3577323 () Bool)

(declare-fun setElem!39437 () Context!10538)

(assert (=> setNonEmpty!39437 (= setRes!39437 (and tp!1610673 (inv!82959 setElem!39437) e!3577323))))

(declare-fun setRest!39437 () (InoxSet Context!10538))

(assert (=> setNonEmpty!39437 (= setRest!39433 ((_ map or) (store ((as const (Array Context!10538 Bool)) false) setElem!39437 true) setRest!39437))))

(declare-fun b!5830502 () Bool)

(declare-fun tp!1610672 () Bool)

(assert (=> b!5830502 (= e!3577323 tp!1610672)))

(assert (= (and setNonEmpty!39433 condSetEmpty!39437) setIsEmpty!39437))

(assert (= (and setNonEmpty!39433 (not condSetEmpty!39437)) setNonEmpty!39437))

(assert (= setNonEmpty!39437 b!5830502))

(declare-fun m!6760482 () Bool)

(assert (=> setNonEmpty!39437 m!6760482))

(declare-fun e!3577324 () Bool)

(assert (=> b!5830013 (= tp!1610546 e!3577324)))

(declare-fun b!5830503 () Bool)

(assert (=> b!5830503 (= e!3577324 tp_is_empty!41023)))

(declare-fun b!5830506 () Bool)

(declare-fun tp!1610676 () Bool)

(declare-fun tp!1610678 () Bool)

(assert (=> b!5830506 (= e!3577324 (and tp!1610676 tp!1610678))))

(declare-fun b!5830505 () Bool)

(declare-fun tp!1610677 () Bool)

(assert (=> b!5830505 (= e!3577324 tp!1610677)))

(declare-fun b!5830504 () Bool)

(declare-fun tp!1610675 () Bool)

(declare-fun tp!1610674 () Bool)

(assert (=> b!5830504 (= e!3577324 (and tp!1610675 tp!1610674))))

(assert (= (and b!5830013 ((_ is ElementMatch!15885) (regOne!32283 (regTwo!32283 r!7292)))) b!5830503))

(assert (= (and b!5830013 ((_ is Concat!24730) (regOne!32283 (regTwo!32283 r!7292)))) b!5830504))

(assert (= (and b!5830013 ((_ is Star!15885) (regOne!32283 (regTwo!32283 r!7292)))) b!5830505))

(assert (= (and b!5830013 ((_ is Union!15885) (regOne!32283 (regTwo!32283 r!7292)))) b!5830506))

(declare-fun e!3577325 () Bool)

(assert (=> b!5830013 (= tp!1610548 e!3577325)))

(declare-fun b!5830507 () Bool)

(assert (=> b!5830507 (= e!3577325 tp_is_empty!41023)))

(declare-fun b!5830510 () Bool)

(declare-fun tp!1610681 () Bool)

(declare-fun tp!1610683 () Bool)

(assert (=> b!5830510 (= e!3577325 (and tp!1610681 tp!1610683))))

(declare-fun b!5830509 () Bool)

(declare-fun tp!1610682 () Bool)

(assert (=> b!5830509 (= e!3577325 tp!1610682)))

(declare-fun b!5830508 () Bool)

(declare-fun tp!1610680 () Bool)

(declare-fun tp!1610679 () Bool)

(assert (=> b!5830508 (= e!3577325 (and tp!1610680 tp!1610679))))

(assert (= (and b!5830013 ((_ is ElementMatch!15885) (regTwo!32283 (regTwo!32283 r!7292)))) b!5830507))

(assert (= (and b!5830013 ((_ is Concat!24730) (regTwo!32283 (regTwo!32283 r!7292)))) b!5830508))

(assert (= (and b!5830013 ((_ is Star!15885) (regTwo!32283 (regTwo!32283 r!7292)))) b!5830509))

(assert (= (and b!5830013 ((_ is Union!15885) (regTwo!32283 (regTwo!32283 r!7292)))) b!5830510))

(declare-fun e!3577326 () Bool)

(assert (=> b!5830045 (= tp!1610569 e!3577326)))

(declare-fun b!5830511 () Bool)

(assert (=> b!5830511 (= e!3577326 tp_is_empty!41023)))

(declare-fun b!5830514 () Bool)

(declare-fun tp!1610686 () Bool)

(declare-fun tp!1610688 () Bool)

(assert (=> b!5830514 (= e!3577326 (and tp!1610686 tp!1610688))))

(declare-fun b!5830513 () Bool)

(declare-fun tp!1610687 () Bool)

(assert (=> b!5830513 (= e!3577326 tp!1610687)))

(declare-fun b!5830512 () Bool)

(declare-fun tp!1610685 () Bool)

(declare-fun tp!1610684 () Bool)

(assert (=> b!5830512 (= e!3577326 (and tp!1610685 tp!1610684))))

(assert (= (and b!5830045 ((_ is ElementMatch!15885) (reg!16214 (regOne!32282 r!7292)))) b!5830511))

(assert (= (and b!5830045 ((_ is Concat!24730) (reg!16214 (regOne!32282 r!7292)))) b!5830512))

(assert (= (and b!5830045 ((_ is Star!15885) (reg!16214 (regOne!32282 r!7292)))) b!5830513))

(assert (= (and b!5830045 ((_ is Union!15885) (reg!16214 (regOne!32282 r!7292)))) b!5830514))

(declare-fun e!3577327 () Bool)

(assert (=> b!5830046 (= tp!1610568 e!3577327)))

(declare-fun b!5830515 () Bool)

(assert (=> b!5830515 (= e!3577327 tp_is_empty!41023)))

(declare-fun b!5830518 () Bool)

(declare-fun tp!1610691 () Bool)

(declare-fun tp!1610693 () Bool)

(assert (=> b!5830518 (= e!3577327 (and tp!1610691 tp!1610693))))

(declare-fun b!5830517 () Bool)

(declare-fun tp!1610692 () Bool)

(assert (=> b!5830517 (= e!3577327 tp!1610692)))

(declare-fun b!5830516 () Bool)

(declare-fun tp!1610690 () Bool)

(declare-fun tp!1610689 () Bool)

(assert (=> b!5830516 (= e!3577327 (and tp!1610690 tp!1610689))))

(assert (= (and b!5830046 ((_ is ElementMatch!15885) (regOne!32283 (regOne!32282 r!7292)))) b!5830515))

(assert (= (and b!5830046 ((_ is Concat!24730) (regOne!32283 (regOne!32282 r!7292)))) b!5830516))

(assert (= (and b!5830046 ((_ is Star!15885) (regOne!32283 (regOne!32282 r!7292)))) b!5830517))

(assert (= (and b!5830046 ((_ is Union!15885) (regOne!32283 (regOne!32282 r!7292)))) b!5830518))

(declare-fun e!3577328 () Bool)

(assert (=> b!5830046 (= tp!1610570 e!3577328)))

(declare-fun b!5830519 () Bool)

(assert (=> b!5830519 (= e!3577328 tp_is_empty!41023)))

(declare-fun b!5830522 () Bool)

(declare-fun tp!1610696 () Bool)

(declare-fun tp!1610698 () Bool)

(assert (=> b!5830522 (= e!3577328 (and tp!1610696 tp!1610698))))

(declare-fun b!5830521 () Bool)

(declare-fun tp!1610697 () Bool)

(assert (=> b!5830521 (= e!3577328 tp!1610697)))

(declare-fun b!5830520 () Bool)

(declare-fun tp!1610695 () Bool)

(declare-fun tp!1610694 () Bool)

(assert (=> b!5830520 (= e!3577328 (and tp!1610695 tp!1610694))))

(assert (= (and b!5830046 ((_ is ElementMatch!15885) (regTwo!32283 (regOne!32282 r!7292)))) b!5830519))

(assert (= (and b!5830046 ((_ is Concat!24730) (regTwo!32283 (regOne!32282 r!7292)))) b!5830520))

(assert (= (and b!5830046 ((_ is Star!15885) (regTwo!32283 (regOne!32282 r!7292)))) b!5830521))

(assert (= (and b!5830046 ((_ is Union!15885) (regTwo!32283 (regOne!32282 r!7292)))) b!5830522))

(declare-fun b!5830523 () Bool)

(declare-fun e!3577329 () Bool)

(declare-fun tp!1610699 () Bool)

(assert (=> b!5830523 (= e!3577329 (and tp_is_empty!41023 tp!1610699))))

(assert (=> b!5830064 (= tp!1610586 e!3577329)))

(assert (= (and b!5830064 ((_ is Cons!63832) (t!377311 (t!377311 s!2326)))) b!5830523))

(declare-fun e!3577330 () Bool)

(assert (=> b!5830009 (= tp!1610541 e!3577330)))

(declare-fun b!5830524 () Bool)

(assert (=> b!5830524 (= e!3577330 tp_is_empty!41023)))

(declare-fun b!5830527 () Bool)

(declare-fun tp!1610702 () Bool)

(declare-fun tp!1610704 () Bool)

(assert (=> b!5830527 (= e!3577330 (and tp!1610702 tp!1610704))))

(declare-fun b!5830526 () Bool)

(declare-fun tp!1610703 () Bool)

(assert (=> b!5830526 (= e!3577330 tp!1610703)))

(declare-fun b!5830525 () Bool)

(declare-fun tp!1610701 () Bool)

(declare-fun tp!1610700 () Bool)

(assert (=> b!5830525 (= e!3577330 (and tp!1610701 tp!1610700))))

(assert (= (and b!5830009 ((_ is ElementMatch!15885) (regOne!32283 (regOne!32283 r!7292)))) b!5830524))

(assert (= (and b!5830009 ((_ is Concat!24730) (regOne!32283 (regOne!32283 r!7292)))) b!5830525))

(assert (= (and b!5830009 ((_ is Star!15885) (regOne!32283 (regOne!32283 r!7292)))) b!5830526))

(assert (= (and b!5830009 ((_ is Union!15885) (regOne!32283 (regOne!32283 r!7292)))) b!5830527))

(declare-fun e!3577331 () Bool)

(assert (=> b!5830009 (= tp!1610543 e!3577331)))

(declare-fun b!5830528 () Bool)

(assert (=> b!5830528 (= e!3577331 tp_is_empty!41023)))

(declare-fun b!5830531 () Bool)

(declare-fun tp!1610707 () Bool)

(declare-fun tp!1610709 () Bool)

(assert (=> b!5830531 (= e!3577331 (and tp!1610707 tp!1610709))))

(declare-fun b!5830530 () Bool)

(declare-fun tp!1610708 () Bool)

(assert (=> b!5830530 (= e!3577331 tp!1610708)))

(declare-fun b!5830529 () Bool)

(declare-fun tp!1610706 () Bool)

(declare-fun tp!1610705 () Bool)

(assert (=> b!5830529 (= e!3577331 (and tp!1610706 tp!1610705))))

(assert (= (and b!5830009 ((_ is ElementMatch!15885) (regTwo!32283 (regOne!32283 r!7292)))) b!5830528))

(assert (= (and b!5830009 ((_ is Concat!24730) (regTwo!32283 (regOne!32283 r!7292)))) b!5830529))

(assert (= (and b!5830009 ((_ is Star!15885) (regTwo!32283 (regOne!32283 r!7292)))) b!5830530))

(assert (= (and b!5830009 ((_ is Union!15885) (regTwo!32283 (regOne!32283 r!7292)))) b!5830531))

(declare-fun e!3577332 () Bool)

(assert (=> b!5830044 (= tp!1610567 e!3577332)))

(declare-fun b!5830532 () Bool)

(assert (=> b!5830532 (= e!3577332 tp_is_empty!41023)))

(declare-fun b!5830535 () Bool)

(declare-fun tp!1610712 () Bool)

(declare-fun tp!1610714 () Bool)

(assert (=> b!5830535 (= e!3577332 (and tp!1610712 tp!1610714))))

(declare-fun b!5830534 () Bool)

(declare-fun tp!1610713 () Bool)

(assert (=> b!5830534 (= e!3577332 tp!1610713)))

(declare-fun b!5830533 () Bool)

(declare-fun tp!1610711 () Bool)

(declare-fun tp!1610710 () Bool)

(assert (=> b!5830533 (= e!3577332 (and tp!1610711 tp!1610710))))

(assert (= (and b!5830044 ((_ is ElementMatch!15885) (regOne!32282 (regOne!32282 r!7292)))) b!5830532))

(assert (= (and b!5830044 ((_ is Concat!24730) (regOne!32282 (regOne!32282 r!7292)))) b!5830533))

(assert (= (and b!5830044 ((_ is Star!15885) (regOne!32282 (regOne!32282 r!7292)))) b!5830534))

(assert (= (and b!5830044 ((_ is Union!15885) (regOne!32282 (regOne!32282 r!7292)))) b!5830535))

(declare-fun e!3577333 () Bool)

(assert (=> b!5830044 (= tp!1610566 e!3577333)))

(declare-fun b!5830536 () Bool)

(assert (=> b!5830536 (= e!3577333 tp_is_empty!41023)))

(declare-fun b!5830539 () Bool)

(declare-fun tp!1610717 () Bool)

(declare-fun tp!1610719 () Bool)

(assert (=> b!5830539 (= e!3577333 (and tp!1610717 tp!1610719))))

(declare-fun b!5830538 () Bool)

(declare-fun tp!1610718 () Bool)

(assert (=> b!5830538 (= e!3577333 tp!1610718)))

(declare-fun b!5830537 () Bool)

(declare-fun tp!1610716 () Bool)

(declare-fun tp!1610715 () Bool)

(assert (=> b!5830537 (= e!3577333 (and tp!1610716 tp!1610715))))

(assert (= (and b!5830044 ((_ is ElementMatch!15885) (regTwo!32282 (regOne!32282 r!7292)))) b!5830536))

(assert (= (and b!5830044 ((_ is Concat!24730) (regTwo!32282 (regOne!32282 r!7292)))) b!5830537))

(assert (= (and b!5830044 ((_ is Star!15885) (regTwo!32282 (regOne!32282 r!7292)))) b!5830538))

(assert (= (and b!5830044 ((_ is Union!15885) (regTwo!32282 (regOne!32282 r!7292)))) b!5830539))

(declare-fun e!3577334 () Bool)

(assert (=> b!5830007 (= tp!1610540 e!3577334)))

(declare-fun b!5830540 () Bool)

(assert (=> b!5830540 (= e!3577334 tp_is_empty!41023)))

(declare-fun b!5830543 () Bool)

(declare-fun tp!1610722 () Bool)

(declare-fun tp!1610724 () Bool)

(assert (=> b!5830543 (= e!3577334 (and tp!1610722 tp!1610724))))

(declare-fun b!5830542 () Bool)

(declare-fun tp!1610723 () Bool)

(assert (=> b!5830542 (= e!3577334 tp!1610723)))

(declare-fun b!5830541 () Bool)

(declare-fun tp!1610721 () Bool)

(declare-fun tp!1610720 () Bool)

(assert (=> b!5830541 (= e!3577334 (and tp!1610721 tp!1610720))))

(assert (= (and b!5830007 ((_ is ElementMatch!15885) (regOne!32282 (regOne!32283 r!7292)))) b!5830540))

(assert (= (and b!5830007 ((_ is Concat!24730) (regOne!32282 (regOne!32283 r!7292)))) b!5830541))

(assert (= (and b!5830007 ((_ is Star!15885) (regOne!32282 (regOne!32283 r!7292)))) b!5830542))

(assert (= (and b!5830007 ((_ is Union!15885) (regOne!32282 (regOne!32283 r!7292)))) b!5830543))

(declare-fun e!3577335 () Bool)

(assert (=> b!5830007 (= tp!1610539 e!3577335)))

(declare-fun b!5830544 () Bool)

(assert (=> b!5830544 (= e!3577335 tp_is_empty!41023)))

(declare-fun b!5830547 () Bool)

(declare-fun tp!1610727 () Bool)

(declare-fun tp!1610729 () Bool)

(assert (=> b!5830547 (= e!3577335 (and tp!1610727 tp!1610729))))

(declare-fun b!5830546 () Bool)

(declare-fun tp!1610728 () Bool)

(assert (=> b!5830546 (= e!3577335 tp!1610728)))

(declare-fun b!5830545 () Bool)

(declare-fun tp!1610726 () Bool)

(declare-fun tp!1610725 () Bool)

(assert (=> b!5830545 (= e!3577335 (and tp!1610726 tp!1610725))))

(assert (= (and b!5830007 ((_ is ElementMatch!15885) (regTwo!32282 (regOne!32283 r!7292)))) b!5830544))

(assert (= (and b!5830007 ((_ is Concat!24730) (regTwo!32282 (regOne!32283 r!7292)))) b!5830545))

(assert (= (and b!5830007 ((_ is Star!15885) (regTwo!32282 (regOne!32283 r!7292)))) b!5830546))

(assert (= (and b!5830007 ((_ is Union!15885) (regTwo!32282 (regOne!32283 r!7292)))) b!5830547))

(declare-fun b!5830549 () Bool)

(declare-fun e!3577337 () Bool)

(declare-fun tp!1610730 () Bool)

(assert (=> b!5830549 (= e!3577337 tp!1610730)))

(declare-fun b!5830548 () Bool)

(declare-fun tp!1610731 () Bool)

(declare-fun e!3577336 () Bool)

(assert (=> b!5830548 (= e!3577336 (and (inv!82959 (h!70279 (t!377310 (t!377310 zl!343)))) e!3577337 tp!1610731))))

(assert (=> b!5830057 (= tp!1610581 e!3577336)))

(assert (= b!5830548 b!5830549))

(assert (= (and b!5830057 ((_ is Cons!63831) (t!377310 (t!377310 zl!343)))) b!5830548))

(declare-fun m!6760484 () Bool)

(assert (=> b!5830548 m!6760484))

(declare-fun e!3577338 () Bool)

(assert (=> b!5830008 (= tp!1610542 e!3577338)))

(declare-fun b!5830550 () Bool)

(assert (=> b!5830550 (= e!3577338 tp_is_empty!41023)))

(declare-fun b!5830553 () Bool)

(declare-fun tp!1610734 () Bool)

(declare-fun tp!1610736 () Bool)

(assert (=> b!5830553 (= e!3577338 (and tp!1610734 tp!1610736))))

(declare-fun b!5830552 () Bool)

(declare-fun tp!1610735 () Bool)

(assert (=> b!5830552 (= e!3577338 tp!1610735)))

(declare-fun b!5830551 () Bool)

(declare-fun tp!1610733 () Bool)

(declare-fun tp!1610732 () Bool)

(assert (=> b!5830551 (= e!3577338 (and tp!1610733 tp!1610732))))

(assert (= (and b!5830008 ((_ is ElementMatch!15885) (reg!16214 (regOne!32283 r!7292)))) b!5830550))

(assert (= (and b!5830008 ((_ is Concat!24730) (reg!16214 (regOne!32283 r!7292)))) b!5830551))

(assert (= (and b!5830008 ((_ is Star!15885) (reg!16214 (regOne!32283 r!7292)))) b!5830552))

(assert (= (and b!5830008 ((_ is Union!15885) (reg!16214 (regOne!32283 r!7292)))) b!5830553))

(declare-fun b!5830554 () Bool)

(declare-fun e!3577339 () Bool)

(declare-fun tp!1610737 () Bool)

(declare-fun tp!1610738 () Bool)

(assert (=> b!5830554 (= e!3577339 (and tp!1610737 tp!1610738))))

(assert (=> b!5830058 (= tp!1610580 e!3577339)))

(assert (= (and b!5830058 ((_ is Cons!63830) (exprs!5769 (h!70279 (t!377310 zl!343))))) b!5830554))

(declare-fun e!3577340 () Bool)

(assert (=> b!5830036 (= tp!1610559 e!3577340)))

(declare-fun b!5830555 () Bool)

(assert (=> b!5830555 (= e!3577340 tp_is_empty!41023)))

(declare-fun b!5830558 () Bool)

(declare-fun tp!1610741 () Bool)

(declare-fun tp!1610743 () Bool)

(assert (=> b!5830558 (= e!3577340 (and tp!1610741 tp!1610743))))

(declare-fun b!5830557 () Bool)

(declare-fun tp!1610742 () Bool)

(assert (=> b!5830557 (= e!3577340 tp!1610742)))

(declare-fun b!5830556 () Bool)

(declare-fun tp!1610740 () Bool)

(declare-fun tp!1610739 () Bool)

(assert (=> b!5830556 (= e!3577340 (and tp!1610740 tp!1610739))))

(assert (= (and b!5830036 ((_ is ElementMatch!15885) (h!70278 (exprs!5769 setElem!39430)))) b!5830555))

(assert (= (and b!5830036 ((_ is Concat!24730) (h!70278 (exprs!5769 setElem!39430)))) b!5830556))

(assert (= (and b!5830036 ((_ is Star!15885) (h!70278 (exprs!5769 setElem!39430)))) b!5830557))

(assert (= (and b!5830036 ((_ is Union!15885) (h!70278 (exprs!5769 setElem!39430)))) b!5830558))

(declare-fun b!5830559 () Bool)

(declare-fun e!3577341 () Bool)

(declare-fun tp!1610744 () Bool)

(declare-fun tp!1610745 () Bool)

(assert (=> b!5830559 (= e!3577341 (and tp!1610744 tp!1610745))))

(assert (=> b!5830036 (= tp!1610560 e!3577341)))

(assert (= (and b!5830036 ((_ is Cons!63830) (t!377309 (exprs!5769 setElem!39430)))) b!5830559))

(declare-fun e!3577342 () Bool)

(assert (=> b!5830040 (= tp!1610562 e!3577342)))

(declare-fun b!5830560 () Bool)

(assert (=> b!5830560 (= e!3577342 tp_is_empty!41023)))

(declare-fun b!5830563 () Bool)

(declare-fun tp!1610748 () Bool)

(declare-fun tp!1610750 () Bool)

(assert (=> b!5830563 (= e!3577342 (and tp!1610748 tp!1610750))))

(declare-fun b!5830562 () Bool)

(declare-fun tp!1610749 () Bool)

(assert (=> b!5830562 (= e!3577342 tp!1610749)))

(declare-fun b!5830561 () Bool)

(declare-fun tp!1610747 () Bool)

(declare-fun tp!1610746 () Bool)

(assert (=> b!5830561 (= e!3577342 (and tp!1610747 tp!1610746))))

(assert (= (and b!5830040 ((_ is ElementMatch!15885) (regOne!32282 (reg!16214 r!7292)))) b!5830560))

(assert (= (and b!5830040 ((_ is Concat!24730) (regOne!32282 (reg!16214 r!7292)))) b!5830561))

(assert (= (and b!5830040 ((_ is Star!15885) (regOne!32282 (reg!16214 r!7292)))) b!5830562))

(assert (= (and b!5830040 ((_ is Union!15885) (regOne!32282 (reg!16214 r!7292)))) b!5830563))

(declare-fun e!3577343 () Bool)

(assert (=> b!5830040 (= tp!1610561 e!3577343)))

(declare-fun b!5830564 () Bool)

(assert (=> b!5830564 (= e!3577343 tp_is_empty!41023)))

(declare-fun b!5830567 () Bool)

(declare-fun tp!1610753 () Bool)

(declare-fun tp!1610755 () Bool)

(assert (=> b!5830567 (= e!3577343 (and tp!1610753 tp!1610755))))

(declare-fun b!5830566 () Bool)

(declare-fun tp!1610754 () Bool)

(assert (=> b!5830566 (= e!3577343 tp!1610754)))

(declare-fun b!5830565 () Bool)

(declare-fun tp!1610752 () Bool)

(declare-fun tp!1610751 () Bool)

(assert (=> b!5830565 (= e!3577343 (and tp!1610752 tp!1610751))))

(assert (= (and b!5830040 ((_ is ElementMatch!15885) (regTwo!32282 (reg!16214 r!7292)))) b!5830564))

(assert (= (and b!5830040 ((_ is Concat!24730) (regTwo!32282 (reg!16214 r!7292)))) b!5830565))

(assert (= (and b!5830040 ((_ is Star!15885) (regTwo!32282 (reg!16214 r!7292)))) b!5830566))

(assert (= (and b!5830040 ((_ is Union!15885) (regTwo!32282 (reg!16214 r!7292)))) b!5830567))

(declare-fun e!3577344 () Bool)

(assert (=> b!5830049 (= tp!1610574 e!3577344)))

(declare-fun b!5830568 () Bool)

(assert (=> b!5830568 (= e!3577344 tp_is_empty!41023)))

(declare-fun b!5830571 () Bool)

(declare-fun tp!1610758 () Bool)

(declare-fun tp!1610760 () Bool)

(assert (=> b!5830571 (= e!3577344 (and tp!1610758 tp!1610760))))

(declare-fun b!5830570 () Bool)

(declare-fun tp!1610759 () Bool)

(assert (=> b!5830570 (= e!3577344 tp!1610759)))

(declare-fun b!5830569 () Bool)

(declare-fun tp!1610757 () Bool)

(declare-fun tp!1610756 () Bool)

(assert (=> b!5830569 (= e!3577344 (and tp!1610757 tp!1610756))))

(assert (= (and b!5830049 ((_ is ElementMatch!15885) (reg!16214 (regTwo!32282 r!7292)))) b!5830568))

(assert (= (and b!5830049 ((_ is Concat!24730) (reg!16214 (regTwo!32282 r!7292)))) b!5830569))

(assert (= (and b!5830049 ((_ is Star!15885) (reg!16214 (regTwo!32282 r!7292)))) b!5830570))

(assert (= (and b!5830049 ((_ is Union!15885) (reg!16214 (regTwo!32282 r!7292)))) b!5830571))

(declare-fun e!3577345 () Bool)

(assert (=> b!5830041 (= tp!1610564 e!3577345)))

(declare-fun b!5830572 () Bool)

(assert (=> b!5830572 (= e!3577345 tp_is_empty!41023)))

(declare-fun b!5830575 () Bool)

(declare-fun tp!1610763 () Bool)

(declare-fun tp!1610765 () Bool)

(assert (=> b!5830575 (= e!3577345 (and tp!1610763 tp!1610765))))

(declare-fun b!5830574 () Bool)

(declare-fun tp!1610764 () Bool)

(assert (=> b!5830574 (= e!3577345 tp!1610764)))

(declare-fun b!5830573 () Bool)

(declare-fun tp!1610762 () Bool)

(declare-fun tp!1610761 () Bool)

(assert (=> b!5830573 (= e!3577345 (and tp!1610762 tp!1610761))))

(assert (= (and b!5830041 ((_ is ElementMatch!15885) (reg!16214 (reg!16214 r!7292)))) b!5830572))

(assert (= (and b!5830041 ((_ is Concat!24730) (reg!16214 (reg!16214 r!7292)))) b!5830573))

(assert (= (and b!5830041 ((_ is Star!15885) (reg!16214 (reg!16214 r!7292)))) b!5830574))

(assert (= (and b!5830041 ((_ is Union!15885) (reg!16214 (reg!16214 r!7292)))) b!5830575))

(declare-fun e!3577346 () Bool)

(assert (=> b!5830050 (= tp!1610573 e!3577346)))

(declare-fun b!5830576 () Bool)

(assert (=> b!5830576 (= e!3577346 tp_is_empty!41023)))

(declare-fun b!5830579 () Bool)

(declare-fun tp!1610768 () Bool)

(declare-fun tp!1610770 () Bool)

(assert (=> b!5830579 (= e!3577346 (and tp!1610768 tp!1610770))))

(declare-fun b!5830578 () Bool)

(declare-fun tp!1610769 () Bool)

(assert (=> b!5830578 (= e!3577346 tp!1610769)))

(declare-fun b!5830577 () Bool)

(declare-fun tp!1610767 () Bool)

(declare-fun tp!1610766 () Bool)

(assert (=> b!5830577 (= e!3577346 (and tp!1610767 tp!1610766))))

(assert (= (and b!5830050 ((_ is ElementMatch!15885) (regOne!32283 (regTwo!32282 r!7292)))) b!5830576))

(assert (= (and b!5830050 ((_ is Concat!24730) (regOne!32283 (regTwo!32282 r!7292)))) b!5830577))

(assert (= (and b!5830050 ((_ is Star!15885) (regOne!32283 (regTwo!32282 r!7292)))) b!5830578))

(assert (= (and b!5830050 ((_ is Union!15885) (regOne!32283 (regTwo!32282 r!7292)))) b!5830579))

(declare-fun e!3577347 () Bool)

(assert (=> b!5830050 (= tp!1610575 e!3577347)))

(declare-fun b!5830580 () Bool)

(assert (=> b!5830580 (= e!3577347 tp_is_empty!41023)))

(declare-fun b!5830583 () Bool)

(declare-fun tp!1610773 () Bool)

(declare-fun tp!1610775 () Bool)

(assert (=> b!5830583 (= e!3577347 (and tp!1610773 tp!1610775))))

(declare-fun b!5830582 () Bool)

(declare-fun tp!1610774 () Bool)

(assert (=> b!5830582 (= e!3577347 tp!1610774)))

(declare-fun b!5830581 () Bool)

(declare-fun tp!1610772 () Bool)

(declare-fun tp!1610771 () Bool)

(assert (=> b!5830581 (= e!3577347 (and tp!1610772 tp!1610771))))

(assert (= (and b!5830050 ((_ is ElementMatch!15885) (regTwo!32283 (regTwo!32282 r!7292)))) b!5830580))

(assert (= (and b!5830050 ((_ is Concat!24730) (regTwo!32283 (regTwo!32282 r!7292)))) b!5830581))

(assert (= (and b!5830050 ((_ is Star!15885) (regTwo!32283 (regTwo!32282 r!7292)))) b!5830582))

(assert (= (and b!5830050 ((_ is Union!15885) (regTwo!32283 (regTwo!32282 r!7292)))) b!5830583))

(declare-fun e!3577348 () Bool)

(assert (=> b!5830042 (= tp!1610563 e!3577348)))

(declare-fun b!5830584 () Bool)

(assert (=> b!5830584 (= e!3577348 tp_is_empty!41023)))

(declare-fun b!5830587 () Bool)

(declare-fun tp!1610778 () Bool)

(declare-fun tp!1610780 () Bool)

(assert (=> b!5830587 (= e!3577348 (and tp!1610778 tp!1610780))))

(declare-fun b!5830586 () Bool)

(declare-fun tp!1610779 () Bool)

(assert (=> b!5830586 (= e!3577348 tp!1610779)))

(declare-fun b!5830585 () Bool)

(declare-fun tp!1610777 () Bool)

(declare-fun tp!1610776 () Bool)

(assert (=> b!5830585 (= e!3577348 (and tp!1610777 tp!1610776))))

(assert (= (and b!5830042 ((_ is ElementMatch!15885) (regOne!32283 (reg!16214 r!7292)))) b!5830584))

(assert (= (and b!5830042 ((_ is Concat!24730) (regOne!32283 (reg!16214 r!7292)))) b!5830585))

(assert (= (and b!5830042 ((_ is Star!15885) (regOne!32283 (reg!16214 r!7292)))) b!5830586))

(assert (= (and b!5830042 ((_ is Union!15885) (regOne!32283 (reg!16214 r!7292)))) b!5830587))

(declare-fun e!3577349 () Bool)

(assert (=> b!5830042 (= tp!1610565 e!3577349)))

(declare-fun b!5830588 () Bool)

(assert (=> b!5830588 (= e!3577349 tp_is_empty!41023)))

(declare-fun b!5830591 () Bool)

(declare-fun tp!1610783 () Bool)

(declare-fun tp!1610785 () Bool)

(assert (=> b!5830591 (= e!3577349 (and tp!1610783 tp!1610785))))

(declare-fun b!5830590 () Bool)

(declare-fun tp!1610784 () Bool)

(assert (=> b!5830590 (= e!3577349 tp!1610784)))

(declare-fun b!5830589 () Bool)

(declare-fun tp!1610782 () Bool)

(declare-fun tp!1610781 () Bool)

(assert (=> b!5830589 (= e!3577349 (and tp!1610782 tp!1610781))))

(assert (= (and b!5830042 ((_ is ElementMatch!15885) (regTwo!32283 (reg!16214 r!7292)))) b!5830588))

(assert (= (and b!5830042 ((_ is Concat!24730) (regTwo!32283 (reg!16214 r!7292)))) b!5830589))

(assert (= (and b!5830042 ((_ is Star!15885) (regTwo!32283 (reg!16214 r!7292)))) b!5830590))

(assert (= (and b!5830042 ((_ is Union!15885) (regTwo!32283 (reg!16214 r!7292)))) b!5830591))

(declare-fun b!5830592 () Bool)

(declare-fun e!3577350 () Bool)

(declare-fun tp!1610786 () Bool)

(declare-fun tp!1610787 () Bool)

(assert (=> b!5830592 (= e!3577350 (and tp!1610786 tp!1610787))))

(assert (=> b!5830029 (= tp!1610553 e!3577350)))

(assert (= (and b!5830029 ((_ is Cons!63830) (exprs!5769 setElem!39433))) b!5830592))

(declare-fun e!3577351 () Bool)

(assert (=> b!5830059 (= tp!1610582 e!3577351)))

(declare-fun b!5830595 () Bool)

(assert (=> b!5830595 (= e!3577351 tp_is_empty!41023)))

(declare-fun b!5830598 () Bool)

(declare-fun tp!1610790 () Bool)

(declare-fun tp!1610792 () Bool)

(assert (=> b!5830598 (= e!3577351 (and tp!1610790 tp!1610792))))

(declare-fun b!5830597 () Bool)

(declare-fun tp!1610791 () Bool)

(assert (=> b!5830597 (= e!3577351 tp!1610791)))

(declare-fun b!5830596 () Bool)

(declare-fun tp!1610789 () Bool)

(declare-fun tp!1610788 () Bool)

(assert (=> b!5830596 (= e!3577351 (and tp!1610789 tp!1610788))))

(assert (= (and b!5830059 ((_ is ElementMatch!15885) (h!70278 (exprs!5769 (h!70279 zl!343))))) b!5830595))

(assert (= (and b!5830059 ((_ is Concat!24730) (h!70278 (exprs!5769 (h!70279 zl!343))))) b!5830596))

(assert (= (and b!5830059 ((_ is Star!15885) (h!70278 (exprs!5769 (h!70279 zl!343))))) b!5830597))

(assert (= (and b!5830059 ((_ is Union!15885) (h!70278 (exprs!5769 (h!70279 zl!343))))) b!5830598))

(declare-fun b!5830605 () Bool)

(declare-fun e!3577356 () Bool)

(declare-fun tp!1610793 () Bool)

(declare-fun tp!1610794 () Bool)

(assert (=> b!5830605 (= e!3577356 (and tp!1610793 tp!1610794))))

(assert (=> b!5830059 (= tp!1610583 e!3577356)))

(assert (= (and b!5830059 ((_ is Cons!63830) (t!377309 (exprs!5769 (h!70279 zl!343))))) b!5830605))

(declare-fun e!3577359 () Bool)

(assert (=> b!5830048 (= tp!1610572 e!3577359)))

(declare-fun b!5830614 () Bool)

(assert (=> b!5830614 (= e!3577359 tp_is_empty!41023)))

(declare-fun b!5830617 () Bool)

(declare-fun tp!1610797 () Bool)

(declare-fun tp!1610799 () Bool)

(assert (=> b!5830617 (= e!3577359 (and tp!1610797 tp!1610799))))

(declare-fun b!5830616 () Bool)

(declare-fun tp!1610798 () Bool)

(assert (=> b!5830616 (= e!3577359 tp!1610798)))

(declare-fun b!5830615 () Bool)

(declare-fun tp!1610796 () Bool)

(declare-fun tp!1610795 () Bool)

(assert (=> b!5830615 (= e!3577359 (and tp!1610796 tp!1610795))))

(assert (= (and b!5830048 ((_ is ElementMatch!15885) (regOne!32282 (regTwo!32282 r!7292)))) b!5830614))

(assert (= (and b!5830048 ((_ is Concat!24730) (regOne!32282 (regTwo!32282 r!7292)))) b!5830615))

(assert (= (and b!5830048 ((_ is Star!15885) (regOne!32282 (regTwo!32282 r!7292)))) b!5830616))

(assert (= (and b!5830048 ((_ is Union!15885) (regOne!32282 (regTwo!32282 r!7292)))) b!5830617))

(declare-fun e!3577364 () Bool)

(assert (=> b!5830048 (= tp!1610571 e!3577364)))

(declare-fun b!5830622 () Bool)

(assert (=> b!5830622 (= e!3577364 tp_is_empty!41023)))

(declare-fun b!5830625 () Bool)

(declare-fun tp!1610802 () Bool)

(declare-fun tp!1610804 () Bool)

(assert (=> b!5830625 (= e!3577364 (and tp!1610802 tp!1610804))))

(declare-fun b!5830624 () Bool)

(declare-fun tp!1610803 () Bool)

(assert (=> b!5830624 (= e!3577364 tp!1610803)))

(declare-fun b!5830623 () Bool)

(declare-fun tp!1610801 () Bool)

(declare-fun tp!1610800 () Bool)

(assert (=> b!5830623 (= e!3577364 (and tp!1610801 tp!1610800))))

(assert (= (and b!5830048 ((_ is ElementMatch!15885) (regTwo!32282 (regTwo!32282 r!7292)))) b!5830622))

(assert (= (and b!5830048 ((_ is Concat!24730) (regTwo!32282 (regTwo!32282 r!7292)))) b!5830623))

(assert (= (and b!5830048 ((_ is Star!15885) (regTwo!32282 (regTwo!32282 r!7292)))) b!5830624))

(assert (= (and b!5830048 ((_ is Union!15885) (regTwo!32282 (regTwo!32282 r!7292)))) b!5830625))

(declare-fun b_lambda!219721 () Bool)

(assert (= b_lambda!219701 (or d!1833344 b_lambda!219721)))

(declare-fun bs!1374702 () Bool)

(declare-fun d!1833544 () Bool)

(assert (= bs!1374702 (and d!1833544 d!1833344)))

(assert (=> bs!1374702 (= (dynLambda!24971 lambda!318986 (h!70278 (exprs!5769 (h!70279 zl!343)))) (validRegex!7621 (h!70278 (exprs!5769 (h!70279 zl!343)))))))

(declare-fun m!6760486 () Bool)

(assert (=> bs!1374702 m!6760486))

(assert (=> b!5830228 d!1833544))

(declare-fun b_lambda!219723 () Bool)

(assert (= b_lambda!219703 (or d!1833336 b_lambda!219723)))

(declare-fun bs!1374703 () Bool)

(declare-fun d!1833546 () Bool)

(assert (= bs!1374703 (and d!1833546 d!1833336)))

(assert (=> bs!1374703 (= (dynLambda!24971 lambda!318981 (h!70278 lt!2302859)) (validRegex!7621 (h!70278 lt!2302859)))))

(declare-fun m!6760488 () Bool)

(assert (=> bs!1374703 m!6760488))

(assert (=> b!5830230 d!1833546))

(declare-fun b_lambda!219725 () Bool)

(assert (= b_lambda!219711 (or d!1833334 b_lambda!219725)))

(declare-fun bs!1374704 () Bool)

(declare-fun d!1833548 () Bool)

(assert (= bs!1374704 (and d!1833548 d!1833334)))

(assert (=> bs!1374704 (= (dynLambda!24971 lambda!318978 (h!70278 (unfocusZipperList!1306 zl!343))) (validRegex!7621 (h!70278 (unfocusZipperList!1306 zl!343))))))

(declare-fun m!6760490 () Bool)

(assert (=> bs!1374704 m!6760490))

(assert (=> b!5830300 d!1833548))

(declare-fun b_lambda!219727 () Bool)

(assert (= b_lambda!219707 (or d!1833338 b_lambda!219727)))

(declare-fun bs!1374705 () Bool)

(declare-fun d!1833550 () Bool)

(assert (= bs!1374705 (and d!1833550 d!1833338)))

(assert (=> bs!1374705 (= (dynLambda!24971 lambda!318982 (h!70278 (exprs!5769 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830))))) (validRegex!7621 (h!70278 (exprs!5769 (Context!10539 (Cons!63830 (ElementMatch!15885 (c!1032959 r!7292)) Nil!63830))))))))

(declare-fun m!6760492 () Bool)

(assert (=> bs!1374705 m!6760492))

(assert (=> b!5830262 d!1833550))

(declare-fun b_lambda!219729 () Bool)

(assert (= b_lambda!219705 (or d!1833340 b_lambda!219729)))

(declare-fun bs!1374706 () Bool)

(declare-fun d!1833552 () Bool)

(assert (= bs!1374706 (and d!1833552 d!1833340)))

(assert (=> bs!1374706 (= (dynLambda!24971 lambda!318983 (h!70278 (exprs!5769 (h!70279 zl!343)))) (validRegex!7621 (h!70278 (exprs!5769 (h!70279 zl!343)))))))

(assert (=> bs!1374706 m!6760486))

(assert (=> b!5830234 d!1833552))

(declare-fun b_lambda!219731 () Bool)

(assert (= b_lambda!219709 (or d!1833328 b_lambda!219731)))

(declare-fun bs!1374707 () Bool)

(declare-fun d!1833554 () Bool)

(assert (= bs!1374707 (and d!1833554 d!1833328)))

(assert (=> bs!1374707 (= (dynLambda!24971 lambda!318975 (h!70278 (exprs!5769 setElem!39430))) (validRegex!7621 (h!70278 (exprs!5769 setElem!39430))))))

(declare-fun m!6760494 () Bool)

(assert (=> bs!1374707 m!6760494))

(assert (=> b!5830289 d!1833554))

(check-sat (not bm!455301) (not b_lambda!219729) (not b!5830518) (not b!5830553) (not b!5830223) (not bm!455334) (not b!5830578) (not bm!455299) (not b!5830577) (not bs!1374707) (not bm!455331) (not b!5830548) (not b!5830527) (not b!5830625) (not b!5830402) (not bm!455332) (not b!5830529) (not b!5830505) (not b!5830531) (not b!5830286) (not b!5830605) (not b!5830587) (not b!5830558) (not b!5830538) (not b_lambda!219723) (not b!5830581) (not b!5830513) (not b!5830517) (not b!5830516) (not setNonEmpty!39437) (not b!5830231) (not b!5830545) (not bm!455318) (not b!5830546) (not b!5830549) (not b!5830454) (not b!5830530) (not bm!455304) (not b!5830573) (not b!5830446) (not b!5830535) (not b!5830534) (not b_lambda!219721) (not bm!455324) (not bm!455297) (not d!1833386) (not b!5830493) (not bm!455305) (not bs!1374703) (not b!5830453) (not b!5830376) (not d!1833520) (not b!5830232) (not b!5830264) (not b!5830311) (not b_lambda!219725) (not d!1833424) (not b!5830598) (not d!1833516) (not b!5830583) (not b!5830309) (not bs!1374704) (not b!5830455) (not b!5830541) (not b!5830623) (not b!5830523) (not b!5830279) (not d!1833384) (not d!1833418) (not b!5830502) (not b!5830451) (not b!5830533) (not bm!455325) (not b!5830492) (not b!5830495) (not b!5830565) (not b!5830559) (not d!1833446) (not b!5830514) (not b!5830252) (not b!5830542) (not b!5830314) (not b!5830235) (not b!5830597) (not bs!1374706) (not bm!455296) (not b!5830579) (not b!5830299) (not b!5830496) (not b!5830569) (not b!5830525) (not d!1833420) (not b!5830574) (not b!5830497) (not b!5830562) (not b!5830508) (not b_lambda!219727) (not bm!455329) (not b!5830272) (not b!5830448) (not d!1833450) (not b!5830263) (not b_lambda!219731) tp_is_empty!41023 (not b!5830537) (not b!5830450) (not bs!1374702) (not b!5830290) (not b!5830244) (not b!5830521) (not b!5830571) (not b!5830586) (not b!5830256) (not b!5830504) (not b!5830556) (not b!5830616) (not b!5830315) (not b!5830590) (not b!5830522) (not b!5830250) (not b!5830591) (not bm!455302) (not d!1833432) (not b!5830615) (not b!5830551) (not b!5830596) (not b!5830566) (not bm!455294) (not bs!1374705) (not bm!455320) (not b!5830592) (not b!5830491) (not b!5830506) (not b!5830561) (not b!5830552) (not b!5830288) (not b!5830499) (not b!5830308) (not b!5830310) (not b!5830624) (not b!5830567) (not bm!455300) (not b!5830582) (not b!5830501) (not b!5830287) (not b!5830543) (not b!5830278) (not b!5830554) (not b!5830500) (not b!5830539) (not b!5830617) (not b!5830271) (not b!5830398) (not b!5830509) (not b!5830510) (not b!5830547) (not d!1833524) (not b!5830269) (not b!5830301) (not b!5830589) (not b!5830229) (not b!5830437) (not b!5830563) (not b!5830270) (not b!5830570) (not b!5830526) (not b!5830575) (not b!5830585) (not b!5830267) (not d!1833486) (not b!5830273) (not b!5830520) (not b!5830512) (not b!5830452) (not b!5830557))
(check-sat)
