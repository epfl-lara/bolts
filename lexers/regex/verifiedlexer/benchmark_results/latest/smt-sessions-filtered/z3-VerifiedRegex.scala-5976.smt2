; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292612 () Bool)

(assert start!292612)

(declare-fun res!1258979 () Bool)

(declare-fun e!1919855 () Bool)

(assert (=> start!292612 (=> (not res!1258979) (not e!1919855))))

(declare-datatypes ((C!19192 0))(
  ( (C!19193 (val!11632 Int)) )
))
(declare-datatypes ((Regex!9503 0))(
  ( (ElementMatch!9503 (c!509561 C!19192)) (Concat!14824 (regOne!19518 Regex!9503) (regTwo!19518 Regex!9503)) (EmptyExpr!9503) (Star!9503 (reg!9832 Regex!9503)) (EmptyLang!9503) (Union!9503 (regOne!19519 Regex!9503) (regTwo!19519 Regex!9503)) )
))
(declare-fun r!17423 () Regex!9503)

(declare-fun validRegex!4236 (Regex!9503) Bool)

(assert (=> start!292612 (= res!1258979 (validRegex!4236 r!17423))))

(assert (=> start!292612 e!1919855))

(declare-fun e!1919854 () Bool)

(assert (=> start!292612 e!1919854))

(declare-fun e!1919857 () Bool)

(assert (=> start!292612 e!1919857))

(declare-fun b!3066962 () Bool)

(declare-fun e!1919853 () Bool)

(assert (=> b!3066962 (= e!1919853 (validRegex!4236 (regOne!19518 r!17423)))))

(declare-fun b!3066963 () Bool)

(declare-fun res!1258977 () Bool)

(assert (=> b!3066963 (=> res!1258977 e!1919853)))

(declare-fun lt!1050936 () Regex!9503)

(declare-fun isEmptyLang!554 (Regex!9503) Bool)

(assert (=> b!3066963 (= res!1258977 (isEmptyLang!554 lt!1050936))))

(declare-fun b!3066964 () Bool)

(declare-fun tp!968225 () Bool)

(assert (=> b!3066964 (= e!1919854 tp!968225)))

(declare-fun b!3066965 () Bool)

(declare-fun tp!968224 () Bool)

(declare-fun tp!968220 () Bool)

(assert (=> b!3066965 (= e!1919854 (and tp!968224 tp!968220))))

(declare-fun b!3066966 () Bool)

(declare-fun tp_is_empty!16569 () Bool)

(declare-fun tp!968222 () Bool)

(assert (=> b!3066966 (= e!1919857 (and tp_is_empty!16569 tp!968222))))

(declare-fun b!3066967 () Bool)

(declare-fun tp!968223 () Bool)

(declare-fun tp!968221 () Bool)

(assert (=> b!3066967 (= e!1919854 (and tp!968223 tp!968221))))

(declare-fun b!3066968 () Bool)

(declare-fun e!1919856 () Bool)

(assert (=> b!3066968 (= e!1919856 e!1919853)))

(declare-fun res!1258975 () Bool)

(assert (=> b!3066968 (=> res!1258975 e!1919853)))

(declare-fun lt!1050934 () Regex!9503)

(assert (=> b!3066968 (= res!1258975 (isEmptyLang!554 lt!1050934))))

(declare-fun simplify!458 (Regex!9503) Regex!9503)

(assert (=> b!3066968 (= lt!1050936 (simplify!458 (regTwo!19518 r!17423)))))

(assert (=> b!3066968 (= lt!1050934 (simplify!458 (regOne!19518 r!17423)))))

(declare-fun b!3066969 () Bool)

(assert (=> b!3066969 (= e!1919854 tp_is_empty!16569)))

(declare-fun b!3066970 () Bool)

(assert (=> b!3066970 (= e!1919855 (not e!1919856))))

(declare-fun res!1258976 () Bool)

(assert (=> b!3066970 (=> res!1258976 e!1919856)))

(declare-fun lt!1050935 () Bool)

(get-info :version)

(assert (=> b!3066970 (= res!1258976 (or lt!1050935 (not ((_ is Concat!14824) r!17423))))))

(declare-datatypes ((List!35368 0))(
  ( (Nil!35244) (Cons!35244 (h!40664 C!19192) (t!234433 List!35368)) )
))
(declare-fun s!11993 () List!35368)

(declare-fun matchRSpec!1640 (Regex!9503 List!35368) Bool)

(assert (=> b!3066970 (= lt!1050935 (matchRSpec!1640 r!17423 s!11993))))

(declare-fun matchR!4385 (Regex!9503 List!35368) Bool)

(assert (=> b!3066970 (= lt!1050935 (matchR!4385 r!17423 s!11993))))

(declare-datatypes ((Unit!49445 0))(
  ( (Unit!49446) )
))
(declare-fun lt!1050933 () Unit!49445)

(declare-fun mainMatchTheorem!1640 (Regex!9503 List!35368) Unit!49445)

(assert (=> b!3066970 (= lt!1050933 (mainMatchTheorem!1640 r!17423 s!11993))))

(declare-fun b!3066971 () Bool)

(declare-fun res!1258980 () Bool)

(assert (=> b!3066971 (=> res!1258980 e!1919853)))

(declare-fun isEmptyExpr!560 (Regex!9503) Bool)

(assert (=> b!3066971 (= res!1258980 (not (isEmptyExpr!560 lt!1050936)))))

(declare-fun b!3066972 () Bool)

(declare-fun res!1258974 () Bool)

(assert (=> b!3066972 (=> res!1258974 e!1919853)))

(assert (=> b!3066972 (= res!1258974 (isEmptyExpr!560 lt!1050934))))

(declare-fun b!3066973 () Bool)

(declare-fun res!1258978 () Bool)

(assert (=> b!3066973 (=> res!1258978 e!1919856)))

(declare-fun isEmpty!19569 (List!35368) Bool)

(assert (=> b!3066973 (= res!1258978 (isEmpty!19569 s!11993))))

(assert (= (and start!292612 res!1258979) b!3066970))

(assert (= (and b!3066970 (not res!1258976)) b!3066973))

(assert (= (and b!3066973 (not res!1258978)) b!3066968))

(assert (= (and b!3066968 (not res!1258975)) b!3066963))

(assert (= (and b!3066963 (not res!1258977)) b!3066972))

(assert (= (and b!3066972 (not res!1258974)) b!3066971))

(assert (= (and b!3066971 (not res!1258980)) b!3066962))

(assert (= (and start!292612 ((_ is ElementMatch!9503) r!17423)) b!3066969))

(assert (= (and start!292612 ((_ is Concat!14824) r!17423)) b!3066967))

(assert (= (and start!292612 ((_ is Star!9503) r!17423)) b!3066964))

(assert (= (and start!292612 ((_ is Union!9503) r!17423)) b!3066965))

(assert (= (and start!292612 ((_ is Cons!35244) s!11993)) b!3066966))

(declare-fun m!3384105 () Bool)

(assert (=> b!3066968 m!3384105))

(declare-fun m!3384107 () Bool)

(assert (=> b!3066968 m!3384107))

(declare-fun m!3384109 () Bool)

(assert (=> b!3066968 m!3384109))

(declare-fun m!3384111 () Bool)

(assert (=> b!3066972 m!3384111))

(declare-fun m!3384113 () Bool)

(assert (=> b!3066973 m!3384113))

(declare-fun m!3384115 () Bool)

(assert (=> b!3066963 m!3384115))

(declare-fun m!3384117 () Bool)

(assert (=> b!3066971 m!3384117))

(declare-fun m!3384119 () Bool)

(assert (=> b!3066970 m!3384119))

(declare-fun m!3384121 () Bool)

(assert (=> b!3066970 m!3384121))

(declare-fun m!3384123 () Bool)

(assert (=> b!3066970 m!3384123))

(declare-fun m!3384125 () Bool)

(assert (=> start!292612 m!3384125))

(declare-fun m!3384127 () Bool)

(assert (=> b!3066962 m!3384127))

(check-sat (not b!3066966) (not b!3066964) (not b!3066963) tp_is_empty!16569 (not b!3066962) (not b!3066965) (not b!3066972) (not b!3066973) (not b!3066967) (not b!3066971) (not b!3066968) (not start!292612) (not b!3066970))
(check-sat)
(get-model)

(declare-fun b!3066992 () Bool)

(declare-fun e!1919874 () Bool)

(declare-fun call!212571 () Bool)

(assert (=> b!3066992 (= e!1919874 call!212571)))

(declare-fun b!3066993 () Bool)

(declare-fun res!1258994 () Bool)

(declare-fun e!1919875 () Bool)

(assert (=> b!3066993 (=> (not res!1258994) (not e!1919875))))

(assert (=> b!3066993 (= res!1258994 call!212571)))

(declare-fun e!1919873 () Bool)

(assert (=> b!3066993 (= e!1919873 e!1919875)))

(declare-fun b!3066994 () Bool)

(declare-fun e!1919872 () Bool)

(assert (=> b!3066994 (= e!1919872 e!1919873)))

(declare-fun c!509567 () Bool)

(assert (=> b!3066994 (= c!509567 ((_ is Union!9503) r!17423))))

(declare-fun bm!212566 () Bool)

(declare-fun c!509566 () Bool)

(declare-fun call!212572 () Bool)

(assert (=> bm!212566 (= call!212572 (validRegex!4236 (ite c!509566 (reg!9832 r!17423) (ite c!509567 (regOne!19519 r!17423) (regTwo!19518 r!17423)))))))

(declare-fun b!3066995 () Bool)

(declare-fun e!1919876 () Bool)

(assert (=> b!3066995 (= e!1919872 e!1919876)))

(declare-fun res!1258991 () Bool)

(declare-fun nullable!3148 (Regex!9503) Bool)

(assert (=> b!3066995 (= res!1258991 (not (nullable!3148 (reg!9832 r!17423))))))

(assert (=> b!3066995 (=> (not res!1258991) (not e!1919876))))

(declare-fun b!3066996 () Bool)

(declare-fun call!212573 () Bool)

(assert (=> b!3066996 (= e!1919875 call!212573)))

(declare-fun bm!212567 () Bool)

(assert (=> bm!212567 (= call!212571 call!212572)))

(declare-fun d!855863 () Bool)

(declare-fun res!1258993 () Bool)

(declare-fun e!1919877 () Bool)

(assert (=> d!855863 (=> res!1258993 e!1919877)))

(assert (=> d!855863 (= res!1258993 ((_ is ElementMatch!9503) r!17423))))

(assert (=> d!855863 (= (validRegex!4236 r!17423) e!1919877)))

(declare-fun b!3066997 () Bool)

(assert (=> b!3066997 (= e!1919876 call!212572)))

(declare-fun b!3066998 () Bool)

(assert (=> b!3066998 (= e!1919877 e!1919872)))

(assert (=> b!3066998 (= c!509566 ((_ is Star!9503) r!17423))))

(declare-fun b!3066999 () Bool)

(declare-fun res!1258995 () Bool)

(declare-fun e!1919878 () Bool)

(assert (=> b!3066999 (=> res!1258995 e!1919878)))

(assert (=> b!3066999 (= res!1258995 (not ((_ is Concat!14824) r!17423)))))

(assert (=> b!3066999 (= e!1919873 e!1919878)))

(declare-fun bm!212568 () Bool)

(assert (=> bm!212568 (= call!212573 (validRegex!4236 (ite c!509567 (regTwo!19519 r!17423) (regOne!19518 r!17423))))))

(declare-fun b!3067000 () Bool)

(assert (=> b!3067000 (= e!1919878 e!1919874)))

(declare-fun res!1258992 () Bool)

(assert (=> b!3067000 (=> (not res!1258992) (not e!1919874))))

(assert (=> b!3067000 (= res!1258992 call!212573)))

(assert (= (and d!855863 (not res!1258993)) b!3066998))

(assert (= (and b!3066998 c!509566) b!3066995))

(assert (= (and b!3066998 (not c!509566)) b!3066994))

(assert (= (and b!3066995 res!1258991) b!3066997))

(assert (= (and b!3066994 c!509567) b!3066993))

(assert (= (and b!3066994 (not c!509567)) b!3066999))

(assert (= (and b!3066993 res!1258994) b!3066996))

(assert (= (and b!3066999 (not res!1258995)) b!3067000))

(assert (= (and b!3067000 res!1258992) b!3066992))

(assert (= (or b!3066993 b!3066992) bm!212567))

(assert (= (or b!3066996 b!3067000) bm!212568))

(assert (= (or b!3066997 bm!212567) bm!212566))

(declare-fun m!3384129 () Bool)

(assert (=> bm!212566 m!3384129))

(declare-fun m!3384131 () Bool)

(assert (=> b!3066995 m!3384131))

(declare-fun m!3384133 () Bool)

(assert (=> bm!212568 m!3384133))

(assert (=> start!292612 d!855863))

(declare-fun d!855869 () Bool)

(assert (=> d!855869 (= (isEmptyExpr!560 lt!1050936) ((_ is EmptyExpr!9503) lt!1050936))))

(assert (=> b!3066971 d!855869))

(declare-fun d!855873 () Bool)

(assert (=> d!855873 (= (isEmptyExpr!560 lt!1050934) ((_ is EmptyExpr!9503) lt!1050934))))

(assert (=> b!3066972 d!855873))

(declare-fun b!3067001 () Bool)

(declare-fun e!1919881 () Bool)

(declare-fun call!212574 () Bool)

(assert (=> b!3067001 (= e!1919881 call!212574)))

(declare-fun b!3067002 () Bool)

(declare-fun res!1258999 () Bool)

(declare-fun e!1919882 () Bool)

(assert (=> b!3067002 (=> (not res!1258999) (not e!1919882))))

(assert (=> b!3067002 (= res!1258999 call!212574)))

(declare-fun e!1919880 () Bool)

(assert (=> b!3067002 (= e!1919880 e!1919882)))

(declare-fun b!3067003 () Bool)

(declare-fun e!1919879 () Bool)

(assert (=> b!3067003 (= e!1919879 e!1919880)))

(declare-fun c!509569 () Bool)

(assert (=> b!3067003 (= c!509569 ((_ is Union!9503) (regOne!19518 r!17423)))))

(declare-fun call!212575 () Bool)

(declare-fun c!509568 () Bool)

(declare-fun bm!212569 () Bool)

(assert (=> bm!212569 (= call!212575 (validRegex!4236 (ite c!509568 (reg!9832 (regOne!19518 r!17423)) (ite c!509569 (regOne!19519 (regOne!19518 r!17423)) (regTwo!19518 (regOne!19518 r!17423))))))))

(declare-fun b!3067004 () Bool)

(declare-fun e!1919883 () Bool)

(assert (=> b!3067004 (= e!1919879 e!1919883)))

(declare-fun res!1258996 () Bool)

(assert (=> b!3067004 (= res!1258996 (not (nullable!3148 (reg!9832 (regOne!19518 r!17423)))))))

(assert (=> b!3067004 (=> (not res!1258996) (not e!1919883))))

(declare-fun b!3067005 () Bool)

(declare-fun call!212576 () Bool)

(assert (=> b!3067005 (= e!1919882 call!212576)))

(declare-fun bm!212570 () Bool)

(assert (=> bm!212570 (= call!212574 call!212575)))

(declare-fun d!855875 () Bool)

(declare-fun res!1258998 () Bool)

(declare-fun e!1919884 () Bool)

(assert (=> d!855875 (=> res!1258998 e!1919884)))

(assert (=> d!855875 (= res!1258998 ((_ is ElementMatch!9503) (regOne!19518 r!17423)))))

(assert (=> d!855875 (= (validRegex!4236 (regOne!19518 r!17423)) e!1919884)))

(declare-fun b!3067006 () Bool)

(assert (=> b!3067006 (= e!1919883 call!212575)))

(declare-fun b!3067007 () Bool)

(assert (=> b!3067007 (= e!1919884 e!1919879)))

(assert (=> b!3067007 (= c!509568 ((_ is Star!9503) (regOne!19518 r!17423)))))

(declare-fun b!3067008 () Bool)

(declare-fun res!1259000 () Bool)

(declare-fun e!1919885 () Bool)

(assert (=> b!3067008 (=> res!1259000 e!1919885)))

(assert (=> b!3067008 (= res!1259000 (not ((_ is Concat!14824) (regOne!19518 r!17423))))))

(assert (=> b!3067008 (= e!1919880 e!1919885)))

(declare-fun bm!212571 () Bool)

(assert (=> bm!212571 (= call!212576 (validRegex!4236 (ite c!509569 (regTwo!19519 (regOne!19518 r!17423)) (regOne!19518 (regOne!19518 r!17423)))))))

(declare-fun b!3067009 () Bool)

(assert (=> b!3067009 (= e!1919885 e!1919881)))

(declare-fun res!1258997 () Bool)

(assert (=> b!3067009 (=> (not res!1258997) (not e!1919881))))

(assert (=> b!3067009 (= res!1258997 call!212576)))

(assert (= (and d!855875 (not res!1258998)) b!3067007))

(assert (= (and b!3067007 c!509568) b!3067004))

(assert (= (and b!3067007 (not c!509568)) b!3067003))

(assert (= (and b!3067004 res!1258996) b!3067006))

(assert (= (and b!3067003 c!509569) b!3067002))

(assert (= (and b!3067003 (not c!509569)) b!3067008))

(assert (= (and b!3067002 res!1258999) b!3067005))

(assert (= (and b!3067008 (not res!1259000)) b!3067009))

(assert (= (and b!3067009 res!1258997) b!3067001))

(assert (= (or b!3067002 b!3067001) bm!212570))

(assert (= (or b!3067005 b!3067009) bm!212571))

(assert (= (or b!3067006 bm!212570) bm!212569))

(declare-fun m!3384135 () Bool)

(assert (=> bm!212569 m!3384135))

(declare-fun m!3384137 () Bool)

(assert (=> b!3067004 m!3384137))

(declare-fun m!3384139 () Bool)

(assert (=> bm!212571 m!3384139))

(assert (=> b!3066962 d!855875))

(declare-fun d!855877 () Bool)

(assert (=> d!855877 (= (isEmpty!19569 s!11993) ((_ is Nil!35244) s!11993))))

(assert (=> b!3066973 d!855877))

(declare-fun d!855879 () Bool)

(assert (=> d!855879 (= (isEmptyLang!554 lt!1050934) ((_ is EmptyLang!9503) lt!1050934))))

(assert (=> b!3066968 d!855879))

(declare-fun bm!212600 () Bool)

(declare-fun call!212608 () Bool)

(declare-fun call!212611 () Bool)

(assert (=> bm!212600 (= call!212608 call!212611)))

(declare-fun lt!1050963 () Regex!9503)

(declare-fun bm!212601 () Bool)

(declare-fun call!212606 () Bool)

(declare-fun lt!1050966 () Regex!9503)

(declare-fun c!509619 () Bool)

(assert (=> bm!212601 (= call!212606 (isEmptyLang!554 (ite c!509619 lt!1050963 lt!1050966)))))

(declare-fun b!3067110 () Bool)

(declare-fun c!509616 () Bool)

(assert (=> b!3067110 (= c!509616 (isEmptyExpr!560 lt!1050966))))

(declare-fun e!1919948 () Regex!9503)

(declare-fun e!1919949 () Regex!9503)

(assert (=> b!3067110 (= e!1919948 e!1919949)))

(declare-fun b!3067111 () Bool)

(declare-fun e!1919951 () Regex!9503)

(assert (=> b!3067111 (= e!1919951 EmptyExpr!9503)))

(declare-fun b!3067112 () Bool)

(declare-fun lt!1050965 () Regex!9503)

(assert (=> b!3067112 (= e!1919951 (Star!9503 lt!1050965))))

(declare-fun b!3067113 () Bool)

(declare-fun e!1919952 () Regex!9503)

(declare-fun lt!1050962 () Regex!9503)

(assert (=> b!3067113 (= e!1919952 (Union!9503 lt!1050963 lt!1050962))))

(declare-fun b!3067114 () Bool)

(declare-fun e!1919947 () Regex!9503)

(declare-fun e!1919950 () Regex!9503)

(assert (=> b!3067114 (= e!1919947 e!1919950)))

(declare-fun c!509621 () Bool)

(assert (=> b!3067114 (= c!509621 ((_ is Star!9503) (regTwo!19518 r!17423)))))

(declare-fun b!3067115 () Bool)

(assert (=> b!3067115 (= e!1919952 lt!1050963)))

(declare-fun b!3067116 () Bool)

(declare-fun c!509623 () Bool)

(assert (=> b!3067116 (= c!509623 call!212608)))

(declare-fun e!1919944 () Regex!9503)

(assert (=> b!3067116 (= e!1919944 e!1919952)))

(declare-fun d!855881 () Bool)

(declare-fun e!1919945 () Bool)

(assert (=> d!855881 e!1919945))

(declare-fun res!1259015 () Bool)

(assert (=> d!855881 (=> (not res!1259015) (not e!1919945))))

(declare-fun lt!1050964 () Regex!9503)

(assert (=> d!855881 (= res!1259015 (validRegex!4236 lt!1050964))))

(declare-fun e!1919943 () Regex!9503)

(assert (=> d!855881 (= lt!1050964 e!1919943)))

(declare-fun c!509624 () Bool)

(assert (=> d!855881 (= c!509624 ((_ is EmptyLang!9503) (regTwo!19518 r!17423)))))

(assert (=> d!855881 (validRegex!4236 (regTwo!19518 r!17423))))

(assert (=> d!855881 (= (simplify!458 (regTwo!19518 r!17423)) lt!1050964)))

(declare-fun b!3067117 () Bool)

(declare-fun e!1919954 () Regex!9503)

(declare-fun lt!1050961 () Regex!9503)

(assert (=> b!3067117 (= e!1919954 (Concat!14824 lt!1050966 lt!1050961))))

(declare-fun b!3067118 () Bool)

(declare-fun e!1919942 () Regex!9503)

(assert (=> b!3067118 (= e!1919942 e!1919948)))

(declare-fun call!212610 () Regex!9503)

(assert (=> b!3067118 (= lt!1050966 call!212610)))

(declare-fun call!212605 () Regex!9503)

(assert (=> b!3067118 (= lt!1050961 call!212605)))

(declare-fun res!1259013 () Bool)

(assert (=> b!3067118 (= res!1259013 call!212606)))

(declare-fun e!1919946 () Bool)

(assert (=> b!3067118 (=> res!1259013 e!1919946)))

(declare-fun c!509615 () Bool)

(assert (=> b!3067118 (= c!509615 e!1919946)))

(declare-fun b!3067119 () Bool)

(assert (=> b!3067119 (= e!1919943 EmptyLang!9503)))

(declare-fun b!3067120 () Bool)

(declare-fun e!1919953 () Regex!9503)

(assert (=> b!3067120 (= e!1919953 (regTwo!19518 r!17423))))

(declare-fun b!3067121 () Bool)

(assert (=> b!3067121 (= e!1919944 lt!1050962)))

(declare-fun b!3067122 () Bool)

(assert (=> b!3067122 (= e!1919945 (= (nullable!3148 lt!1050964) (nullable!3148 (regTwo!19518 r!17423))))))

(declare-fun b!3067123 () Bool)

(assert (=> b!3067123 (= e!1919949 lt!1050961)))

(declare-fun b!3067124 () Bool)

(assert (=> b!3067124 (= e!1919954 lt!1050966)))

(declare-fun call!212609 () Bool)

(declare-fun bm!212602 () Bool)

(assert (=> bm!212602 (= call!212609 (isEmptyExpr!560 (ite c!509621 lt!1050965 lt!1050961)))))

(declare-fun b!3067125 () Bool)

(assert (=> b!3067125 (= e!1919943 e!1919953)))

(declare-fun c!509622 () Bool)

(assert (=> b!3067125 (= c!509622 ((_ is ElementMatch!9503) (regTwo!19518 r!17423)))))

(declare-fun b!3067126 () Bool)

(assert (=> b!3067126 (= e!1919949 e!1919954)))

(declare-fun c!509617 () Bool)

(assert (=> b!3067126 (= c!509617 call!212609)))

(declare-fun bm!212603 () Bool)

(declare-fun call!212607 () Regex!9503)

(assert (=> bm!212603 (= call!212610 call!212607)))

(declare-fun bm!212604 () Bool)

(assert (=> bm!212604 (= call!212605 (simplify!458 (ite c!509619 (regOne!19519 (regTwo!19518 r!17423)) (regTwo!19518 (regTwo!19518 r!17423)))))))

(declare-fun b!3067127 () Bool)

(assert (=> b!3067127 (= e!1919948 EmptyLang!9503)))

(declare-fun b!3067128 () Bool)

(declare-fun e!1919955 () Bool)

(assert (=> b!3067128 (= e!1919955 call!212609)))

(declare-fun bm!212605 () Bool)

(assert (=> bm!212605 (= call!212607 (simplify!458 (ite c!509621 (reg!9832 (regTwo!19518 r!17423)) (ite c!509619 (regTwo!19519 (regTwo!19518 r!17423)) (regOne!19518 (regTwo!19518 r!17423))))))))

(declare-fun b!3067129 () Bool)

(assert (=> b!3067129 (= c!509619 ((_ is Union!9503) (regTwo!19518 r!17423)))))

(assert (=> b!3067129 (= e!1919950 e!1919942)))

(declare-fun b!3067130 () Bool)

(assert (=> b!3067130 (= e!1919942 e!1919944)))

(assert (=> b!3067130 (= lt!1050963 call!212605)))

(assert (=> b!3067130 (= lt!1050962 call!212610)))

(declare-fun c!509614 () Bool)

(assert (=> b!3067130 (= c!509614 call!212606)))

(declare-fun b!3067131 () Bool)

(assert (=> b!3067131 (= e!1919946 call!212608)))

(declare-fun b!3067132 () Bool)

(declare-fun c!509618 () Bool)

(assert (=> b!3067132 (= c!509618 ((_ is EmptyExpr!9503) (regTwo!19518 r!17423)))))

(assert (=> b!3067132 (= e!1919953 e!1919947)))

(declare-fun b!3067133 () Bool)

(declare-fun c!509620 () Bool)

(assert (=> b!3067133 (= c!509620 e!1919955)))

(declare-fun res!1259014 () Bool)

(assert (=> b!3067133 (=> res!1259014 e!1919955)))

(assert (=> b!3067133 (= res!1259014 call!212611)))

(assert (=> b!3067133 (= lt!1050965 call!212607)))

(assert (=> b!3067133 (= e!1919950 e!1919951)))

(declare-fun bm!212606 () Bool)

(assert (=> bm!212606 (= call!212611 (isEmptyLang!554 (ite c!509621 lt!1050965 (ite c!509619 lt!1050962 lt!1050961))))))

(declare-fun b!3067134 () Bool)

(assert (=> b!3067134 (= e!1919947 EmptyExpr!9503)))

(assert (= (and d!855881 c!509624) b!3067119))

(assert (= (and d!855881 (not c!509624)) b!3067125))

(assert (= (and b!3067125 c!509622) b!3067120))

(assert (= (and b!3067125 (not c!509622)) b!3067132))

(assert (= (and b!3067132 c!509618) b!3067134))

(assert (= (and b!3067132 (not c!509618)) b!3067114))

(assert (= (and b!3067114 c!509621) b!3067133))

(assert (= (and b!3067114 (not c!509621)) b!3067129))

(assert (= (and b!3067133 (not res!1259014)) b!3067128))

(assert (= (and b!3067133 c!509620) b!3067111))

(assert (= (and b!3067133 (not c!509620)) b!3067112))

(assert (= (and b!3067129 c!509619) b!3067130))

(assert (= (and b!3067129 (not c!509619)) b!3067118))

(assert (= (and b!3067130 c!509614) b!3067121))

(assert (= (and b!3067130 (not c!509614)) b!3067116))

(assert (= (and b!3067116 c!509623) b!3067115))

(assert (= (and b!3067116 (not c!509623)) b!3067113))

(assert (= (and b!3067118 (not res!1259013)) b!3067131))

(assert (= (and b!3067118 c!509615) b!3067127))

(assert (= (and b!3067118 (not c!509615)) b!3067110))

(assert (= (and b!3067110 c!509616) b!3067123))

(assert (= (and b!3067110 (not c!509616)) b!3067126))

(assert (= (and b!3067126 c!509617) b!3067124))

(assert (= (and b!3067126 (not c!509617)) b!3067117))

(assert (= (or b!3067130 b!3067118) bm!212604))

(assert (= (or b!3067130 b!3067118) bm!212603))

(assert (= (or b!3067116 b!3067131) bm!212600))

(assert (= (or b!3067130 b!3067118) bm!212601))

(assert (= (or b!3067128 b!3067126) bm!212602))

(assert (= (or b!3067133 bm!212603) bm!212605))

(assert (= (or b!3067133 bm!212600) bm!212606))

(assert (= (and d!855881 res!1259015) b!3067122))

(declare-fun m!3384141 () Bool)

(assert (=> bm!212606 m!3384141))

(declare-fun m!3384143 () Bool)

(assert (=> bm!212604 m!3384143))

(declare-fun m!3384145 () Bool)

(assert (=> bm!212602 m!3384145))

(declare-fun m!3384147 () Bool)

(assert (=> bm!212605 m!3384147))

(declare-fun m!3384149 () Bool)

(assert (=> b!3067110 m!3384149))

(declare-fun m!3384151 () Bool)

(assert (=> d!855881 m!3384151))

(declare-fun m!3384153 () Bool)

(assert (=> d!855881 m!3384153))

(declare-fun m!3384155 () Bool)

(assert (=> b!3067122 m!3384155))

(declare-fun m!3384157 () Bool)

(assert (=> b!3067122 m!3384157))

(declare-fun m!3384159 () Bool)

(assert (=> bm!212601 m!3384159))

(assert (=> b!3066968 d!855881))

(declare-fun bm!212607 () Bool)

(declare-fun call!212615 () Bool)

(declare-fun call!212618 () Bool)

(assert (=> bm!212607 (= call!212615 call!212618)))

(declare-fun call!212613 () Bool)

(declare-fun c!509630 () Bool)

(declare-fun bm!212608 () Bool)

(declare-fun lt!1050972 () Regex!9503)

(declare-fun lt!1050969 () Regex!9503)

(assert (=> bm!212608 (= call!212613 (isEmptyLang!554 (ite c!509630 lt!1050969 lt!1050972)))))

(declare-fun b!3067135 () Bool)

(declare-fun c!509627 () Bool)

(assert (=> b!3067135 (= c!509627 (isEmptyExpr!560 lt!1050972))))

(declare-fun e!1919962 () Regex!9503)

(declare-fun e!1919963 () Regex!9503)

(assert (=> b!3067135 (= e!1919962 e!1919963)))

(declare-fun b!3067136 () Bool)

(declare-fun e!1919965 () Regex!9503)

(assert (=> b!3067136 (= e!1919965 EmptyExpr!9503)))

(declare-fun b!3067137 () Bool)

(declare-fun lt!1050971 () Regex!9503)

(assert (=> b!3067137 (= e!1919965 (Star!9503 lt!1050971))))

(declare-fun b!3067138 () Bool)

(declare-fun e!1919966 () Regex!9503)

(declare-fun lt!1050968 () Regex!9503)

(assert (=> b!3067138 (= e!1919966 (Union!9503 lt!1050969 lt!1050968))))

(declare-fun b!3067139 () Bool)

(declare-fun e!1919961 () Regex!9503)

(declare-fun e!1919964 () Regex!9503)

(assert (=> b!3067139 (= e!1919961 e!1919964)))

(declare-fun c!509632 () Bool)

(assert (=> b!3067139 (= c!509632 ((_ is Star!9503) (regOne!19518 r!17423)))))

(declare-fun b!3067140 () Bool)

(assert (=> b!3067140 (= e!1919966 lt!1050969)))

(declare-fun b!3067141 () Bool)

(declare-fun c!509634 () Bool)

(assert (=> b!3067141 (= c!509634 call!212615)))

(declare-fun e!1919958 () Regex!9503)

(assert (=> b!3067141 (= e!1919958 e!1919966)))

(declare-fun d!855883 () Bool)

(declare-fun e!1919959 () Bool)

(assert (=> d!855883 e!1919959))

(declare-fun res!1259018 () Bool)

(assert (=> d!855883 (=> (not res!1259018) (not e!1919959))))

(declare-fun lt!1050970 () Regex!9503)

(assert (=> d!855883 (= res!1259018 (validRegex!4236 lt!1050970))))

(declare-fun e!1919957 () Regex!9503)

(assert (=> d!855883 (= lt!1050970 e!1919957)))

(declare-fun c!509635 () Bool)

(assert (=> d!855883 (= c!509635 ((_ is EmptyLang!9503) (regOne!19518 r!17423)))))

(assert (=> d!855883 (validRegex!4236 (regOne!19518 r!17423))))

(assert (=> d!855883 (= (simplify!458 (regOne!19518 r!17423)) lt!1050970)))

(declare-fun b!3067142 () Bool)

(declare-fun e!1919968 () Regex!9503)

(declare-fun lt!1050967 () Regex!9503)

(assert (=> b!3067142 (= e!1919968 (Concat!14824 lt!1050972 lt!1050967))))

(declare-fun b!3067143 () Bool)

(declare-fun e!1919956 () Regex!9503)

(assert (=> b!3067143 (= e!1919956 e!1919962)))

(declare-fun call!212617 () Regex!9503)

(assert (=> b!3067143 (= lt!1050972 call!212617)))

(declare-fun call!212612 () Regex!9503)

(assert (=> b!3067143 (= lt!1050967 call!212612)))

(declare-fun res!1259016 () Bool)

(assert (=> b!3067143 (= res!1259016 call!212613)))

(declare-fun e!1919960 () Bool)

(assert (=> b!3067143 (=> res!1259016 e!1919960)))

(declare-fun c!509626 () Bool)

(assert (=> b!3067143 (= c!509626 e!1919960)))

(declare-fun b!3067144 () Bool)

(assert (=> b!3067144 (= e!1919957 EmptyLang!9503)))

(declare-fun b!3067145 () Bool)

(declare-fun e!1919967 () Regex!9503)

(assert (=> b!3067145 (= e!1919967 (regOne!19518 r!17423))))

(declare-fun b!3067146 () Bool)

(assert (=> b!3067146 (= e!1919958 lt!1050968)))

(declare-fun b!3067147 () Bool)

(assert (=> b!3067147 (= e!1919959 (= (nullable!3148 lt!1050970) (nullable!3148 (regOne!19518 r!17423))))))

(declare-fun b!3067148 () Bool)

(assert (=> b!3067148 (= e!1919963 lt!1050967)))

(declare-fun b!3067149 () Bool)

(assert (=> b!3067149 (= e!1919968 lt!1050972)))

(declare-fun bm!212609 () Bool)

(declare-fun call!212616 () Bool)

(assert (=> bm!212609 (= call!212616 (isEmptyExpr!560 (ite c!509632 lt!1050971 lt!1050967)))))

(declare-fun b!3067150 () Bool)

(assert (=> b!3067150 (= e!1919957 e!1919967)))

(declare-fun c!509633 () Bool)

(assert (=> b!3067150 (= c!509633 ((_ is ElementMatch!9503) (regOne!19518 r!17423)))))

(declare-fun b!3067151 () Bool)

(assert (=> b!3067151 (= e!1919963 e!1919968)))

(declare-fun c!509628 () Bool)

(assert (=> b!3067151 (= c!509628 call!212616)))

(declare-fun bm!212610 () Bool)

(declare-fun call!212614 () Regex!9503)

(assert (=> bm!212610 (= call!212617 call!212614)))

(declare-fun bm!212611 () Bool)

(assert (=> bm!212611 (= call!212612 (simplify!458 (ite c!509630 (regOne!19519 (regOne!19518 r!17423)) (regTwo!19518 (regOne!19518 r!17423)))))))

(declare-fun b!3067152 () Bool)

(assert (=> b!3067152 (= e!1919962 EmptyLang!9503)))

(declare-fun b!3067153 () Bool)

(declare-fun e!1919969 () Bool)

(assert (=> b!3067153 (= e!1919969 call!212616)))

(declare-fun bm!212612 () Bool)

(assert (=> bm!212612 (= call!212614 (simplify!458 (ite c!509632 (reg!9832 (regOne!19518 r!17423)) (ite c!509630 (regTwo!19519 (regOne!19518 r!17423)) (regOne!19518 (regOne!19518 r!17423))))))))

(declare-fun b!3067154 () Bool)

(assert (=> b!3067154 (= c!509630 ((_ is Union!9503) (regOne!19518 r!17423)))))

(assert (=> b!3067154 (= e!1919964 e!1919956)))

(declare-fun b!3067155 () Bool)

(assert (=> b!3067155 (= e!1919956 e!1919958)))

(assert (=> b!3067155 (= lt!1050969 call!212612)))

(assert (=> b!3067155 (= lt!1050968 call!212617)))

(declare-fun c!509625 () Bool)

(assert (=> b!3067155 (= c!509625 call!212613)))

(declare-fun b!3067156 () Bool)

(assert (=> b!3067156 (= e!1919960 call!212615)))

(declare-fun b!3067157 () Bool)

(declare-fun c!509629 () Bool)

(assert (=> b!3067157 (= c!509629 ((_ is EmptyExpr!9503) (regOne!19518 r!17423)))))

(assert (=> b!3067157 (= e!1919967 e!1919961)))

(declare-fun b!3067158 () Bool)

(declare-fun c!509631 () Bool)

(assert (=> b!3067158 (= c!509631 e!1919969)))

(declare-fun res!1259017 () Bool)

(assert (=> b!3067158 (=> res!1259017 e!1919969)))

(assert (=> b!3067158 (= res!1259017 call!212618)))

(assert (=> b!3067158 (= lt!1050971 call!212614)))

(assert (=> b!3067158 (= e!1919964 e!1919965)))

(declare-fun bm!212613 () Bool)

(assert (=> bm!212613 (= call!212618 (isEmptyLang!554 (ite c!509632 lt!1050971 (ite c!509630 lt!1050968 lt!1050967))))))

(declare-fun b!3067159 () Bool)

(assert (=> b!3067159 (= e!1919961 EmptyExpr!9503)))

(assert (= (and d!855883 c!509635) b!3067144))

(assert (= (and d!855883 (not c!509635)) b!3067150))

(assert (= (and b!3067150 c!509633) b!3067145))

(assert (= (and b!3067150 (not c!509633)) b!3067157))

(assert (= (and b!3067157 c!509629) b!3067159))

(assert (= (and b!3067157 (not c!509629)) b!3067139))

(assert (= (and b!3067139 c!509632) b!3067158))

(assert (= (and b!3067139 (not c!509632)) b!3067154))

(assert (= (and b!3067158 (not res!1259017)) b!3067153))

(assert (= (and b!3067158 c!509631) b!3067136))

(assert (= (and b!3067158 (not c!509631)) b!3067137))

(assert (= (and b!3067154 c!509630) b!3067155))

(assert (= (and b!3067154 (not c!509630)) b!3067143))

(assert (= (and b!3067155 c!509625) b!3067146))

(assert (= (and b!3067155 (not c!509625)) b!3067141))

(assert (= (and b!3067141 c!509634) b!3067140))

(assert (= (and b!3067141 (not c!509634)) b!3067138))

(assert (= (and b!3067143 (not res!1259016)) b!3067156))

(assert (= (and b!3067143 c!509626) b!3067152))

(assert (= (and b!3067143 (not c!509626)) b!3067135))

(assert (= (and b!3067135 c!509627) b!3067148))

(assert (= (and b!3067135 (not c!509627)) b!3067151))

(assert (= (and b!3067151 c!509628) b!3067149))

(assert (= (and b!3067151 (not c!509628)) b!3067142))

(assert (= (or b!3067155 b!3067143) bm!212611))

(assert (= (or b!3067155 b!3067143) bm!212610))

(assert (= (or b!3067141 b!3067156) bm!212607))

(assert (= (or b!3067155 b!3067143) bm!212608))

(assert (= (or b!3067153 b!3067151) bm!212609))

(assert (= (or b!3067158 bm!212610) bm!212612))

(assert (= (or b!3067158 bm!212607) bm!212613))

(assert (= (and d!855883 res!1259018) b!3067147))

(declare-fun m!3384161 () Bool)

(assert (=> bm!212613 m!3384161))

(declare-fun m!3384163 () Bool)

(assert (=> bm!212611 m!3384163))

(declare-fun m!3384165 () Bool)

(assert (=> bm!212609 m!3384165))

(declare-fun m!3384167 () Bool)

(assert (=> bm!212612 m!3384167))

(declare-fun m!3384169 () Bool)

(assert (=> b!3067135 m!3384169))

(declare-fun m!3384171 () Bool)

(assert (=> d!855883 m!3384171))

(assert (=> d!855883 m!3384127))

(declare-fun m!3384173 () Bool)

(assert (=> b!3067147 m!3384173))

(declare-fun m!3384175 () Bool)

(assert (=> b!3067147 m!3384175))

(declare-fun m!3384177 () Bool)

(assert (=> bm!212608 m!3384177))

(assert (=> b!3066968 d!855883))

(declare-fun d!855885 () Bool)

(assert (=> d!855885 (= (isEmptyLang!554 lt!1050936) ((_ is EmptyLang!9503) lt!1050936))))

(assert (=> b!3066963 d!855885))

(declare-fun b!3067337 () Bool)

(assert (=> b!3067337 true))

(assert (=> b!3067337 true))

(declare-fun bs!532607 () Bool)

(declare-fun b!3067340 () Bool)

(assert (= bs!532607 (and b!3067340 b!3067337)))

(declare-fun lambda!114040 () Int)

(declare-fun lambda!114039 () Int)

(assert (=> bs!532607 (not (= lambda!114040 lambda!114039))))

(assert (=> b!3067340 true))

(assert (=> b!3067340 true))

(declare-fun bm!212641 () Bool)

(declare-fun call!212647 () Bool)

(assert (=> bm!212641 (= call!212647 (isEmpty!19569 s!11993))))

(declare-fun b!3067331 () Bool)

(declare-fun e!1920062 () Bool)

(declare-fun e!1920066 () Bool)

(assert (=> b!3067331 (= e!1920062 e!1920066)))

(declare-fun c!509687 () Bool)

(assert (=> b!3067331 (= c!509687 ((_ is Star!9503) r!17423))))

(declare-fun b!3067332 () Bool)

(declare-fun e!1920064 () Bool)

(assert (=> b!3067332 (= e!1920064 (matchRSpec!1640 (regTwo!19519 r!17423) s!11993))))

(declare-fun b!3067333 () Bool)

(declare-fun res!1259084 () Bool)

(declare-fun e!1920065 () Bool)

(assert (=> b!3067333 (=> res!1259084 e!1920065)))

(assert (=> b!3067333 (= res!1259084 call!212647)))

(assert (=> b!3067333 (= e!1920066 e!1920065)))

(declare-fun b!3067334 () Bool)

(declare-fun e!1920067 () Bool)

(declare-fun e!1920063 () Bool)

(assert (=> b!3067334 (= e!1920067 e!1920063)))

(declare-fun res!1259086 () Bool)

(assert (=> b!3067334 (= res!1259086 (not ((_ is EmptyLang!9503) r!17423)))))

(assert (=> b!3067334 (=> (not res!1259086) (not e!1920063))))

(declare-fun b!3067335 () Bool)

(declare-fun c!509688 () Bool)

(assert (=> b!3067335 (= c!509688 ((_ is ElementMatch!9503) r!17423))))

(declare-fun e!1920068 () Bool)

(assert (=> b!3067335 (= e!1920063 e!1920068)))

(declare-fun b!3067336 () Bool)

(assert (=> b!3067336 (= e!1920068 (= s!11993 (Cons!35244 (c!509561 r!17423) Nil!35244)))))

(declare-fun call!212646 () Bool)

(assert (=> b!3067337 (= e!1920065 call!212646)))

(declare-fun b!3067338 () Bool)

(declare-fun c!509689 () Bool)

(assert (=> b!3067338 (= c!509689 ((_ is Union!9503) r!17423))))

(assert (=> b!3067338 (= e!1920068 e!1920062)))

(declare-fun b!3067339 () Bool)

(assert (=> b!3067339 (= e!1920062 e!1920064)))

(declare-fun res!1259085 () Bool)

(assert (=> b!3067339 (= res!1259085 (matchRSpec!1640 (regOne!19519 r!17423) s!11993))))

(assert (=> b!3067339 (=> res!1259085 e!1920064)))

(declare-fun bm!212642 () Bool)

(declare-fun Exists!1766 (Int) Bool)

(assert (=> bm!212642 (= call!212646 (Exists!1766 (ite c!509687 lambda!114039 lambda!114040)))))

(declare-fun d!855887 () Bool)

(declare-fun c!509690 () Bool)

(assert (=> d!855887 (= c!509690 ((_ is EmptyExpr!9503) r!17423))))

(assert (=> d!855887 (= (matchRSpec!1640 r!17423 s!11993) e!1920067)))

(assert (=> b!3067340 (= e!1920066 call!212646)))

(declare-fun b!3067341 () Bool)

(assert (=> b!3067341 (= e!1920067 call!212647)))

(assert (= (and d!855887 c!509690) b!3067341))

(assert (= (and d!855887 (not c!509690)) b!3067334))

(assert (= (and b!3067334 res!1259086) b!3067335))

(assert (= (and b!3067335 c!509688) b!3067336))

(assert (= (and b!3067335 (not c!509688)) b!3067338))

(assert (= (and b!3067338 c!509689) b!3067339))

(assert (= (and b!3067338 (not c!509689)) b!3067331))

(assert (= (and b!3067339 (not res!1259085)) b!3067332))

(assert (= (and b!3067331 c!509687) b!3067333))

(assert (= (and b!3067331 (not c!509687)) b!3067340))

(assert (= (and b!3067333 (not res!1259084)) b!3067337))

(assert (= (or b!3067337 b!3067340) bm!212642))

(assert (= (or b!3067341 b!3067333) bm!212641))

(assert (=> bm!212641 m!3384113))

(declare-fun m!3384235 () Bool)

(assert (=> b!3067332 m!3384235))

(declare-fun m!3384237 () Bool)

(assert (=> b!3067339 m!3384237))

(declare-fun m!3384239 () Bool)

(assert (=> bm!212642 m!3384239))

(assert (=> b!3066970 d!855887))

(declare-fun b!3067445 () Bool)

(declare-fun e!1920126 () Bool)

(declare-fun e!1920121 () Bool)

(assert (=> b!3067445 (= e!1920126 e!1920121)))

(declare-fun c!509707 () Bool)

(assert (=> b!3067445 (= c!509707 ((_ is EmptyLang!9503) r!17423))))

(declare-fun bm!212657 () Bool)

(declare-fun call!212662 () Bool)

(assert (=> bm!212657 (= call!212662 (isEmpty!19569 s!11993))))

(declare-fun b!3067446 () Bool)

(declare-fun lt!1050993 () Bool)

(assert (=> b!3067446 (= e!1920121 (not lt!1050993))))

(declare-fun d!855899 () Bool)

(assert (=> d!855899 e!1920126))

(declare-fun c!509706 () Bool)

(assert (=> d!855899 (= c!509706 ((_ is EmptyExpr!9503) r!17423))))

(declare-fun e!1920125 () Bool)

(assert (=> d!855899 (= lt!1050993 e!1920125)))

(declare-fun c!509705 () Bool)

(assert (=> d!855899 (= c!509705 (isEmpty!19569 s!11993))))

(assert (=> d!855899 (validRegex!4236 r!17423)))

(assert (=> d!855899 (= (matchR!4385 r!17423 s!11993) lt!1050993)))

(declare-fun b!3067447 () Bool)

(declare-fun res!1259124 () Bool)

(declare-fun e!1920127 () Bool)

(assert (=> b!3067447 (=> (not res!1259124) (not e!1920127))))

(declare-fun tail!5030 (List!35368) List!35368)

(assert (=> b!3067447 (= res!1259124 (isEmpty!19569 (tail!5030 s!11993)))))

(declare-fun b!3067448 () Bool)

(declare-fun e!1920123 () Bool)

(declare-fun e!1920122 () Bool)

(assert (=> b!3067448 (= e!1920123 e!1920122)))

(declare-fun res!1259125 () Bool)

(assert (=> b!3067448 (=> res!1259125 e!1920122)))

(assert (=> b!3067448 (= res!1259125 call!212662)))

(declare-fun b!3067449 () Bool)

(assert (=> b!3067449 (= e!1920125 (nullable!3148 r!17423))))

(declare-fun b!3067450 () Bool)

(declare-fun derivativeStep!2745 (Regex!9503 C!19192) Regex!9503)

(declare-fun head!6804 (List!35368) C!19192)

(assert (=> b!3067450 (= e!1920125 (matchR!4385 (derivativeStep!2745 r!17423 (head!6804 s!11993)) (tail!5030 s!11993)))))

(declare-fun b!3067451 () Bool)

(declare-fun res!1259126 () Bool)

(declare-fun e!1920124 () Bool)

(assert (=> b!3067451 (=> res!1259126 e!1920124)))

(assert (=> b!3067451 (= res!1259126 (not ((_ is ElementMatch!9503) r!17423)))))

(assert (=> b!3067451 (= e!1920121 e!1920124)))

(declare-fun b!3067452 () Bool)

(declare-fun res!1259130 () Bool)

(assert (=> b!3067452 (=> res!1259130 e!1920122)))

(assert (=> b!3067452 (= res!1259130 (not (isEmpty!19569 (tail!5030 s!11993))))))

(declare-fun b!3067453 () Bool)

(assert (=> b!3067453 (= e!1920124 e!1920123)))

(declare-fun res!1259127 () Bool)

(assert (=> b!3067453 (=> (not res!1259127) (not e!1920123))))

(assert (=> b!3067453 (= res!1259127 (not lt!1050993))))

(declare-fun b!3067454 () Bool)

(assert (=> b!3067454 (= e!1920122 (not (= (head!6804 s!11993) (c!509561 r!17423))))))

(declare-fun b!3067455 () Bool)

(assert (=> b!3067455 (= e!1920127 (= (head!6804 s!11993) (c!509561 r!17423)))))

(declare-fun b!3067456 () Bool)

(declare-fun res!1259128 () Bool)

(assert (=> b!3067456 (=> (not res!1259128) (not e!1920127))))

(assert (=> b!3067456 (= res!1259128 (not call!212662))))

(declare-fun b!3067457 () Bool)

(declare-fun res!1259129 () Bool)

(assert (=> b!3067457 (=> res!1259129 e!1920124)))

(assert (=> b!3067457 (= res!1259129 e!1920127)))

(declare-fun res!1259123 () Bool)

(assert (=> b!3067457 (=> (not res!1259123) (not e!1920127))))

(assert (=> b!3067457 (= res!1259123 lt!1050993)))

(declare-fun b!3067458 () Bool)

(assert (=> b!3067458 (= e!1920126 (= lt!1050993 call!212662))))

(assert (= (and d!855899 c!509705) b!3067449))

(assert (= (and d!855899 (not c!509705)) b!3067450))

(assert (= (and d!855899 c!509706) b!3067458))

(assert (= (and d!855899 (not c!509706)) b!3067445))

(assert (= (and b!3067445 c!509707) b!3067446))

(assert (= (and b!3067445 (not c!509707)) b!3067451))

(assert (= (and b!3067451 (not res!1259126)) b!3067457))

(assert (= (and b!3067457 res!1259123) b!3067456))

(assert (= (and b!3067456 res!1259128) b!3067447))

(assert (= (and b!3067447 res!1259124) b!3067455))

(assert (= (and b!3067457 (not res!1259129)) b!3067453))

(assert (= (and b!3067453 res!1259127) b!3067448))

(assert (= (and b!3067448 (not res!1259125)) b!3067452))

(assert (= (and b!3067452 (not res!1259130)) b!3067454))

(assert (= (or b!3067458 b!3067448 b!3067456) bm!212657))

(declare-fun m!3384255 () Bool)

(assert (=> b!3067455 m!3384255))

(assert (=> b!3067454 m!3384255))

(assert (=> b!3067450 m!3384255))

(assert (=> b!3067450 m!3384255))

(declare-fun m!3384257 () Bool)

(assert (=> b!3067450 m!3384257))

(declare-fun m!3384259 () Bool)

(assert (=> b!3067450 m!3384259))

(assert (=> b!3067450 m!3384257))

(assert (=> b!3067450 m!3384259))

(declare-fun m!3384261 () Bool)

(assert (=> b!3067450 m!3384261))

(assert (=> bm!212657 m!3384113))

(assert (=> b!3067447 m!3384259))

(assert (=> b!3067447 m!3384259))

(declare-fun m!3384263 () Bool)

(assert (=> b!3067447 m!3384263))

(assert (=> b!3067452 m!3384259))

(assert (=> b!3067452 m!3384259))

(assert (=> b!3067452 m!3384263))

(assert (=> d!855899 m!3384113))

(assert (=> d!855899 m!3384125))

(declare-fun m!3384265 () Bool)

(assert (=> b!3067449 m!3384265))

(assert (=> b!3066970 d!855899))

(declare-fun d!855909 () Bool)

(assert (=> d!855909 (= (matchR!4385 r!17423 s!11993) (matchRSpec!1640 r!17423 s!11993))))

(declare-fun lt!1050996 () Unit!49445)

(declare-fun choose!18179 (Regex!9503 List!35368) Unit!49445)

(assert (=> d!855909 (= lt!1050996 (choose!18179 r!17423 s!11993))))

(assert (=> d!855909 (validRegex!4236 r!17423)))

(assert (=> d!855909 (= (mainMatchTheorem!1640 r!17423 s!11993) lt!1050996)))

(declare-fun bs!532609 () Bool)

(assert (= bs!532609 d!855909))

(assert (=> bs!532609 m!3384121))

(assert (=> bs!532609 m!3384119))

(declare-fun m!3384267 () Bool)

(assert (=> bs!532609 m!3384267))

(assert (=> bs!532609 m!3384125))

(assert (=> b!3066970 d!855909))

(declare-fun b!3067472 () Bool)

(declare-fun e!1920130 () Bool)

(declare-fun tp!968274 () Bool)

(declare-fun tp!968275 () Bool)

(assert (=> b!3067472 (= e!1920130 (and tp!968274 tp!968275))))

(declare-fun b!3067469 () Bool)

(assert (=> b!3067469 (= e!1920130 tp_is_empty!16569)))

(assert (=> b!3066965 (= tp!968224 e!1920130)))

(declare-fun b!3067471 () Bool)

(declare-fun tp!968278 () Bool)

(assert (=> b!3067471 (= e!1920130 tp!968278)))

(declare-fun b!3067470 () Bool)

(declare-fun tp!968276 () Bool)

(declare-fun tp!968277 () Bool)

(assert (=> b!3067470 (= e!1920130 (and tp!968276 tp!968277))))

(assert (= (and b!3066965 ((_ is ElementMatch!9503) (regOne!19519 r!17423))) b!3067469))

(assert (= (and b!3066965 ((_ is Concat!14824) (regOne!19519 r!17423))) b!3067470))

(assert (= (and b!3066965 ((_ is Star!9503) (regOne!19519 r!17423))) b!3067471))

(assert (= (and b!3066965 ((_ is Union!9503) (regOne!19519 r!17423))) b!3067472))

(declare-fun b!3067476 () Bool)

(declare-fun e!1920131 () Bool)

(declare-fun tp!968279 () Bool)

(declare-fun tp!968280 () Bool)

(assert (=> b!3067476 (= e!1920131 (and tp!968279 tp!968280))))

(declare-fun b!3067473 () Bool)

(assert (=> b!3067473 (= e!1920131 tp_is_empty!16569)))

(assert (=> b!3066965 (= tp!968220 e!1920131)))

(declare-fun b!3067475 () Bool)

(declare-fun tp!968283 () Bool)

(assert (=> b!3067475 (= e!1920131 tp!968283)))

(declare-fun b!3067474 () Bool)

(declare-fun tp!968281 () Bool)

(declare-fun tp!968282 () Bool)

(assert (=> b!3067474 (= e!1920131 (and tp!968281 tp!968282))))

(assert (= (and b!3066965 ((_ is ElementMatch!9503) (regTwo!19519 r!17423))) b!3067473))

(assert (= (and b!3066965 ((_ is Concat!14824) (regTwo!19519 r!17423))) b!3067474))

(assert (= (and b!3066965 ((_ is Star!9503) (regTwo!19519 r!17423))) b!3067475))

(assert (= (and b!3066965 ((_ is Union!9503) (regTwo!19519 r!17423))) b!3067476))

(declare-fun b!3067481 () Bool)

(declare-fun e!1920134 () Bool)

(declare-fun tp!968286 () Bool)

(assert (=> b!3067481 (= e!1920134 (and tp_is_empty!16569 tp!968286))))

(assert (=> b!3066966 (= tp!968222 e!1920134)))

(assert (= (and b!3066966 ((_ is Cons!35244) (t!234433 s!11993))) b!3067481))

(declare-fun b!3067485 () Bool)

(declare-fun e!1920135 () Bool)

(declare-fun tp!968287 () Bool)

(declare-fun tp!968288 () Bool)

(assert (=> b!3067485 (= e!1920135 (and tp!968287 tp!968288))))

(declare-fun b!3067482 () Bool)

(assert (=> b!3067482 (= e!1920135 tp_is_empty!16569)))

(assert (=> b!3066967 (= tp!968223 e!1920135)))

(declare-fun b!3067484 () Bool)

(declare-fun tp!968291 () Bool)

(assert (=> b!3067484 (= e!1920135 tp!968291)))

(declare-fun b!3067483 () Bool)

(declare-fun tp!968289 () Bool)

(declare-fun tp!968290 () Bool)

(assert (=> b!3067483 (= e!1920135 (and tp!968289 tp!968290))))

(assert (= (and b!3066967 ((_ is ElementMatch!9503) (regOne!19518 r!17423))) b!3067482))

(assert (= (and b!3066967 ((_ is Concat!14824) (regOne!19518 r!17423))) b!3067483))

(assert (= (and b!3066967 ((_ is Star!9503) (regOne!19518 r!17423))) b!3067484))

(assert (= (and b!3066967 ((_ is Union!9503) (regOne!19518 r!17423))) b!3067485))

(declare-fun b!3067489 () Bool)

(declare-fun e!1920136 () Bool)

(declare-fun tp!968292 () Bool)

(declare-fun tp!968293 () Bool)

(assert (=> b!3067489 (= e!1920136 (and tp!968292 tp!968293))))

(declare-fun b!3067486 () Bool)

(assert (=> b!3067486 (= e!1920136 tp_is_empty!16569)))

(assert (=> b!3066967 (= tp!968221 e!1920136)))

(declare-fun b!3067488 () Bool)

(declare-fun tp!968296 () Bool)

(assert (=> b!3067488 (= e!1920136 tp!968296)))

(declare-fun b!3067487 () Bool)

(declare-fun tp!968294 () Bool)

(declare-fun tp!968295 () Bool)

(assert (=> b!3067487 (= e!1920136 (and tp!968294 tp!968295))))

(assert (= (and b!3066967 ((_ is ElementMatch!9503) (regTwo!19518 r!17423))) b!3067486))

(assert (= (and b!3066967 ((_ is Concat!14824) (regTwo!19518 r!17423))) b!3067487))

(assert (= (and b!3066967 ((_ is Star!9503) (regTwo!19518 r!17423))) b!3067488))

(assert (= (and b!3066967 ((_ is Union!9503) (regTwo!19518 r!17423))) b!3067489))

(declare-fun b!3067493 () Bool)

(declare-fun e!1920137 () Bool)

(declare-fun tp!968297 () Bool)

(declare-fun tp!968298 () Bool)

(assert (=> b!3067493 (= e!1920137 (and tp!968297 tp!968298))))

(declare-fun b!3067490 () Bool)

(assert (=> b!3067490 (= e!1920137 tp_is_empty!16569)))

(assert (=> b!3066964 (= tp!968225 e!1920137)))

(declare-fun b!3067492 () Bool)

(declare-fun tp!968301 () Bool)

(assert (=> b!3067492 (= e!1920137 tp!968301)))

(declare-fun b!3067491 () Bool)

(declare-fun tp!968299 () Bool)

(declare-fun tp!968300 () Bool)

(assert (=> b!3067491 (= e!1920137 (and tp!968299 tp!968300))))

(assert (= (and b!3066964 ((_ is ElementMatch!9503) (reg!9832 r!17423))) b!3067490))

(assert (= (and b!3066964 ((_ is Concat!14824) (reg!9832 r!17423))) b!3067491))

(assert (= (and b!3066964 ((_ is Star!9503) (reg!9832 r!17423))) b!3067492))

(assert (= (and b!3066964 ((_ is Union!9503) (reg!9832 r!17423))) b!3067493))

(check-sat (not bm!212613) (not b!3067452) (not b!3067447) (not b!3067455) (not b!3067470) (not d!855883) (not d!855899) (not bm!212608) (not b!3067487) (not bm!212566) (not bm!212605) (not b!3067493) (not b!3067481) (not bm!212569) (not bm!212568) (not b!3067471) (not b!3067339) (not bm!212642) (not b!3067489) (not b!3067449) (not b!3067476) (not bm!212571) (not b!3067450) (not b!3067472) (not b!3067454) (not b!3067474) (not bm!212601) tp_is_empty!16569 (not b!3067488) (not bm!212602) (not b!3067492) (not b!3067484) (not b!3067483) (not bm!212611) (not d!855881) (not bm!212604) (not b!3067004) (not b!3066995) (not b!3067110) (not b!3067122) (not b!3067147) (not b!3067475) (not bm!212657) (not b!3067135) (not bm!212609) (not b!3067491) (not bm!212606) (not b!3067485) (not d!855909) (not b!3067332) (not bm!212641) (not bm!212612))
(check-sat)
