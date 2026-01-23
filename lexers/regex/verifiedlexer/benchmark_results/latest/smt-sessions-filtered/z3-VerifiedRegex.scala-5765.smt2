; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285440 () Bool)

(assert start!285440)

(declare-fun b!2937835 () Bool)

(declare-fun e!1851778 () Bool)

(declare-fun tp!940602 () Bool)

(declare-fun tp!940604 () Bool)

(assert (=> b!2937835 (= e!1851778 (and tp!940602 tp!940604))))

(declare-fun b!2937836 () Bool)

(declare-fun res!1212738 () Bool)

(declare-fun e!1851777 () Bool)

(assert (=> b!2937836 (=> res!1212738 e!1851777)))

(declare-datatypes ((C!18348 0))(
  ( (C!18349 (val!11210 Int)) )
))
(declare-datatypes ((List!34946 0))(
  ( (Nil!34822) (Cons!34822 (h!40242 C!18348) (t!234011 List!34946)) )
))
(declare-fun s!11993 () List!34946)

(declare-fun isEmpty!19083 (List!34946) Bool)

(assert (=> b!2937836 (= res!1212738 (isEmpty!19083 s!11993))))

(declare-fun b!2937837 () Bool)

(declare-fun e!1851776 () Bool)

(declare-datatypes ((Regex!9081 0))(
  ( (ElementMatch!9081 (c!480117 C!18348)) (Concat!14402 (regOne!18674 Regex!9081) (regTwo!18674 Regex!9081)) (EmptyExpr!9081) (Star!9081 (reg!9410 Regex!9081)) (EmptyLang!9081) (Union!9081 (regOne!18675 Regex!9081) (regTwo!18675 Regex!9081)) )
))
(declare-fun r!17423 () Regex!9081)

(declare-fun validRegex!3814 (Regex!9081) Bool)

(assert (=> b!2937837 (= e!1851776 (validRegex!3814 (regOne!18674 r!17423)))))

(declare-fun lt!1029489 () Regex!9081)

(declare-fun matchR!3963 (Regex!9081 List!34946) Bool)

(assert (=> b!2937837 (= (matchR!3963 (regOne!18674 r!17423) s!11993) (matchR!3963 lt!1029489 s!11993))))

(declare-datatypes ((Unit!48541 0))(
  ( (Unit!48542) )
))
(declare-fun lt!1029491 () Unit!48541)

(declare-fun lemmaSimplifySound!74 (Regex!9081 List!34946) Unit!48541)

(assert (=> b!2937837 (= lt!1029491 (lemmaSimplifySound!74 (regOne!18674 r!17423) s!11993))))

(declare-fun b!2937838 () Bool)

(declare-fun e!1851775 () Bool)

(declare-fun tp_is_empty!15725 () Bool)

(declare-fun tp!940600 () Bool)

(assert (=> b!2937838 (= e!1851775 (and tp_is_empty!15725 tp!940600))))

(declare-fun b!2937840 () Bool)

(assert (=> b!2937840 (= e!1851777 e!1851776)))

(declare-fun res!1212735 () Bool)

(assert (=> b!2937840 (=> res!1212735 e!1851776)))

(declare-fun isEmptyLang!209 (Regex!9081) Bool)

(assert (=> b!2937840 (= res!1212735 (not (isEmptyLang!209 lt!1029489)))))

(declare-fun lt!1029488 () Regex!9081)

(declare-fun simplify!86 (Regex!9081) Regex!9081)

(assert (=> b!2937840 (= lt!1029488 (simplify!86 (regTwo!18674 r!17423)))))

(assert (=> b!2937840 (= lt!1029489 (simplify!86 (regOne!18674 r!17423)))))

(declare-fun b!2937841 () Bool)

(assert (=> b!2937841 (= e!1851778 tp_is_empty!15725)))

(declare-fun b!2937842 () Bool)

(declare-fun e!1851779 () Bool)

(assert (=> b!2937842 (= e!1851779 (not e!1851777))))

(declare-fun res!1212736 () Bool)

(assert (=> b!2937842 (=> res!1212736 e!1851777)))

(declare-fun lt!1029490 () Bool)

(get-info :version)

(assert (=> b!2937842 (= res!1212736 (or lt!1029490 (not ((_ is Concat!14402) r!17423))))))

(declare-fun matchRSpec!1218 (Regex!9081 List!34946) Bool)

(assert (=> b!2937842 (= lt!1029490 (matchRSpec!1218 r!17423 s!11993))))

(assert (=> b!2937842 (= lt!1029490 (matchR!3963 r!17423 s!11993))))

(declare-fun lt!1029487 () Unit!48541)

(declare-fun mainMatchTheorem!1218 (Regex!9081 List!34946) Unit!48541)

(assert (=> b!2937842 (= lt!1029487 (mainMatchTheorem!1218 r!17423 s!11993))))

(declare-fun b!2937843 () Bool)

(declare-fun tp!940603 () Bool)

(declare-fun tp!940605 () Bool)

(assert (=> b!2937843 (= e!1851778 (and tp!940603 tp!940605))))

(declare-fun b!2937839 () Bool)

(declare-fun tp!940601 () Bool)

(assert (=> b!2937839 (= e!1851778 tp!940601)))

(declare-fun res!1212737 () Bool)

(assert (=> start!285440 (=> (not res!1212737) (not e!1851779))))

(assert (=> start!285440 (= res!1212737 (validRegex!3814 r!17423))))

(assert (=> start!285440 e!1851779))

(assert (=> start!285440 e!1851778))

(assert (=> start!285440 e!1851775))

(assert (= (and start!285440 res!1212737) b!2937842))

(assert (= (and b!2937842 (not res!1212736)) b!2937836))

(assert (= (and b!2937836 (not res!1212738)) b!2937840))

(assert (= (and b!2937840 (not res!1212735)) b!2937837))

(assert (= (and start!285440 ((_ is ElementMatch!9081) r!17423)) b!2937841))

(assert (= (and start!285440 ((_ is Concat!14402) r!17423)) b!2937843))

(assert (= (and start!285440 ((_ is Star!9081) r!17423)) b!2937839))

(assert (= (and start!285440 ((_ is Union!9081) r!17423)) b!2937835))

(assert (= (and start!285440 ((_ is Cons!34822) s!11993)) b!2937838))

(declare-fun m!3324221 () Bool)

(assert (=> b!2937842 m!3324221))

(declare-fun m!3324223 () Bool)

(assert (=> b!2937842 m!3324223))

(declare-fun m!3324225 () Bool)

(assert (=> b!2937842 m!3324225))

(declare-fun m!3324227 () Bool)

(assert (=> b!2937840 m!3324227))

(declare-fun m!3324229 () Bool)

(assert (=> b!2937840 m!3324229))

(declare-fun m!3324231 () Bool)

(assert (=> b!2937840 m!3324231))

(declare-fun m!3324233 () Bool)

(assert (=> start!285440 m!3324233))

(declare-fun m!3324235 () Bool)

(assert (=> b!2937836 m!3324235))

(declare-fun m!3324237 () Bool)

(assert (=> b!2937837 m!3324237))

(declare-fun m!3324239 () Bool)

(assert (=> b!2937837 m!3324239))

(declare-fun m!3324241 () Bool)

(assert (=> b!2937837 m!3324241))

(declare-fun m!3324243 () Bool)

(assert (=> b!2937837 m!3324243))

(check-sat (not start!285440) (not b!2937843) (not b!2937838) (not b!2937835) (not b!2937837) (not b!2937840) tp_is_empty!15725 (not b!2937839) (not b!2937842) (not b!2937836))
(check-sat)
(get-model)

(declare-fun d!839950 () Bool)

(assert (=> d!839950 (= (isEmpty!19083 s!11993) ((_ is Nil!34822) s!11993))))

(assert (=> b!2937836 d!839950))

(declare-fun d!839952 () Bool)

(assert (=> d!839952 (= (isEmptyLang!209 lt!1029489) ((_ is EmptyLang!9081) lt!1029489))))

(assert (=> b!2937840 d!839952))

(declare-fun b!2937944 () Bool)

(declare-fun e!1851839 () Regex!9081)

(declare-fun lt!1029519 () Regex!9081)

(assert (=> b!2937944 (= e!1851839 lt!1029519)))

(declare-fun b!2937945 () Bool)

(declare-fun e!1851840 () Regex!9081)

(declare-fun lt!1029517 () Regex!9081)

(assert (=> b!2937945 (= e!1851840 (Star!9081 lt!1029517))))

(declare-fun bm!193216 () Bool)

(declare-fun call!193225 () Regex!9081)

(declare-fun call!193227 () Regex!9081)

(assert (=> bm!193216 (= call!193225 call!193227)))

(declare-fun b!2937946 () Bool)

(declare-fun e!1851844 () Bool)

(declare-fun call!193222 () Bool)

(assert (=> b!2937946 (= e!1851844 call!193222)))

(declare-fun b!2937947 () Bool)

(declare-fun e!1851837 () Regex!9081)

(declare-fun e!1851838 () Regex!9081)

(assert (=> b!2937947 (= e!1851837 e!1851838)))

(declare-fun c!480166 () Bool)

(assert (=> b!2937947 (= c!480166 ((_ is ElementMatch!9081) (regTwo!18674 r!17423)))))

(declare-fun b!2937948 () Bool)

(declare-fun e!1851847 () Regex!9081)

(assert (=> b!2937948 (= e!1851847 e!1851839)))

(declare-fun lt!1029520 () Regex!9081)

(assert (=> b!2937948 (= lt!1029520 call!193225)))

(declare-fun call!193226 () Regex!9081)

(assert (=> b!2937948 (= lt!1029519 call!193226)))

(declare-fun c!480165 () Bool)

(declare-fun call!193223 () Bool)

(assert (=> b!2937948 (= c!480165 call!193223)))

(declare-fun b!2937949 () Bool)

(declare-fun c!480170 () Bool)

(declare-fun lt!1029518 () Regex!9081)

(declare-fun isEmptyExpr!294 (Regex!9081) Bool)

(assert (=> b!2937949 (= c!480170 (isEmptyExpr!294 lt!1029518))))

(declare-fun e!1851841 () Regex!9081)

(declare-fun e!1851842 () Regex!9081)

(assert (=> b!2937949 (= e!1851841 e!1851842)))

(declare-fun b!2937950 () Bool)

(assert (=> b!2937950 (= e!1851837 EmptyLang!9081)))

(declare-fun b!2937951 () Bool)

(assert (=> b!2937951 (= e!1851847 e!1851841)))

(assert (=> b!2937951 (= lt!1029518 call!193226)))

(declare-fun lt!1029516 () Regex!9081)

(assert (=> b!2937951 (= lt!1029516 call!193225)))

(declare-fun res!1212752 () Bool)

(assert (=> b!2937951 (= res!1212752 call!193223)))

(declare-fun e!1851843 () Bool)

(assert (=> b!2937951 (=> res!1212752 e!1851843)))

(declare-fun c!480169 () Bool)

(assert (=> b!2937951 (= c!480169 e!1851843)))

(declare-fun b!2937953 () Bool)

(declare-fun e!1851846 () Regex!9081)

(assert (=> b!2937953 (= e!1851846 EmptyExpr!9081)))

(declare-fun b!2937954 () Bool)

(assert (=> b!2937954 (= e!1851842 lt!1029516)))

(declare-fun b!2937955 () Bool)

(declare-fun c!480162 () Bool)

(declare-fun call!193224 () Bool)

(assert (=> b!2937955 (= c!480162 call!193224)))

(declare-fun e!1851848 () Regex!9081)

(assert (=> b!2937955 (= e!1851839 e!1851848)))

(declare-fun c!480167 () Bool)

(declare-fun call!193221 () Bool)

(declare-fun bm!193217 () Bool)

(declare-fun c!480164 () Bool)

(assert (=> bm!193217 (= call!193221 (isEmptyLang!209 (ite c!480164 lt!1029517 (ite c!480167 lt!1029520 lt!1029518))))))

(declare-fun b!2937956 () Bool)

(declare-fun e!1851849 () Regex!9081)

(assert (=> b!2937956 (= e!1851846 e!1851849)))

(assert (=> b!2937956 (= c!480164 ((_ is Star!9081) (regTwo!18674 r!17423)))))

(declare-fun bm!193218 () Bool)

(assert (=> bm!193218 (= call!193222 (isEmptyExpr!294 (ite c!480164 lt!1029517 lt!1029516)))))

(declare-fun bm!193219 () Bool)

(assert (=> bm!193219 (= call!193223 call!193221)))

(declare-fun b!2937957 () Bool)

(declare-fun e!1851845 () Bool)

(declare-fun lt!1029521 () Regex!9081)

(declare-fun nullable!2867 (Regex!9081) Bool)

(assert (=> b!2937957 (= e!1851845 (= (nullable!2867 lt!1029521) (nullable!2867 (regTwo!18674 r!17423))))))

(declare-fun b!2937958 () Bool)

(declare-fun e!1851836 () Regex!9081)

(assert (=> b!2937958 (= e!1851842 e!1851836)))

(declare-fun c!480171 () Bool)

(assert (=> b!2937958 (= c!480171 call!193222)))

(declare-fun bm!193220 () Bool)

(assert (=> bm!193220 (= call!193227 (simplify!86 (ite c!480164 (reg!9410 (regTwo!18674 r!17423)) (ite c!480167 (regOne!18675 (regTwo!18674 r!17423)) (regTwo!18674 (regTwo!18674 r!17423))))))))

(declare-fun b!2937959 () Bool)

(assert (=> b!2937959 (= e!1851848 (Union!9081 lt!1029520 lt!1029519))))

(declare-fun bm!193221 () Bool)

(assert (=> bm!193221 (= call!193226 (simplify!86 (ite c!480167 (regTwo!18675 (regTwo!18674 r!17423)) (regOne!18674 (regTwo!18674 r!17423)))))))

(declare-fun b!2937960 () Bool)

(assert (=> b!2937960 (= e!1851843 call!193224)))

(declare-fun b!2937961 () Bool)

(assert (=> b!2937961 (= e!1851836 lt!1029518)))

(declare-fun b!2937962 () Bool)

(assert (=> b!2937962 (= e!1851840 EmptyExpr!9081)))

(declare-fun b!2937963 () Bool)

(assert (=> b!2937963 (= e!1851838 (regTwo!18674 r!17423))))

(declare-fun bm!193222 () Bool)

(assert (=> bm!193222 (= call!193224 (isEmptyLang!209 (ite c!480167 lt!1029519 lt!1029516)))))

(declare-fun b!2937964 () Bool)

(assert (=> b!2937964 (= e!1851836 (Concat!14402 lt!1029518 lt!1029516))))

(declare-fun b!2937965 () Bool)

(declare-fun c!480168 () Bool)

(assert (=> b!2937965 (= c!480168 ((_ is EmptyExpr!9081) (regTwo!18674 r!17423)))))

(assert (=> b!2937965 (= e!1851838 e!1851846)))

(declare-fun b!2937966 () Bool)

(assert (=> b!2937966 (= c!480167 ((_ is Union!9081) (regTwo!18674 r!17423)))))

(assert (=> b!2937966 (= e!1851849 e!1851847)))

(declare-fun d!839954 () Bool)

(assert (=> d!839954 e!1851845))

(declare-fun res!1212753 () Bool)

(assert (=> d!839954 (=> (not res!1212753) (not e!1851845))))

(assert (=> d!839954 (= res!1212753 (validRegex!3814 lt!1029521))))

(assert (=> d!839954 (= lt!1029521 e!1851837)))

(declare-fun c!480172 () Bool)

(assert (=> d!839954 (= c!480172 ((_ is EmptyLang!9081) (regTwo!18674 r!17423)))))

(assert (=> d!839954 (validRegex!3814 (regTwo!18674 r!17423))))

(assert (=> d!839954 (= (simplify!86 (regTwo!18674 r!17423)) lt!1029521)))

(declare-fun b!2937952 () Bool)

(assert (=> b!2937952 (= e!1851841 EmptyLang!9081)))

(declare-fun b!2937967 () Bool)

(assert (=> b!2937967 (= e!1851848 lt!1029520)))

(declare-fun b!2937968 () Bool)

(declare-fun c!480163 () Bool)

(assert (=> b!2937968 (= c!480163 e!1851844)))

(declare-fun res!1212751 () Bool)

(assert (=> b!2937968 (=> res!1212751 e!1851844)))

(assert (=> b!2937968 (= res!1212751 call!193221)))

(assert (=> b!2937968 (= lt!1029517 call!193227)))

(assert (=> b!2937968 (= e!1851849 e!1851840)))

(assert (= (and d!839954 c!480172) b!2937950))

(assert (= (and d!839954 (not c!480172)) b!2937947))

(assert (= (and b!2937947 c!480166) b!2937963))

(assert (= (and b!2937947 (not c!480166)) b!2937965))

(assert (= (and b!2937965 c!480168) b!2937953))

(assert (= (and b!2937965 (not c!480168)) b!2937956))

(assert (= (and b!2937956 c!480164) b!2937968))

(assert (= (and b!2937956 (not c!480164)) b!2937966))

(assert (= (and b!2937968 (not res!1212751)) b!2937946))

(assert (= (and b!2937968 c!480163) b!2937962))

(assert (= (and b!2937968 (not c!480163)) b!2937945))

(assert (= (and b!2937966 c!480167) b!2937948))

(assert (= (and b!2937966 (not c!480167)) b!2937951))

(assert (= (and b!2937948 c!480165) b!2937944))

(assert (= (and b!2937948 (not c!480165)) b!2937955))

(assert (= (and b!2937955 c!480162) b!2937967))

(assert (= (and b!2937955 (not c!480162)) b!2937959))

(assert (= (and b!2937951 (not res!1212752)) b!2937960))

(assert (= (and b!2937951 c!480169) b!2937952))

(assert (= (and b!2937951 (not c!480169)) b!2937949))

(assert (= (and b!2937949 c!480170) b!2937954))

(assert (= (and b!2937949 (not c!480170)) b!2937958))

(assert (= (and b!2937958 c!480171) b!2937961))

(assert (= (and b!2937958 (not c!480171)) b!2937964))

(assert (= (or b!2937948 b!2937951) bm!193216))

(assert (= (or b!2937948 b!2937951) bm!193221))

(assert (= (or b!2937955 b!2937960) bm!193222))

(assert (= (or b!2937948 b!2937951) bm!193219))

(assert (= (or b!2937946 b!2937958) bm!193218))

(assert (= (or b!2937968 bm!193216) bm!193220))

(assert (= (or b!2937968 bm!193219) bm!193217))

(assert (= (and d!839954 res!1212753) b!2937957))

(declare-fun m!3324245 () Bool)

(assert (=> bm!193221 m!3324245))

(declare-fun m!3324247 () Bool)

(assert (=> b!2937957 m!3324247))

(declare-fun m!3324249 () Bool)

(assert (=> b!2937957 m!3324249))

(declare-fun m!3324251 () Bool)

(assert (=> bm!193217 m!3324251))

(declare-fun m!3324253 () Bool)

(assert (=> b!2937949 m!3324253))

(declare-fun m!3324255 () Bool)

(assert (=> bm!193220 m!3324255))

(declare-fun m!3324257 () Bool)

(assert (=> bm!193218 m!3324257))

(declare-fun m!3324259 () Bool)

(assert (=> bm!193222 m!3324259))

(declare-fun m!3324261 () Bool)

(assert (=> d!839954 m!3324261))

(declare-fun m!3324263 () Bool)

(assert (=> d!839954 m!3324263))

(assert (=> b!2937840 d!839954))

(declare-fun b!2937969 () Bool)

(declare-fun e!1851853 () Regex!9081)

(declare-fun lt!1029525 () Regex!9081)

(assert (=> b!2937969 (= e!1851853 lt!1029525)))

(declare-fun b!2937970 () Bool)

(declare-fun e!1851854 () Regex!9081)

(declare-fun lt!1029523 () Regex!9081)

(assert (=> b!2937970 (= e!1851854 (Star!9081 lt!1029523))))

(declare-fun bm!193223 () Bool)

(declare-fun call!193232 () Regex!9081)

(declare-fun call!193234 () Regex!9081)

(assert (=> bm!193223 (= call!193232 call!193234)))

(declare-fun b!2937971 () Bool)

(declare-fun e!1851858 () Bool)

(declare-fun call!193229 () Bool)

(assert (=> b!2937971 (= e!1851858 call!193229)))

(declare-fun b!2937972 () Bool)

(declare-fun e!1851851 () Regex!9081)

(declare-fun e!1851852 () Regex!9081)

(assert (=> b!2937972 (= e!1851851 e!1851852)))

(declare-fun c!480177 () Bool)

(assert (=> b!2937972 (= c!480177 ((_ is ElementMatch!9081) (regOne!18674 r!17423)))))

(declare-fun b!2937973 () Bool)

(declare-fun e!1851861 () Regex!9081)

(assert (=> b!2937973 (= e!1851861 e!1851853)))

(declare-fun lt!1029526 () Regex!9081)

(assert (=> b!2937973 (= lt!1029526 call!193232)))

(declare-fun call!193233 () Regex!9081)

(assert (=> b!2937973 (= lt!1029525 call!193233)))

(declare-fun c!480176 () Bool)

(declare-fun call!193230 () Bool)

(assert (=> b!2937973 (= c!480176 call!193230)))

(declare-fun b!2937974 () Bool)

(declare-fun c!480181 () Bool)

(declare-fun lt!1029524 () Regex!9081)

(assert (=> b!2937974 (= c!480181 (isEmptyExpr!294 lt!1029524))))

(declare-fun e!1851855 () Regex!9081)

(declare-fun e!1851856 () Regex!9081)

(assert (=> b!2937974 (= e!1851855 e!1851856)))

(declare-fun b!2937975 () Bool)

(assert (=> b!2937975 (= e!1851851 EmptyLang!9081)))

(declare-fun b!2937976 () Bool)

(assert (=> b!2937976 (= e!1851861 e!1851855)))

(assert (=> b!2937976 (= lt!1029524 call!193233)))

(declare-fun lt!1029522 () Regex!9081)

(assert (=> b!2937976 (= lt!1029522 call!193232)))

(declare-fun res!1212755 () Bool)

(assert (=> b!2937976 (= res!1212755 call!193230)))

(declare-fun e!1851857 () Bool)

(assert (=> b!2937976 (=> res!1212755 e!1851857)))

(declare-fun c!480180 () Bool)

(assert (=> b!2937976 (= c!480180 e!1851857)))

(declare-fun b!2937978 () Bool)

(declare-fun e!1851860 () Regex!9081)

(assert (=> b!2937978 (= e!1851860 EmptyExpr!9081)))

(declare-fun b!2937979 () Bool)

(assert (=> b!2937979 (= e!1851856 lt!1029522)))

(declare-fun b!2937980 () Bool)

(declare-fun c!480173 () Bool)

(declare-fun call!193231 () Bool)

(assert (=> b!2937980 (= c!480173 call!193231)))

(declare-fun e!1851862 () Regex!9081)

(assert (=> b!2937980 (= e!1851853 e!1851862)))

(declare-fun c!480175 () Bool)

(declare-fun bm!193224 () Bool)

(declare-fun c!480178 () Bool)

(declare-fun call!193228 () Bool)

(assert (=> bm!193224 (= call!193228 (isEmptyLang!209 (ite c!480175 lt!1029523 (ite c!480178 lt!1029526 lt!1029524))))))

(declare-fun b!2937981 () Bool)

(declare-fun e!1851863 () Regex!9081)

(assert (=> b!2937981 (= e!1851860 e!1851863)))

(assert (=> b!2937981 (= c!480175 ((_ is Star!9081) (regOne!18674 r!17423)))))

(declare-fun bm!193225 () Bool)

(assert (=> bm!193225 (= call!193229 (isEmptyExpr!294 (ite c!480175 lt!1029523 lt!1029522)))))

(declare-fun bm!193226 () Bool)

(assert (=> bm!193226 (= call!193230 call!193228)))

(declare-fun b!2937982 () Bool)

(declare-fun e!1851859 () Bool)

(declare-fun lt!1029527 () Regex!9081)

(assert (=> b!2937982 (= e!1851859 (= (nullable!2867 lt!1029527) (nullable!2867 (regOne!18674 r!17423))))))

(declare-fun b!2937983 () Bool)

(declare-fun e!1851850 () Regex!9081)

(assert (=> b!2937983 (= e!1851856 e!1851850)))

(declare-fun c!480182 () Bool)

(assert (=> b!2937983 (= c!480182 call!193229)))

(declare-fun bm!193227 () Bool)

(assert (=> bm!193227 (= call!193234 (simplify!86 (ite c!480175 (reg!9410 (regOne!18674 r!17423)) (ite c!480178 (regOne!18675 (regOne!18674 r!17423)) (regTwo!18674 (regOne!18674 r!17423))))))))

(declare-fun b!2937984 () Bool)

(assert (=> b!2937984 (= e!1851862 (Union!9081 lt!1029526 lt!1029525))))

(declare-fun bm!193228 () Bool)

(assert (=> bm!193228 (= call!193233 (simplify!86 (ite c!480178 (regTwo!18675 (regOne!18674 r!17423)) (regOne!18674 (regOne!18674 r!17423)))))))

(declare-fun b!2937985 () Bool)

(assert (=> b!2937985 (= e!1851857 call!193231)))

(declare-fun b!2937986 () Bool)

(assert (=> b!2937986 (= e!1851850 lt!1029524)))

(declare-fun b!2937987 () Bool)

(assert (=> b!2937987 (= e!1851854 EmptyExpr!9081)))

(declare-fun b!2937988 () Bool)

(assert (=> b!2937988 (= e!1851852 (regOne!18674 r!17423))))

(declare-fun bm!193229 () Bool)

(assert (=> bm!193229 (= call!193231 (isEmptyLang!209 (ite c!480178 lt!1029525 lt!1029522)))))

(declare-fun b!2937989 () Bool)

(assert (=> b!2937989 (= e!1851850 (Concat!14402 lt!1029524 lt!1029522))))

(declare-fun b!2937990 () Bool)

(declare-fun c!480179 () Bool)

(assert (=> b!2937990 (= c!480179 ((_ is EmptyExpr!9081) (regOne!18674 r!17423)))))

(assert (=> b!2937990 (= e!1851852 e!1851860)))

(declare-fun b!2937991 () Bool)

(assert (=> b!2937991 (= c!480178 ((_ is Union!9081) (regOne!18674 r!17423)))))

(assert (=> b!2937991 (= e!1851863 e!1851861)))

(declare-fun d!839962 () Bool)

(assert (=> d!839962 e!1851859))

(declare-fun res!1212756 () Bool)

(assert (=> d!839962 (=> (not res!1212756) (not e!1851859))))

(assert (=> d!839962 (= res!1212756 (validRegex!3814 lt!1029527))))

(assert (=> d!839962 (= lt!1029527 e!1851851)))

(declare-fun c!480183 () Bool)

(assert (=> d!839962 (= c!480183 ((_ is EmptyLang!9081) (regOne!18674 r!17423)))))

(assert (=> d!839962 (validRegex!3814 (regOne!18674 r!17423))))

(assert (=> d!839962 (= (simplify!86 (regOne!18674 r!17423)) lt!1029527)))

(declare-fun b!2937977 () Bool)

(assert (=> b!2937977 (= e!1851855 EmptyLang!9081)))

(declare-fun b!2937992 () Bool)

(assert (=> b!2937992 (= e!1851862 lt!1029526)))

(declare-fun b!2937993 () Bool)

(declare-fun c!480174 () Bool)

(assert (=> b!2937993 (= c!480174 e!1851858)))

(declare-fun res!1212754 () Bool)

(assert (=> b!2937993 (=> res!1212754 e!1851858)))

(assert (=> b!2937993 (= res!1212754 call!193228)))

(assert (=> b!2937993 (= lt!1029523 call!193234)))

(assert (=> b!2937993 (= e!1851863 e!1851854)))

(assert (= (and d!839962 c!480183) b!2937975))

(assert (= (and d!839962 (not c!480183)) b!2937972))

(assert (= (and b!2937972 c!480177) b!2937988))

(assert (= (and b!2937972 (not c!480177)) b!2937990))

(assert (= (and b!2937990 c!480179) b!2937978))

(assert (= (and b!2937990 (not c!480179)) b!2937981))

(assert (= (and b!2937981 c!480175) b!2937993))

(assert (= (and b!2937981 (not c!480175)) b!2937991))

(assert (= (and b!2937993 (not res!1212754)) b!2937971))

(assert (= (and b!2937993 c!480174) b!2937987))

(assert (= (and b!2937993 (not c!480174)) b!2937970))

(assert (= (and b!2937991 c!480178) b!2937973))

(assert (= (and b!2937991 (not c!480178)) b!2937976))

(assert (= (and b!2937973 c!480176) b!2937969))

(assert (= (and b!2937973 (not c!480176)) b!2937980))

(assert (= (and b!2937980 c!480173) b!2937992))

(assert (= (and b!2937980 (not c!480173)) b!2937984))

(assert (= (and b!2937976 (not res!1212755)) b!2937985))

(assert (= (and b!2937976 c!480180) b!2937977))

(assert (= (and b!2937976 (not c!480180)) b!2937974))

(assert (= (and b!2937974 c!480181) b!2937979))

(assert (= (and b!2937974 (not c!480181)) b!2937983))

(assert (= (and b!2937983 c!480182) b!2937986))

(assert (= (and b!2937983 (not c!480182)) b!2937989))

(assert (= (or b!2937973 b!2937976) bm!193223))

(assert (= (or b!2937973 b!2937976) bm!193228))

(assert (= (or b!2937980 b!2937985) bm!193229))

(assert (= (or b!2937973 b!2937976) bm!193226))

(assert (= (or b!2937971 b!2937983) bm!193225))

(assert (= (or b!2937993 bm!193223) bm!193227))

(assert (= (or b!2937993 bm!193226) bm!193224))

(assert (= (and d!839962 res!1212756) b!2937982))

(declare-fun m!3324265 () Bool)

(assert (=> bm!193228 m!3324265))

(declare-fun m!3324267 () Bool)

(assert (=> b!2937982 m!3324267))

(declare-fun m!3324269 () Bool)

(assert (=> b!2937982 m!3324269))

(declare-fun m!3324271 () Bool)

(assert (=> bm!193224 m!3324271))

(declare-fun m!3324273 () Bool)

(assert (=> b!2937974 m!3324273))

(declare-fun m!3324275 () Bool)

(assert (=> bm!193227 m!3324275))

(declare-fun m!3324277 () Bool)

(assert (=> bm!193225 m!3324277))

(declare-fun m!3324279 () Bool)

(assert (=> bm!193229 m!3324279))

(declare-fun m!3324281 () Bool)

(assert (=> d!839962 m!3324281))

(assert (=> d!839962 m!3324237))

(assert (=> b!2937840 d!839962))

(declare-fun bm!193250 () Bool)

(declare-fun call!193256 () Bool)

(declare-fun call!193257 () Bool)

(assert (=> bm!193250 (= call!193256 call!193257)))

(declare-fun b!2938078 () Bool)

(declare-fun e!1851918 () Bool)

(declare-fun e!1851916 () Bool)

(assert (=> b!2938078 (= e!1851918 e!1851916)))

(declare-fun res!1212778 () Bool)

(assert (=> b!2938078 (= res!1212778 (not (nullable!2867 (reg!9410 r!17423))))))

(assert (=> b!2938078 (=> (not res!1212778) (not e!1851916))))

(declare-fun b!2938079 () Bool)

(assert (=> b!2938079 (= e!1851916 call!193257)))

(declare-fun bm!193251 () Bool)

(declare-fun call!193255 () Bool)

(declare-fun c!480216 () Bool)

(assert (=> bm!193251 (= call!193255 (validRegex!3814 (ite c!480216 (regTwo!18675 r!17423) (regOne!18674 r!17423))))))

(declare-fun b!2938080 () Bool)

(declare-fun e!1851919 () Bool)

(assert (=> b!2938080 (= e!1851918 e!1851919)))

(assert (=> b!2938080 (= c!480216 ((_ is Union!9081) r!17423))))

(declare-fun b!2938081 () Bool)

(declare-fun e!1851917 () Bool)

(assert (=> b!2938081 (= e!1851917 call!193256)))

(declare-fun b!2938082 () Bool)

(declare-fun res!1212777 () Bool)

(declare-fun e!1851921 () Bool)

(assert (=> b!2938082 (=> res!1212777 e!1851921)))

(assert (=> b!2938082 (= res!1212777 (not ((_ is Concat!14402) r!17423)))))

(assert (=> b!2938082 (= e!1851919 e!1851921)))

(declare-fun b!2938083 () Bool)

(declare-fun e!1851920 () Bool)

(assert (=> b!2938083 (= e!1851920 e!1851918)))

(declare-fun c!480217 () Bool)

(assert (=> b!2938083 (= c!480217 ((_ is Star!9081) r!17423))))

(declare-fun d!839964 () Bool)

(declare-fun res!1212780 () Bool)

(assert (=> d!839964 (=> res!1212780 e!1851920)))

(assert (=> d!839964 (= res!1212780 ((_ is ElementMatch!9081) r!17423))))

(assert (=> d!839964 (= (validRegex!3814 r!17423) e!1851920)))

(declare-fun b!2938084 () Bool)

(declare-fun e!1851922 () Bool)

(assert (=> b!2938084 (= e!1851922 call!193255)))

(declare-fun b!2938085 () Bool)

(declare-fun res!1212779 () Bool)

(assert (=> b!2938085 (=> (not res!1212779) (not e!1851922))))

(assert (=> b!2938085 (= res!1212779 call!193256)))

(assert (=> b!2938085 (= e!1851919 e!1851922)))

(declare-fun bm!193252 () Bool)

(assert (=> bm!193252 (= call!193257 (validRegex!3814 (ite c!480217 (reg!9410 r!17423) (ite c!480216 (regOne!18675 r!17423) (regTwo!18674 r!17423)))))))

(declare-fun b!2938086 () Bool)

(assert (=> b!2938086 (= e!1851921 e!1851917)))

(declare-fun res!1212781 () Bool)

(assert (=> b!2938086 (=> (not res!1212781) (not e!1851917))))

(assert (=> b!2938086 (= res!1212781 call!193255)))

(assert (= (and d!839964 (not res!1212780)) b!2938083))

(assert (= (and b!2938083 c!480217) b!2938078))

(assert (= (and b!2938083 (not c!480217)) b!2938080))

(assert (= (and b!2938078 res!1212778) b!2938079))

(assert (= (and b!2938080 c!480216) b!2938085))

(assert (= (and b!2938080 (not c!480216)) b!2938082))

(assert (= (and b!2938085 res!1212779) b!2938084))

(assert (= (and b!2938082 (not res!1212777)) b!2938086))

(assert (= (and b!2938086 res!1212781) b!2938081))

(assert (= (or b!2938085 b!2938081) bm!193250))

(assert (= (or b!2938084 b!2938086) bm!193251))

(assert (= (or b!2938079 bm!193250) bm!193252))

(declare-fun m!3324321 () Bool)

(assert (=> b!2938078 m!3324321))

(declare-fun m!3324323 () Bool)

(assert (=> bm!193251 m!3324323))

(declare-fun m!3324325 () Bool)

(assert (=> bm!193252 m!3324325))

(assert (=> start!285440 d!839964))

(declare-fun bm!193253 () Bool)

(declare-fun call!193259 () Bool)

(declare-fun call!193260 () Bool)

(assert (=> bm!193253 (= call!193259 call!193260)))

(declare-fun b!2938093 () Bool)

(declare-fun e!1851929 () Bool)

(declare-fun e!1851927 () Bool)

(assert (=> b!2938093 (= e!1851929 e!1851927)))

(declare-fun res!1212785 () Bool)

(assert (=> b!2938093 (= res!1212785 (not (nullable!2867 (reg!9410 (regOne!18674 r!17423)))))))

(assert (=> b!2938093 (=> (not res!1212785) (not e!1851927))))

(declare-fun b!2938094 () Bool)

(assert (=> b!2938094 (= e!1851927 call!193260)))

(declare-fun bm!193254 () Bool)

(declare-fun call!193258 () Bool)

(declare-fun c!480220 () Bool)

(assert (=> bm!193254 (= call!193258 (validRegex!3814 (ite c!480220 (regTwo!18675 (regOne!18674 r!17423)) (regOne!18674 (regOne!18674 r!17423)))))))

(declare-fun b!2938095 () Bool)

(declare-fun e!1851930 () Bool)

(assert (=> b!2938095 (= e!1851929 e!1851930)))

(assert (=> b!2938095 (= c!480220 ((_ is Union!9081) (regOne!18674 r!17423)))))

(declare-fun b!2938096 () Bool)

(declare-fun e!1851928 () Bool)

(assert (=> b!2938096 (= e!1851928 call!193259)))

(declare-fun b!2938097 () Bool)

(declare-fun res!1212784 () Bool)

(declare-fun e!1851932 () Bool)

(assert (=> b!2938097 (=> res!1212784 e!1851932)))

(assert (=> b!2938097 (= res!1212784 (not ((_ is Concat!14402) (regOne!18674 r!17423))))))

(assert (=> b!2938097 (= e!1851930 e!1851932)))

(declare-fun b!2938098 () Bool)

(declare-fun e!1851931 () Bool)

(assert (=> b!2938098 (= e!1851931 e!1851929)))

(declare-fun c!480221 () Bool)

(assert (=> b!2938098 (= c!480221 ((_ is Star!9081) (regOne!18674 r!17423)))))

(declare-fun d!839970 () Bool)

(declare-fun res!1212787 () Bool)

(assert (=> d!839970 (=> res!1212787 e!1851931)))

(assert (=> d!839970 (= res!1212787 ((_ is ElementMatch!9081) (regOne!18674 r!17423)))))

(assert (=> d!839970 (= (validRegex!3814 (regOne!18674 r!17423)) e!1851931)))

(declare-fun b!2938099 () Bool)

(declare-fun e!1851933 () Bool)

(assert (=> b!2938099 (= e!1851933 call!193258)))

(declare-fun b!2938100 () Bool)

(declare-fun res!1212786 () Bool)

(assert (=> b!2938100 (=> (not res!1212786) (not e!1851933))))

(assert (=> b!2938100 (= res!1212786 call!193259)))

(assert (=> b!2938100 (= e!1851930 e!1851933)))

(declare-fun bm!193255 () Bool)

(assert (=> bm!193255 (= call!193260 (validRegex!3814 (ite c!480221 (reg!9410 (regOne!18674 r!17423)) (ite c!480220 (regOne!18675 (regOne!18674 r!17423)) (regTwo!18674 (regOne!18674 r!17423))))))))

(declare-fun b!2938101 () Bool)

(assert (=> b!2938101 (= e!1851932 e!1851928)))

(declare-fun res!1212788 () Bool)

(assert (=> b!2938101 (=> (not res!1212788) (not e!1851928))))

(assert (=> b!2938101 (= res!1212788 call!193258)))

(assert (= (and d!839970 (not res!1212787)) b!2938098))

(assert (= (and b!2938098 c!480221) b!2938093))

(assert (= (and b!2938098 (not c!480221)) b!2938095))

(assert (= (and b!2938093 res!1212785) b!2938094))

(assert (= (and b!2938095 c!480220) b!2938100))

(assert (= (and b!2938095 (not c!480220)) b!2938097))

(assert (= (and b!2938100 res!1212786) b!2938099))

(assert (= (and b!2938097 (not res!1212784)) b!2938101))

(assert (= (and b!2938101 res!1212788) b!2938096))

(assert (= (or b!2938100 b!2938096) bm!193253))

(assert (= (or b!2938099 b!2938101) bm!193254))

(assert (= (or b!2938094 bm!193253) bm!193255))

(declare-fun m!3324327 () Bool)

(assert (=> b!2938093 m!3324327))

(declare-fun m!3324329 () Bool)

(assert (=> bm!193254 m!3324329))

(declare-fun m!3324331 () Bool)

(assert (=> bm!193255 m!3324331))

(assert (=> b!2937837 d!839970))

(declare-fun b!2938130 () Bool)

(declare-fun e!1851948 () Bool)

(declare-fun e!1851951 () Bool)

(assert (=> b!2938130 (= e!1851948 e!1851951)))

(declare-fun c!480229 () Bool)

(assert (=> b!2938130 (= c!480229 ((_ is EmptyLang!9081) (regOne!18674 r!17423)))))

(declare-fun b!2938131 () Bool)

(declare-fun e!1851954 () Bool)

(declare-fun derivativeStep!2478 (Regex!9081 C!18348) Regex!9081)

(declare-fun head!6537 (List!34946) C!18348)

(declare-fun tail!4763 (List!34946) List!34946)

(assert (=> b!2938131 (= e!1851954 (matchR!3963 (derivativeStep!2478 (regOne!18674 r!17423) (head!6537 s!11993)) (tail!4763 s!11993)))))

(declare-fun bm!193258 () Bool)

(declare-fun call!193263 () Bool)

(assert (=> bm!193258 (= call!193263 (isEmpty!19083 s!11993))))

(declare-fun b!2938133 () Bool)

(declare-fun e!1851949 () Bool)

(assert (=> b!2938133 (= e!1851949 (= (head!6537 s!11993) (c!480117 (regOne!18674 r!17423))))))

(declare-fun b!2938134 () Bool)

(declare-fun e!1851952 () Bool)

(declare-fun e!1851950 () Bool)

(assert (=> b!2938134 (= e!1851952 e!1851950)))

(declare-fun res!1212808 () Bool)

(assert (=> b!2938134 (=> (not res!1212808) (not e!1851950))))

(declare-fun lt!1029542 () Bool)

(assert (=> b!2938134 (= res!1212808 (not lt!1029542))))

(declare-fun b!2938135 () Bool)

(declare-fun e!1851953 () Bool)

(assert (=> b!2938135 (= e!1851950 e!1851953)))

(declare-fun res!1212806 () Bool)

(assert (=> b!2938135 (=> res!1212806 e!1851953)))

(assert (=> b!2938135 (= res!1212806 call!193263)))

(declare-fun b!2938136 () Bool)

(declare-fun res!1212810 () Bool)

(assert (=> b!2938136 (=> res!1212810 e!1851952)))

(assert (=> b!2938136 (= res!1212810 (not ((_ is ElementMatch!9081) (regOne!18674 r!17423))))))

(assert (=> b!2938136 (= e!1851951 e!1851952)))

(declare-fun b!2938137 () Bool)

(assert (=> b!2938137 (= e!1851954 (nullable!2867 (regOne!18674 r!17423)))))

(declare-fun b!2938132 () Bool)

(declare-fun res!1212811 () Bool)

(assert (=> b!2938132 (=> res!1212811 e!1851952)))

(assert (=> b!2938132 (= res!1212811 e!1851949)))

(declare-fun res!1212809 () Bool)

(assert (=> b!2938132 (=> (not res!1212809) (not e!1851949))))

(assert (=> b!2938132 (= res!1212809 lt!1029542)))

(declare-fun d!839972 () Bool)

(assert (=> d!839972 e!1851948))

(declare-fun c!480230 () Bool)

(assert (=> d!839972 (= c!480230 ((_ is EmptyExpr!9081) (regOne!18674 r!17423)))))

(assert (=> d!839972 (= lt!1029542 e!1851954)))

(declare-fun c!480228 () Bool)

(assert (=> d!839972 (= c!480228 (isEmpty!19083 s!11993))))

(assert (=> d!839972 (validRegex!3814 (regOne!18674 r!17423))))

(assert (=> d!839972 (= (matchR!3963 (regOne!18674 r!17423) s!11993) lt!1029542)))

(declare-fun b!2938138 () Bool)

(assert (=> b!2938138 (= e!1851948 (= lt!1029542 call!193263))))

(declare-fun b!2938139 () Bool)

(declare-fun res!1212805 () Bool)

(assert (=> b!2938139 (=> (not res!1212805) (not e!1851949))))

(assert (=> b!2938139 (= res!1212805 (isEmpty!19083 (tail!4763 s!11993)))))

(declare-fun b!2938140 () Bool)

(assert (=> b!2938140 (= e!1851951 (not lt!1029542))))

(declare-fun b!2938141 () Bool)

(assert (=> b!2938141 (= e!1851953 (not (= (head!6537 s!11993) (c!480117 (regOne!18674 r!17423)))))))

(declare-fun b!2938142 () Bool)

(declare-fun res!1212812 () Bool)

(assert (=> b!2938142 (=> res!1212812 e!1851953)))

(assert (=> b!2938142 (= res!1212812 (not (isEmpty!19083 (tail!4763 s!11993))))))

(declare-fun b!2938143 () Bool)

(declare-fun res!1212807 () Bool)

(assert (=> b!2938143 (=> (not res!1212807) (not e!1851949))))

(assert (=> b!2938143 (= res!1212807 (not call!193263))))

(assert (= (and d!839972 c!480228) b!2938137))

(assert (= (and d!839972 (not c!480228)) b!2938131))

(assert (= (and d!839972 c!480230) b!2938138))

(assert (= (and d!839972 (not c!480230)) b!2938130))

(assert (= (and b!2938130 c!480229) b!2938140))

(assert (= (and b!2938130 (not c!480229)) b!2938136))

(assert (= (and b!2938136 (not res!1212810)) b!2938132))

(assert (= (and b!2938132 res!1212809) b!2938143))

(assert (= (and b!2938143 res!1212807) b!2938139))

(assert (= (and b!2938139 res!1212805) b!2938133))

(assert (= (and b!2938132 (not res!1212811)) b!2938134))

(assert (= (and b!2938134 res!1212808) b!2938135))

(assert (= (and b!2938135 (not res!1212806)) b!2938142))

(assert (= (and b!2938142 (not res!1212812)) b!2938141))

(assert (= (or b!2938138 b!2938135 b!2938143) bm!193258))

(declare-fun m!3324333 () Bool)

(assert (=> b!2938131 m!3324333))

(assert (=> b!2938131 m!3324333))

(declare-fun m!3324335 () Bool)

(assert (=> b!2938131 m!3324335))

(declare-fun m!3324337 () Bool)

(assert (=> b!2938131 m!3324337))

(assert (=> b!2938131 m!3324335))

(assert (=> b!2938131 m!3324337))

(declare-fun m!3324339 () Bool)

(assert (=> b!2938131 m!3324339))

(assert (=> b!2938139 m!3324337))

(assert (=> b!2938139 m!3324337))

(declare-fun m!3324341 () Bool)

(assert (=> b!2938139 m!3324341))

(assert (=> d!839972 m!3324235))

(assert (=> d!839972 m!3324237))

(assert (=> bm!193258 m!3324235))

(assert (=> b!2938141 m!3324333))

(assert (=> b!2938133 m!3324333))

(assert (=> b!2938142 m!3324337))

(assert (=> b!2938142 m!3324337))

(assert (=> b!2938142 m!3324341))

(assert (=> b!2938137 m!3324269))

(assert (=> b!2937837 d!839972))

(declare-fun b!2938144 () Bool)

(declare-fun e!1851955 () Bool)

(declare-fun e!1851958 () Bool)

(assert (=> b!2938144 (= e!1851955 e!1851958)))

(declare-fun c!480232 () Bool)

(assert (=> b!2938144 (= c!480232 ((_ is EmptyLang!9081) lt!1029489))))

(declare-fun b!2938145 () Bool)

(declare-fun e!1851961 () Bool)

(assert (=> b!2938145 (= e!1851961 (matchR!3963 (derivativeStep!2478 lt!1029489 (head!6537 s!11993)) (tail!4763 s!11993)))))

(declare-fun bm!193259 () Bool)

(declare-fun call!193264 () Bool)

(assert (=> bm!193259 (= call!193264 (isEmpty!19083 s!11993))))

(declare-fun b!2938147 () Bool)

(declare-fun e!1851956 () Bool)

(assert (=> b!2938147 (= e!1851956 (= (head!6537 s!11993) (c!480117 lt!1029489)))))

(declare-fun b!2938148 () Bool)

(declare-fun e!1851959 () Bool)

(declare-fun e!1851957 () Bool)

(assert (=> b!2938148 (= e!1851959 e!1851957)))

(declare-fun res!1212816 () Bool)

(assert (=> b!2938148 (=> (not res!1212816) (not e!1851957))))

(declare-fun lt!1029543 () Bool)

(assert (=> b!2938148 (= res!1212816 (not lt!1029543))))

(declare-fun b!2938149 () Bool)

(declare-fun e!1851960 () Bool)

(assert (=> b!2938149 (= e!1851957 e!1851960)))

(declare-fun res!1212814 () Bool)

(assert (=> b!2938149 (=> res!1212814 e!1851960)))

(assert (=> b!2938149 (= res!1212814 call!193264)))

(declare-fun b!2938150 () Bool)

(declare-fun res!1212818 () Bool)

(assert (=> b!2938150 (=> res!1212818 e!1851959)))

(assert (=> b!2938150 (= res!1212818 (not ((_ is ElementMatch!9081) lt!1029489)))))

(assert (=> b!2938150 (= e!1851958 e!1851959)))

(declare-fun b!2938151 () Bool)

(assert (=> b!2938151 (= e!1851961 (nullable!2867 lt!1029489))))

(declare-fun b!2938146 () Bool)

(declare-fun res!1212819 () Bool)

(assert (=> b!2938146 (=> res!1212819 e!1851959)))

(assert (=> b!2938146 (= res!1212819 e!1851956)))

(declare-fun res!1212817 () Bool)

(assert (=> b!2938146 (=> (not res!1212817) (not e!1851956))))

(assert (=> b!2938146 (= res!1212817 lt!1029543)))

(declare-fun d!839974 () Bool)

(assert (=> d!839974 e!1851955))

(declare-fun c!480233 () Bool)

(assert (=> d!839974 (= c!480233 ((_ is EmptyExpr!9081) lt!1029489))))

(assert (=> d!839974 (= lt!1029543 e!1851961)))

(declare-fun c!480231 () Bool)

(assert (=> d!839974 (= c!480231 (isEmpty!19083 s!11993))))

(assert (=> d!839974 (validRegex!3814 lt!1029489)))

(assert (=> d!839974 (= (matchR!3963 lt!1029489 s!11993) lt!1029543)))

(declare-fun b!2938152 () Bool)

(assert (=> b!2938152 (= e!1851955 (= lt!1029543 call!193264))))

(declare-fun b!2938153 () Bool)

(declare-fun res!1212813 () Bool)

(assert (=> b!2938153 (=> (not res!1212813) (not e!1851956))))

(assert (=> b!2938153 (= res!1212813 (isEmpty!19083 (tail!4763 s!11993)))))

(declare-fun b!2938154 () Bool)

(assert (=> b!2938154 (= e!1851958 (not lt!1029543))))

(declare-fun b!2938155 () Bool)

(assert (=> b!2938155 (= e!1851960 (not (= (head!6537 s!11993) (c!480117 lt!1029489))))))

(declare-fun b!2938156 () Bool)

(declare-fun res!1212820 () Bool)

(assert (=> b!2938156 (=> res!1212820 e!1851960)))

(assert (=> b!2938156 (= res!1212820 (not (isEmpty!19083 (tail!4763 s!11993))))))

(declare-fun b!2938157 () Bool)

(declare-fun res!1212815 () Bool)

(assert (=> b!2938157 (=> (not res!1212815) (not e!1851956))))

(assert (=> b!2938157 (= res!1212815 (not call!193264))))

(assert (= (and d!839974 c!480231) b!2938151))

(assert (= (and d!839974 (not c!480231)) b!2938145))

(assert (= (and d!839974 c!480233) b!2938152))

(assert (= (and d!839974 (not c!480233)) b!2938144))

(assert (= (and b!2938144 c!480232) b!2938154))

(assert (= (and b!2938144 (not c!480232)) b!2938150))

(assert (= (and b!2938150 (not res!1212818)) b!2938146))

(assert (= (and b!2938146 res!1212817) b!2938157))

(assert (= (and b!2938157 res!1212815) b!2938153))

(assert (= (and b!2938153 res!1212813) b!2938147))

(assert (= (and b!2938146 (not res!1212819)) b!2938148))

(assert (= (and b!2938148 res!1212816) b!2938149))

(assert (= (and b!2938149 (not res!1212814)) b!2938156))

(assert (= (and b!2938156 (not res!1212820)) b!2938155))

(assert (= (or b!2938152 b!2938149 b!2938157) bm!193259))

(assert (=> b!2938145 m!3324333))

(assert (=> b!2938145 m!3324333))

(declare-fun m!3324343 () Bool)

(assert (=> b!2938145 m!3324343))

(assert (=> b!2938145 m!3324337))

(assert (=> b!2938145 m!3324343))

(assert (=> b!2938145 m!3324337))

(declare-fun m!3324345 () Bool)

(assert (=> b!2938145 m!3324345))

(assert (=> b!2938153 m!3324337))

(assert (=> b!2938153 m!3324337))

(assert (=> b!2938153 m!3324341))

(assert (=> d!839974 m!3324235))

(declare-fun m!3324347 () Bool)

(assert (=> d!839974 m!3324347))

(assert (=> bm!193259 m!3324235))

(assert (=> b!2938155 m!3324333))

(assert (=> b!2938147 m!3324333))

(assert (=> b!2938156 m!3324337))

(assert (=> b!2938156 m!3324337))

(assert (=> b!2938156 m!3324341))

(declare-fun m!3324349 () Bool)

(assert (=> b!2938151 m!3324349))

(assert (=> b!2937837 d!839974))

(declare-fun d!839976 () Bool)

(assert (=> d!839976 (= (matchR!3963 (regOne!18674 r!17423) s!11993) (matchR!3963 (simplify!86 (regOne!18674 r!17423)) s!11993))))

(declare-fun lt!1029546 () Unit!48541)

(declare-fun choose!17378 (Regex!9081 List!34946) Unit!48541)

(assert (=> d!839976 (= lt!1029546 (choose!17378 (regOne!18674 r!17423) s!11993))))

(assert (=> d!839976 (validRegex!3814 (regOne!18674 r!17423))))

(assert (=> d!839976 (= (lemmaSimplifySound!74 (regOne!18674 r!17423) s!11993) lt!1029546)))

(declare-fun bs!525463 () Bool)

(assert (= bs!525463 d!839976))

(assert (=> bs!525463 m!3324231))

(declare-fun m!3324351 () Bool)

(assert (=> bs!525463 m!3324351))

(declare-fun m!3324353 () Bool)

(assert (=> bs!525463 m!3324353))

(assert (=> bs!525463 m!3324231))

(assert (=> bs!525463 m!3324237))

(assert (=> bs!525463 m!3324239))

(assert (=> b!2937837 d!839976))

(declare-fun b!2938357 () Bool)

(assert (=> b!2938357 true))

(assert (=> b!2938357 true))

(declare-fun bs!525467 () Bool)

(declare-fun b!2938356 () Bool)

(assert (= bs!525467 (and b!2938356 b!2938357)))

(declare-fun lambda!109464 () Int)

(declare-fun lambda!109463 () Int)

(assert (=> bs!525467 (not (= lambda!109464 lambda!109463))))

(assert (=> b!2938356 true))

(assert (=> b!2938356 true))

(declare-fun e!1852068 () Bool)

(declare-fun call!193293 () Bool)

(assert (=> b!2938356 (= e!1852068 call!193293)))

(declare-fun e!1852069 () Bool)

(assert (=> b!2938357 (= e!1852069 call!193293)))

(declare-fun b!2938358 () Bool)

(declare-fun c!480272 () Bool)

(assert (=> b!2938358 (= c!480272 ((_ is ElementMatch!9081) r!17423))))

(declare-fun e!1852065 () Bool)

(declare-fun e!1852067 () Bool)

(assert (=> b!2938358 (= e!1852065 e!1852067)))

(declare-fun b!2938359 () Bool)

(declare-fun e!1852066 () Bool)

(declare-fun e!1852070 () Bool)

(assert (=> b!2938359 (= e!1852066 e!1852070)))

(declare-fun res!1212911 () Bool)

(assert (=> b!2938359 (= res!1212911 (matchRSpec!1218 (regOne!18675 r!17423) s!11993))))

(assert (=> b!2938359 (=> res!1212911 e!1852070)))

(declare-fun b!2938360 () Bool)

(assert (=> b!2938360 (= e!1852066 e!1852068)))

(declare-fun c!480269 () Bool)

(assert (=> b!2938360 (= c!480269 ((_ is Star!9081) r!17423))))

(declare-fun bm!193287 () Bool)

(declare-fun Exists!1441 (Int) Bool)

(assert (=> bm!193287 (= call!193293 (Exists!1441 (ite c!480269 lambda!109463 lambda!109464)))))

(declare-fun bm!193288 () Bool)

(declare-fun call!193292 () Bool)

(assert (=> bm!193288 (= call!193292 (isEmpty!19083 s!11993))))

(declare-fun d!839978 () Bool)

(declare-fun c!480271 () Bool)

(assert (=> d!839978 (= c!480271 ((_ is EmptyExpr!9081) r!17423))))

(declare-fun e!1852064 () Bool)

(assert (=> d!839978 (= (matchRSpec!1218 r!17423 s!11993) e!1852064)))

(declare-fun b!2938361 () Bool)

(declare-fun res!1212910 () Bool)

(assert (=> b!2938361 (=> res!1212910 e!1852069)))

(assert (=> b!2938361 (= res!1212910 call!193292)))

(assert (=> b!2938361 (= e!1852068 e!1852069)))

(declare-fun b!2938362 () Bool)

(assert (=> b!2938362 (= e!1852064 e!1852065)))

(declare-fun res!1212912 () Bool)

(assert (=> b!2938362 (= res!1212912 (not ((_ is EmptyLang!9081) r!17423)))))

(assert (=> b!2938362 (=> (not res!1212912) (not e!1852065))))

(declare-fun b!2938363 () Bool)

(assert (=> b!2938363 (= e!1852070 (matchRSpec!1218 (regTwo!18675 r!17423) s!11993))))

(declare-fun b!2938364 () Bool)

(assert (=> b!2938364 (= e!1852067 (= s!11993 (Cons!34822 (c!480117 r!17423) Nil!34822)))))

(declare-fun b!2938365 () Bool)

(assert (=> b!2938365 (= e!1852064 call!193292)))

(declare-fun b!2938366 () Bool)

(declare-fun c!480270 () Bool)

(assert (=> b!2938366 (= c!480270 ((_ is Union!9081) r!17423))))

(assert (=> b!2938366 (= e!1852067 e!1852066)))

(assert (= (and d!839978 c!480271) b!2938365))

(assert (= (and d!839978 (not c!480271)) b!2938362))

(assert (= (and b!2938362 res!1212912) b!2938358))

(assert (= (and b!2938358 c!480272) b!2938364))

(assert (= (and b!2938358 (not c!480272)) b!2938366))

(assert (= (and b!2938366 c!480270) b!2938359))

(assert (= (and b!2938366 (not c!480270)) b!2938360))

(assert (= (and b!2938359 (not res!1212911)) b!2938363))

(assert (= (and b!2938360 c!480269) b!2938361))

(assert (= (and b!2938360 (not c!480269)) b!2938356))

(assert (= (and b!2938361 (not res!1212910)) b!2938357))

(assert (= (or b!2938357 b!2938356) bm!193287))

(assert (= (or b!2938365 b!2938361) bm!193288))

(declare-fun m!3324403 () Bool)

(assert (=> b!2938359 m!3324403))

(declare-fun m!3324405 () Bool)

(assert (=> bm!193287 m!3324405))

(assert (=> bm!193288 m!3324235))

(declare-fun m!3324407 () Bool)

(assert (=> b!2938363 m!3324407))

(assert (=> b!2937842 d!839978))

(declare-fun b!2938371 () Bool)

(declare-fun e!1852071 () Bool)

(declare-fun e!1852074 () Bool)

(assert (=> b!2938371 (= e!1852071 e!1852074)))

(declare-fun c!480274 () Bool)

(assert (=> b!2938371 (= c!480274 ((_ is EmptyLang!9081) r!17423))))

(declare-fun b!2938372 () Bool)

(declare-fun e!1852077 () Bool)

(assert (=> b!2938372 (= e!1852077 (matchR!3963 (derivativeStep!2478 r!17423 (head!6537 s!11993)) (tail!4763 s!11993)))))

(declare-fun bm!193289 () Bool)

(declare-fun call!193294 () Bool)

(assert (=> bm!193289 (= call!193294 (isEmpty!19083 s!11993))))

(declare-fun b!2938374 () Bool)

(declare-fun e!1852072 () Bool)

(assert (=> b!2938374 (= e!1852072 (= (head!6537 s!11993) (c!480117 r!17423)))))

(declare-fun b!2938375 () Bool)

(declare-fun e!1852075 () Bool)

(declare-fun e!1852073 () Bool)

(assert (=> b!2938375 (= e!1852075 e!1852073)))

(declare-fun res!1212916 () Bool)

(assert (=> b!2938375 (=> (not res!1212916) (not e!1852073))))

(declare-fun lt!1029558 () Bool)

(assert (=> b!2938375 (= res!1212916 (not lt!1029558))))

(declare-fun b!2938376 () Bool)

(declare-fun e!1852076 () Bool)

(assert (=> b!2938376 (= e!1852073 e!1852076)))

(declare-fun res!1212914 () Bool)

(assert (=> b!2938376 (=> res!1212914 e!1852076)))

(assert (=> b!2938376 (= res!1212914 call!193294)))

(declare-fun b!2938377 () Bool)

(declare-fun res!1212918 () Bool)

(assert (=> b!2938377 (=> res!1212918 e!1852075)))

(assert (=> b!2938377 (= res!1212918 (not ((_ is ElementMatch!9081) r!17423)))))

(assert (=> b!2938377 (= e!1852074 e!1852075)))

(declare-fun b!2938378 () Bool)

(assert (=> b!2938378 (= e!1852077 (nullable!2867 r!17423))))

(declare-fun b!2938373 () Bool)

(declare-fun res!1212919 () Bool)

(assert (=> b!2938373 (=> res!1212919 e!1852075)))

(assert (=> b!2938373 (= res!1212919 e!1852072)))

(declare-fun res!1212917 () Bool)

(assert (=> b!2938373 (=> (not res!1212917) (not e!1852072))))

(assert (=> b!2938373 (= res!1212917 lt!1029558)))

(declare-fun d!839994 () Bool)

(assert (=> d!839994 e!1852071))

(declare-fun c!480275 () Bool)

(assert (=> d!839994 (= c!480275 ((_ is EmptyExpr!9081) r!17423))))

(assert (=> d!839994 (= lt!1029558 e!1852077)))

(declare-fun c!480273 () Bool)

(assert (=> d!839994 (= c!480273 (isEmpty!19083 s!11993))))

(assert (=> d!839994 (validRegex!3814 r!17423)))

(assert (=> d!839994 (= (matchR!3963 r!17423 s!11993) lt!1029558)))

(declare-fun b!2938379 () Bool)

(assert (=> b!2938379 (= e!1852071 (= lt!1029558 call!193294))))

(declare-fun b!2938380 () Bool)

(declare-fun res!1212913 () Bool)

(assert (=> b!2938380 (=> (not res!1212913) (not e!1852072))))

(assert (=> b!2938380 (= res!1212913 (isEmpty!19083 (tail!4763 s!11993)))))

(declare-fun b!2938381 () Bool)

(assert (=> b!2938381 (= e!1852074 (not lt!1029558))))

(declare-fun b!2938382 () Bool)

(assert (=> b!2938382 (= e!1852076 (not (= (head!6537 s!11993) (c!480117 r!17423))))))

(declare-fun b!2938383 () Bool)

(declare-fun res!1212920 () Bool)

(assert (=> b!2938383 (=> res!1212920 e!1852076)))

(assert (=> b!2938383 (= res!1212920 (not (isEmpty!19083 (tail!4763 s!11993))))))

(declare-fun b!2938384 () Bool)

(declare-fun res!1212915 () Bool)

(assert (=> b!2938384 (=> (not res!1212915) (not e!1852072))))

(assert (=> b!2938384 (= res!1212915 (not call!193294))))

(assert (= (and d!839994 c!480273) b!2938378))

(assert (= (and d!839994 (not c!480273)) b!2938372))

(assert (= (and d!839994 c!480275) b!2938379))

(assert (= (and d!839994 (not c!480275)) b!2938371))

(assert (= (and b!2938371 c!480274) b!2938381))

(assert (= (and b!2938371 (not c!480274)) b!2938377))

(assert (= (and b!2938377 (not res!1212918)) b!2938373))

(assert (= (and b!2938373 res!1212917) b!2938384))

(assert (= (and b!2938384 res!1212915) b!2938380))

(assert (= (and b!2938380 res!1212913) b!2938374))

(assert (= (and b!2938373 (not res!1212919)) b!2938375))

(assert (= (and b!2938375 res!1212916) b!2938376))

(assert (= (and b!2938376 (not res!1212914)) b!2938383))

(assert (= (and b!2938383 (not res!1212920)) b!2938382))

(assert (= (or b!2938379 b!2938376 b!2938384) bm!193289))

(assert (=> b!2938372 m!3324333))

(assert (=> b!2938372 m!3324333))

(declare-fun m!3324409 () Bool)

(assert (=> b!2938372 m!3324409))

(assert (=> b!2938372 m!3324337))

(assert (=> b!2938372 m!3324409))

(assert (=> b!2938372 m!3324337))

(declare-fun m!3324411 () Bool)

(assert (=> b!2938372 m!3324411))

(assert (=> b!2938380 m!3324337))

(assert (=> b!2938380 m!3324337))

(assert (=> b!2938380 m!3324341))

(assert (=> d!839994 m!3324235))

(assert (=> d!839994 m!3324233))

(assert (=> bm!193289 m!3324235))

(assert (=> b!2938382 m!3324333))

(assert (=> b!2938374 m!3324333))

(assert (=> b!2938383 m!3324337))

(assert (=> b!2938383 m!3324337))

(assert (=> b!2938383 m!3324341))

(declare-fun m!3324413 () Bool)

(assert (=> b!2938378 m!3324413))

(assert (=> b!2937842 d!839994))

(declare-fun d!839996 () Bool)

(assert (=> d!839996 (= (matchR!3963 r!17423 s!11993) (matchRSpec!1218 r!17423 s!11993))))

(declare-fun lt!1029561 () Unit!48541)

(declare-fun choose!17380 (Regex!9081 List!34946) Unit!48541)

(assert (=> d!839996 (= lt!1029561 (choose!17380 r!17423 s!11993))))

(assert (=> d!839996 (validRegex!3814 r!17423)))

(assert (=> d!839996 (= (mainMatchTheorem!1218 r!17423 s!11993) lt!1029561)))

(declare-fun bs!525468 () Bool)

(assert (= bs!525468 d!839996))

(assert (=> bs!525468 m!3324223))

(assert (=> bs!525468 m!3324221))

(declare-fun m!3324415 () Bool)

(assert (=> bs!525468 m!3324415))

(assert (=> bs!525468 m!3324233))

(assert (=> b!2937842 d!839996))

(declare-fun e!1852080 () Bool)

(assert (=> b!2937835 (= tp!940602 e!1852080)))

(declare-fun b!2938396 () Bool)

(declare-fun tp!940658 () Bool)

(declare-fun tp!940657 () Bool)

(assert (=> b!2938396 (= e!1852080 (and tp!940658 tp!940657))))

(declare-fun b!2938398 () Bool)

(declare-fun tp!940654 () Bool)

(declare-fun tp!940655 () Bool)

(assert (=> b!2938398 (= e!1852080 (and tp!940654 tp!940655))))

(declare-fun b!2938395 () Bool)

(assert (=> b!2938395 (= e!1852080 tp_is_empty!15725)))

(declare-fun b!2938397 () Bool)

(declare-fun tp!940656 () Bool)

(assert (=> b!2938397 (= e!1852080 tp!940656)))

(assert (= (and b!2937835 ((_ is ElementMatch!9081) (regOne!18675 r!17423))) b!2938395))

(assert (= (and b!2937835 ((_ is Concat!14402) (regOne!18675 r!17423))) b!2938396))

(assert (= (and b!2937835 ((_ is Star!9081) (regOne!18675 r!17423))) b!2938397))

(assert (= (and b!2937835 ((_ is Union!9081) (regOne!18675 r!17423))) b!2938398))

(declare-fun e!1852081 () Bool)

(assert (=> b!2937835 (= tp!940604 e!1852081)))

(declare-fun b!2938400 () Bool)

(declare-fun tp!940663 () Bool)

(declare-fun tp!940662 () Bool)

(assert (=> b!2938400 (= e!1852081 (and tp!940663 tp!940662))))

(declare-fun b!2938402 () Bool)

(declare-fun tp!940659 () Bool)

(declare-fun tp!940660 () Bool)

(assert (=> b!2938402 (= e!1852081 (and tp!940659 tp!940660))))

(declare-fun b!2938399 () Bool)

(assert (=> b!2938399 (= e!1852081 tp_is_empty!15725)))

(declare-fun b!2938401 () Bool)

(declare-fun tp!940661 () Bool)

(assert (=> b!2938401 (= e!1852081 tp!940661)))

(assert (= (and b!2937835 ((_ is ElementMatch!9081) (regTwo!18675 r!17423))) b!2938399))

(assert (= (and b!2937835 ((_ is Concat!14402) (regTwo!18675 r!17423))) b!2938400))

(assert (= (and b!2937835 ((_ is Star!9081) (regTwo!18675 r!17423))) b!2938401))

(assert (= (and b!2937835 ((_ is Union!9081) (regTwo!18675 r!17423))) b!2938402))

(declare-fun e!1852082 () Bool)

(assert (=> b!2937839 (= tp!940601 e!1852082)))

(declare-fun b!2938404 () Bool)

(declare-fun tp!940668 () Bool)

(declare-fun tp!940667 () Bool)

(assert (=> b!2938404 (= e!1852082 (and tp!940668 tp!940667))))

(declare-fun b!2938406 () Bool)

(declare-fun tp!940664 () Bool)

(declare-fun tp!940665 () Bool)

(assert (=> b!2938406 (= e!1852082 (and tp!940664 tp!940665))))

(declare-fun b!2938403 () Bool)

(assert (=> b!2938403 (= e!1852082 tp_is_empty!15725)))

(declare-fun b!2938405 () Bool)

(declare-fun tp!940666 () Bool)

(assert (=> b!2938405 (= e!1852082 tp!940666)))

(assert (= (and b!2937839 ((_ is ElementMatch!9081) (reg!9410 r!17423))) b!2938403))

(assert (= (and b!2937839 ((_ is Concat!14402) (reg!9410 r!17423))) b!2938404))

(assert (= (and b!2937839 ((_ is Star!9081) (reg!9410 r!17423))) b!2938405))

(assert (= (and b!2937839 ((_ is Union!9081) (reg!9410 r!17423))) b!2938406))

(declare-fun e!1852083 () Bool)

(assert (=> b!2937843 (= tp!940603 e!1852083)))

(declare-fun b!2938408 () Bool)

(declare-fun tp!940673 () Bool)

(declare-fun tp!940672 () Bool)

(assert (=> b!2938408 (= e!1852083 (and tp!940673 tp!940672))))

(declare-fun b!2938410 () Bool)

(declare-fun tp!940669 () Bool)

(declare-fun tp!940670 () Bool)

(assert (=> b!2938410 (= e!1852083 (and tp!940669 tp!940670))))

(declare-fun b!2938407 () Bool)

(assert (=> b!2938407 (= e!1852083 tp_is_empty!15725)))

(declare-fun b!2938409 () Bool)

(declare-fun tp!940671 () Bool)

(assert (=> b!2938409 (= e!1852083 tp!940671)))

(assert (= (and b!2937843 ((_ is ElementMatch!9081) (regOne!18674 r!17423))) b!2938407))

(assert (= (and b!2937843 ((_ is Concat!14402) (regOne!18674 r!17423))) b!2938408))

(assert (= (and b!2937843 ((_ is Star!9081) (regOne!18674 r!17423))) b!2938409))

(assert (= (and b!2937843 ((_ is Union!9081) (regOne!18674 r!17423))) b!2938410))

(declare-fun e!1852084 () Bool)

(assert (=> b!2937843 (= tp!940605 e!1852084)))

(declare-fun b!2938412 () Bool)

(declare-fun tp!940678 () Bool)

(declare-fun tp!940677 () Bool)

(assert (=> b!2938412 (= e!1852084 (and tp!940678 tp!940677))))

(declare-fun b!2938414 () Bool)

(declare-fun tp!940674 () Bool)

(declare-fun tp!940675 () Bool)

(assert (=> b!2938414 (= e!1852084 (and tp!940674 tp!940675))))

(declare-fun b!2938411 () Bool)

(assert (=> b!2938411 (= e!1852084 tp_is_empty!15725)))

(declare-fun b!2938413 () Bool)

(declare-fun tp!940676 () Bool)

(assert (=> b!2938413 (= e!1852084 tp!940676)))

(assert (= (and b!2937843 ((_ is ElementMatch!9081) (regTwo!18674 r!17423))) b!2938411))

(assert (= (and b!2937843 ((_ is Concat!14402) (regTwo!18674 r!17423))) b!2938412))

(assert (= (and b!2937843 ((_ is Star!9081) (regTwo!18674 r!17423))) b!2938413))

(assert (= (and b!2937843 ((_ is Union!9081) (regTwo!18674 r!17423))) b!2938414))

(declare-fun b!2938419 () Bool)

(declare-fun e!1852087 () Bool)

(declare-fun tp!940681 () Bool)

(assert (=> b!2938419 (= e!1852087 (and tp_is_empty!15725 tp!940681))))

(assert (=> b!2937838 (= tp!940600 e!1852087)))

(assert (= (and b!2937838 ((_ is Cons!34822) (t!234011 s!11993))) b!2938419))

(check-sat (not b!2938155) (not bm!193221) (not b!2938131) (not d!839972) (not b!2938412) (not b!2938374) (not bm!193228) (not b!2938153) (not b!2938363) (not b!2938401) (not b!2938372) (not b!2938404) (not b!2938147) (not b!2938383) (not b!2938396) (not bm!193252) (not b!2938405) (not b!2938400) (not d!839994) (not b!2938419) (not bm!193255) (not bm!193251) (not b!2938133) (not bm!193259) (not bm!193227) (not bm!193254) (not bm!193217) (not b!2938382) (not b!2937949) (not bm!193225) (not b!2938409) (not b!2938380) (not d!839976) (not bm!193258) (not b!2938413) (not b!2937957) (not b!2938156) (not b!2937982) (not b!2938398) tp_is_empty!15725 (not b!2938142) (not b!2938151) (not bm!193220) (not bm!193224) (not b!2938093) (not b!2938397) (not b!2938359) (not b!2938410) (not bm!193288) (not bm!193287) (not d!839954) (not b!2938408) (not bm!193218) (not bm!193229) (not d!839962) (not b!2938137) (not b!2938378) (not b!2938078) (not b!2937974) (not b!2938139) (not b!2938141) (not d!839996) (not b!2938406) (not b!2938414) (not bm!193222) (not d!839974) (not b!2938145) (not bm!193289) (not b!2938402))
(check-sat)
