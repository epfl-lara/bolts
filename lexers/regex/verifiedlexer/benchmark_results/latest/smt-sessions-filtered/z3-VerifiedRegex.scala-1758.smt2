; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87890 () Bool)

(assert start!87890)

(declare-fun b!1000867 () Bool)

(declare-fun e!641607 () Bool)

(declare-datatypes ((C!6120 0))(
  ( (C!6121 (val!3308 Int)) )
))
(declare-datatypes ((Regex!2775 0))(
  ( (ElementMatch!2775 (c!164806 C!6120)) (Concat!4608 (regOne!6062 Regex!2775) (regTwo!6062 Regex!2775)) (EmptyExpr!2775) (Star!2775 (reg!3104 Regex!2775)) (EmptyLang!2775) (Union!2775 (regOne!6063 Regex!2775) (regTwo!6063 Regex!2775)) )
))
(declare-fun lt!352007 () Regex!2775)

(declare-fun validRegex!1244 (Regex!2775) Bool)

(assert (=> b!1000867 (= e!641607 (validRegex!1244 lt!352007))))

(declare-fun b!1000868 () Bool)

(declare-fun e!641610 () Bool)

(declare-fun e!641611 () Bool)

(assert (=> b!1000868 (= e!641610 e!641611)))

(declare-fun res!451890 () Bool)

(assert (=> b!1000868 (=> res!451890 e!641611)))

(declare-fun lt!352003 () Bool)

(assert (=> b!1000868 (= res!451890 (not lt!352003))))

(declare-fun lt!352000 () Bool)

(assert (=> b!1000868 (= lt!352000 lt!352003)))

(declare-fun lt!352006 () Regex!2775)

(declare-datatypes ((List!10005 0))(
  ( (Nil!9989) (Cons!9989 (h!15390 C!6120) (t!101051 List!10005)) )
))
(declare-fun s!10566 () List!10005)

(declare-fun matchR!1311 (Regex!2775 List!10005) Bool)

(assert (=> b!1000868 (= lt!352003 (matchR!1311 lt!352006 s!10566))))

(declare-fun r!15766 () Regex!2775)

(assert (=> b!1000868 (= lt!352000 (matchR!1311 (regTwo!6063 r!15766) s!10566))))

(declare-fun removeUselessConcat!368 (Regex!2775) Regex!2775)

(assert (=> b!1000868 (= lt!352006 (removeUselessConcat!368 (regTwo!6063 r!15766)))))

(declare-datatypes ((Unit!15209 0))(
  ( (Unit!15210) )
))
(declare-fun lt!352002 () Unit!15209)

(declare-fun lemmaRemoveUselessConcatSound!214 (Regex!2775 List!10005) Unit!15209)

(assert (=> b!1000868 (= lt!352002 (lemmaRemoveUselessConcatSound!214 (regTwo!6063 r!15766) s!10566))))

(declare-fun b!1000869 () Bool)

(declare-fun e!641606 () Bool)

(declare-fun tp!304963 () Bool)

(assert (=> b!1000869 (= e!641606 tp!304963)))

(declare-fun b!1000870 () Bool)

(assert (=> b!1000870 (= e!641611 e!641607)))

(declare-fun res!451886 () Bool)

(assert (=> b!1000870 (=> (not res!451886) (not e!641607))))

(assert (=> b!1000870 (= res!451886 (validRegex!1244 lt!352006))))

(assert (=> b!1000870 (matchR!1311 (Union!2775 lt!352006 lt!352007) s!10566)))

(declare-fun lt!352008 () Unit!15209)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!22 (Regex!2775 Regex!2775 List!10005) Unit!15209)

(assert (=> b!1000870 (= lt!352008 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!22 lt!352006 lt!352007 s!10566))))

(assert (=> b!1000870 (= lt!352007 (removeUselessConcat!368 (regOne!6063 r!15766)))))

(declare-fun b!1000871 () Bool)

(declare-fun tp!304960 () Bool)

(declare-fun tp!304959 () Bool)

(assert (=> b!1000871 (= e!641606 (and tp!304960 tp!304959))))

(declare-fun res!451888 () Bool)

(declare-fun e!641609 () Bool)

(assert (=> start!87890 (=> (not res!451888) (not e!641609))))

(assert (=> start!87890 (= res!451888 (validRegex!1244 r!15766))))

(assert (=> start!87890 e!641609))

(assert (=> start!87890 e!641606))

(declare-fun e!641605 () Bool)

(assert (=> start!87890 e!641605))

(declare-fun b!1000872 () Bool)

(declare-fun e!641608 () Bool)

(assert (=> b!1000872 (= e!641608 (matchR!1311 (regTwo!6063 r!15766) s!10566))))

(declare-fun b!1000873 () Bool)

(declare-fun tp_is_empty!5193 () Bool)

(assert (=> b!1000873 (= e!641606 tp_is_empty!5193)))

(declare-fun b!1000874 () Bool)

(declare-fun tp!304962 () Bool)

(declare-fun tp!304964 () Bool)

(assert (=> b!1000874 (= e!641606 (and tp!304962 tp!304964))))

(declare-fun b!1000875 () Bool)

(declare-fun tp!304961 () Bool)

(assert (=> b!1000875 (= e!641605 (and tp_is_empty!5193 tp!304961))))

(declare-fun b!1000876 () Bool)

(declare-fun e!641604 () Bool)

(assert (=> b!1000876 (= e!641609 (not e!641604))))

(declare-fun res!451885 () Bool)

(assert (=> b!1000876 (=> res!451885 e!641604)))

(declare-fun lt!352009 () Bool)

(get-info :version)

(assert (=> b!1000876 (= res!451885 (or (not lt!352009) (and ((_ is Concat!4608) r!15766) ((_ is EmptyExpr!2775) (regOne!6062 r!15766))) (and ((_ is Concat!4608) r!15766) ((_ is EmptyExpr!2775) (regTwo!6062 r!15766))) ((_ is Concat!4608) r!15766) (not ((_ is Union!2775) r!15766))))))

(declare-fun matchRSpec!574 (Regex!2775 List!10005) Bool)

(assert (=> b!1000876 (= lt!352009 (matchRSpec!574 r!15766 s!10566))))

(assert (=> b!1000876 (= lt!352009 (matchR!1311 r!15766 s!10566))))

(declare-fun lt!352001 () Unit!15209)

(declare-fun mainMatchTheorem!574 (Regex!2775 List!10005) Unit!15209)

(assert (=> b!1000876 (= lt!352001 (mainMatchTheorem!574 r!15766 s!10566))))

(declare-fun b!1000877 () Bool)

(assert (=> b!1000877 (= e!641604 e!641610)))

(declare-fun res!451887 () Bool)

(assert (=> b!1000877 (=> res!451887 e!641610)))

(declare-fun lt!352005 () Bool)

(assert (=> b!1000877 (= res!451887 lt!352005)))

(assert (=> b!1000877 e!641608))

(declare-fun res!451889 () Bool)

(assert (=> b!1000877 (=> res!451889 e!641608)))

(assert (=> b!1000877 (= res!451889 lt!352005)))

(assert (=> b!1000877 (= lt!352005 (matchR!1311 (regOne!6063 r!15766) s!10566))))

(declare-fun lt!352004 () Unit!15209)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!82 (Regex!2775 Regex!2775 List!10005) Unit!15209)

(assert (=> b!1000877 (= lt!352004 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!82 (regOne!6063 r!15766) (regTwo!6063 r!15766) s!10566))))

(assert (= (and start!87890 res!451888) b!1000876))

(assert (= (and b!1000876 (not res!451885)) b!1000877))

(assert (= (and b!1000877 (not res!451889)) b!1000872))

(assert (= (and b!1000877 (not res!451887)) b!1000868))

(assert (= (and b!1000868 (not res!451890)) b!1000870))

(assert (= (and b!1000870 res!451886) b!1000867))

(assert (= (and start!87890 ((_ is ElementMatch!2775) r!15766)) b!1000873))

(assert (= (and start!87890 ((_ is Concat!4608) r!15766)) b!1000874))

(assert (= (and start!87890 ((_ is Star!2775) r!15766)) b!1000869))

(assert (= (and start!87890 ((_ is Union!2775) r!15766)) b!1000871))

(assert (= (and start!87890 ((_ is Cons!9989) s!10566)) b!1000875))

(declare-fun m!1189947 () Bool)

(assert (=> b!1000872 m!1189947))

(declare-fun m!1189949 () Bool)

(assert (=> b!1000877 m!1189949))

(declare-fun m!1189951 () Bool)

(assert (=> b!1000877 m!1189951))

(declare-fun m!1189953 () Bool)

(assert (=> b!1000870 m!1189953))

(declare-fun m!1189955 () Bool)

(assert (=> b!1000870 m!1189955))

(declare-fun m!1189957 () Bool)

(assert (=> b!1000870 m!1189957))

(declare-fun m!1189959 () Bool)

(assert (=> b!1000870 m!1189959))

(declare-fun m!1189961 () Bool)

(assert (=> b!1000876 m!1189961))

(declare-fun m!1189963 () Bool)

(assert (=> b!1000876 m!1189963))

(declare-fun m!1189965 () Bool)

(assert (=> b!1000876 m!1189965))

(declare-fun m!1189967 () Bool)

(assert (=> b!1000867 m!1189967))

(declare-fun m!1189969 () Bool)

(assert (=> b!1000868 m!1189969))

(assert (=> b!1000868 m!1189947))

(declare-fun m!1189971 () Bool)

(assert (=> b!1000868 m!1189971))

(declare-fun m!1189973 () Bool)

(assert (=> b!1000868 m!1189973))

(declare-fun m!1189975 () Bool)

(assert (=> start!87890 m!1189975))

(check-sat (not b!1000867) (not b!1000868) (not b!1000871) (not b!1000876) (not b!1000872) (not b!1000869) (not b!1000877) (not b!1000870) (not b!1000875) tp_is_empty!5193 (not b!1000874) (not start!87890))
(check-sat)
(get-model)

(declare-fun b!1000922 () Bool)

(declare-fun e!641646 () Bool)

(declare-fun call!66537 () Bool)

(assert (=> b!1000922 (= e!641646 call!66537)))

(declare-fun bm!66531 () Bool)

(declare-fun c!164817 () Bool)

(declare-fun c!164818 () Bool)

(declare-fun call!66538 () Bool)

(assert (=> bm!66531 (= call!66538 (validRegex!1244 (ite c!164817 (reg!3104 r!15766) (ite c!164818 (regTwo!6063 r!15766) (regTwo!6062 r!15766)))))))

(declare-fun bm!66532 () Bool)

(assert (=> bm!66532 (= call!66537 call!66538)))

(declare-fun b!1000925 () Bool)

(declare-fun res!451914 () Bool)

(assert (=> b!1000925 (=> (not res!451914) (not e!641646))))

(declare-fun call!66536 () Bool)

(assert (=> b!1000925 (= res!451914 call!66536)))

(declare-fun e!641638 () Bool)

(assert (=> b!1000925 (= e!641638 e!641646)))

(declare-fun d!291287 () Bool)

(declare-fun res!451917 () Bool)

(declare-fun e!641645 () Bool)

(assert (=> d!291287 (=> res!451917 e!641645)))

(assert (=> d!291287 (= res!451917 ((_ is ElementMatch!2775) r!15766))))

(assert (=> d!291287 (= (validRegex!1244 r!15766) e!641645)))

(declare-fun b!1000926 () Bool)

(declare-fun e!641642 () Bool)

(assert (=> b!1000926 (= e!641642 call!66538)))

(declare-fun b!1000927 () Bool)

(declare-fun res!451913 () Bool)

(declare-fun e!641644 () Bool)

(assert (=> b!1000927 (=> res!451913 e!641644)))

(assert (=> b!1000927 (= res!451913 (not ((_ is Concat!4608) r!15766)))))

(assert (=> b!1000927 (= e!641638 e!641644)))

(declare-fun b!1000928 () Bool)

(declare-fun e!641643 () Bool)

(assert (=> b!1000928 (= e!641643 e!641642)))

(declare-fun res!451918 () Bool)

(declare-fun nullable!889 (Regex!2775) Bool)

(assert (=> b!1000928 (= res!451918 (not (nullable!889 (reg!3104 r!15766))))))

(assert (=> b!1000928 (=> (not res!451918) (not e!641642))))

(declare-fun b!1000929 () Bool)

(declare-fun e!641639 () Bool)

(assert (=> b!1000929 (= e!641639 call!66537)))

(declare-fun b!1000930 () Bool)

(assert (=> b!1000930 (= e!641645 e!641643)))

(assert (=> b!1000930 (= c!164817 ((_ is Star!2775) r!15766))))

(declare-fun b!1000931 () Bool)

(assert (=> b!1000931 (= e!641644 e!641639)))

(declare-fun res!451919 () Bool)

(assert (=> b!1000931 (=> (not res!451919) (not e!641639))))

(assert (=> b!1000931 (= res!451919 call!66536)))

(declare-fun bm!66533 () Bool)

(assert (=> bm!66533 (= call!66536 (validRegex!1244 (ite c!164818 (regOne!6063 r!15766) (regOne!6062 r!15766))))))

(declare-fun b!1000932 () Bool)

(assert (=> b!1000932 (= e!641643 e!641638)))

(assert (=> b!1000932 (= c!164818 ((_ is Union!2775) r!15766))))

(assert (= (and d!291287 (not res!451917)) b!1000930))

(assert (= (and b!1000930 c!164817) b!1000928))

(assert (= (and b!1000930 (not c!164817)) b!1000932))

(assert (= (and b!1000928 res!451918) b!1000926))

(assert (= (and b!1000932 c!164818) b!1000925))

(assert (= (and b!1000932 (not c!164818)) b!1000927))

(assert (= (and b!1000925 res!451914) b!1000922))

(assert (= (and b!1000927 (not res!451913)) b!1000931))

(assert (= (and b!1000931 res!451919) b!1000929))

(assert (= (or b!1000922 b!1000929) bm!66532))

(assert (= (or b!1000925 b!1000931) bm!66533))

(assert (= (or b!1000926 bm!66532) bm!66531))

(declare-fun m!1189977 () Bool)

(assert (=> bm!66531 m!1189977))

(declare-fun m!1189979 () Bool)

(assert (=> b!1000928 m!1189979))

(declare-fun m!1189981 () Bool)

(assert (=> bm!66533 m!1189981))

(assert (=> start!87890 d!291287))

(declare-fun b!1000933 () Bool)

(declare-fun e!641653 () Bool)

(declare-fun call!66542 () Bool)

(assert (=> b!1000933 (= e!641653 call!66542)))

(declare-fun c!164819 () Bool)

(declare-fun bm!66534 () Bool)

(declare-fun c!164820 () Bool)

(declare-fun call!66543 () Bool)

(assert (=> bm!66534 (= call!66543 (validRegex!1244 (ite c!164819 (reg!3104 lt!352006) (ite c!164820 (regTwo!6063 lt!352006) (regTwo!6062 lt!352006)))))))

(declare-fun bm!66535 () Bool)

(assert (=> bm!66535 (= call!66542 call!66543)))

(declare-fun b!1000934 () Bool)

(declare-fun res!451923 () Bool)

(assert (=> b!1000934 (=> (not res!451923) (not e!641653))))

(declare-fun call!66541 () Bool)

(assert (=> b!1000934 (= res!451923 call!66541)))

(declare-fun e!641647 () Bool)

(assert (=> b!1000934 (= e!641647 e!641653)))

(declare-fun d!291291 () Bool)

(declare-fun res!451924 () Bool)

(declare-fun e!641652 () Bool)

(assert (=> d!291291 (=> res!451924 e!641652)))

(assert (=> d!291291 (= res!451924 ((_ is ElementMatch!2775) lt!352006))))

(assert (=> d!291291 (= (validRegex!1244 lt!352006) e!641652)))

(declare-fun b!1000935 () Bool)

(declare-fun e!641649 () Bool)

(assert (=> b!1000935 (= e!641649 call!66543)))

(declare-fun b!1000936 () Bool)

(declare-fun res!451922 () Bool)

(declare-fun e!641651 () Bool)

(assert (=> b!1000936 (=> res!451922 e!641651)))

(assert (=> b!1000936 (= res!451922 (not ((_ is Concat!4608) lt!352006)))))

(assert (=> b!1000936 (= e!641647 e!641651)))

(declare-fun b!1000937 () Bool)

(declare-fun e!641650 () Bool)

(assert (=> b!1000937 (= e!641650 e!641649)))

(declare-fun res!451925 () Bool)

(assert (=> b!1000937 (= res!451925 (not (nullable!889 (reg!3104 lt!352006))))))

(assert (=> b!1000937 (=> (not res!451925) (not e!641649))))

(declare-fun b!1000938 () Bool)

(declare-fun e!641648 () Bool)

(assert (=> b!1000938 (= e!641648 call!66542)))

(declare-fun b!1000939 () Bool)

(assert (=> b!1000939 (= e!641652 e!641650)))

(assert (=> b!1000939 (= c!164819 ((_ is Star!2775) lt!352006))))

(declare-fun b!1000940 () Bool)

(assert (=> b!1000940 (= e!641651 e!641648)))

(declare-fun res!451926 () Bool)

(assert (=> b!1000940 (=> (not res!451926) (not e!641648))))

(assert (=> b!1000940 (= res!451926 call!66541)))

(declare-fun bm!66536 () Bool)

(assert (=> bm!66536 (= call!66541 (validRegex!1244 (ite c!164820 (regOne!6063 lt!352006) (regOne!6062 lt!352006))))))

(declare-fun b!1000941 () Bool)

(assert (=> b!1000941 (= e!641650 e!641647)))

(assert (=> b!1000941 (= c!164820 ((_ is Union!2775) lt!352006))))

(assert (= (and d!291291 (not res!451924)) b!1000939))

(assert (= (and b!1000939 c!164819) b!1000937))

(assert (= (and b!1000939 (not c!164819)) b!1000941))

(assert (= (and b!1000937 res!451925) b!1000935))

(assert (= (and b!1000941 c!164820) b!1000934))

(assert (= (and b!1000941 (not c!164820)) b!1000936))

(assert (= (and b!1000934 res!451923) b!1000933))

(assert (= (and b!1000936 (not res!451922)) b!1000940))

(assert (= (and b!1000940 res!451926) b!1000938))

(assert (= (or b!1000933 b!1000938) bm!66535))

(assert (= (or b!1000934 b!1000940) bm!66536))

(assert (= (or b!1000935 bm!66535) bm!66534))

(declare-fun m!1189983 () Bool)

(assert (=> bm!66534 m!1189983))

(declare-fun m!1189985 () Bool)

(assert (=> b!1000937 m!1189985))

(declare-fun m!1189987 () Bool)

(assert (=> bm!66536 m!1189987))

(assert (=> b!1000870 d!291291))

(declare-fun d!291293 () Bool)

(declare-fun e!641697 () Bool)

(assert (=> d!291293 e!641697))

(declare-fun c!164836 () Bool)

(assert (=> d!291293 (= c!164836 ((_ is EmptyExpr!2775) (Union!2775 lt!352006 lt!352007)))))

(declare-fun lt!352018 () Bool)

(declare-fun e!641700 () Bool)

(assert (=> d!291293 (= lt!352018 e!641700)))

(declare-fun c!164835 () Bool)

(declare-fun isEmpty!6327 (List!10005) Bool)

(assert (=> d!291293 (= c!164835 (isEmpty!6327 s!10566))))

(assert (=> d!291293 (validRegex!1244 (Union!2775 lt!352006 lt!352007))))

(assert (=> d!291293 (= (matchR!1311 (Union!2775 lt!352006 lt!352007) s!10566) lt!352018)))

(declare-fun b!1001008 () Bool)

(declare-fun res!451972 () Bool)

(declare-fun e!641695 () Bool)

(assert (=> b!1001008 (=> res!451972 e!641695)))

(assert (=> b!1001008 (= res!451972 (not ((_ is ElementMatch!2775) (Union!2775 lt!352006 lt!352007))))))

(declare-fun e!641698 () Bool)

(assert (=> b!1001008 (= e!641698 e!641695)))

(declare-fun b!1001009 () Bool)

(declare-fun e!641696 () Bool)

(declare-fun head!1848 (List!10005) C!6120)

(assert (=> b!1001009 (= e!641696 (= (head!1848 s!10566) (c!164806 (Union!2775 lt!352006 lt!352007))))))

(declare-fun b!1001010 () Bool)

(assert (=> b!1001010 (= e!641698 (not lt!352018))))

(declare-fun bm!66542 () Bool)

(declare-fun call!66549 () Bool)

(assert (=> bm!66542 (= call!66549 (isEmpty!6327 s!10566))))

(declare-fun b!1001011 () Bool)

(declare-fun res!451971 () Bool)

(assert (=> b!1001011 (=> (not res!451971) (not e!641696))))

(assert (=> b!1001011 (= res!451971 (not call!66549))))

(declare-fun b!1001012 () Bool)

(declare-fun res!451970 () Bool)

(assert (=> b!1001012 (=> (not res!451970) (not e!641696))))

(declare-fun tail!1410 (List!10005) List!10005)

(assert (=> b!1001012 (= res!451970 (isEmpty!6327 (tail!1410 s!10566)))))

(declare-fun b!1001013 () Bool)

(declare-fun res!451974 () Bool)

(assert (=> b!1001013 (=> res!451974 e!641695)))

(assert (=> b!1001013 (= res!451974 e!641696)))

(declare-fun res!451968 () Bool)

(assert (=> b!1001013 (=> (not res!451968) (not e!641696))))

(assert (=> b!1001013 (= res!451968 lt!352018)))

(declare-fun b!1001014 () Bool)

(assert (=> b!1001014 (= e!641700 (nullable!889 (Union!2775 lt!352006 lt!352007)))))

(declare-fun b!1001015 () Bool)

(declare-fun e!641699 () Bool)

(declare-fun e!641701 () Bool)

(assert (=> b!1001015 (= e!641699 e!641701)))

(declare-fun res!451973 () Bool)

(assert (=> b!1001015 (=> res!451973 e!641701)))

(assert (=> b!1001015 (= res!451973 call!66549)))

(declare-fun b!1001016 () Bool)

(assert (=> b!1001016 (= e!641701 (not (= (head!1848 s!10566) (c!164806 (Union!2775 lt!352006 lt!352007)))))))

(declare-fun b!1001017 () Bool)

(assert (=> b!1001017 (= e!641697 (= lt!352018 call!66549))))

(declare-fun b!1001018 () Bool)

(assert (=> b!1001018 (= e!641695 e!641699)))

(declare-fun res!451967 () Bool)

(assert (=> b!1001018 (=> (not res!451967) (not e!641699))))

(assert (=> b!1001018 (= res!451967 (not lt!352018))))

(declare-fun b!1001019 () Bool)

(declare-fun derivativeStep!695 (Regex!2775 C!6120) Regex!2775)

(assert (=> b!1001019 (= e!641700 (matchR!1311 (derivativeStep!695 (Union!2775 lt!352006 lt!352007) (head!1848 s!10566)) (tail!1410 s!10566)))))

(declare-fun b!1001020 () Bool)

(assert (=> b!1001020 (= e!641697 e!641698)))

(declare-fun c!164834 () Bool)

(assert (=> b!1001020 (= c!164834 ((_ is EmptyLang!2775) (Union!2775 lt!352006 lt!352007)))))

(declare-fun b!1001021 () Bool)

(declare-fun res!451969 () Bool)

(assert (=> b!1001021 (=> res!451969 e!641701)))

(assert (=> b!1001021 (= res!451969 (not (isEmpty!6327 (tail!1410 s!10566))))))

(assert (= (and d!291293 c!164835) b!1001014))

(assert (= (and d!291293 (not c!164835)) b!1001019))

(assert (= (and d!291293 c!164836) b!1001017))

(assert (= (and d!291293 (not c!164836)) b!1001020))

(assert (= (and b!1001020 c!164834) b!1001010))

(assert (= (and b!1001020 (not c!164834)) b!1001008))

(assert (= (and b!1001008 (not res!451972)) b!1001013))

(assert (= (and b!1001013 res!451968) b!1001011))

(assert (= (and b!1001011 res!451971) b!1001012))

(assert (= (and b!1001012 res!451970) b!1001009))

(assert (= (and b!1001013 (not res!451974)) b!1001018))

(assert (= (and b!1001018 res!451967) b!1001015))

(assert (= (and b!1001015 (not res!451973)) b!1001021))

(assert (= (and b!1001021 (not res!451969)) b!1001016))

(assert (= (or b!1001017 b!1001011 b!1001015) bm!66542))

(declare-fun m!1190009 () Bool)

(assert (=> b!1001019 m!1190009))

(assert (=> b!1001019 m!1190009))

(declare-fun m!1190011 () Bool)

(assert (=> b!1001019 m!1190011))

(declare-fun m!1190013 () Bool)

(assert (=> b!1001019 m!1190013))

(assert (=> b!1001019 m!1190011))

(assert (=> b!1001019 m!1190013))

(declare-fun m!1190015 () Bool)

(assert (=> b!1001019 m!1190015))

(assert (=> b!1001021 m!1190013))

(assert (=> b!1001021 m!1190013))

(declare-fun m!1190017 () Bool)

(assert (=> b!1001021 m!1190017))

(declare-fun m!1190019 () Bool)

(assert (=> bm!66542 m!1190019))

(assert (=> b!1001016 m!1190009))

(assert (=> d!291293 m!1190019))

(declare-fun m!1190021 () Bool)

(assert (=> d!291293 m!1190021))

(declare-fun m!1190023 () Bool)

(assert (=> b!1001014 m!1190023))

(assert (=> b!1001012 m!1190013))

(assert (=> b!1001012 m!1190013))

(assert (=> b!1001012 m!1190017))

(assert (=> b!1001009 m!1190009))

(assert (=> b!1000870 d!291293))

(declare-fun d!291299 () Bool)

(assert (=> d!291299 (matchR!1311 (Union!2775 lt!352006 lt!352007) s!10566)))

(declare-fun lt!352022 () Unit!15209)

(declare-fun choose!6339 (Regex!2775 Regex!2775 List!10005) Unit!15209)

(assert (=> d!291299 (= lt!352022 (choose!6339 lt!352006 lt!352007 s!10566))))

(declare-fun e!641718 () Bool)

(assert (=> d!291299 e!641718))

(declare-fun res!451990 () Bool)

(assert (=> d!291299 (=> (not res!451990) (not e!641718))))

(assert (=> d!291299 (= res!451990 (validRegex!1244 lt!352006))))

(assert (=> d!291299 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!22 lt!352006 lt!352007 s!10566) lt!352022)))

(declare-fun b!1001047 () Bool)

(assert (=> b!1001047 (= e!641718 (validRegex!1244 lt!352007))))

(assert (= (and d!291299 res!451990) b!1001047))

(assert (=> d!291299 m!1189955))

(declare-fun m!1190039 () Bool)

(assert (=> d!291299 m!1190039))

(assert (=> d!291299 m!1189953))

(assert (=> b!1001047 m!1189967))

(assert (=> b!1000870 d!291299))

(declare-fun b!1001095 () Bool)

(declare-fun e!641751 () Regex!2775)

(declare-fun e!641748 () Regex!2775)

(assert (=> b!1001095 (= e!641751 e!641748)))

(declare-fun c!164866 () Bool)

(assert (=> b!1001095 (= c!164866 (and ((_ is Concat!4608) (regOne!6063 r!15766)) ((_ is EmptyExpr!2775) (regTwo!6062 (regOne!6063 r!15766)))))))

(declare-fun bm!66573 () Bool)

(declare-fun call!66579 () Regex!2775)

(declare-fun call!66580 () Regex!2775)

(assert (=> bm!66573 (= call!66579 call!66580)))

(declare-fun b!1001096 () Bool)

(declare-fun call!66578 () Regex!2775)

(assert (=> b!1001096 (= e!641751 call!66578)))

(declare-fun bm!66574 () Bool)

(declare-fun call!66581 () Regex!2775)

(assert (=> bm!66574 (= call!66580 call!66581)))

(declare-fun b!1001097 () Bool)

(declare-fun c!164862 () Bool)

(assert (=> b!1001097 (= c!164862 ((_ is Star!2775) (regOne!6063 r!15766)))))

(declare-fun e!641746 () Regex!2775)

(declare-fun e!641749 () Regex!2775)

(assert (=> b!1001097 (= e!641746 e!641749)))

(declare-fun b!1001098 () Bool)

(declare-fun e!641750 () Regex!2775)

(declare-fun call!66582 () Regex!2775)

(assert (=> b!1001098 (= e!641750 (Concat!4608 call!66582 call!66580))))

(declare-fun b!1001099 () Bool)

(assert (=> b!1001099 (= e!641748 call!66581)))

(declare-fun b!1001100 () Bool)

(assert (=> b!1001100 (= e!641750 e!641746)))

(declare-fun c!164864 () Bool)

(assert (=> b!1001100 (= c!164864 ((_ is Union!2775) (regOne!6063 r!15766)))))

(declare-fun bm!66575 () Bool)

(declare-fun c!164865 () Bool)

(assert (=> bm!66575 (= call!66582 (removeUselessConcat!368 (ite c!164865 (regOne!6062 (regOne!6063 r!15766)) (regOne!6063 (regOne!6063 r!15766)))))))

(declare-fun b!1001101 () Bool)

(assert (=> b!1001101 (= e!641749 (regOne!6063 r!15766))))

(declare-fun d!291305 () Bool)

(declare-fun e!641747 () Bool)

(assert (=> d!291305 e!641747))

(declare-fun res!451998 () Bool)

(assert (=> d!291305 (=> (not res!451998) (not e!641747))))

(declare-fun lt!352030 () Regex!2775)

(assert (=> d!291305 (= res!451998 (validRegex!1244 lt!352030))))

(assert (=> d!291305 (= lt!352030 e!641751)))

(declare-fun c!164863 () Bool)

(assert (=> d!291305 (= c!164863 (and ((_ is Concat!4608) (regOne!6063 r!15766)) ((_ is EmptyExpr!2775) (regOne!6062 (regOne!6063 r!15766)))))))

(assert (=> d!291305 (validRegex!1244 (regOne!6063 r!15766))))

(assert (=> d!291305 (= (removeUselessConcat!368 (regOne!6063 r!15766)) lt!352030)))

(declare-fun b!1001102 () Bool)

(assert (=> b!1001102 (= e!641746 (Union!2775 call!66582 call!66579))))

(declare-fun bm!66576 () Bool)

(assert (=> bm!66576 (= call!66578 (removeUselessConcat!368 (ite c!164863 (regTwo!6062 (regOne!6063 r!15766)) (ite c!164866 (regOne!6062 (regOne!6063 r!15766)) (ite c!164865 (regTwo!6062 (regOne!6063 r!15766)) (ite c!164864 (regTwo!6063 (regOne!6063 r!15766)) (reg!3104 (regOne!6063 r!15766))))))))))

(declare-fun b!1001103 () Bool)

(assert (=> b!1001103 (= e!641747 (= (nullable!889 lt!352030) (nullable!889 (regOne!6063 r!15766))))))

(declare-fun b!1001104 () Bool)

(assert (=> b!1001104 (= c!164865 ((_ is Concat!4608) (regOne!6063 r!15766)))))

(assert (=> b!1001104 (= e!641748 e!641750)))

(declare-fun b!1001105 () Bool)

(assert (=> b!1001105 (= e!641749 (Star!2775 call!66579))))

(declare-fun bm!66577 () Bool)

(assert (=> bm!66577 (= call!66581 call!66578)))

(assert (= (and d!291305 c!164863) b!1001096))

(assert (= (and d!291305 (not c!164863)) b!1001095))

(assert (= (and b!1001095 c!164866) b!1001099))

(assert (= (and b!1001095 (not c!164866)) b!1001104))

(assert (= (and b!1001104 c!164865) b!1001098))

(assert (= (and b!1001104 (not c!164865)) b!1001100))

(assert (= (and b!1001100 c!164864) b!1001102))

(assert (= (and b!1001100 (not c!164864)) b!1001097))

(assert (= (and b!1001097 c!164862) b!1001105))

(assert (= (and b!1001097 (not c!164862)) b!1001101))

(assert (= (or b!1001102 b!1001105) bm!66573))

(assert (= (or b!1001098 bm!66573) bm!66574))

(assert (= (or b!1001098 b!1001102) bm!66575))

(assert (= (or b!1001099 bm!66574) bm!66577))

(assert (= (or b!1001096 bm!66577) bm!66576))

(assert (= (and d!291305 res!451998) b!1001103))

(declare-fun m!1190043 () Bool)

(assert (=> bm!66575 m!1190043))

(declare-fun m!1190045 () Bool)

(assert (=> d!291305 m!1190045))

(declare-fun m!1190047 () Bool)

(assert (=> d!291305 m!1190047))

(declare-fun m!1190049 () Bool)

(assert (=> bm!66576 m!1190049))

(declare-fun m!1190051 () Bool)

(assert (=> b!1001103 m!1190051))

(declare-fun m!1190053 () Bool)

(assert (=> b!1001103 m!1190053))

(assert (=> b!1000870 d!291305))

(declare-fun b!1001304 () Bool)

(assert (=> b!1001304 true))

(assert (=> b!1001304 true))

(declare-fun bs!245101 () Bool)

(declare-fun b!1001309 () Bool)

(assert (= bs!245101 (and b!1001309 b!1001304)))

(declare-fun lambda!35538 () Int)

(declare-fun lambda!35537 () Int)

(assert (=> bs!245101 (not (= lambda!35538 lambda!35537))))

(assert (=> b!1001309 true))

(assert (=> b!1001309 true))

(declare-fun c!164913 () Bool)

(declare-fun call!66613 () Bool)

(declare-fun bm!66607 () Bool)

(declare-fun Exists!510 (Int) Bool)

(assert (=> bm!66607 (= call!66613 (Exists!510 (ite c!164913 lambda!35537 lambda!35538)))))

(declare-fun b!1001303 () Bool)

(declare-fun c!164911 () Bool)

(assert (=> b!1001303 (= c!164911 ((_ is Union!2775) r!15766))))

(declare-fun e!641858 () Bool)

(declare-fun e!641854 () Bool)

(assert (=> b!1001303 (= e!641858 e!641854)))

(declare-fun e!641853 () Bool)

(assert (=> b!1001304 (= e!641853 call!66613)))

(declare-fun b!1001305 () Bool)

(declare-fun e!641856 () Bool)

(assert (=> b!1001305 (= e!641856 (matchRSpec!574 (regTwo!6063 r!15766) s!10566))))

(declare-fun b!1001306 () Bool)

(declare-fun e!641852 () Bool)

(declare-fun e!641857 () Bool)

(assert (=> b!1001306 (= e!641852 e!641857)))

(declare-fun res!452071 () Bool)

(assert (=> b!1001306 (= res!452071 (not ((_ is EmptyLang!2775) r!15766)))))

(assert (=> b!1001306 (=> (not res!452071) (not e!641857))))

(declare-fun b!1001307 () Bool)

(declare-fun c!164912 () Bool)

(assert (=> b!1001307 (= c!164912 ((_ is ElementMatch!2775) r!15766))))

(assert (=> b!1001307 (= e!641857 e!641858)))

(declare-fun b!1001308 () Bool)

(assert (=> b!1001308 (= e!641854 e!641856)))

(declare-fun res!452072 () Bool)

(assert (=> b!1001308 (= res!452072 (matchRSpec!574 (regOne!6063 r!15766) s!10566))))

(assert (=> b!1001308 (=> res!452072 e!641856)))

(declare-fun bm!66608 () Bool)

(declare-fun call!66612 () Bool)

(assert (=> bm!66608 (= call!66612 (isEmpty!6327 s!10566))))

(declare-fun e!641855 () Bool)

(assert (=> b!1001309 (= e!641855 call!66613)))

(declare-fun b!1001310 () Bool)

(assert (=> b!1001310 (= e!641852 call!66612)))

(declare-fun d!291309 () Bool)

(declare-fun c!164910 () Bool)

(assert (=> d!291309 (= c!164910 ((_ is EmptyExpr!2775) r!15766))))

(assert (=> d!291309 (= (matchRSpec!574 r!15766 s!10566) e!641852)))

(declare-fun b!1001302 () Bool)

(declare-fun res!452070 () Bool)

(assert (=> b!1001302 (=> res!452070 e!641853)))

(assert (=> b!1001302 (= res!452070 call!66612)))

(assert (=> b!1001302 (= e!641855 e!641853)))

(declare-fun b!1001311 () Bool)

(assert (=> b!1001311 (= e!641858 (= s!10566 (Cons!9989 (c!164806 r!15766) Nil!9989)))))

(declare-fun b!1001312 () Bool)

(assert (=> b!1001312 (= e!641854 e!641855)))

(assert (=> b!1001312 (= c!164913 ((_ is Star!2775) r!15766))))

(assert (= (and d!291309 c!164910) b!1001310))

(assert (= (and d!291309 (not c!164910)) b!1001306))

(assert (= (and b!1001306 res!452071) b!1001307))

(assert (= (and b!1001307 c!164912) b!1001311))

(assert (= (and b!1001307 (not c!164912)) b!1001303))

(assert (= (and b!1001303 c!164911) b!1001308))

(assert (= (and b!1001303 (not c!164911)) b!1001312))

(assert (= (and b!1001308 (not res!452072)) b!1001305))

(assert (= (and b!1001312 c!164913) b!1001302))

(assert (= (and b!1001312 (not c!164913)) b!1001309))

(assert (= (and b!1001302 (not res!452070)) b!1001304))

(assert (= (or b!1001304 b!1001309) bm!66607))

(assert (= (or b!1001310 b!1001302) bm!66608))

(declare-fun m!1190113 () Bool)

(assert (=> bm!66607 m!1190113))

(declare-fun m!1190115 () Bool)

(assert (=> b!1001305 m!1190115))

(declare-fun m!1190117 () Bool)

(assert (=> b!1001308 m!1190117))

(assert (=> bm!66608 m!1190019))

(assert (=> b!1000876 d!291309))

(declare-fun d!291329 () Bool)

(declare-fun e!641861 () Bool)

(assert (=> d!291329 e!641861))

(declare-fun c!164916 () Bool)

(assert (=> d!291329 (= c!164916 ((_ is EmptyExpr!2775) r!15766))))

(declare-fun lt!352042 () Bool)

(declare-fun e!641864 () Bool)

(assert (=> d!291329 (= lt!352042 e!641864)))

(declare-fun c!164915 () Bool)

(assert (=> d!291329 (= c!164915 (isEmpty!6327 s!10566))))

(assert (=> d!291329 (validRegex!1244 r!15766)))

(assert (=> d!291329 (= (matchR!1311 r!15766 s!10566) lt!352042)))

(declare-fun b!1001317 () Bool)

(declare-fun res!452078 () Bool)

(declare-fun e!641859 () Bool)

(assert (=> b!1001317 (=> res!452078 e!641859)))

(assert (=> b!1001317 (= res!452078 (not ((_ is ElementMatch!2775) r!15766)))))

(declare-fun e!641862 () Bool)

(assert (=> b!1001317 (= e!641862 e!641859)))

(declare-fun b!1001318 () Bool)

(declare-fun e!641860 () Bool)

(assert (=> b!1001318 (= e!641860 (= (head!1848 s!10566) (c!164806 r!15766)))))

(declare-fun b!1001319 () Bool)

(assert (=> b!1001319 (= e!641862 (not lt!352042))))

(declare-fun bm!66609 () Bool)

(declare-fun call!66614 () Bool)

(assert (=> bm!66609 (= call!66614 (isEmpty!6327 s!10566))))

(declare-fun b!1001320 () Bool)

(declare-fun res!452077 () Bool)

(assert (=> b!1001320 (=> (not res!452077) (not e!641860))))

(assert (=> b!1001320 (= res!452077 (not call!66614))))

(declare-fun b!1001321 () Bool)

(declare-fun res!452076 () Bool)

(assert (=> b!1001321 (=> (not res!452076) (not e!641860))))

(assert (=> b!1001321 (= res!452076 (isEmpty!6327 (tail!1410 s!10566)))))

(declare-fun b!1001322 () Bool)

(declare-fun res!452080 () Bool)

(assert (=> b!1001322 (=> res!452080 e!641859)))

(assert (=> b!1001322 (= res!452080 e!641860)))

(declare-fun res!452074 () Bool)

(assert (=> b!1001322 (=> (not res!452074) (not e!641860))))

(assert (=> b!1001322 (= res!452074 lt!352042)))

(declare-fun b!1001323 () Bool)

(assert (=> b!1001323 (= e!641864 (nullable!889 r!15766))))

(declare-fun b!1001324 () Bool)

(declare-fun e!641863 () Bool)

(declare-fun e!641865 () Bool)

(assert (=> b!1001324 (= e!641863 e!641865)))

(declare-fun res!452079 () Bool)

(assert (=> b!1001324 (=> res!452079 e!641865)))

(assert (=> b!1001324 (= res!452079 call!66614)))

(declare-fun b!1001325 () Bool)

(assert (=> b!1001325 (= e!641865 (not (= (head!1848 s!10566) (c!164806 r!15766))))))

(declare-fun b!1001326 () Bool)

(assert (=> b!1001326 (= e!641861 (= lt!352042 call!66614))))

(declare-fun b!1001327 () Bool)

(assert (=> b!1001327 (= e!641859 e!641863)))

(declare-fun res!452073 () Bool)

(assert (=> b!1001327 (=> (not res!452073) (not e!641863))))

(assert (=> b!1001327 (= res!452073 (not lt!352042))))

(declare-fun b!1001328 () Bool)

(assert (=> b!1001328 (= e!641864 (matchR!1311 (derivativeStep!695 r!15766 (head!1848 s!10566)) (tail!1410 s!10566)))))

(declare-fun b!1001329 () Bool)

(assert (=> b!1001329 (= e!641861 e!641862)))

(declare-fun c!164914 () Bool)

(assert (=> b!1001329 (= c!164914 ((_ is EmptyLang!2775) r!15766))))

(declare-fun b!1001330 () Bool)

(declare-fun res!452075 () Bool)

(assert (=> b!1001330 (=> res!452075 e!641865)))

(assert (=> b!1001330 (= res!452075 (not (isEmpty!6327 (tail!1410 s!10566))))))

(assert (= (and d!291329 c!164915) b!1001323))

(assert (= (and d!291329 (not c!164915)) b!1001328))

(assert (= (and d!291329 c!164916) b!1001326))

(assert (= (and d!291329 (not c!164916)) b!1001329))

(assert (= (and b!1001329 c!164914) b!1001319))

(assert (= (and b!1001329 (not c!164914)) b!1001317))

(assert (= (and b!1001317 (not res!452078)) b!1001322))

(assert (= (and b!1001322 res!452074) b!1001320))

(assert (= (and b!1001320 res!452077) b!1001321))

(assert (= (and b!1001321 res!452076) b!1001318))

(assert (= (and b!1001322 (not res!452080)) b!1001327))

(assert (= (and b!1001327 res!452073) b!1001324))

(assert (= (and b!1001324 (not res!452079)) b!1001330))

(assert (= (and b!1001330 (not res!452075)) b!1001325))

(assert (= (or b!1001326 b!1001320 b!1001324) bm!66609))

(assert (=> b!1001328 m!1190009))

(assert (=> b!1001328 m!1190009))

(declare-fun m!1190119 () Bool)

(assert (=> b!1001328 m!1190119))

(assert (=> b!1001328 m!1190013))

(assert (=> b!1001328 m!1190119))

(assert (=> b!1001328 m!1190013))

(declare-fun m!1190121 () Bool)

(assert (=> b!1001328 m!1190121))

(assert (=> b!1001330 m!1190013))

(assert (=> b!1001330 m!1190013))

(assert (=> b!1001330 m!1190017))

(assert (=> bm!66609 m!1190019))

(assert (=> b!1001325 m!1190009))

(assert (=> d!291329 m!1190019))

(assert (=> d!291329 m!1189975))

(declare-fun m!1190123 () Bool)

(assert (=> b!1001323 m!1190123))

(assert (=> b!1001321 m!1190013))

(assert (=> b!1001321 m!1190013))

(assert (=> b!1001321 m!1190017))

(assert (=> b!1001318 m!1190009))

(assert (=> b!1000876 d!291329))

(declare-fun d!291331 () Bool)

(assert (=> d!291331 (= (matchR!1311 r!15766 s!10566) (matchRSpec!574 r!15766 s!10566))))

(declare-fun lt!352045 () Unit!15209)

(declare-fun choose!6341 (Regex!2775 List!10005) Unit!15209)

(assert (=> d!291331 (= lt!352045 (choose!6341 r!15766 s!10566))))

(assert (=> d!291331 (validRegex!1244 r!15766)))

(assert (=> d!291331 (= (mainMatchTheorem!574 r!15766 s!10566) lt!352045)))

(declare-fun bs!245102 () Bool)

(assert (= bs!245102 d!291331))

(assert (=> bs!245102 m!1189963))

(assert (=> bs!245102 m!1189961))

(declare-fun m!1190125 () Bool)

(assert (=> bs!245102 m!1190125))

(assert (=> bs!245102 m!1189975))

(assert (=> b!1000876 d!291331))

(declare-fun d!291333 () Bool)

(declare-fun e!641868 () Bool)

(assert (=> d!291333 e!641868))

(declare-fun c!164919 () Bool)

(assert (=> d!291333 (= c!164919 ((_ is EmptyExpr!2775) (regOne!6063 r!15766)))))

(declare-fun lt!352046 () Bool)

(declare-fun e!641871 () Bool)

(assert (=> d!291333 (= lt!352046 e!641871)))

(declare-fun c!164918 () Bool)

(assert (=> d!291333 (= c!164918 (isEmpty!6327 s!10566))))

(assert (=> d!291333 (validRegex!1244 (regOne!6063 r!15766))))

(assert (=> d!291333 (= (matchR!1311 (regOne!6063 r!15766) s!10566) lt!352046)))

(declare-fun b!1001331 () Bool)

(declare-fun res!452086 () Bool)

(declare-fun e!641866 () Bool)

(assert (=> b!1001331 (=> res!452086 e!641866)))

(assert (=> b!1001331 (= res!452086 (not ((_ is ElementMatch!2775) (regOne!6063 r!15766))))))

(declare-fun e!641869 () Bool)

(assert (=> b!1001331 (= e!641869 e!641866)))

(declare-fun b!1001332 () Bool)

(declare-fun e!641867 () Bool)

(assert (=> b!1001332 (= e!641867 (= (head!1848 s!10566) (c!164806 (regOne!6063 r!15766))))))

(declare-fun b!1001333 () Bool)

(assert (=> b!1001333 (= e!641869 (not lt!352046))))

(declare-fun bm!66610 () Bool)

(declare-fun call!66615 () Bool)

(assert (=> bm!66610 (= call!66615 (isEmpty!6327 s!10566))))

(declare-fun b!1001334 () Bool)

(declare-fun res!452085 () Bool)

(assert (=> b!1001334 (=> (not res!452085) (not e!641867))))

(assert (=> b!1001334 (= res!452085 (not call!66615))))

(declare-fun b!1001335 () Bool)

(declare-fun res!452084 () Bool)

(assert (=> b!1001335 (=> (not res!452084) (not e!641867))))

(assert (=> b!1001335 (= res!452084 (isEmpty!6327 (tail!1410 s!10566)))))

(declare-fun b!1001336 () Bool)

(declare-fun res!452088 () Bool)

(assert (=> b!1001336 (=> res!452088 e!641866)))

(assert (=> b!1001336 (= res!452088 e!641867)))

(declare-fun res!452082 () Bool)

(assert (=> b!1001336 (=> (not res!452082) (not e!641867))))

(assert (=> b!1001336 (= res!452082 lt!352046)))

(declare-fun b!1001337 () Bool)

(assert (=> b!1001337 (= e!641871 (nullable!889 (regOne!6063 r!15766)))))

(declare-fun b!1001338 () Bool)

(declare-fun e!641870 () Bool)

(declare-fun e!641872 () Bool)

(assert (=> b!1001338 (= e!641870 e!641872)))

(declare-fun res!452087 () Bool)

(assert (=> b!1001338 (=> res!452087 e!641872)))

(assert (=> b!1001338 (= res!452087 call!66615)))

(declare-fun b!1001339 () Bool)

(assert (=> b!1001339 (= e!641872 (not (= (head!1848 s!10566) (c!164806 (regOne!6063 r!15766)))))))

(declare-fun b!1001340 () Bool)

(assert (=> b!1001340 (= e!641868 (= lt!352046 call!66615))))

(declare-fun b!1001341 () Bool)

(assert (=> b!1001341 (= e!641866 e!641870)))

(declare-fun res!452081 () Bool)

(assert (=> b!1001341 (=> (not res!452081) (not e!641870))))

(assert (=> b!1001341 (= res!452081 (not lt!352046))))

(declare-fun b!1001342 () Bool)

(assert (=> b!1001342 (= e!641871 (matchR!1311 (derivativeStep!695 (regOne!6063 r!15766) (head!1848 s!10566)) (tail!1410 s!10566)))))

(declare-fun b!1001343 () Bool)

(assert (=> b!1001343 (= e!641868 e!641869)))

(declare-fun c!164917 () Bool)

(assert (=> b!1001343 (= c!164917 ((_ is EmptyLang!2775) (regOne!6063 r!15766)))))

(declare-fun b!1001344 () Bool)

(declare-fun res!452083 () Bool)

(assert (=> b!1001344 (=> res!452083 e!641872)))

(assert (=> b!1001344 (= res!452083 (not (isEmpty!6327 (tail!1410 s!10566))))))

(assert (= (and d!291333 c!164918) b!1001337))

(assert (= (and d!291333 (not c!164918)) b!1001342))

(assert (= (and d!291333 c!164919) b!1001340))

(assert (= (and d!291333 (not c!164919)) b!1001343))

(assert (= (and b!1001343 c!164917) b!1001333))

(assert (= (and b!1001343 (not c!164917)) b!1001331))

(assert (= (and b!1001331 (not res!452086)) b!1001336))

(assert (= (and b!1001336 res!452082) b!1001334))

(assert (= (and b!1001334 res!452085) b!1001335))

(assert (= (and b!1001335 res!452084) b!1001332))

(assert (= (and b!1001336 (not res!452088)) b!1001341))

(assert (= (and b!1001341 res!452081) b!1001338))

(assert (= (and b!1001338 (not res!452087)) b!1001344))

(assert (= (and b!1001344 (not res!452083)) b!1001339))

(assert (= (or b!1001340 b!1001334 b!1001338) bm!66610))

(assert (=> b!1001342 m!1190009))

(assert (=> b!1001342 m!1190009))

(declare-fun m!1190127 () Bool)

(assert (=> b!1001342 m!1190127))

(assert (=> b!1001342 m!1190013))

(assert (=> b!1001342 m!1190127))

(assert (=> b!1001342 m!1190013))

(declare-fun m!1190129 () Bool)

(assert (=> b!1001342 m!1190129))

(assert (=> b!1001344 m!1190013))

(assert (=> b!1001344 m!1190013))

(assert (=> b!1001344 m!1190017))

(assert (=> bm!66610 m!1190019))

(assert (=> b!1001339 m!1190009))

(assert (=> d!291333 m!1190019))

(assert (=> d!291333 m!1190047))

(assert (=> b!1001337 m!1190053))

(assert (=> b!1001335 m!1190013))

(assert (=> b!1001335 m!1190013))

(assert (=> b!1001335 m!1190017))

(assert (=> b!1001332 m!1190009))

(assert (=> b!1000877 d!291333))

(declare-fun d!291335 () Bool)

(declare-fun e!641878 () Bool)

(assert (=> d!291335 e!641878))

(declare-fun res!452093 () Bool)

(assert (=> d!291335 (=> res!452093 e!641878)))

(assert (=> d!291335 (= res!452093 (matchR!1311 (regOne!6063 r!15766) s!10566))))

(declare-fun lt!352049 () Unit!15209)

(declare-fun choose!6342 (Regex!2775 Regex!2775 List!10005) Unit!15209)

(assert (=> d!291335 (= lt!352049 (choose!6342 (regOne!6063 r!15766) (regTwo!6063 r!15766) s!10566))))

(declare-fun e!641877 () Bool)

(assert (=> d!291335 e!641877))

(declare-fun res!452094 () Bool)

(assert (=> d!291335 (=> (not res!452094) (not e!641877))))

(assert (=> d!291335 (= res!452094 (validRegex!1244 (regOne!6063 r!15766)))))

(assert (=> d!291335 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!82 (regOne!6063 r!15766) (regTwo!6063 r!15766) s!10566) lt!352049)))

(declare-fun b!1001349 () Bool)

(assert (=> b!1001349 (= e!641877 (validRegex!1244 (regTwo!6063 r!15766)))))

(declare-fun b!1001350 () Bool)

(assert (=> b!1001350 (= e!641878 (matchR!1311 (regTwo!6063 r!15766) s!10566))))

(assert (= (and d!291335 res!452094) b!1001349))

(assert (= (and d!291335 (not res!452093)) b!1001350))

(assert (=> d!291335 m!1189949))

(declare-fun m!1190131 () Bool)

(assert (=> d!291335 m!1190131))

(assert (=> d!291335 m!1190047))

(declare-fun m!1190133 () Bool)

(assert (=> b!1001349 m!1190133))

(assert (=> b!1001350 m!1189947))

(assert (=> b!1000877 d!291335))

(declare-fun d!291337 () Bool)

(declare-fun e!641881 () Bool)

(assert (=> d!291337 e!641881))

(declare-fun c!164922 () Bool)

(assert (=> d!291337 (= c!164922 ((_ is EmptyExpr!2775) (regTwo!6063 r!15766)))))

(declare-fun lt!352050 () Bool)

(declare-fun e!641884 () Bool)

(assert (=> d!291337 (= lt!352050 e!641884)))

(declare-fun c!164921 () Bool)

(assert (=> d!291337 (= c!164921 (isEmpty!6327 s!10566))))

(assert (=> d!291337 (validRegex!1244 (regTwo!6063 r!15766))))

(assert (=> d!291337 (= (matchR!1311 (regTwo!6063 r!15766) s!10566) lt!352050)))

(declare-fun b!1001351 () Bool)

(declare-fun res!452100 () Bool)

(declare-fun e!641879 () Bool)

(assert (=> b!1001351 (=> res!452100 e!641879)))

(assert (=> b!1001351 (= res!452100 (not ((_ is ElementMatch!2775) (regTwo!6063 r!15766))))))

(declare-fun e!641882 () Bool)

(assert (=> b!1001351 (= e!641882 e!641879)))

(declare-fun b!1001352 () Bool)

(declare-fun e!641880 () Bool)

(assert (=> b!1001352 (= e!641880 (= (head!1848 s!10566) (c!164806 (regTwo!6063 r!15766))))))

(declare-fun b!1001353 () Bool)

(assert (=> b!1001353 (= e!641882 (not lt!352050))))

(declare-fun bm!66611 () Bool)

(declare-fun call!66616 () Bool)

(assert (=> bm!66611 (= call!66616 (isEmpty!6327 s!10566))))

(declare-fun b!1001354 () Bool)

(declare-fun res!452099 () Bool)

(assert (=> b!1001354 (=> (not res!452099) (not e!641880))))

(assert (=> b!1001354 (= res!452099 (not call!66616))))

(declare-fun b!1001355 () Bool)

(declare-fun res!452098 () Bool)

(assert (=> b!1001355 (=> (not res!452098) (not e!641880))))

(assert (=> b!1001355 (= res!452098 (isEmpty!6327 (tail!1410 s!10566)))))

(declare-fun b!1001356 () Bool)

(declare-fun res!452102 () Bool)

(assert (=> b!1001356 (=> res!452102 e!641879)))

(assert (=> b!1001356 (= res!452102 e!641880)))

(declare-fun res!452096 () Bool)

(assert (=> b!1001356 (=> (not res!452096) (not e!641880))))

(assert (=> b!1001356 (= res!452096 lt!352050)))

(declare-fun b!1001357 () Bool)

(assert (=> b!1001357 (= e!641884 (nullable!889 (regTwo!6063 r!15766)))))

(declare-fun b!1001358 () Bool)

(declare-fun e!641883 () Bool)

(declare-fun e!641885 () Bool)

(assert (=> b!1001358 (= e!641883 e!641885)))

(declare-fun res!452101 () Bool)

(assert (=> b!1001358 (=> res!452101 e!641885)))

(assert (=> b!1001358 (= res!452101 call!66616)))

(declare-fun b!1001359 () Bool)

(assert (=> b!1001359 (= e!641885 (not (= (head!1848 s!10566) (c!164806 (regTwo!6063 r!15766)))))))

(declare-fun b!1001360 () Bool)

(assert (=> b!1001360 (= e!641881 (= lt!352050 call!66616))))

(declare-fun b!1001361 () Bool)

(assert (=> b!1001361 (= e!641879 e!641883)))

(declare-fun res!452095 () Bool)

(assert (=> b!1001361 (=> (not res!452095) (not e!641883))))

(assert (=> b!1001361 (= res!452095 (not lt!352050))))

(declare-fun b!1001362 () Bool)

(assert (=> b!1001362 (= e!641884 (matchR!1311 (derivativeStep!695 (regTwo!6063 r!15766) (head!1848 s!10566)) (tail!1410 s!10566)))))

(declare-fun b!1001363 () Bool)

(assert (=> b!1001363 (= e!641881 e!641882)))

(declare-fun c!164920 () Bool)

(assert (=> b!1001363 (= c!164920 ((_ is EmptyLang!2775) (regTwo!6063 r!15766)))))

(declare-fun b!1001364 () Bool)

(declare-fun res!452097 () Bool)

(assert (=> b!1001364 (=> res!452097 e!641885)))

(assert (=> b!1001364 (= res!452097 (not (isEmpty!6327 (tail!1410 s!10566))))))

(assert (= (and d!291337 c!164921) b!1001357))

(assert (= (and d!291337 (not c!164921)) b!1001362))

(assert (= (and d!291337 c!164922) b!1001360))

(assert (= (and d!291337 (not c!164922)) b!1001363))

(assert (= (and b!1001363 c!164920) b!1001353))

(assert (= (and b!1001363 (not c!164920)) b!1001351))

(assert (= (and b!1001351 (not res!452100)) b!1001356))

(assert (= (and b!1001356 res!452096) b!1001354))

(assert (= (and b!1001354 res!452099) b!1001355))

(assert (= (and b!1001355 res!452098) b!1001352))

(assert (= (and b!1001356 (not res!452102)) b!1001361))

(assert (= (and b!1001361 res!452095) b!1001358))

(assert (= (and b!1001358 (not res!452101)) b!1001364))

(assert (= (and b!1001364 (not res!452097)) b!1001359))

(assert (= (or b!1001360 b!1001354 b!1001358) bm!66611))

(assert (=> b!1001362 m!1190009))

(assert (=> b!1001362 m!1190009))

(declare-fun m!1190135 () Bool)

(assert (=> b!1001362 m!1190135))

(assert (=> b!1001362 m!1190013))

(assert (=> b!1001362 m!1190135))

(assert (=> b!1001362 m!1190013))

(declare-fun m!1190137 () Bool)

(assert (=> b!1001362 m!1190137))

(assert (=> b!1001364 m!1190013))

(assert (=> b!1001364 m!1190013))

(assert (=> b!1001364 m!1190017))

(assert (=> bm!66611 m!1190019))

(assert (=> b!1001359 m!1190009))

(assert (=> d!291337 m!1190019))

(assert (=> d!291337 m!1190133))

(declare-fun m!1190139 () Bool)

(assert (=> b!1001357 m!1190139))

(assert (=> b!1001355 m!1190013))

(assert (=> b!1001355 m!1190013))

(assert (=> b!1001355 m!1190017))

(assert (=> b!1001352 m!1190009))

(assert (=> b!1000872 d!291337))

(declare-fun b!1001365 () Bool)

(declare-fun e!641892 () Bool)

(declare-fun call!66618 () Bool)

(assert (=> b!1001365 (= e!641892 call!66618)))

(declare-fun call!66619 () Bool)

(declare-fun c!164923 () Bool)

(declare-fun c!164924 () Bool)

(declare-fun bm!66612 () Bool)

(assert (=> bm!66612 (= call!66619 (validRegex!1244 (ite c!164923 (reg!3104 lt!352007) (ite c!164924 (regTwo!6063 lt!352007) (regTwo!6062 lt!352007)))))))

(declare-fun bm!66613 () Bool)

(assert (=> bm!66613 (= call!66618 call!66619)))

(declare-fun b!1001366 () Bool)

(declare-fun res!452104 () Bool)

(assert (=> b!1001366 (=> (not res!452104) (not e!641892))))

(declare-fun call!66617 () Bool)

(assert (=> b!1001366 (= res!452104 call!66617)))

(declare-fun e!641886 () Bool)

(assert (=> b!1001366 (= e!641886 e!641892)))

(declare-fun d!291339 () Bool)

(declare-fun res!452105 () Bool)

(declare-fun e!641891 () Bool)

(assert (=> d!291339 (=> res!452105 e!641891)))

(assert (=> d!291339 (= res!452105 ((_ is ElementMatch!2775) lt!352007))))

(assert (=> d!291339 (= (validRegex!1244 lt!352007) e!641891)))

(declare-fun b!1001367 () Bool)

(declare-fun e!641888 () Bool)

(assert (=> b!1001367 (= e!641888 call!66619)))

(declare-fun b!1001368 () Bool)

(declare-fun res!452103 () Bool)

(declare-fun e!641890 () Bool)

(assert (=> b!1001368 (=> res!452103 e!641890)))

(assert (=> b!1001368 (= res!452103 (not ((_ is Concat!4608) lt!352007)))))

(assert (=> b!1001368 (= e!641886 e!641890)))

(declare-fun b!1001369 () Bool)

(declare-fun e!641889 () Bool)

(assert (=> b!1001369 (= e!641889 e!641888)))

(declare-fun res!452106 () Bool)

(assert (=> b!1001369 (= res!452106 (not (nullable!889 (reg!3104 lt!352007))))))

(assert (=> b!1001369 (=> (not res!452106) (not e!641888))))

(declare-fun b!1001370 () Bool)

(declare-fun e!641887 () Bool)

(assert (=> b!1001370 (= e!641887 call!66618)))

(declare-fun b!1001371 () Bool)

(assert (=> b!1001371 (= e!641891 e!641889)))

(assert (=> b!1001371 (= c!164923 ((_ is Star!2775) lt!352007))))

(declare-fun b!1001372 () Bool)

(assert (=> b!1001372 (= e!641890 e!641887)))

(declare-fun res!452107 () Bool)

(assert (=> b!1001372 (=> (not res!452107) (not e!641887))))

(assert (=> b!1001372 (= res!452107 call!66617)))

(declare-fun bm!66614 () Bool)

(assert (=> bm!66614 (= call!66617 (validRegex!1244 (ite c!164924 (regOne!6063 lt!352007) (regOne!6062 lt!352007))))))

(declare-fun b!1001373 () Bool)

(assert (=> b!1001373 (= e!641889 e!641886)))

(assert (=> b!1001373 (= c!164924 ((_ is Union!2775) lt!352007))))

(assert (= (and d!291339 (not res!452105)) b!1001371))

(assert (= (and b!1001371 c!164923) b!1001369))

(assert (= (and b!1001371 (not c!164923)) b!1001373))

(assert (= (and b!1001369 res!452106) b!1001367))

(assert (= (and b!1001373 c!164924) b!1001366))

(assert (= (and b!1001373 (not c!164924)) b!1001368))

(assert (= (and b!1001366 res!452104) b!1001365))

(assert (= (and b!1001368 (not res!452103)) b!1001372))

(assert (= (and b!1001372 res!452107) b!1001370))

(assert (= (or b!1001365 b!1001370) bm!66613))

(assert (= (or b!1001366 b!1001372) bm!66614))

(assert (= (or b!1001367 bm!66613) bm!66612))

(declare-fun m!1190141 () Bool)

(assert (=> bm!66612 m!1190141))

(declare-fun m!1190143 () Bool)

(assert (=> b!1001369 m!1190143))

(declare-fun m!1190145 () Bool)

(assert (=> bm!66614 m!1190145))

(assert (=> b!1000867 d!291339))

(declare-fun d!291341 () Bool)

(declare-fun e!641895 () Bool)

(assert (=> d!291341 e!641895))

(declare-fun c!164927 () Bool)

(assert (=> d!291341 (= c!164927 ((_ is EmptyExpr!2775) lt!352006))))

(declare-fun lt!352051 () Bool)

(declare-fun e!641898 () Bool)

(assert (=> d!291341 (= lt!352051 e!641898)))

(declare-fun c!164926 () Bool)

(assert (=> d!291341 (= c!164926 (isEmpty!6327 s!10566))))

(assert (=> d!291341 (validRegex!1244 lt!352006)))

(assert (=> d!291341 (= (matchR!1311 lt!352006 s!10566) lt!352051)))

(declare-fun b!1001374 () Bool)

(declare-fun res!452113 () Bool)

(declare-fun e!641893 () Bool)

(assert (=> b!1001374 (=> res!452113 e!641893)))

(assert (=> b!1001374 (= res!452113 (not ((_ is ElementMatch!2775) lt!352006)))))

(declare-fun e!641896 () Bool)

(assert (=> b!1001374 (= e!641896 e!641893)))

(declare-fun b!1001375 () Bool)

(declare-fun e!641894 () Bool)

(assert (=> b!1001375 (= e!641894 (= (head!1848 s!10566) (c!164806 lt!352006)))))

(declare-fun b!1001376 () Bool)

(assert (=> b!1001376 (= e!641896 (not lt!352051))))

(declare-fun bm!66615 () Bool)

(declare-fun call!66620 () Bool)

(assert (=> bm!66615 (= call!66620 (isEmpty!6327 s!10566))))

(declare-fun b!1001377 () Bool)

(declare-fun res!452112 () Bool)

(assert (=> b!1001377 (=> (not res!452112) (not e!641894))))

(assert (=> b!1001377 (= res!452112 (not call!66620))))

(declare-fun b!1001378 () Bool)

(declare-fun res!452111 () Bool)

(assert (=> b!1001378 (=> (not res!452111) (not e!641894))))

(assert (=> b!1001378 (= res!452111 (isEmpty!6327 (tail!1410 s!10566)))))

(declare-fun b!1001379 () Bool)

(declare-fun res!452115 () Bool)

(assert (=> b!1001379 (=> res!452115 e!641893)))

(assert (=> b!1001379 (= res!452115 e!641894)))

(declare-fun res!452109 () Bool)

(assert (=> b!1001379 (=> (not res!452109) (not e!641894))))

(assert (=> b!1001379 (= res!452109 lt!352051)))

(declare-fun b!1001380 () Bool)

(assert (=> b!1001380 (= e!641898 (nullable!889 lt!352006))))

(declare-fun b!1001381 () Bool)

(declare-fun e!641897 () Bool)

(declare-fun e!641899 () Bool)

(assert (=> b!1001381 (= e!641897 e!641899)))

(declare-fun res!452114 () Bool)

(assert (=> b!1001381 (=> res!452114 e!641899)))

(assert (=> b!1001381 (= res!452114 call!66620)))

(declare-fun b!1001382 () Bool)

(assert (=> b!1001382 (= e!641899 (not (= (head!1848 s!10566) (c!164806 lt!352006))))))

(declare-fun b!1001383 () Bool)

(assert (=> b!1001383 (= e!641895 (= lt!352051 call!66620))))

(declare-fun b!1001384 () Bool)

(assert (=> b!1001384 (= e!641893 e!641897)))

(declare-fun res!452108 () Bool)

(assert (=> b!1001384 (=> (not res!452108) (not e!641897))))

(assert (=> b!1001384 (= res!452108 (not lt!352051))))

(declare-fun b!1001385 () Bool)

(assert (=> b!1001385 (= e!641898 (matchR!1311 (derivativeStep!695 lt!352006 (head!1848 s!10566)) (tail!1410 s!10566)))))

(declare-fun b!1001386 () Bool)

(assert (=> b!1001386 (= e!641895 e!641896)))

(declare-fun c!164925 () Bool)

(assert (=> b!1001386 (= c!164925 ((_ is EmptyLang!2775) lt!352006))))

(declare-fun b!1001387 () Bool)

(declare-fun res!452110 () Bool)

(assert (=> b!1001387 (=> res!452110 e!641899)))

(assert (=> b!1001387 (= res!452110 (not (isEmpty!6327 (tail!1410 s!10566))))))

(assert (= (and d!291341 c!164926) b!1001380))

(assert (= (and d!291341 (not c!164926)) b!1001385))

(assert (= (and d!291341 c!164927) b!1001383))

(assert (= (and d!291341 (not c!164927)) b!1001386))

(assert (= (and b!1001386 c!164925) b!1001376))

(assert (= (and b!1001386 (not c!164925)) b!1001374))

(assert (= (and b!1001374 (not res!452113)) b!1001379))

(assert (= (and b!1001379 res!452109) b!1001377))

(assert (= (and b!1001377 res!452112) b!1001378))

(assert (= (and b!1001378 res!452111) b!1001375))

(assert (= (and b!1001379 (not res!452115)) b!1001384))

(assert (= (and b!1001384 res!452108) b!1001381))

(assert (= (and b!1001381 (not res!452114)) b!1001387))

(assert (= (and b!1001387 (not res!452110)) b!1001382))

(assert (= (or b!1001383 b!1001377 b!1001381) bm!66615))

(assert (=> b!1001385 m!1190009))

(assert (=> b!1001385 m!1190009))

(declare-fun m!1190147 () Bool)

(assert (=> b!1001385 m!1190147))

(assert (=> b!1001385 m!1190013))

(assert (=> b!1001385 m!1190147))

(assert (=> b!1001385 m!1190013))

(declare-fun m!1190149 () Bool)

(assert (=> b!1001385 m!1190149))

(assert (=> b!1001387 m!1190013))

(assert (=> b!1001387 m!1190013))

(assert (=> b!1001387 m!1190017))

(assert (=> bm!66615 m!1190019))

(assert (=> b!1001382 m!1190009))

(assert (=> d!291341 m!1190019))

(assert (=> d!291341 m!1189953))

(declare-fun m!1190151 () Bool)

(assert (=> b!1001380 m!1190151))

(assert (=> b!1001378 m!1190013))

(assert (=> b!1001378 m!1190013))

(assert (=> b!1001378 m!1190017))

(assert (=> b!1001375 m!1190009))

(assert (=> b!1000868 d!291341))

(assert (=> b!1000868 d!291337))

(declare-fun b!1001388 () Bool)

(declare-fun e!641905 () Regex!2775)

(declare-fun e!641902 () Regex!2775)

(assert (=> b!1001388 (= e!641905 e!641902)))

(declare-fun c!164932 () Bool)

(assert (=> b!1001388 (= c!164932 (and ((_ is Concat!4608) (regTwo!6063 r!15766)) ((_ is EmptyExpr!2775) (regTwo!6062 (regTwo!6063 r!15766)))))))

(declare-fun bm!66616 () Bool)

(declare-fun call!66622 () Regex!2775)

(declare-fun call!66623 () Regex!2775)

(assert (=> bm!66616 (= call!66622 call!66623)))

(declare-fun b!1001389 () Bool)

(declare-fun call!66621 () Regex!2775)

(assert (=> b!1001389 (= e!641905 call!66621)))

(declare-fun bm!66617 () Bool)

(declare-fun call!66624 () Regex!2775)

(assert (=> bm!66617 (= call!66623 call!66624)))

(declare-fun b!1001390 () Bool)

(declare-fun c!164928 () Bool)

(assert (=> b!1001390 (= c!164928 ((_ is Star!2775) (regTwo!6063 r!15766)))))

(declare-fun e!641900 () Regex!2775)

(declare-fun e!641903 () Regex!2775)

(assert (=> b!1001390 (= e!641900 e!641903)))

(declare-fun b!1001391 () Bool)

(declare-fun e!641904 () Regex!2775)

(declare-fun call!66625 () Regex!2775)

(assert (=> b!1001391 (= e!641904 (Concat!4608 call!66625 call!66623))))

(declare-fun b!1001392 () Bool)

(assert (=> b!1001392 (= e!641902 call!66624)))

(declare-fun b!1001393 () Bool)

(assert (=> b!1001393 (= e!641904 e!641900)))

(declare-fun c!164930 () Bool)

(assert (=> b!1001393 (= c!164930 ((_ is Union!2775) (regTwo!6063 r!15766)))))

(declare-fun bm!66618 () Bool)

(declare-fun c!164931 () Bool)

(assert (=> bm!66618 (= call!66625 (removeUselessConcat!368 (ite c!164931 (regOne!6062 (regTwo!6063 r!15766)) (regOne!6063 (regTwo!6063 r!15766)))))))

(declare-fun b!1001394 () Bool)

(assert (=> b!1001394 (= e!641903 (regTwo!6063 r!15766))))

(declare-fun d!291343 () Bool)

(declare-fun e!641901 () Bool)

(assert (=> d!291343 e!641901))

(declare-fun res!452116 () Bool)

(assert (=> d!291343 (=> (not res!452116) (not e!641901))))

(declare-fun lt!352052 () Regex!2775)

(assert (=> d!291343 (= res!452116 (validRegex!1244 lt!352052))))

(assert (=> d!291343 (= lt!352052 e!641905)))

(declare-fun c!164929 () Bool)

(assert (=> d!291343 (= c!164929 (and ((_ is Concat!4608) (regTwo!6063 r!15766)) ((_ is EmptyExpr!2775) (regOne!6062 (regTwo!6063 r!15766)))))))

(assert (=> d!291343 (validRegex!1244 (regTwo!6063 r!15766))))

(assert (=> d!291343 (= (removeUselessConcat!368 (regTwo!6063 r!15766)) lt!352052)))

(declare-fun b!1001395 () Bool)

(assert (=> b!1001395 (= e!641900 (Union!2775 call!66625 call!66622))))

(declare-fun bm!66619 () Bool)

(assert (=> bm!66619 (= call!66621 (removeUselessConcat!368 (ite c!164929 (regTwo!6062 (regTwo!6063 r!15766)) (ite c!164932 (regOne!6062 (regTwo!6063 r!15766)) (ite c!164931 (regTwo!6062 (regTwo!6063 r!15766)) (ite c!164930 (regTwo!6063 (regTwo!6063 r!15766)) (reg!3104 (regTwo!6063 r!15766))))))))))

(declare-fun b!1001396 () Bool)

(assert (=> b!1001396 (= e!641901 (= (nullable!889 lt!352052) (nullable!889 (regTwo!6063 r!15766))))))

(declare-fun b!1001397 () Bool)

(assert (=> b!1001397 (= c!164931 ((_ is Concat!4608) (regTwo!6063 r!15766)))))

(assert (=> b!1001397 (= e!641902 e!641904)))

(declare-fun b!1001398 () Bool)

(assert (=> b!1001398 (= e!641903 (Star!2775 call!66622))))

(declare-fun bm!66620 () Bool)

(assert (=> bm!66620 (= call!66624 call!66621)))

(assert (= (and d!291343 c!164929) b!1001389))

(assert (= (and d!291343 (not c!164929)) b!1001388))

(assert (= (and b!1001388 c!164932) b!1001392))

(assert (= (and b!1001388 (not c!164932)) b!1001397))

(assert (= (and b!1001397 c!164931) b!1001391))

(assert (= (and b!1001397 (not c!164931)) b!1001393))

(assert (= (and b!1001393 c!164930) b!1001395))

(assert (= (and b!1001393 (not c!164930)) b!1001390))

(assert (= (and b!1001390 c!164928) b!1001398))

(assert (= (and b!1001390 (not c!164928)) b!1001394))

(assert (= (or b!1001395 b!1001398) bm!66616))

(assert (= (or b!1001391 bm!66616) bm!66617))

(assert (= (or b!1001391 b!1001395) bm!66618))

(assert (= (or b!1001392 bm!66617) bm!66620))

(assert (= (or b!1001389 bm!66620) bm!66619))

(assert (= (and d!291343 res!452116) b!1001396))

(declare-fun m!1190153 () Bool)

(assert (=> bm!66618 m!1190153))

(declare-fun m!1190155 () Bool)

(assert (=> d!291343 m!1190155))

(assert (=> d!291343 m!1190133))

(declare-fun m!1190157 () Bool)

(assert (=> bm!66619 m!1190157))

(declare-fun m!1190159 () Bool)

(assert (=> b!1001396 m!1190159))

(assert (=> b!1001396 m!1190139))

(assert (=> b!1000868 d!291343))

(declare-fun d!291345 () Bool)

(assert (=> d!291345 (= (matchR!1311 (regTwo!6063 r!15766) s!10566) (matchR!1311 (removeUselessConcat!368 (regTwo!6063 r!15766)) s!10566))))

(declare-fun lt!352055 () Unit!15209)

(declare-fun choose!6344 (Regex!2775 List!10005) Unit!15209)

(assert (=> d!291345 (= lt!352055 (choose!6344 (regTwo!6063 r!15766) s!10566))))

(assert (=> d!291345 (validRegex!1244 (regTwo!6063 r!15766))))

(assert (=> d!291345 (= (lemmaRemoveUselessConcatSound!214 (regTwo!6063 r!15766) s!10566) lt!352055)))

(declare-fun bs!245103 () Bool)

(assert (= bs!245103 d!291345))

(assert (=> bs!245103 m!1189971))

(declare-fun m!1190161 () Bool)

(assert (=> bs!245103 m!1190161))

(declare-fun m!1190163 () Bool)

(assert (=> bs!245103 m!1190163))

(assert (=> bs!245103 m!1189947))

(assert (=> bs!245103 m!1190133))

(assert (=> bs!245103 m!1189971))

(assert (=> b!1000868 d!291345))

(declare-fun b!1001403 () Bool)

(declare-fun e!641908 () Bool)

(declare-fun tp!305005 () Bool)

(assert (=> b!1001403 (= e!641908 (and tp_is_empty!5193 tp!305005))))

(assert (=> b!1000875 (= tp!304961 e!641908)))

(assert (= (and b!1000875 ((_ is Cons!9989) (t!101051 s!10566))) b!1001403))

(declare-fun e!641911 () Bool)

(assert (=> b!1000871 (= tp!304960 e!641911)))

(declare-fun b!1001415 () Bool)

(declare-fun tp!305019 () Bool)

(declare-fun tp!305018 () Bool)

(assert (=> b!1001415 (= e!641911 (and tp!305019 tp!305018))))

(declare-fun b!1001417 () Bool)

(declare-fun tp!305017 () Bool)

(declare-fun tp!305020 () Bool)

(assert (=> b!1001417 (= e!641911 (and tp!305017 tp!305020))))

(declare-fun b!1001416 () Bool)

(declare-fun tp!305016 () Bool)

(assert (=> b!1001416 (= e!641911 tp!305016)))

(declare-fun b!1001414 () Bool)

(assert (=> b!1001414 (= e!641911 tp_is_empty!5193)))

(assert (= (and b!1000871 ((_ is ElementMatch!2775) (regOne!6063 r!15766))) b!1001414))

(assert (= (and b!1000871 ((_ is Concat!4608) (regOne!6063 r!15766))) b!1001415))

(assert (= (and b!1000871 ((_ is Star!2775) (regOne!6063 r!15766))) b!1001416))

(assert (= (and b!1000871 ((_ is Union!2775) (regOne!6063 r!15766))) b!1001417))

(declare-fun e!641912 () Bool)

(assert (=> b!1000871 (= tp!304959 e!641912)))

(declare-fun b!1001419 () Bool)

(declare-fun tp!305024 () Bool)

(declare-fun tp!305023 () Bool)

(assert (=> b!1001419 (= e!641912 (and tp!305024 tp!305023))))

(declare-fun b!1001421 () Bool)

(declare-fun tp!305022 () Bool)

(declare-fun tp!305025 () Bool)

(assert (=> b!1001421 (= e!641912 (and tp!305022 tp!305025))))

(declare-fun b!1001420 () Bool)

(declare-fun tp!305021 () Bool)

(assert (=> b!1001420 (= e!641912 tp!305021)))

(declare-fun b!1001418 () Bool)

(assert (=> b!1001418 (= e!641912 tp_is_empty!5193)))

(assert (= (and b!1000871 ((_ is ElementMatch!2775) (regTwo!6063 r!15766))) b!1001418))

(assert (= (and b!1000871 ((_ is Concat!4608) (regTwo!6063 r!15766))) b!1001419))

(assert (= (and b!1000871 ((_ is Star!2775) (regTwo!6063 r!15766))) b!1001420))

(assert (= (and b!1000871 ((_ is Union!2775) (regTwo!6063 r!15766))) b!1001421))

(declare-fun e!641913 () Bool)

(assert (=> b!1000874 (= tp!304962 e!641913)))

(declare-fun b!1001423 () Bool)

(declare-fun tp!305029 () Bool)

(declare-fun tp!305028 () Bool)

(assert (=> b!1001423 (= e!641913 (and tp!305029 tp!305028))))

(declare-fun b!1001425 () Bool)

(declare-fun tp!305027 () Bool)

(declare-fun tp!305030 () Bool)

(assert (=> b!1001425 (= e!641913 (and tp!305027 tp!305030))))

(declare-fun b!1001424 () Bool)

(declare-fun tp!305026 () Bool)

(assert (=> b!1001424 (= e!641913 tp!305026)))

(declare-fun b!1001422 () Bool)

(assert (=> b!1001422 (= e!641913 tp_is_empty!5193)))

(assert (= (and b!1000874 ((_ is ElementMatch!2775) (regOne!6062 r!15766))) b!1001422))

(assert (= (and b!1000874 ((_ is Concat!4608) (regOne!6062 r!15766))) b!1001423))

(assert (= (and b!1000874 ((_ is Star!2775) (regOne!6062 r!15766))) b!1001424))

(assert (= (and b!1000874 ((_ is Union!2775) (regOne!6062 r!15766))) b!1001425))

(declare-fun e!641914 () Bool)

(assert (=> b!1000874 (= tp!304964 e!641914)))

(declare-fun b!1001427 () Bool)

(declare-fun tp!305034 () Bool)

(declare-fun tp!305033 () Bool)

(assert (=> b!1001427 (= e!641914 (and tp!305034 tp!305033))))

(declare-fun b!1001429 () Bool)

(declare-fun tp!305032 () Bool)

(declare-fun tp!305035 () Bool)

(assert (=> b!1001429 (= e!641914 (and tp!305032 tp!305035))))

(declare-fun b!1001428 () Bool)

(declare-fun tp!305031 () Bool)

(assert (=> b!1001428 (= e!641914 tp!305031)))

(declare-fun b!1001426 () Bool)

(assert (=> b!1001426 (= e!641914 tp_is_empty!5193)))

(assert (= (and b!1000874 ((_ is ElementMatch!2775) (regTwo!6062 r!15766))) b!1001426))

(assert (= (and b!1000874 ((_ is Concat!4608) (regTwo!6062 r!15766))) b!1001427))

(assert (= (and b!1000874 ((_ is Star!2775) (regTwo!6062 r!15766))) b!1001428))

(assert (= (and b!1000874 ((_ is Union!2775) (regTwo!6062 r!15766))) b!1001429))

(declare-fun e!641915 () Bool)

(assert (=> b!1000869 (= tp!304963 e!641915)))

(declare-fun b!1001431 () Bool)

(declare-fun tp!305039 () Bool)

(declare-fun tp!305038 () Bool)

(assert (=> b!1001431 (= e!641915 (and tp!305039 tp!305038))))

(declare-fun b!1001433 () Bool)

(declare-fun tp!305037 () Bool)

(declare-fun tp!305040 () Bool)

(assert (=> b!1001433 (= e!641915 (and tp!305037 tp!305040))))

(declare-fun b!1001432 () Bool)

(declare-fun tp!305036 () Bool)

(assert (=> b!1001432 (= e!641915 tp!305036)))

(declare-fun b!1001430 () Bool)

(assert (=> b!1001430 (= e!641915 tp_is_empty!5193)))

(assert (= (and b!1000869 ((_ is ElementMatch!2775) (reg!3104 r!15766))) b!1001430))

(assert (= (and b!1000869 ((_ is Concat!4608) (reg!3104 r!15766))) b!1001431))

(assert (= (and b!1000869 ((_ is Star!2775) (reg!3104 r!15766))) b!1001432))

(assert (= (and b!1000869 ((_ is Union!2775) (reg!3104 r!15766))) b!1001433))

(check-sat (not b!1001355) (not b!1001009) (not bm!66534) (not b!1001019) (not b!1001352) (not b!1001357) (not d!291331) (not bm!66610) (not b!1001016) (not d!291333) (not b!1001344) (not b!1001423) (not bm!66614) (not b!1001424) (not bm!66619) (not b!1001325) (not b!1001427) (not b!1001328) (not b!1001382) (not b!1001305) (not b!1001369) (not b!1001350) (not bm!66575) (not bm!66536) (not b!1001103) (not b!1001416) (not b!1001014) (not b!1001385) (not b!1001012) (not d!291345) (not bm!66576) (not bm!66618) (not b!1001337) (not bm!66542) (not b!1001415) (not b!1001375) (not b!1001429) (not b!1001432) (not b!1001321) (not b!1001420) (not b!1001330) (not b!1001431) (not bm!66608) (not b!1001323) (not b!1001419) (not b!1001339) (not bm!66615) (not d!291337) (not d!291341) (not b!1001342) (not b!1001359) (not bm!66612) (not b!1001433) (not b!1001378) (not d!291299) (not bm!66609) (not bm!66533) (not b!1001380) (not b!1001332) (not b!1001425) (not b!1001349) (not b!1001403) (not d!291329) (not d!291343) (not b!1000937) (not d!291293) (not bm!66607) (not b!1001047) (not b!1001421) (not b!1001396) (not b!1001417) (not bm!66611) (not b!1000928) (not b!1001318) (not b!1001387) (not bm!66531) (not d!291305) (not b!1001308) tp_is_empty!5193 (not d!291335) (not b!1001364) (not b!1001362) (not b!1001021) (not b!1001335) (not b!1001428))
(check-sat)
