; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!284212 () Bool)

(assert start!284212)

(declare-fun b!2917778 () Bool)

(assert (=> b!2917778 true))

(assert (=> b!2917778 true))

(declare-fun lambda!108576 () Int)

(declare-fun lambda!108575 () Int)

(assert (=> b!2917778 (not (= lambda!108576 lambda!108575))))

(assert (=> b!2917778 true))

(assert (=> b!2917778 true))

(declare-fun b!2917770 () Bool)

(declare-fun e!1840999 () Bool)

(declare-fun e!1840998 () Bool)

(assert (=> b!2917770 (= e!1840999 e!1840998)))

(declare-fun res!1204596 () Bool)

(assert (=> b!2917770 (=> res!1204596 e!1840998)))

(declare-datatypes ((C!18148 0))(
  ( (C!18149 (val!11110 Int)) )
))
(declare-datatypes ((Regex!8981 0))(
  ( (ElementMatch!8981 (c!475943 C!18148)) (Concat!14302 (regOne!18474 Regex!8981) (regTwo!18474 Regex!8981)) (EmptyExpr!8981) (Star!8981 (reg!9310 Regex!8981)) (EmptyLang!8981) (Union!8981 (regOne!18475 Regex!8981) (regTwo!18475 Regex!8981)) )
))
(declare-fun lt!1025161 () Regex!8981)

(declare-fun validRegex!3714 (Regex!8981) Bool)

(assert (=> b!2917770 (= res!1204596 (not (validRegex!3714 lt!1025161)))))

(declare-fun lt!1025157 () Regex!8981)

(declare-datatypes ((List!34846 0))(
  ( (Nil!34722) (Cons!34722 (h!40142 C!18148) (t!233911 List!34846)) )
))
(declare-datatypes ((tuple2!33700 0))(
  ( (tuple2!33701 (_1!19982 List!34846) (_2!19982 List!34846)) )
))
(declare-fun lt!1025159 () tuple2!33700)

(declare-fun matchR!3863 (Regex!8981 List!34846) Bool)

(assert (=> b!2917770 (matchR!3863 lt!1025157 (_2!19982 lt!1025159))))

(declare-fun r!17423 () Regex!8981)

(declare-fun simplify!18 (Regex!8981) Regex!8981)

(assert (=> b!2917770 (= lt!1025157 (simplify!18 (regTwo!18474 r!17423)))))

(declare-datatypes ((Unit!48301 0))(
  ( (Unit!48302) )
))
(declare-fun lt!1025160 () Unit!48301)

(declare-fun lemmaSimplifySound!16 (Regex!8981 List!34846) Unit!48301)

(assert (=> b!2917770 (= lt!1025160 (lemmaSimplifySound!16 (regTwo!18474 r!17423) (_2!19982 lt!1025159)))))

(assert (=> b!2917770 (matchR!3863 lt!1025161 (_1!19982 lt!1025159))))

(assert (=> b!2917770 (= lt!1025161 (simplify!18 (regOne!18474 r!17423)))))

(declare-fun lt!1025156 () Unit!48301)

(assert (=> b!2917770 (= lt!1025156 (lemmaSimplifySound!16 (regOne!18474 r!17423) (_1!19982 lt!1025159)))))

(declare-fun b!2917771 () Bool)

(declare-fun e!1841000 () Bool)

(declare-fun tp!936674 () Bool)

(assert (=> b!2917771 (= e!1841000 tp!936674)))

(declare-fun b!2917772 () Bool)

(declare-fun tp!936673 () Bool)

(declare-fun tp!936675 () Bool)

(assert (=> b!2917772 (= e!1841000 (and tp!936673 tp!936675))))

(declare-fun b!2917773 () Bool)

(declare-fun res!1204595 () Bool)

(assert (=> b!2917773 (=> res!1204595 e!1840998)))

(assert (=> b!2917773 (= res!1204595 (not (validRegex!3714 lt!1025157)))))

(declare-fun b!2917774 () Bool)

(assert (=> b!2917774 (= e!1840998 (validRegex!3714 (simplify!18 r!17423)))))

(declare-fun ++!8287 (List!34846 List!34846) List!34846)

(assert (=> b!2917774 (matchR!3863 (Concat!14302 lt!1025161 lt!1025157) (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159)))))

(declare-fun lt!1025163 () Unit!48301)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!150 (Regex!8981 Regex!8981 List!34846 List!34846) Unit!48301)

(assert (=> b!2917774 (= lt!1025163 (lemmaTwoRegexMatchThenConcatMatchesConcatString!150 lt!1025161 lt!1025157 (_1!19982 lt!1025159) (_2!19982 lt!1025159)))))

(declare-fun b!2917775 () Bool)

(declare-fun res!1204600 () Bool)

(declare-fun e!1841001 () Bool)

(assert (=> b!2917775 (=> res!1204600 e!1841001)))

(declare-fun s!11993 () List!34846)

(declare-fun isEmpty!18979 (List!34846) Bool)

(assert (=> b!2917775 (= res!1204600 (isEmpty!18979 s!11993))))

(declare-fun b!2917776 () Bool)

(declare-fun tp_is_empty!15525 () Bool)

(assert (=> b!2917776 (= e!1841000 tp_is_empty!15525)))

(assert (=> b!2917778 (= e!1841001 e!1840999)))

(declare-fun res!1204599 () Bool)

(assert (=> b!2917778 (=> res!1204599 e!1840999)))

(assert (=> b!2917778 (= res!1204599 (not (matchR!3863 (regOne!18474 r!17423) (_1!19982 lt!1025159))))))

(declare-datatypes ((Option!6582 0))(
  ( (None!6581) (Some!6581 (v!34715 tuple2!33700)) )
))
(declare-fun lt!1025165 () Option!6582)

(declare-fun get!10573 (Option!6582) tuple2!33700)

(assert (=> b!2917778 (= lt!1025159 (get!10573 lt!1025165))))

(declare-fun Exists!1361 (Int) Bool)

(assert (=> b!2917778 (= (Exists!1361 lambda!108575) (Exists!1361 lambda!108576))))

(declare-fun lt!1025155 () Unit!48301)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!502 (Regex!8981 Regex!8981 List!34846) Unit!48301)

(assert (=> b!2917778 (= lt!1025155 (lemmaExistCutMatchRandMatchRSpecEquivalent!502 (regOne!18474 r!17423) (regTwo!18474 r!17423) s!11993))))

(declare-fun isDefined!5133 (Option!6582) Bool)

(assert (=> b!2917778 (= (isDefined!5133 lt!1025165) (Exists!1361 lambda!108575))))

(declare-fun findConcatSeparation!976 (Regex!8981 Regex!8981 List!34846 List!34846 List!34846) Option!6582)

(assert (=> b!2917778 (= lt!1025165 (findConcatSeparation!976 (regOne!18474 r!17423) (regTwo!18474 r!17423) Nil!34722 s!11993 s!11993))))

(declare-fun lt!1025158 () Unit!48301)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!758 (Regex!8981 Regex!8981 List!34846) Unit!48301)

(assert (=> b!2917778 (= lt!1025158 (lemmaFindConcatSeparationEquivalentToExists!758 (regOne!18474 r!17423) (regTwo!18474 r!17423) s!11993))))

(declare-fun b!2917779 () Bool)

(declare-fun tp!936676 () Bool)

(declare-fun tp!936672 () Bool)

(assert (=> b!2917779 (= e!1841000 (and tp!936676 tp!936672))))

(declare-fun b!2917780 () Bool)

(declare-fun e!1840997 () Bool)

(declare-fun tp!936677 () Bool)

(assert (=> b!2917780 (= e!1840997 (and tp_is_empty!15525 tp!936677))))

(declare-fun b!2917781 () Bool)

(declare-fun e!1840996 () Bool)

(assert (=> b!2917781 (= e!1840996 (not e!1841001))))

(declare-fun res!1204594 () Bool)

(assert (=> b!2917781 (=> res!1204594 e!1841001)))

(declare-fun lt!1025162 () Bool)

(get-info :version)

(assert (=> b!2917781 (= res!1204594 (or (not lt!1025162) (not ((_ is Concat!14302) r!17423))))))

(declare-fun matchRSpec!1118 (Regex!8981 List!34846) Bool)

(assert (=> b!2917781 (= lt!1025162 (matchRSpec!1118 r!17423 s!11993))))

(assert (=> b!2917781 (= lt!1025162 (matchR!3863 r!17423 s!11993))))

(declare-fun lt!1025164 () Unit!48301)

(declare-fun mainMatchTheorem!1118 (Regex!8981 List!34846) Unit!48301)

(assert (=> b!2917781 (= lt!1025164 (mainMatchTheorem!1118 r!17423 s!11993))))

(declare-fun b!2917777 () Bool)

(declare-fun res!1204598 () Bool)

(assert (=> b!2917777 (=> res!1204598 e!1840999)))

(assert (=> b!2917777 (= res!1204598 (not (matchR!3863 (regTwo!18474 r!17423) (_2!19982 lt!1025159))))))

(declare-fun res!1204597 () Bool)

(assert (=> start!284212 (=> (not res!1204597) (not e!1840996))))

(assert (=> start!284212 (= res!1204597 (validRegex!3714 r!17423))))

(assert (=> start!284212 e!1840996))

(assert (=> start!284212 e!1841000))

(assert (=> start!284212 e!1840997))

(assert (= (and start!284212 res!1204597) b!2917781))

(assert (= (and b!2917781 (not res!1204594)) b!2917775))

(assert (= (and b!2917775 (not res!1204600)) b!2917778))

(assert (= (and b!2917778 (not res!1204599)) b!2917777))

(assert (= (and b!2917777 (not res!1204598)) b!2917770))

(assert (= (and b!2917770 (not res!1204596)) b!2917773))

(assert (= (and b!2917773 (not res!1204595)) b!2917774))

(assert (= (and start!284212 ((_ is ElementMatch!8981) r!17423)) b!2917776))

(assert (= (and start!284212 ((_ is Concat!14302) r!17423)) b!2917772))

(assert (= (and start!284212 ((_ is Star!8981) r!17423)) b!2917771))

(assert (= (and start!284212 ((_ is Union!8981) r!17423)) b!2917779))

(assert (= (and start!284212 ((_ is Cons!34722) s!11993)) b!2917780))

(declare-fun m!3315739 () Bool)

(assert (=> b!2917770 m!3315739))

(declare-fun m!3315741 () Bool)

(assert (=> b!2917770 m!3315741))

(declare-fun m!3315743 () Bool)

(assert (=> b!2917770 m!3315743))

(declare-fun m!3315745 () Bool)

(assert (=> b!2917770 m!3315745))

(declare-fun m!3315747 () Bool)

(assert (=> b!2917770 m!3315747))

(declare-fun m!3315749 () Bool)

(assert (=> b!2917770 m!3315749))

(declare-fun m!3315751 () Bool)

(assert (=> b!2917770 m!3315751))

(declare-fun m!3315753 () Bool)

(assert (=> b!2917777 m!3315753))

(declare-fun m!3315755 () Bool)

(assert (=> b!2917781 m!3315755))

(declare-fun m!3315757 () Bool)

(assert (=> b!2917781 m!3315757))

(declare-fun m!3315759 () Bool)

(assert (=> b!2917781 m!3315759))

(declare-fun m!3315761 () Bool)

(assert (=> b!2917778 m!3315761))

(declare-fun m!3315763 () Bool)

(assert (=> b!2917778 m!3315763))

(declare-fun m!3315765 () Bool)

(assert (=> b!2917778 m!3315765))

(declare-fun m!3315767 () Bool)

(assert (=> b!2917778 m!3315767))

(declare-fun m!3315769 () Bool)

(assert (=> b!2917778 m!3315769))

(assert (=> b!2917778 m!3315763))

(declare-fun m!3315771 () Bool)

(assert (=> b!2917778 m!3315771))

(declare-fun m!3315773 () Bool)

(assert (=> b!2917778 m!3315773))

(declare-fun m!3315775 () Bool)

(assert (=> b!2917778 m!3315775))

(declare-fun m!3315777 () Bool)

(assert (=> start!284212 m!3315777))

(declare-fun m!3315779 () Bool)

(assert (=> b!2917774 m!3315779))

(declare-fun m!3315781 () Bool)

(assert (=> b!2917774 m!3315781))

(declare-fun m!3315783 () Bool)

(assert (=> b!2917774 m!3315783))

(assert (=> b!2917774 m!3315779))

(declare-fun m!3315785 () Bool)

(assert (=> b!2917774 m!3315785))

(declare-fun m!3315787 () Bool)

(assert (=> b!2917774 m!3315787))

(assert (=> b!2917774 m!3315781))

(declare-fun m!3315789 () Bool)

(assert (=> b!2917775 m!3315789))

(declare-fun m!3315791 () Bool)

(assert (=> b!2917773 m!3315791))

(check-sat (not b!2917771) (not b!2917781) (not start!284212) (not b!2917772) (not b!2917777) (not b!2917773) (not b!2917775) (not b!2917774) (not b!2917780) (not b!2917770) tp_is_empty!15525 (not b!2917778) (not b!2917779))
(check-sat)
(get-model)

(declare-fun b!2917883 () Bool)

(declare-fun res!1204657 () Bool)

(declare-fun e!1841063 () Bool)

(assert (=> b!2917883 (=> res!1204657 e!1841063)))

(declare-fun tail!4710 (List!34846) List!34846)

(assert (=> b!2917883 (= res!1204657 (not (isEmpty!18979 (tail!4710 (_2!19982 lt!1025159)))))))

(declare-fun b!2917884 () Bool)

(declare-fun e!1841061 () Bool)

(assert (=> b!2917884 (= e!1841061 e!1841063)))

(declare-fun res!1204663 () Bool)

(assert (=> b!2917884 (=> res!1204663 e!1841063)))

(declare-fun call!190739 () Bool)

(assert (=> b!2917884 (= res!1204663 call!190739)))

(declare-fun b!2917885 () Bool)

(declare-fun e!1841058 () Bool)

(declare-fun derivativeStep!2425 (Regex!8981 C!18148) Regex!8981)

(declare-fun head!6484 (List!34846) C!18148)

(assert (=> b!2917885 (= e!1841058 (matchR!3863 (derivativeStep!2425 (regTwo!18474 r!17423) (head!6484 (_2!19982 lt!1025159))) (tail!4710 (_2!19982 lt!1025159))))))

(declare-fun b!2917886 () Bool)

(assert (=> b!2917886 (= e!1841063 (not (= (head!6484 (_2!19982 lt!1025159)) (c!475943 (regTwo!18474 r!17423)))))))

(declare-fun d!838280 () Bool)

(declare-fun e!1841064 () Bool)

(assert (=> d!838280 e!1841064))

(declare-fun c!475966 () Bool)

(assert (=> d!838280 (= c!475966 ((_ is EmptyExpr!8981) (regTwo!18474 r!17423)))))

(declare-fun lt!1025175 () Bool)

(assert (=> d!838280 (= lt!1025175 e!1841058)))

(declare-fun c!475967 () Bool)

(assert (=> d!838280 (= c!475967 (isEmpty!18979 (_2!19982 lt!1025159)))))

(assert (=> d!838280 (validRegex!3714 (regTwo!18474 r!17423))))

(assert (=> d!838280 (= (matchR!3863 (regTwo!18474 r!17423) (_2!19982 lt!1025159)) lt!1025175)))

(declare-fun b!2917887 () Bool)

(declare-fun e!1841062 () Bool)

(assert (=> b!2917887 (= e!1841062 e!1841061)))

(declare-fun res!1204659 () Bool)

(assert (=> b!2917887 (=> (not res!1204659) (not e!1841061))))

(assert (=> b!2917887 (= res!1204659 (not lt!1025175))))

(declare-fun b!2917888 () Bool)

(declare-fun e!1841059 () Bool)

(assert (=> b!2917888 (= e!1841059 (not lt!1025175))))

(declare-fun b!2917889 () Bool)

(declare-fun nullable!2811 (Regex!8981) Bool)

(assert (=> b!2917889 (= e!1841058 (nullable!2811 (regTwo!18474 r!17423)))))

(declare-fun b!2917890 () Bool)

(declare-fun res!1204662 () Bool)

(declare-fun e!1841060 () Bool)

(assert (=> b!2917890 (=> (not res!1204662) (not e!1841060))))

(assert (=> b!2917890 (= res!1204662 (isEmpty!18979 (tail!4710 (_2!19982 lt!1025159))))))

(declare-fun b!2917891 () Bool)

(assert (=> b!2917891 (= e!1841064 e!1841059)))

(declare-fun c!475965 () Bool)

(assert (=> b!2917891 (= c!475965 ((_ is EmptyLang!8981) (regTwo!18474 r!17423)))))

(declare-fun b!2917892 () Bool)

(declare-fun res!1204661 () Bool)

(assert (=> b!2917892 (=> (not res!1204661) (not e!1841060))))

(assert (=> b!2917892 (= res!1204661 (not call!190739))))

(declare-fun b!2917893 () Bool)

(declare-fun res!1204656 () Bool)

(assert (=> b!2917893 (=> res!1204656 e!1841062)))

(assert (=> b!2917893 (= res!1204656 (not ((_ is ElementMatch!8981) (regTwo!18474 r!17423))))))

(assert (=> b!2917893 (= e!1841059 e!1841062)))

(declare-fun b!2917894 () Bool)

(assert (=> b!2917894 (= e!1841060 (= (head!6484 (_2!19982 lt!1025159)) (c!475943 (regTwo!18474 r!17423))))))

(declare-fun bm!190734 () Bool)

(assert (=> bm!190734 (= call!190739 (isEmpty!18979 (_2!19982 lt!1025159)))))

(declare-fun b!2917895 () Bool)

(declare-fun res!1204658 () Bool)

(assert (=> b!2917895 (=> res!1204658 e!1841062)))

(assert (=> b!2917895 (= res!1204658 e!1841060)))

(declare-fun res!1204660 () Bool)

(assert (=> b!2917895 (=> (not res!1204660) (not e!1841060))))

(assert (=> b!2917895 (= res!1204660 lt!1025175)))

(declare-fun b!2917896 () Bool)

(assert (=> b!2917896 (= e!1841064 (= lt!1025175 call!190739))))

(assert (= (and d!838280 c!475967) b!2917889))

(assert (= (and d!838280 (not c!475967)) b!2917885))

(assert (= (and d!838280 c!475966) b!2917896))

(assert (= (and d!838280 (not c!475966)) b!2917891))

(assert (= (and b!2917891 c!475965) b!2917888))

(assert (= (and b!2917891 (not c!475965)) b!2917893))

(assert (= (and b!2917893 (not res!1204656)) b!2917895))

(assert (= (and b!2917895 res!1204660) b!2917892))

(assert (= (and b!2917892 res!1204661) b!2917890))

(assert (= (and b!2917890 res!1204662) b!2917894))

(assert (= (and b!2917895 (not res!1204658)) b!2917887))

(assert (= (and b!2917887 res!1204659) b!2917884))

(assert (= (and b!2917884 (not res!1204663)) b!2917883))

(assert (= (and b!2917883 (not res!1204657)) b!2917886))

(assert (= (or b!2917896 b!2917884 b!2917892) bm!190734))

(declare-fun m!3315825 () Bool)

(assert (=> b!2917886 m!3315825))

(assert (=> b!2917894 m!3315825))

(declare-fun m!3315827 () Bool)

(assert (=> d!838280 m!3315827))

(declare-fun m!3315829 () Bool)

(assert (=> d!838280 m!3315829))

(assert (=> bm!190734 m!3315827))

(declare-fun m!3315831 () Bool)

(assert (=> b!2917889 m!3315831))

(declare-fun m!3315833 () Bool)

(assert (=> b!2917883 m!3315833))

(assert (=> b!2917883 m!3315833))

(declare-fun m!3315835 () Bool)

(assert (=> b!2917883 m!3315835))

(assert (=> b!2917885 m!3315825))

(assert (=> b!2917885 m!3315825))

(declare-fun m!3315837 () Bool)

(assert (=> b!2917885 m!3315837))

(assert (=> b!2917885 m!3315833))

(assert (=> b!2917885 m!3315837))

(assert (=> b!2917885 m!3315833))

(declare-fun m!3315839 () Bool)

(assert (=> b!2917885 m!3315839))

(assert (=> b!2917890 m!3315833))

(assert (=> b!2917890 m!3315833))

(assert (=> b!2917890 m!3315835))

(assert (=> b!2917777 d!838280))

(declare-fun b!2917965 () Bool)

(declare-fun e!1841107 () Bool)

(declare-fun e!1841108 () Bool)

(assert (=> b!2917965 (= e!1841107 e!1841108)))

(declare-fun c!475994 () Bool)

(assert (=> b!2917965 (= c!475994 ((_ is Union!8981) lt!1025157))))

(declare-fun b!2917966 () Bool)

(declare-fun e!1841111 () Bool)

(declare-fun e!1841110 () Bool)

(assert (=> b!2917966 (= e!1841111 e!1841110)))

(declare-fun res!1204682 () Bool)

(assert (=> b!2917966 (=> (not res!1204682) (not e!1841110))))

(declare-fun call!190761 () Bool)

(assert (=> b!2917966 (= res!1204682 call!190761)))

(declare-fun b!2917967 () Bool)

(declare-fun res!1204681 () Bool)

(assert (=> b!2917967 (=> res!1204681 e!1841111)))

(assert (=> b!2917967 (= res!1204681 (not ((_ is Concat!14302) lt!1025157)))))

(assert (=> b!2917967 (= e!1841108 e!1841111)))

(declare-fun b!2917968 () Bool)

(declare-fun e!1841109 () Bool)

(assert (=> b!2917968 (= e!1841109 call!190761)))

(declare-fun bm!190755 () Bool)

(declare-fun call!190760 () Bool)

(assert (=> bm!190755 (= call!190760 (validRegex!3714 (ite c!475994 (regOne!18475 lt!1025157) (regTwo!18474 lt!1025157))))))

(declare-fun c!475995 () Bool)

(declare-fun call!190762 () Bool)

(declare-fun bm!190756 () Bool)

(assert (=> bm!190756 (= call!190762 (validRegex!3714 (ite c!475995 (reg!9310 lt!1025157) (ite c!475994 (regTwo!18475 lt!1025157) (regOne!18474 lt!1025157)))))))

(declare-fun b!2917969 () Bool)

(declare-fun e!1841113 () Bool)

(assert (=> b!2917969 (= e!1841107 e!1841113)))

(declare-fun res!1204680 () Bool)

(assert (=> b!2917969 (= res!1204680 (not (nullable!2811 (reg!9310 lt!1025157))))))

(assert (=> b!2917969 (=> (not res!1204680) (not e!1841113))))

(declare-fun b!2917970 () Bool)

(assert (=> b!2917970 (= e!1841110 call!190760)))

(declare-fun b!2917971 () Bool)

(assert (=> b!2917971 (= e!1841113 call!190762)))

(declare-fun b!2917972 () Bool)

(declare-fun e!1841112 () Bool)

(assert (=> b!2917972 (= e!1841112 e!1841107)))

(assert (=> b!2917972 (= c!475995 ((_ is Star!8981) lt!1025157))))

(declare-fun b!2917973 () Bool)

(declare-fun res!1204684 () Bool)

(assert (=> b!2917973 (=> (not res!1204684) (not e!1841109))))

(assert (=> b!2917973 (= res!1204684 call!190760)))

(assert (=> b!2917973 (= e!1841108 e!1841109)))

(declare-fun d!838292 () Bool)

(declare-fun res!1204683 () Bool)

(assert (=> d!838292 (=> res!1204683 e!1841112)))

(assert (=> d!838292 (= res!1204683 ((_ is ElementMatch!8981) lt!1025157))))

(assert (=> d!838292 (= (validRegex!3714 lt!1025157) e!1841112)))

(declare-fun bm!190757 () Bool)

(assert (=> bm!190757 (= call!190761 call!190762)))

(assert (= (and d!838292 (not res!1204683)) b!2917972))

(assert (= (and b!2917972 c!475995) b!2917969))

(assert (= (and b!2917972 (not c!475995)) b!2917965))

(assert (= (and b!2917969 res!1204680) b!2917971))

(assert (= (and b!2917965 c!475994) b!2917973))

(assert (= (and b!2917965 (not c!475994)) b!2917967))

(assert (= (and b!2917973 res!1204684) b!2917968))

(assert (= (and b!2917967 (not res!1204681)) b!2917966))

(assert (= (and b!2917966 res!1204682) b!2917970))

(assert (= (or b!2917973 b!2917970) bm!190755))

(assert (= (or b!2917968 b!2917966) bm!190757))

(assert (= (or b!2917971 bm!190757) bm!190756))

(declare-fun m!3315841 () Bool)

(assert (=> bm!190755 m!3315841))

(declare-fun m!3315843 () Bool)

(assert (=> bm!190756 m!3315843))

(declare-fun m!3315845 () Bool)

(assert (=> b!2917969 m!3315845))

(assert (=> b!2917773 d!838292))

(declare-fun b!2917999 () Bool)

(declare-fun res!1204689 () Bool)

(declare-fun e!1841133 () Bool)

(assert (=> b!2917999 (=> res!1204689 e!1841133)))

(assert (=> b!2917999 (= res!1204689 (not (isEmpty!18979 (tail!4710 (_1!19982 lt!1025159)))))))

(declare-fun b!2918000 () Bool)

(declare-fun e!1841131 () Bool)

(assert (=> b!2918000 (= e!1841131 e!1841133)))

(declare-fun res!1204695 () Bool)

(assert (=> b!2918000 (=> res!1204695 e!1841133)))

(declare-fun call!190770 () Bool)

(assert (=> b!2918000 (= res!1204695 call!190770)))

(declare-fun b!2918001 () Bool)

(declare-fun e!1841128 () Bool)

(assert (=> b!2918001 (= e!1841128 (matchR!3863 (derivativeStep!2425 (regOne!18474 r!17423) (head!6484 (_1!19982 lt!1025159))) (tail!4710 (_1!19982 lt!1025159))))))

(declare-fun b!2918002 () Bool)

(assert (=> b!2918002 (= e!1841133 (not (= (head!6484 (_1!19982 lt!1025159)) (c!475943 (regOne!18474 r!17423)))))))

(declare-fun d!838294 () Bool)

(declare-fun e!1841134 () Bool)

(assert (=> d!838294 e!1841134))

(declare-fun c!476008 () Bool)

(assert (=> d!838294 (= c!476008 ((_ is EmptyExpr!8981) (regOne!18474 r!17423)))))

(declare-fun lt!1025194 () Bool)

(assert (=> d!838294 (= lt!1025194 e!1841128)))

(declare-fun c!476009 () Bool)

(assert (=> d!838294 (= c!476009 (isEmpty!18979 (_1!19982 lt!1025159)))))

(assert (=> d!838294 (validRegex!3714 (regOne!18474 r!17423))))

(assert (=> d!838294 (= (matchR!3863 (regOne!18474 r!17423) (_1!19982 lt!1025159)) lt!1025194)))

(declare-fun b!2918003 () Bool)

(declare-fun e!1841132 () Bool)

(assert (=> b!2918003 (= e!1841132 e!1841131)))

(declare-fun res!1204691 () Bool)

(assert (=> b!2918003 (=> (not res!1204691) (not e!1841131))))

(assert (=> b!2918003 (= res!1204691 (not lt!1025194))))

(declare-fun b!2918004 () Bool)

(declare-fun e!1841129 () Bool)

(assert (=> b!2918004 (= e!1841129 (not lt!1025194))))

(declare-fun b!2918005 () Bool)

(assert (=> b!2918005 (= e!1841128 (nullable!2811 (regOne!18474 r!17423)))))

(declare-fun b!2918006 () Bool)

(declare-fun res!1204694 () Bool)

(declare-fun e!1841130 () Bool)

(assert (=> b!2918006 (=> (not res!1204694) (not e!1841130))))

(assert (=> b!2918006 (= res!1204694 (isEmpty!18979 (tail!4710 (_1!19982 lt!1025159))))))

(declare-fun b!2918007 () Bool)

(assert (=> b!2918007 (= e!1841134 e!1841129)))

(declare-fun c!476007 () Bool)

(assert (=> b!2918007 (= c!476007 ((_ is EmptyLang!8981) (regOne!18474 r!17423)))))

(declare-fun b!2918008 () Bool)

(declare-fun res!1204693 () Bool)

(assert (=> b!2918008 (=> (not res!1204693) (not e!1841130))))

(assert (=> b!2918008 (= res!1204693 (not call!190770))))

(declare-fun b!2918009 () Bool)

(declare-fun res!1204688 () Bool)

(assert (=> b!2918009 (=> res!1204688 e!1841132)))

(assert (=> b!2918009 (= res!1204688 (not ((_ is ElementMatch!8981) (regOne!18474 r!17423))))))

(assert (=> b!2918009 (= e!1841129 e!1841132)))

(declare-fun b!2918010 () Bool)

(assert (=> b!2918010 (= e!1841130 (= (head!6484 (_1!19982 lt!1025159)) (c!475943 (regOne!18474 r!17423))))))

(declare-fun bm!190765 () Bool)

(assert (=> bm!190765 (= call!190770 (isEmpty!18979 (_1!19982 lt!1025159)))))

(declare-fun b!2918011 () Bool)

(declare-fun res!1204690 () Bool)

(assert (=> b!2918011 (=> res!1204690 e!1841132)))

(assert (=> b!2918011 (= res!1204690 e!1841130)))

(declare-fun res!1204692 () Bool)

(assert (=> b!2918011 (=> (not res!1204692) (not e!1841130))))

(assert (=> b!2918011 (= res!1204692 lt!1025194)))

(declare-fun b!2918012 () Bool)

(assert (=> b!2918012 (= e!1841134 (= lt!1025194 call!190770))))

(assert (= (and d!838294 c!476009) b!2918005))

(assert (= (and d!838294 (not c!476009)) b!2918001))

(assert (= (and d!838294 c!476008) b!2918012))

(assert (= (and d!838294 (not c!476008)) b!2918007))

(assert (= (and b!2918007 c!476007) b!2918004))

(assert (= (and b!2918007 (not c!476007)) b!2918009))

(assert (= (and b!2918009 (not res!1204688)) b!2918011))

(assert (= (and b!2918011 res!1204692) b!2918008))

(assert (= (and b!2918008 res!1204693) b!2918006))

(assert (= (and b!2918006 res!1204694) b!2918010))

(assert (= (and b!2918011 (not res!1204690)) b!2918003))

(assert (= (and b!2918003 res!1204691) b!2918000))

(assert (= (and b!2918000 (not res!1204695)) b!2917999))

(assert (= (and b!2917999 (not res!1204689)) b!2918002))

(assert (= (or b!2918012 b!2918000 b!2918008) bm!190765))

(declare-fun m!3315871 () Bool)

(assert (=> b!2918002 m!3315871))

(assert (=> b!2918010 m!3315871))

(declare-fun m!3315879 () Bool)

(assert (=> d!838294 m!3315879))

(declare-fun m!3315883 () Bool)

(assert (=> d!838294 m!3315883))

(assert (=> bm!190765 m!3315879))

(declare-fun m!3315889 () Bool)

(assert (=> b!2918005 m!3315889))

(declare-fun m!3315891 () Bool)

(assert (=> b!2917999 m!3315891))

(assert (=> b!2917999 m!3315891))

(declare-fun m!3315893 () Bool)

(assert (=> b!2917999 m!3315893))

(assert (=> b!2918001 m!3315871))

(assert (=> b!2918001 m!3315871))

(declare-fun m!3315895 () Bool)

(assert (=> b!2918001 m!3315895))

(assert (=> b!2918001 m!3315891))

(assert (=> b!2918001 m!3315895))

(assert (=> b!2918001 m!3315891))

(declare-fun m!3315897 () Bool)

(assert (=> b!2918001 m!3315897))

(assert (=> b!2918006 m!3315891))

(assert (=> b!2918006 m!3315891))

(assert (=> b!2918006 m!3315893))

(assert (=> b!2917778 d!838294))

(declare-fun d!838300 () Bool)

(declare-fun choose!17193 (Int) Bool)

(assert (=> d!838300 (= (Exists!1361 lambda!108576) (choose!17193 lambda!108576))))

(declare-fun bs!524887 () Bool)

(assert (= bs!524887 d!838300))

(declare-fun m!3315913 () Bool)

(assert (=> bs!524887 m!3315913))

(assert (=> b!2917778 d!838300))

(declare-fun bs!524892 () Bool)

(declare-fun d!838306 () Bool)

(assert (= bs!524892 (and d!838306 b!2917778)))

(declare-fun lambda!108587 () Int)

(assert (=> bs!524892 (= lambda!108587 lambda!108575)))

(assert (=> bs!524892 (not (= lambda!108587 lambda!108576))))

(assert (=> d!838306 true))

(assert (=> d!838306 true))

(assert (=> d!838306 true))

(declare-fun lambda!108588 () Int)

(assert (=> bs!524892 (not (= lambda!108588 lambda!108575))))

(assert (=> bs!524892 (= lambda!108588 lambda!108576)))

(declare-fun bs!524893 () Bool)

(assert (= bs!524893 d!838306))

(assert (=> bs!524893 (not (= lambda!108588 lambda!108587))))

(assert (=> d!838306 true))

(assert (=> d!838306 true))

(assert (=> d!838306 true))

(assert (=> d!838306 (= (Exists!1361 lambda!108587) (Exists!1361 lambda!108588))))

(declare-fun lt!1025209 () Unit!48301)

(declare-fun choose!17194 (Regex!8981 Regex!8981 List!34846) Unit!48301)

(assert (=> d!838306 (= lt!1025209 (choose!17194 (regOne!18474 r!17423) (regTwo!18474 r!17423) s!11993))))

(assert (=> d!838306 (validRegex!3714 (regOne!18474 r!17423))))

(assert (=> d!838306 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!502 (regOne!18474 r!17423) (regTwo!18474 r!17423) s!11993) lt!1025209)))

(declare-fun m!3315951 () Bool)

(assert (=> bs!524893 m!3315951))

(declare-fun m!3315953 () Bool)

(assert (=> bs!524893 m!3315953))

(declare-fun m!3315955 () Bool)

(assert (=> bs!524893 m!3315955))

(assert (=> bs!524893 m!3315883))

(assert (=> b!2917778 d!838306))

(declare-fun d!838316 () Bool)

(assert (=> d!838316 (= (Exists!1361 lambda!108575) (choose!17193 lambda!108575))))

(declare-fun bs!524894 () Bool)

(assert (= bs!524894 d!838316))

(declare-fun m!3315959 () Bool)

(assert (=> bs!524894 m!3315959))

(assert (=> b!2917778 d!838316))

(declare-fun d!838318 () Bool)

(declare-fun isEmpty!18980 (Option!6582) Bool)

(assert (=> d!838318 (= (isDefined!5133 lt!1025165) (not (isEmpty!18980 lt!1025165)))))

(declare-fun bs!524895 () Bool)

(assert (= bs!524895 d!838318))

(declare-fun m!3315979 () Bool)

(assert (=> bs!524895 m!3315979))

(assert (=> b!2917778 d!838318))

(declare-fun d!838324 () Bool)

(assert (=> d!838324 (= (get!10573 lt!1025165) (v!34715 lt!1025165))))

(assert (=> b!2917778 d!838324))

(declare-fun b!2918270 () Bool)

(declare-fun e!1841283 () Option!6582)

(declare-fun e!1841284 () Option!6582)

(assert (=> b!2918270 (= e!1841283 e!1841284)))

(declare-fun c!476076 () Bool)

(assert (=> b!2918270 (= c!476076 ((_ is Nil!34722) s!11993))))

(declare-fun b!2918271 () Bool)

(declare-fun res!1204823 () Bool)

(declare-fun e!1841285 () Bool)

(assert (=> b!2918271 (=> (not res!1204823) (not e!1841285))))

(declare-fun lt!1025240 () Option!6582)

(assert (=> b!2918271 (= res!1204823 (matchR!3863 (regOne!18474 r!17423) (_1!19982 (get!10573 lt!1025240))))))

(declare-fun b!2918272 () Bool)

(assert (=> b!2918272 (= e!1841285 (= (++!8287 (_1!19982 (get!10573 lt!1025240)) (_2!19982 (get!10573 lt!1025240))) s!11993))))

(declare-fun b!2918273 () Bool)

(assert (=> b!2918273 (= e!1841283 (Some!6581 (tuple2!33701 Nil!34722 s!11993)))))

(declare-fun b!2918274 () Bool)

(declare-fun e!1841282 () Bool)

(assert (=> b!2918274 (= e!1841282 (not (isDefined!5133 lt!1025240)))))

(declare-fun b!2918275 () Bool)

(assert (=> b!2918275 (= e!1841284 None!6581)))

(declare-fun b!2918276 () Bool)

(declare-fun e!1841281 () Bool)

(assert (=> b!2918276 (= e!1841281 (matchR!3863 (regTwo!18474 r!17423) s!11993))))

(declare-fun b!2918277 () Bool)

(declare-fun lt!1025239 () Unit!48301)

(declare-fun lt!1025241 () Unit!48301)

(assert (=> b!2918277 (= lt!1025239 lt!1025241)))

(assert (=> b!2918277 (= (++!8287 (++!8287 Nil!34722 (Cons!34722 (h!40142 s!11993) Nil!34722)) (t!233911 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!920 (List!34846 C!18148 List!34846 List!34846) Unit!48301)

(assert (=> b!2918277 (= lt!1025241 (lemmaMoveElementToOtherListKeepsConcatEq!920 Nil!34722 (h!40142 s!11993) (t!233911 s!11993) s!11993))))

(assert (=> b!2918277 (= e!1841284 (findConcatSeparation!976 (regOne!18474 r!17423) (regTwo!18474 r!17423) (++!8287 Nil!34722 (Cons!34722 (h!40142 s!11993) Nil!34722)) (t!233911 s!11993) s!11993))))

(declare-fun b!2918278 () Bool)

(declare-fun res!1204821 () Bool)

(assert (=> b!2918278 (=> (not res!1204821) (not e!1841285))))

(assert (=> b!2918278 (= res!1204821 (matchR!3863 (regTwo!18474 r!17423) (_2!19982 (get!10573 lt!1025240))))))

(declare-fun d!838326 () Bool)

(assert (=> d!838326 e!1841282))

(declare-fun res!1204824 () Bool)

(assert (=> d!838326 (=> res!1204824 e!1841282)))

(assert (=> d!838326 (= res!1204824 e!1841285)))

(declare-fun res!1204825 () Bool)

(assert (=> d!838326 (=> (not res!1204825) (not e!1841285))))

(assert (=> d!838326 (= res!1204825 (isDefined!5133 lt!1025240))))

(assert (=> d!838326 (= lt!1025240 e!1841283)))

(declare-fun c!476077 () Bool)

(assert (=> d!838326 (= c!476077 e!1841281)))

(declare-fun res!1204822 () Bool)

(assert (=> d!838326 (=> (not res!1204822) (not e!1841281))))

(assert (=> d!838326 (= res!1204822 (matchR!3863 (regOne!18474 r!17423) Nil!34722))))

(assert (=> d!838326 (validRegex!3714 (regOne!18474 r!17423))))

(assert (=> d!838326 (= (findConcatSeparation!976 (regOne!18474 r!17423) (regTwo!18474 r!17423) Nil!34722 s!11993 s!11993) lt!1025240)))

(assert (= (and d!838326 res!1204822) b!2918276))

(assert (= (and d!838326 c!476077) b!2918273))

(assert (= (and d!838326 (not c!476077)) b!2918270))

(assert (= (and b!2918270 c!476076) b!2918275))

(assert (= (and b!2918270 (not c!476076)) b!2918277))

(assert (= (and d!838326 res!1204825) b!2918271))

(assert (= (and b!2918271 res!1204823) b!2918278))

(assert (= (and b!2918278 res!1204821) b!2918272))

(assert (= (and d!838326 (not res!1204824)) b!2918274))

(declare-fun m!3316031 () Bool)

(assert (=> b!2918271 m!3316031))

(declare-fun m!3316033 () Bool)

(assert (=> b!2918271 m!3316033))

(declare-fun m!3316035 () Bool)

(assert (=> d!838326 m!3316035))

(declare-fun m!3316037 () Bool)

(assert (=> d!838326 m!3316037))

(assert (=> d!838326 m!3315883))

(assert (=> b!2918278 m!3316031))

(declare-fun m!3316039 () Bool)

(assert (=> b!2918278 m!3316039))

(declare-fun m!3316041 () Bool)

(assert (=> b!2918277 m!3316041))

(assert (=> b!2918277 m!3316041))

(declare-fun m!3316043 () Bool)

(assert (=> b!2918277 m!3316043))

(declare-fun m!3316045 () Bool)

(assert (=> b!2918277 m!3316045))

(assert (=> b!2918277 m!3316041))

(declare-fun m!3316047 () Bool)

(assert (=> b!2918277 m!3316047))

(assert (=> b!2918272 m!3316031))

(declare-fun m!3316049 () Bool)

(assert (=> b!2918272 m!3316049))

(declare-fun m!3316051 () Bool)

(assert (=> b!2918276 m!3316051))

(assert (=> b!2918274 m!3316035))

(assert (=> b!2917778 d!838326))

(declare-fun bs!524908 () Bool)

(declare-fun d!838350 () Bool)

(assert (= bs!524908 (and d!838350 b!2917778)))

(declare-fun lambda!108600 () Int)

(assert (=> bs!524908 (= lambda!108600 lambda!108575)))

(assert (=> bs!524908 (not (= lambda!108600 lambda!108576))))

(declare-fun bs!524909 () Bool)

(assert (= bs!524909 (and d!838350 d!838306)))

(assert (=> bs!524909 (= lambda!108600 lambda!108587)))

(assert (=> bs!524909 (not (= lambda!108600 lambda!108588))))

(assert (=> d!838350 true))

(assert (=> d!838350 true))

(assert (=> d!838350 true))

(assert (=> d!838350 (= (isDefined!5133 (findConcatSeparation!976 (regOne!18474 r!17423) (regTwo!18474 r!17423) Nil!34722 s!11993 s!11993)) (Exists!1361 lambda!108600))))

(declare-fun lt!1025250 () Unit!48301)

(declare-fun choose!17195 (Regex!8981 Regex!8981 List!34846) Unit!48301)

(assert (=> d!838350 (= lt!1025250 (choose!17195 (regOne!18474 r!17423) (regTwo!18474 r!17423) s!11993))))

(assert (=> d!838350 (validRegex!3714 (regOne!18474 r!17423))))

(assert (=> d!838350 (= (lemmaFindConcatSeparationEquivalentToExists!758 (regOne!18474 r!17423) (regTwo!18474 r!17423) s!11993) lt!1025250)))

(declare-fun bs!524910 () Bool)

(assert (= bs!524910 d!838350))

(assert (=> bs!524910 m!3315767))

(declare-fun m!3316081 () Bool)

(assert (=> bs!524910 m!3316081))

(assert (=> bs!524910 m!3315883))

(declare-fun m!3316083 () Bool)

(assert (=> bs!524910 m!3316083))

(assert (=> bs!524910 m!3315767))

(declare-fun m!3316085 () Bool)

(assert (=> bs!524910 m!3316085))

(assert (=> b!2917778 d!838350))

(declare-fun d!838354 () Bool)

(assert (=> d!838354 (= (isEmpty!18979 s!11993) ((_ is Nil!34722) s!11993))))

(assert (=> b!2917775 d!838354))

(declare-fun d!838356 () Bool)

(assert (=> d!838356 (matchR!3863 (Concat!14302 lt!1025161 lt!1025157) (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159)))))

(declare-fun lt!1025253 () Unit!48301)

(declare-fun choose!17197 (Regex!8981 Regex!8981 List!34846 List!34846) Unit!48301)

(assert (=> d!838356 (= lt!1025253 (choose!17197 lt!1025161 lt!1025157 (_1!19982 lt!1025159) (_2!19982 lt!1025159)))))

(declare-fun e!1841307 () Bool)

(assert (=> d!838356 e!1841307))

(declare-fun res!1204841 () Bool)

(assert (=> d!838356 (=> (not res!1204841) (not e!1841307))))

(assert (=> d!838356 (= res!1204841 (validRegex!3714 lt!1025161))))

(assert (=> d!838356 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!150 lt!1025161 lt!1025157 (_1!19982 lt!1025159) (_2!19982 lt!1025159)) lt!1025253)))

(declare-fun b!2918333 () Bool)

(assert (=> b!2918333 (= e!1841307 (validRegex!3714 lt!1025157))))

(assert (= (and d!838356 res!1204841) b!2918333))

(assert (=> d!838356 m!3315779))

(assert (=> d!838356 m!3315779))

(assert (=> d!838356 m!3315785))

(declare-fun m!3316087 () Bool)

(assert (=> d!838356 m!3316087))

(assert (=> d!838356 m!3315749))

(assert (=> b!2918333 m!3315791))

(assert (=> b!2917774 d!838356))

(declare-fun b!2918334 () Bool)

(declare-fun res!1204843 () Bool)

(declare-fun e!1841313 () Bool)

(assert (=> b!2918334 (=> res!1204843 e!1841313)))

(assert (=> b!2918334 (= res!1204843 (not (isEmpty!18979 (tail!4710 (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159))))))))

(declare-fun b!2918335 () Bool)

(declare-fun e!1841311 () Bool)

(assert (=> b!2918335 (= e!1841311 e!1841313)))

(declare-fun res!1204849 () Bool)

(assert (=> b!2918335 (=> res!1204849 e!1841313)))

(declare-fun call!190805 () Bool)

(assert (=> b!2918335 (= res!1204849 call!190805)))

(declare-fun e!1841308 () Bool)

(declare-fun b!2918336 () Bool)

(assert (=> b!2918336 (= e!1841308 (matchR!3863 (derivativeStep!2425 (Concat!14302 lt!1025161 lt!1025157) (head!6484 (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159)))) (tail!4710 (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159)))))))

(declare-fun b!2918337 () Bool)

(assert (=> b!2918337 (= e!1841313 (not (= (head!6484 (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159))) (c!475943 (Concat!14302 lt!1025161 lt!1025157)))))))

(declare-fun d!838358 () Bool)

(declare-fun e!1841314 () Bool)

(assert (=> d!838358 e!1841314))

(declare-fun c!476081 () Bool)

(assert (=> d!838358 (= c!476081 ((_ is EmptyExpr!8981) (Concat!14302 lt!1025161 lt!1025157)))))

(declare-fun lt!1025254 () Bool)

(assert (=> d!838358 (= lt!1025254 e!1841308)))

(declare-fun c!476082 () Bool)

(assert (=> d!838358 (= c!476082 (isEmpty!18979 (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159))))))

(assert (=> d!838358 (validRegex!3714 (Concat!14302 lt!1025161 lt!1025157))))

(assert (=> d!838358 (= (matchR!3863 (Concat!14302 lt!1025161 lt!1025157) (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159))) lt!1025254)))

(declare-fun b!2918338 () Bool)

(declare-fun e!1841312 () Bool)

(assert (=> b!2918338 (= e!1841312 e!1841311)))

(declare-fun res!1204845 () Bool)

(assert (=> b!2918338 (=> (not res!1204845) (not e!1841311))))

(assert (=> b!2918338 (= res!1204845 (not lt!1025254))))

(declare-fun b!2918339 () Bool)

(declare-fun e!1841309 () Bool)

(assert (=> b!2918339 (= e!1841309 (not lt!1025254))))

(declare-fun b!2918340 () Bool)

(assert (=> b!2918340 (= e!1841308 (nullable!2811 (Concat!14302 lt!1025161 lt!1025157)))))

(declare-fun b!2918341 () Bool)

(declare-fun res!1204848 () Bool)

(declare-fun e!1841310 () Bool)

(assert (=> b!2918341 (=> (not res!1204848) (not e!1841310))))

(assert (=> b!2918341 (= res!1204848 (isEmpty!18979 (tail!4710 (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159)))))))

(declare-fun b!2918342 () Bool)

(assert (=> b!2918342 (= e!1841314 e!1841309)))

(declare-fun c!476080 () Bool)

(assert (=> b!2918342 (= c!476080 ((_ is EmptyLang!8981) (Concat!14302 lt!1025161 lt!1025157)))))

(declare-fun b!2918343 () Bool)

(declare-fun res!1204847 () Bool)

(assert (=> b!2918343 (=> (not res!1204847) (not e!1841310))))

(assert (=> b!2918343 (= res!1204847 (not call!190805))))

(declare-fun b!2918344 () Bool)

(declare-fun res!1204842 () Bool)

(assert (=> b!2918344 (=> res!1204842 e!1841312)))

(assert (=> b!2918344 (= res!1204842 (not ((_ is ElementMatch!8981) (Concat!14302 lt!1025161 lt!1025157))))))

(assert (=> b!2918344 (= e!1841309 e!1841312)))

(declare-fun b!2918345 () Bool)

(assert (=> b!2918345 (= e!1841310 (= (head!6484 (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159))) (c!475943 (Concat!14302 lt!1025161 lt!1025157))))))

(declare-fun bm!190800 () Bool)

(assert (=> bm!190800 (= call!190805 (isEmpty!18979 (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159))))))

(declare-fun b!2918346 () Bool)

(declare-fun res!1204844 () Bool)

(assert (=> b!2918346 (=> res!1204844 e!1841312)))

(assert (=> b!2918346 (= res!1204844 e!1841310)))

(declare-fun res!1204846 () Bool)

(assert (=> b!2918346 (=> (not res!1204846) (not e!1841310))))

(assert (=> b!2918346 (= res!1204846 lt!1025254)))

(declare-fun b!2918347 () Bool)

(assert (=> b!2918347 (= e!1841314 (= lt!1025254 call!190805))))

(assert (= (and d!838358 c!476082) b!2918340))

(assert (= (and d!838358 (not c!476082)) b!2918336))

(assert (= (and d!838358 c!476081) b!2918347))

(assert (= (and d!838358 (not c!476081)) b!2918342))

(assert (= (and b!2918342 c!476080) b!2918339))

(assert (= (and b!2918342 (not c!476080)) b!2918344))

(assert (= (and b!2918344 (not res!1204842)) b!2918346))

(assert (= (and b!2918346 res!1204846) b!2918343))

(assert (= (and b!2918343 res!1204847) b!2918341))

(assert (= (and b!2918341 res!1204848) b!2918345))

(assert (= (and b!2918346 (not res!1204844)) b!2918338))

(assert (= (and b!2918338 res!1204845) b!2918335))

(assert (= (and b!2918335 (not res!1204849)) b!2918334))

(assert (= (and b!2918334 (not res!1204843)) b!2918337))

(assert (= (or b!2918347 b!2918335 b!2918343) bm!190800))

(assert (=> b!2918337 m!3315779))

(declare-fun m!3316089 () Bool)

(assert (=> b!2918337 m!3316089))

(assert (=> b!2918345 m!3315779))

(assert (=> b!2918345 m!3316089))

(assert (=> d!838358 m!3315779))

(declare-fun m!3316091 () Bool)

(assert (=> d!838358 m!3316091))

(declare-fun m!3316093 () Bool)

(assert (=> d!838358 m!3316093))

(assert (=> bm!190800 m!3315779))

(assert (=> bm!190800 m!3316091))

(declare-fun m!3316095 () Bool)

(assert (=> b!2918340 m!3316095))

(assert (=> b!2918334 m!3315779))

(declare-fun m!3316097 () Bool)

(assert (=> b!2918334 m!3316097))

(assert (=> b!2918334 m!3316097))

(declare-fun m!3316099 () Bool)

(assert (=> b!2918334 m!3316099))

(assert (=> b!2918336 m!3315779))

(assert (=> b!2918336 m!3316089))

(assert (=> b!2918336 m!3316089))

(declare-fun m!3316101 () Bool)

(assert (=> b!2918336 m!3316101))

(assert (=> b!2918336 m!3315779))

(assert (=> b!2918336 m!3316097))

(assert (=> b!2918336 m!3316101))

(assert (=> b!2918336 m!3316097))

(declare-fun m!3316103 () Bool)

(assert (=> b!2918336 m!3316103))

(assert (=> b!2918341 m!3315779))

(assert (=> b!2918341 m!3316097))

(assert (=> b!2918341 m!3316097))

(assert (=> b!2918341 m!3316099))

(assert (=> b!2917774 d!838358))

(declare-fun b!2918357 () Bool)

(declare-fun e!1841319 () List!34846)

(assert (=> b!2918357 (= e!1841319 (Cons!34722 (h!40142 (_1!19982 lt!1025159)) (++!8287 (t!233911 (_1!19982 lt!1025159)) (_2!19982 lt!1025159))))))

(declare-fun b!2918356 () Bool)

(assert (=> b!2918356 (= e!1841319 (_2!19982 lt!1025159))))

(declare-fun b!2918358 () Bool)

(declare-fun res!1204854 () Bool)

(declare-fun e!1841320 () Bool)

(assert (=> b!2918358 (=> (not res!1204854) (not e!1841320))))

(declare-fun lt!1025257 () List!34846)

(declare-fun size!26438 (List!34846) Int)

(assert (=> b!2918358 (= res!1204854 (= (size!26438 lt!1025257) (+ (size!26438 (_1!19982 lt!1025159)) (size!26438 (_2!19982 lt!1025159)))))))

(declare-fun d!838360 () Bool)

(assert (=> d!838360 e!1841320))

(declare-fun res!1204855 () Bool)

(assert (=> d!838360 (=> (not res!1204855) (not e!1841320))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4749 (List!34846) (InoxSet C!18148))

(assert (=> d!838360 (= res!1204855 (= (content!4749 lt!1025257) ((_ map or) (content!4749 (_1!19982 lt!1025159)) (content!4749 (_2!19982 lt!1025159)))))))

(assert (=> d!838360 (= lt!1025257 e!1841319)))

(declare-fun c!476085 () Bool)

(assert (=> d!838360 (= c!476085 ((_ is Nil!34722) (_1!19982 lt!1025159)))))

(assert (=> d!838360 (= (++!8287 (_1!19982 lt!1025159) (_2!19982 lt!1025159)) lt!1025257)))

(declare-fun b!2918359 () Bool)

(assert (=> b!2918359 (= e!1841320 (or (not (= (_2!19982 lt!1025159) Nil!34722)) (= lt!1025257 (_1!19982 lt!1025159))))))

(assert (= (and d!838360 c!476085) b!2918356))

(assert (= (and d!838360 (not c!476085)) b!2918357))

(assert (= (and d!838360 res!1204855) b!2918358))

(assert (= (and b!2918358 res!1204854) b!2918359))

(declare-fun m!3316105 () Bool)

(assert (=> b!2918357 m!3316105))

(declare-fun m!3316107 () Bool)

(assert (=> b!2918358 m!3316107))

(declare-fun m!3316109 () Bool)

(assert (=> b!2918358 m!3316109))

(declare-fun m!3316111 () Bool)

(assert (=> b!2918358 m!3316111))

(declare-fun m!3316113 () Bool)

(assert (=> d!838360 m!3316113))

(declare-fun m!3316115 () Bool)

(assert (=> d!838360 m!3316115))

(declare-fun m!3316117 () Bool)

(assert (=> d!838360 m!3316117))

(assert (=> b!2917774 d!838360))

(declare-fun b!2918360 () Bool)

(declare-fun e!1841321 () Bool)

(declare-fun e!1841322 () Bool)

(assert (=> b!2918360 (= e!1841321 e!1841322)))

(declare-fun c!476086 () Bool)

(assert (=> b!2918360 (= c!476086 ((_ is Union!8981) (simplify!18 r!17423)))))

(declare-fun b!2918361 () Bool)

(declare-fun e!1841325 () Bool)

(declare-fun e!1841324 () Bool)

(assert (=> b!2918361 (= e!1841325 e!1841324)))

(declare-fun res!1204858 () Bool)

(assert (=> b!2918361 (=> (not res!1204858) (not e!1841324))))

(declare-fun call!190807 () Bool)

(assert (=> b!2918361 (= res!1204858 call!190807)))

(declare-fun b!2918362 () Bool)

(declare-fun res!1204857 () Bool)

(assert (=> b!2918362 (=> res!1204857 e!1841325)))

(assert (=> b!2918362 (= res!1204857 (not ((_ is Concat!14302) (simplify!18 r!17423))))))

(assert (=> b!2918362 (= e!1841322 e!1841325)))

(declare-fun b!2918363 () Bool)

(declare-fun e!1841323 () Bool)

(assert (=> b!2918363 (= e!1841323 call!190807)))

(declare-fun bm!190801 () Bool)

(declare-fun call!190806 () Bool)

(assert (=> bm!190801 (= call!190806 (validRegex!3714 (ite c!476086 (regOne!18475 (simplify!18 r!17423)) (regTwo!18474 (simplify!18 r!17423)))))))

(declare-fun call!190808 () Bool)

(declare-fun bm!190802 () Bool)

(declare-fun c!476087 () Bool)

(assert (=> bm!190802 (= call!190808 (validRegex!3714 (ite c!476087 (reg!9310 (simplify!18 r!17423)) (ite c!476086 (regTwo!18475 (simplify!18 r!17423)) (regOne!18474 (simplify!18 r!17423))))))))

(declare-fun b!2918364 () Bool)

(declare-fun e!1841327 () Bool)

(assert (=> b!2918364 (= e!1841321 e!1841327)))

(declare-fun res!1204856 () Bool)

(assert (=> b!2918364 (= res!1204856 (not (nullable!2811 (reg!9310 (simplify!18 r!17423)))))))

(assert (=> b!2918364 (=> (not res!1204856) (not e!1841327))))

(declare-fun b!2918365 () Bool)

(assert (=> b!2918365 (= e!1841324 call!190806)))

(declare-fun b!2918366 () Bool)

(assert (=> b!2918366 (= e!1841327 call!190808)))

(declare-fun b!2918367 () Bool)

(declare-fun e!1841326 () Bool)

(assert (=> b!2918367 (= e!1841326 e!1841321)))

(assert (=> b!2918367 (= c!476087 ((_ is Star!8981) (simplify!18 r!17423)))))

(declare-fun b!2918368 () Bool)

(declare-fun res!1204860 () Bool)

(assert (=> b!2918368 (=> (not res!1204860) (not e!1841323))))

(assert (=> b!2918368 (= res!1204860 call!190806)))

(assert (=> b!2918368 (= e!1841322 e!1841323)))

(declare-fun d!838362 () Bool)

(declare-fun res!1204859 () Bool)

(assert (=> d!838362 (=> res!1204859 e!1841326)))

(assert (=> d!838362 (= res!1204859 ((_ is ElementMatch!8981) (simplify!18 r!17423)))))

(assert (=> d!838362 (= (validRegex!3714 (simplify!18 r!17423)) e!1841326)))

(declare-fun bm!190803 () Bool)

(assert (=> bm!190803 (= call!190807 call!190808)))

(assert (= (and d!838362 (not res!1204859)) b!2918367))

(assert (= (and b!2918367 c!476087) b!2918364))

(assert (= (and b!2918367 (not c!476087)) b!2918360))

(assert (= (and b!2918364 res!1204856) b!2918366))

(assert (= (and b!2918360 c!476086) b!2918368))

(assert (= (and b!2918360 (not c!476086)) b!2918362))

(assert (= (and b!2918368 res!1204860) b!2918363))

(assert (= (and b!2918362 (not res!1204857)) b!2918361))

(assert (= (and b!2918361 res!1204858) b!2918365))

(assert (= (or b!2918368 b!2918365) bm!190801))

(assert (= (or b!2918363 b!2918361) bm!190803))

(assert (= (or b!2918366 bm!190803) bm!190802))

(declare-fun m!3316119 () Bool)

(assert (=> bm!190801 m!3316119))

(declare-fun m!3316121 () Bool)

(assert (=> bm!190802 m!3316121))

(declare-fun m!3316123 () Bool)

(assert (=> b!2918364 m!3316123))

(assert (=> b!2917774 d!838362))

(declare-fun b!2918419 () Bool)

(declare-fun e!1841364 () Regex!8981)

(declare-fun lt!1025271 () Regex!8981)

(assert (=> b!2918419 (= e!1841364 (Star!8981 lt!1025271))))

(declare-fun b!2918420 () Bool)

(assert (=> b!2918420 (= e!1841364 EmptyExpr!8981)))

(declare-fun b!2918421 () Bool)

(declare-fun e!1841360 () Regex!8981)

(declare-fun e!1841361 () Regex!8981)

(assert (=> b!2918421 (= e!1841360 e!1841361)))

(declare-fun c!476118 () Bool)

(assert (=> b!2918421 (= c!476118 ((_ is Star!8981) r!17423))))

(declare-fun bm!190818 () Bool)

(declare-fun call!190827 () Bool)

(declare-fun call!190823 () Bool)

(assert (=> bm!190818 (= call!190827 call!190823)))

(declare-fun bm!190819 () Bool)

(declare-fun call!190825 () Regex!8981)

(declare-fun c!476113 () Bool)

(assert (=> bm!190819 (= call!190825 (simplify!18 (ite c!476113 (regTwo!18475 r!17423) (regOne!18474 r!17423))))))

(declare-fun b!2918422 () Bool)

(declare-fun e!1841367 () Regex!8981)

(declare-fun e!1841366 () Regex!8981)

(assert (=> b!2918422 (= e!1841367 e!1841366)))

(declare-fun c!476116 () Bool)

(assert (=> b!2918422 (= c!476116 ((_ is ElementMatch!8981) r!17423))))

(declare-fun b!2918423 () Bool)

(assert (=> b!2918423 (= e!1841367 EmptyLang!8981)))

(declare-fun b!2918424 () Bool)

(declare-fun e!1841368 () Bool)

(declare-fun lt!1025272 () Regex!8981)

(assert (=> b!2918424 (= e!1841368 (= (nullable!2811 lt!1025272) (nullable!2811 r!17423)))))

(declare-fun b!2918425 () Bool)

(declare-fun e!1841356 () Bool)

(declare-fun call!190824 () Bool)

(assert (=> b!2918425 (= e!1841356 call!190824)))

(declare-fun bm!190821 () Bool)

(declare-fun call!190826 () Regex!8981)

(declare-fun call!190829 () Regex!8981)

(assert (=> bm!190821 (= call!190826 call!190829)))

(declare-fun b!2918426 () Bool)

(declare-fun e!1841363 () Regex!8981)

(declare-fun lt!1025270 () Regex!8981)

(declare-fun lt!1025275 () Regex!8981)

(assert (=> b!2918426 (= e!1841363 (Union!8981 lt!1025270 lt!1025275))))

(declare-fun b!2918427 () Bool)

(declare-fun e!1841359 () Regex!8981)

(declare-fun lt!1025274 () Regex!8981)

(declare-fun lt!1025273 () Regex!8981)

(assert (=> b!2918427 (= e!1841359 (Concat!14302 lt!1025274 lt!1025273))))

(declare-fun b!2918428 () Bool)

(declare-fun c!476114 () Bool)

(assert (=> b!2918428 (= c!476114 ((_ is EmptyExpr!8981) r!17423))))

(assert (=> b!2918428 (= e!1841366 e!1841360)))

(declare-fun b!2918429 () Bool)

(assert (=> b!2918429 (= c!476113 ((_ is Union!8981) r!17423))))

(declare-fun e!1841358 () Regex!8981)

(assert (=> b!2918429 (= e!1841361 e!1841358)))

(declare-fun b!2918430 () Bool)

(assert (=> b!2918430 (= e!1841366 r!17423)))

(declare-fun b!2918431 () Bool)

(assert (=> b!2918431 (= e!1841360 EmptyExpr!8981)))

(declare-fun bm!190822 () Bool)

(declare-fun isEmptyLang!166 (Regex!8981) Bool)

(assert (=> bm!190822 (= call!190823 (isEmptyLang!166 (ite c!476118 lt!1025271 (ite c!476113 lt!1025275 lt!1025274))))))

(declare-fun b!2918432 () Bool)

(declare-fun e!1841365 () Regex!8981)

(assert (=> b!2918432 (= e!1841365 e!1841359)))

(declare-fun c!476117 () Bool)

(assert (=> b!2918432 (= c!476117 call!190824)))

(declare-fun b!2918433 () Bool)

(declare-fun c!476115 () Bool)

(assert (=> b!2918433 (= c!476115 call!190827)))

(declare-fun e!1841369 () Regex!8981)

(assert (=> b!2918433 (= e!1841369 e!1841363)))

(declare-fun call!190828 () Bool)

(declare-fun bm!190823 () Bool)

(assert (=> bm!190823 (= call!190828 (isEmptyLang!166 (ite c!476113 lt!1025270 lt!1025273)))))

(declare-fun b!2918434 () Bool)

(assert (=> b!2918434 (= e!1841358 e!1841369)))

(assert (=> b!2918434 (= lt!1025270 call!190826)))

(assert (=> b!2918434 (= lt!1025275 call!190825)))

(declare-fun c!476110 () Bool)

(assert (=> b!2918434 (= c!476110 call!190828)))

(declare-fun bm!190820 () Bool)

(declare-fun isEmptyExpr!251 (Regex!8981) Bool)

(assert (=> bm!190820 (= call!190824 (isEmptyExpr!251 (ite c!476118 lt!1025271 lt!1025273)))))

(declare-fun d!838364 () Bool)

(assert (=> d!838364 e!1841368))

(declare-fun res!1204869 () Bool)

(assert (=> d!838364 (=> (not res!1204869) (not e!1841368))))

(assert (=> d!838364 (= res!1204869 (validRegex!3714 lt!1025272))))

(assert (=> d!838364 (= lt!1025272 e!1841367)))

(declare-fun c!476119 () Bool)

(assert (=> d!838364 (= c!476119 ((_ is EmptyLang!8981) r!17423))))

(assert (=> d!838364 (validRegex!3714 r!17423)))

(assert (=> d!838364 (= (simplify!18 r!17423) lt!1025272)))

(declare-fun b!2918435 () Bool)

(declare-fun e!1841362 () Regex!8981)

(assert (=> b!2918435 (= e!1841362 EmptyLang!8981)))

(declare-fun b!2918436 () Bool)

(declare-fun c!476112 () Bool)

(assert (=> b!2918436 (= c!476112 (isEmptyExpr!251 lt!1025274))))

(assert (=> b!2918436 (= e!1841362 e!1841365)))

(declare-fun b!2918437 () Bool)

(assert (=> b!2918437 (= e!1841365 lt!1025273)))

(declare-fun b!2918438 () Bool)

(assert (=> b!2918438 (= e!1841358 e!1841362)))

(assert (=> b!2918438 (= lt!1025274 call!190825)))

(assert (=> b!2918438 (= lt!1025273 call!190826)))

(declare-fun res!1204867 () Bool)

(assert (=> b!2918438 (= res!1204867 call!190827)))

(declare-fun e!1841357 () Bool)

(assert (=> b!2918438 (=> res!1204867 e!1841357)))

(declare-fun c!476111 () Bool)

(assert (=> b!2918438 (= c!476111 e!1841357)))

(declare-fun b!2918439 () Bool)

(assert (=> b!2918439 (= e!1841363 lt!1025270)))

(declare-fun b!2918440 () Bool)

(assert (=> b!2918440 (= e!1841369 lt!1025275)))

(declare-fun b!2918441 () Bool)

(assert (=> b!2918441 (= e!1841359 lt!1025274)))

(declare-fun b!2918442 () Bool)

(declare-fun c!476120 () Bool)

(assert (=> b!2918442 (= c!476120 e!1841356)))

(declare-fun res!1204868 () Bool)

(assert (=> b!2918442 (=> res!1204868 e!1841356)))

(assert (=> b!2918442 (= res!1204868 call!190823)))

(assert (=> b!2918442 (= lt!1025271 call!190829)))

(assert (=> b!2918442 (= e!1841361 e!1841364)))

(declare-fun b!2918443 () Bool)

(assert (=> b!2918443 (= e!1841357 call!190828)))

(declare-fun bm!190824 () Bool)

(assert (=> bm!190824 (= call!190829 (simplify!18 (ite c!476118 (reg!9310 r!17423) (ite c!476113 (regOne!18475 r!17423) (regTwo!18474 r!17423)))))))

(assert (= (and d!838364 c!476119) b!2918423))

(assert (= (and d!838364 (not c!476119)) b!2918422))

(assert (= (and b!2918422 c!476116) b!2918430))

(assert (= (and b!2918422 (not c!476116)) b!2918428))

(assert (= (and b!2918428 c!476114) b!2918431))

(assert (= (and b!2918428 (not c!476114)) b!2918421))

(assert (= (and b!2918421 c!476118) b!2918442))

(assert (= (and b!2918421 (not c!476118)) b!2918429))

(assert (= (and b!2918442 (not res!1204868)) b!2918425))

(assert (= (and b!2918442 c!476120) b!2918420))

(assert (= (and b!2918442 (not c!476120)) b!2918419))

(assert (= (and b!2918429 c!476113) b!2918434))

(assert (= (and b!2918429 (not c!476113)) b!2918438))

(assert (= (and b!2918434 c!476110) b!2918440))

(assert (= (and b!2918434 (not c!476110)) b!2918433))

(assert (= (and b!2918433 c!476115) b!2918439))

(assert (= (and b!2918433 (not c!476115)) b!2918426))

(assert (= (and b!2918438 (not res!1204867)) b!2918443))

(assert (= (and b!2918438 c!476111) b!2918435))

(assert (= (and b!2918438 (not c!476111)) b!2918436))

(assert (= (and b!2918436 c!476112) b!2918437))

(assert (= (and b!2918436 (not c!476112)) b!2918432))

(assert (= (and b!2918432 c!476117) b!2918441))

(assert (= (and b!2918432 (not c!476117)) b!2918427))

(assert (= (or b!2918434 b!2918438) bm!190821))

(assert (= (or b!2918434 b!2918438) bm!190819))

(assert (= (or b!2918433 b!2918438) bm!190818))

(assert (= (or b!2918434 b!2918443) bm!190823))

(assert (= (or b!2918425 b!2918432) bm!190820))

(assert (= (or b!2918442 bm!190821) bm!190824))

(assert (= (or b!2918442 bm!190818) bm!190822))

(assert (= (and d!838364 res!1204869) b!2918424))

(declare-fun m!3316125 () Bool)

(assert (=> bm!190819 m!3316125))

(declare-fun m!3316127 () Bool)

(assert (=> bm!190822 m!3316127))

(declare-fun m!3316129 () Bool)

(assert (=> bm!190824 m!3316129))

(declare-fun m!3316131 () Bool)

(assert (=> bm!190823 m!3316131))

(declare-fun m!3316133 () Bool)

(assert (=> d!838364 m!3316133))

(assert (=> d!838364 m!3315777))

(declare-fun m!3316135 () Bool)

(assert (=> b!2918436 m!3316135))

(declare-fun m!3316137 () Bool)

(assert (=> b!2918424 m!3316137))

(declare-fun m!3316139 () Bool)

(assert (=> b!2918424 m!3316139))

(declare-fun m!3316141 () Bool)

(assert (=> bm!190820 m!3316141))

(assert (=> b!2917774 d!838364))

(declare-fun b!2918444 () Bool)

(declare-fun e!1841370 () Bool)

(declare-fun e!1841371 () Bool)

(assert (=> b!2918444 (= e!1841370 e!1841371)))

(declare-fun c!476121 () Bool)

(assert (=> b!2918444 (= c!476121 ((_ is Union!8981) r!17423))))

(declare-fun b!2918445 () Bool)

(declare-fun e!1841374 () Bool)

(declare-fun e!1841373 () Bool)

(assert (=> b!2918445 (= e!1841374 e!1841373)))

(declare-fun res!1204872 () Bool)

(assert (=> b!2918445 (=> (not res!1204872) (not e!1841373))))

(declare-fun call!190831 () Bool)

(assert (=> b!2918445 (= res!1204872 call!190831)))

(declare-fun b!2918446 () Bool)

(declare-fun res!1204871 () Bool)

(assert (=> b!2918446 (=> res!1204871 e!1841374)))

(assert (=> b!2918446 (= res!1204871 (not ((_ is Concat!14302) r!17423)))))

(assert (=> b!2918446 (= e!1841371 e!1841374)))

(declare-fun b!2918447 () Bool)

(declare-fun e!1841372 () Bool)

(assert (=> b!2918447 (= e!1841372 call!190831)))

(declare-fun bm!190825 () Bool)

(declare-fun call!190830 () Bool)

(assert (=> bm!190825 (= call!190830 (validRegex!3714 (ite c!476121 (regOne!18475 r!17423) (regTwo!18474 r!17423))))))

(declare-fun call!190832 () Bool)

(declare-fun bm!190826 () Bool)

(declare-fun c!476122 () Bool)

(assert (=> bm!190826 (= call!190832 (validRegex!3714 (ite c!476122 (reg!9310 r!17423) (ite c!476121 (regTwo!18475 r!17423) (regOne!18474 r!17423)))))))

(declare-fun b!2918448 () Bool)

(declare-fun e!1841376 () Bool)

(assert (=> b!2918448 (= e!1841370 e!1841376)))

(declare-fun res!1204870 () Bool)

(assert (=> b!2918448 (= res!1204870 (not (nullable!2811 (reg!9310 r!17423))))))

(assert (=> b!2918448 (=> (not res!1204870) (not e!1841376))))

(declare-fun b!2918449 () Bool)

(assert (=> b!2918449 (= e!1841373 call!190830)))

(declare-fun b!2918450 () Bool)

(assert (=> b!2918450 (= e!1841376 call!190832)))

(declare-fun b!2918451 () Bool)

(declare-fun e!1841375 () Bool)

(assert (=> b!2918451 (= e!1841375 e!1841370)))

(assert (=> b!2918451 (= c!476122 ((_ is Star!8981) r!17423))))

(declare-fun b!2918452 () Bool)

(declare-fun res!1204874 () Bool)

(assert (=> b!2918452 (=> (not res!1204874) (not e!1841372))))

(assert (=> b!2918452 (= res!1204874 call!190830)))

(assert (=> b!2918452 (= e!1841371 e!1841372)))

(declare-fun d!838366 () Bool)

(declare-fun res!1204873 () Bool)

(assert (=> d!838366 (=> res!1204873 e!1841375)))

(assert (=> d!838366 (= res!1204873 ((_ is ElementMatch!8981) r!17423))))

(assert (=> d!838366 (= (validRegex!3714 r!17423) e!1841375)))

(declare-fun bm!190827 () Bool)

(assert (=> bm!190827 (= call!190831 call!190832)))

(assert (= (and d!838366 (not res!1204873)) b!2918451))

(assert (= (and b!2918451 c!476122) b!2918448))

(assert (= (and b!2918451 (not c!476122)) b!2918444))

(assert (= (and b!2918448 res!1204870) b!2918450))

(assert (= (and b!2918444 c!476121) b!2918452))

(assert (= (and b!2918444 (not c!476121)) b!2918446))

(assert (= (and b!2918452 res!1204874) b!2918447))

(assert (= (and b!2918446 (not res!1204871)) b!2918445))

(assert (= (and b!2918445 res!1204872) b!2918449))

(assert (= (or b!2918452 b!2918449) bm!190825))

(assert (= (or b!2918447 b!2918445) bm!190827))

(assert (= (or b!2918450 bm!190827) bm!190826))

(declare-fun m!3316143 () Bool)

(assert (=> bm!190825 m!3316143))

(declare-fun m!3316145 () Bool)

(assert (=> bm!190826 m!3316145))

(declare-fun m!3316147 () Bool)

(assert (=> b!2918448 m!3316147))

(assert (=> start!284212 d!838366))

(declare-fun bs!524911 () Bool)

(declare-fun b!2918491 () Bool)

(assert (= bs!524911 (and b!2918491 d!838350)))

(declare-fun lambda!108605 () Int)

(assert (=> bs!524911 (not (= lambda!108605 lambda!108600))))

(declare-fun bs!524912 () Bool)

(assert (= bs!524912 (and b!2918491 b!2917778)))

(assert (=> bs!524912 (not (= lambda!108605 lambda!108575))))

(declare-fun bs!524913 () Bool)

(assert (= bs!524913 (and b!2918491 d!838306)))

(assert (=> bs!524913 (not (= lambda!108605 lambda!108588))))

(assert (=> bs!524912 (not (= lambda!108605 lambda!108576))))

(assert (=> bs!524913 (not (= lambda!108605 lambda!108587))))

(assert (=> b!2918491 true))

(assert (=> b!2918491 true))

(declare-fun bs!524914 () Bool)

(declare-fun b!2918489 () Bool)

(assert (= bs!524914 (and b!2918489 d!838350)))

(declare-fun lambda!108606 () Int)

(assert (=> bs!524914 (not (= lambda!108606 lambda!108600))))

(declare-fun bs!524915 () Bool)

(assert (= bs!524915 (and b!2918489 b!2917778)))

(assert (=> bs!524915 (not (= lambda!108606 lambda!108575))))

(declare-fun bs!524916 () Bool)

(assert (= bs!524916 (and b!2918489 b!2918491)))

(assert (=> bs!524916 (not (= lambda!108606 lambda!108605))))

(declare-fun bs!524917 () Bool)

(assert (= bs!524917 (and b!2918489 d!838306)))

(assert (=> bs!524917 (= lambda!108606 lambda!108588)))

(assert (=> bs!524915 (= lambda!108606 lambda!108576)))

(assert (=> bs!524917 (not (= lambda!108606 lambda!108587))))

(assert (=> b!2918489 true))

(assert (=> b!2918489 true))

(declare-fun bm!190832 () Bool)

(declare-fun c!476133 () Bool)

(declare-fun call!190838 () Bool)

(assert (=> bm!190832 (= call!190838 (Exists!1361 (ite c!476133 lambda!108605 lambda!108606)))))

(declare-fun b!2918485 () Bool)

(declare-fun e!1841399 () Bool)

(declare-fun e!1841396 () Bool)

(assert (=> b!2918485 (= e!1841399 e!1841396)))

(declare-fun res!1204891 () Bool)

(assert (=> b!2918485 (= res!1204891 (matchRSpec!1118 (regOne!18475 r!17423) s!11993))))

(assert (=> b!2918485 (=> res!1204891 e!1841396)))

(declare-fun b!2918486 () Bool)

(assert (=> b!2918486 (= e!1841396 (matchRSpec!1118 (regTwo!18475 r!17423) s!11993))))

(declare-fun b!2918487 () Bool)

(declare-fun e!1841395 () Bool)

(declare-fun call!190837 () Bool)

(assert (=> b!2918487 (= e!1841395 call!190837)))

(declare-fun d!838368 () Bool)

(declare-fun c!476132 () Bool)

(assert (=> d!838368 (= c!476132 ((_ is EmptyExpr!8981) r!17423))))

(assert (=> d!838368 (= (matchRSpec!1118 r!17423 s!11993) e!1841395)))

(declare-fun bm!190833 () Bool)

(assert (=> bm!190833 (= call!190837 (isEmpty!18979 s!11993))))

(declare-fun b!2918488 () Bool)

(declare-fun c!476131 () Bool)

(assert (=> b!2918488 (= c!476131 ((_ is ElementMatch!8981) r!17423))))

(declare-fun e!1841401 () Bool)

(declare-fun e!1841400 () Bool)

(assert (=> b!2918488 (= e!1841401 e!1841400)))

(declare-fun e!1841398 () Bool)

(assert (=> b!2918489 (= e!1841398 call!190838)))

(declare-fun b!2918490 () Bool)

(declare-fun c!476134 () Bool)

(assert (=> b!2918490 (= c!476134 ((_ is Union!8981) r!17423))))

(assert (=> b!2918490 (= e!1841400 e!1841399)))

(declare-fun e!1841397 () Bool)

(assert (=> b!2918491 (= e!1841397 call!190838)))

(declare-fun b!2918492 () Bool)

(assert (=> b!2918492 (= e!1841400 (= s!11993 (Cons!34722 (c!475943 r!17423) Nil!34722)))))

(declare-fun b!2918493 () Bool)

(declare-fun res!1204892 () Bool)

(assert (=> b!2918493 (=> res!1204892 e!1841397)))

(assert (=> b!2918493 (= res!1204892 call!190837)))

(assert (=> b!2918493 (= e!1841398 e!1841397)))

(declare-fun b!2918494 () Bool)

(assert (=> b!2918494 (= e!1841399 e!1841398)))

(assert (=> b!2918494 (= c!476133 ((_ is Star!8981) r!17423))))

(declare-fun b!2918495 () Bool)

(assert (=> b!2918495 (= e!1841395 e!1841401)))

(declare-fun res!1204893 () Bool)

(assert (=> b!2918495 (= res!1204893 (not ((_ is EmptyLang!8981) r!17423)))))

(assert (=> b!2918495 (=> (not res!1204893) (not e!1841401))))

(assert (= (and d!838368 c!476132) b!2918487))

(assert (= (and d!838368 (not c!476132)) b!2918495))

(assert (= (and b!2918495 res!1204893) b!2918488))

(assert (= (and b!2918488 c!476131) b!2918492))

(assert (= (and b!2918488 (not c!476131)) b!2918490))

(assert (= (and b!2918490 c!476134) b!2918485))

(assert (= (and b!2918490 (not c!476134)) b!2918494))

(assert (= (and b!2918485 (not res!1204891)) b!2918486))

(assert (= (and b!2918494 c!476133) b!2918493))

(assert (= (and b!2918494 (not c!476133)) b!2918489))

(assert (= (and b!2918493 (not res!1204892)) b!2918491))

(assert (= (or b!2918491 b!2918489) bm!190832))

(assert (= (or b!2918487 b!2918493) bm!190833))

(declare-fun m!3316149 () Bool)

(assert (=> bm!190832 m!3316149))

(declare-fun m!3316151 () Bool)

(assert (=> b!2918485 m!3316151))

(declare-fun m!3316153 () Bool)

(assert (=> b!2918486 m!3316153))

(assert (=> bm!190833 m!3315789))

(assert (=> b!2917781 d!838368))

(declare-fun b!2918496 () Bool)

(declare-fun res!1204895 () Bool)

(declare-fun e!1841407 () Bool)

(assert (=> b!2918496 (=> res!1204895 e!1841407)))

(assert (=> b!2918496 (= res!1204895 (not (isEmpty!18979 (tail!4710 s!11993))))))

(declare-fun b!2918497 () Bool)

(declare-fun e!1841405 () Bool)

(assert (=> b!2918497 (= e!1841405 e!1841407)))

(declare-fun res!1204901 () Bool)

(assert (=> b!2918497 (=> res!1204901 e!1841407)))

(declare-fun call!190839 () Bool)

(assert (=> b!2918497 (= res!1204901 call!190839)))

(declare-fun b!2918498 () Bool)

(declare-fun e!1841402 () Bool)

(assert (=> b!2918498 (= e!1841402 (matchR!3863 (derivativeStep!2425 r!17423 (head!6484 s!11993)) (tail!4710 s!11993)))))

(declare-fun b!2918499 () Bool)

(assert (=> b!2918499 (= e!1841407 (not (= (head!6484 s!11993) (c!475943 r!17423))))))

(declare-fun d!838370 () Bool)

(declare-fun e!1841408 () Bool)

(assert (=> d!838370 e!1841408))

(declare-fun c!476136 () Bool)

(assert (=> d!838370 (= c!476136 ((_ is EmptyExpr!8981) r!17423))))

(declare-fun lt!1025276 () Bool)

(assert (=> d!838370 (= lt!1025276 e!1841402)))

(declare-fun c!476137 () Bool)

(assert (=> d!838370 (= c!476137 (isEmpty!18979 s!11993))))

(assert (=> d!838370 (validRegex!3714 r!17423)))

(assert (=> d!838370 (= (matchR!3863 r!17423 s!11993) lt!1025276)))

(declare-fun b!2918500 () Bool)

(declare-fun e!1841406 () Bool)

(assert (=> b!2918500 (= e!1841406 e!1841405)))

(declare-fun res!1204897 () Bool)

(assert (=> b!2918500 (=> (not res!1204897) (not e!1841405))))

(assert (=> b!2918500 (= res!1204897 (not lt!1025276))))

(declare-fun b!2918501 () Bool)

(declare-fun e!1841403 () Bool)

(assert (=> b!2918501 (= e!1841403 (not lt!1025276))))

(declare-fun b!2918502 () Bool)

(assert (=> b!2918502 (= e!1841402 (nullable!2811 r!17423))))

(declare-fun b!2918503 () Bool)

(declare-fun res!1204900 () Bool)

(declare-fun e!1841404 () Bool)

(assert (=> b!2918503 (=> (not res!1204900) (not e!1841404))))

(assert (=> b!2918503 (= res!1204900 (isEmpty!18979 (tail!4710 s!11993)))))

(declare-fun b!2918504 () Bool)

(assert (=> b!2918504 (= e!1841408 e!1841403)))

(declare-fun c!476135 () Bool)

(assert (=> b!2918504 (= c!476135 ((_ is EmptyLang!8981) r!17423))))

(declare-fun b!2918505 () Bool)

(declare-fun res!1204899 () Bool)

(assert (=> b!2918505 (=> (not res!1204899) (not e!1841404))))

(assert (=> b!2918505 (= res!1204899 (not call!190839))))

(declare-fun b!2918506 () Bool)

(declare-fun res!1204894 () Bool)

(assert (=> b!2918506 (=> res!1204894 e!1841406)))

(assert (=> b!2918506 (= res!1204894 (not ((_ is ElementMatch!8981) r!17423)))))

(assert (=> b!2918506 (= e!1841403 e!1841406)))

(declare-fun b!2918507 () Bool)

(assert (=> b!2918507 (= e!1841404 (= (head!6484 s!11993) (c!475943 r!17423)))))

(declare-fun bm!190834 () Bool)

(assert (=> bm!190834 (= call!190839 (isEmpty!18979 s!11993))))

(declare-fun b!2918508 () Bool)

(declare-fun res!1204896 () Bool)

(assert (=> b!2918508 (=> res!1204896 e!1841406)))

(assert (=> b!2918508 (= res!1204896 e!1841404)))

(declare-fun res!1204898 () Bool)

(assert (=> b!2918508 (=> (not res!1204898) (not e!1841404))))

(assert (=> b!2918508 (= res!1204898 lt!1025276)))

(declare-fun b!2918509 () Bool)

(assert (=> b!2918509 (= e!1841408 (= lt!1025276 call!190839))))

(assert (= (and d!838370 c!476137) b!2918502))

(assert (= (and d!838370 (not c!476137)) b!2918498))

(assert (= (and d!838370 c!476136) b!2918509))

(assert (= (and d!838370 (not c!476136)) b!2918504))

(assert (= (and b!2918504 c!476135) b!2918501))

(assert (= (and b!2918504 (not c!476135)) b!2918506))

(assert (= (and b!2918506 (not res!1204894)) b!2918508))

(assert (= (and b!2918508 res!1204898) b!2918505))

(assert (= (and b!2918505 res!1204899) b!2918503))

(assert (= (and b!2918503 res!1204900) b!2918507))

(assert (= (and b!2918508 (not res!1204896)) b!2918500))

(assert (= (and b!2918500 res!1204897) b!2918497))

(assert (= (and b!2918497 (not res!1204901)) b!2918496))

(assert (= (and b!2918496 (not res!1204895)) b!2918499))

(assert (= (or b!2918509 b!2918497 b!2918505) bm!190834))

(declare-fun m!3316155 () Bool)

(assert (=> b!2918499 m!3316155))

(assert (=> b!2918507 m!3316155))

(assert (=> d!838370 m!3315789))

(assert (=> d!838370 m!3315777))

(assert (=> bm!190834 m!3315789))

(assert (=> b!2918502 m!3316139))

(declare-fun m!3316157 () Bool)

(assert (=> b!2918496 m!3316157))

(assert (=> b!2918496 m!3316157))

(declare-fun m!3316159 () Bool)

(assert (=> b!2918496 m!3316159))

(assert (=> b!2918498 m!3316155))

(assert (=> b!2918498 m!3316155))

(declare-fun m!3316161 () Bool)

(assert (=> b!2918498 m!3316161))

(assert (=> b!2918498 m!3316157))

(assert (=> b!2918498 m!3316161))

(assert (=> b!2918498 m!3316157))

(declare-fun m!3316163 () Bool)

(assert (=> b!2918498 m!3316163))

(assert (=> b!2918503 m!3316157))

(assert (=> b!2918503 m!3316157))

(assert (=> b!2918503 m!3316159))

(assert (=> b!2917781 d!838370))

(declare-fun d!838372 () Bool)

(assert (=> d!838372 (= (matchR!3863 r!17423 s!11993) (matchRSpec!1118 r!17423 s!11993))))

(declare-fun lt!1025279 () Unit!48301)

(declare-fun choose!17200 (Regex!8981 List!34846) Unit!48301)

(assert (=> d!838372 (= lt!1025279 (choose!17200 r!17423 s!11993))))

(assert (=> d!838372 (validRegex!3714 r!17423)))

(assert (=> d!838372 (= (mainMatchTheorem!1118 r!17423 s!11993) lt!1025279)))

(declare-fun bs!524918 () Bool)

(assert (= bs!524918 d!838372))

(assert (=> bs!524918 m!3315757))

(assert (=> bs!524918 m!3315755))

(declare-fun m!3316165 () Bool)

(assert (=> bs!524918 m!3316165))

(assert (=> bs!524918 m!3315777))

(assert (=> b!2917781 d!838372))

(declare-fun b!2918510 () Bool)

(declare-fun e!1841417 () Regex!8981)

(declare-fun lt!1025281 () Regex!8981)

(assert (=> b!2918510 (= e!1841417 (Star!8981 lt!1025281))))

(declare-fun b!2918511 () Bool)

(assert (=> b!2918511 (= e!1841417 EmptyExpr!8981)))

(declare-fun b!2918512 () Bool)

(declare-fun e!1841413 () Regex!8981)

(declare-fun e!1841414 () Regex!8981)

(assert (=> b!2918512 (= e!1841413 e!1841414)))

(declare-fun c!476146 () Bool)

(assert (=> b!2918512 (= c!476146 ((_ is Star!8981) (regTwo!18474 r!17423)))))

(declare-fun bm!190835 () Bool)

(declare-fun call!190844 () Bool)

(declare-fun call!190840 () Bool)

(assert (=> bm!190835 (= call!190844 call!190840)))

(declare-fun bm!190836 () Bool)

(declare-fun call!190842 () Regex!8981)

(declare-fun c!476141 () Bool)

(assert (=> bm!190836 (= call!190842 (simplify!18 (ite c!476141 (regTwo!18475 (regTwo!18474 r!17423)) (regOne!18474 (regTwo!18474 r!17423)))))))

(declare-fun b!2918513 () Bool)

(declare-fun e!1841420 () Regex!8981)

(declare-fun e!1841419 () Regex!8981)

(assert (=> b!2918513 (= e!1841420 e!1841419)))

(declare-fun c!476144 () Bool)

(assert (=> b!2918513 (= c!476144 ((_ is ElementMatch!8981) (regTwo!18474 r!17423)))))

(declare-fun b!2918514 () Bool)

(assert (=> b!2918514 (= e!1841420 EmptyLang!8981)))

(declare-fun b!2918515 () Bool)

(declare-fun e!1841421 () Bool)

(declare-fun lt!1025282 () Regex!8981)

(assert (=> b!2918515 (= e!1841421 (= (nullable!2811 lt!1025282) (nullable!2811 (regTwo!18474 r!17423))))))

(declare-fun b!2918516 () Bool)

(declare-fun e!1841409 () Bool)

(declare-fun call!190841 () Bool)

(assert (=> b!2918516 (= e!1841409 call!190841)))

(declare-fun bm!190838 () Bool)

(declare-fun call!190843 () Regex!8981)

(declare-fun call!190846 () Regex!8981)

(assert (=> bm!190838 (= call!190843 call!190846)))

(declare-fun b!2918517 () Bool)

(declare-fun e!1841416 () Regex!8981)

(declare-fun lt!1025280 () Regex!8981)

(declare-fun lt!1025285 () Regex!8981)

(assert (=> b!2918517 (= e!1841416 (Union!8981 lt!1025280 lt!1025285))))

(declare-fun b!2918518 () Bool)

(declare-fun e!1841412 () Regex!8981)

(declare-fun lt!1025284 () Regex!8981)

(declare-fun lt!1025283 () Regex!8981)

(assert (=> b!2918518 (= e!1841412 (Concat!14302 lt!1025284 lt!1025283))))

(declare-fun b!2918519 () Bool)

(declare-fun c!476142 () Bool)

(assert (=> b!2918519 (= c!476142 ((_ is EmptyExpr!8981) (regTwo!18474 r!17423)))))

(assert (=> b!2918519 (= e!1841419 e!1841413)))

(declare-fun b!2918520 () Bool)

(assert (=> b!2918520 (= c!476141 ((_ is Union!8981) (regTwo!18474 r!17423)))))

(declare-fun e!1841411 () Regex!8981)

(assert (=> b!2918520 (= e!1841414 e!1841411)))

(declare-fun b!2918521 () Bool)

(assert (=> b!2918521 (= e!1841419 (regTwo!18474 r!17423))))

(declare-fun b!2918522 () Bool)

(assert (=> b!2918522 (= e!1841413 EmptyExpr!8981)))

(declare-fun bm!190839 () Bool)

(assert (=> bm!190839 (= call!190840 (isEmptyLang!166 (ite c!476146 lt!1025281 (ite c!476141 lt!1025285 lt!1025284))))))

(declare-fun b!2918523 () Bool)

(declare-fun e!1841418 () Regex!8981)

(assert (=> b!2918523 (= e!1841418 e!1841412)))

(declare-fun c!476145 () Bool)

(assert (=> b!2918523 (= c!476145 call!190841)))

(declare-fun b!2918524 () Bool)

(declare-fun c!476143 () Bool)

(assert (=> b!2918524 (= c!476143 call!190844)))

(declare-fun e!1841422 () Regex!8981)

(assert (=> b!2918524 (= e!1841422 e!1841416)))

(declare-fun bm!190840 () Bool)

(declare-fun call!190845 () Bool)

(assert (=> bm!190840 (= call!190845 (isEmptyLang!166 (ite c!476141 lt!1025280 lt!1025283)))))

(declare-fun b!2918525 () Bool)

(assert (=> b!2918525 (= e!1841411 e!1841422)))

(assert (=> b!2918525 (= lt!1025280 call!190843)))

(assert (=> b!2918525 (= lt!1025285 call!190842)))

(declare-fun c!476138 () Bool)

(assert (=> b!2918525 (= c!476138 call!190845)))

(declare-fun bm!190837 () Bool)

(assert (=> bm!190837 (= call!190841 (isEmptyExpr!251 (ite c!476146 lt!1025281 lt!1025283)))))

(declare-fun d!838374 () Bool)

(assert (=> d!838374 e!1841421))

(declare-fun res!1204904 () Bool)

(assert (=> d!838374 (=> (not res!1204904) (not e!1841421))))

(assert (=> d!838374 (= res!1204904 (validRegex!3714 lt!1025282))))

(assert (=> d!838374 (= lt!1025282 e!1841420)))

(declare-fun c!476147 () Bool)

(assert (=> d!838374 (= c!476147 ((_ is EmptyLang!8981) (regTwo!18474 r!17423)))))

(assert (=> d!838374 (validRegex!3714 (regTwo!18474 r!17423))))

(assert (=> d!838374 (= (simplify!18 (regTwo!18474 r!17423)) lt!1025282)))

(declare-fun b!2918526 () Bool)

(declare-fun e!1841415 () Regex!8981)

(assert (=> b!2918526 (= e!1841415 EmptyLang!8981)))

(declare-fun b!2918527 () Bool)

(declare-fun c!476140 () Bool)

(assert (=> b!2918527 (= c!476140 (isEmptyExpr!251 lt!1025284))))

(assert (=> b!2918527 (= e!1841415 e!1841418)))

(declare-fun b!2918528 () Bool)

(assert (=> b!2918528 (= e!1841418 lt!1025283)))

(declare-fun b!2918529 () Bool)

(assert (=> b!2918529 (= e!1841411 e!1841415)))

(assert (=> b!2918529 (= lt!1025284 call!190842)))

(assert (=> b!2918529 (= lt!1025283 call!190843)))

(declare-fun res!1204902 () Bool)

(assert (=> b!2918529 (= res!1204902 call!190844)))

(declare-fun e!1841410 () Bool)

(assert (=> b!2918529 (=> res!1204902 e!1841410)))

(declare-fun c!476139 () Bool)

(assert (=> b!2918529 (= c!476139 e!1841410)))

(declare-fun b!2918530 () Bool)

(assert (=> b!2918530 (= e!1841416 lt!1025280)))

(declare-fun b!2918531 () Bool)

(assert (=> b!2918531 (= e!1841422 lt!1025285)))

(declare-fun b!2918532 () Bool)

(assert (=> b!2918532 (= e!1841412 lt!1025284)))

(declare-fun b!2918533 () Bool)

(declare-fun c!476148 () Bool)

(assert (=> b!2918533 (= c!476148 e!1841409)))

(declare-fun res!1204903 () Bool)

(assert (=> b!2918533 (=> res!1204903 e!1841409)))

(assert (=> b!2918533 (= res!1204903 call!190840)))

(assert (=> b!2918533 (= lt!1025281 call!190846)))

(assert (=> b!2918533 (= e!1841414 e!1841417)))

(declare-fun b!2918534 () Bool)

(assert (=> b!2918534 (= e!1841410 call!190845)))

(declare-fun bm!190841 () Bool)

(assert (=> bm!190841 (= call!190846 (simplify!18 (ite c!476146 (reg!9310 (regTwo!18474 r!17423)) (ite c!476141 (regOne!18475 (regTwo!18474 r!17423)) (regTwo!18474 (regTwo!18474 r!17423))))))))

(assert (= (and d!838374 c!476147) b!2918514))

(assert (= (and d!838374 (not c!476147)) b!2918513))

(assert (= (and b!2918513 c!476144) b!2918521))

(assert (= (and b!2918513 (not c!476144)) b!2918519))

(assert (= (and b!2918519 c!476142) b!2918522))

(assert (= (and b!2918519 (not c!476142)) b!2918512))

(assert (= (and b!2918512 c!476146) b!2918533))

(assert (= (and b!2918512 (not c!476146)) b!2918520))

(assert (= (and b!2918533 (not res!1204903)) b!2918516))

(assert (= (and b!2918533 c!476148) b!2918511))

(assert (= (and b!2918533 (not c!476148)) b!2918510))

(assert (= (and b!2918520 c!476141) b!2918525))

(assert (= (and b!2918520 (not c!476141)) b!2918529))

(assert (= (and b!2918525 c!476138) b!2918531))

(assert (= (and b!2918525 (not c!476138)) b!2918524))

(assert (= (and b!2918524 c!476143) b!2918530))

(assert (= (and b!2918524 (not c!476143)) b!2918517))

(assert (= (and b!2918529 (not res!1204902)) b!2918534))

(assert (= (and b!2918529 c!476139) b!2918526))

(assert (= (and b!2918529 (not c!476139)) b!2918527))

(assert (= (and b!2918527 c!476140) b!2918528))

(assert (= (and b!2918527 (not c!476140)) b!2918523))

(assert (= (and b!2918523 c!476145) b!2918532))

(assert (= (and b!2918523 (not c!476145)) b!2918518))

(assert (= (or b!2918525 b!2918529) bm!190838))

(assert (= (or b!2918525 b!2918529) bm!190836))

(assert (= (or b!2918524 b!2918529) bm!190835))

(assert (= (or b!2918525 b!2918534) bm!190840))

(assert (= (or b!2918516 b!2918523) bm!190837))

(assert (= (or b!2918533 bm!190838) bm!190841))

(assert (= (or b!2918533 bm!190835) bm!190839))

(assert (= (and d!838374 res!1204904) b!2918515))

(declare-fun m!3316167 () Bool)

(assert (=> bm!190836 m!3316167))

(declare-fun m!3316169 () Bool)

(assert (=> bm!190839 m!3316169))

(declare-fun m!3316171 () Bool)

(assert (=> bm!190841 m!3316171))

(declare-fun m!3316173 () Bool)

(assert (=> bm!190840 m!3316173))

(declare-fun m!3316175 () Bool)

(assert (=> d!838374 m!3316175))

(assert (=> d!838374 m!3315829))

(declare-fun m!3316177 () Bool)

(assert (=> b!2918527 m!3316177))

(declare-fun m!3316179 () Bool)

(assert (=> b!2918515 m!3316179))

(assert (=> b!2918515 m!3315831))

(declare-fun m!3316181 () Bool)

(assert (=> bm!190837 m!3316181))

(assert (=> b!2917770 d!838374))

(declare-fun d!838376 () Bool)

(assert (=> d!838376 (= (matchR!3863 (regOne!18474 r!17423) (_1!19982 lt!1025159)) (matchR!3863 (simplify!18 (regOne!18474 r!17423)) (_1!19982 lt!1025159)))))

(declare-fun lt!1025288 () Unit!48301)

(declare-fun choose!17202 (Regex!8981 List!34846) Unit!48301)

(assert (=> d!838376 (= lt!1025288 (choose!17202 (regOne!18474 r!17423) (_1!19982 lt!1025159)))))

(assert (=> d!838376 (validRegex!3714 (regOne!18474 r!17423))))

(assert (=> d!838376 (= (lemmaSimplifySound!16 (regOne!18474 r!17423) (_1!19982 lt!1025159)) lt!1025288)))

(declare-fun bs!524919 () Bool)

(assert (= bs!524919 d!838376))

(declare-fun m!3316183 () Bool)

(assert (=> bs!524919 m!3316183))

(assert (=> bs!524919 m!3315747))

(assert (=> bs!524919 m!3315747))

(declare-fun m!3316185 () Bool)

(assert (=> bs!524919 m!3316185))

(assert (=> bs!524919 m!3315771))

(assert (=> bs!524919 m!3315883))

(assert (=> b!2917770 d!838376))

(declare-fun b!2918535 () Bool)

(declare-fun res!1204906 () Bool)

(declare-fun e!1841428 () Bool)

(assert (=> b!2918535 (=> res!1204906 e!1841428)))

(assert (=> b!2918535 (= res!1204906 (not (isEmpty!18979 (tail!4710 (_1!19982 lt!1025159)))))))

(declare-fun b!2918536 () Bool)

(declare-fun e!1841426 () Bool)

(assert (=> b!2918536 (= e!1841426 e!1841428)))

(declare-fun res!1204912 () Bool)

(assert (=> b!2918536 (=> res!1204912 e!1841428)))

(declare-fun call!190847 () Bool)

(assert (=> b!2918536 (= res!1204912 call!190847)))

(declare-fun b!2918537 () Bool)

(declare-fun e!1841423 () Bool)

(assert (=> b!2918537 (= e!1841423 (matchR!3863 (derivativeStep!2425 lt!1025161 (head!6484 (_1!19982 lt!1025159))) (tail!4710 (_1!19982 lt!1025159))))))

(declare-fun b!2918538 () Bool)

(assert (=> b!2918538 (= e!1841428 (not (= (head!6484 (_1!19982 lt!1025159)) (c!475943 lt!1025161))))))

(declare-fun d!838378 () Bool)

(declare-fun e!1841429 () Bool)

(assert (=> d!838378 e!1841429))

(declare-fun c!476150 () Bool)

(assert (=> d!838378 (= c!476150 ((_ is EmptyExpr!8981) lt!1025161))))

(declare-fun lt!1025289 () Bool)

(assert (=> d!838378 (= lt!1025289 e!1841423)))

(declare-fun c!476151 () Bool)

(assert (=> d!838378 (= c!476151 (isEmpty!18979 (_1!19982 lt!1025159)))))

(assert (=> d!838378 (validRegex!3714 lt!1025161)))

(assert (=> d!838378 (= (matchR!3863 lt!1025161 (_1!19982 lt!1025159)) lt!1025289)))

(declare-fun b!2918539 () Bool)

(declare-fun e!1841427 () Bool)

(assert (=> b!2918539 (= e!1841427 e!1841426)))

(declare-fun res!1204908 () Bool)

(assert (=> b!2918539 (=> (not res!1204908) (not e!1841426))))

(assert (=> b!2918539 (= res!1204908 (not lt!1025289))))

(declare-fun b!2918540 () Bool)

(declare-fun e!1841424 () Bool)

(assert (=> b!2918540 (= e!1841424 (not lt!1025289))))

(declare-fun b!2918541 () Bool)

(assert (=> b!2918541 (= e!1841423 (nullable!2811 lt!1025161))))

(declare-fun b!2918542 () Bool)

(declare-fun res!1204911 () Bool)

(declare-fun e!1841425 () Bool)

(assert (=> b!2918542 (=> (not res!1204911) (not e!1841425))))

(assert (=> b!2918542 (= res!1204911 (isEmpty!18979 (tail!4710 (_1!19982 lt!1025159))))))

(declare-fun b!2918543 () Bool)

(assert (=> b!2918543 (= e!1841429 e!1841424)))

(declare-fun c!476149 () Bool)

(assert (=> b!2918543 (= c!476149 ((_ is EmptyLang!8981) lt!1025161))))

(declare-fun b!2918544 () Bool)

(declare-fun res!1204910 () Bool)

(assert (=> b!2918544 (=> (not res!1204910) (not e!1841425))))

(assert (=> b!2918544 (= res!1204910 (not call!190847))))

(declare-fun b!2918545 () Bool)

(declare-fun res!1204905 () Bool)

(assert (=> b!2918545 (=> res!1204905 e!1841427)))

(assert (=> b!2918545 (= res!1204905 (not ((_ is ElementMatch!8981) lt!1025161)))))

(assert (=> b!2918545 (= e!1841424 e!1841427)))

(declare-fun b!2918546 () Bool)

(assert (=> b!2918546 (= e!1841425 (= (head!6484 (_1!19982 lt!1025159)) (c!475943 lt!1025161)))))

(declare-fun bm!190842 () Bool)

(assert (=> bm!190842 (= call!190847 (isEmpty!18979 (_1!19982 lt!1025159)))))

(declare-fun b!2918547 () Bool)

(declare-fun res!1204907 () Bool)

(assert (=> b!2918547 (=> res!1204907 e!1841427)))

(assert (=> b!2918547 (= res!1204907 e!1841425)))

(declare-fun res!1204909 () Bool)

(assert (=> b!2918547 (=> (not res!1204909) (not e!1841425))))

(assert (=> b!2918547 (= res!1204909 lt!1025289)))

(declare-fun b!2918548 () Bool)

(assert (=> b!2918548 (= e!1841429 (= lt!1025289 call!190847))))

(assert (= (and d!838378 c!476151) b!2918541))

(assert (= (and d!838378 (not c!476151)) b!2918537))

(assert (= (and d!838378 c!476150) b!2918548))

(assert (= (and d!838378 (not c!476150)) b!2918543))

(assert (= (and b!2918543 c!476149) b!2918540))

(assert (= (and b!2918543 (not c!476149)) b!2918545))

(assert (= (and b!2918545 (not res!1204905)) b!2918547))

(assert (= (and b!2918547 res!1204909) b!2918544))

(assert (= (and b!2918544 res!1204910) b!2918542))

(assert (= (and b!2918542 res!1204911) b!2918546))

(assert (= (and b!2918547 (not res!1204907)) b!2918539))

(assert (= (and b!2918539 res!1204908) b!2918536))

(assert (= (and b!2918536 (not res!1204912)) b!2918535))

(assert (= (and b!2918535 (not res!1204906)) b!2918538))

(assert (= (or b!2918548 b!2918536 b!2918544) bm!190842))

(assert (=> b!2918538 m!3315871))

(assert (=> b!2918546 m!3315871))

(assert (=> d!838378 m!3315879))

(assert (=> d!838378 m!3315749))

(assert (=> bm!190842 m!3315879))

(declare-fun m!3316187 () Bool)

(assert (=> b!2918541 m!3316187))

(assert (=> b!2918535 m!3315891))

(assert (=> b!2918535 m!3315891))

(assert (=> b!2918535 m!3315893))

(assert (=> b!2918537 m!3315871))

(assert (=> b!2918537 m!3315871))

(declare-fun m!3316189 () Bool)

(assert (=> b!2918537 m!3316189))

(assert (=> b!2918537 m!3315891))

(assert (=> b!2918537 m!3316189))

(assert (=> b!2918537 m!3315891))

(declare-fun m!3316191 () Bool)

(assert (=> b!2918537 m!3316191))

(assert (=> b!2918542 m!3315891))

(assert (=> b!2918542 m!3315891))

(assert (=> b!2918542 m!3315893))

(assert (=> b!2917770 d!838378))

(declare-fun b!2918549 () Bool)

(declare-fun e!1841438 () Regex!8981)

(declare-fun lt!1025291 () Regex!8981)

(assert (=> b!2918549 (= e!1841438 (Star!8981 lt!1025291))))

(declare-fun b!2918550 () Bool)

(assert (=> b!2918550 (= e!1841438 EmptyExpr!8981)))

(declare-fun b!2918551 () Bool)

(declare-fun e!1841434 () Regex!8981)

(declare-fun e!1841435 () Regex!8981)

(assert (=> b!2918551 (= e!1841434 e!1841435)))

(declare-fun c!476160 () Bool)

(assert (=> b!2918551 (= c!476160 ((_ is Star!8981) (regOne!18474 r!17423)))))

(declare-fun bm!190843 () Bool)

(declare-fun call!190852 () Bool)

(declare-fun call!190848 () Bool)

(assert (=> bm!190843 (= call!190852 call!190848)))

(declare-fun bm!190844 () Bool)

(declare-fun call!190850 () Regex!8981)

(declare-fun c!476155 () Bool)

(assert (=> bm!190844 (= call!190850 (simplify!18 (ite c!476155 (regTwo!18475 (regOne!18474 r!17423)) (regOne!18474 (regOne!18474 r!17423)))))))

(declare-fun b!2918552 () Bool)

(declare-fun e!1841441 () Regex!8981)

(declare-fun e!1841440 () Regex!8981)

(assert (=> b!2918552 (= e!1841441 e!1841440)))

(declare-fun c!476158 () Bool)

(assert (=> b!2918552 (= c!476158 ((_ is ElementMatch!8981) (regOne!18474 r!17423)))))

(declare-fun b!2918553 () Bool)

(assert (=> b!2918553 (= e!1841441 EmptyLang!8981)))

(declare-fun b!2918554 () Bool)

(declare-fun e!1841442 () Bool)

(declare-fun lt!1025292 () Regex!8981)

(assert (=> b!2918554 (= e!1841442 (= (nullable!2811 lt!1025292) (nullable!2811 (regOne!18474 r!17423))))))

(declare-fun b!2918555 () Bool)

(declare-fun e!1841430 () Bool)

(declare-fun call!190849 () Bool)

(assert (=> b!2918555 (= e!1841430 call!190849)))

(declare-fun bm!190846 () Bool)

(declare-fun call!190851 () Regex!8981)

(declare-fun call!190854 () Regex!8981)

(assert (=> bm!190846 (= call!190851 call!190854)))

(declare-fun b!2918556 () Bool)

(declare-fun e!1841437 () Regex!8981)

(declare-fun lt!1025290 () Regex!8981)

(declare-fun lt!1025295 () Regex!8981)

(assert (=> b!2918556 (= e!1841437 (Union!8981 lt!1025290 lt!1025295))))

(declare-fun b!2918557 () Bool)

(declare-fun e!1841433 () Regex!8981)

(declare-fun lt!1025294 () Regex!8981)

(declare-fun lt!1025293 () Regex!8981)

(assert (=> b!2918557 (= e!1841433 (Concat!14302 lt!1025294 lt!1025293))))

(declare-fun b!2918558 () Bool)

(declare-fun c!476156 () Bool)

(assert (=> b!2918558 (= c!476156 ((_ is EmptyExpr!8981) (regOne!18474 r!17423)))))

(assert (=> b!2918558 (= e!1841440 e!1841434)))

(declare-fun b!2918559 () Bool)

(assert (=> b!2918559 (= c!476155 ((_ is Union!8981) (regOne!18474 r!17423)))))

(declare-fun e!1841432 () Regex!8981)

(assert (=> b!2918559 (= e!1841435 e!1841432)))

(declare-fun b!2918560 () Bool)

(assert (=> b!2918560 (= e!1841440 (regOne!18474 r!17423))))

(declare-fun b!2918561 () Bool)

(assert (=> b!2918561 (= e!1841434 EmptyExpr!8981)))

(declare-fun bm!190847 () Bool)

(assert (=> bm!190847 (= call!190848 (isEmptyLang!166 (ite c!476160 lt!1025291 (ite c!476155 lt!1025295 lt!1025294))))))

(declare-fun b!2918562 () Bool)

(declare-fun e!1841439 () Regex!8981)

(assert (=> b!2918562 (= e!1841439 e!1841433)))

(declare-fun c!476159 () Bool)

(assert (=> b!2918562 (= c!476159 call!190849)))

(declare-fun b!2918563 () Bool)

(declare-fun c!476157 () Bool)

(assert (=> b!2918563 (= c!476157 call!190852)))

(declare-fun e!1841443 () Regex!8981)

(assert (=> b!2918563 (= e!1841443 e!1841437)))

(declare-fun bm!190848 () Bool)

(declare-fun call!190853 () Bool)

(assert (=> bm!190848 (= call!190853 (isEmptyLang!166 (ite c!476155 lt!1025290 lt!1025293)))))

(declare-fun b!2918564 () Bool)

(assert (=> b!2918564 (= e!1841432 e!1841443)))

(assert (=> b!2918564 (= lt!1025290 call!190851)))

(assert (=> b!2918564 (= lt!1025295 call!190850)))

(declare-fun c!476152 () Bool)

(assert (=> b!2918564 (= c!476152 call!190853)))

(declare-fun bm!190845 () Bool)

(assert (=> bm!190845 (= call!190849 (isEmptyExpr!251 (ite c!476160 lt!1025291 lt!1025293)))))

(declare-fun d!838380 () Bool)

(assert (=> d!838380 e!1841442))

(declare-fun res!1204915 () Bool)

(assert (=> d!838380 (=> (not res!1204915) (not e!1841442))))

(assert (=> d!838380 (= res!1204915 (validRegex!3714 lt!1025292))))

(assert (=> d!838380 (= lt!1025292 e!1841441)))

(declare-fun c!476161 () Bool)

(assert (=> d!838380 (= c!476161 ((_ is EmptyLang!8981) (regOne!18474 r!17423)))))

(assert (=> d!838380 (validRegex!3714 (regOne!18474 r!17423))))

(assert (=> d!838380 (= (simplify!18 (regOne!18474 r!17423)) lt!1025292)))

(declare-fun b!2918565 () Bool)

(declare-fun e!1841436 () Regex!8981)

(assert (=> b!2918565 (= e!1841436 EmptyLang!8981)))

(declare-fun b!2918566 () Bool)

(declare-fun c!476154 () Bool)

(assert (=> b!2918566 (= c!476154 (isEmptyExpr!251 lt!1025294))))

(assert (=> b!2918566 (= e!1841436 e!1841439)))

(declare-fun b!2918567 () Bool)

(assert (=> b!2918567 (= e!1841439 lt!1025293)))

(declare-fun b!2918568 () Bool)

(assert (=> b!2918568 (= e!1841432 e!1841436)))

(assert (=> b!2918568 (= lt!1025294 call!190850)))

(assert (=> b!2918568 (= lt!1025293 call!190851)))

(declare-fun res!1204913 () Bool)

(assert (=> b!2918568 (= res!1204913 call!190852)))

(declare-fun e!1841431 () Bool)

(assert (=> b!2918568 (=> res!1204913 e!1841431)))

(declare-fun c!476153 () Bool)

(assert (=> b!2918568 (= c!476153 e!1841431)))

(declare-fun b!2918569 () Bool)

(assert (=> b!2918569 (= e!1841437 lt!1025290)))

(declare-fun b!2918570 () Bool)

(assert (=> b!2918570 (= e!1841443 lt!1025295)))

(declare-fun b!2918571 () Bool)

(assert (=> b!2918571 (= e!1841433 lt!1025294)))

(declare-fun b!2918572 () Bool)

(declare-fun c!476162 () Bool)

(assert (=> b!2918572 (= c!476162 e!1841430)))

(declare-fun res!1204914 () Bool)

(assert (=> b!2918572 (=> res!1204914 e!1841430)))

(assert (=> b!2918572 (= res!1204914 call!190848)))

(assert (=> b!2918572 (= lt!1025291 call!190854)))

(assert (=> b!2918572 (= e!1841435 e!1841438)))

(declare-fun b!2918573 () Bool)

(assert (=> b!2918573 (= e!1841431 call!190853)))

(declare-fun bm!190849 () Bool)

(assert (=> bm!190849 (= call!190854 (simplify!18 (ite c!476160 (reg!9310 (regOne!18474 r!17423)) (ite c!476155 (regOne!18475 (regOne!18474 r!17423)) (regTwo!18474 (regOne!18474 r!17423))))))))

(assert (= (and d!838380 c!476161) b!2918553))

(assert (= (and d!838380 (not c!476161)) b!2918552))

(assert (= (and b!2918552 c!476158) b!2918560))

(assert (= (and b!2918552 (not c!476158)) b!2918558))

(assert (= (and b!2918558 c!476156) b!2918561))

(assert (= (and b!2918558 (not c!476156)) b!2918551))

(assert (= (and b!2918551 c!476160) b!2918572))

(assert (= (and b!2918551 (not c!476160)) b!2918559))

(assert (= (and b!2918572 (not res!1204914)) b!2918555))

(assert (= (and b!2918572 c!476162) b!2918550))

(assert (= (and b!2918572 (not c!476162)) b!2918549))

(assert (= (and b!2918559 c!476155) b!2918564))

(assert (= (and b!2918559 (not c!476155)) b!2918568))

(assert (= (and b!2918564 c!476152) b!2918570))

(assert (= (and b!2918564 (not c!476152)) b!2918563))

(assert (= (and b!2918563 c!476157) b!2918569))

(assert (= (and b!2918563 (not c!476157)) b!2918556))

(assert (= (and b!2918568 (not res!1204913)) b!2918573))

(assert (= (and b!2918568 c!476153) b!2918565))

(assert (= (and b!2918568 (not c!476153)) b!2918566))

(assert (= (and b!2918566 c!476154) b!2918567))

(assert (= (and b!2918566 (not c!476154)) b!2918562))

(assert (= (and b!2918562 c!476159) b!2918571))

(assert (= (and b!2918562 (not c!476159)) b!2918557))

(assert (= (or b!2918564 b!2918568) bm!190846))

(assert (= (or b!2918564 b!2918568) bm!190844))

(assert (= (or b!2918563 b!2918568) bm!190843))

(assert (= (or b!2918564 b!2918573) bm!190848))

(assert (= (or b!2918555 b!2918562) bm!190845))

(assert (= (or b!2918572 bm!190846) bm!190849))

(assert (= (or b!2918572 bm!190843) bm!190847))

(assert (= (and d!838380 res!1204915) b!2918554))

(declare-fun m!3316193 () Bool)

(assert (=> bm!190844 m!3316193))

(declare-fun m!3316195 () Bool)

(assert (=> bm!190847 m!3316195))

(declare-fun m!3316197 () Bool)

(assert (=> bm!190849 m!3316197))

(declare-fun m!3316199 () Bool)

(assert (=> bm!190848 m!3316199))

(declare-fun m!3316201 () Bool)

(assert (=> d!838380 m!3316201))

(assert (=> d!838380 m!3315883))

(declare-fun m!3316203 () Bool)

(assert (=> b!2918566 m!3316203))

(declare-fun m!3316205 () Bool)

(assert (=> b!2918554 m!3316205))

(assert (=> b!2918554 m!3315889))

(declare-fun m!3316207 () Bool)

(assert (=> bm!190845 m!3316207))

(assert (=> b!2917770 d!838380))

(declare-fun d!838382 () Bool)

(assert (=> d!838382 (= (matchR!3863 (regTwo!18474 r!17423) (_2!19982 lt!1025159)) (matchR!3863 (simplify!18 (regTwo!18474 r!17423)) (_2!19982 lt!1025159)))))

(declare-fun lt!1025296 () Unit!48301)

(assert (=> d!838382 (= lt!1025296 (choose!17202 (regTwo!18474 r!17423) (_2!19982 lt!1025159)))))

(assert (=> d!838382 (validRegex!3714 (regTwo!18474 r!17423))))

(assert (=> d!838382 (= (lemmaSimplifySound!16 (regTwo!18474 r!17423) (_2!19982 lt!1025159)) lt!1025296)))

(declare-fun bs!524920 () Bool)

(assert (= bs!524920 d!838382))

(declare-fun m!3316209 () Bool)

(assert (=> bs!524920 m!3316209))

(assert (=> bs!524920 m!3315743))

(assert (=> bs!524920 m!3315743))

(declare-fun m!3316211 () Bool)

(assert (=> bs!524920 m!3316211))

(assert (=> bs!524920 m!3315753))

(assert (=> bs!524920 m!3315829))

(assert (=> b!2917770 d!838382))

(declare-fun b!2918574 () Bool)

(declare-fun e!1841444 () Bool)

(declare-fun e!1841445 () Bool)

(assert (=> b!2918574 (= e!1841444 e!1841445)))

(declare-fun c!476163 () Bool)

(assert (=> b!2918574 (= c!476163 ((_ is Union!8981) lt!1025161))))

(declare-fun b!2918575 () Bool)

(declare-fun e!1841448 () Bool)

(declare-fun e!1841447 () Bool)

(assert (=> b!2918575 (= e!1841448 e!1841447)))

(declare-fun res!1204918 () Bool)

(assert (=> b!2918575 (=> (not res!1204918) (not e!1841447))))

(declare-fun call!190856 () Bool)

(assert (=> b!2918575 (= res!1204918 call!190856)))

(declare-fun b!2918576 () Bool)

(declare-fun res!1204917 () Bool)

(assert (=> b!2918576 (=> res!1204917 e!1841448)))

(assert (=> b!2918576 (= res!1204917 (not ((_ is Concat!14302) lt!1025161)))))

(assert (=> b!2918576 (= e!1841445 e!1841448)))

(declare-fun b!2918577 () Bool)

(declare-fun e!1841446 () Bool)

(assert (=> b!2918577 (= e!1841446 call!190856)))

(declare-fun bm!190850 () Bool)

(declare-fun call!190855 () Bool)

(assert (=> bm!190850 (= call!190855 (validRegex!3714 (ite c!476163 (regOne!18475 lt!1025161) (regTwo!18474 lt!1025161))))))

(declare-fun call!190857 () Bool)

(declare-fun bm!190851 () Bool)

(declare-fun c!476164 () Bool)

(assert (=> bm!190851 (= call!190857 (validRegex!3714 (ite c!476164 (reg!9310 lt!1025161) (ite c!476163 (regTwo!18475 lt!1025161) (regOne!18474 lt!1025161)))))))

(declare-fun b!2918578 () Bool)

(declare-fun e!1841450 () Bool)

(assert (=> b!2918578 (= e!1841444 e!1841450)))

(declare-fun res!1204916 () Bool)

(assert (=> b!2918578 (= res!1204916 (not (nullable!2811 (reg!9310 lt!1025161))))))

(assert (=> b!2918578 (=> (not res!1204916) (not e!1841450))))

(declare-fun b!2918579 () Bool)

(assert (=> b!2918579 (= e!1841447 call!190855)))

(declare-fun b!2918580 () Bool)

(assert (=> b!2918580 (= e!1841450 call!190857)))

(declare-fun b!2918581 () Bool)

(declare-fun e!1841449 () Bool)

(assert (=> b!2918581 (= e!1841449 e!1841444)))

(assert (=> b!2918581 (= c!476164 ((_ is Star!8981) lt!1025161))))

(declare-fun b!2918582 () Bool)

(declare-fun res!1204920 () Bool)

(assert (=> b!2918582 (=> (not res!1204920) (not e!1841446))))

(assert (=> b!2918582 (= res!1204920 call!190855)))

(assert (=> b!2918582 (= e!1841445 e!1841446)))

(declare-fun d!838384 () Bool)

(declare-fun res!1204919 () Bool)

(assert (=> d!838384 (=> res!1204919 e!1841449)))

(assert (=> d!838384 (= res!1204919 ((_ is ElementMatch!8981) lt!1025161))))

(assert (=> d!838384 (= (validRegex!3714 lt!1025161) e!1841449)))

(declare-fun bm!190852 () Bool)

(assert (=> bm!190852 (= call!190856 call!190857)))

(assert (= (and d!838384 (not res!1204919)) b!2918581))

(assert (= (and b!2918581 c!476164) b!2918578))

(assert (= (and b!2918581 (not c!476164)) b!2918574))

(assert (= (and b!2918578 res!1204916) b!2918580))

(assert (= (and b!2918574 c!476163) b!2918582))

(assert (= (and b!2918574 (not c!476163)) b!2918576))

(assert (= (and b!2918582 res!1204920) b!2918577))

(assert (= (and b!2918576 (not res!1204917)) b!2918575))

(assert (= (and b!2918575 res!1204918) b!2918579))

(assert (= (or b!2918582 b!2918579) bm!190850))

(assert (= (or b!2918577 b!2918575) bm!190852))

(assert (= (or b!2918580 bm!190852) bm!190851))

(declare-fun m!3316213 () Bool)

(assert (=> bm!190850 m!3316213))

(declare-fun m!3316215 () Bool)

(assert (=> bm!190851 m!3316215))

(declare-fun m!3316217 () Bool)

(assert (=> b!2918578 m!3316217))

(assert (=> b!2917770 d!838384))

(declare-fun b!2918583 () Bool)

(declare-fun res!1204922 () Bool)

(declare-fun e!1841456 () Bool)

(assert (=> b!2918583 (=> res!1204922 e!1841456)))

(assert (=> b!2918583 (= res!1204922 (not (isEmpty!18979 (tail!4710 (_2!19982 lt!1025159)))))))

(declare-fun b!2918584 () Bool)

(declare-fun e!1841454 () Bool)

(assert (=> b!2918584 (= e!1841454 e!1841456)))

(declare-fun res!1204928 () Bool)

(assert (=> b!2918584 (=> res!1204928 e!1841456)))

(declare-fun call!190858 () Bool)

(assert (=> b!2918584 (= res!1204928 call!190858)))

(declare-fun b!2918585 () Bool)

(declare-fun e!1841451 () Bool)

(assert (=> b!2918585 (= e!1841451 (matchR!3863 (derivativeStep!2425 lt!1025157 (head!6484 (_2!19982 lt!1025159))) (tail!4710 (_2!19982 lt!1025159))))))

(declare-fun b!2918586 () Bool)

(assert (=> b!2918586 (= e!1841456 (not (= (head!6484 (_2!19982 lt!1025159)) (c!475943 lt!1025157))))))

(declare-fun d!838386 () Bool)

(declare-fun e!1841457 () Bool)

(assert (=> d!838386 e!1841457))

(declare-fun c!476166 () Bool)

(assert (=> d!838386 (= c!476166 ((_ is EmptyExpr!8981) lt!1025157))))

(declare-fun lt!1025297 () Bool)

(assert (=> d!838386 (= lt!1025297 e!1841451)))

(declare-fun c!476167 () Bool)

(assert (=> d!838386 (= c!476167 (isEmpty!18979 (_2!19982 lt!1025159)))))

(assert (=> d!838386 (validRegex!3714 lt!1025157)))

(assert (=> d!838386 (= (matchR!3863 lt!1025157 (_2!19982 lt!1025159)) lt!1025297)))

(declare-fun b!2918587 () Bool)

(declare-fun e!1841455 () Bool)

(assert (=> b!2918587 (= e!1841455 e!1841454)))

(declare-fun res!1204924 () Bool)

(assert (=> b!2918587 (=> (not res!1204924) (not e!1841454))))

(assert (=> b!2918587 (= res!1204924 (not lt!1025297))))

(declare-fun b!2918588 () Bool)

(declare-fun e!1841452 () Bool)

(assert (=> b!2918588 (= e!1841452 (not lt!1025297))))

(declare-fun b!2918589 () Bool)

(assert (=> b!2918589 (= e!1841451 (nullable!2811 lt!1025157))))

(declare-fun b!2918590 () Bool)

(declare-fun res!1204927 () Bool)

(declare-fun e!1841453 () Bool)

(assert (=> b!2918590 (=> (not res!1204927) (not e!1841453))))

(assert (=> b!2918590 (= res!1204927 (isEmpty!18979 (tail!4710 (_2!19982 lt!1025159))))))

(declare-fun b!2918591 () Bool)

(assert (=> b!2918591 (= e!1841457 e!1841452)))

(declare-fun c!476165 () Bool)

(assert (=> b!2918591 (= c!476165 ((_ is EmptyLang!8981) lt!1025157))))

(declare-fun b!2918592 () Bool)

(declare-fun res!1204926 () Bool)

(assert (=> b!2918592 (=> (not res!1204926) (not e!1841453))))

(assert (=> b!2918592 (= res!1204926 (not call!190858))))

(declare-fun b!2918593 () Bool)

(declare-fun res!1204921 () Bool)

(assert (=> b!2918593 (=> res!1204921 e!1841455)))

(assert (=> b!2918593 (= res!1204921 (not ((_ is ElementMatch!8981) lt!1025157)))))

(assert (=> b!2918593 (= e!1841452 e!1841455)))

(declare-fun b!2918594 () Bool)

(assert (=> b!2918594 (= e!1841453 (= (head!6484 (_2!19982 lt!1025159)) (c!475943 lt!1025157)))))

(declare-fun bm!190853 () Bool)

(assert (=> bm!190853 (= call!190858 (isEmpty!18979 (_2!19982 lt!1025159)))))

(declare-fun b!2918595 () Bool)

(declare-fun res!1204923 () Bool)

(assert (=> b!2918595 (=> res!1204923 e!1841455)))

(assert (=> b!2918595 (= res!1204923 e!1841453)))

(declare-fun res!1204925 () Bool)

(assert (=> b!2918595 (=> (not res!1204925) (not e!1841453))))

(assert (=> b!2918595 (= res!1204925 lt!1025297)))

(declare-fun b!2918596 () Bool)

(assert (=> b!2918596 (= e!1841457 (= lt!1025297 call!190858))))

(assert (= (and d!838386 c!476167) b!2918589))

(assert (= (and d!838386 (not c!476167)) b!2918585))

(assert (= (and d!838386 c!476166) b!2918596))

(assert (= (and d!838386 (not c!476166)) b!2918591))

(assert (= (and b!2918591 c!476165) b!2918588))

(assert (= (and b!2918591 (not c!476165)) b!2918593))

(assert (= (and b!2918593 (not res!1204921)) b!2918595))

(assert (= (and b!2918595 res!1204925) b!2918592))

(assert (= (and b!2918592 res!1204926) b!2918590))

(assert (= (and b!2918590 res!1204927) b!2918594))

(assert (= (and b!2918595 (not res!1204923)) b!2918587))

(assert (= (and b!2918587 res!1204924) b!2918584))

(assert (= (and b!2918584 (not res!1204928)) b!2918583))

(assert (= (and b!2918583 (not res!1204922)) b!2918586))

(assert (= (or b!2918596 b!2918584 b!2918592) bm!190853))

(assert (=> b!2918586 m!3315825))

(assert (=> b!2918594 m!3315825))

(assert (=> d!838386 m!3315827))

(assert (=> d!838386 m!3315791))

(assert (=> bm!190853 m!3315827))

(declare-fun m!3316219 () Bool)

(assert (=> b!2918589 m!3316219))

(assert (=> b!2918583 m!3315833))

(assert (=> b!2918583 m!3315833))

(assert (=> b!2918583 m!3315835))

(assert (=> b!2918585 m!3315825))

(assert (=> b!2918585 m!3315825))

(declare-fun m!3316221 () Bool)

(assert (=> b!2918585 m!3316221))

(assert (=> b!2918585 m!3315833))

(assert (=> b!2918585 m!3316221))

(assert (=> b!2918585 m!3315833))

(declare-fun m!3316223 () Bool)

(assert (=> b!2918585 m!3316223))

(assert (=> b!2918590 m!3315833))

(assert (=> b!2918590 m!3315833))

(assert (=> b!2918590 m!3315835))

(assert (=> b!2917770 d!838386))

(declare-fun b!2918609 () Bool)

(declare-fun e!1841460 () Bool)

(declare-fun tp!936727 () Bool)

(assert (=> b!2918609 (= e!1841460 tp!936727)))

(assert (=> b!2917772 (= tp!936673 e!1841460)))

(declare-fun b!2918607 () Bool)

(assert (=> b!2918607 (= e!1841460 tp_is_empty!15525)))

(declare-fun b!2918610 () Bool)

(declare-fun tp!936726 () Bool)

(declare-fun tp!936729 () Bool)

(assert (=> b!2918610 (= e!1841460 (and tp!936726 tp!936729))))

(declare-fun b!2918608 () Bool)

(declare-fun tp!936728 () Bool)

(declare-fun tp!936730 () Bool)

(assert (=> b!2918608 (= e!1841460 (and tp!936728 tp!936730))))

(assert (= (and b!2917772 ((_ is ElementMatch!8981) (regOne!18474 r!17423))) b!2918607))

(assert (= (and b!2917772 ((_ is Concat!14302) (regOne!18474 r!17423))) b!2918608))

(assert (= (and b!2917772 ((_ is Star!8981) (regOne!18474 r!17423))) b!2918609))

(assert (= (and b!2917772 ((_ is Union!8981) (regOne!18474 r!17423))) b!2918610))

(declare-fun b!2918613 () Bool)

(declare-fun e!1841461 () Bool)

(declare-fun tp!936732 () Bool)

(assert (=> b!2918613 (= e!1841461 tp!936732)))

(assert (=> b!2917772 (= tp!936675 e!1841461)))

(declare-fun b!2918611 () Bool)

(assert (=> b!2918611 (= e!1841461 tp_is_empty!15525)))

(declare-fun b!2918614 () Bool)

(declare-fun tp!936731 () Bool)

(declare-fun tp!936734 () Bool)

(assert (=> b!2918614 (= e!1841461 (and tp!936731 tp!936734))))

(declare-fun b!2918612 () Bool)

(declare-fun tp!936733 () Bool)

(declare-fun tp!936735 () Bool)

(assert (=> b!2918612 (= e!1841461 (and tp!936733 tp!936735))))

(assert (= (and b!2917772 ((_ is ElementMatch!8981) (regTwo!18474 r!17423))) b!2918611))

(assert (= (and b!2917772 ((_ is Concat!14302) (regTwo!18474 r!17423))) b!2918612))

(assert (= (and b!2917772 ((_ is Star!8981) (regTwo!18474 r!17423))) b!2918613))

(assert (= (and b!2917772 ((_ is Union!8981) (regTwo!18474 r!17423))) b!2918614))

(declare-fun b!2918617 () Bool)

(declare-fun e!1841462 () Bool)

(declare-fun tp!936737 () Bool)

(assert (=> b!2918617 (= e!1841462 tp!936737)))

(assert (=> b!2917779 (= tp!936676 e!1841462)))

(declare-fun b!2918615 () Bool)

(assert (=> b!2918615 (= e!1841462 tp_is_empty!15525)))

(declare-fun b!2918618 () Bool)

(declare-fun tp!936736 () Bool)

(declare-fun tp!936739 () Bool)

(assert (=> b!2918618 (= e!1841462 (and tp!936736 tp!936739))))

(declare-fun b!2918616 () Bool)

(declare-fun tp!936738 () Bool)

(declare-fun tp!936740 () Bool)

(assert (=> b!2918616 (= e!1841462 (and tp!936738 tp!936740))))

(assert (= (and b!2917779 ((_ is ElementMatch!8981) (regOne!18475 r!17423))) b!2918615))

(assert (= (and b!2917779 ((_ is Concat!14302) (regOne!18475 r!17423))) b!2918616))

(assert (= (and b!2917779 ((_ is Star!8981) (regOne!18475 r!17423))) b!2918617))

(assert (= (and b!2917779 ((_ is Union!8981) (regOne!18475 r!17423))) b!2918618))

(declare-fun b!2918621 () Bool)

(declare-fun e!1841463 () Bool)

(declare-fun tp!936742 () Bool)

(assert (=> b!2918621 (= e!1841463 tp!936742)))

(assert (=> b!2917779 (= tp!936672 e!1841463)))

(declare-fun b!2918619 () Bool)

(assert (=> b!2918619 (= e!1841463 tp_is_empty!15525)))

(declare-fun b!2918622 () Bool)

(declare-fun tp!936741 () Bool)

(declare-fun tp!936744 () Bool)

(assert (=> b!2918622 (= e!1841463 (and tp!936741 tp!936744))))

(declare-fun b!2918620 () Bool)

(declare-fun tp!936743 () Bool)

(declare-fun tp!936745 () Bool)

(assert (=> b!2918620 (= e!1841463 (and tp!936743 tp!936745))))

(assert (= (and b!2917779 ((_ is ElementMatch!8981) (regTwo!18475 r!17423))) b!2918619))

(assert (= (and b!2917779 ((_ is Concat!14302) (regTwo!18475 r!17423))) b!2918620))

(assert (= (and b!2917779 ((_ is Star!8981) (regTwo!18475 r!17423))) b!2918621))

(assert (= (and b!2917779 ((_ is Union!8981) (regTwo!18475 r!17423))) b!2918622))

(declare-fun b!2918627 () Bool)

(declare-fun e!1841466 () Bool)

(declare-fun tp!936748 () Bool)

(assert (=> b!2918627 (= e!1841466 (and tp_is_empty!15525 tp!936748))))

(assert (=> b!2917780 (= tp!936677 e!1841466)))

(assert (= (and b!2917780 ((_ is Cons!34722) (t!233911 s!11993))) b!2918627))

(declare-fun b!2918630 () Bool)

(declare-fun e!1841467 () Bool)

(declare-fun tp!936750 () Bool)

(assert (=> b!2918630 (= e!1841467 tp!936750)))

(assert (=> b!2917771 (= tp!936674 e!1841467)))

(declare-fun b!2918628 () Bool)

(assert (=> b!2918628 (= e!1841467 tp_is_empty!15525)))

(declare-fun b!2918631 () Bool)

(declare-fun tp!936749 () Bool)

(declare-fun tp!936752 () Bool)

(assert (=> b!2918631 (= e!1841467 (and tp!936749 tp!936752))))

(declare-fun b!2918629 () Bool)

(declare-fun tp!936751 () Bool)

(declare-fun tp!936753 () Bool)

(assert (=> b!2918629 (= e!1841467 (and tp!936751 tp!936753))))

(assert (= (and b!2917771 ((_ is ElementMatch!8981) (reg!9310 r!17423))) b!2918628))

(assert (= (and b!2917771 ((_ is Concat!14302) (reg!9310 r!17423))) b!2918629))

(assert (= (and b!2917771 ((_ is Star!8981) (reg!9310 r!17423))) b!2918630))

(assert (= (and b!2917771 ((_ is Union!8981) (reg!9310 r!17423))) b!2918631))

(check-sat (not d!838318) (not b!2918620) (not b!2918496) (not bm!190826) (not d!838364) (not b!2918345) (not b!2918627) (not bm!190825) (not b!2918614) (not b!2918502) (not b!2918498) (not bm!190847) (not d!838306) (not b!2918341) (not bm!190839) (not b!2918583) (not b!2918618) (not b!2918503) (not b!2918616) (not d!838316) (not bm!190836) (not b!2918608) (not b!2918010) (not bm!190834) (not d!838280) (not b!2918589) (not b!2918448) (not b!2917969) (not b!2918538) (not b!2918499) (not bm!190853) (not b!2918336) (not b!2917999) (not d!838378) (not bm!190756) (not b!2918541) (not b!2918485) (not b!2918357) (not b!2918337) (not b!2918578) (not bm!190802) (not b!2918537) (not b!2917894) (not d!838326) (not b!2918617) (not b!2918333) (not bm!190755) (not b!2917883) (not b!2918334) (not bm!190842) (not b!2918272) (not b!2918005) (not b!2918364) (not b!2918542) (not b!2918278) (not bm!190851) (not d!838358) (not b!2918622) (not d!838382) (not b!2918276) (not b!2918486) (not bm!190832) (not b!2918274) (not bm!190823) (not b!2918609) (not bm!190837) (not b!2918507) (not bm!190844) (not d!838300) (not b!2918566) (not d!838380) (not d!838294) (not bm!190841) (not b!2918006) tp_is_empty!15525 (not d!838360) (not bm!190819) (not b!2918001) (not d!838356) (not b!2918271) (not b!2918358) (not bm!190848) (not bm!190765) (not b!2918515) (not b!2918424) (not b!2918590) (not d!838376) (not bm!190734) (not b!2918546) (not bm!190820) (not bm!190849) (not b!2918586) (not b!2917885) (not d!838374) (not b!2918613) (not bm!190800) (not b!2917890) (not d!838370) (not b!2918594) (not b!2917886) (not b!2918002) (not b!2918527) (not b!2918277) (not bm!190845) (not bm!190822) (not d!838372) (not b!2918436) (not b!2918630) (not b!2918340) (not b!2918585) (not b!2918610) (not b!2918629) (not bm!190850) (not bm!190824) (not bm!190840) (not b!2918535) (not b!2918554) (not bm!190833) (not b!2918621) (not b!2918631) (not d!838386) (not bm!190801) (not b!2918612) (not d!838350) (not b!2917889))
(check-sat)
