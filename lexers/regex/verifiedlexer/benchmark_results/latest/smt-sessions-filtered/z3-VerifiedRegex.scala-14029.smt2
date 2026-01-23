; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740826 () Bool)

(assert start!740826)

(declare-fun b!7789850 () Bool)

(declare-fun e!4612877 () Bool)

(declare-fun tp_is_empty!52061 () Bool)

(assert (=> b!7789850 (= e!4612877 tp_is_empty!52061)))

(declare-fun b!7789851 () Bool)

(declare-fun tp!2293035 () Bool)

(assert (=> b!7789851 (= e!4612877 tp!2293035)))

(declare-fun b!7789852 () Bool)

(declare-fun e!4612874 () Bool)

(declare-fun tp!2293028 () Bool)

(declare-fun tp!2293037 () Bool)

(assert (=> b!7789852 (= e!4612874 (and tp!2293028 tp!2293037))))

(declare-fun b!7789853 () Bool)

(declare-fun e!4612876 () Bool)

(declare-fun tp!2293036 () Bool)

(assert (=> b!7789853 (= e!4612876 (and tp_is_empty!52061 tp!2293036))))

(declare-fun b!7789854 () Bool)

(declare-fun tp!2293032 () Bool)

(assert (=> b!7789854 (= e!4612874 tp!2293032)))

(declare-fun b!7789855 () Bool)

(declare-fun tp!2293031 () Bool)

(declare-fun tp!2293027 () Bool)

(assert (=> b!7789855 (= e!4612877 (and tp!2293031 tp!2293027))))

(declare-fun res!3103664 () Bool)

(declare-fun e!4612875 () Bool)

(assert (=> start!740826 (=> (not res!3103664) (not e!4612875))))

(declare-datatypes ((C!42032 0))(
  ( (C!42033 (val!31456 Int)) )
))
(declare-datatypes ((Regex!20853 0))(
  ( (ElementMatch!20853 (c!1434672 C!42032)) (Concat!29698 (regOne!42218 Regex!20853) (regTwo!42218 Regex!20853)) (EmptyExpr!20853) (Star!20853 (reg!21182 Regex!20853)) (EmptyLang!20853) (Union!20853 (regOne!42219 Regex!20853) (regTwo!42219 Regex!20853)) )
))
(declare-fun r1!6279 () Regex!20853)

(declare-fun validRegex!11267 (Regex!20853) Bool)

(assert (=> start!740826 (= res!3103664 (validRegex!11267 r1!6279))))

(assert (=> start!740826 e!4612875))

(assert (=> start!740826 e!4612874))

(assert (=> start!740826 e!4612877))

(assert (=> start!740826 e!4612876))

(declare-fun b!7789856 () Bool)

(declare-datatypes ((List!73692 0))(
  ( (Nil!73568) (Cons!73568 (h!80016 C!42032) (t!388427 List!73692)) )
))
(declare-fun s!14292 () List!73692)

(declare-fun ListPrimitiveSize!446 (List!73692) Int)

(assert (=> b!7789856 (= e!4612875 (< (ListPrimitiveSize!446 s!14292) 0))))

(declare-fun b!7789857 () Bool)

(declare-fun res!3103666 () Bool)

(assert (=> b!7789857 (=> (not res!3103666) (not e!4612875))))

(declare-fun r2!6217 () Regex!20853)

(assert (=> b!7789857 (= res!3103666 (validRegex!11267 r2!6217))))

(declare-fun b!7789858 () Bool)

(assert (=> b!7789858 (= e!4612874 tp_is_empty!52061)))

(declare-fun b!7789859 () Bool)

(declare-fun tp!2293033 () Bool)

(declare-fun tp!2293030 () Bool)

(assert (=> b!7789859 (= e!4612877 (and tp!2293033 tp!2293030))))

(declare-fun b!7789860 () Bool)

(declare-fun res!3103665 () Bool)

(assert (=> b!7789860 (=> (not res!3103665) (not e!4612875))))

(declare-fun matchR!10313 (Regex!20853 List!73692) Bool)

(assert (=> b!7789860 (= res!3103665 (matchR!10313 (Concat!29698 r1!6279 r2!6217) s!14292))))

(declare-fun b!7789861 () Bool)

(declare-fun tp!2293029 () Bool)

(declare-fun tp!2293034 () Bool)

(assert (=> b!7789861 (= e!4612874 (and tp!2293029 tp!2293034))))

(assert (= (and start!740826 res!3103664) b!7789857))

(assert (= (and b!7789857 res!3103666) b!7789860))

(assert (= (and b!7789860 res!3103665) b!7789856))

(get-info :version)

(assert (= (and start!740826 ((_ is ElementMatch!20853) r1!6279)) b!7789858))

(assert (= (and start!740826 ((_ is Concat!29698) r1!6279)) b!7789861))

(assert (= (and start!740826 ((_ is Star!20853) r1!6279)) b!7789854))

(assert (= (and start!740826 ((_ is Union!20853) r1!6279)) b!7789852))

(assert (= (and start!740826 ((_ is ElementMatch!20853) r2!6217)) b!7789850))

(assert (= (and start!740826 ((_ is Concat!29698) r2!6217)) b!7789859))

(assert (= (and start!740826 ((_ is Star!20853) r2!6217)) b!7789851))

(assert (= (and start!740826 ((_ is Union!20853) r2!6217)) b!7789855))

(assert (= (and start!740826 ((_ is Cons!73568) s!14292)) b!7789853))

(declare-fun m!8231586 () Bool)

(assert (=> start!740826 m!8231586))

(declare-fun m!8231588 () Bool)

(assert (=> b!7789856 m!8231588))

(declare-fun m!8231590 () Bool)

(assert (=> b!7789857 m!8231590))

(declare-fun m!8231592 () Bool)

(assert (=> b!7789860 m!8231592))

(check-sat (not b!7789859) (not start!740826) (not b!7789860) tp_is_empty!52061 (not b!7789852) (not b!7789861) (not b!7789853) (not b!7789851) (not b!7789857) (not b!7789854) (not b!7789855) (not b!7789856))
(check-sat)
(get-model)

(declare-fun d!2345862 () Bool)

(declare-fun lt!2673479 () Int)

(assert (=> d!2345862 (>= lt!2673479 0)))

(declare-fun e!4612888 () Int)

(assert (=> d!2345862 (= lt!2673479 e!4612888)))

(declare-fun c!1434679 () Bool)

(assert (=> d!2345862 (= c!1434679 ((_ is Nil!73568) s!14292))))

(assert (=> d!2345862 (= (ListPrimitiveSize!446 s!14292) lt!2673479)))

(declare-fun b!7789878 () Bool)

(assert (=> b!7789878 (= e!4612888 0)))

(declare-fun b!7789879 () Bool)

(assert (=> b!7789879 (= e!4612888 (+ 1 (ListPrimitiveSize!446 (t!388427 s!14292))))))

(assert (= (and d!2345862 c!1434679) b!7789878))

(assert (= (and d!2345862 (not c!1434679)) b!7789879))

(declare-fun m!8231594 () Bool)

(assert (=> b!7789879 m!8231594))

(assert (=> b!7789856 d!2345862))

(declare-fun e!4612932 () Bool)

(declare-fun b!7789938 () Bool)

(declare-fun head!15931 (List!73692) C!42032)

(assert (=> b!7789938 (= e!4612932 (= (head!15931 s!14292) (c!1434672 (Concat!29698 r1!6279 r2!6217))))))

(declare-fun b!7789939 () Bool)

(declare-fun e!4612931 () Bool)

(declare-fun e!4612929 () Bool)

(assert (=> b!7789939 (= e!4612931 e!4612929)))

(declare-fun res!3103707 () Bool)

(assert (=> b!7789939 (=> (not res!3103707) (not e!4612929))))

(declare-fun lt!2673485 () Bool)

(assert (=> b!7789939 (= res!3103707 (not lt!2673485))))

(declare-fun b!7789940 () Bool)

(declare-fun e!4612927 () Bool)

(assert (=> b!7789940 (= e!4612929 e!4612927)))

(declare-fun res!3103703 () Bool)

(assert (=> b!7789940 (=> res!3103703 e!4612927)))

(declare-fun call!721993 () Bool)

(assert (=> b!7789940 (= res!3103703 call!721993)))

(declare-fun b!7789941 () Bool)

(assert (=> b!7789941 (= e!4612927 (not (= (head!15931 s!14292) (c!1434672 (Concat!29698 r1!6279 r2!6217)))))))

(declare-fun b!7789942 () Bool)

(declare-fun res!3103704 () Bool)

(assert (=> b!7789942 (=> res!3103704 e!4612931)))

(assert (=> b!7789942 (= res!3103704 (not ((_ is ElementMatch!20853) (Concat!29698 r1!6279 r2!6217))))))

(declare-fun e!4612926 () Bool)

(assert (=> b!7789942 (= e!4612926 e!4612931)))

(declare-fun b!7789943 () Bool)

(assert (=> b!7789943 (= e!4612926 (not lt!2673485))))

(declare-fun bm!721988 () Bool)

(declare-fun isEmpty!42206 (List!73692) Bool)

(assert (=> bm!721988 (= call!721993 (isEmpty!42206 s!14292))))

(declare-fun b!7789945 () Bool)

(declare-fun e!4612930 () Bool)

(assert (=> b!7789945 (= e!4612930 e!4612926)))

(declare-fun c!1434694 () Bool)

(assert (=> b!7789945 (= c!1434694 ((_ is EmptyLang!20853) (Concat!29698 r1!6279 r2!6217)))))

(declare-fun b!7789946 () Bool)

(declare-fun e!4612928 () Bool)

(declare-fun nullable!9237 (Regex!20853) Bool)

(assert (=> b!7789946 (= e!4612928 (nullable!9237 (Concat!29698 r1!6279 r2!6217)))))

(declare-fun b!7789947 () Bool)

(declare-fun derivativeStep!6189 (Regex!20853 C!42032) Regex!20853)

(declare-fun tail!15472 (List!73692) List!73692)

(assert (=> b!7789947 (= e!4612928 (matchR!10313 (derivativeStep!6189 (Concat!29698 r1!6279 r2!6217) (head!15931 s!14292)) (tail!15472 s!14292)))))

(declare-fun b!7789948 () Bool)

(assert (=> b!7789948 (= e!4612930 (= lt!2673485 call!721993))))

(declare-fun b!7789949 () Bool)

(declare-fun res!3103709 () Bool)

(assert (=> b!7789949 (=> (not res!3103709) (not e!4612932))))

(assert (=> b!7789949 (= res!3103709 (not call!721993))))

(declare-fun b!7789950 () Bool)

(declare-fun res!3103705 () Bool)

(assert (=> b!7789950 (=> res!3103705 e!4612927)))

(assert (=> b!7789950 (= res!3103705 (not (isEmpty!42206 (tail!15472 s!14292))))))

(declare-fun b!7789951 () Bool)

(declare-fun res!3103706 () Bool)

(assert (=> b!7789951 (=> (not res!3103706) (not e!4612932))))

(assert (=> b!7789951 (= res!3103706 (isEmpty!42206 (tail!15472 s!14292)))))

(declare-fun b!7789944 () Bool)

(declare-fun res!3103708 () Bool)

(assert (=> b!7789944 (=> res!3103708 e!4612931)))

(assert (=> b!7789944 (= res!3103708 e!4612932)))

(declare-fun res!3103710 () Bool)

(assert (=> b!7789944 (=> (not res!3103710) (not e!4612932))))

(assert (=> b!7789944 (= res!3103710 lt!2673485)))

(declare-fun d!2345866 () Bool)

(assert (=> d!2345866 e!4612930))

(declare-fun c!1434695 () Bool)

(assert (=> d!2345866 (= c!1434695 ((_ is EmptyExpr!20853) (Concat!29698 r1!6279 r2!6217)))))

(assert (=> d!2345866 (= lt!2673485 e!4612928)))

(declare-fun c!1434693 () Bool)

(assert (=> d!2345866 (= c!1434693 (isEmpty!42206 s!14292))))

(assert (=> d!2345866 (validRegex!11267 (Concat!29698 r1!6279 r2!6217))))

(assert (=> d!2345866 (= (matchR!10313 (Concat!29698 r1!6279 r2!6217) s!14292) lt!2673485)))

(assert (= (and d!2345866 c!1434693) b!7789946))

(assert (= (and d!2345866 (not c!1434693)) b!7789947))

(assert (= (and d!2345866 c!1434695) b!7789948))

(assert (= (and d!2345866 (not c!1434695)) b!7789945))

(assert (= (and b!7789945 c!1434694) b!7789943))

(assert (= (and b!7789945 (not c!1434694)) b!7789942))

(assert (= (and b!7789942 (not res!3103704)) b!7789944))

(assert (= (and b!7789944 res!3103710) b!7789949))

(assert (= (and b!7789949 res!3103709) b!7789951))

(assert (= (and b!7789951 res!3103706) b!7789938))

(assert (= (and b!7789944 (not res!3103708)) b!7789939))

(assert (= (and b!7789939 res!3103707) b!7789940))

(assert (= (and b!7789940 (not res!3103703)) b!7789950))

(assert (= (and b!7789950 (not res!3103705)) b!7789941))

(assert (= (or b!7789948 b!7789949 b!7789940) bm!721988))

(declare-fun m!8231610 () Bool)

(assert (=> d!2345866 m!8231610))

(declare-fun m!8231612 () Bool)

(assert (=> d!2345866 m!8231612))

(declare-fun m!8231614 () Bool)

(assert (=> b!7789938 m!8231614))

(assert (=> b!7789947 m!8231614))

(assert (=> b!7789947 m!8231614))

(declare-fun m!8231616 () Bool)

(assert (=> b!7789947 m!8231616))

(declare-fun m!8231618 () Bool)

(assert (=> b!7789947 m!8231618))

(assert (=> b!7789947 m!8231616))

(assert (=> b!7789947 m!8231618))

(declare-fun m!8231620 () Bool)

(assert (=> b!7789947 m!8231620))

(assert (=> b!7789941 m!8231614))

(declare-fun m!8231622 () Bool)

(assert (=> b!7789946 m!8231622))

(assert (=> b!7789951 m!8231618))

(assert (=> b!7789951 m!8231618))

(declare-fun m!8231624 () Bool)

(assert (=> b!7789951 m!8231624))

(assert (=> b!7789950 m!8231618))

(assert (=> b!7789950 m!8231618))

(assert (=> b!7789950 m!8231624))

(assert (=> bm!721988 m!8231610))

(assert (=> b!7789860 d!2345866))

(declare-fun b!7790012 () Bool)

(declare-fun e!4612972 () Bool)

(declare-fun e!4612969 () Bool)

(assert (=> b!7790012 (= e!4612972 e!4612969)))

(declare-fun c!1434709 () Bool)

(assert (=> b!7790012 (= c!1434709 ((_ is Star!20853) r1!6279))))

(declare-fun b!7790013 () Bool)

(declare-fun e!4612971 () Bool)

(declare-fun call!722004 () Bool)

(assert (=> b!7790013 (= e!4612971 call!722004)))

(declare-fun d!2345874 () Bool)

(declare-fun res!3103748 () Bool)

(assert (=> d!2345874 (=> res!3103748 e!4612972)))

(assert (=> d!2345874 (= res!3103748 ((_ is ElementMatch!20853) r1!6279))))

(assert (=> d!2345874 (= (validRegex!11267 r1!6279) e!4612972)))

(declare-fun b!7790014 () Bool)

(declare-fun res!3103747 () Bool)

(declare-fun e!4612974 () Bool)

(assert (=> b!7790014 (=> (not res!3103747) (not e!4612974))))

(declare-fun call!722003 () Bool)

(assert (=> b!7790014 (= res!3103747 call!722003)))

(declare-fun e!4612970 () Bool)

(assert (=> b!7790014 (= e!4612970 e!4612974)))

(declare-fun b!7790015 () Bool)

(declare-fun e!4612973 () Bool)

(declare-fun call!722005 () Bool)

(assert (=> b!7790015 (= e!4612973 call!722005)))

(declare-fun bm!721998 () Bool)

(assert (=> bm!721998 (= call!722005 call!722004)))

(declare-fun b!7790016 () Bool)

(declare-fun e!4612968 () Bool)

(assert (=> b!7790016 (= e!4612968 e!4612973)))

(declare-fun res!3103745 () Bool)

(assert (=> b!7790016 (=> (not res!3103745) (not e!4612973))))

(assert (=> b!7790016 (= res!3103745 call!722003)))

(declare-fun b!7790017 () Bool)

(assert (=> b!7790017 (= e!4612974 call!722005)))

(declare-fun b!7790018 () Bool)

(assert (=> b!7790018 (= e!4612969 e!4612971)))

(declare-fun res!3103746 () Bool)

(assert (=> b!7790018 (= res!3103746 (not (nullable!9237 (reg!21182 r1!6279))))))

(assert (=> b!7790018 (=> (not res!3103746) (not e!4612971))))

(declare-fun bm!721999 () Bool)

(declare-fun c!1434710 () Bool)

(assert (=> bm!721999 (= call!722003 (validRegex!11267 (ite c!1434710 (regOne!42219 r1!6279) (regOne!42218 r1!6279))))))

(declare-fun b!7790019 () Bool)

(assert (=> b!7790019 (= e!4612969 e!4612970)))

(assert (=> b!7790019 (= c!1434710 ((_ is Union!20853) r1!6279))))

(declare-fun b!7790020 () Bool)

(declare-fun res!3103749 () Bool)

(assert (=> b!7790020 (=> res!3103749 e!4612968)))

(assert (=> b!7790020 (= res!3103749 (not ((_ is Concat!29698) r1!6279)))))

(assert (=> b!7790020 (= e!4612970 e!4612968)))

(declare-fun bm!722000 () Bool)

(assert (=> bm!722000 (= call!722004 (validRegex!11267 (ite c!1434709 (reg!21182 r1!6279) (ite c!1434710 (regTwo!42219 r1!6279) (regTwo!42218 r1!6279)))))))

(assert (= (and d!2345874 (not res!3103748)) b!7790012))

(assert (= (and b!7790012 c!1434709) b!7790018))

(assert (= (and b!7790012 (not c!1434709)) b!7790019))

(assert (= (and b!7790018 res!3103746) b!7790013))

(assert (= (and b!7790019 c!1434710) b!7790014))

(assert (= (and b!7790019 (not c!1434710)) b!7790020))

(assert (= (and b!7790014 res!3103747) b!7790017))

(assert (= (and b!7790020 (not res!3103749)) b!7790016))

(assert (= (and b!7790016 res!3103745) b!7790015))

(assert (= (or b!7790014 b!7790016) bm!721999))

(assert (= (or b!7790017 b!7790015) bm!721998))

(assert (= (or b!7790013 bm!721998) bm!722000))

(declare-fun m!8231638 () Bool)

(assert (=> b!7790018 m!8231638))

(declare-fun m!8231642 () Bool)

(assert (=> bm!721999 m!8231642))

(declare-fun m!8231646 () Bool)

(assert (=> bm!722000 m!8231646))

(assert (=> start!740826 d!2345874))

(declare-fun b!7790023 () Bool)

(declare-fun e!4612979 () Bool)

(declare-fun e!4612976 () Bool)

(assert (=> b!7790023 (= e!4612979 e!4612976)))

(declare-fun c!1434711 () Bool)

(assert (=> b!7790023 (= c!1434711 ((_ is Star!20853) r2!6217))))

(declare-fun b!7790024 () Bool)

(declare-fun e!4612978 () Bool)

(declare-fun call!722007 () Bool)

(assert (=> b!7790024 (= e!4612978 call!722007)))

(declare-fun d!2345876 () Bool)

(declare-fun res!3103753 () Bool)

(assert (=> d!2345876 (=> res!3103753 e!4612979)))

(assert (=> d!2345876 (= res!3103753 ((_ is ElementMatch!20853) r2!6217))))

(assert (=> d!2345876 (= (validRegex!11267 r2!6217) e!4612979)))

(declare-fun b!7790025 () Bool)

(declare-fun res!3103752 () Bool)

(declare-fun e!4612981 () Bool)

(assert (=> b!7790025 (=> (not res!3103752) (not e!4612981))))

(declare-fun call!722006 () Bool)

(assert (=> b!7790025 (= res!3103752 call!722006)))

(declare-fun e!4612977 () Bool)

(assert (=> b!7790025 (= e!4612977 e!4612981)))

(declare-fun b!7790026 () Bool)

(declare-fun e!4612980 () Bool)

(declare-fun call!722008 () Bool)

(assert (=> b!7790026 (= e!4612980 call!722008)))

(declare-fun bm!722001 () Bool)

(assert (=> bm!722001 (= call!722008 call!722007)))

(declare-fun b!7790027 () Bool)

(declare-fun e!4612975 () Bool)

(assert (=> b!7790027 (= e!4612975 e!4612980)))

(declare-fun res!3103750 () Bool)

(assert (=> b!7790027 (=> (not res!3103750) (not e!4612980))))

(assert (=> b!7790027 (= res!3103750 call!722006)))

(declare-fun b!7790028 () Bool)

(assert (=> b!7790028 (= e!4612981 call!722008)))

(declare-fun b!7790029 () Bool)

(assert (=> b!7790029 (= e!4612976 e!4612978)))

(declare-fun res!3103751 () Bool)

(assert (=> b!7790029 (= res!3103751 (not (nullable!9237 (reg!21182 r2!6217))))))

(assert (=> b!7790029 (=> (not res!3103751) (not e!4612978))))

(declare-fun bm!722002 () Bool)

(declare-fun c!1434712 () Bool)

(assert (=> bm!722002 (= call!722006 (validRegex!11267 (ite c!1434712 (regOne!42219 r2!6217) (regOne!42218 r2!6217))))))

(declare-fun b!7790030 () Bool)

(assert (=> b!7790030 (= e!4612976 e!4612977)))

(assert (=> b!7790030 (= c!1434712 ((_ is Union!20853) r2!6217))))

(declare-fun b!7790031 () Bool)

(declare-fun res!3103754 () Bool)

(assert (=> b!7790031 (=> res!3103754 e!4612975)))

(assert (=> b!7790031 (= res!3103754 (not ((_ is Concat!29698) r2!6217)))))

(assert (=> b!7790031 (= e!4612977 e!4612975)))

(declare-fun bm!722003 () Bool)

(assert (=> bm!722003 (= call!722007 (validRegex!11267 (ite c!1434711 (reg!21182 r2!6217) (ite c!1434712 (regTwo!42219 r2!6217) (regTwo!42218 r2!6217)))))))

(assert (= (and d!2345876 (not res!3103753)) b!7790023))

(assert (= (and b!7790023 c!1434711) b!7790029))

(assert (= (and b!7790023 (not c!1434711)) b!7790030))

(assert (= (and b!7790029 res!3103751) b!7790024))

(assert (= (and b!7790030 c!1434712) b!7790025))

(assert (= (and b!7790030 (not c!1434712)) b!7790031))

(assert (= (and b!7790025 res!3103752) b!7790028))

(assert (= (and b!7790031 (not res!3103754)) b!7790027))

(assert (= (and b!7790027 res!3103750) b!7790026))

(assert (= (or b!7790025 b!7790027) bm!722002))

(assert (= (or b!7790028 b!7790026) bm!722001))

(assert (= (or b!7790024 bm!722001) bm!722003))

(declare-fun m!8231648 () Bool)

(assert (=> b!7790029 m!8231648))

(declare-fun m!8231650 () Bool)

(assert (=> bm!722002 m!8231650))

(declare-fun m!8231652 () Bool)

(assert (=> bm!722003 m!8231652))

(assert (=> b!7789857 d!2345876))

(declare-fun b!7790063 () Bool)

(declare-fun e!4612991 () Bool)

(assert (=> b!7790063 (= e!4612991 tp_is_empty!52061)))

(declare-fun b!7790064 () Bool)

(declare-fun tp!2293073 () Bool)

(declare-fun tp!2293075 () Bool)

(assert (=> b!7790064 (= e!4612991 (and tp!2293073 tp!2293075))))

(assert (=> b!7789851 (= tp!2293035 e!4612991)))

(declare-fun b!7790066 () Bool)

(declare-fun tp!2293071 () Bool)

(declare-fun tp!2293074 () Bool)

(assert (=> b!7790066 (= e!4612991 (and tp!2293071 tp!2293074))))

(declare-fun b!7790065 () Bool)

(declare-fun tp!2293072 () Bool)

(assert (=> b!7790065 (= e!4612991 tp!2293072)))

(assert (= (and b!7789851 ((_ is ElementMatch!20853) (reg!21182 r2!6217))) b!7790063))

(assert (= (and b!7789851 ((_ is Concat!29698) (reg!21182 r2!6217))) b!7790064))

(assert (= (and b!7789851 ((_ is Star!20853) (reg!21182 r2!6217))) b!7790065))

(assert (= (and b!7789851 ((_ is Union!20853) (reg!21182 r2!6217))) b!7790066))

(declare-fun b!7790071 () Bool)

(declare-fun e!4612993 () Bool)

(assert (=> b!7790071 (= e!4612993 tp_is_empty!52061)))

(declare-fun b!7790072 () Bool)

(declare-fun tp!2293083 () Bool)

(declare-fun tp!2293085 () Bool)

(assert (=> b!7790072 (= e!4612993 (and tp!2293083 tp!2293085))))

(assert (=> b!7789861 (= tp!2293029 e!4612993)))

(declare-fun b!7790074 () Bool)

(declare-fun tp!2293081 () Bool)

(declare-fun tp!2293084 () Bool)

(assert (=> b!7790074 (= e!4612993 (and tp!2293081 tp!2293084))))

(declare-fun b!7790073 () Bool)

(declare-fun tp!2293082 () Bool)

(assert (=> b!7790073 (= e!4612993 tp!2293082)))

(assert (= (and b!7789861 ((_ is ElementMatch!20853) (regOne!42218 r1!6279))) b!7790071))

(assert (= (and b!7789861 ((_ is Concat!29698) (regOne!42218 r1!6279))) b!7790072))

(assert (= (and b!7789861 ((_ is Star!20853) (regOne!42218 r1!6279))) b!7790073))

(assert (= (and b!7789861 ((_ is Union!20853) (regOne!42218 r1!6279))) b!7790074))

(declare-fun b!7790079 () Bool)

(declare-fun e!4612995 () Bool)

(assert (=> b!7790079 (= e!4612995 tp_is_empty!52061)))

(declare-fun b!7790080 () Bool)

(declare-fun tp!2293093 () Bool)

(declare-fun tp!2293095 () Bool)

(assert (=> b!7790080 (= e!4612995 (and tp!2293093 tp!2293095))))

(assert (=> b!7789861 (= tp!2293034 e!4612995)))

(declare-fun b!7790082 () Bool)

(declare-fun tp!2293091 () Bool)

(declare-fun tp!2293094 () Bool)

(assert (=> b!7790082 (= e!4612995 (and tp!2293091 tp!2293094))))

(declare-fun b!7790081 () Bool)

(declare-fun tp!2293092 () Bool)

(assert (=> b!7790081 (= e!4612995 tp!2293092)))

(assert (= (and b!7789861 ((_ is ElementMatch!20853) (regTwo!42218 r1!6279))) b!7790079))

(assert (= (and b!7789861 ((_ is Concat!29698) (regTwo!42218 r1!6279))) b!7790080))

(assert (= (and b!7789861 ((_ is Star!20853) (regTwo!42218 r1!6279))) b!7790081))

(assert (= (and b!7789861 ((_ is Union!20853) (regTwo!42218 r1!6279))) b!7790082))

(declare-fun b!7790087 () Bool)

(declare-fun e!4612997 () Bool)

(assert (=> b!7790087 (= e!4612997 tp_is_empty!52061)))

(declare-fun b!7790088 () Bool)

(declare-fun tp!2293103 () Bool)

(declare-fun tp!2293105 () Bool)

(assert (=> b!7790088 (= e!4612997 (and tp!2293103 tp!2293105))))

(assert (=> b!7789855 (= tp!2293031 e!4612997)))

(declare-fun b!7790090 () Bool)

(declare-fun tp!2293101 () Bool)

(declare-fun tp!2293104 () Bool)

(assert (=> b!7790090 (= e!4612997 (and tp!2293101 tp!2293104))))

(declare-fun b!7790089 () Bool)

(declare-fun tp!2293102 () Bool)

(assert (=> b!7790089 (= e!4612997 tp!2293102)))

(assert (= (and b!7789855 ((_ is ElementMatch!20853) (regOne!42219 r2!6217))) b!7790087))

(assert (= (and b!7789855 ((_ is Concat!29698) (regOne!42219 r2!6217))) b!7790088))

(assert (= (and b!7789855 ((_ is Star!20853) (regOne!42219 r2!6217))) b!7790089))

(assert (= (and b!7789855 ((_ is Union!20853) (regOne!42219 r2!6217))) b!7790090))

(declare-fun b!7790095 () Bool)

(declare-fun e!4612999 () Bool)

(assert (=> b!7790095 (= e!4612999 tp_is_empty!52061)))

(declare-fun b!7790096 () Bool)

(declare-fun tp!2293113 () Bool)

(declare-fun tp!2293115 () Bool)

(assert (=> b!7790096 (= e!4612999 (and tp!2293113 tp!2293115))))

(assert (=> b!7789855 (= tp!2293027 e!4612999)))

(declare-fun b!7790098 () Bool)

(declare-fun tp!2293111 () Bool)

(declare-fun tp!2293114 () Bool)

(assert (=> b!7790098 (= e!4612999 (and tp!2293111 tp!2293114))))

(declare-fun b!7790097 () Bool)

(declare-fun tp!2293112 () Bool)

(assert (=> b!7790097 (= e!4612999 tp!2293112)))

(assert (= (and b!7789855 ((_ is ElementMatch!20853) (regTwo!42219 r2!6217))) b!7790095))

(assert (= (and b!7789855 ((_ is Concat!29698) (regTwo!42219 r2!6217))) b!7790096))

(assert (= (and b!7789855 ((_ is Star!20853) (regTwo!42219 r2!6217))) b!7790097))

(assert (= (and b!7789855 ((_ is Union!20853) (regTwo!42219 r2!6217))) b!7790098))

(declare-fun b!7790103 () Bool)

(declare-fun e!4613001 () Bool)

(assert (=> b!7790103 (= e!4613001 tp_is_empty!52061)))

(declare-fun b!7790104 () Bool)

(declare-fun tp!2293123 () Bool)

(declare-fun tp!2293125 () Bool)

(assert (=> b!7790104 (= e!4613001 (and tp!2293123 tp!2293125))))

(assert (=> b!7789854 (= tp!2293032 e!4613001)))

(declare-fun b!7790106 () Bool)

(declare-fun tp!2293121 () Bool)

(declare-fun tp!2293124 () Bool)

(assert (=> b!7790106 (= e!4613001 (and tp!2293121 tp!2293124))))

(declare-fun b!7790105 () Bool)

(declare-fun tp!2293122 () Bool)

(assert (=> b!7790105 (= e!4613001 tp!2293122)))

(assert (= (and b!7789854 ((_ is ElementMatch!20853) (reg!21182 r1!6279))) b!7790103))

(assert (= (and b!7789854 ((_ is Concat!29698) (reg!21182 r1!6279))) b!7790104))

(assert (= (and b!7789854 ((_ is Star!20853) (reg!21182 r1!6279))) b!7790105))

(assert (= (and b!7789854 ((_ is Union!20853) (reg!21182 r1!6279))) b!7790106))

(declare-fun b!7790111 () Bool)

(declare-fun e!4613003 () Bool)

(assert (=> b!7790111 (= e!4613003 tp_is_empty!52061)))

(declare-fun b!7790112 () Bool)

(declare-fun tp!2293133 () Bool)

(declare-fun tp!2293135 () Bool)

(assert (=> b!7790112 (= e!4613003 (and tp!2293133 tp!2293135))))

(assert (=> b!7789859 (= tp!2293033 e!4613003)))

(declare-fun b!7790114 () Bool)

(declare-fun tp!2293131 () Bool)

(declare-fun tp!2293134 () Bool)

(assert (=> b!7790114 (= e!4613003 (and tp!2293131 tp!2293134))))

(declare-fun b!7790113 () Bool)

(declare-fun tp!2293132 () Bool)

(assert (=> b!7790113 (= e!4613003 tp!2293132)))

(assert (= (and b!7789859 ((_ is ElementMatch!20853) (regOne!42218 r2!6217))) b!7790111))

(assert (= (and b!7789859 ((_ is Concat!29698) (regOne!42218 r2!6217))) b!7790112))

(assert (= (and b!7789859 ((_ is Star!20853) (regOne!42218 r2!6217))) b!7790113))

(assert (= (and b!7789859 ((_ is Union!20853) (regOne!42218 r2!6217))) b!7790114))

(declare-fun b!7790119 () Bool)

(declare-fun e!4613005 () Bool)

(assert (=> b!7790119 (= e!4613005 tp_is_empty!52061)))

(declare-fun b!7790120 () Bool)

(declare-fun tp!2293143 () Bool)

(declare-fun tp!2293145 () Bool)

(assert (=> b!7790120 (= e!4613005 (and tp!2293143 tp!2293145))))

(assert (=> b!7789859 (= tp!2293030 e!4613005)))

(declare-fun b!7790122 () Bool)

(declare-fun tp!2293141 () Bool)

(declare-fun tp!2293144 () Bool)

(assert (=> b!7790122 (= e!4613005 (and tp!2293141 tp!2293144))))

(declare-fun b!7790121 () Bool)

(declare-fun tp!2293142 () Bool)

(assert (=> b!7790121 (= e!4613005 tp!2293142)))

(assert (= (and b!7789859 ((_ is ElementMatch!20853) (regTwo!42218 r2!6217))) b!7790119))

(assert (= (and b!7789859 ((_ is Concat!29698) (regTwo!42218 r2!6217))) b!7790120))

(assert (= (and b!7789859 ((_ is Star!20853) (regTwo!42218 r2!6217))) b!7790121))

(assert (= (and b!7789859 ((_ is Union!20853) (regTwo!42218 r2!6217))) b!7790122))

(declare-fun b!7790131 () Bool)

(declare-fun e!4613009 () Bool)

(declare-fun tp!2293153 () Bool)

(assert (=> b!7790131 (= e!4613009 (and tp_is_empty!52061 tp!2293153))))

(assert (=> b!7789853 (= tp!2293036 e!4613009)))

(assert (= (and b!7789853 ((_ is Cons!73568) (t!388427 s!14292))) b!7790131))

(declare-fun b!7790132 () Bool)

(declare-fun e!4613010 () Bool)

(assert (=> b!7790132 (= e!4613010 tp_is_empty!52061)))

(declare-fun b!7790133 () Bool)

(declare-fun tp!2293156 () Bool)

(declare-fun tp!2293158 () Bool)

(assert (=> b!7790133 (= e!4613010 (and tp!2293156 tp!2293158))))

(assert (=> b!7789852 (= tp!2293028 e!4613010)))

(declare-fun b!7790135 () Bool)

(declare-fun tp!2293154 () Bool)

(declare-fun tp!2293157 () Bool)

(assert (=> b!7790135 (= e!4613010 (and tp!2293154 tp!2293157))))

(declare-fun b!7790134 () Bool)

(declare-fun tp!2293155 () Bool)

(assert (=> b!7790134 (= e!4613010 tp!2293155)))

(assert (= (and b!7789852 ((_ is ElementMatch!20853) (regOne!42219 r1!6279))) b!7790132))

(assert (= (and b!7789852 ((_ is Concat!29698) (regOne!42219 r1!6279))) b!7790133))

(assert (= (and b!7789852 ((_ is Star!20853) (regOne!42219 r1!6279))) b!7790134))

(assert (= (and b!7789852 ((_ is Union!20853) (regOne!42219 r1!6279))) b!7790135))

(declare-fun b!7790136 () Bool)

(declare-fun e!4613011 () Bool)

(assert (=> b!7790136 (= e!4613011 tp_is_empty!52061)))

(declare-fun b!7790137 () Bool)

(declare-fun tp!2293161 () Bool)

(declare-fun tp!2293163 () Bool)

(assert (=> b!7790137 (= e!4613011 (and tp!2293161 tp!2293163))))

(assert (=> b!7789852 (= tp!2293037 e!4613011)))

(declare-fun b!7790139 () Bool)

(declare-fun tp!2293159 () Bool)

(declare-fun tp!2293162 () Bool)

(assert (=> b!7790139 (= e!4613011 (and tp!2293159 tp!2293162))))

(declare-fun b!7790138 () Bool)

(declare-fun tp!2293160 () Bool)

(assert (=> b!7790138 (= e!4613011 tp!2293160)))

(assert (= (and b!7789852 ((_ is ElementMatch!20853) (regTwo!42219 r1!6279))) b!7790136))

(assert (= (and b!7789852 ((_ is Concat!29698) (regTwo!42219 r1!6279))) b!7790137))

(assert (= (and b!7789852 ((_ is Star!20853) (regTwo!42219 r1!6279))) b!7790138))

(assert (= (and b!7789852 ((_ is Union!20853) (regTwo!42219 r1!6279))) b!7790139))

(check-sat (not bm!721999) (not b!7790082) (not b!7790104) (not b!7790106) (not b!7790088) (not b!7790114) (not b!7790121) (not b!7790137) (not b!7790138) (not b!7790080) (not b!7790120) (not b!7790135) (not b!7790113) (not b!7790105) (not b!7789879) (not b!7789938) (not b!7790065) (not b!7790089) (not b!7790134) (not b!7790098) (not b!7790112) tp_is_empty!52061 (not bm!722003) (not b!7790131) (not b!7790064) (not b!7790122) (not b!7790097) (not b!7790096) (not b!7790072) (not b!7789950) (not bm!722002) (not b!7790018) (not bm!721988) (not b!7790066) (not b!7790029) (not b!7790133) (not b!7789941) (not b!7790081) (not b!7789946) (not b!7790074) (not d!2345866) (not b!7790139) (not b!7790073) (not bm!722000) (not b!7790090) (not b!7789951) (not b!7789947))
(check-sat)
