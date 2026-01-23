; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!246524 () Bool)

(assert start!246524)

(declare-fun b!2532926 () Bool)

(declare-fun res!1069003 () Bool)

(declare-fun e!1602595 () Bool)

(assert (=> b!2532926 (=> (not res!1069003) (not e!1602595))))

(declare-datatypes ((C!15252 0))(
  ( (C!15253 (val!9278 Int)) )
))
(declare-datatypes ((List!29612 0))(
  ( (Nil!29512) (Cons!29512 (h!34932 C!15252) (t!211311 List!29612)) )
))
(declare-fun tl!4068 () List!29612)

(declare-datatypes ((Regex!7547 0))(
  ( (ElementMatch!7547 (c!404655 C!15252)) (Concat!12243 (regOne!15606 Regex!7547) (regTwo!15606 Regex!7547)) (EmptyExpr!7547) (Star!7547 (reg!7876 Regex!7547)) (EmptyLang!7547) (Union!7547 (regOne!15607 Regex!7547) (regTwo!15607 Regex!7547)) )
))
(declare-fun r!27340 () Regex!7547)

(declare-fun c!14016 () C!15252)

(declare-fun nullable!2464 (Regex!7547) Bool)

(declare-fun derivative!242 (Regex!7547 List!29612) Regex!7547)

(declare-fun derivativeStep!2116 (Regex!7547 C!15252) Regex!7547)

(assert (=> b!2532926 (= res!1069003 (nullable!2464 (derivative!242 (derivativeStep!2116 (regOne!15607 r!27340) c!14016) tl!4068)))))

(declare-fun res!1069004 () Bool)

(assert (=> start!246524 (=> (not res!1069004) (not e!1602595))))

(declare-fun validRegex!3173 (Regex!7547) Bool)

(assert (=> start!246524 (= res!1069004 (validRegex!3173 r!27340))))

(assert (=> start!246524 e!1602595))

(declare-fun e!1602596 () Bool)

(assert (=> start!246524 e!1602596))

(declare-fun tp_is_empty!12949 () Bool)

(assert (=> start!246524 tp_is_empty!12949))

(declare-fun e!1602594 () Bool)

(assert (=> start!246524 e!1602594))

(declare-fun b!2532927 () Bool)

(declare-fun tp!809177 () Bool)

(declare-fun tp!809173 () Bool)

(assert (=> b!2532927 (= e!1602596 (and tp!809177 tp!809173))))

(declare-fun b!2532928 () Bool)

(assert (=> b!2532928 (= e!1602596 tp_is_empty!12949)))

(declare-fun b!2532929 () Bool)

(declare-fun res!1069001 () Bool)

(assert (=> b!2532929 (=> (not res!1069001) (not e!1602595))))

(get-info :version)

(assert (=> b!2532929 (= res!1069001 (and (not ((_ is EmptyExpr!7547) r!27340)) (not ((_ is EmptyLang!7547) r!27340)) (not ((_ is ElementMatch!7547) r!27340)) ((_ is Union!7547) r!27340)))))

(declare-fun b!2532930 () Bool)

(declare-fun res!1069002 () Bool)

(assert (=> b!2532930 (=> (not res!1069002) (not e!1602595))))

(assert (=> b!2532930 (= res!1069002 (nullable!2464 (derivative!242 (derivativeStep!2116 r!27340 c!14016) tl!4068)))))

(declare-fun b!2532931 () Bool)

(declare-fun tp!809175 () Bool)

(declare-fun tp!809176 () Bool)

(assert (=> b!2532931 (= e!1602596 (and tp!809175 tp!809176))))

(declare-fun b!2532932 () Bool)

(declare-fun tp!809174 () Bool)

(assert (=> b!2532932 (= e!1602596 tp!809174)))

(declare-fun b!2532933 () Bool)

(declare-fun tp!809178 () Bool)

(assert (=> b!2532933 (= e!1602594 (and tp_is_empty!12949 tp!809178))))

(declare-fun b!2532934 () Bool)

(assert (=> b!2532934 (= e!1602595 (not (validRegex!3173 (regOne!15607 r!27340))))))

(assert (= (and start!246524 res!1069004) b!2532930))

(assert (= (and b!2532930 res!1069002) b!2532929))

(assert (= (and b!2532929 res!1069001) b!2532926))

(assert (= (and b!2532926 res!1069003) b!2532934))

(assert (= (and start!246524 ((_ is ElementMatch!7547) r!27340)) b!2532928))

(assert (= (and start!246524 ((_ is Concat!12243) r!27340)) b!2532927))

(assert (= (and start!246524 ((_ is Star!7547) r!27340)) b!2532932))

(assert (= (and start!246524 ((_ is Union!7547) r!27340)) b!2532931))

(assert (= (and start!246524 ((_ is Cons!29512) tl!4068)) b!2532933))

(declare-fun m!2882965 () Bool)

(assert (=> b!2532926 m!2882965))

(assert (=> b!2532926 m!2882965))

(declare-fun m!2882967 () Bool)

(assert (=> b!2532926 m!2882967))

(assert (=> b!2532926 m!2882967))

(declare-fun m!2882969 () Bool)

(assert (=> b!2532926 m!2882969))

(declare-fun m!2882971 () Bool)

(assert (=> start!246524 m!2882971))

(declare-fun m!2882973 () Bool)

(assert (=> b!2532930 m!2882973))

(assert (=> b!2532930 m!2882973))

(declare-fun m!2882975 () Bool)

(assert (=> b!2532930 m!2882975))

(assert (=> b!2532930 m!2882975))

(declare-fun m!2882977 () Bool)

(assert (=> b!2532930 m!2882977))

(declare-fun m!2882979 () Bool)

(assert (=> b!2532934 m!2882979))

(check-sat (not b!2532927) tp_is_empty!12949 (not start!246524) (not b!2532926) (not b!2532930) (not b!2532932) (not b!2532933) (not b!2532934) (not b!2532931))
(check-sat)
(get-model)

(declare-fun d!720129 () Bool)

(declare-fun nullableFct!695 (Regex!7547) Bool)

(assert (=> d!720129 (= (nullable!2464 (derivative!242 (derivativeStep!2116 r!27340 c!14016) tl!4068)) (nullableFct!695 (derivative!242 (derivativeStep!2116 r!27340 c!14016) tl!4068)))))

(declare-fun bs!469240 () Bool)

(assert (= bs!469240 d!720129))

(assert (=> bs!469240 m!2882975))

(declare-fun m!2882981 () Bool)

(assert (=> bs!469240 m!2882981))

(assert (=> b!2532930 d!720129))

(declare-fun d!720131 () Bool)

(declare-fun lt!901359 () Regex!7547)

(assert (=> d!720131 (validRegex!3173 lt!901359)))

(declare-fun e!1602613 () Regex!7547)

(assert (=> d!720131 (= lt!901359 e!1602613)))

(declare-fun c!404662 () Bool)

(assert (=> d!720131 (= c!404662 ((_ is Cons!29512) tl!4068))))

(assert (=> d!720131 (validRegex!3173 (derivativeStep!2116 r!27340 c!14016))))

(assert (=> d!720131 (= (derivative!242 (derivativeStep!2116 r!27340 c!14016) tl!4068) lt!901359)))

(declare-fun b!2532957 () Bool)

(assert (=> b!2532957 (= e!1602613 (derivative!242 (derivativeStep!2116 (derivativeStep!2116 r!27340 c!14016) (h!34932 tl!4068)) (t!211311 tl!4068)))))

(declare-fun b!2532958 () Bool)

(assert (=> b!2532958 (= e!1602613 (derivativeStep!2116 r!27340 c!14016))))

(assert (= (and d!720131 c!404662) b!2532957))

(assert (= (and d!720131 (not c!404662)) b!2532958))

(declare-fun m!2882983 () Bool)

(assert (=> d!720131 m!2882983))

(assert (=> d!720131 m!2882973))

(declare-fun m!2882985 () Bool)

(assert (=> d!720131 m!2882985))

(assert (=> b!2532957 m!2882973))

(declare-fun m!2882987 () Bool)

(assert (=> b!2532957 m!2882987))

(assert (=> b!2532957 m!2882987))

(declare-fun m!2882989 () Bool)

(assert (=> b!2532957 m!2882989))

(assert (=> b!2532930 d!720131))

(declare-fun bm!158920 () Bool)

(declare-fun call!158925 () Regex!7547)

(declare-fun call!158926 () Regex!7547)

(assert (=> bm!158920 (= call!158925 call!158926)))

(declare-fun b!2533014 () Bool)

(declare-fun e!1602645 () Regex!7547)

(declare-fun call!158928 () Regex!7547)

(declare-fun call!158927 () Regex!7547)

(assert (=> b!2533014 (= e!1602645 (Union!7547 (Concat!12243 call!158927 (regTwo!15606 r!27340)) call!158928))))

(declare-fun b!2533015 () Bool)

(declare-fun e!1602648 () Regex!7547)

(assert (=> b!2533015 (= e!1602648 (Union!7547 call!158928 call!158926))))

(declare-fun bm!158921 () Bool)

(declare-fun c!404690 () Bool)

(declare-fun c!404692 () Bool)

(assert (=> bm!158921 (= call!158926 (derivativeStep!2116 (ite c!404690 (regTwo!15607 r!27340) (ite c!404692 (reg!7876 r!27340) (regOne!15606 r!27340))) c!14016))))

(declare-fun bm!158922 () Bool)

(assert (=> bm!158922 (= call!158928 (derivativeStep!2116 (ite c!404690 (regOne!15607 r!27340) (regTwo!15606 r!27340)) c!14016))))

(declare-fun b!2533016 () Bool)

(assert (=> b!2533016 (= c!404690 ((_ is Union!7547) r!27340))))

(declare-fun e!1602646 () Regex!7547)

(assert (=> b!2533016 (= e!1602646 e!1602648)))

(declare-fun bm!158923 () Bool)

(assert (=> bm!158923 (= call!158927 call!158925)))

(declare-fun b!2533017 () Bool)

(assert (=> b!2533017 (= e!1602645 (Union!7547 (Concat!12243 call!158927 (regTwo!15606 r!27340)) EmptyLang!7547))))

(declare-fun b!2533018 () Bool)

(declare-fun e!1602647 () Regex!7547)

(assert (=> b!2533018 (= e!1602648 e!1602647)))

(assert (=> b!2533018 (= c!404692 ((_ is Star!7547) r!27340))))

(declare-fun b!2533019 () Bool)

(assert (=> b!2533019 (= e!1602646 (ite (= c!14016 (c!404655 r!27340)) EmptyExpr!7547 EmptyLang!7547))))

(declare-fun b!2533020 () Bool)

(declare-fun c!404689 () Bool)

(assert (=> b!2533020 (= c!404689 (nullable!2464 (regOne!15606 r!27340)))))

(assert (=> b!2533020 (= e!1602647 e!1602645)))

(declare-fun b!2533021 () Bool)

(declare-fun e!1602644 () Regex!7547)

(assert (=> b!2533021 (= e!1602644 EmptyLang!7547)))

(declare-fun b!2533022 () Bool)

(assert (=> b!2533022 (= e!1602644 e!1602646)))

(declare-fun c!404691 () Bool)

(assert (=> b!2533022 (= c!404691 ((_ is ElementMatch!7547) r!27340))))

(declare-fun b!2533023 () Bool)

(assert (=> b!2533023 (= e!1602647 (Concat!12243 call!158925 r!27340))))

(declare-fun d!720133 () Bool)

(declare-fun lt!901367 () Regex!7547)

(assert (=> d!720133 (validRegex!3173 lt!901367)))

(assert (=> d!720133 (= lt!901367 e!1602644)))

(declare-fun c!404688 () Bool)

(assert (=> d!720133 (= c!404688 (or ((_ is EmptyExpr!7547) r!27340) ((_ is EmptyLang!7547) r!27340)))))

(assert (=> d!720133 (validRegex!3173 r!27340)))

(assert (=> d!720133 (= (derivativeStep!2116 r!27340 c!14016) lt!901367)))

(assert (= (and d!720133 c!404688) b!2533021))

(assert (= (and d!720133 (not c!404688)) b!2533022))

(assert (= (and b!2533022 c!404691) b!2533019))

(assert (= (and b!2533022 (not c!404691)) b!2533016))

(assert (= (and b!2533016 c!404690) b!2533015))

(assert (= (and b!2533016 (not c!404690)) b!2533018))

(assert (= (and b!2533018 c!404692) b!2533023))

(assert (= (and b!2533018 (not c!404692)) b!2533020))

(assert (= (and b!2533020 c!404689) b!2533014))

(assert (= (and b!2533020 (not c!404689)) b!2533017))

(assert (= (or b!2533014 b!2533017) bm!158923))

(assert (= (or b!2533023 bm!158923) bm!158920))

(assert (= (or b!2533015 bm!158920) bm!158921))

(assert (= (or b!2533015 b!2533014) bm!158922))

(declare-fun m!2883007 () Bool)

(assert (=> bm!158921 m!2883007))

(declare-fun m!2883009 () Bool)

(assert (=> bm!158922 m!2883009))

(declare-fun m!2883011 () Bool)

(assert (=> b!2533020 m!2883011))

(declare-fun m!2883013 () Bool)

(assert (=> d!720133 m!2883013))

(assert (=> d!720133 m!2882971))

(assert (=> b!2532930 d!720133))

(declare-fun b!2533064 () Bool)

(declare-fun e!1602678 () Bool)

(declare-fun call!158950 () Bool)

(assert (=> b!2533064 (= e!1602678 call!158950)))

(declare-fun b!2533065 () Bool)

(declare-fun e!1602679 () Bool)

(assert (=> b!2533065 (= e!1602679 e!1602678)))

(declare-fun res!1069033 () Bool)

(assert (=> b!2533065 (= res!1069033 (not (nullable!2464 (reg!7876 r!27340))))))

(assert (=> b!2533065 (=> (not res!1069033) (not e!1602678))))

(declare-fun c!404708 () Bool)

(declare-fun c!404709 () Bool)

(declare-fun bm!158944 () Bool)

(assert (=> bm!158944 (= call!158950 (validRegex!3173 (ite c!404709 (reg!7876 r!27340) (ite c!404708 (regOne!15607 r!27340) (regTwo!15606 r!27340)))))))

(declare-fun b!2533066 () Bool)

(declare-fun e!1602675 () Bool)

(declare-fun e!1602676 () Bool)

(assert (=> b!2533066 (= e!1602675 e!1602676)))

(declare-fun res!1069032 () Bool)

(assert (=> b!2533066 (=> (not res!1069032) (not e!1602676))))

(declare-fun call!158949 () Bool)

(assert (=> b!2533066 (= res!1069032 call!158949)))

(declare-fun b!2533067 () Bool)

(declare-fun res!1069031 () Bool)

(declare-fun e!1602674 () Bool)

(assert (=> b!2533067 (=> (not res!1069031) (not e!1602674))))

(declare-fun call!158951 () Bool)

(assert (=> b!2533067 (= res!1069031 call!158951)))

(declare-fun e!1602680 () Bool)

(assert (=> b!2533067 (= e!1602680 e!1602674)))

(declare-fun d!720141 () Bool)

(declare-fun res!1069034 () Bool)

(declare-fun e!1602677 () Bool)

(assert (=> d!720141 (=> res!1069034 e!1602677)))

(assert (=> d!720141 (= res!1069034 ((_ is ElementMatch!7547) r!27340))))

(assert (=> d!720141 (= (validRegex!3173 r!27340) e!1602677)))

(declare-fun b!2533068 () Bool)

(assert (=> b!2533068 (= e!1602679 e!1602680)))

(assert (=> b!2533068 (= c!404708 ((_ is Union!7547) r!27340))))

(declare-fun bm!158945 () Bool)

(assert (=> bm!158945 (= call!158949 (validRegex!3173 (ite c!404708 (regTwo!15607 r!27340) (regOne!15606 r!27340))))))

(declare-fun b!2533069 () Bool)

(assert (=> b!2533069 (= e!1602676 call!158951)))

(declare-fun bm!158946 () Bool)

(assert (=> bm!158946 (= call!158951 call!158950)))

(declare-fun b!2533070 () Bool)

(assert (=> b!2533070 (= e!1602674 call!158949)))

(declare-fun b!2533071 () Bool)

(assert (=> b!2533071 (= e!1602677 e!1602679)))

(assert (=> b!2533071 (= c!404709 ((_ is Star!7547) r!27340))))

(declare-fun b!2533072 () Bool)

(declare-fun res!1069030 () Bool)

(assert (=> b!2533072 (=> res!1069030 e!1602675)))

(assert (=> b!2533072 (= res!1069030 (not ((_ is Concat!12243) r!27340)))))

(assert (=> b!2533072 (= e!1602680 e!1602675)))

(assert (= (and d!720141 (not res!1069034)) b!2533071))

(assert (= (and b!2533071 c!404709) b!2533065))

(assert (= (and b!2533071 (not c!404709)) b!2533068))

(assert (= (and b!2533065 res!1069033) b!2533064))

(assert (= (and b!2533068 c!404708) b!2533067))

(assert (= (and b!2533068 (not c!404708)) b!2533072))

(assert (= (and b!2533067 res!1069031) b!2533070))

(assert (= (and b!2533072 (not res!1069030)) b!2533066))

(assert (= (and b!2533066 res!1069032) b!2533069))

(assert (= (or b!2533067 b!2533069) bm!158946))

(assert (= (or b!2533070 b!2533066) bm!158945))

(assert (= (or b!2533064 bm!158946) bm!158944))

(declare-fun m!2883041 () Bool)

(assert (=> b!2533065 m!2883041))

(declare-fun m!2883043 () Bool)

(assert (=> bm!158944 m!2883043))

(declare-fun m!2883045 () Bool)

(assert (=> bm!158945 m!2883045))

(assert (=> start!246524 d!720141))

(declare-fun d!720151 () Bool)

(assert (=> d!720151 (= (nullable!2464 (derivative!242 (derivativeStep!2116 (regOne!15607 r!27340) c!14016) tl!4068)) (nullableFct!695 (derivative!242 (derivativeStep!2116 (regOne!15607 r!27340) c!14016) tl!4068)))))

(declare-fun bs!469243 () Bool)

(assert (= bs!469243 d!720151))

(assert (=> bs!469243 m!2882967))

(declare-fun m!2883047 () Bool)

(assert (=> bs!469243 m!2883047))

(assert (=> b!2532926 d!720151))

(declare-fun d!720153 () Bool)

(declare-fun lt!901371 () Regex!7547)

(assert (=> d!720153 (validRegex!3173 lt!901371)))

(declare-fun e!1602688 () Regex!7547)

(assert (=> d!720153 (= lt!901371 e!1602688)))

(declare-fun c!404712 () Bool)

(assert (=> d!720153 (= c!404712 ((_ is Cons!29512) tl!4068))))

(assert (=> d!720153 (validRegex!3173 (derivativeStep!2116 (regOne!15607 r!27340) c!14016))))

(assert (=> d!720153 (= (derivative!242 (derivativeStep!2116 (regOne!15607 r!27340) c!14016) tl!4068) lt!901371)))

(declare-fun b!2533082 () Bool)

(assert (=> b!2533082 (= e!1602688 (derivative!242 (derivativeStep!2116 (derivativeStep!2116 (regOne!15607 r!27340) c!14016) (h!34932 tl!4068)) (t!211311 tl!4068)))))

(declare-fun b!2533083 () Bool)

(assert (=> b!2533083 (= e!1602688 (derivativeStep!2116 (regOne!15607 r!27340) c!14016))))

(assert (= (and d!720153 c!404712) b!2533082))

(assert (= (and d!720153 (not c!404712)) b!2533083))

(declare-fun m!2883049 () Bool)

(assert (=> d!720153 m!2883049))

(assert (=> d!720153 m!2882965))

(declare-fun m!2883053 () Bool)

(assert (=> d!720153 m!2883053))

(assert (=> b!2533082 m!2882965))

(declare-fun m!2883057 () Bool)

(assert (=> b!2533082 m!2883057))

(assert (=> b!2533082 m!2883057))

(declare-fun m!2883061 () Bool)

(assert (=> b!2533082 m!2883061))

(assert (=> b!2532926 d!720153))

(declare-fun bm!158950 () Bool)

(declare-fun call!158955 () Regex!7547)

(declare-fun call!158956 () Regex!7547)

(assert (=> bm!158950 (= call!158955 call!158956)))

(declare-fun b!2533088 () Bool)

(declare-fun call!158958 () Regex!7547)

(declare-fun call!158957 () Regex!7547)

(declare-fun e!1602690 () Regex!7547)

(assert (=> b!2533088 (= e!1602690 (Union!7547 (Concat!12243 call!158957 (regTwo!15606 (regOne!15607 r!27340))) call!158958))))

(declare-fun b!2533089 () Bool)

(declare-fun e!1602695 () Regex!7547)

(assert (=> b!2533089 (= e!1602695 (Union!7547 call!158958 call!158956))))

(declare-fun c!404715 () Bool)

(declare-fun c!404717 () Bool)

(declare-fun bm!158951 () Bool)

(assert (=> bm!158951 (= call!158956 (derivativeStep!2116 (ite c!404715 (regTwo!15607 (regOne!15607 r!27340)) (ite c!404717 (reg!7876 (regOne!15607 r!27340)) (regOne!15606 (regOne!15607 r!27340)))) c!14016))))

(declare-fun bm!158952 () Bool)

(assert (=> bm!158952 (= call!158958 (derivativeStep!2116 (ite c!404715 (regOne!15607 (regOne!15607 r!27340)) (regTwo!15606 (regOne!15607 r!27340))) c!14016))))

(declare-fun b!2533090 () Bool)

(assert (=> b!2533090 (= c!404715 ((_ is Union!7547) (regOne!15607 r!27340)))))

(declare-fun e!1602691 () Regex!7547)

(assert (=> b!2533090 (= e!1602691 e!1602695)))

(declare-fun bm!158953 () Bool)

(assert (=> bm!158953 (= call!158957 call!158955)))

(declare-fun b!2533091 () Bool)

(assert (=> b!2533091 (= e!1602690 (Union!7547 (Concat!12243 call!158957 (regTwo!15606 (regOne!15607 r!27340))) EmptyLang!7547))))

(declare-fun b!2533092 () Bool)

(declare-fun e!1602694 () Regex!7547)

(assert (=> b!2533092 (= e!1602695 e!1602694)))

(assert (=> b!2533092 (= c!404717 ((_ is Star!7547) (regOne!15607 r!27340)))))

(declare-fun b!2533093 () Bool)

(assert (=> b!2533093 (= e!1602691 (ite (= c!14016 (c!404655 (regOne!15607 r!27340))) EmptyExpr!7547 EmptyLang!7547))))

(declare-fun b!2533094 () Bool)

(declare-fun c!404714 () Bool)

(assert (=> b!2533094 (= c!404714 (nullable!2464 (regOne!15606 (regOne!15607 r!27340))))))

(assert (=> b!2533094 (= e!1602694 e!1602690)))

(declare-fun b!2533095 () Bool)

(declare-fun e!1602689 () Regex!7547)

(assert (=> b!2533095 (= e!1602689 EmptyLang!7547)))

(declare-fun b!2533096 () Bool)

(assert (=> b!2533096 (= e!1602689 e!1602691)))

(declare-fun c!404716 () Bool)

(assert (=> b!2533096 (= c!404716 ((_ is ElementMatch!7547) (regOne!15607 r!27340)))))

(declare-fun b!2533097 () Bool)

(assert (=> b!2533097 (= e!1602694 (Concat!12243 call!158955 (regOne!15607 r!27340)))))

(declare-fun d!720155 () Bool)

(declare-fun lt!901372 () Regex!7547)

(assert (=> d!720155 (validRegex!3173 lt!901372)))

(assert (=> d!720155 (= lt!901372 e!1602689)))

(declare-fun c!404713 () Bool)

(assert (=> d!720155 (= c!404713 (or ((_ is EmptyExpr!7547) (regOne!15607 r!27340)) ((_ is EmptyLang!7547) (regOne!15607 r!27340))))))

(assert (=> d!720155 (validRegex!3173 (regOne!15607 r!27340))))

(assert (=> d!720155 (= (derivativeStep!2116 (regOne!15607 r!27340) c!14016) lt!901372)))

(assert (= (and d!720155 c!404713) b!2533095))

(assert (= (and d!720155 (not c!404713)) b!2533096))

(assert (= (and b!2533096 c!404716) b!2533093))

(assert (= (and b!2533096 (not c!404716)) b!2533090))

(assert (= (and b!2533090 c!404715) b!2533089))

(assert (= (and b!2533090 (not c!404715)) b!2533092))

(assert (= (and b!2533092 c!404717) b!2533097))

(assert (= (and b!2533092 (not c!404717)) b!2533094))

(assert (= (and b!2533094 c!404714) b!2533088))

(assert (= (and b!2533094 (not c!404714)) b!2533091))

(assert (= (or b!2533088 b!2533091) bm!158953))

(assert (= (or b!2533097 bm!158953) bm!158950))

(assert (= (or b!2533089 bm!158950) bm!158951))

(assert (= (or b!2533089 b!2533088) bm!158952))

(declare-fun m!2883063 () Bool)

(assert (=> bm!158951 m!2883063))

(declare-fun m!2883065 () Bool)

(assert (=> bm!158952 m!2883065))

(declare-fun m!2883067 () Bool)

(assert (=> b!2533094 m!2883067))

(declare-fun m!2883069 () Bool)

(assert (=> d!720155 m!2883069))

(assert (=> d!720155 m!2882979))

(assert (=> b!2532926 d!720155))

(declare-fun b!2533109 () Bool)

(declare-fun e!1602703 () Bool)

(declare-fun call!158960 () Bool)

(assert (=> b!2533109 (= e!1602703 call!158960)))

(declare-fun b!2533110 () Bool)

(declare-fun e!1602704 () Bool)

(assert (=> b!2533110 (= e!1602704 e!1602703)))

(declare-fun res!1069043 () Bool)

(assert (=> b!2533110 (= res!1069043 (not (nullable!2464 (reg!7876 (regOne!15607 r!27340)))))))

(assert (=> b!2533110 (=> (not res!1069043) (not e!1602703))))

(declare-fun c!404719 () Bool)

(declare-fun c!404718 () Bool)

(declare-fun bm!158954 () Bool)

(assert (=> bm!158954 (= call!158960 (validRegex!3173 (ite c!404719 (reg!7876 (regOne!15607 r!27340)) (ite c!404718 (regOne!15607 (regOne!15607 r!27340)) (regTwo!15606 (regOne!15607 r!27340))))))))

(declare-fun b!2533111 () Bool)

(declare-fun e!1602700 () Bool)

(declare-fun e!1602701 () Bool)

(assert (=> b!2533111 (= e!1602700 e!1602701)))

(declare-fun res!1069042 () Bool)

(assert (=> b!2533111 (=> (not res!1069042) (not e!1602701))))

(declare-fun call!158959 () Bool)

(assert (=> b!2533111 (= res!1069042 call!158959)))

(declare-fun b!2533112 () Bool)

(declare-fun res!1069041 () Bool)

(declare-fun e!1602699 () Bool)

(assert (=> b!2533112 (=> (not res!1069041) (not e!1602699))))

(declare-fun call!158961 () Bool)

(assert (=> b!2533112 (= res!1069041 call!158961)))

(declare-fun e!1602705 () Bool)

(assert (=> b!2533112 (= e!1602705 e!1602699)))

(declare-fun d!720157 () Bool)

(declare-fun res!1069044 () Bool)

(declare-fun e!1602702 () Bool)

(assert (=> d!720157 (=> res!1069044 e!1602702)))

(assert (=> d!720157 (= res!1069044 ((_ is ElementMatch!7547) (regOne!15607 r!27340)))))

(assert (=> d!720157 (= (validRegex!3173 (regOne!15607 r!27340)) e!1602702)))

(declare-fun b!2533113 () Bool)

(assert (=> b!2533113 (= e!1602704 e!1602705)))

(assert (=> b!2533113 (= c!404718 ((_ is Union!7547) (regOne!15607 r!27340)))))

(declare-fun bm!158955 () Bool)

(assert (=> bm!158955 (= call!158959 (validRegex!3173 (ite c!404718 (regTwo!15607 (regOne!15607 r!27340)) (regOne!15606 (regOne!15607 r!27340)))))))

(declare-fun b!2533114 () Bool)

(assert (=> b!2533114 (= e!1602701 call!158961)))

(declare-fun bm!158956 () Bool)

(assert (=> bm!158956 (= call!158961 call!158960)))

(declare-fun b!2533115 () Bool)

(assert (=> b!2533115 (= e!1602699 call!158959)))

(declare-fun b!2533116 () Bool)

(assert (=> b!2533116 (= e!1602702 e!1602704)))

(assert (=> b!2533116 (= c!404719 ((_ is Star!7547) (regOne!15607 r!27340)))))

(declare-fun b!2533117 () Bool)

(declare-fun res!1069040 () Bool)

(assert (=> b!2533117 (=> res!1069040 e!1602700)))

(assert (=> b!2533117 (= res!1069040 (not ((_ is Concat!12243) (regOne!15607 r!27340))))))

(assert (=> b!2533117 (= e!1602705 e!1602700)))

(assert (= (and d!720157 (not res!1069044)) b!2533116))

(assert (= (and b!2533116 c!404719) b!2533110))

(assert (= (and b!2533116 (not c!404719)) b!2533113))

(assert (= (and b!2533110 res!1069043) b!2533109))

(assert (= (and b!2533113 c!404718) b!2533112))

(assert (= (and b!2533113 (not c!404718)) b!2533117))

(assert (= (and b!2533112 res!1069041) b!2533115))

(assert (= (and b!2533117 (not res!1069040)) b!2533111))

(assert (= (and b!2533111 res!1069042) b!2533114))

(assert (= (or b!2533112 b!2533114) bm!158956))

(assert (= (or b!2533115 b!2533111) bm!158955))

(assert (= (or b!2533109 bm!158956) bm!158954))

(declare-fun m!2883071 () Bool)

(assert (=> b!2533110 m!2883071))

(declare-fun m!2883073 () Bool)

(assert (=> bm!158954 m!2883073))

(declare-fun m!2883075 () Bool)

(assert (=> bm!158955 m!2883075))

(assert (=> b!2532934 d!720157))

(declare-fun b!2533148 () Bool)

(declare-fun e!1602713 () Bool)

(assert (=> b!2533148 (= e!1602713 tp_is_empty!12949)))

(declare-fun b!2533149 () Bool)

(declare-fun tp!809227 () Bool)

(declare-fun tp!809231 () Bool)

(assert (=> b!2533149 (= e!1602713 (and tp!809227 tp!809231))))

(declare-fun b!2533151 () Bool)

(declare-fun tp!809229 () Bool)

(declare-fun tp!809228 () Bool)

(assert (=> b!2533151 (= e!1602713 (and tp!809229 tp!809228))))

(assert (=> b!2532931 (= tp!809175 e!1602713)))

(declare-fun b!2533150 () Bool)

(declare-fun tp!809230 () Bool)

(assert (=> b!2533150 (= e!1602713 tp!809230)))

(assert (= (and b!2532931 ((_ is ElementMatch!7547) (regOne!15607 r!27340))) b!2533148))

(assert (= (and b!2532931 ((_ is Concat!12243) (regOne!15607 r!27340))) b!2533149))

(assert (= (and b!2532931 ((_ is Star!7547) (regOne!15607 r!27340))) b!2533150))

(assert (= (and b!2532931 ((_ is Union!7547) (regOne!15607 r!27340))) b!2533151))

(declare-fun b!2533152 () Bool)

(declare-fun e!1602714 () Bool)

(assert (=> b!2533152 (= e!1602714 tp_is_empty!12949)))

(declare-fun b!2533153 () Bool)

(declare-fun tp!809232 () Bool)

(declare-fun tp!809236 () Bool)

(assert (=> b!2533153 (= e!1602714 (and tp!809232 tp!809236))))

(declare-fun b!2533155 () Bool)

(declare-fun tp!809234 () Bool)

(declare-fun tp!809233 () Bool)

(assert (=> b!2533155 (= e!1602714 (and tp!809234 tp!809233))))

(assert (=> b!2532931 (= tp!809176 e!1602714)))

(declare-fun b!2533154 () Bool)

(declare-fun tp!809235 () Bool)

(assert (=> b!2533154 (= e!1602714 tp!809235)))

(assert (= (and b!2532931 ((_ is ElementMatch!7547) (regTwo!15607 r!27340))) b!2533152))

(assert (= (and b!2532931 ((_ is Concat!12243) (regTwo!15607 r!27340))) b!2533153))

(assert (= (and b!2532931 ((_ is Star!7547) (regTwo!15607 r!27340))) b!2533154))

(assert (= (and b!2532931 ((_ is Union!7547) (regTwo!15607 r!27340))) b!2533155))

(declare-fun b!2533156 () Bool)

(declare-fun e!1602715 () Bool)

(assert (=> b!2533156 (= e!1602715 tp_is_empty!12949)))

(declare-fun b!2533157 () Bool)

(declare-fun tp!809237 () Bool)

(declare-fun tp!809241 () Bool)

(assert (=> b!2533157 (= e!1602715 (and tp!809237 tp!809241))))

(declare-fun b!2533159 () Bool)

(declare-fun tp!809239 () Bool)

(declare-fun tp!809238 () Bool)

(assert (=> b!2533159 (= e!1602715 (and tp!809239 tp!809238))))

(assert (=> b!2532932 (= tp!809174 e!1602715)))

(declare-fun b!2533158 () Bool)

(declare-fun tp!809240 () Bool)

(assert (=> b!2533158 (= e!1602715 tp!809240)))

(assert (= (and b!2532932 ((_ is ElementMatch!7547) (reg!7876 r!27340))) b!2533156))

(assert (= (and b!2532932 ((_ is Concat!12243) (reg!7876 r!27340))) b!2533157))

(assert (= (and b!2532932 ((_ is Star!7547) (reg!7876 r!27340))) b!2533158))

(assert (= (and b!2532932 ((_ is Union!7547) (reg!7876 r!27340))) b!2533159))

(declare-fun b!2533160 () Bool)

(declare-fun e!1602716 () Bool)

(assert (=> b!2533160 (= e!1602716 tp_is_empty!12949)))

(declare-fun b!2533161 () Bool)

(declare-fun tp!809242 () Bool)

(declare-fun tp!809246 () Bool)

(assert (=> b!2533161 (= e!1602716 (and tp!809242 tp!809246))))

(declare-fun b!2533163 () Bool)

(declare-fun tp!809244 () Bool)

(declare-fun tp!809243 () Bool)

(assert (=> b!2533163 (= e!1602716 (and tp!809244 tp!809243))))

(assert (=> b!2532927 (= tp!809177 e!1602716)))

(declare-fun b!2533162 () Bool)

(declare-fun tp!809245 () Bool)

(assert (=> b!2533162 (= e!1602716 tp!809245)))

(assert (= (and b!2532927 ((_ is ElementMatch!7547) (regOne!15606 r!27340))) b!2533160))

(assert (= (and b!2532927 ((_ is Concat!12243) (regOne!15606 r!27340))) b!2533161))

(assert (= (and b!2532927 ((_ is Star!7547) (regOne!15606 r!27340))) b!2533162))

(assert (= (and b!2532927 ((_ is Union!7547) (regOne!15606 r!27340))) b!2533163))

(declare-fun b!2533164 () Bool)

(declare-fun e!1602717 () Bool)

(assert (=> b!2533164 (= e!1602717 tp_is_empty!12949)))

(declare-fun b!2533165 () Bool)

(declare-fun tp!809247 () Bool)

(declare-fun tp!809251 () Bool)

(assert (=> b!2533165 (= e!1602717 (and tp!809247 tp!809251))))

(declare-fun b!2533167 () Bool)

(declare-fun tp!809249 () Bool)

(declare-fun tp!809248 () Bool)

(assert (=> b!2533167 (= e!1602717 (and tp!809249 tp!809248))))

(assert (=> b!2532927 (= tp!809173 e!1602717)))

(declare-fun b!2533166 () Bool)

(declare-fun tp!809250 () Bool)

(assert (=> b!2533166 (= e!1602717 tp!809250)))

(assert (= (and b!2532927 ((_ is ElementMatch!7547) (regTwo!15606 r!27340))) b!2533164))

(assert (= (and b!2532927 ((_ is Concat!12243) (regTwo!15606 r!27340))) b!2533165))

(assert (= (and b!2532927 ((_ is Star!7547) (regTwo!15606 r!27340))) b!2533166))

(assert (= (and b!2532927 ((_ is Union!7547) (regTwo!15606 r!27340))) b!2533167))

(declare-fun b!2533172 () Bool)

(declare-fun e!1602720 () Bool)

(declare-fun tp!809254 () Bool)

(assert (=> b!2533172 (= e!1602720 (and tp_is_empty!12949 tp!809254))))

(assert (=> b!2532933 (= tp!809178 e!1602720)))

(assert (= (and b!2532933 ((_ is Cons!29512) (t!211311 tl!4068))) b!2533172))

(check-sat (not b!2533158) (not b!2533166) (not b!2533155) (not b!2533165) (not b!2533149) (not b!2533153) (not b!2533162) (not b!2533150) (not b!2533159) (not bm!158954) (not d!720151) (not b!2533167) (not b!2533151) (not d!720133) (not d!720129) (not b!2533110) (not bm!158921) (not d!720153) (not b!2533082) (not d!720131) (not b!2533163) (not b!2533020) (not d!720155) (not b!2533094) (not b!2533172) (not bm!158952) (not b!2533065) (not b!2532957) tp_is_empty!12949 (not bm!158951) (not bm!158945) (not bm!158922) (not bm!158955) (not b!2533154) (not b!2533157) (not bm!158944) (not b!2533161))
(check-sat)
