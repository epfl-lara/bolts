; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740222 () Bool)

(assert start!740222)

(declare-fun b!7774607 () Bool)

(declare-fun e!4606068 () Bool)

(declare-fun tp!2284569 () Bool)

(assert (=> b!7774607 (= e!4606068 tp!2284569)))

(declare-fun b!7774608 () Bool)

(declare-fun e!4606066 () Bool)

(declare-fun tp!2284573 () Bool)

(assert (=> b!7774608 (= e!4606066 tp!2284573)))

(declare-fun b!7774609 () Bool)

(declare-fun tp!2284577 () Bool)

(declare-fun tp!2284575 () Bool)

(assert (=> b!7774609 (= e!4606066 (and tp!2284577 tp!2284575))))

(declare-fun b!7774610 () Bool)

(declare-fun tp!2284570 () Bool)

(declare-fun tp!2284576 () Bool)

(assert (=> b!7774610 (= e!4606068 (and tp!2284570 tp!2284576))))

(declare-fun b!7774611 () Bool)

(declare-fun res!3099015 () Bool)

(declare-fun e!4606069 () Bool)

(assert (=> b!7774611 (=> (not res!3099015) (not e!4606069))))

(declare-datatypes ((C!41892 0))(
  ( (C!41893 (val!31386 Int)) )
))
(declare-datatypes ((Regex!20783 0))(
  ( (ElementMatch!20783 (c!1432792 C!41892)) (Concat!29628 (regOne!42078 Regex!20783) (regTwo!42078 Regex!20783)) (EmptyExpr!20783) (Star!20783 (reg!21112 Regex!20783)) (EmptyLang!20783) (Union!20783 (regOne!42079 Regex!20783) (regTwo!42079 Regex!20783)) )
))
(declare-fun r2!6217 () Regex!20783)

(declare-fun validRegex!11197 (Regex!20783) Bool)

(assert (=> b!7774611 (= res!3099015 (validRegex!11197 r2!6217))))

(declare-fun b!7774612 () Bool)

(declare-fun e!4606070 () Bool)

(assert (=> b!7774612 (= e!4606069 e!4606070)))

(declare-fun res!3099009 () Bool)

(assert (=> b!7774612 (=> (not res!3099009) (not e!4606070))))

(declare-fun lt!2671830 () Regex!20783)

(declare-datatypes ((List!73622 0))(
  ( (Nil!73498) (Cons!73498 (h!79946 C!41892) (t!388357 List!73622)) )
))
(declare-fun s!14292 () List!73622)

(declare-fun matchR!10243 (Regex!20783 List!73622) Bool)

(assert (=> b!7774612 (= res!3099009 (matchR!10243 lt!2671830 s!14292))))

(declare-fun r1!6279 () Regex!20783)

(assert (=> b!7774612 (= lt!2671830 (Concat!29628 r1!6279 r2!6217))))

(declare-fun b!7774614 () Bool)

(declare-fun e!4606073 () Bool)

(declare-fun e!4606067 () Bool)

(assert (=> b!7774614 (= e!4606073 e!4606067)))

(declare-fun res!3099011 () Bool)

(assert (=> b!7774614 (=> (not res!3099011) (not e!4606067))))

(declare-fun lt!2671826 () Regex!20783)

(declare-fun lt!2671829 () Regex!20783)

(declare-fun lt!2671827 () Regex!20783)

(assert (=> b!7774614 (= res!3099011 (= lt!2671827 (Union!20783 lt!2671829 lt!2671826)))))

(declare-fun derivativeStep!6126 (Regex!20783 C!41892) Regex!20783)

(assert (=> b!7774614 (= lt!2671826 (derivativeStep!6126 r2!6217 (h!79946 s!14292)))))

(assert (=> b!7774614 (= lt!2671829 (Concat!29628 (derivativeStep!6126 r1!6279 (h!79946 s!14292)) r2!6217))))

(declare-fun b!7774615 () Bool)

(declare-fun res!3099014 () Bool)

(assert (=> b!7774615 (=> (not res!3099014) (not e!4606073))))

(declare-fun nullable!9171 (Regex!20783) Bool)

(assert (=> b!7774615 (= res!3099014 (nullable!9171 r1!6279))))

(declare-fun b!7774616 () Bool)

(declare-fun tp!2284567 () Bool)

(declare-fun tp!2284568 () Bool)

(assert (=> b!7774616 (= e!4606066 (and tp!2284567 tp!2284568))))

(declare-fun b!7774617 () Bool)

(declare-fun tp_is_empty!51921 () Bool)

(assert (=> b!7774617 (= e!4606066 tp_is_empty!51921)))

(declare-fun b!7774618 () Bool)

(assert (=> b!7774618 (= e!4606067 (not (validRegex!11197 lt!2671829)))))

(declare-fun e!4606071 () Bool)

(assert (=> b!7774618 e!4606071))

(declare-fun res!3099010 () Bool)

(assert (=> b!7774618 (=> res!3099010 e!4606071)))

(assert (=> b!7774618 (= res!3099010 (matchR!10243 lt!2671829 (t!388357 s!14292)))))

(declare-datatypes ((Unit!168468 0))(
  ( (Unit!168469) )
))
(declare-fun lt!2671828 () Unit!168468)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!358 (Regex!20783 Regex!20783 List!73622) Unit!168468)

(assert (=> b!7774618 (= lt!2671828 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!358 lt!2671829 lt!2671826 (t!388357 s!14292)))))

(declare-fun b!7774619 () Bool)

(assert (=> b!7774619 (= e!4606071 (matchR!10243 lt!2671826 (t!388357 s!14292)))))

(declare-fun b!7774613 () Bool)

(declare-fun e!4606072 () Bool)

(declare-fun tp!2284574 () Bool)

(assert (=> b!7774613 (= e!4606072 (and tp_is_empty!51921 tp!2284574))))

(declare-fun res!3099016 () Bool)

(assert (=> start!740222 (=> (not res!3099016) (not e!4606069))))

(assert (=> start!740222 (= res!3099016 (validRegex!11197 r1!6279))))

(assert (=> start!740222 e!4606069))

(assert (=> start!740222 e!4606068))

(assert (=> start!740222 e!4606066))

(assert (=> start!740222 e!4606072))

(declare-fun b!7774620 () Bool)

(declare-fun tp!2284572 () Bool)

(declare-fun tp!2284571 () Bool)

(assert (=> b!7774620 (= e!4606068 (and tp!2284572 tp!2284571))))

(declare-fun b!7774621 () Bool)

(assert (=> b!7774621 (= e!4606068 tp_is_empty!51921)))

(declare-fun b!7774622 () Bool)

(assert (=> b!7774622 (= e!4606070 e!4606073)))

(declare-fun res!3099013 () Bool)

(assert (=> b!7774622 (=> (not res!3099013) (not e!4606073))))

(assert (=> b!7774622 (= res!3099013 (matchR!10243 lt!2671827 (t!388357 s!14292)))))

(assert (=> b!7774622 (= lt!2671827 (derivativeStep!6126 lt!2671830 (h!79946 s!14292)))))

(declare-fun b!7774623 () Bool)

(declare-fun res!3099012 () Bool)

(assert (=> b!7774623 (=> (not res!3099012) (not e!4606070))))

(get-info :version)

(assert (=> b!7774623 (= res!3099012 ((_ is Cons!73498) s!14292))))

(assert (= (and start!740222 res!3099016) b!7774611))

(assert (= (and b!7774611 res!3099015) b!7774612))

(assert (= (and b!7774612 res!3099009) b!7774623))

(assert (= (and b!7774623 res!3099012) b!7774622))

(assert (= (and b!7774622 res!3099013) b!7774615))

(assert (= (and b!7774615 res!3099014) b!7774614))

(assert (= (and b!7774614 res!3099011) b!7774618))

(assert (= (and b!7774618 (not res!3099010)) b!7774619))

(assert (= (and start!740222 ((_ is ElementMatch!20783) r1!6279)) b!7774621))

(assert (= (and start!740222 ((_ is Concat!29628) r1!6279)) b!7774610))

(assert (= (and start!740222 ((_ is Star!20783) r1!6279)) b!7774607))

(assert (= (and start!740222 ((_ is Union!20783) r1!6279)) b!7774620))

(assert (= (and start!740222 ((_ is ElementMatch!20783) r2!6217)) b!7774617))

(assert (= (and start!740222 ((_ is Concat!29628) r2!6217)) b!7774609))

(assert (= (and start!740222 ((_ is Star!20783) r2!6217)) b!7774608))

(assert (= (and start!740222 ((_ is Union!20783) r2!6217)) b!7774616))

(assert (= (and start!740222 ((_ is Cons!73498) s!14292)) b!7774613))

(declare-fun m!8226254 () Bool)

(assert (=> b!7774619 m!8226254))

(declare-fun m!8226256 () Bool)

(assert (=> b!7774612 m!8226256))

(declare-fun m!8226258 () Bool)

(assert (=> start!740222 m!8226258))

(declare-fun m!8226260 () Bool)

(assert (=> b!7774622 m!8226260))

(declare-fun m!8226262 () Bool)

(assert (=> b!7774622 m!8226262))

(declare-fun m!8226264 () Bool)

(assert (=> b!7774611 m!8226264))

(declare-fun m!8226266 () Bool)

(assert (=> b!7774615 m!8226266))

(declare-fun m!8226268 () Bool)

(assert (=> b!7774614 m!8226268))

(declare-fun m!8226270 () Bool)

(assert (=> b!7774614 m!8226270))

(declare-fun m!8226272 () Bool)

(assert (=> b!7774618 m!8226272))

(declare-fun m!8226274 () Bool)

(assert (=> b!7774618 m!8226274))

(declare-fun m!8226276 () Bool)

(assert (=> b!7774618 m!8226276))

(check-sat (not b!7774609) (not b!7774620) (not b!7774608) (not b!7774612) tp_is_empty!51921 (not start!740222) (not b!7774607) (not b!7774615) (not b!7774616) (not b!7774619) (not b!7774611) (not b!7774618) (not b!7774610) (not b!7774613) (not b!7774614) (not b!7774622))
(check-sat)
(get-model)

(declare-fun d!2344717 () Bool)

(declare-fun nullableFct!3589 (Regex!20783) Bool)

(assert (=> d!2344717 (= (nullable!9171 r1!6279) (nullableFct!3589 r1!6279))))

(declare-fun bs!1966153 () Bool)

(assert (= bs!1966153 d!2344717))

(declare-fun m!8226280 () Bool)

(assert (=> bs!1966153 m!8226280))

(assert (=> b!7774615 d!2344717))

(declare-fun b!7774707 () Bool)

(declare-fun res!3099067 () Bool)

(declare-fun e!4606126 () Bool)

(assert (=> b!7774707 (=> (not res!3099067) (not e!4606126))))

(declare-fun isEmpty!42163 (List!73622) Bool)

(declare-fun tail!15439 (List!73622) List!73622)

(assert (=> b!7774707 (= res!3099067 (isEmpty!42163 (tail!15439 (t!388357 s!14292))))))

(declare-fun b!7774708 () Bool)

(declare-fun head!15898 (List!73622) C!41892)

(assert (=> b!7774708 (= e!4606126 (= (head!15898 (t!388357 s!14292)) (c!1432792 lt!2671827)))))

(declare-fun b!7774709 () Bool)

(declare-fun res!3099070 () Bool)

(declare-fun e!4606129 () Bool)

(assert (=> b!7774709 (=> res!3099070 e!4606129)))

(assert (=> b!7774709 (= res!3099070 (not (isEmpty!42163 (tail!15439 (t!388357 s!14292)))))))

(declare-fun b!7774710 () Bool)

(declare-fun e!4606123 () Bool)

(declare-fun e!4606128 () Bool)

(assert (=> b!7774710 (= e!4606123 e!4606128)))

(declare-fun c!1432812 () Bool)

(assert (=> b!7774710 (= c!1432812 ((_ is EmptyLang!20783) lt!2671827))))

(declare-fun b!7774712 () Bool)

(declare-fun lt!2671835 () Bool)

(assert (=> b!7774712 (= e!4606128 (not lt!2671835))))

(declare-fun b!7774713 () Bool)

(declare-fun e!4606124 () Bool)

(declare-fun e!4606127 () Bool)

(assert (=> b!7774713 (= e!4606124 e!4606127)))

(declare-fun res!3099064 () Bool)

(assert (=> b!7774713 (=> (not res!3099064) (not e!4606127))))

(assert (=> b!7774713 (= res!3099064 (not lt!2671835))))

(declare-fun b!7774714 () Bool)

(declare-fun e!4606125 () Bool)

(assert (=> b!7774714 (= e!4606125 (nullable!9171 lt!2671827))))

(declare-fun bm!720579 () Bool)

(declare-fun call!720584 () Bool)

(assert (=> bm!720579 (= call!720584 (isEmpty!42163 (t!388357 s!14292)))))

(declare-fun b!7774715 () Bool)

(assert (=> b!7774715 (= e!4606125 (matchR!10243 (derivativeStep!6126 lt!2671827 (head!15898 (t!388357 s!14292))) (tail!15439 (t!388357 s!14292))))))

(declare-fun b!7774716 () Bool)

(declare-fun res!3099069 () Bool)

(assert (=> b!7774716 (=> res!3099069 e!4606124)))

(assert (=> b!7774716 (= res!3099069 (not ((_ is ElementMatch!20783) lt!2671827)))))

(assert (=> b!7774716 (= e!4606128 e!4606124)))

(declare-fun b!7774717 () Bool)

(declare-fun res!3099071 () Bool)

(assert (=> b!7774717 (=> res!3099071 e!4606124)))

(assert (=> b!7774717 (= res!3099071 e!4606126)))

(declare-fun res!3099066 () Bool)

(assert (=> b!7774717 (=> (not res!3099066) (not e!4606126))))

(assert (=> b!7774717 (= res!3099066 lt!2671835)))

(declare-fun b!7774718 () Bool)

(assert (=> b!7774718 (= e!4606129 (not (= (head!15898 (t!388357 s!14292)) (c!1432792 lt!2671827))))))

(declare-fun b!7774711 () Bool)

(assert (=> b!7774711 (= e!4606127 e!4606129)))

(declare-fun res!3099065 () Bool)

(assert (=> b!7774711 (=> res!3099065 e!4606129)))

(assert (=> b!7774711 (= res!3099065 call!720584)))

(declare-fun d!2344721 () Bool)

(assert (=> d!2344721 e!4606123))

(declare-fun c!1432813 () Bool)

(assert (=> d!2344721 (= c!1432813 ((_ is EmptyExpr!20783) lt!2671827))))

(assert (=> d!2344721 (= lt!2671835 e!4606125)))

(declare-fun c!1432811 () Bool)

(assert (=> d!2344721 (= c!1432811 (isEmpty!42163 (t!388357 s!14292)))))

(assert (=> d!2344721 (validRegex!11197 lt!2671827)))

(assert (=> d!2344721 (= (matchR!10243 lt!2671827 (t!388357 s!14292)) lt!2671835)))

(declare-fun b!7774719 () Bool)

(assert (=> b!7774719 (= e!4606123 (= lt!2671835 call!720584))))

(declare-fun b!7774720 () Bool)

(declare-fun res!3099068 () Bool)

(assert (=> b!7774720 (=> (not res!3099068) (not e!4606126))))

(assert (=> b!7774720 (= res!3099068 (not call!720584))))

(assert (= (and d!2344721 c!1432811) b!7774714))

(assert (= (and d!2344721 (not c!1432811)) b!7774715))

(assert (= (and d!2344721 c!1432813) b!7774719))

(assert (= (and d!2344721 (not c!1432813)) b!7774710))

(assert (= (and b!7774710 c!1432812) b!7774712))

(assert (= (and b!7774710 (not c!1432812)) b!7774716))

(assert (= (and b!7774716 (not res!3099069)) b!7774717))

(assert (= (and b!7774717 res!3099066) b!7774720))

(assert (= (and b!7774720 res!3099068) b!7774707))

(assert (= (and b!7774707 res!3099067) b!7774708))

(assert (= (and b!7774717 (not res!3099071)) b!7774713))

(assert (= (and b!7774713 res!3099064) b!7774711))

(assert (= (and b!7774711 (not res!3099065)) b!7774709))

(assert (= (and b!7774709 (not res!3099070)) b!7774718))

(assert (= (or b!7774719 b!7774711 b!7774720) bm!720579))

(declare-fun m!8226288 () Bool)

(assert (=> b!7774709 m!8226288))

(assert (=> b!7774709 m!8226288))

(declare-fun m!8226290 () Bool)

(assert (=> b!7774709 m!8226290))

(declare-fun m!8226292 () Bool)

(assert (=> bm!720579 m!8226292))

(declare-fun m!8226294 () Bool)

(assert (=> b!7774718 m!8226294))

(assert (=> b!7774707 m!8226288))

(assert (=> b!7774707 m!8226288))

(assert (=> b!7774707 m!8226290))

(declare-fun m!8226296 () Bool)

(assert (=> b!7774714 m!8226296))

(assert (=> b!7774708 m!8226294))

(assert (=> d!2344721 m!8226292))

(declare-fun m!8226298 () Bool)

(assert (=> d!2344721 m!8226298))

(assert (=> b!7774715 m!8226294))

(assert (=> b!7774715 m!8226294))

(declare-fun m!8226300 () Bool)

(assert (=> b!7774715 m!8226300))

(assert (=> b!7774715 m!8226288))

(assert (=> b!7774715 m!8226300))

(assert (=> b!7774715 m!8226288))

(declare-fun m!8226302 () Bool)

(assert (=> b!7774715 m!8226302))

(assert (=> b!7774622 d!2344721))

(declare-fun b!7774775 () Bool)

(declare-fun e!4606160 () Regex!20783)

(declare-fun call!720603 () Regex!20783)

(declare-fun call!720602 () Regex!20783)

(assert (=> b!7774775 (= e!4606160 (Union!20783 call!720603 call!720602))))

(declare-fun bm!720597 () Bool)

(declare-fun call!720604 () Regex!20783)

(declare-fun call!720605 () Regex!20783)

(assert (=> bm!720597 (= call!720604 call!720605)))

(declare-fun b!7774776 () Bool)

(declare-fun c!1432839 () Bool)

(assert (=> b!7774776 (= c!1432839 (nullable!9171 (regOne!42078 lt!2671830)))))

(declare-fun e!4606158 () Regex!20783)

(declare-fun e!4606159 () Regex!20783)

(assert (=> b!7774776 (= e!4606158 e!4606159)))

(declare-fun b!7774777 () Bool)

(assert (=> b!7774777 (= e!4606159 (Union!20783 (Concat!29628 call!720603 (regTwo!42078 lt!2671830)) call!720604))))

(declare-fun c!1432838 () Bool)

(declare-fun bm!720598 () Bool)

(declare-fun c!1432841 () Bool)

(assert (=> bm!720598 (= call!720602 (derivativeStep!6126 (ite c!1432838 (regTwo!42079 lt!2671830) (ite c!1432841 (reg!21112 lt!2671830) (ite c!1432839 (regTwo!42078 lt!2671830) (regOne!42078 lt!2671830)))) (h!79946 s!14292)))))

(declare-fun bm!720599 () Bool)

(assert (=> bm!720599 (= call!720603 (derivativeStep!6126 (ite c!1432838 (regOne!42079 lt!2671830) (regOne!42078 lt!2671830)) (h!79946 s!14292)))))

(declare-fun d!2344725 () Bool)

(declare-fun lt!2671841 () Regex!20783)

(assert (=> d!2344725 (validRegex!11197 lt!2671841)))

(declare-fun e!4606157 () Regex!20783)

(assert (=> d!2344725 (= lt!2671841 e!4606157)))

(declare-fun c!1432840 () Bool)

(assert (=> d!2344725 (= c!1432840 (or ((_ is EmptyExpr!20783) lt!2671830) ((_ is EmptyLang!20783) lt!2671830)))))

(assert (=> d!2344725 (validRegex!11197 lt!2671830)))

(assert (=> d!2344725 (= (derivativeStep!6126 lt!2671830 (h!79946 s!14292)) lt!2671841)))

(declare-fun b!7774778 () Bool)

(assert (=> b!7774778 (= e!4606160 e!4606158)))

(assert (=> b!7774778 (= c!1432841 ((_ is Star!20783) lt!2671830))))

(declare-fun b!7774779 () Bool)

(assert (=> b!7774779 (= c!1432838 ((_ is Union!20783) lt!2671830))))

(declare-fun e!4606161 () Regex!20783)

(assert (=> b!7774779 (= e!4606161 e!4606160)))

(declare-fun bm!720600 () Bool)

(assert (=> bm!720600 (= call!720605 call!720602)))

(declare-fun b!7774780 () Bool)

(assert (=> b!7774780 (= e!4606161 (ite (= (h!79946 s!14292) (c!1432792 lt!2671830)) EmptyExpr!20783 EmptyLang!20783))))

(declare-fun b!7774781 () Bool)

(assert (=> b!7774781 (= e!4606157 e!4606161)))

(declare-fun c!1432837 () Bool)

(assert (=> b!7774781 (= c!1432837 ((_ is ElementMatch!20783) lt!2671830))))

(declare-fun b!7774782 () Bool)

(assert (=> b!7774782 (= e!4606158 (Concat!29628 call!720605 lt!2671830))))

(declare-fun b!7774783 () Bool)

(assert (=> b!7774783 (= e!4606159 (Union!20783 (Concat!29628 call!720604 (regTwo!42078 lt!2671830)) EmptyLang!20783))))

(declare-fun b!7774784 () Bool)

(assert (=> b!7774784 (= e!4606157 EmptyLang!20783)))

(assert (= (and d!2344725 c!1432840) b!7774784))

(assert (= (and d!2344725 (not c!1432840)) b!7774781))

(assert (= (and b!7774781 c!1432837) b!7774780))

(assert (= (and b!7774781 (not c!1432837)) b!7774779))

(assert (= (and b!7774779 c!1432838) b!7774775))

(assert (= (and b!7774779 (not c!1432838)) b!7774778))

(assert (= (and b!7774778 c!1432841) b!7774782))

(assert (= (and b!7774778 (not c!1432841)) b!7774776))

(assert (= (and b!7774776 c!1432839) b!7774777))

(assert (= (and b!7774776 (not c!1432839)) b!7774783))

(assert (= (or b!7774777 b!7774783) bm!720597))

(assert (= (or b!7774782 bm!720597) bm!720600))

(assert (= (or b!7774775 bm!720600) bm!720598))

(assert (= (or b!7774775 b!7774777) bm!720599))

(declare-fun m!8226320 () Bool)

(assert (=> b!7774776 m!8226320))

(declare-fun m!8226322 () Bool)

(assert (=> bm!720598 m!8226322))

(declare-fun m!8226324 () Bool)

(assert (=> bm!720599 m!8226324))

(declare-fun m!8226326 () Bool)

(assert (=> d!2344725 m!8226326))

(declare-fun m!8226328 () Bool)

(assert (=> d!2344725 m!8226328))

(assert (=> b!7774622 d!2344725))

(declare-fun b!7774861 () Bool)

(declare-fun e!4606219 () Bool)

(declare-fun e!4606216 () Bool)

(assert (=> b!7774861 (= e!4606219 e!4606216)))

(declare-fun c!1432863 () Bool)

(assert (=> b!7774861 (= c!1432863 ((_ is Star!20783) r2!6217))))

(declare-fun b!7774862 () Bool)

(declare-fun res!3099118 () Bool)

(declare-fun e!4606213 () Bool)

(assert (=> b!7774862 (=> res!3099118 e!4606213)))

(assert (=> b!7774862 (= res!3099118 (not ((_ is Concat!29628) r2!6217)))))

(declare-fun e!4606218 () Bool)

(assert (=> b!7774862 (= e!4606218 e!4606213)))

(declare-fun b!7774863 () Bool)

(assert (=> b!7774863 (= e!4606216 e!4606218)))

(declare-fun c!1432864 () Bool)

(assert (=> b!7774863 (= c!1432864 ((_ is Union!20783) r2!6217))))

(declare-fun bm!720623 () Bool)

(declare-fun call!720627 () Bool)

(declare-fun call!720628 () Bool)

(assert (=> bm!720623 (= call!720627 call!720628)))

(declare-fun b!7774864 () Bool)

(declare-fun e!4606217 () Bool)

(declare-fun call!720629 () Bool)

(assert (=> b!7774864 (= e!4606217 call!720629)))

(declare-fun bm!720624 () Bool)

(assert (=> bm!720624 (= call!720628 (validRegex!11197 (ite c!1432863 (reg!21112 r2!6217) (ite c!1432864 (regOne!42079 r2!6217) (regOne!42078 r2!6217)))))))

(declare-fun b!7774865 () Bool)

(declare-fun e!4606214 () Bool)

(assert (=> b!7774865 (= e!4606214 call!720629)))

(declare-fun b!7774866 () Bool)

(declare-fun e!4606215 () Bool)

(assert (=> b!7774866 (= e!4606216 e!4606215)))

(declare-fun res!3099115 () Bool)

(assert (=> b!7774866 (= res!3099115 (not (nullable!9171 (reg!21112 r2!6217))))))

(assert (=> b!7774866 (=> (not res!3099115) (not e!4606215))))

(declare-fun b!7774867 () Bool)

(assert (=> b!7774867 (= e!4606213 e!4606217)))

(declare-fun res!3099117 () Bool)

(assert (=> b!7774867 (=> (not res!3099117) (not e!4606217))))

(assert (=> b!7774867 (= res!3099117 call!720627)))

(declare-fun b!7774868 () Bool)

(assert (=> b!7774868 (= e!4606215 call!720628)))

(declare-fun b!7774869 () Bool)

(declare-fun res!3099116 () Bool)

(assert (=> b!7774869 (=> (not res!3099116) (not e!4606214))))

(assert (=> b!7774869 (= res!3099116 call!720627)))

(assert (=> b!7774869 (= e!4606218 e!4606214)))

(declare-fun d!2344729 () Bool)

(declare-fun res!3099114 () Bool)

(assert (=> d!2344729 (=> res!3099114 e!4606219)))

(assert (=> d!2344729 (= res!3099114 ((_ is ElementMatch!20783) r2!6217))))

(assert (=> d!2344729 (= (validRegex!11197 r2!6217) e!4606219)))

(declare-fun bm!720622 () Bool)

(assert (=> bm!720622 (= call!720629 (validRegex!11197 (ite c!1432864 (regTwo!42079 r2!6217) (regTwo!42078 r2!6217))))))

(assert (= (and d!2344729 (not res!3099114)) b!7774861))

(assert (= (and b!7774861 c!1432863) b!7774866))

(assert (= (and b!7774861 (not c!1432863)) b!7774863))

(assert (= (and b!7774866 res!3099115) b!7774868))

(assert (= (and b!7774863 c!1432864) b!7774869))

(assert (= (and b!7774863 (not c!1432864)) b!7774862))

(assert (= (and b!7774869 res!3099116) b!7774865))

(assert (= (and b!7774862 (not res!3099118)) b!7774867))

(assert (= (and b!7774867 res!3099117) b!7774864))

(assert (= (or b!7774869 b!7774867) bm!720623))

(assert (= (or b!7774865 b!7774864) bm!720622))

(assert (= (or b!7774868 bm!720623) bm!720624))

(declare-fun m!8226366 () Bool)

(assert (=> bm!720624 m!8226366))

(declare-fun m!8226368 () Bool)

(assert (=> b!7774866 m!8226368))

(declare-fun m!8226370 () Bool)

(assert (=> bm!720622 m!8226370))

(assert (=> b!7774611 d!2344729))

(declare-fun b!7774884 () Bool)

(declare-fun res!3099130 () Bool)

(declare-fun e!4606230 () Bool)

(assert (=> b!7774884 (=> (not res!3099130) (not e!4606230))))

(assert (=> b!7774884 (= res!3099130 (isEmpty!42163 (tail!15439 s!14292)))))

(declare-fun b!7774885 () Bool)

(assert (=> b!7774885 (= e!4606230 (= (head!15898 s!14292) (c!1432792 lt!2671830)))))

(declare-fun b!7774886 () Bool)

(declare-fun res!3099133 () Bool)

(declare-fun e!4606233 () Bool)

(assert (=> b!7774886 (=> res!3099133 e!4606233)))

(assert (=> b!7774886 (= res!3099133 (not (isEmpty!42163 (tail!15439 s!14292))))))

(declare-fun b!7774887 () Bool)

(declare-fun e!4606227 () Bool)

(declare-fun e!4606232 () Bool)

(assert (=> b!7774887 (= e!4606227 e!4606232)))

(declare-fun c!1432869 () Bool)

(assert (=> b!7774887 (= c!1432869 ((_ is EmptyLang!20783) lt!2671830))))

(declare-fun b!7774889 () Bool)

(declare-fun lt!2671849 () Bool)

(assert (=> b!7774889 (= e!4606232 (not lt!2671849))))

(declare-fun b!7774890 () Bool)

(declare-fun e!4606228 () Bool)

(declare-fun e!4606231 () Bool)

(assert (=> b!7774890 (= e!4606228 e!4606231)))

(declare-fun res!3099127 () Bool)

(assert (=> b!7774890 (=> (not res!3099127) (not e!4606231))))

(assert (=> b!7774890 (= res!3099127 (not lt!2671849))))

(declare-fun b!7774891 () Bool)

(declare-fun e!4606229 () Bool)

(assert (=> b!7774891 (= e!4606229 (nullable!9171 lt!2671830))))

(declare-fun bm!720626 () Bool)

(declare-fun call!720631 () Bool)

(assert (=> bm!720626 (= call!720631 (isEmpty!42163 s!14292))))

(declare-fun b!7774892 () Bool)

(assert (=> b!7774892 (= e!4606229 (matchR!10243 (derivativeStep!6126 lt!2671830 (head!15898 s!14292)) (tail!15439 s!14292)))))

(declare-fun b!7774893 () Bool)

(declare-fun res!3099132 () Bool)

(assert (=> b!7774893 (=> res!3099132 e!4606228)))

(assert (=> b!7774893 (= res!3099132 (not ((_ is ElementMatch!20783) lt!2671830)))))

(assert (=> b!7774893 (= e!4606232 e!4606228)))

(declare-fun b!7774894 () Bool)

(declare-fun res!3099134 () Bool)

(assert (=> b!7774894 (=> res!3099134 e!4606228)))

(assert (=> b!7774894 (= res!3099134 e!4606230)))

(declare-fun res!3099129 () Bool)

(assert (=> b!7774894 (=> (not res!3099129) (not e!4606230))))

(assert (=> b!7774894 (= res!3099129 lt!2671849)))

(declare-fun b!7774895 () Bool)

(assert (=> b!7774895 (= e!4606233 (not (= (head!15898 s!14292) (c!1432792 lt!2671830))))))

(declare-fun b!7774888 () Bool)

(assert (=> b!7774888 (= e!4606231 e!4606233)))

(declare-fun res!3099128 () Bool)

(assert (=> b!7774888 (=> res!3099128 e!4606233)))

(assert (=> b!7774888 (= res!3099128 call!720631)))

(declare-fun d!2344743 () Bool)

(assert (=> d!2344743 e!4606227))

(declare-fun c!1432870 () Bool)

(assert (=> d!2344743 (= c!1432870 ((_ is EmptyExpr!20783) lt!2671830))))

(assert (=> d!2344743 (= lt!2671849 e!4606229)))

(declare-fun c!1432868 () Bool)

(assert (=> d!2344743 (= c!1432868 (isEmpty!42163 s!14292))))

(assert (=> d!2344743 (validRegex!11197 lt!2671830)))

(assert (=> d!2344743 (= (matchR!10243 lt!2671830 s!14292) lt!2671849)))

(declare-fun b!7774896 () Bool)

(assert (=> b!7774896 (= e!4606227 (= lt!2671849 call!720631))))

(declare-fun b!7774897 () Bool)

(declare-fun res!3099131 () Bool)

(assert (=> b!7774897 (=> (not res!3099131) (not e!4606230))))

(assert (=> b!7774897 (= res!3099131 (not call!720631))))

(assert (= (and d!2344743 c!1432868) b!7774891))

(assert (= (and d!2344743 (not c!1432868)) b!7774892))

(assert (= (and d!2344743 c!1432870) b!7774896))

(assert (= (and d!2344743 (not c!1432870)) b!7774887))

(assert (= (and b!7774887 c!1432869) b!7774889))

(assert (= (and b!7774887 (not c!1432869)) b!7774893))

(assert (= (and b!7774893 (not res!3099132)) b!7774894))

(assert (= (and b!7774894 res!3099129) b!7774897))

(assert (= (and b!7774897 res!3099131) b!7774884))

(assert (= (and b!7774884 res!3099130) b!7774885))

(assert (= (and b!7774894 (not res!3099134)) b!7774890))

(assert (= (and b!7774890 res!3099127) b!7774888))

(assert (= (and b!7774888 (not res!3099128)) b!7774886))

(assert (= (and b!7774886 (not res!3099133)) b!7774895))

(assert (= (or b!7774896 b!7774888 b!7774897) bm!720626))

(declare-fun m!8226388 () Bool)

(assert (=> b!7774886 m!8226388))

(assert (=> b!7774886 m!8226388))

(declare-fun m!8226390 () Bool)

(assert (=> b!7774886 m!8226390))

(declare-fun m!8226392 () Bool)

(assert (=> bm!720626 m!8226392))

(declare-fun m!8226394 () Bool)

(assert (=> b!7774895 m!8226394))

(assert (=> b!7774884 m!8226388))

(assert (=> b!7774884 m!8226388))

(assert (=> b!7774884 m!8226390))

(declare-fun m!8226396 () Bool)

(assert (=> b!7774891 m!8226396))

(assert (=> b!7774885 m!8226394))

(assert (=> d!2344743 m!8226392))

(assert (=> d!2344743 m!8226328))

(assert (=> b!7774892 m!8226394))

(assert (=> b!7774892 m!8226394))

(declare-fun m!8226398 () Bool)

(assert (=> b!7774892 m!8226398))

(assert (=> b!7774892 m!8226388))

(assert (=> b!7774892 m!8226398))

(assert (=> b!7774892 m!8226388))

(declare-fun m!8226404 () Bool)

(assert (=> b!7774892 m!8226404))

(assert (=> b!7774612 d!2344743))

(declare-fun b!7774912 () Bool)

(declare-fun e!4606247 () Bool)

(declare-fun e!4606244 () Bool)

(assert (=> b!7774912 (= e!4606247 e!4606244)))

(declare-fun c!1432874 () Bool)

(assert (=> b!7774912 (= c!1432874 ((_ is Star!20783) lt!2671829))))

(declare-fun b!7774913 () Bool)

(declare-fun res!3099147 () Bool)

(declare-fun e!4606241 () Bool)

(assert (=> b!7774913 (=> res!3099147 e!4606241)))

(assert (=> b!7774913 (= res!3099147 (not ((_ is Concat!29628) lt!2671829)))))

(declare-fun e!4606246 () Bool)

(assert (=> b!7774913 (= e!4606246 e!4606241)))

(declare-fun b!7774914 () Bool)

(assert (=> b!7774914 (= e!4606244 e!4606246)))

(declare-fun c!1432875 () Bool)

(assert (=> b!7774914 (= c!1432875 ((_ is Union!20783) lt!2671829))))

(declare-fun bm!720629 () Bool)

(declare-fun call!720633 () Bool)

(declare-fun call!720634 () Bool)

(assert (=> bm!720629 (= call!720633 call!720634)))

(declare-fun b!7774915 () Bool)

(declare-fun e!4606245 () Bool)

(declare-fun call!720635 () Bool)

(assert (=> b!7774915 (= e!4606245 call!720635)))

(declare-fun bm!720630 () Bool)

(assert (=> bm!720630 (= call!720634 (validRegex!11197 (ite c!1432874 (reg!21112 lt!2671829) (ite c!1432875 (regOne!42079 lt!2671829) (regOne!42078 lt!2671829)))))))

(declare-fun b!7774916 () Bool)

(declare-fun e!4606242 () Bool)

(assert (=> b!7774916 (= e!4606242 call!720635)))

(declare-fun b!7774917 () Bool)

(declare-fun e!4606243 () Bool)

(assert (=> b!7774917 (= e!4606244 e!4606243)))

(declare-fun res!3099144 () Bool)

(assert (=> b!7774917 (= res!3099144 (not (nullable!9171 (reg!21112 lt!2671829))))))

(assert (=> b!7774917 (=> (not res!3099144) (not e!4606243))))

(declare-fun b!7774918 () Bool)

(assert (=> b!7774918 (= e!4606241 e!4606245)))

(declare-fun res!3099146 () Bool)

(assert (=> b!7774918 (=> (not res!3099146) (not e!4606245))))

(assert (=> b!7774918 (= res!3099146 call!720633)))

(declare-fun b!7774919 () Bool)

(assert (=> b!7774919 (= e!4606243 call!720634)))

(declare-fun b!7774920 () Bool)

(declare-fun res!3099145 () Bool)

(assert (=> b!7774920 (=> (not res!3099145) (not e!4606242))))

(assert (=> b!7774920 (= res!3099145 call!720633)))

(assert (=> b!7774920 (= e!4606246 e!4606242)))

(declare-fun d!2344747 () Bool)

(declare-fun res!3099143 () Bool)

(assert (=> d!2344747 (=> res!3099143 e!4606247)))

(assert (=> d!2344747 (= res!3099143 ((_ is ElementMatch!20783) lt!2671829))))

(assert (=> d!2344747 (= (validRegex!11197 lt!2671829) e!4606247)))

(declare-fun bm!720628 () Bool)

(assert (=> bm!720628 (= call!720635 (validRegex!11197 (ite c!1432875 (regTwo!42079 lt!2671829) (regTwo!42078 lt!2671829))))))

(assert (= (and d!2344747 (not res!3099143)) b!7774912))

(assert (= (and b!7774912 c!1432874) b!7774917))

(assert (= (and b!7774912 (not c!1432874)) b!7774914))

(assert (= (and b!7774917 res!3099144) b!7774919))

(assert (= (and b!7774914 c!1432875) b!7774920))

(assert (= (and b!7774914 (not c!1432875)) b!7774913))

(assert (= (and b!7774920 res!3099145) b!7774916))

(assert (= (and b!7774913 (not res!3099147)) b!7774918))

(assert (= (and b!7774918 res!3099146) b!7774915))

(assert (= (or b!7774920 b!7774918) bm!720629))

(assert (= (or b!7774916 b!7774915) bm!720628))

(assert (= (or b!7774919 bm!720629) bm!720630))

(declare-fun m!8226410 () Bool)

(assert (=> bm!720630 m!8226410))

(declare-fun m!8226412 () Bool)

(assert (=> b!7774917 m!8226412))

(declare-fun m!8226414 () Bool)

(assert (=> bm!720628 m!8226414))

(assert (=> b!7774618 d!2344747))

(declare-fun b!7774931 () Bool)

(declare-fun res!3099151 () Bool)

(declare-fun e!4606256 () Bool)

(assert (=> b!7774931 (=> (not res!3099151) (not e!4606256))))

(assert (=> b!7774931 (= res!3099151 (isEmpty!42163 (tail!15439 (t!388357 s!14292))))))

(declare-fun b!7774932 () Bool)

(assert (=> b!7774932 (= e!4606256 (= (head!15898 (t!388357 s!14292)) (c!1432792 lt!2671829)))))

(declare-fun b!7774933 () Bool)

(declare-fun res!3099154 () Bool)

(declare-fun e!4606259 () Bool)

(assert (=> b!7774933 (=> res!3099154 e!4606259)))

(assert (=> b!7774933 (= res!3099154 (not (isEmpty!42163 (tail!15439 (t!388357 s!14292)))))))

(declare-fun b!7774934 () Bool)

(declare-fun e!4606253 () Bool)

(declare-fun e!4606258 () Bool)

(assert (=> b!7774934 (= e!4606253 e!4606258)))

(declare-fun c!1432882 () Bool)

(assert (=> b!7774934 (= c!1432882 ((_ is EmptyLang!20783) lt!2671829))))

(declare-fun b!7774936 () Bool)

(declare-fun lt!2671852 () Bool)

(assert (=> b!7774936 (= e!4606258 (not lt!2671852))))

(declare-fun b!7774937 () Bool)

(declare-fun e!4606254 () Bool)

(declare-fun e!4606257 () Bool)

(assert (=> b!7774937 (= e!4606254 e!4606257)))

(declare-fun res!3099148 () Bool)

(assert (=> b!7774937 (=> (not res!3099148) (not e!4606257))))

(assert (=> b!7774937 (= res!3099148 (not lt!2671852))))

(declare-fun b!7774938 () Bool)

(declare-fun e!4606255 () Bool)

(assert (=> b!7774938 (= e!4606255 (nullable!9171 lt!2671829))))

(declare-fun bm!720635 () Bool)

(declare-fun call!720640 () Bool)

(assert (=> bm!720635 (= call!720640 (isEmpty!42163 (t!388357 s!14292)))))

(declare-fun b!7774939 () Bool)

(assert (=> b!7774939 (= e!4606255 (matchR!10243 (derivativeStep!6126 lt!2671829 (head!15898 (t!388357 s!14292))) (tail!15439 (t!388357 s!14292))))))

(declare-fun b!7774940 () Bool)

(declare-fun res!3099153 () Bool)

(assert (=> b!7774940 (=> res!3099153 e!4606254)))

(assert (=> b!7774940 (= res!3099153 (not ((_ is ElementMatch!20783) lt!2671829)))))

(assert (=> b!7774940 (= e!4606258 e!4606254)))

(declare-fun b!7774941 () Bool)

(declare-fun res!3099155 () Bool)

(assert (=> b!7774941 (=> res!3099155 e!4606254)))

(assert (=> b!7774941 (= res!3099155 e!4606256)))

(declare-fun res!3099150 () Bool)

(assert (=> b!7774941 (=> (not res!3099150) (not e!4606256))))

(assert (=> b!7774941 (= res!3099150 lt!2671852)))

(declare-fun b!7774942 () Bool)

(assert (=> b!7774942 (= e!4606259 (not (= (head!15898 (t!388357 s!14292)) (c!1432792 lt!2671829))))))

(declare-fun b!7774935 () Bool)

(assert (=> b!7774935 (= e!4606257 e!4606259)))

(declare-fun res!3099149 () Bool)

(assert (=> b!7774935 (=> res!3099149 e!4606259)))

(assert (=> b!7774935 (= res!3099149 call!720640)))

(declare-fun d!2344751 () Bool)

(assert (=> d!2344751 e!4606253))

(declare-fun c!1432883 () Bool)

(assert (=> d!2344751 (= c!1432883 ((_ is EmptyExpr!20783) lt!2671829))))

(assert (=> d!2344751 (= lt!2671852 e!4606255)))

(declare-fun c!1432881 () Bool)

(assert (=> d!2344751 (= c!1432881 (isEmpty!42163 (t!388357 s!14292)))))

(assert (=> d!2344751 (validRegex!11197 lt!2671829)))

(assert (=> d!2344751 (= (matchR!10243 lt!2671829 (t!388357 s!14292)) lt!2671852)))

(declare-fun b!7774943 () Bool)

(assert (=> b!7774943 (= e!4606253 (= lt!2671852 call!720640))))

(declare-fun b!7774944 () Bool)

(declare-fun res!3099152 () Bool)

(assert (=> b!7774944 (=> (not res!3099152) (not e!4606256))))

(assert (=> b!7774944 (= res!3099152 (not call!720640))))

(assert (= (and d!2344751 c!1432881) b!7774938))

(assert (= (and d!2344751 (not c!1432881)) b!7774939))

(assert (= (and d!2344751 c!1432883) b!7774943))

(assert (= (and d!2344751 (not c!1432883)) b!7774934))

(assert (= (and b!7774934 c!1432882) b!7774936))

(assert (= (and b!7774934 (not c!1432882)) b!7774940))

(assert (= (and b!7774940 (not res!3099153)) b!7774941))

(assert (= (and b!7774941 res!3099150) b!7774944))

(assert (= (and b!7774944 res!3099152) b!7774931))

(assert (= (and b!7774931 res!3099151) b!7774932))

(assert (= (and b!7774941 (not res!3099155)) b!7774937))

(assert (= (and b!7774937 res!3099148) b!7774935))

(assert (= (and b!7774935 (not res!3099149)) b!7774933))

(assert (= (and b!7774933 (not res!3099154)) b!7774942))

(assert (= (or b!7774943 b!7774935 b!7774944) bm!720635))

(assert (=> b!7774933 m!8226288))

(assert (=> b!7774933 m!8226288))

(assert (=> b!7774933 m!8226290))

(assert (=> bm!720635 m!8226292))

(assert (=> b!7774942 m!8226294))

(assert (=> b!7774931 m!8226288))

(assert (=> b!7774931 m!8226288))

(assert (=> b!7774931 m!8226290))

(declare-fun m!8226424 () Bool)

(assert (=> b!7774938 m!8226424))

(assert (=> b!7774932 m!8226294))

(assert (=> d!2344751 m!8226292))

(assert (=> d!2344751 m!8226272))

(assert (=> b!7774939 m!8226294))

(assert (=> b!7774939 m!8226294))

(declare-fun m!8226426 () Bool)

(assert (=> b!7774939 m!8226426))

(assert (=> b!7774939 m!8226288))

(assert (=> b!7774939 m!8226426))

(assert (=> b!7774939 m!8226288))

(declare-fun m!8226428 () Bool)

(assert (=> b!7774939 m!8226428))

(assert (=> b!7774618 d!2344751))

(declare-fun d!2344753 () Bool)

(declare-fun e!4606279 () Bool)

(assert (=> d!2344753 e!4606279))

(declare-fun res!3099161 () Bool)

(assert (=> d!2344753 (=> res!3099161 e!4606279)))

(assert (=> d!2344753 (= res!3099161 (matchR!10243 lt!2671829 (t!388357 s!14292)))))

(declare-fun lt!2671855 () Unit!168468)

(declare-fun choose!59479 (Regex!20783 Regex!20783 List!73622) Unit!168468)

(assert (=> d!2344753 (= lt!2671855 (choose!59479 lt!2671829 lt!2671826 (t!388357 s!14292)))))

(declare-fun e!4606280 () Bool)

(assert (=> d!2344753 e!4606280))

(declare-fun res!3099160 () Bool)

(assert (=> d!2344753 (=> (not res!3099160) (not e!4606280))))

(assert (=> d!2344753 (= res!3099160 (validRegex!11197 lt!2671829))))

(assert (=> d!2344753 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!358 lt!2671829 lt!2671826 (t!388357 s!14292)) lt!2671855)))

(declare-fun b!7775004 () Bool)

(assert (=> b!7775004 (= e!4606280 (validRegex!11197 lt!2671826))))

(declare-fun b!7775005 () Bool)

(assert (=> b!7775005 (= e!4606279 (matchR!10243 lt!2671826 (t!388357 s!14292)))))

(assert (= (and d!2344753 res!3099160) b!7775004))

(assert (= (and d!2344753 (not res!3099161)) b!7775005))

(assert (=> d!2344753 m!8226274))

(declare-fun m!8226430 () Bool)

(assert (=> d!2344753 m!8226430))

(assert (=> d!2344753 m!8226272))

(declare-fun m!8226432 () Bool)

(assert (=> b!7775004 m!8226432))

(assert (=> b!7775005 m!8226254))

(assert (=> b!7774618 d!2344753))

(declare-fun b!7775006 () Bool)

(declare-fun e!4606287 () Bool)

(declare-fun e!4606284 () Bool)

(assert (=> b!7775006 (= e!4606287 e!4606284)))

(declare-fun c!1432884 () Bool)

(assert (=> b!7775006 (= c!1432884 ((_ is Star!20783) r1!6279))))

(declare-fun b!7775007 () Bool)

(declare-fun res!3099166 () Bool)

(declare-fun e!4606281 () Bool)

(assert (=> b!7775007 (=> res!3099166 e!4606281)))

(assert (=> b!7775007 (= res!3099166 (not ((_ is Concat!29628) r1!6279)))))

(declare-fun e!4606286 () Bool)

(assert (=> b!7775007 (= e!4606286 e!4606281)))

(declare-fun b!7775008 () Bool)

(assert (=> b!7775008 (= e!4606284 e!4606286)))

(declare-fun c!1432885 () Bool)

(assert (=> b!7775008 (= c!1432885 ((_ is Union!20783) r1!6279))))

(declare-fun bm!720637 () Bool)

(declare-fun call!720641 () Bool)

(declare-fun call!720642 () Bool)

(assert (=> bm!720637 (= call!720641 call!720642)))

(declare-fun b!7775009 () Bool)

(declare-fun e!4606285 () Bool)

(declare-fun call!720643 () Bool)

(assert (=> b!7775009 (= e!4606285 call!720643)))

(declare-fun bm!720638 () Bool)

(assert (=> bm!720638 (= call!720642 (validRegex!11197 (ite c!1432884 (reg!21112 r1!6279) (ite c!1432885 (regOne!42079 r1!6279) (regOne!42078 r1!6279)))))))

(declare-fun b!7775010 () Bool)

(declare-fun e!4606282 () Bool)

(assert (=> b!7775010 (= e!4606282 call!720643)))

(declare-fun b!7775011 () Bool)

(declare-fun e!4606283 () Bool)

(assert (=> b!7775011 (= e!4606284 e!4606283)))

(declare-fun res!3099163 () Bool)

(assert (=> b!7775011 (= res!3099163 (not (nullable!9171 (reg!21112 r1!6279))))))

(assert (=> b!7775011 (=> (not res!3099163) (not e!4606283))))

(declare-fun b!7775012 () Bool)

(assert (=> b!7775012 (= e!4606281 e!4606285)))

(declare-fun res!3099165 () Bool)

(assert (=> b!7775012 (=> (not res!3099165) (not e!4606285))))

(assert (=> b!7775012 (= res!3099165 call!720641)))

(declare-fun b!7775013 () Bool)

(assert (=> b!7775013 (= e!4606283 call!720642)))

(declare-fun b!7775014 () Bool)

(declare-fun res!3099164 () Bool)

(assert (=> b!7775014 (=> (not res!3099164) (not e!4606282))))

(assert (=> b!7775014 (= res!3099164 call!720641)))

(assert (=> b!7775014 (= e!4606286 e!4606282)))

(declare-fun d!2344755 () Bool)

(declare-fun res!3099162 () Bool)

(assert (=> d!2344755 (=> res!3099162 e!4606287)))

(assert (=> d!2344755 (= res!3099162 ((_ is ElementMatch!20783) r1!6279))))

(assert (=> d!2344755 (= (validRegex!11197 r1!6279) e!4606287)))

(declare-fun bm!720636 () Bool)

(assert (=> bm!720636 (= call!720643 (validRegex!11197 (ite c!1432885 (regTwo!42079 r1!6279) (regTwo!42078 r1!6279))))))

(assert (= (and d!2344755 (not res!3099162)) b!7775006))

(assert (= (and b!7775006 c!1432884) b!7775011))

(assert (= (and b!7775006 (not c!1432884)) b!7775008))

(assert (= (and b!7775011 res!3099163) b!7775013))

(assert (= (and b!7775008 c!1432885) b!7775014))

(assert (= (and b!7775008 (not c!1432885)) b!7775007))

(assert (= (and b!7775014 res!3099164) b!7775010))

(assert (= (and b!7775007 (not res!3099166)) b!7775012))

(assert (= (and b!7775012 res!3099165) b!7775009))

(assert (= (or b!7775014 b!7775012) bm!720637))

(assert (= (or b!7775010 b!7775009) bm!720636))

(assert (= (or b!7775013 bm!720637) bm!720638))

(declare-fun m!8226434 () Bool)

(assert (=> bm!720638 m!8226434))

(declare-fun m!8226436 () Bool)

(assert (=> b!7775011 m!8226436))

(declare-fun m!8226438 () Bool)

(assert (=> bm!720636 m!8226438))

(assert (=> start!740222 d!2344755))

(declare-fun b!7775015 () Bool)

(declare-fun e!4606291 () Regex!20783)

(declare-fun call!720645 () Regex!20783)

(declare-fun call!720644 () Regex!20783)

(assert (=> b!7775015 (= e!4606291 (Union!20783 call!720645 call!720644))))

(declare-fun bm!720639 () Bool)

(declare-fun call!720646 () Regex!20783)

(declare-fun call!720647 () Regex!20783)

(assert (=> bm!720639 (= call!720646 call!720647)))

(declare-fun b!7775016 () Bool)

(declare-fun c!1432888 () Bool)

(assert (=> b!7775016 (= c!1432888 (nullable!9171 (regOne!42078 r2!6217)))))

(declare-fun e!4606289 () Regex!20783)

(declare-fun e!4606290 () Regex!20783)

(assert (=> b!7775016 (= e!4606289 e!4606290)))

(declare-fun b!7775017 () Bool)

(assert (=> b!7775017 (= e!4606290 (Union!20783 (Concat!29628 call!720645 (regTwo!42078 r2!6217)) call!720646))))

(declare-fun bm!720640 () Bool)

(declare-fun c!1432890 () Bool)

(declare-fun c!1432887 () Bool)

(assert (=> bm!720640 (= call!720644 (derivativeStep!6126 (ite c!1432887 (regTwo!42079 r2!6217) (ite c!1432890 (reg!21112 r2!6217) (ite c!1432888 (regTwo!42078 r2!6217) (regOne!42078 r2!6217)))) (h!79946 s!14292)))))

(declare-fun bm!720641 () Bool)

(assert (=> bm!720641 (= call!720645 (derivativeStep!6126 (ite c!1432887 (regOne!42079 r2!6217) (regOne!42078 r2!6217)) (h!79946 s!14292)))))

(declare-fun d!2344757 () Bool)

(declare-fun lt!2671856 () Regex!20783)

(assert (=> d!2344757 (validRegex!11197 lt!2671856)))

(declare-fun e!4606288 () Regex!20783)

(assert (=> d!2344757 (= lt!2671856 e!4606288)))

(declare-fun c!1432889 () Bool)

(assert (=> d!2344757 (= c!1432889 (or ((_ is EmptyExpr!20783) r2!6217) ((_ is EmptyLang!20783) r2!6217)))))

(assert (=> d!2344757 (validRegex!11197 r2!6217)))

(assert (=> d!2344757 (= (derivativeStep!6126 r2!6217 (h!79946 s!14292)) lt!2671856)))

(declare-fun b!7775018 () Bool)

(assert (=> b!7775018 (= e!4606291 e!4606289)))

(assert (=> b!7775018 (= c!1432890 ((_ is Star!20783) r2!6217))))

(declare-fun b!7775019 () Bool)

(assert (=> b!7775019 (= c!1432887 ((_ is Union!20783) r2!6217))))

(declare-fun e!4606292 () Regex!20783)

(assert (=> b!7775019 (= e!4606292 e!4606291)))

(declare-fun bm!720642 () Bool)

(assert (=> bm!720642 (= call!720647 call!720644)))

(declare-fun b!7775020 () Bool)

(assert (=> b!7775020 (= e!4606292 (ite (= (h!79946 s!14292) (c!1432792 r2!6217)) EmptyExpr!20783 EmptyLang!20783))))

(declare-fun b!7775021 () Bool)

(assert (=> b!7775021 (= e!4606288 e!4606292)))

(declare-fun c!1432886 () Bool)

(assert (=> b!7775021 (= c!1432886 ((_ is ElementMatch!20783) r2!6217))))

(declare-fun b!7775022 () Bool)

(assert (=> b!7775022 (= e!4606289 (Concat!29628 call!720647 r2!6217))))

(declare-fun b!7775023 () Bool)

(assert (=> b!7775023 (= e!4606290 (Union!20783 (Concat!29628 call!720646 (regTwo!42078 r2!6217)) EmptyLang!20783))))

(declare-fun b!7775024 () Bool)

(assert (=> b!7775024 (= e!4606288 EmptyLang!20783)))

(assert (= (and d!2344757 c!1432889) b!7775024))

(assert (= (and d!2344757 (not c!1432889)) b!7775021))

(assert (= (and b!7775021 c!1432886) b!7775020))

(assert (= (and b!7775021 (not c!1432886)) b!7775019))

(assert (= (and b!7775019 c!1432887) b!7775015))

(assert (= (and b!7775019 (not c!1432887)) b!7775018))

(assert (= (and b!7775018 c!1432890) b!7775022))

(assert (= (and b!7775018 (not c!1432890)) b!7775016))

(assert (= (and b!7775016 c!1432888) b!7775017))

(assert (= (and b!7775016 (not c!1432888)) b!7775023))

(assert (= (or b!7775017 b!7775023) bm!720639))

(assert (= (or b!7775022 bm!720639) bm!720642))

(assert (= (or b!7775015 bm!720642) bm!720640))

(assert (= (or b!7775015 b!7775017) bm!720641))

(declare-fun m!8226440 () Bool)

(assert (=> b!7775016 m!8226440))

(declare-fun m!8226442 () Bool)

(assert (=> bm!720640 m!8226442))

(declare-fun m!8226444 () Bool)

(assert (=> bm!720641 m!8226444))

(declare-fun m!8226446 () Bool)

(assert (=> d!2344757 m!8226446))

(assert (=> d!2344757 m!8226264))

(assert (=> b!7774614 d!2344757))

(declare-fun b!7775025 () Bool)

(declare-fun e!4606296 () Regex!20783)

(declare-fun call!720649 () Regex!20783)

(declare-fun call!720648 () Regex!20783)

(assert (=> b!7775025 (= e!4606296 (Union!20783 call!720649 call!720648))))

(declare-fun bm!720643 () Bool)

(declare-fun call!720650 () Regex!20783)

(declare-fun call!720651 () Regex!20783)

(assert (=> bm!720643 (= call!720650 call!720651)))

(declare-fun b!7775026 () Bool)

(declare-fun c!1432893 () Bool)

(assert (=> b!7775026 (= c!1432893 (nullable!9171 (regOne!42078 r1!6279)))))

(declare-fun e!4606294 () Regex!20783)

(declare-fun e!4606295 () Regex!20783)

(assert (=> b!7775026 (= e!4606294 e!4606295)))

(declare-fun b!7775027 () Bool)

(assert (=> b!7775027 (= e!4606295 (Union!20783 (Concat!29628 call!720649 (regTwo!42078 r1!6279)) call!720650))))

(declare-fun c!1432892 () Bool)

(declare-fun c!1432895 () Bool)

(declare-fun bm!720644 () Bool)

(assert (=> bm!720644 (= call!720648 (derivativeStep!6126 (ite c!1432892 (regTwo!42079 r1!6279) (ite c!1432895 (reg!21112 r1!6279) (ite c!1432893 (regTwo!42078 r1!6279) (regOne!42078 r1!6279)))) (h!79946 s!14292)))))

(declare-fun bm!720645 () Bool)

(assert (=> bm!720645 (= call!720649 (derivativeStep!6126 (ite c!1432892 (regOne!42079 r1!6279) (regOne!42078 r1!6279)) (h!79946 s!14292)))))

(declare-fun d!2344759 () Bool)

(declare-fun lt!2671857 () Regex!20783)

(assert (=> d!2344759 (validRegex!11197 lt!2671857)))

(declare-fun e!4606293 () Regex!20783)

(assert (=> d!2344759 (= lt!2671857 e!4606293)))

(declare-fun c!1432894 () Bool)

(assert (=> d!2344759 (= c!1432894 (or ((_ is EmptyExpr!20783) r1!6279) ((_ is EmptyLang!20783) r1!6279)))))

(assert (=> d!2344759 (validRegex!11197 r1!6279)))

(assert (=> d!2344759 (= (derivativeStep!6126 r1!6279 (h!79946 s!14292)) lt!2671857)))

(declare-fun b!7775028 () Bool)

(assert (=> b!7775028 (= e!4606296 e!4606294)))

(assert (=> b!7775028 (= c!1432895 ((_ is Star!20783) r1!6279))))

(declare-fun b!7775029 () Bool)

(assert (=> b!7775029 (= c!1432892 ((_ is Union!20783) r1!6279))))

(declare-fun e!4606297 () Regex!20783)

(assert (=> b!7775029 (= e!4606297 e!4606296)))

(declare-fun bm!720646 () Bool)

(assert (=> bm!720646 (= call!720651 call!720648)))

(declare-fun b!7775030 () Bool)

(assert (=> b!7775030 (= e!4606297 (ite (= (h!79946 s!14292) (c!1432792 r1!6279)) EmptyExpr!20783 EmptyLang!20783))))

(declare-fun b!7775031 () Bool)

(assert (=> b!7775031 (= e!4606293 e!4606297)))

(declare-fun c!1432891 () Bool)

(assert (=> b!7775031 (= c!1432891 ((_ is ElementMatch!20783) r1!6279))))

(declare-fun b!7775032 () Bool)

(assert (=> b!7775032 (= e!4606294 (Concat!29628 call!720651 r1!6279))))

(declare-fun b!7775033 () Bool)

(assert (=> b!7775033 (= e!4606295 (Union!20783 (Concat!29628 call!720650 (regTwo!42078 r1!6279)) EmptyLang!20783))))

(declare-fun b!7775034 () Bool)

(assert (=> b!7775034 (= e!4606293 EmptyLang!20783)))

(assert (= (and d!2344759 c!1432894) b!7775034))

(assert (= (and d!2344759 (not c!1432894)) b!7775031))

(assert (= (and b!7775031 c!1432891) b!7775030))

(assert (= (and b!7775031 (not c!1432891)) b!7775029))

(assert (= (and b!7775029 c!1432892) b!7775025))

(assert (= (and b!7775029 (not c!1432892)) b!7775028))

(assert (= (and b!7775028 c!1432895) b!7775032))

(assert (= (and b!7775028 (not c!1432895)) b!7775026))

(assert (= (and b!7775026 c!1432893) b!7775027))

(assert (= (and b!7775026 (not c!1432893)) b!7775033))

(assert (= (or b!7775027 b!7775033) bm!720643))

(assert (= (or b!7775032 bm!720643) bm!720646))

(assert (= (or b!7775025 bm!720646) bm!720644))

(assert (= (or b!7775025 b!7775027) bm!720645))

(declare-fun m!8226448 () Bool)

(assert (=> b!7775026 m!8226448))

(declare-fun m!8226450 () Bool)

(assert (=> bm!720644 m!8226450))

(declare-fun m!8226452 () Bool)

(assert (=> bm!720645 m!8226452))

(declare-fun m!8226454 () Bool)

(assert (=> d!2344759 m!8226454))

(assert (=> d!2344759 m!8226258))

(assert (=> b!7774614 d!2344759))

(declare-fun b!7775035 () Bool)

(declare-fun res!3099170 () Bool)

(declare-fun e!4606301 () Bool)

(assert (=> b!7775035 (=> (not res!3099170) (not e!4606301))))

(assert (=> b!7775035 (= res!3099170 (isEmpty!42163 (tail!15439 (t!388357 s!14292))))))

(declare-fun b!7775036 () Bool)

(assert (=> b!7775036 (= e!4606301 (= (head!15898 (t!388357 s!14292)) (c!1432792 lt!2671826)))))

(declare-fun b!7775037 () Bool)

(declare-fun res!3099173 () Bool)

(declare-fun e!4606304 () Bool)

(assert (=> b!7775037 (=> res!3099173 e!4606304)))

(assert (=> b!7775037 (= res!3099173 (not (isEmpty!42163 (tail!15439 (t!388357 s!14292)))))))

(declare-fun b!7775038 () Bool)

(declare-fun e!4606298 () Bool)

(declare-fun e!4606303 () Bool)

(assert (=> b!7775038 (= e!4606298 e!4606303)))

(declare-fun c!1432897 () Bool)

(assert (=> b!7775038 (= c!1432897 ((_ is EmptyLang!20783) lt!2671826))))

(declare-fun b!7775040 () Bool)

(declare-fun lt!2671858 () Bool)

(assert (=> b!7775040 (= e!4606303 (not lt!2671858))))

(declare-fun b!7775041 () Bool)

(declare-fun e!4606299 () Bool)

(declare-fun e!4606302 () Bool)

(assert (=> b!7775041 (= e!4606299 e!4606302)))

(declare-fun res!3099167 () Bool)

(assert (=> b!7775041 (=> (not res!3099167) (not e!4606302))))

(assert (=> b!7775041 (= res!3099167 (not lt!2671858))))

(declare-fun b!7775042 () Bool)

(declare-fun e!4606300 () Bool)

(assert (=> b!7775042 (= e!4606300 (nullable!9171 lt!2671826))))

(declare-fun bm!720647 () Bool)

(declare-fun call!720652 () Bool)

(assert (=> bm!720647 (= call!720652 (isEmpty!42163 (t!388357 s!14292)))))

(declare-fun b!7775043 () Bool)

(assert (=> b!7775043 (= e!4606300 (matchR!10243 (derivativeStep!6126 lt!2671826 (head!15898 (t!388357 s!14292))) (tail!15439 (t!388357 s!14292))))))

(declare-fun b!7775044 () Bool)

(declare-fun res!3099172 () Bool)

(assert (=> b!7775044 (=> res!3099172 e!4606299)))

(assert (=> b!7775044 (= res!3099172 (not ((_ is ElementMatch!20783) lt!2671826)))))

(assert (=> b!7775044 (= e!4606303 e!4606299)))

(declare-fun b!7775045 () Bool)

(declare-fun res!3099174 () Bool)

(assert (=> b!7775045 (=> res!3099174 e!4606299)))

(assert (=> b!7775045 (= res!3099174 e!4606301)))

(declare-fun res!3099169 () Bool)

(assert (=> b!7775045 (=> (not res!3099169) (not e!4606301))))

(assert (=> b!7775045 (= res!3099169 lt!2671858)))

(declare-fun b!7775046 () Bool)

(assert (=> b!7775046 (= e!4606304 (not (= (head!15898 (t!388357 s!14292)) (c!1432792 lt!2671826))))))

(declare-fun b!7775039 () Bool)

(assert (=> b!7775039 (= e!4606302 e!4606304)))

(declare-fun res!3099168 () Bool)

(assert (=> b!7775039 (=> res!3099168 e!4606304)))

(assert (=> b!7775039 (= res!3099168 call!720652)))

(declare-fun d!2344761 () Bool)

(assert (=> d!2344761 e!4606298))

(declare-fun c!1432898 () Bool)

(assert (=> d!2344761 (= c!1432898 ((_ is EmptyExpr!20783) lt!2671826))))

(assert (=> d!2344761 (= lt!2671858 e!4606300)))

(declare-fun c!1432896 () Bool)

(assert (=> d!2344761 (= c!1432896 (isEmpty!42163 (t!388357 s!14292)))))

(assert (=> d!2344761 (validRegex!11197 lt!2671826)))

(assert (=> d!2344761 (= (matchR!10243 lt!2671826 (t!388357 s!14292)) lt!2671858)))

(declare-fun b!7775047 () Bool)

(assert (=> b!7775047 (= e!4606298 (= lt!2671858 call!720652))))

(declare-fun b!7775048 () Bool)

(declare-fun res!3099171 () Bool)

(assert (=> b!7775048 (=> (not res!3099171) (not e!4606301))))

(assert (=> b!7775048 (= res!3099171 (not call!720652))))

(assert (= (and d!2344761 c!1432896) b!7775042))

(assert (= (and d!2344761 (not c!1432896)) b!7775043))

(assert (= (and d!2344761 c!1432898) b!7775047))

(assert (= (and d!2344761 (not c!1432898)) b!7775038))

(assert (= (and b!7775038 c!1432897) b!7775040))

(assert (= (and b!7775038 (not c!1432897)) b!7775044))

(assert (= (and b!7775044 (not res!3099172)) b!7775045))

(assert (= (and b!7775045 res!3099169) b!7775048))

(assert (= (and b!7775048 res!3099171) b!7775035))

(assert (= (and b!7775035 res!3099170) b!7775036))

(assert (= (and b!7775045 (not res!3099174)) b!7775041))

(assert (= (and b!7775041 res!3099167) b!7775039))

(assert (= (and b!7775039 (not res!3099168)) b!7775037))

(assert (= (and b!7775037 (not res!3099173)) b!7775046))

(assert (= (or b!7775047 b!7775039 b!7775048) bm!720647))

(assert (=> b!7775037 m!8226288))

(assert (=> b!7775037 m!8226288))

(assert (=> b!7775037 m!8226290))

(assert (=> bm!720647 m!8226292))

(assert (=> b!7775046 m!8226294))

(assert (=> b!7775035 m!8226288))

(assert (=> b!7775035 m!8226288))

(assert (=> b!7775035 m!8226290))

(declare-fun m!8226456 () Bool)

(assert (=> b!7775042 m!8226456))

(assert (=> b!7775036 m!8226294))

(assert (=> d!2344761 m!8226292))

(assert (=> d!2344761 m!8226432))

(assert (=> b!7775043 m!8226294))

(assert (=> b!7775043 m!8226294))

(declare-fun m!8226458 () Bool)

(assert (=> b!7775043 m!8226458))

(assert (=> b!7775043 m!8226288))

(assert (=> b!7775043 m!8226458))

(assert (=> b!7775043 m!8226288))

(declare-fun m!8226460 () Bool)

(assert (=> b!7775043 m!8226460))

(assert (=> b!7774619 d!2344761))

(declare-fun e!4606307 () Bool)

(assert (=> b!7774610 (= tp!2284570 e!4606307)))

(declare-fun b!7775061 () Bool)

(declare-fun tp!2284653 () Bool)

(assert (=> b!7775061 (= e!4606307 tp!2284653)))

(declare-fun b!7775059 () Bool)

(assert (=> b!7775059 (= e!4606307 tp_is_empty!51921)))

(declare-fun b!7775062 () Bool)

(declare-fun tp!2284651 () Bool)

(declare-fun tp!2284652 () Bool)

(assert (=> b!7775062 (= e!4606307 (and tp!2284651 tp!2284652))))

(declare-fun b!7775060 () Bool)

(declare-fun tp!2284655 () Bool)

(declare-fun tp!2284654 () Bool)

(assert (=> b!7775060 (= e!4606307 (and tp!2284655 tp!2284654))))

(assert (= (and b!7774610 ((_ is ElementMatch!20783) (regOne!42078 r1!6279))) b!7775059))

(assert (= (and b!7774610 ((_ is Concat!29628) (regOne!42078 r1!6279))) b!7775060))

(assert (= (and b!7774610 ((_ is Star!20783) (regOne!42078 r1!6279))) b!7775061))

(assert (= (and b!7774610 ((_ is Union!20783) (regOne!42078 r1!6279))) b!7775062))

(declare-fun e!4606308 () Bool)

(assert (=> b!7774610 (= tp!2284576 e!4606308)))

(declare-fun b!7775065 () Bool)

(declare-fun tp!2284658 () Bool)

(assert (=> b!7775065 (= e!4606308 tp!2284658)))

(declare-fun b!7775063 () Bool)

(assert (=> b!7775063 (= e!4606308 tp_is_empty!51921)))

(declare-fun b!7775066 () Bool)

(declare-fun tp!2284656 () Bool)

(declare-fun tp!2284657 () Bool)

(assert (=> b!7775066 (= e!4606308 (and tp!2284656 tp!2284657))))

(declare-fun b!7775064 () Bool)

(declare-fun tp!2284660 () Bool)

(declare-fun tp!2284659 () Bool)

(assert (=> b!7775064 (= e!4606308 (and tp!2284660 tp!2284659))))

(assert (= (and b!7774610 ((_ is ElementMatch!20783) (regTwo!42078 r1!6279))) b!7775063))

(assert (= (and b!7774610 ((_ is Concat!29628) (regTwo!42078 r1!6279))) b!7775064))

(assert (= (and b!7774610 ((_ is Star!20783) (regTwo!42078 r1!6279))) b!7775065))

(assert (= (and b!7774610 ((_ is Union!20783) (regTwo!42078 r1!6279))) b!7775066))

(declare-fun e!4606309 () Bool)

(assert (=> b!7774616 (= tp!2284567 e!4606309)))

(declare-fun b!7775069 () Bool)

(declare-fun tp!2284663 () Bool)

(assert (=> b!7775069 (= e!4606309 tp!2284663)))

(declare-fun b!7775067 () Bool)

(assert (=> b!7775067 (= e!4606309 tp_is_empty!51921)))

(declare-fun b!7775070 () Bool)

(declare-fun tp!2284661 () Bool)

(declare-fun tp!2284662 () Bool)

(assert (=> b!7775070 (= e!4606309 (and tp!2284661 tp!2284662))))

(declare-fun b!7775068 () Bool)

(declare-fun tp!2284665 () Bool)

(declare-fun tp!2284664 () Bool)

(assert (=> b!7775068 (= e!4606309 (and tp!2284665 tp!2284664))))

(assert (= (and b!7774616 ((_ is ElementMatch!20783) (regOne!42079 r2!6217))) b!7775067))

(assert (= (and b!7774616 ((_ is Concat!29628) (regOne!42079 r2!6217))) b!7775068))

(assert (= (and b!7774616 ((_ is Star!20783) (regOne!42079 r2!6217))) b!7775069))

(assert (= (and b!7774616 ((_ is Union!20783) (regOne!42079 r2!6217))) b!7775070))

(declare-fun e!4606310 () Bool)

(assert (=> b!7774616 (= tp!2284568 e!4606310)))

(declare-fun b!7775073 () Bool)

(declare-fun tp!2284668 () Bool)

(assert (=> b!7775073 (= e!4606310 tp!2284668)))

(declare-fun b!7775071 () Bool)

(assert (=> b!7775071 (= e!4606310 tp_is_empty!51921)))

(declare-fun b!7775074 () Bool)

(declare-fun tp!2284666 () Bool)

(declare-fun tp!2284667 () Bool)

(assert (=> b!7775074 (= e!4606310 (and tp!2284666 tp!2284667))))

(declare-fun b!7775072 () Bool)

(declare-fun tp!2284670 () Bool)

(declare-fun tp!2284669 () Bool)

(assert (=> b!7775072 (= e!4606310 (and tp!2284670 tp!2284669))))

(assert (= (and b!7774616 ((_ is ElementMatch!20783) (regTwo!42079 r2!6217))) b!7775071))

(assert (= (and b!7774616 ((_ is Concat!29628) (regTwo!42079 r2!6217))) b!7775072))

(assert (= (and b!7774616 ((_ is Star!20783) (regTwo!42079 r2!6217))) b!7775073))

(assert (= (and b!7774616 ((_ is Union!20783) (regTwo!42079 r2!6217))) b!7775074))

(declare-fun e!4606311 () Bool)

(assert (=> b!7774607 (= tp!2284569 e!4606311)))

(declare-fun b!7775077 () Bool)

(declare-fun tp!2284673 () Bool)

(assert (=> b!7775077 (= e!4606311 tp!2284673)))

(declare-fun b!7775075 () Bool)

(assert (=> b!7775075 (= e!4606311 tp_is_empty!51921)))

(declare-fun b!7775078 () Bool)

(declare-fun tp!2284671 () Bool)

(declare-fun tp!2284672 () Bool)

(assert (=> b!7775078 (= e!4606311 (and tp!2284671 tp!2284672))))

(declare-fun b!7775076 () Bool)

(declare-fun tp!2284675 () Bool)

(declare-fun tp!2284674 () Bool)

(assert (=> b!7775076 (= e!4606311 (and tp!2284675 tp!2284674))))

(assert (= (and b!7774607 ((_ is ElementMatch!20783) (reg!21112 r1!6279))) b!7775075))

(assert (= (and b!7774607 ((_ is Concat!29628) (reg!21112 r1!6279))) b!7775076))

(assert (= (and b!7774607 ((_ is Star!20783) (reg!21112 r1!6279))) b!7775077))

(assert (= (and b!7774607 ((_ is Union!20783) (reg!21112 r1!6279))) b!7775078))

(declare-fun e!4606312 () Bool)

(assert (=> b!7774608 (= tp!2284573 e!4606312)))

(declare-fun b!7775081 () Bool)

(declare-fun tp!2284678 () Bool)

(assert (=> b!7775081 (= e!4606312 tp!2284678)))

(declare-fun b!7775079 () Bool)

(assert (=> b!7775079 (= e!4606312 tp_is_empty!51921)))

(declare-fun b!7775082 () Bool)

(declare-fun tp!2284676 () Bool)

(declare-fun tp!2284677 () Bool)

(assert (=> b!7775082 (= e!4606312 (and tp!2284676 tp!2284677))))

(declare-fun b!7775080 () Bool)

(declare-fun tp!2284680 () Bool)

(declare-fun tp!2284679 () Bool)

(assert (=> b!7775080 (= e!4606312 (and tp!2284680 tp!2284679))))

(assert (= (and b!7774608 ((_ is ElementMatch!20783) (reg!21112 r2!6217))) b!7775079))

(assert (= (and b!7774608 ((_ is Concat!29628) (reg!21112 r2!6217))) b!7775080))

(assert (= (and b!7774608 ((_ is Star!20783) (reg!21112 r2!6217))) b!7775081))

(assert (= (and b!7774608 ((_ is Union!20783) (reg!21112 r2!6217))) b!7775082))

(declare-fun b!7775087 () Bool)

(declare-fun e!4606315 () Bool)

(declare-fun tp!2284683 () Bool)

(assert (=> b!7775087 (= e!4606315 (and tp_is_empty!51921 tp!2284683))))

(assert (=> b!7774613 (= tp!2284574 e!4606315)))

(assert (= (and b!7774613 ((_ is Cons!73498) (t!388357 s!14292))) b!7775087))

(declare-fun e!4606316 () Bool)

(assert (=> b!7774620 (= tp!2284572 e!4606316)))

(declare-fun b!7775090 () Bool)

(declare-fun tp!2284686 () Bool)

(assert (=> b!7775090 (= e!4606316 tp!2284686)))

(declare-fun b!7775088 () Bool)

(assert (=> b!7775088 (= e!4606316 tp_is_empty!51921)))

(declare-fun b!7775091 () Bool)

(declare-fun tp!2284684 () Bool)

(declare-fun tp!2284685 () Bool)

(assert (=> b!7775091 (= e!4606316 (and tp!2284684 tp!2284685))))

(declare-fun b!7775089 () Bool)

(declare-fun tp!2284688 () Bool)

(declare-fun tp!2284687 () Bool)

(assert (=> b!7775089 (= e!4606316 (and tp!2284688 tp!2284687))))

(assert (= (and b!7774620 ((_ is ElementMatch!20783) (regOne!42079 r1!6279))) b!7775088))

(assert (= (and b!7774620 ((_ is Concat!29628) (regOne!42079 r1!6279))) b!7775089))

(assert (= (and b!7774620 ((_ is Star!20783) (regOne!42079 r1!6279))) b!7775090))

(assert (= (and b!7774620 ((_ is Union!20783) (regOne!42079 r1!6279))) b!7775091))

(declare-fun e!4606317 () Bool)

(assert (=> b!7774620 (= tp!2284571 e!4606317)))

(declare-fun b!7775094 () Bool)

(declare-fun tp!2284691 () Bool)

(assert (=> b!7775094 (= e!4606317 tp!2284691)))

(declare-fun b!7775092 () Bool)

(assert (=> b!7775092 (= e!4606317 tp_is_empty!51921)))

(declare-fun b!7775095 () Bool)

(declare-fun tp!2284689 () Bool)

(declare-fun tp!2284690 () Bool)

(assert (=> b!7775095 (= e!4606317 (and tp!2284689 tp!2284690))))

(declare-fun b!7775093 () Bool)

(declare-fun tp!2284693 () Bool)

(declare-fun tp!2284692 () Bool)

(assert (=> b!7775093 (= e!4606317 (and tp!2284693 tp!2284692))))

(assert (= (and b!7774620 ((_ is ElementMatch!20783) (regTwo!42079 r1!6279))) b!7775092))

(assert (= (and b!7774620 ((_ is Concat!29628) (regTwo!42079 r1!6279))) b!7775093))

(assert (= (and b!7774620 ((_ is Star!20783) (regTwo!42079 r1!6279))) b!7775094))

(assert (= (and b!7774620 ((_ is Union!20783) (regTwo!42079 r1!6279))) b!7775095))

(declare-fun e!4606318 () Bool)

(assert (=> b!7774609 (= tp!2284577 e!4606318)))

(declare-fun b!7775098 () Bool)

(declare-fun tp!2284696 () Bool)

(assert (=> b!7775098 (= e!4606318 tp!2284696)))

(declare-fun b!7775096 () Bool)

(assert (=> b!7775096 (= e!4606318 tp_is_empty!51921)))

(declare-fun b!7775099 () Bool)

(declare-fun tp!2284694 () Bool)

(declare-fun tp!2284695 () Bool)

(assert (=> b!7775099 (= e!4606318 (and tp!2284694 tp!2284695))))

(declare-fun b!7775097 () Bool)

(declare-fun tp!2284698 () Bool)

(declare-fun tp!2284697 () Bool)

(assert (=> b!7775097 (= e!4606318 (and tp!2284698 tp!2284697))))

(assert (= (and b!7774609 ((_ is ElementMatch!20783) (regOne!42078 r2!6217))) b!7775096))

(assert (= (and b!7774609 ((_ is Concat!29628) (regOne!42078 r2!6217))) b!7775097))

(assert (= (and b!7774609 ((_ is Star!20783) (regOne!42078 r2!6217))) b!7775098))

(assert (= (and b!7774609 ((_ is Union!20783) (regOne!42078 r2!6217))) b!7775099))

(declare-fun e!4606319 () Bool)

(assert (=> b!7774609 (= tp!2284575 e!4606319)))

(declare-fun b!7775102 () Bool)

(declare-fun tp!2284701 () Bool)

(assert (=> b!7775102 (= e!4606319 tp!2284701)))

(declare-fun b!7775100 () Bool)

(assert (=> b!7775100 (= e!4606319 tp_is_empty!51921)))

(declare-fun b!7775103 () Bool)

(declare-fun tp!2284699 () Bool)

(declare-fun tp!2284700 () Bool)

(assert (=> b!7775103 (= e!4606319 (and tp!2284699 tp!2284700))))

(declare-fun b!7775101 () Bool)

(declare-fun tp!2284703 () Bool)

(declare-fun tp!2284702 () Bool)

(assert (=> b!7775101 (= e!4606319 (and tp!2284703 tp!2284702))))

(assert (= (and b!7774609 ((_ is ElementMatch!20783) (regTwo!42078 r2!6217))) b!7775100))

(assert (= (and b!7774609 ((_ is Concat!29628) (regTwo!42078 r2!6217))) b!7775101))

(assert (= (and b!7774609 ((_ is Star!20783) (regTwo!42078 r2!6217))) b!7775102))

(assert (= (and b!7774609 ((_ is Union!20783) (regTwo!42078 r2!6217))) b!7775103))

(check-sat (not d!2344751) (not b!7775043) (not b!7775064) (not b!7775046) (not b!7775004) (not b!7775070) (not bm!720598) (not b!7775026) (not b!7775093) (not b!7774892) (not b!7775087) (not b!7774886) (not d!2344725) (not b!7775042) (not d!2344761) (not b!7775098) (not bm!720628) (not d!2344717) (not bm!720599) (not b!7775068) (not b!7774933) (not bm!720579) (not b!7775082) (not b!7775011) (not b!7774714) (not b!7774891) (not bm!720644) (not b!7775036) (not d!2344743) (not b!7775099) (not b!7774884) (not b!7775062) (not bm!720636) (not b!7774917) (not b!7775094) (not b!7774939) (not bm!720624) (not d!2344757) (not b!7775090) (not b!7775035) (not b!7775103) tp_is_empty!51921 (not bm!720630) (not b!7775073) (not b!7775078) (not bm!720641) (not b!7775072) (not d!2344753) (not b!7775076) (not b!7775077) (not b!7775091) (not bm!720645) (not b!7774776) (not b!7775060) (not b!7774866) (not b!7775074) (not bm!720626) (not b!7774885) (not b!7775061) (not b!7774895) (not b!7775089) (not b!7774931) (not b!7775080) (not b!7774715) (not bm!720638) (not b!7775101) (not d!2344721) (not bm!720640) (not b!7775065) (not bm!720647) (not b!7774718) (not b!7774938) (not b!7775005) (not b!7775102) (not b!7775095) (not b!7774707) (not b!7775066) (not b!7774709) (not bm!720622) (not b!7775037) (not b!7774942) (not b!7774932) (not b!7775016) (not b!7775069) (not b!7775097) (not bm!720635) (not b!7774708) (not b!7775081) (not d!2344759))
(check-sat)
