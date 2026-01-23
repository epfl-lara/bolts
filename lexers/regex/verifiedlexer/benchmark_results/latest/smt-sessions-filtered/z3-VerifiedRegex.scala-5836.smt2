; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287084 () Bool)

(assert start!287084)

(declare-fun b!2964761 () Bool)

(declare-fun e!1865919 () Bool)

(declare-fun tp_is_empty!16009 () Bool)

(assert (=> b!2964761 (= e!1865919 tp_is_empty!16009)))

(declare-fun res!1222930 () Bool)

(declare-fun e!1865921 () Bool)

(assert (=> start!287084 (=> (not res!1222930) (not e!1865921))))

(declare-datatypes ((C!18632 0))(
  ( (C!18633 (val!11352 Int)) )
))
(declare-datatypes ((Regex!9223 0))(
  ( (ElementMatch!9223 (c!486117 C!18632)) (Concat!14544 (regOne!18958 Regex!9223) (regTwo!18958 Regex!9223)) (EmptyExpr!9223) (Star!9223 (reg!9552 Regex!9223)) (EmptyLang!9223) (Union!9223 (regOne!18959 Regex!9223) (regTwo!18959 Regex!9223)) )
))
(declare-fun r!17423 () Regex!9223)

(declare-fun validRegex!3956 (Regex!9223) Bool)

(assert (=> start!287084 (= res!1222930 (validRegex!3956 r!17423))))

(assert (=> start!287084 e!1865921))

(assert (=> start!287084 e!1865919))

(declare-fun e!1865917 () Bool)

(assert (=> start!287084 e!1865917))

(declare-fun b!2964762 () Bool)

(declare-fun tp!945892 () Bool)

(declare-fun tp!945896 () Bool)

(assert (=> b!2964762 (= e!1865919 (and tp!945892 tp!945896))))

(declare-fun b!2964763 () Bool)

(declare-fun res!1222932 () Bool)

(declare-fun e!1865916 () Bool)

(assert (=> b!2964763 (=> res!1222932 e!1865916)))

(declare-fun lt!1034953 () Regex!9223)

(declare-fun isEmptyLang!339 (Regex!9223) Bool)

(assert (=> b!2964763 (= res!1222932 (isEmptyLang!339 lt!1034953))))

(declare-fun b!2964764 () Bool)

(declare-fun tp!945897 () Bool)

(assert (=> b!2964764 (= e!1865919 tp!945897)))

(declare-fun b!2964765 () Bool)

(declare-fun tp!945895 () Bool)

(declare-fun tp!945894 () Bool)

(assert (=> b!2964765 (= e!1865919 (and tp!945895 tp!945894))))

(declare-fun b!2964766 () Bool)

(declare-fun e!1865918 () Bool)

(assert (=> b!2964766 (= e!1865918 e!1865916)))

(declare-fun res!1222929 () Bool)

(assert (=> b!2964766 (=> res!1222929 e!1865916)))

(declare-fun lt!1034951 () Regex!9223)

(assert (=> b!2964766 (= res!1222929 (isEmptyLang!339 lt!1034951))))

(declare-fun simplify!226 (Regex!9223) Regex!9223)

(assert (=> b!2964766 (= lt!1034953 (simplify!226 (regTwo!18959 r!17423)))))

(assert (=> b!2964766 (= lt!1034951 (simplify!226 (regOne!18959 r!17423)))))

(declare-fun b!2964767 () Bool)

(declare-fun tp!945893 () Bool)

(assert (=> b!2964767 (= e!1865917 (and tp_is_empty!16009 tp!945893))))

(declare-fun b!2964768 () Bool)

(declare-fun res!1222928 () Bool)

(assert (=> b!2964768 (=> res!1222928 e!1865916)))

(declare-datatypes ((List!35088 0))(
  ( (Nil!34964) (Cons!34964 (h!40384 C!18632) (t!234153 List!35088)) )
))
(declare-fun s!11993 () List!35088)

(declare-fun matchR!4105 (Regex!9223 List!35088) Bool)

(assert (=> b!2964768 (= res!1222928 (not (matchR!4105 (Union!9223 lt!1034951 lt!1034953) s!11993)))))

(declare-fun b!2964769 () Bool)

(assert (=> b!2964769 (= e!1865916 (validRegex!3956 lt!1034951))))

(declare-fun e!1865920 () Bool)

(assert (=> b!2964769 e!1865920))

(declare-fun res!1222927 () Bool)

(assert (=> b!2964769 (=> res!1222927 e!1865920)))

(assert (=> b!2964769 (= res!1222927 (matchR!4105 lt!1034951 s!11993))))

(declare-datatypes ((Unit!48825 0))(
  ( (Unit!48826) )
))
(declare-fun lt!1034950 () Unit!48825)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!272 (Regex!9223 Regex!9223 List!35088) Unit!48825)

(assert (=> b!2964769 (= lt!1034950 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!272 lt!1034951 lt!1034953 s!11993))))

(declare-fun b!2964770 () Bool)

(assert (=> b!2964770 (= e!1865921 (not e!1865918))))

(declare-fun res!1222931 () Bool)

(assert (=> b!2964770 (=> res!1222931 e!1865918)))

(declare-fun lt!1034952 () Bool)

(get-info :version)

(assert (=> b!2964770 (= res!1222931 (or lt!1034952 ((_ is Concat!14544) r!17423) (not ((_ is Union!9223) r!17423))))))

(declare-fun matchRSpec!1360 (Regex!9223 List!35088) Bool)

(assert (=> b!2964770 (= lt!1034952 (matchRSpec!1360 r!17423 s!11993))))

(assert (=> b!2964770 (= lt!1034952 (matchR!4105 r!17423 s!11993))))

(declare-fun lt!1034954 () Unit!48825)

(declare-fun mainMatchTheorem!1360 (Regex!9223 List!35088) Unit!48825)

(assert (=> b!2964770 (= lt!1034954 (mainMatchTheorem!1360 r!17423 s!11993))))

(declare-fun b!2964771 () Bool)

(assert (=> b!2964771 (= e!1865920 (matchR!4105 lt!1034953 s!11993))))

(assert (= (and start!287084 res!1222930) b!2964770))

(assert (= (and b!2964770 (not res!1222931)) b!2964766))

(assert (= (and b!2964766 (not res!1222929)) b!2964763))

(assert (= (and b!2964763 (not res!1222932)) b!2964768))

(assert (= (and b!2964768 (not res!1222928)) b!2964769))

(assert (= (and b!2964769 (not res!1222927)) b!2964771))

(assert (= (and start!287084 ((_ is ElementMatch!9223) r!17423)) b!2964761))

(assert (= (and start!287084 ((_ is Concat!14544) r!17423)) b!2964765))

(assert (= (and start!287084 ((_ is Star!9223) r!17423)) b!2964764))

(assert (= (and start!287084 ((_ is Union!9223) r!17423)) b!2964762))

(assert (= (and start!287084 ((_ is Cons!34964) s!11993)) b!2964767))

(declare-fun m!3335845 () Bool)

(assert (=> b!2964770 m!3335845))

(declare-fun m!3335847 () Bool)

(assert (=> b!2964770 m!3335847))

(declare-fun m!3335849 () Bool)

(assert (=> b!2964770 m!3335849))

(declare-fun m!3335851 () Bool)

(assert (=> b!2964763 m!3335851))

(declare-fun m!3335853 () Bool)

(assert (=> b!2964766 m!3335853))

(declare-fun m!3335855 () Bool)

(assert (=> b!2964766 m!3335855))

(declare-fun m!3335857 () Bool)

(assert (=> b!2964766 m!3335857))

(declare-fun m!3335859 () Bool)

(assert (=> b!2964768 m!3335859))

(declare-fun m!3335861 () Bool)

(assert (=> start!287084 m!3335861))

(declare-fun m!3335863 () Bool)

(assert (=> b!2964769 m!3335863))

(declare-fun m!3335865 () Bool)

(assert (=> b!2964769 m!3335865))

(declare-fun m!3335867 () Bool)

(assert (=> b!2964769 m!3335867))

(declare-fun m!3335869 () Bool)

(assert (=> b!2964771 m!3335869))

(check-sat (not b!2964766) (not b!2964764) (not start!287084) (not b!2964767) (not b!2964762) (not b!2964768) (not b!2964769) (not b!2964763) (not b!2964765) (not b!2964771) (not b!2964770) tp_is_empty!16009)
(check-sat)
(get-model)

(declare-fun b!2964855 () Bool)

(declare-fun e!1865973 () Bool)

(declare-fun e!1865972 () Bool)

(assert (=> b!2964855 (= e!1865973 e!1865972)))

(declare-fun c!486136 () Bool)

(assert (=> b!2964855 (= c!486136 ((_ is EmptyLang!9223) (Union!9223 lt!1034951 lt!1034953)))))

(declare-fun b!2964856 () Bool)

(declare-fun e!1865971 () Bool)

(declare-fun nullable!2946 (Regex!9223) Bool)

(assert (=> b!2964856 (= e!1865971 (nullable!2946 (Union!9223 lt!1034951 lt!1034953)))))

(declare-fun b!2964857 () Bool)

(declare-fun lt!1034959 () Bool)

(assert (=> b!2964857 (= e!1865972 (not lt!1034959))))

(declare-fun b!2964858 () Bool)

(declare-fun res!1222985 () Bool)

(declare-fun e!1865975 () Bool)

(assert (=> b!2964858 (=> res!1222985 e!1865975)))

(declare-fun isEmpty!19227 (List!35088) Bool)

(declare-fun tail!4833 (List!35088) List!35088)

(assert (=> b!2964858 (= res!1222985 (not (isEmpty!19227 (tail!4833 s!11993))))))

(declare-fun b!2964859 () Bool)

(declare-fun derivativeStep!2548 (Regex!9223 C!18632) Regex!9223)

(declare-fun head!6607 (List!35088) C!18632)

(assert (=> b!2964859 (= e!1865971 (matchR!4105 (derivativeStep!2548 (Union!9223 lt!1034951 lt!1034953) (head!6607 s!11993)) (tail!4833 s!11993)))))

(declare-fun b!2964860 () Bool)

(declare-fun call!196922 () Bool)

(assert (=> b!2964860 (= e!1865973 (= lt!1034959 call!196922))))

(declare-fun bm!196917 () Bool)

(assert (=> bm!196917 (= call!196922 (isEmpty!19227 s!11993))))

(declare-fun b!2964861 () Bool)

(declare-fun res!1222980 () Bool)

(declare-fun e!1865976 () Bool)

(assert (=> b!2964861 (=> (not res!1222980) (not e!1865976))))

(assert (=> b!2964861 (= res!1222980 (isEmpty!19227 (tail!4833 s!11993)))))

(declare-fun b!2964862 () Bool)

(declare-fun e!1865974 () Bool)

(declare-fun e!1865977 () Bool)

(assert (=> b!2964862 (= e!1865974 e!1865977)))

(declare-fun res!1222981 () Bool)

(assert (=> b!2964862 (=> (not res!1222981) (not e!1865977))))

(assert (=> b!2964862 (= res!1222981 (not lt!1034959))))

(declare-fun b!2964863 () Bool)

(assert (=> b!2964863 (= e!1865976 (= (head!6607 s!11993) (c!486117 (Union!9223 lt!1034951 lt!1034953))))))

(declare-fun b!2964864 () Bool)

(declare-fun res!1222987 () Bool)

(assert (=> b!2964864 (=> res!1222987 e!1865974)))

(assert (=> b!2964864 (= res!1222987 (not ((_ is ElementMatch!9223) (Union!9223 lt!1034951 lt!1034953))))))

(assert (=> b!2964864 (= e!1865972 e!1865974)))

(declare-fun d!842261 () Bool)

(assert (=> d!842261 e!1865973))

(declare-fun c!486138 () Bool)

(assert (=> d!842261 (= c!486138 ((_ is EmptyExpr!9223) (Union!9223 lt!1034951 lt!1034953)))))

(assert (=> d!842261 (= lt!1034959 e!1865971)))

(declare-fun c!486137 () Bool)

(assert (=> d!842261 (= c!486137 (isEmpty!19227 s!11993))))

(assert (=> d!842261 (validRegex!3956 (Union!9223 lt!1034951 lt!1034953))))

(assert (=> d!842261 (= (matchR!4105 (Union!9223 lt!1034951 lt!1034953) s!11993) lt!1034959)))

(declare-fun b!2964865 () Bool)

(assert (=> b!2964865 (= e!1865977 e!1865975)))

(declare-fun res!1222983 () Bool)

(assert (=> b!2964865 (=> res!1222983 e!1865975)))

(assert (=> b!2964865 (= res!1222983 call!196922)))

(declare-fun b!2964866 () Bool)

(assert (=> b!2964866 (= e!1865975 (not (= (head!6607 s!11993) (c!486117 (Union!9223 lt!1034951 lt!1034953)))))))

(declare-fun b!2964867 () Bool)

(declare-fun res!1222982 () Bool)

(assert (=> b!2964867 (=> res!1222982 e!1865974)))

(assert (=> b!2964867 (= res!1222982 e!1865976)))

(declare-fun res!1222986 () Bool)

(assert (=> b!2964867 (=> (not res!1222986) (not e!1865976))))

(assert (=> b!2964867 (= res!1222986 lt!1034959)))

(declare-fun b!2964868 () Bool)

(declare-fun res!1222984 () Bool)

(assert (=> b!2964868 (=> (not res!1222984) (not e!1865976))))

(assert (=> b!2964868 (= res!1222984 (not call!196922))))

(assert (= (and d!842261 c!486137) b!2964856))

(assert (= (and d!842261 (not c!486137)) b!2964859))

(assert (= (and d!842261 c!486138) b!2964860))

(assert (= (and d!842261 (not c!486138)) b!2964855))

(assert (= (and b!2964855 c!486136) b!2964857))

(assert (= (and b!2964855 (not c!486136)) b!2964864))

(assert (= (and b!2964864 (not res!1222987)) b!2964867))

(assert (= (and b!2964867 res!1222986) b!2964868))

(assert (= (and b!2964868 res!1222984) b!2964861))

(assert (= (and b!2964861 res!1222980) b!2964863))

(assert (= (and b!2964867 (not res!1222982)) b!2964862))

(assert (= (and b!2964862 res!1222981) b!2964865))

(assert (= (and b!2964865 (not res!1222983)) b!2964858))

(assert (= (and b!2964858 (not res!1222985)) b!2964866))

(assert (= (or b!2964860 b!2964865 b!2964868) bm!196917))

(declare-fun m!3335877 () Bool)

(assert (=> b!2964861 m!3335877))

(assert (=> b!2964861 m!3335877))

(declare-fun m!3335879 () Bool)

(assert (=> b!2964861 m!3335879))

(assert (=> b!2964858 m!3335877))

(assert (=> b!2964858 m!3335877))

(assert (=> b!2964858 m!3335879))

(declare-fun m!3335881 () Bool)

(assert (=> bm!196917 m!3335881))

(assert (=> d!842261 m!3335881))

(declare-fun m!3335883 () Bool)

(assert (=> d!842261 m!3335883))

(declare-fun m!3335885 () Bool)

(assert (=> b!2964866 m!3335885))

(assert (=> b!2964859 m!3335885))

(assert (=> b!2964859 m!3335885))

(declare-fun m!3335887 () Bool)

(assert (=> b!2964859 m!3335887))

(assert (=> b!2964859 m!3335877))

(assert (=> b!2964859 m!3335887))

(assert (=> b!2964859 m!3335877))

(declare-fun m!3335889 () Bool)

(assert (=> b!2964859 m!3335889))

(declare-fun m!3335891 () Bool)

(assert (=> b!2964856 m!3335891))

(assert (=> b!2964863 m!3335885))

(assert (=> b!2964768 d!842261))

(declare-fun d!842265 () Bool)

(assert (=> d!842265 (= (isEmptyLang!339 lt!1034953) ((_ is EmptyLang!9223) lt!1034953))))

(assert (=> b!2964763 d!842265))

(declare-fun b!2964916 () Bool)

(declare-fun res!1223017 () Bool)

(declare-fun e!1866012 () Bool)

(assert (=> b!2964916 (=> res!1223017 e!1866012)))

(assert (=> b!2964916 (= res!1223017 (not ((_ is Concat!14544) r!17423)))))

(declare-fun e!1866013 () Bool)

(assert (=> b!2964916 (= e!1866013 e!1866012)))

(declare-fun b!2964917 () Bool)

(declare-fun e!1866015 () Bool)

(declare-fun call!196937 () Bool)

(assert (=> b!2964917 (= e!1866015 call!196937)))

(declare-fun d!842267 () Bool)

(declare-fun res!1223020 () Bool)

(declare-fun e!1866017 () Bool)

(assert (=> d!842267 (=> res!1223020 e!1866017)))

(assert (=> d!842267 (= res!1223020 ((_ is ElementMatch!9223) r!17423))))

(assert (=> d!842267 (= (validRegex!3956 r!17423) e!1866017)))

(declare-fun b!2964918 () Bool)

(declare-fun e!1866018 () Bool)

(declare-fun call!196935 () Bool)

(assert (=> b!2964918 (= e!1866018 call!196935)))

(declare-fun c!486148 () Bool)

(declare-fun bm!196930 () Bool)

(declare-fun c!486149 () Bool)

(assert (=> bm!196930 (= call!196935 (validRegex!3956 (ite c!486148 (reg!9552 r!17423) (ite c!486149 (regTwo!18959 r!17423) (regOne!18958 r!17423)))))))

(declare-fun bm!196931 () Bool)

(assert (=> bm!196931 (= call!196937 (validRegex!3956 (ite c!486149 (regOne!18959 r!17423) (regTwo!18958 r!17423))))))

(declare-fun b!2964919 () Bool)

(declare-fun e!1866016 () Bool)

(assert (=> b!2964919 (= e!1866016 e!1866013)))

(assert (=> b!2964919 (= c!486149 ((_ is Union!9223) r!17423))))

(declare-fun b!2964920 () Bool)

(assert (=> b!2964920 (= e!1866016 e!1866018)))

(declare-fun res!1223019 () Bool)

(assert (=> b!2964920 (= res!1223019 (not (nullable!2946 (reg!9552 r!17423))))))

(assert (=> b!2964920 (=> (not res!1223019) (not e!1866018))))

(declare-fun b!2964921 () Bool)

(declare-fun e!1866014 () Bool)

(declare-fun call!196936 () Bool)

(assert (=> b!2964921 (= e!1866014 call!196936)))

(declare-fun b!2964922 () Bool)

(assert (=> b!2964922 (= e!1866017 e!1866016)))

(assert (=> b!2964922 (= c!486148 ((_ is Star!9223) r!17423))))

(declare-fun b!2964923 () Bool)

(declare-fun res!1223018 () Bool)

(assert (=> b!2964923 (=> (not res!1223018) (not e!1866014))))

(assert (=> b!2964923 (= res!1223018 call!196937)))

(assert (=> b!2964923 (= e!1866013 e!1866014)))

(declare-fun bm!196932 () Bool)

(assert (=> bm!196932 (= call!196936 call!196935)))

(declare-fun b!2964924 () Bool)

(assert (=> b!2964924 (= e!1866012 e!1866015)))

(declare-fun res!1223021 () Bool)

(assert (=> b!2964924 (=> (not res!1223021) (not e!1866015))))

(assert (=> b!2964924 (= res!1223021 call!196936)))

(assert (= (and d!842267 (not res!1223020)) b!2964922))

(assert (= (and b!2964922 c!486148) b!2964920))

(assert (= (and b!2964922 (not c!486148)) b!2964919))

(assert (= (and b!2964920 res!1223019) b!2964918))

(assert (= (and b!2964919 c!486149) b!2964923))

(assert (= (and b!2964919 (not c!486149)) b!2964916))

(assert (= (and b!2964923 res!1223018) b!2964921))

(assert (= (and b!2964916 (not res!1223017)) b!2964924))

(assert (= (and b!2964924 res!1223021) b!2964917))

(assert (= (or b!2964923 b!2964917) bm!196931))

(assert (= (or b!2964921 b!2964924) bm!196932))

(assert (= (or b!2964918 bm!196932) bm!196930))

(declare-fun m!3335917 () Bool)

(assert (=> bm!196930 m!3335917))

(declare-fun m!3335919 () Bool)

(assert (=> bm!196931 m!3335919))

(declare-fun m!3335921 () Bool)

(assert (=> b!2964920 m!3335921))

(assert (=> start!287084 d!842267))

(declare-fun b!2964925 () Bool)

(declare-fun res!1223022 () Bool)

(declare-fun e!1866019 () Bool)

(assert (=> b!2964925 (=> res!1223022 e!1866019)))

(assert (=> b!2964925 (= res!1223022 (not ((_ is Concat!14544) lt!1034951)))))

(declare-fun e!1866020 () Bool)

(assert (=> b!2964925 (= e!1866020 e!1866019)))

(declare-fun b!2964926 () Bool)

(declare-fun e!1866022 () Bool)

(declare-fun call!196940 () Bool)

(assert (=> b!2964926 (= e!1866022 call!196940)))

(declare-fun d!842275 () Bool)

(declare-fun res!1223025 () Bool)

(declare-fun e!1866024 () Bool)

(assert (=> d!842275 (=> res!1223025 e!1866024)))

(assert (=> d!842275 (= res!1223025 ((_ is ElementMatch!9223) lt!1034951))))

(assert (=> d!842275 (= (validRegex!3956 lt!1034951) e!1866024)))

(declare-fun b!2964927 () Bool)

(declare-fun e!1866025 () Bool)

(declare-fun call!196938 () Bool)

(assert (=> b!2964927 (= e!1866025 call!196938)))

(declare-fun bm!196933 () Bool)

(declare-fun c!486150 () Bool)

(declare-fun c!486151 () Bool)

(assert (=> bm!196933 (= call!196938 (validRegex!3956 (ite c!486150 (reg!9552 lt!1034951) (ite c!486151 (regTwo!18959 lt!1034951) (regOne!18958 lt!1034951)))))))

(declare-fun bm!196934 () Bool)

(assert (=> bm!196934 (= call!196940 (validRegex!3956 (ite c!486151 (regOne!18959 lt!1034951) (regTwo!18958 lt!1034951))))))

(declare-fun b!2964928 () Bool)

(declare-fun e!1866023 () Bool)

(assert (=> b!2964928 (= e!1866023 e!1866020)))

(assert (=> b!2964928 (= c!486151 ((_ is Union!9223) lt!1034951))))

(declare-fun b!2964929 () Bool)

(assert (=> b!2964929 (= e!1866023 e!1866025)))

(declare-fun res!1223024 () Bool)

(assert (=> b!2964929 (= res!1223024 (not (nullable!2946 (reg!9552 lt!1034951))))))

(assert (=> b!2964929 (=> (not res!1223024) (not e!1866025))))

(declare-fun b!2964930 () Bool)

(declare-fun e!1866021 () Bool)

(declare-fun call!196939 () Bool)

(assert (=> b!2964930 (= e!1866021 call!196939)))

(declare-fun b!2964931 () Bool)

(assert (=> b!2964931 (= e!1866024 e!1866023)))

(assert (=> b!2964931 (= c!486150 ((_ is Star!9223) lt!1034951))))

(declare-fun b!2964932 () Bool)

(declare-fun res!1223023 () Bool)

(assert (=> b!2964932 (=> (not res!1223023) (not e!1866021))))

(assert (=> b!2964932 (= res!1223023 call!196940)))

(assert (=> b!2964932 (= e!1866020 e!1866021)))

(declare-fun bm!196935 () Bool)

(assert (=> bm!196935 (= call!196939 call!196938)))

(declare-fun b!2964933 () Bool)

(assert (=> b!2964933 (= e!1866019 e!1866022)))

(declare-fun res!1223026 () Bool)

(assert (=> b!2964933 (=> (not res!1223026) (not e!1866022))))

(assert (=> b!2964933 (= res!1223026 call!196939)))

(assert (= (and d!842275 (not res!1223025)) b!2964931))

(assert (= (and b!2964931 c!486150) b!2964929))

(assert (= (and b!2964931 (not c!486150)) b!2964928))

(assert (= (and b!2964929 res!1223024) b!2964927))

(assert (= (and b!2964928 c!486151) b!2964932))

(assert (= (and b!2964928 (not c!486151)) b!2964925))

(assert (= (and b!2964932 res!1223023) b!2964930))

(assert (= (and b!2964925 (not res!1223022)) b!2964933))

(assert (= (and b!2964933 res!1223026) b!2964926))

(assert (= (or b!2964932 b!2964926) bm!196934))

(assert (= (or b!2964930 b!2964933) bm!196935))

(assert (= (or b!2964927 bm!196935) bm!196933))

(declare-fun m!3335923 () Bool)

(assert (=> bm!196933 m!3335923))

(declare-fun m!3335925 () Bool)

(assert (=> bm!196934 m!3335925))

(declare-fun m!3335927 () Bool)

(assert (=> b!2964929 m!3335927))

(assert (=> b!2964769 d!842275))

(declare-fun b!2964934 () Bool)

(declare-fun e!1866028 () Bool)

(declare-fun e!1866027 () Bool)

(assert (=> b!2964934 (= e!1866028 e!1866027)))

(declare-fun c!486152 () Bool)

(assert (=> b!2964934 (= c!486152 ((_ is EmptyLang!9223) lt!1034951))))

(declare-fun b!2964935 () Bool)

(declare-fun e!1866026 () Bool)

(assert (=> b!2964935 (= e!1866026 (nullable!2946 lt!1034951))))

(declare-fun b!2964936 () Bool)

(declare-fun lt!1034964 () Bool)

(assert (=> b!2964936 (= e!1866027 (not lt!1034964))))

(declare-fun b!2964937 () Bool)

(declare-fun res!1223032 () Bool)

(declare-fun e!1866030 () Bool)

(assert (=> b!2964937 (=> res!1223032 e!1866030)))

(assert (=> b!2964937 (= res!1223032 (not (isEmpty!19227 (tail!4833 s!11993))))))

(declare-fun b!2964938 () Bool)

(assert (=> b!2964938 (= e!1866026 (matchR!4105 (derivativeStep!2548 lt!1034951 (head!6607 s!11993)) (tail!4833 s!11993)))))

(declare-fun b!2964939 () Bool)

(declare-fun call!196941 () Bool)

(assert (=> b!2964939 (= e!1866028 (= lt!1034964 call!196941))))

(declare-fun bm!196936 () Bool)

(assert (=> bm!196936 (= call!196941 (isEmpty!19227 s!11993))))

(declare-fun b!2964940 () Bool)

(declare-fun res!1223027 () Bool)

(declare-fun e!1866031 () Bool)

(assert (=> b!2964940 (=> (not res!1223027) (not e!1866031))))

(assert (=> b!2964940 (= res!1223027 (isEmpty!19227 (tail!4833 s!11993)))))

(declare-fun b!2964941 () Bool)

(declare-fun e!1866029 () Bool)

(declare-fun e!1866032 () Bool)

(assert (=> b!2964941 (= e!1866029 e!1866032)))

(declare-fun res!1223028 () Bool)

(assert (=> b!2964941 (=> (not res!1223028) (not e!1866032))))

(assert (=> b!2964941 (= res!1223028 (not lt!1034964))))

(declare-fun b!2964942 () Bool)

(assert (=> b!2964942 (= e!1866031 (= (head!6607 s!11993) (c!486117 lt!1034951)))))

(declare-fun b!2964943 () Bool)

(declare-fun res!1223034 () Bool)

(assert (=> b!2964943 (=> res!1223034 e!1866029)))

(assert (=> b!2964943 (= res!1223034 (not ((_ is ElementMatch!9223) lt!1034951)))))

(assert (=> b!2964943 (= e!1866027 e!1866029)))

(declare-fun d!842279 () Bool)

(assert (=> d!842279 e!1866028))

(declare-fun c!486154 () Bool)

(assert (=> d!842279 (= c!486154 ((_ is EmptyExpr!9223) lt!1034951))))

(assert (=> d!842279 (= lt!1034964 e!1866026)))

(declare-fun c!486153 () Bool)

(assert (=> d!842279 (= c!486153 (isEmpty!19227 s!11993))))

(assert (=> d!842279 (validRegex!3956 lt!1034951)))

(assert (=> d!842279 (= (matchR!4105 lt!1034951 s!11993) lt!1034964)))

(declare-fun b!2964944 () Bool)

(assert (=> b!2964944 (= e!1866032 e!1866030)))

(declare-fun res!1223030 () Bool)

(assert (=> b!2964944 (=> res!1223030 e!1866030)))

(assert (=> b!2964944 (= res!1223030 call!196941)))

(declare-fun b!2964945 () Bool)

(assert (=> b!2964945 (= e!1866030 (not (= (head!6607 s!11993) (c!486117 lt!1034951))))))

(declare-fun b!2964946 () Bool)

(declare-fun res!1223029 () Bool)

(assert (=> b!2964946 (=> res!1223029 e!1866029)))

(assert (=> b!2964946 (= res!1223029 e!1866031)))

(declare-fun res!1223033 () Bool)

(assert (=> b!2964946 (=> (not res!1223033) (not e!1866031))))

(assert (=> b!2964946 (= res!1223033 lt!1034964)))

(declare-fun b!2964947 () Bool)

(declare-fun res!1223031 () Bool)

(assert (=> b!2964947 (=> (not res!1223031) (not e!1866031))))

(assert (=> b!2964947 (= res!1223031 (not call!196941))))

(assert (= (and d!842279 c!486153) b!2964935))

(assert (= (and d!842279 (not c!486153)) b!2964938))

(assert (= (and d!842279 c!486154) b!2964939))

(assert (= (and d!842279 (not c!486154)) b!2964934))

(assert (= (and b!2964934 c!486152) b!2964936))

(assert (= (and b!2964934 (not c!486152)) b!2964943))

(assert (= (and b!2964943 (not res!1223034)) b!2964946))

(assert (= (and b!2964946 res!1223033) b!2964947))

(assert (= (and b!2964947 res!1223031) b!2964940))

(assert (= (and b!2964940 res!1223027) b!2964942))

(assert (= (and b!2964946 (not res!1223029)) b!2964941))

(assert (= (and b!2964941 res!1223028) b!2964944))

(assert (= (and b!2964944 (not res!1223030)) b!2964937))

(assert (= (and b!2964937 (not res!1223032)) b!2964945))

(assert (= (or b!2964939 b!2964944 b!2964947) bm!196936))

(assert (=> b!2964940 m!3335877))

(assert (=> b!2964940 m!3335877))

(assert (=> b!2964940 m!3335879))

(assert (=> b!2964937 m!3335877))

(assert (=> b!2964937 m!3335877))

(assert (=> b!2964937 m!3335879))

(assert (=> bm!196936 m!3335881))

(assert (=> d!842279 m!3335881))

(assert (=> d!842279 m!3335863))

(assert (=> b!2964945 m!3335885))

(assert (=> b!2964938 m!3335885))

(assert (=> b!2964938 m!3335885))

(declare-fun m!3335929 () Bool)

(assert (=> b!2964938 m!3335929))

(assert (=> b!2964938 m!3335877))

(assert (=> b!2964938 m!3335929))

(assert (=> b!2964938 m!3335877))

(declare-fun m!3335931 () Bool)

(assert (=> b!2964938 m!3335931))

(declare-fun m!3335933 () Bool)

(assert (=> b!2964935 m!3335933))

(assert (=> b!2964942 m!3335885))

(assert (=> b!2964769 d!842279))

(declare-fun d!842281 () Bool)

(declare-fun e!1866038 () Bool)

(assert (=> d!842281 e!1866038))

(declare-fun res!1223039 () Bool)

(assert (=> d!842281 (=> res!1223039 e!1866038)))

(assert (=> d!842281 (= res!1223039 (matchR!4105 lt!1034951 s!11993))))

(declare-fun lt!1034969 () Unit!48825)

(declare-fun choose!17537 (Regex!9223 Regex!9223 List!35088) Unit!48825)

(assert (=> d!842281 (= lt!1034969 (choose!17537 lt!1034951 lt!1034953 s!11993))))

(declare-fun e!1866037 () Bool)

(assert (=> d!842281 e!1866037))

(declare-fun res!1223040 () Bool)

(assert (=> d!842281 (=> (not res!1223040) (not e!1866037))))

(assert (=> d!842281 (= res!1223040 (validRegex!3956 lt!1034951))))

(assert (=> d!842281 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!272 lt!1034951 lt!1034953 s!11993) lt!1034969)))

(declare-fun b!2964952 () Bool)

(assert (=> b!2964952 (= e!1866037 (validRegex!3956 lt!1034953))))

(declare-fun b!2964953 () Bool)

(assert (=> b!2964953 (= e!1866038 (matchR!4105 lt!1034953 s!11993))))

(assert (= (and d!842281 res!1223040) b!2964952))

(assert (= (and d!842281 (not res!1223039)) b!2964953))

(assert (=> d!842281 m!3335865))

(declare-fun m!3335935 () Bool)

(assert (=> d!842281 m!3335935))

(assert (=> d!842281 m!3335863))

(declare-fun m!3335937 () Bool)

(assert (=> b!2964952 m!3335937))

(assert (=> b!2964953 m!3335869))

(assert (=> b!2964769 d!842281))

(declare-fun b!2965217 () Bool)

(assert (=> b!2965217 true))

(assert (=> b!2965217 true))

(declare-fun bs!526398 () Bool)

(declare-fun b!2965210 () Bool)

(assert (= bs!526398 (and b!2965210 b!2965217)))

(declare-fun lambda!110446 () Int)

(declare-fun lambda!110445 () Int)

(assert (=> bs!526398 (not (= lambda!110446 lambda!110445))))

(assert (=> b!2965210 true))

(assert (=> b!2965210 true))

(declare-fun e!1866171 () Bool)

(declare-fun call!196984 () Bool)

(assert (=> b!2965210 (= e!1866171 call!196984)))

(declare-fun b!2965211 () Bool)

(declare-fun e!1866169 () Bool)

(assert (=> b!2965211 (= e!1866169 (matchRSpec!1360 (regTwo!18959 r!17423) s!11993))))

(declare-fun b!2965212 () Bool)

(declare-fun c!486229 () Bool)

(assert (=> b!2965212 (= c!486229 ((_ is Union!9223) r!17423))))

(declare-fun e!1866175 () Bool)

(declare-fun e!1866172 () Bool)

(assert (=> b!2965212 (= e!1866175 e!1866172)))

(declare-fun c!486228 () Bool)

(declare-fun bm!196978 () Bool)

(declare-fun Exists!1532 (Int) Bool)

(assert (=> bm!196978 (= call!196984 (Exists!1532 (ite c!486228 lambda!110445 lambda!110446)))))

(declare-fun b!2965213 () Bool)

(assert (=> b!2965213 (= e!1866175 (= s!11993 (Cons!34964 (c!486117 r!17423) Nil!34964)))))

(declare-fun b!2965214 () Bool)

(assert (=> b!2965214 (= e!1866172 e!1866169)))

(declare-fun res!1223113 () Bool)

(assert (=> b!2965214 (= res!1223113 (matchRSpec!1360 (regOne!18959 r!17423) s!11993))))

(assert (=> b!2965214 (=> res!1223113 e!1866169)))

(declare-fun b!2965215 () Bool)

(declare-fun e!1866170 () Bool)

(declare-fun call!196983 () Bool)

(assert (=> b!2965215 (= e!1866170 call!196983)))

(declare-fun b!2965216 () Bool)

(declare-fun c!486231 () Bool)

(assert (=> b!2965216 (= c!486231 ((_ is ElementMatch!9223) r!17423))))

(declare-fun e!1866173 () Bool)

(assert (=> b!2965216 (= e!1866173 e!1866175)))

(declare-fun e!1866174 () Bool)

(assert (=> b!2965217 (= e!1866174 call!196984)))

(declare-fun d!842283 () Bool)

(declare-fun c!486230 () Bool)

(assert (=> d!842283 (= c!486230 ((_ is EmptyExpr!9223) r!17423))))

(assert (=> d!842283 (= (matchRSpec!1360 r!17423 s!11993) e!1866170)))

(declare-fun b!2965218 () Bool)

(assert (=> b!2965218 (= e!1866170 e!1866173)))

(declare-fun res!1223114 () Bool)

(assert (=> b!2965218 (= res!1223114 (not ((_ is EmptyLang!9223) r!17423)))))

(assert (=> b!2965218 (=> (not res!1223114) (not e!1866173))))

(declare-fun bm!196979 () Bool)

(assert (=> bm!196979 (= call!196983 (isEmpty!19227 s!11993))))

(declare-fun b!2965219 () Bool)

(assert (=> b!2965219 (= e!1866172 e!1866171)))

(assert (=> b!2965219 (= c!486228 ((_ is Star!9223) r!17423))))

(declare-fun b!2965220 () Bool)

(declare-fun res!1223112 () Bool)

(assert (=> b!2965220 (=> res!1223112 e!1866174)))

(assert (=> b!2965220 (= res!1223112 call!196983)))

(assert (=> b!2965220 (= e!1866171 e!1866174)))

(assert (= (and d!842283 c!486230) b!2965215))

(assert (= (and d!842283 (not c!486230)) b!2965218))

(assert (= (and b!2965218 res!1223114) b!2965216))

(assert (= (and b!2965216 c!486231) b!2965213))

(assert (= (and b!2965216 (not c!486231)) b!2965212))

(assert (= (and b!2965212 c!486229) b!2965214))

(assert (= (and b!2965212 (not c!486229)) b!2965219))

(assert (= (and b!2965214 (not res!1223113)) b!2965211))

(assert (= (and b!2965219 c!486228) b!2965220))

(assert (= (and b!2965219 (not c!486228)) b!2965210))

(assert (= (and b!2965220 (not res!1223112)) b!2965217))

(assert (= (or b!2965217 b!2965210) bm!196978))

(assert (= (or b!2965215 b!2965220) bm!196979))

(declare-fun m!3336007 () Bool)

(assert (=> b!2965211 m!3336007))

(declare-fun m!3336009 () Bool)

(assert (=> bm!196978 m!3336009))

(declare-fun m!3336011 () Bool)

(assert (=> b!2965214 m!3336011))

(assert (=> bm!196979 m!3335881))

(assert (=> b!2964770 d!842283))

(declare-fun b!2965225 () Bool)

(declare-fun e!1866178 () Bool)

(declare-fun e!1866177 () Bool)

(assert (=> b!2965225 (= e!1866178 e!1866177)))

(declare-fun c!486232 () Bool)

(assert (=> b!2965225 (= c!486232 ((_ is EmptyLang!9223) r!17423))))

(declare-fun b!2965226 () Bool)

(declare-fun e!1866176 () Bool)

(assert (=> b!2965226 (= e!1866176 (nullable!2946 r!17423))))

(declare-fun b!2965227 () Bool)

(declare-fun lt!1034998 () Bool)

(assert (=> b!2965227 (= e!1866177 (not lt!1034998))))

(declare-fun b!2965228 () Bool)

(declare-fun res!1223120 () Bool)

(declare-fun e!1866180 () Bool)

(assert (=> b!2965228 (=> res!1223120 e!1866180)))

(assert (=> b!2965228 (= res!1223120 (not (isEmpty!19227 (tail!4833 s!11993))))))

(declare-fun b!2965229 () Bool)

(assert (=> b!2965229 (= e!1866176 (matchR!4105 (derivativeStep!2548 r!17423 (head!6607 s!11993)) (tail!4833 s!11993)))))

(declare-fun b!2965230 () Bool)

(declare-fun call!196985 () Bool)

(assert (=> b!2965230 (= e!1866178 (= lt!1034998 call!196985))))

(declare-fun bm!196980 () Bool)

(assert (=> bm!196980 (= call!196985 (isEmpty!19227 s!11993))))

(declare-fun b!2965231 () Bool)

(declare-fun res!1223115 () Bool)

(declare-fun e!1866181 () Bool)

(assert (=> b!2965231 (=> (not res!1223115) (not e!1866181))))

(assert (=> b!2965231 (= res!1223115 (isEmpty!19227 (tail!4833 s!11993)))))

(declare-fun b!2965232 () Bool)

(declare-fun e!1866179 () Bool)

(declare-fun e!1866182 () Bool)

(assert (=> b!2965232 (= e!1866179 e!1866182)))

(declare-fun res!1223116 () Bool)

(assert (=> b!2965232 (=> (not res!1223116) (not e!1866182))))

(assert (=> b!2965232 (= res!1223116 (not lt!1034998))))

(declare-fun b!2965233 () Bool)

(assert (=> b!2965233 (= e!1866181 (= (head!6607 s!11993) (c!486117 r!17423)))))

(declare-fun b!2965234 () Bool)

(declare-fun res!1223122 () Bool)

(assert (=> b!2965234 (=> res!1223122 e!1866179)))

(assert (=> b!2965234 (= res!1223122 (not ((_ is ElementMatch!9223) r!17423)))))

(assert (=> b!2965234 (= e!1866177 e!1866179)))

(declare-fun d!842299 () Bool)

(assert (=> d!842299 e!1866178))

(declare-fun c!486234 () Bool)

(assert (=> d!842299 (= c!486234 ((_ is EmptyExpr!9223) r!17423))))

(assert (=> d!842299 (= lt!1034998 e!1866176)))

(declare-fun c!486233 () Bool)

(assert (=> d!842299 (= c!486233 (isEmpty!19227 s!11993))))

(assert (=> d!842299 (validRegex!3956 r!17423)))

(assert (=> d!842299 (= (matchR!4105 r!17423 s!11993) lt!1034998)))

(declare-fun b!2965235 () Bool)

(assert (=> b!2965235 (= e!1866182 e!1866180)))

(declare-fun res!1223118 () Bool)

(assert (=> b!2965235 (=> res!1223118 e!1866180)))

(assert (=> b!2965235 (= res!1223118 call!196985)))

(declare-fun b!2965236 () Bool)

(assert (=> b!2965236 (= e!1866180 (not (= (head!6607 s!11993) (c!486117 r!17423))))))

(declare-fun b!2965237 () Bool)

(declare-fun res!1223117 () Bool)

(assert (=> b!2965237 (=> res!1223117 e!1866179)))

(assert (=> b!2965237 (= res!1223117 e!1866181)))

(declare-fun res!1223121 () Bool)

(assert (=> b!2965237 (=> (not res!1223121) (not e!1866181))))

(assert (=> b!2965237 (= res!1223121 lt!1034998)))

(declare-fun b!2965238 () Bool)

(declare-fun res!1223119 () Bool)

(assert (=> b!2965238 (=> (not res!1223119) (not e!1866181))))

(assert (=> b!2965238 (= res!1223119 (not call!196985))))

(assert (= (and d!842299 c!486233) b!2965226))

(assert (= (and d!842299 (not c!486233)) b!2965229))

(assert (= (and d!842299 c!486234) b!2965230))

(assert (= (and d!842299 (not c!486234)) b!2965225))

(assert (= (and b!2965225 c!486232) b!2965227))

(assert (= (and b!2965225 (not c!486232)) b!2965234))

(assert (= (and b!2965234 (not res!1223122)) b!2965237))

(assert (= (and b!2965237 res!1223121) b!2965238))

(assert (= (and b!2965238 res!1223119) b!2965231))

(assert (= (and b!2965231 res!1223115) b!2965233))

(assert (= (and b!2965237 (not res!1223117)) b!2965232))

(assert (= (and b!2965232 res!1223116) b!2965235))

(assert (= (and b!2965235 (not res!1223118)) b!2965228))

(assert (= (and b!2965228 (not res!1223120)) b!2965236))

(assert (= (or b!2965230 b!2965235 b!2965238) bm!196980))

(assert (=> b!2965231 m!3335877))

(assert (=> b!2965231 m!3335877))

(assert (=> b!2965231 m!3335879))

(assert (=> b!2965228 m!3335877))

(assert (=> b!2965228 m!3335877))

(assert (=> b!2965228 m!3335879))

(assert (=> bm!196980 m!3335881))

(assert (=> d!842299 m!3335881))

(assert (=> d!842299 m!3335861))

(assert (=> b!2965236 m!3335885))

(assert (=> b!2965229 m!3335885))

(assert (=> b!2965229 m!3335885))

(declare-fun m!3336013 () Bool)

(assert (=> b!2965229 m!3336013))

(assert (=> b!2965229 m!3335877))

(assert (=> b!2965229 m!3336013))

(assert (=> b!2965229 m!3335877))

(declare-fun m!3336015 () Bool)

(assert (=> b!2965229 m!3336015))

(declare-fun m!3336017 () Bool)

(assert (=> b!2965226 m!3336017))

(assert (=> b!2965233 m!3335885))

(assert (=> b!2964770 d!842299))

(declare-fun d!842301 () Bool)

(assert (=> d!842301 (= (matchR!4105 r!17423 s!11993) (matchRSpec!1360 r!17423 s!11993))))

(declare-fun lt!1035001 () Unit!48825)

(declare-fun choose!17539 (Regex!9223 List!35088) Unit!48825)

(assert (=> d!842301 (= lt!1035001 (choose!17539 r!17423 s!11993))))

(assert (=> d!842301 (validRegex!3956 r!17423)))

(assert (=> d!842301 (= (mainMatchTheorem!1360 r!17423 s!11993) lt!1035001)))

(declare-fun bs!526399 () Bool)

(assert (= bs!526399 d!842301))

(assert (=> bs!526399 m!3335847))

(assert (=> bs!526399 m!3335845))

(declare-fun m!3336019 () Bool)

(assert (=> bs!526399 m!3336019))

(assert (=> bs!526399 m!3335861))

(assert (=> b!2964770 d!842301))

(declare-fun b!2965239 () Bool)

(declare-fun e!1866185 () Bool)

(declare-fun e!1866184 () Bool)

(assert (=> b!2965239 (= e!1866185 e!1866184)))

(declare-fun c!486235 () Bool)

(assert (=> b!2965239 (= c!486235 ((_ is EmptyLang!9223) lt!1034953))))

(declare-fun b!2965240 () Bool)

(declare-fun e!1866183 () Bool)

(assert (=> b!2965240 (= e!1866183 (nullable!2946 lt!1034953))))

(declare-fun b!2965241 () Bool)

(declare-fun lt!1035002 () Bool)

(assert (=> b!2965241 (= e!1866184 (not lt!1035002))))

(declare-fun b!2965242 () Bool)

(declare-fun res!1223128 () Bool)

(declare-fun e!1866187 () Bool)

(assert (=> b!2965242 (=> res!1223128 e!1866187)))

(assert (=> b!2965242 (= res!1223128 (not (isEmpty!19227 (tail!4833 s!11993))))))

(declare-fun b!2965243 () Bool)

(assert (=> b!2965243 (= e!1866183 (matchR!4105 (derivativeStep!2548 lt!1034953 (head!6607 s!11993)) (tail!4833 s!11993)))))

(declare-fun b!2965244 () Bool)

(declare-fun call!196986 () Bool)

(assert (=> b!2965244 (= e!1866185 (= lt!1035002 call!196986))))

(declare-fun bm!196981 () Bool)

(assert (=> bm!196981 (= call!196986 (isEmpty!19227 s!11993))))

(declare-fun b!2965245 () Bool)

(declare-fun res!1223123 () Bool)

(declare-fun e!1866188 () Bool)

(assert (=> b!2965245 (=> (not res!1223123) (not e!1866188))))

(assert (=> b!2965245 (= res!1223123 (isEmpty!19227 (tail!4833 s!11993)))))

(declare-fun b!2965246 () Bool)

(declare-fun e!1866186 () Bool)

(declare-fun e!1866189 () Bool)

(assert (=> b!2965246 (= e!1866186 e!1866189)))

(declare-fun res!1223124 () Bool)

(assert (=> b!2965246 (=> (not res!1223124) (not e!1866189))))

(assert (=> b!2965246 (= res!1223124 (not lt!1035002))))

(declare-fun b!2965247 () Bool)

(assert (=> b!2965247 (= e!1866188 (= (head!6607 s!11993) (c!486117 lt!1034953)))))

(declare-fun b!2965248 () Bool)

(declare-fun res!1223130 () Bool)

(assert (=> b!2965248 (=> res!1223130 e!1866186)))

(assert (=> b!2965248 (= res!1223130 (not ((_ is ElementMatch!9223) lt!1034953)))))

(assert (=> b!2965248 (= e!1866184 e!1866186)))

(declare-fun d!842303 () Bool)

(assert (=> d!842303 e!1866185))

(declare-fun c!486237 () Bool)

(assert (=> d!842303 (= c!486237 ((_ is EmptyExpr!9223) lt!1034953))))

(assert (=> d!842303 (= lt!1035002 e!1866183)))

(declare-fun c!486236 () Bool)

(assert (=> d!842303 (= c!486236 (isEmpty!19227 s!11993))))

(assert (=> d!842303 (validRegex!3956 lt!1034953)))

(assert (=> d!842303 (= (matchR!4105 lt!1034953 s!11993) lt!1035002)))

(declare-fun b!2965249 () Bool)

(assert (=> b!2965249 (= e!1866189 e!1866187)))

(declare-fun res!1223126 () Bool)

(assert (=> b!2965249 (=> res!1223126 e!1866187)))

(assert (=> b!2965249 (= res!1223126 call!196986)))

(declare-fun b!2965250 () Bool)

(assert (=> b!2965250 (= e!1866187 (not (= (head!6607 s!11993) (c!486117 lt!1034953))))))

(declare-fun b!2965251 () Bool)

(declare-fun res!1223125 () Bool)

(assert (=> b!2965251 (=> res!1223125 e!1866186)))

(assert (=> b!2965251 (= res!1223125 e!1866188)))

(declare-fun res!1223129 () Bool)

(assert (=> b!2965251 (=> (not res!1223129) (not e!1866188))))

(assert (=> b!2965251 (= res!1223129 lt!1035002)))

(declare-fun b!2965252 () Bool)

(declare-fun res!1223127 () Bool)

(assert (=> b!2965252 (=> (not res!1223127) (not e!1866188))))

(assert (=> b!2965252 (= res!1223127 (not call!196986))))

(assert (= (and d!842303 c!486236) b!2965240))

(assert (= (and d!842303 (not c!486236)) b!2965243))

(assert (= (and d!842303 c!486237) b!2965244))

(assert (= (and d!842303 (not c!486237)) b!2965239))

(assert (= (and b!2965239 c!486235) b!2965241))

(assert (= (and b!2965239 (not c!486235)) b!2965248))

(assert (= (and b!2965248 (not res!1223130)) b!2965251))

(assert (= (and b!2965251 res!1223129) b!2965252))

(assert (= (and b!2965252 res!1223127) b!2965245))

(assert (= (and b!2965245 res!1223123) b!2965247))

(assert (= (and b!2965251 (not res!1223125)) b!2965246))

(assert (= (and b!2965246 res!1223124) b!2965249))

(assert (= (and b!2965249 (not res!1223126)) b!2965242))

(assert (= (and b!2965242 (not res!1223128)) b!2965250))

(assert (= (or b!2965244 b!2965249 b!2965252) bm!196981))

(assert (=> b!2965245 m!3335877))

(assert (=> b!2965245 m!3335877))

(assert (=> b!2965245 m!3335879))

(assert (=> b!2965242 m!3335877))

(assert (=> b!2965242 m!3335877))

(assert (=> b!2965242 m!3335879))

(assert (=> bm!196981 m!3335881))

(assert (=> d!842303 m!3335881))

(assert (=> d!842303 m!3335937))

(assert (=> b!2965250 m!3335885))

(assert (=> b!2965243 m!3335885))

(assert (=> b!2965243 m!3335885))

(declare-fun m!3336021 () Bool)

(assert (=> b!2965243 m!3336021))

(assert (=> b!2965243 m!3335877))

(assert (=> b!2965243 m!3336021))

(assert (=> b!2965243 m!3335877))

(declare-fun m!3336023 () Bool)

(assert (=> b!2965243 m!3336023))

(declare-fun m!3336025 () Bool)

(assert (=> b!2965240 m!3336025))

(assert (=> b!2965247 m!3335885))

(assert (=> b!2964771 d!842303))

(declare-fun d!842305 () Bool)

(assert (=> d!842305 (= (isEmptyLang!339 lt!1034951) ((_ is EmptyLang!9223) lt!1034951))))

(assert (=> b!2964766 d!842305))

(declare-fun b!2965303 () Bool)

(declare-fun e!1866228 () Regex!9223)

(assert (=> b!2965303 (= e!1866228 EmptyExpr!9223)))

(declare-fun b!2965304 () Bool)

(declare-fun e!1866230 () Regex!9223)

(declare-fun lt!1035020 () Regex!9223)

(assert (=> b!2965304 (= e!1866230 lt!1035020)))

(declare-fun b!2965305 () Bool)

(declare-fun c!486262 () Bool)

(declare-fun call!197004 () Bool)

(assert (=> b!2965305 (= c!486262 call!197004)))

(declare-fun e!1866222 () Regex!9223)

(declare-fun e!1866226 () Regex!9223)

(assert (=> b!2965305 (= e!1866222 e!1866226)))

(declare-fun bm!196996 () Bool)

(declare-fun call!197005 () Regex!9223)

(declare-fun c!486267 () Bool)

(assert (=> bm!196996 (= call!197005 (simplify!226 (ite c!486267 (regOne!18959 (regTwo!18959 r!17423)) (regTwo!18958 (regTwo!18959 r!17423)))))))

(declare-fun b!2965306 () Bool)

(declare-fun lt!1035017 () Regex!9223)

(assert (=> b!2965306 (= e!1866226 lt!1035017)))

(declare-fun lt!1035016 () Regex!9223)

(declare-fun bm!196997 () Bool)

(declare-fun c!486261 () Bool)

(declare-fun call!197001 () Bool)

(declare-fun isEmptyExpr!404 (Regex!9223) Bool)

(assert (=> bm!196997 (= call!197001 (isEmptyExpr!404 (ite c!486261 lt!1035016 lt!1035020)))))

(declare-fun b!2965308 () Bool)

(declare-fun e!1866221 () Regex!9223)

(declare-fun lt!1035019 () Regex!9223)

(assert (=> b!2965308 (= e!1866221 lt!1035019)))

(declare-fun bm!196998 () Bool)

(declare-fun call!197003 () Regex!9223)

(declare-fun call!197007 () Regex!9223)

(assert (=> bm!196998 (= call!197003 call!197007)))

(declare-fun b!2965309 () Bool)

(declare-fun e!1866219 () Bool)

(assert (=> b!2965309 (= e!1866219 call!197001)))

(declare-fun lt!1035015 () Regex!9223)

(declare-fun bm!196999 () Bool)

(assert (=> bm!196999 (= call!197004 (isEmptyLang!339 (ite c!486267 lt!1035015 lt!1035020)))))

(declare-fun b!2965310 () Bool)

(declare-fun c!486265 () Bool)

(assert (=> b!2965310 (= c!486265 ((_ is EmptyExpr!9223) (regTwo!18959 r!17423)))))

(declare-fun e!1866224 () Regex!9223)

(declare-fun e!1866220 () Regex!9223)

(assert (=> b!2965310 (= e!1866224 e!1866220)))

(declare-fun b!2965311 () Bool)

(declare-fun c!486263 () Bool)

(assert (=> b!2965311 (= c!486263 call!197001)))

(declare-fun e!1866227 () Regex!9223)

(assert (=> b!2965311 (= e!1866227 e!1866221)))

(declare-fun bm!197000 () Bool)

(assert (=> bm!197000 (= call!197007 (simplify!226 (ite c!486261 (reg!9552 (regTwo!18959 r!17423)) (ite c!486267 (regTwo!18959 (regTwo!18959 r!17423)) (regOne!18958 (regTwo!18959 r!17423))))))))

(declare-fun b!2965312 () Bool)

(assert (=> b!2965312 (= e!1866226 (Union!9223 lt!1035017 lt!1035015))))

(declare-fun b!2965313 () Bool)

(declare-fun e!1866225 () Bool)

(declare-fun lt!1035018 () Regex!9223)

(assert (=> b!2965313 (= e!1866225 (= (nullable!2946 lt!1035018) (nullable!2946 (regTwo!18959 r!17423))))))

(declare-fun b!2965314 () Bool)

(assert (=> b!2965314 (= e!1866220 EmptyExpr!9223)))

(declare-fun b!2965315 () Bool)

(assert (=> b!2965315 (= e!1866227 EmptyLang!9223)))

(declare-fun b!2965316 () Bool)

(assert (=> b!2965316 (= e!1866230 (Concat!14544 lt!1035020 lt!1035019))))

(declare-fun b!2965317 () Bool)

(declare-fun e!1866223 () Regex!9223)

(assert (=> b!2965317 (= e!1866220 e!1866223)))

(assert (=> b!2965317 (= c!486261 ((_ is Star!9223) (regTwo!18959 r!17423)))))

(declare-fun b!2965318 () Bool)

(assert (=> b!2965318 (= e!1866224 (regTwo!18959 r!17423))))

(declare-fun b!2965319 () Bool)

(assert (=> b!2965319 (= e!1866228 (Star!9223 lt!1035016))))

(declare-fun bm!197001 () Bool)

(declare-fun call!197002 () Bool)

(declare-fun call!197006 () Bool)

(assert (=> bm!197001 (= call!197002 call!197006)))

(declare-fun bm!197002 () Bool)

(assert (=> bm!197002 (= call!197006 (isEmptyLang!339 (ite c!486261 lt!1035016 (ite c!486267 lt!1035017 lt!1035019))))))

(declare-fun d!842307 () Bool)

(assert (=> d!842307 e!1866225))

(declare-fun res!1223137 () Bool)

(assert (=> d!842307 (=> (not res!1223137) (not e!1866225))))

(assert (=> d!842307 (= res!1223137 (validRegex!3956 lt!1035018))))

(declare-fun e!1866229 () Regex!9223)

(assert (=> d!842307 (= lt!1035018 e!1866229)))

(declare-fun c!486269 () Bool)

(assert (=> d!842307 (= c!486269 ((_ is EmptyLang!9223) (regTwo!18959 r!17423)))))

(assert (=> d!842307 (validRegex!3956 (regTwo!18959 r!17423))))

(assert (=> d!842307 (= (simplify!226 (regTwo!18959 r!17423)) lt!1035018)))

(declare-fun b!2965307 () Bool)

(declare-fun e!1866231 () Regex!9223)

(assert (=> b!2965307 (= e!1866231 e!1866222)))

(assert (=> b!2965307 (= lt!1035017 call!197005)))

(assert (=> b!2965307 (= lt!1035015 call!197003)))

(declare-fun c!486264 () Bool)

(assert (=> b!2965307 (= c!486264 call!197002)))

(declare-fun b!2965320 () Bool)

(assert (=> b!2965320 (= e!1866229 EmptyLang!9223)))

(declare-fun b!2965321 () Bool)

(assert (=> b!2965321 (= e!1866222 lt!1035015)))

(declare-fun b!2965322 () Bool)

(assert (=> b!2965322 (= e!1866229 e!1866224)))

(declare-fun c!486268 () Bool)

(assert (=> b!2965322 (= c!486268 ((_ is ElementMatch!9223) (regTwo!18959 r!17423)))))

(declare-fun b!2965323 () Bool)

(assert (=> b!2965323 (= e!1866221 e!1866230)))

(declare-fun c!486266 () Bool)

(assert (=> b!2965323 (= c!486266 (isEmptyExpr!404 lt!1035019))))

(declare-fun b!2965324 () Bool)

(declare-fun c!486270 () Bool)

(assert (=> b!2965324 (= c!486270 e!1866219)))

(declare-fun res!1223139 () Bool)

(assert (=> b!2965324 (=> res!1223139 e!1866219)))

(assert (=> b!2965324 (= res!1223139 call!197006)))

(assert (=> b!2965324 (= lt!1035016 call!197007)))

(assert (=> b!2965324 (= e!1866223 e!1866228)))

(declare-fun b!2965325 () Bool)

(declare-fun e!1866218 () Bool)

(assert (=> b!2965325 (= e!1866218 call!197002)))

(declare-fun b!2965326 () Bool)

(assert (=> b!2965326 (= c!486267 ((_ is Union!9223) (regTwo!18959 r!17423)))))

(assert (=> b!2965326 (= e!1866223 e!1866231)))

(declare-fun b!2965327 () Bool)

(assert (=> b!2965327 (= e!1866231 e!1866227)))

(assert (=> b!2965327 (= lt!1035020 call!197003)))

(assert (=> b!2965327 (= lt!1035019 call!197005)))

(declare-fun res!1223138 () Bool)

(assert (=> b!2965327 (= res!1223138 call!197004)))

(assert (=> b!2965327 (=> res!1223138 e!1866218)))

(declare-fun c!486260 () Bool)

(assert (=> b!2965327 (= c!486260 e!1866218)))

(assert (= (and d!842307 c!486269) b!2965320))

(assert (= (and d!842307 (not c!486269)) b!2965322))

(assert (= (and b!2965322 c!486268) b!2965318))

(assert (= (and b!2965322 (not c!486268)) b!2965310))

(assert (= (and b!2965310 c!486265) b!2965314))

(assert (= (and b!2965310 (not c!486265)) b!2965317))

(assert (= (and b!2965317 c!486261) b!2965324))

(assert (= (and b!2965317 (not c!486261)) b!2965326))

(assert (= (and b!2965324 (not res!1223139)) b!2965309))

(assert (= (and b!2965324 c!486270) b!2965303))

(assert (= (and b!2965324 (not c!486270)) b!2965319))

(assert (= (and b!2965326 c!486267) b!2965307))

(assert (= (and b!2965326 (not c!486267)) b!2965327))

(assert (= (and b!2965307 c!486264) b!2965321))

(assert (= (and b!2965307 (not c!486264)) b!2965305))

(assert (= (and b!2965305 c!486262) b!2965306))

(assert (= (and b!2965305 (not c!486262)) b!2965312))

(assert (= (and b!2965327 (not res!1223138)) b!2965325))

(assert (= (and b!2965327 c!486260) b!2965315))

(assert (= (and b!2965327 (not c!486260)) b!2965311))

(assert (= (and b!2965311 c!486263) b!2965308))

(assert (= (and b!2965311 (not c!486263)) b!2965323))

(assert (= (and b!2965323 c!486266) b!2965304))

(assert (= (and b!2965323 (not c!486266)) b!2965316))

(assert (= (or b!2965307 b!2965327) bm!196996))

(assert (= (or b!2965307 b!2965327) bm!196998))

(assert (= (or b!2965305 b!2965327) bm!196999))

(assert (= (or b!2965307 b!2965325) bm!197001))

(assert (= (or b!2965309 b!2965311) bm!196997))

(assert (= (or b!2965324 bm!196998) bm!197000))

(assert (= (or b!2965324 bm!197001) bm!197002))

(assert (= (and d!842307 res!1223137) b!2965313))

(declare-fun m!3336027 () Bool)

(assert (=> d!842307 m!3336027))

(declare-fun m!3336029 () Bool)

(assert (=> d!842307 m!3336029))

(declare-fun m!3336031 () Bool)

(assert (=> bm!197002 m!3336031))

(declare-fun m!3336033 () Bool)

(assert (=> bm!196997 m!3336033))

(declare-fun m!3336035 () Bool)

(assert (=> bm!196999 m!3336035))

(declare-fun m!3336037 () Bool)

(assert (=> b!2965323 m!3336037))

(declare-fun m!3336039 () Bool)

(assert (=> bm!197000 m!3336039))

(declare-fun m!3336041 () Bool)

(assert (=> b!2965313 m!3336041))

(declare-fun m!3336043 () Bool)

(assert (=> b!2965313 m!3336043))

(declare-fun m!3336045 () Bool)

(assert (=> bm!196996 m!3336045))

(assert (=> b!2964766 d!842307))

(declare-fun b!2965328 () Bool)

(declare-fun e!1866242 () Regex!9223)

(assert (=> b!2965328 (= e!1866242 EmptyExpr!9223)))

(declare-fun b!2965329 () Bool)

(declare-fun e!1866244 () Regex!9223)

(declare-fun lt!1035026 () Regex!9223)

(assert (=> b!2965329 (= e!1866244 lt!1035026)))

(declare-fun b!2965330 () Bool)

(declare-fun c!486273 () Bool)

(declare-fun call!197011 () Bool)

(assert (=> b!2965330 (= c!486273 call!197011)))

(declare-fun e!1866236 () Regex!9223)

(declare-fun e!1866240 () Regex!9223)

(assert (=> b!2965330 (= e!1866236 e!1866240)))

(declare-fun bm!197003 () Bool)

(declare-fun call!197012 () Regex!9223)

(declare-fun c!486278 () Bool)

(assert (=> bm!197003 (= call!197012 (simplify!226 (ite c!486278 (regOne!18959 (regOne!18959 r!17423)) (regTwo!18958 (regOne!18959 r!17423)))))))

(declare-fun b!2965331 () Bool)

(declare-fun lt!1035023 () Regex!9223)

(assert (=> b!2965331 (= e!1866240 lt!1035023)))

(declare-fun call!197008 () Bool)

(declare-fun bm!197004 () Bool)

(declare-fun c!486272 () Bool)

(declare-fun lt!1035022 () Regex!9223)

(assert (=> bm!197004 (= call!197008 (isEmptyExpr!404 (ite c!486272 lt!1035022 lt!1035026)))))

(declare-fun b!2965333 () Bool)

(declare-fun e!1866235 () Regex!9223)

(declare-fun lt!1035025 () Regex!9223)

(assert (=> b!2965333 (= e!1866235 lt!1035025)))

(declare-fun bm!197005 () Bool)

(declare-fun call!197010 () Regex!9223)

(declare-fun call!197014 () Regex!9223)

(assert (=> bm!197005 (= call!197010 call!197014)))

(declare-fun b!2965334 () Bool)

(declare-fun e!1866233 () Bool)

(assert (=> b!2965334 (= e!1866233 call!197008)))

(declare-fun bm!197006 () Bool)

(declare-fun lt!1035021 () Regex!9223)

(assert (=> bm!197006 (= call!197011 (isEmptyLang!339 (ite c!486278 lt!1035021 lt!1035026)))))

(declare-fun b!2965335 () Bool)

(declare-fun c!486276 () Bool)

(assert (=> b!2965335 (= c!486276 ((_ is EmptyExpr!9223) (regOne!18959 r!17423)))))

(declare-fun e!1866238 () Regex!9223)

(declare-fun e!1866234 () Regex!9223)

(assert (=> b!2965335 (= e!1866238 e!1866234)))

(declare-fun b!2965336 () Bool)

(declare-fun c!486274 () Bool)

(assert (=> b!2965336 (= c!486274 call!197008)))

(declare-fun e!1866241 () Regex!9223)

(assert (=> b!2965336 (= e!1866241 e!1866235)))

(declare-fun bm!197007 () Bool)

(assert (=> bm!197007 (= call!197014 (simplify!226 (ite c!486272 (reg!9552 (regOne!18959 r!17423)) (ite c!486278 (regTwo!18959 (regOne!18959 r!17423)) (regOne!18958 (regOne!18959 r!17423))))))))

(declare-fun b!2965337 () Bool)

(assert (=> b!2965337 (= e!1866240 (Union!9223 lt!1035023 lt!1035021))))

(declare-fun b!2965338 () Bool)

(declare-fun e!1866239 () Bool)

(declare-fun lt!1035024 () Regex!9223)

(assert (=> b!2965338 (= e!1866239 (= (nullable!2946 lt!1035024) (nullable!2946 (regOne!18959 r!17423))))))

(declare-fun b!2965339 () Bool)

(assert (=> b!2965339 (= e!1866234 EmptyExpr!9223)))

(declare-fun b!2965340 () Bool)

(assert (=> b!2965340 (= e!1866241 EmptyLang!9223)))

(declare-fun b!2965341 () Bool)

(assert (=> b!2965341 (= e!1866244 (Concat!14544 lt!1035026 lt!1035025))))

(declare-fun b!2965342 () Bool)

(declare-fun e!1866237 () Regex!9223)

(assert (=> b!2965342 (= e!1866234 e!1866237)))

(assert (=> b!2965342 (= c!486272 ((_ is Star!9223) (regOne!18959 r!17423)))))

(declare-fun b!2965343 () Bool)

(assert (=> b!2965343 (= e!1866238 (regOne!18959 r!17423))))

(declare-fun b!2965344 () Bool)

(assert (=> b!2965344 (= e!1866242 (Star!9223 lt!1035022))))

(declare-fun bm!197008 () Bool)

(declare-fun call!197009 () Bool)

(declare-fun call!197013 () Bool)

(assert (=> bm!197008 (= call!197009 call!197013)))

(declare-fun bm!197009 () Bool)

(assert (=> bm!197009 (= call!197013 (isEmptyLang!339 (ite c!486272 lt!1035022 (ite c!486278 lt!1035023 lt!1035025))))))

(declare-fun d!842309 () Bool)

(assert (=> d!842309 e!1866239))

(declare-fun res!1223140 () Bool)

(assert (=> d!842309 (=> (not res!1223140) (not e!1866239))))

(assert (=> d!842309 (= res!1223140 (validRegex!3956 lt!1035024))))

(declare-fun e!1866243 () Regex!9223)

(assert (=> d!842309 (= lt!1035024 e!1866243)))

(declare-fun c!486280 () Bool)

(assert (=> d!842309 (= c!486280 ((_ is EmptyLang!9223) (regOne!18959 r!17423)))))

(assert (=> d!842309 (validRegex!3956 (regOne!18959 r!17423))))

(assert (=> d!842309 (= (simplify!226 (regOne!18959 r!17423)) lt!1035024)))

(declare-fun b!2965332 () Bool)

(declare-fun e!1866245 () Regex!9223)

(assert (=> b!2965332 (= e!1866245 e!1866236)))

(assert (=> b!2965332 (= lt!1035023 call!197012)))

(assert (=> b!2965332 (= lt!1035021 call!197010)))

(declare-fun c!486275 () Bool)

(assert (=> b!2965332 (= c!486275 call!197009)))

(declare-fun b!2965345 () Bool)

(assert (=> b!2965345 (= e!1866243 EmptyLang!9223)))

(declare-fun b!2965346 () Bool)

(assert (=> b!2965346 (= e!1866236 lt!1035021)))

(declare-fun b!2965347 () Bool)

(assert (=> b!2965347 (= e!1866243 e!1866238)))

(declare-fun c!486279 () Bool)

(assert (=> b!2965347 (= c!486279 ((_ is ElementMatch!9223) (regOne!18959 r!17423)))))

(declare-fun b!2965348 () Bool)

(assert (=> b!2965348 (= e!1866235 e!1866244)))

(declare-fun c!486277 () Bool)

(assert (=> b!2965348 (= c!486277 (isEmptyExpr!404 lt!1035025))))

(declare-fun b!2965349 () Bool)

(declare-fun c!486281 () Bool)

(assert (=> b!2965349 (= c!486281 e!1866233)))

(declare-fun res!1223142 () Bool)

(assert (=> b!2965349 (=> res!1223142 e!1866233)))

(assert (=> b!2965349 (= res!1223142 call!197013)))

(assert (=> b!2965349 (= lt!1035022 call!197014)))

(assert (=> b!2965349 (= e!1866237 e!1866242)))

(declare-fun b!2965350 () Bool)

(declare-fun e!1866232 () Bool)

(assert (=> b!2965350 (= e!1866232 call!197009)))

(declare-fun b!2965351 () Bool)

(assert (=> b!2965351 (= c!486278 ((_ is Union!9223) (regOne!18959 r!17423)))))

(assert (=> b!2965351 (= e!1866237 e!1866245)))

(declare-fun b!2965352 () Bool)

(assert (=> b!2965352 (= e!1866245 e!1866241)))

(assert (=> b!2965352 (= lt!1035026 call!197010)))

(assert (=> b!2965352 (= lt!1035025 call!197012)))

(declare-fun res!1223141 () Bool)

(assert (=> b!2965352 (= res!1223141 call!197011)))

(assert (=> b!2965352 (=> res!1223141 e!1866232)))

(declare-fun c!486271 () Bool)

(assert (=> b!2965352 (= c!486271 e!1866232)))

(assert (= (and d!842309 c!486280) b!2965345))

(assert (= (and d!842309 (not c!486280)) b!2965347))

(assert (= (and b!2965347 c!486279) b!2965343))

(assert (= (and b!2965347 (not c!486279)) b!2965335))

(assert (= (and b!2965335 c!486276) b!2965339))

(assert (= (and b!2965335 (not c!486276)) b!2965342))

(assert (= (and b!2965342 c!486272) b!2965349))

(assert (= (and b!2965342 (not c!486272)) b!2965351))

(assert (= (and b!2965349 (not res!1223142)) b!2965334))

(assert (= (and b!2965349 c!486281) b!2965328))

(assert (= (and b!2965349 (not c!486281)) b!2965344))

(assert (= (and b!2965351 c!486278) b!2965332))

(assert (= (and b!2965351 (not c!486278)) b!2965352))

(assert (= (and b!2965332 c!486275) b!2965346))

(assert (= (and b!2965332 (not c!486275)) b!2965330))

(assert (= (and b!2965330 c!486273) b!2965331))

(assert (= (and b!2965330 (not c!486273)) b!2965337))

(assert (= (and b!2965352 (not res!1223141)) b!2965350))

(assert (= (and b!2965352 c!486271) b!2965340))

(assert (= (and b!2965352 (not c!486271)) b!2965336))

(assert (= (and b!2965336 c!486274) b!2965333))

(assert (= (and b!2965336 (not c!486274)) b!2965348))

(assert (= (and b!2965348 c!486277) b!2965329))

(assert (= (and b!2965348 (not c!486277)) b!2965341))

(assert (= (or b!2965332 b!2965352) bm!197003))

(assert (= (or b!2965332 b!2965352) bm!197005))

(assert (= (or b!2965330 b!2965352) bm!197006))

(assert (= (or b!2965332 b!2965350) bm!197008))

(assert (= (or b!2965334 b!2965336) bm!197004))

(assert (= (or b!2965349 bm!197005) bm!197007))

(assert (= (or b!2965349 bm!197008) bm!197009))

(assert (= (and d!842309 res!1223140) b!2965338))

(declare-fun m!3336047 () Bool)

(assert (=> d!842309 m!3336047))

(declare-fun m!3336049 () Bool)

(assert (=> d!842309 m!3336049))

(declare-fun m!3336051 () Bool)

(assert (=> bm!197009 m!3336051))

(declare-fun m!3336053 () Bool)

(assert (=> bm!197004 m!3336053))

(declare-fun m!3336055 () Bool)

(assert (=> bm!197006 m!3336055))

(declare-fun m!3336057 () Bool)

(assert (=> b!2965348 m!3336057))

(declare-fun m!3336059 () Bool)

(assert (=> bm!197007 m!3336059))

(declare-fun m!3336061 () Bool)

(assert (=> b!2965338 m!3336061))

(declare-fun m!3336063 () Bool)

(assert (=> b!2965338 m!3336063))

(declare-fun m!3336065 () Bool)

(assert (=> bm!197003 m!3336065))

(assert (=> b!2964766 d!842309))

(declare-fun b!2965357 () Bool)

(declare-fun e!1866248 () Bool)

(declare-fun tp!945938 () Bool)

(assert (=> b!2965357 (= e!1866248 (and tp_is_empty!16009 tp!945938))))

(assert (=> b!2964767 (= tp!945893 e!1866248)))

(assert (= (and b!2964767 ((_ is Cons!34964) (t!234153 s!11993))) b!2965357))

(declare-fun b!2965371 () Bool)

(declare-fun e!1866251 () Bool)

(declare-fun tp!945949 () Bool)

(declare-fun tp!945950 () Bool)

(assert (=> b!2965371 (= e!1866251 (and tp!945949 tp!945950))))

(declare-fun b!2965368 () Bool)

(assert (=> b!2965368 (= e!1866251 tp_is_empty!16009)))

(declare-fun b!2965370 () Bool)

(declare-fun tp!945953 () Bool)

(assert (=> b!2965370 (= e!1866251 tp!945953)))

(assert (=> b!2964762 (= tp!945892 e!1866251)))

(declare-fun b!2965369 () Bool)

(declare-fun tp!945952 () Bool)

(declare-fun tp!945951 () Bool)

(assert (=> b!2965369 (= e!1866251 (and tp!945952 tp!945951))))

(assert (= (and b!2964762 ((_ is ElementMatch!9223) (regOne!18959 r!17423))) b!2965368))

(assert (= (and b!2964762 ((_ is Concat!14544) (regOne!18959 r!17423))) b!2965369))

(assert (= (and b!2964762 ((_ is Star!9223) (regOne!18959 r!17423))) b!2965370))

(assert (= (and b!2964762 ((_ is Union!9223) (regOne!18959 r!17423))) b!2965371))

(declare-fun b!2965375 () Bool)

(declare-fun e!1866252 () Bool)

(declare-fun tp!945954 () Bool)

(declare-fun tp!945955 () Bool)

(assert (=> b!2965375 (= e!1866252 (and tp!945954 tp!945955))))

(declare-fun b!2965372 () Bool)

(assert (=> b!2965372 (= e!1866252 tp_is_empty!16009)))

(declare-fun b!2965374 () Bool)

(declare-fun tp!945958 () Bool)

(assert (=> b!2965374 (= e!1866252 tp!945958)))

(assert (=> b!2964762 (= tp!945896 e!1866252)))

(declare-fun b!2965373 () Bool)

(declare-fun tp!945957 () Bool)

(declare-fun tp!945956 () Bool)

(assert (=> b!2965373 (= e!1866252 (and tp!945957 tp!945956))))

(assert (= (and b!2964762 ((_ is ElementMatch!9223) (regTwo!18959 r!17423))) b!2965372))

(assert (= (and b!2964762 ((_ is Concat!14544) (regTwo!18959 r!17423))) b!2965373))

(assert (= (and b!2964762 ((_ is Star!9223) (regTwo!18959 r!17423))) b!2965374))

(assert (= (and b!2964762 ((_ is Union!9223) (regTwo!18959 r!17423))) b!2965375))

(declare-fun b!2965379 () Bool)

(declare-fun e!1866253 () Bool)

(declare-fun tp!945959 () Bool)

(declare-fun tp!945960 () Bool)

(assert (=> b!2965379 (= e!1866253 (and tp!945959 tp!945960))))

(declare-fun b!2965376 () Bool)

(assert (=> b!2965376 (= e!1866253 tp_is_empty!16009)))

(declare-fun b!2965378 () Bool)

(declare-fun tp!945963 () Bool)

(assert (=> b!2965378 (= e!1866253 tp!945963)))

(assert (=> b!2964764 (= tp!945897 e!1866253)))

(declare-fun b!2965377 () Bool)

(declare-fun tp!945962 () Bool)

(declare-fun tp!945961 () Bool)

(assert (=> b!2965377 (= e!1866253 (and tp!945962 tp!945961))))

(assert (= (and b!2964764 ((_ is ElementMatch!9223) (reg!9552 r!17423))) b!2965376))

(assert (= (and b!2964764 ((_ is Concat!14544) (reg!9552 r!17423))) b!2965377))

(assert (= (and b!2964764 ((_ is Star!9223) (reg!9552 r!17423))) b!2965378))

(assert (= (and b!2964764 ((_ is Union!9223) (reg!9552 r!17423))) b!2965379))

(declare-fun b!2965383 () Bool)

(declare-fun e!1866254 () Bool)

(declare-fun tp!945964 () Bool)

(declare-fun tp!945965 () Bool)

(assert (=> b!2965383 (= e!1866254 (and tp!945964 tp!945965))))

(declare-fun b!2965380 () Bool)

(assert (=> b!2965380 (= e!1866254 tp_is_empty!16009)))

(declare-fun b!2965382 () Bool)

(declare-fun tp!945968 () Bool)

(assert (=> b!2965382 (= e!1866254 tp!945968)))

(assert (=> b!2964765 (= tp!945895 e!1866254)))

(declare-fun b!2965381 () Bool)

(declare-fun tp!945967 () Bool)

(declare-fun tp!945966 () Bool)

(assert (=> b!2965381 (= e!1866254 (and tp!945967 tp!945966))))

(assert (= (and b!2964765 ((_ is ElementMatch!9223) (regOne!18958 r!17423))) b!2965380))

(assert (= (and b!2964765 ((_ is Concat!14544) (regOne!18958 r!17423))) b!2965381))

(assert (= (and b!2964765 ((_ is Star!9223) (regOne!18958 r!17423))) b!2965382))

(assert (= (and b!2964765 ((_ is Union!9223) (regOne!18958 r!17423))) b!2965383))

(declare-fun b!2965387 () Bool)

(declare-fun e!1866255 () Bool)

(declare-fun tp!945969 () Bool)

(declare-fun tp!945970 () Bool)

(assert (=> b!2965387 (= e!1866255 (and tp!945969 tp!945970))))

(declare-fun b!2965384 () Bool)

(assert (=> b!2965384 (= e!1866255 tp_is_empty!16009)))

(declare-fun b!2965386 () Bool)

(declare-fun tp!945973 () Bool)

(assert (=> b!2965386 (= e!1866255 tp!945973)))

(assert (=> b!2964765 (= tp!945894 e!1866255)))

(declare-fun b!2965385 () Bool)

(declare-fun tp!945972 () Bool)

(declare-fun tp!945971 () Bool)

(assert (=> b!2965385 (= e!1866255 (and tp!945972 tp!945971))))

(assert (= (and b!2964765 ((_ is ElementMatch!9223) (regTwo!18958 r!17423))) b!2965384))

(assert (= (and b!2964765 ((_ is Concat!14544) (regTwo!18958 r!17423))) b!2965385))

(assert (= (and b!2964765 ((_ is Star!9223) (regTwo!18958 r!17423))) b!2965386))

(assert (= (and b!2964765 ((_ is Union!9223) (regTwo!18958 r!17423))) b!2965387))

(check-sat (not b!2965214) (not b!2964937) (not b!2965382) (not b!2965243) (not b!2965338) (not bm!197003) (not b!2965236) (not b!2965375) (not b!2965250) (not b!2964858) (not b!2965378) (not d!842303) (not b!2964929) (not d!842309) (not d!842261) (not bm!196999) (not bm!196979) (not b!2965229) (not b!2964953) (not b!2964940) (not b!2965357) (not b!2965385) (not b!2965381) (not d!842279) (not b!2964861) (not bm!196930) (not bm!196931) (not bm!197009) (not b!2964952) (not b!2965247) (not bm!197006) (not b!2965386) (not b!2965377) (not b!2965233) (not b!2965369) (not bm!197000) (not b!2965374) (not bm!196997) (not bm!196981) (not b!2964945) (not b!2964863) (not b!2964856) (not b!2965242) tp_is_empty!16009 (not b!2964920) (not bm!197004) (not bm!196933) (not b!2965383) (not bm!196917) (not bm!196934) (not d!842307) (not b!2964935) (not b!2965379) (not b!2965370) (not b!2965240) (not d!842281) (not bm!196996) (not bm!197007) (not b!2965231) (not b!2965323) (not bm!196978) (not b!2964942) (not b!2964938) (not b!2965387) (not b!2965228) (not b!2965211) (not b!2964866) (not bm!196936) (not b!2964859) (not bm!197002) (not b!2965373) (not bm!196980) (not b!2965226) (not b!2965371) (not d!842299) (not b!2965245) (not b!2965348) (not d!842301) (not b!2965313))
(check-sat)
