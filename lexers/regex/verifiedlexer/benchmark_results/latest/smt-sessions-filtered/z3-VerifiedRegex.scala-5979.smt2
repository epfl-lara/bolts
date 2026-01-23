; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!292732 () Bool)

(assert start!292732)

(declare-fun b!3068953 () Bool)

(declare-fun e!1920903 () Bool)

(declare-fun tp_is_empty!16581 () Bool)

(declare-fun tp!968561 () Bool)

(assert (=> b!3068953 (= e!1920903 (and tp_is_empty!16581 tp!968561))))

(declare-fun b!3068954 () Bool)

(declare-fun e!1920906 () Bool)

(declare-fun e!1920902 () Bool)

(assert (=> b!3068954 (= e!1920906 (not e!1920902))))

(declare-fun res!1259623 () Bool)

(assert (=> b!3068954 (=> res!1259623 e!1920902)))

(declare-fun lt!1051232 () Bool)

(declare-datatypes ((C!19204 0))(
  ( (C!19205 (val!11638 Int)) )
))
(declare-datatypes ((Regex!9509 0))(
  ( (ElementMatch!9509 (c!510079 C!19204)) (Concat!14830 (regOne!19530 Regex!9509) (regTwo!19530 Regex!9509)) (EmptyExpr!9509) (Star!9509 (reg!9838 Regex!9509)) (EmptyLang!9509) (Union!9509 (regOne!19531 Regex!9509) (regTwo!19531 Regex!9509)) )
))
(declare-fun r!17423 () Regex!9509)

(get-info :version)

(assert (=> b!3068954 (= res!1259623 (or lt!1051232 (not ((_ is Concat!14830) r!17423))))))

(declare-datatypes ((List!35374 0))(
  ( (Nil!35250) (Cons!35250 (h!40670 C!19204) (t!234439 List!35374)) )
))
(declare-fun s!11993 () List!35374)

(declare-fun matchRSpec!1646 (Regex!9509 List!35374) Bool)

(assert (=> b!3068954 (= lt!1051232 (matchRSpec!1646 r!17423 s!11993))))

(declare-fun matchR!4391 (Regex!9509 List!35374) Bool)

(assert (=> b!3068954 (= lt!1051232 (matchR!4391 r!17423 s!11993))))

(declare-datatypes ((Unit!49457 0))(
  ( (Unit!49458) )
))
(declare-fun lt!1051233 () Unit!49457)

(declare-fun mainMatchTheorem!1646 (Regex!9509 List!35374) Unit!49457)

(assert (=> b!3068954 (= lt!1051233 (mainMatchTheorem!1646 r!17423 s!11993))))

(declare-fun b!3068955 () Bool)

(declare-fun e!1920907 () Bool)

(declare-fun e!1920904 () Bool)

(assert (=> b!3068955 (= e!1920907 e!1920904)))

(declare-fun res!1259618 () Bool)

(assert (=> b!3068955 (=> res!1259618 e!1920904)))

(declare-fun validRegex!4242 (Regex!9509) Bool)

(assert (=> b!3068955 (= res!1259618 (not (validRegex!4242 (regTwo!19530 r!17423))))))

(declare-fun lt!1051235 () Regex!9509)

(assert (=> b!3068955 (= (matchR!4391 (regOne!19530 r!17423) s!11993) (matchR!4391 lt!1051235 s!11993))))

(declare-fun lt!1051234 () Unit!49457)

(declare-fun lemmaSimplifySound!290 (Regex!9509 List!35374) Unit!49457)

(assert (=> b!3068955 (= lt!1051234 (lemmaSimplifySound!290 (regOne!19530 r!17423) s!11993))))

(declare-fun b!3068956 () Bool)

(declare-fun res!1259620 () Bool)

(assert (=> b!3068956 (=> res!1259620 e!1920907)))

(declare-fun isEmptyExpr!566 (Regex!9509) Bool)

(assert (=> b!3068956 (= res!1259620 (isEmptyExpr!566 lt!1051235))))

(declare-fun res!1259619 () Bool)

(assert (=> start!292732 (=> (not res!1259619) (not e!1920906))))

(assert (=> start!292732 (= res!1259619 (validRegex!4242 r!17423))))

(assert (=> start!292732 e!1920906))

(declare-fun e!1920905 () Bool)

(assert (=> start!292732 e!1920905))

(assert (=> start!292732 e!1920903))

(declare-fun b!3068957 () Bool)

(declare-fun res!1259617 () Bool)

(assert (=> b!3068957 (=> res!1259617 e!1920907)))

(declare-fun lt!1051236 () Regex!9509)

(declare-fun isEmptyLang!560 (Regex!9509) Bool)

(assert (=> b!3068957 (= res!1259617 (isEmptyLang!560 lt!1051236))))

(declare-fun b!3068958 () Bool)

(declare-fun res!1259621 () Bool)

(assert (=> b!3068958 (=> res!1259621 e!1920907)))

(assert (=> b!3068958 (= res!1259621 (not (isEmptyExpr!566 lt!1051236)))))

(declare-fun b!3068959 () Bool)

(assert (=> b!3068959 (= e!1920902 e!1920907)))

(declare-fun res!1259624 () Bool)

(assert (=> b!3068959 (=> res!1259624 e!1920907)))

(assert (=> b!3068959 (= res!1259624 (isEmptyLang!560 lt!1051235))))

(declare-fun simplify!464 (Regex!9509) Regex!9509)

(assert (=> b!3068959 (= lt!1051236 (simplify!464 (regTwo!19530 r!17423)))))

(assert (=> b!3068959 (= lt!1051235 (simplify!464 (regOne!19530 r!17423)))))

(declare-fun b!3068960 () Bool)

(declare-fun tp!968560 () Bool)

(declare-fun tp!968558 () Bool)

(assert (=> b!3068960 (= e!1920905 (and tp!968560 tp!968558))))

(declare-fun b!3068961 () Bool)

(declare-fun tp!968559 () Bool)

(assert (=> b!3068961 (= e!1920905 tp!968559)))

(declare-fun b!3068962 () Bool)

(declare-fun tp!968557 () Bool)

(declare-fun tp!968556 () Bool)

(assert (=> b!3068962 (= e!1920905 (and tp!968557 tp!968556))))

(declare-fun b!3068963 () Bool)

(declare-fun res!1259622 () Bool)

(assert (=> b!3068963 (=> res!1259622 e!1920902)))

(declare-fun isEmpty!19575 (List!35374) Bool)

(assert (=> b!3068963 (= res!1259622 (isEmpty!19575 s!11993))))

(declare-fun b!3068964 () Bool)

(assert (=> b!3068964 (= e!1920905 tp_is_empty!16581)))

(declare-fun b!3068965 () Bool)

(declare-fun regexDepth!103 (Regex!9509) Int)

(declare-fun size!26559 (List!35374) Int)

(assert (=> b!3068965 (= e!1920904 (< (+ (regexDepth!103 (regTwo!19530 r!17423)) (size!26559 Nil!35250)) (+ (regexDepth!103 r!17423) (size!26559 s!11993))))))

(assert (= (and start!292732 res!1259619) b!3068954))

(assert (= (and b!3068954 (not res!1259623)) b!3068963))

(assert (= (and b!3068963 (not res!1259622)) b!3068959))

(assert (= (and b!3068959 (not res!1259624)) b!3068957))

(assert (= (and b!3068957 (not res!1259617)) b!3068956))

(assert (= (and b!3068956 (not res!1259620)) b!3068958))

(assert (= (and b!3068958 (not res!1259621)) b!3068955))

(assert (= (and b!3068955 (not res!1259618)) b!3068965))

(assert (= (and start!292732 ((_ is ElementMatch!9509) r!17423)) b!3068964))

(assert (= (and start!292732 ((_ is Concat!14830) r!17423)) b!3068962))

(assert (= (and start!292732 ((_ is Star!9509) r!17423)) b!3068961))

(assert (= (and start!292732 ((_ is Union!9509) r!17423)) b!3068960))

(assert (= (and start!292732 ((_ is Cons!35250) s!11993)) b!3068953))

(declare-fun m!3384783 () Bool)

(assert (=> b!3068959 m!3384783))

(declare-fun m!3384785 () Bool)

(assert (=> b!3068959 m!3384785))

(declare-fun m!3384787 () Bool)

(assert (=> b!3068959 m!3384787))

(declare-fun m!3384789 () Bool)

(assert (=> b!3068955 m!3384789))

(declare-fun m!3384791 () Bool)

(assert (=> b!3068955 m!3384791))

(declare-fun m!3384793 () Bool)

(assert (=> b!3068955 m!3384793))

(declare-fun m!3384795 () Bool)

(assert (=> b!3068955 m!3384795))

(declare-fun m!3384797 () Bool)

(assert (=> b!3068963 m!3384797))

(declare-fun m!3384799 () Bool)

(assert (=> b!3068958 m!3384799))

(declare-fun m!3384801 () Bool)

(assert (=> b!3068957 m!3384801))

(declare-fun m!3384803 () Bool)

(assert (=> start!292732 m!3384803))

(declare-fun m!3384805 () Bool)

(assert (=> b!3068956 m!3384805))

(declare-fun m!3384807 () Bool)

(assert (=> b!3068954 m!3384807))

(declare-fun m!3384809 () Bool)

(assert (=> b!3068954 m!3384809))

(declare-fun m!3384811 () Bool)

(assert (=> b!3068954 m!3384811))

(declare-fun m!3384813 () Bool)

(assert (=> b!3068965 m!3384813))

(declare-fun m!3384815 () Bool)

(assert (=> b!3068965 m!3384815))

(declare-fun m!3384817 () Bool)

(assert (=> b!3068965 m!3384817))

(declare-fun m!3384819 () Bool)

(assert (=> b!3068965 m!3384819))

(check-sat (not b!3068960) (not b!3068956) (not b!3068955) (not b!3068963) (not b!3068965) (not b!3068957) (not b!3068958) (not b!3068962) (not b!3068954) (not b!3068961) (not b!3068959) tp_is_empty!16581 (not start!292732) (not b!3068953))
(check-sat)
(get-model)

(declare-fun b!3069027 () Bool)

(declare-fun e!1920952 () Int)

(declare-fun call!212948 () Int)

(assert (=> b!3069027 (= e!1920952 (+ 1 call!212948))))

(declare-fun bm!212937 () Bool)

(declare-fun call!212947 () Int)

(declare-fun call!212945 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!212937 (= call!212948 (maxBigInt!0 call!212947 call!212945))))

(declare-fun c!510105 () Bool)

(declare-fun call!212942 () Int)

(declare-fun bm!212938 () Bool)

(declare-fun c!510100 () Bool)

(assert (=> bm!212938 (= call!212942 (regexDepth!103 (ite c!510100 (regTwo!19531 (regTwo!19530 r!17423)) (ite c!510105 (regTwo!19530 (regTwo!19530 r!17423)) (reg!9838 (regTwo!19530 r!17423))))))))

(declare-fun b!3069028 () Bool)

(declare-fun e!1920950 () Bool)

(declare-fun lt!1051239 () Int)

(assert (=> b!3069028 (= e!1920950 (= lt!1051239 1))))

(declare-fun bm!212939 () Bool)

(declare-fun call!212943 () Int)

(assert (=> bm!212939 (= call!212943 call!212942)))

(declare-fun bm!212940 () Bool)

(declare-fun call!212946 () Int)

(assert (=> bm!212940 (= call!212947 call!212946)))

(declare-fun bm!212941 () Bool)

(declare-fun c!510104 () Bool)

(declare-fun c!510101 () Bool)

(assert (=> bm!212941 (= call!212946 (regexDepth!103 (ite c!510101 (reg!9838 (regTwo!19530 r!17423)) (ite c!510104 (regOne!19531 (regTwo!19530 r!17423)) (regOne!19530 (regTwo!19530 r!17423))))))))

(declare-fun d!856034 () Bool)

(declare-fun e!1920949 () Bool)

(assert (=> d!856034 e!1920949))

(declare-fun res!1259646 () Bool)

(assert (=> d!856034 (=> (not res!1259646) (not e!1920949))))

(assert (=> d!856034 (= res!1259646 (> lt!1051239 0))))

(declare-fun e!1920958 () Int)

(assert (=> d!856034 (= lt!1051239 e!1920958)))

(declare-fun c!510102 () Bool)

(assert (=> d!856034 (= c!510102 ((_ is ElementMatch!9509) (regTwo!19530 r!17423)))))

(assert (=> d!856034 (= (regexDepth!103 (regTwo!19530 r!17423)) lt!1051239)))

(declare-fun b!3069029 () Bool)

(declare-fun e!1920956 () Bool)

(declare-fun e!1920951 () Bool)

(assert (=> b!3069029 (= e!1920956 e!1920951)))

(declare-fun res!1259648 () Bool)

(declare-fun call!212944 () Int)

(assert (=> b!3069029 (= res!1259648 (> lt!1051239 call!212944))))

(assert (=> b!3069029 (=> (not res!1259648) (not e!1920951))))

(declare-fun b!3069030 () Bool)

(assert (=> b!3069030 (= e!1920950 (> lt!1051239 call!212943))))

(declare-fun b!3069031 () Bool)

(assert (=> b!3069031 (= e!1920958 1)))

(declare-fun b!3069032 () Bool)

(assert (=> b!3069032 (= e!1920951 (> lt!1051239 call!212942))))

(declare-fun b!3069033 () Bool)

(assert (=> b!3069033 (= e!1920949 e!1920956)))

(assert (=> b!3069033 (= c!510100 ((_ is Union!9509) (regTwo!19530 r!17423)))))

(declare-fun b!3069034 () Bool)

(assert (=> b!3069034 (= e!1920952 1)))

(declare-fun b!3069035 () Bool)

(declare-fun res!1259647 () Bool)

(declare-fun e!1920954 () Bool)

(assert (=> b!3069035 (=> (not res!1259647) (not e!1920954))))

(assert (=> b!3069035 (= res!1259647 (> lt!1051239 call!212944))))

(declare-fun e!1920953 () Bool)

(assert (=> b!3069035 (= e!1920953 e!1920954)))

(declare-fun b!3069036 () Bool)

(declare-fun e!1920957 () Int)

(assert (=> b!3069036 (= e!1920957 (+ 1 call!212946))))

(declare-fun b!3069037 () Bool)

(assert (=> b!3069037 (= e!1920956 e!1920953)))

(assert (=> b!3069037 (= c!510105 ((_ is Concat!14830) (regTwo!19530 r!17423)))))

(declare-fun b!3069038 () Bool)

(assert (=> b!3069038 (= c!510104 ((_ is Union!9509) (regTwo!19530 r!17423)))))

(declare-fun e!1920955 () Int)

(assert (=> b!3069038 (= e!1920957 e!1920955)))

(declare-fun b!3069039 () Bool)

(assert (=> b!3069039 (= e!1920955 (+ 1 call!212948))))

(declare-fun bm!212942 () Bool)

(assert (=> bm!212942 (= call!212945 (regexDepth!103 (ite c!510104 (regTwo!19531 (regTwo!19530 r!17423)) (regTwo!19530 (regTwo!19530 r!17423)))))))

(declare-fun bm!212943 () Bool)

(assert (=> bm!212943 (= call!212944 (regexDepth!103 (ite c!510100 (regOne!19531 (regTwo!19530 r!17423)) (regOne!19530 (regTwo!19530 r!17423)))))))

(declare-fun b!3069040 () Bool)

(assert (=> b!3069040 (= e!1920954 (> lt!1051239 call!212943))))

(declare-fun b!3069041 () Bool)

(assert (=> b!3069041 (= e!1920958 e!1920957)))

(assert (=> b!3069041 (= c!510101 ((_ is Star!9509) (regTwo!19530 r!17423)))))

(declare-fun b!3069042 () Bool)

(assert (=> b!3069042 (= e!1920955 e!1920952)))

(declare-fun c!510106 () Bool)

(assert (=> b!3069042 (= c!510106 ((_ is Concat!14830) (regTwo!19530 r!17423)))))

(declare-fun b!3069043 () Bool)

(declare-fun c!510103 () Bool)

(assert (=> b!3069043 (= c!510103 ((_ is Star!9509) (regTwo!19530 r!17423)))))

(assert (=> b!3069043 (= e!1920953 e!1920950)))

(assert (= (and d!856034 c!510102) b!3069031))

(assert (= (and d!856034 (not c!510102)) b!3069041))

(assert (= (and b!3069041 c!510101) b!3069036))

(assert (= (and b!3069041 (not c!510101)) b!3069038))

(assert (= (and b!3069038 c!510104) b!3069039))

(assert (= (and b!3069038 (not c!510104)) b!3069042))

(assert (= (and b!3069042 c!510106) b!3069027))

(assert (= (and b!3069042 (not c!510106)) b!3069034))

(assert (= (or b!3069039 b!3069027) bm!212942))

(assert (= (or b!3069039 b!3069027) bm!212940))

(assert (= (or b!3069039 b!3069027) bm!212937))

(assert (= (or b!3069036 bm!212940) bm!212941))

(assert (= (and d!856034 res!1259646) b!3069033))

(assert (= (and b!3069033 c!510100) b!3069029))

(assert (= (and b!3069033 (not c!510100)) b!3069037))

(assert (= (and b!3069029 res!1259648) b!3069032))

(assert (= (and b!3069037 c!510105) b!3069035))

(assert (= (and b!3069037 (not c!510105)) b!3069043))

(assert (= (and b!3069035 res!1259647) b!3069040))

(assert (= (and b!3069043 c!510103) b!3069030))

(assert (= (and b!3069043 (not c!510103)) b!3069028))

(assert (= (or b!3069040 b!3069030) bm!212939))

(assert (= (or b!3069032 bm!212939) bm!212938))

(assert (= (or b!3069029 b!3069035) bm!212943))

(declare-fun m!3384827 () Bool)

(assert (=> bm!212943 m!3384827))

(declare-fun m!3384829 () Bool)

(assert (=> bm!212942 m!3384829))

(declare-fun m!3384831 () Bool)

(assert (=> bm!212937 m!3384831))

(declare-fun m!3384833 () Bool)

(assert (=> bm!212941 m!3384833))

(declare-fun m!3384835 () Bool)

(assert (=> bm!212938 m!3384835))

(assert (=> b!3068965 d!856034))

(declare-fun d!856040 () Bool)

(declare-fun lt!1051242 () Int)

(assert (=> d!856040 (>= lt!1051242 0)))

(declare-fun e!1920961 () Int)

(assert (=> d!856040 (= lt!1051242 e!1920961)))

(declare-fun c!510109 () Bool)

(assert (=> d!856040 (= c!510109 ((_ is Nil!35250) Nil!35250))))

(assert (=> d!856040 (= (size!26559 Nil!35250) lt!1051242)))

(declare-fun b!3069048 () Bool)

(assert (=> b!3069048 (= e!1920961 0)))

(declare-fun b!3069049 () Bool)

(assert (=> b!3069049 (= e!1920961 (+ 1 (size!26559 (t!234439 Nil!35250))))))

(assert (= (and d!856040 c!510109) b!3069048))

(assert (= (and d!856040 (not c!510109)) b!3069049))

(declare-fun m!3384837 () Bool)

(assert (=> b!3069049 m!3384837))

(assert (=> b!3068965 d!856040))

(declare-fun b!3069052 () Bool)

(declare-fun e!1920965 () Int)

(declare-fun call!212955 () Int)

(assert (=> b!3069052 (= e!1920965 (+ 1 call!212955))))

(declare-fun bm!212944 () Bool)

(declare-fun call!212954 () Int)

(declare-fun call!212952 () Int)

(assert (=> bm!212944 (= call!212955 (maxBigInt!0 call!212954 call!212952))))

(declare-fun c!510115 () Bool)

(declare-fun bm!212945 () Bool)

(declare-fun c!510110 () Bool)

(declare-fun call!212949 () Int)

(assert (=> bm!212945 (= call!212949 (regexDepth!103 (ite c!510110 (regTwo!19531 r!17423) (ite c!510115 (regTwo!19530 r!17423) (reg!9838 r!17423)))))))

(declare-fun b!3069053 () Bool)

(declare-fun e!1920963 () Bool)

(declare-fun lt!1051243 () Int)

(assert (=> b!3069053 (= e!1920963 (= lt!1051243 1))))

(declare-fun bm!212946 () Bool)

(declare-fun call!212950 () Int)

(assert (=> bm!212946 (= call!212950 call!212949)))

(declare-fun bm!212947 () Bool)

(declare-fun call!212953 () Int)

(assert (=> bm!212947 (= call!212954 call!212953)))

(declare-fun c!510114 () Bool)

(declare-fun c!510111 () Bool)

(declare-fun bm!212948 () Bool)

(assert (=> bm!212948 (= call!212953 (regexDepth!103 (ite c!510111 (reg!9838 r!17423) (ite c!510114 (regOne!19531 r!17423) (regOne!19530 r!17423)))))))

(declare-fun d!856042 () Bool)

(declare-fun e!1920962 () Bool)

(assert (=> d!856042 e!1920962))

(declare-fun res!1259649 () Bool)

(assert (=> d!856042 (=> (not res!1259649) (not e!1920962))))

(assert (=> d!856042 (= res!1259649 (> lt!1051243 0))))

(declare-fun e!1920971 () Int)

(assert (=> d!856042 (= lt!1051243 e!1920971)))

(declare-fun c!510112 () Bool)

(assert (=> d!856042 (= c!510112 ((_ is ElementMatch!9509) r!17423))))

(assert (=> d!856042 (= (regexDepth!103 r!17423) lt!1051243)))

(declare-fun b!3069054 () Bool)

(declare-fun e!1920969 () Bool)

(declare-fun e!1920964 () Bool)

(assert (=> b!3069054 (= e!1920969 e!1920964)))

(declare-fun res!1259651 () Bool)

(declare-fun call!212951 () Int)

(assert (=> b!3069054 (= res!1259651 (> lt!1051243 call!212951))))

(assert (=> b!3069054 (=> (not res!1259651) (not e!1920964))))

(declare-fun b!3069055 () Bool)

(assert (=> b!3069055 (= e!1920963 (> lt!1051243 call!212950))))

(declare-fun b!3069057 () Bool)

(assert (=> b!3069057 (= e!1920971 1)))

(declare-fun b!3069059 () Bool)

(assert (=> b!3069059 (= e!1920964 (> lt!1051243 call!212949))))

(declare-fun b!3069060 () Bool)

(assert (=> b!3069060 (= e!1920962 e!1920969)))

(assert (=> b!3069060 (= c!510110 ((_ is Union!9509) r!17423))))

(declare-fun b!3069061 () Bool)

(assert (=> b!3069061 (= e!1920965 1)))

(declare-fun b!3069062 () Bool)

(declare-fun res!1259650 () Bool)

(declare-fun e!1920967 () Bool)

(assert (=> b!3069062 (=> (not res!1259650) (not e!1920967))))

(assert (=> b!3069062 (= res!1259650 (> lt!1051243 call!212951))))

(declare-fun e!1920966 () Bool)

(assert (=> b!3069062 (= e!1920966 e!1920967)))

(declare-fun b!3069063 () Bool)

(declare-fun e!1920970 () Int)

(assert (=> b!3069063 (= e!1920970 (+ 1 call!212953))))

(declare-fun b!3069064 () Bool)

(assert (=> b!3069064 (= e!1920969 e!1920966)))

(assert (=> b!3069064 (= c!510115 ((_ is Concat!14830) r!17423))))

(declare-fun b!3069065 () Bool)

(assert (=> b!3069065 (= c!510114 ((_ is Union!9509) r!17423))))

(declare-fun e!1920968 () Int)

(assert (=> b!3069065 (= e!1920970 e!1920968)))

(declare-fun b!3069066 () Bool)

(assert (=> b!3069066 (= e!1920968 (+ 1 call!212955))))

(declare-fun bm!212949 () Bool)

(assert (=> bm!212949 (= call!212952 (regexDepth!103 (ite c!510114 (regTwo!19531 r!17423) (regTwo!19530 r!17423))))))

(declare-fun bm!212950 () Bool)

(assert (=> bm!212950 (= call!212951 (regexDepth!103 (ite c!510110 (regOne!19531 r!17423) (regOne!19530 r!17423))))))

(declare-fun b!3069067 () Bool)

(assert (=> b!3069067 (= e!1920967 (> lt!1051243 call!212950))))

(declare-fun b!3069068 () Bool)

(assert (=> b!3069068 (= e!1920971 e!1920970)))

(assert (=> b!3069068 (= c!510111 ((_ is Star!9509) r!17423))))

(declare-fun b!3069069 () Bool)

(assert (=> b!3069069 (= e!1920968 e!1920965)))

(declare-fun c!510116 () Bool)

(assert (=> b!3069069 (= c!510116 ((_ is Concat!14830) r!17423))))

(declare-fun b!3069070 () Bool)

(declare-fun c!510113 () Bool)

(assert (=> b!3069070 (= c!510113 ((_ is Star!9509) r!17423))))

(assert (=> b!3069070 (= e!1920966 e!1920963)))

(assert (= (and d!856042 c!510112) b!3069057))

(assert (= (and d!856042 (not c!510112)) b!3069068))

(assert (= (and b!3069068 c!510111) b!3069063))

(assert (= (and b!3069068 (not c!510111)) b!3069065))

(assert (= (and b!3069065 c!510114) b!3069066))

(assert (= (and b!3069065 (not c!510114)) b!3069069))

(assert (= (and b!3069069 c!510116) b!3069052))

(assert (= (and b!3069069 (not c!510116)) b!3069061))

(assert (= (or b!3069066 b!3069052) bm!212949))

(assert (= (or b!3069066 b!3069052) bm!212947))

(assert (= (or b!3069066 b!3069052) bm!212944))

(assert (= (or b!3069063 bm!212947) bm!212948))

(assert (= (and d!856042 res!1259649) b!3069060))

(assert (= (and b!3069060 c!510110) b!3069054))

(assert (= (and b!3069060 (not c!510110)) b!3069064))

(assert (= (and b!3069054 res!1259651) b!3069059))

(assert (= (and b!3069064 c!510115) b!3069062))

(assert (= (and b!3069064 (not c!510115)) b!3069070))

(assert (= (and b!3069062 res!1259650) b!3069067))

(assert (= (and b!3069070 c!510113) b!3069055))

(assert (= (and b!3069070 (not c!510113)) b!3069053))

(assert (= (or b!3069067 b!3069055) bm!212946))

(assert (= (or b!3069059 bm!212946) bm!212945))

(assert (= (or b!3069054 b!3069062) bm!212950))

(declare-fun m!3384839 () Bool)

(assert (=> bm!212950 m!3384839))

(declare-fun m!3384841 () Bool)

(assert (=> bm!212949 m!3384841))

(declare-fun m!3384843 () Bool)

(assert (=> bm!212944 m!3384843))

(declare-fun m!3384845 () Bool)

(assert (=> bm!212948 m!3384845))

(declare-fun m!3384847 () Bool)

(assert (=> bm!212945 m!3384847))

(assert (=> b!3068965 d!856042))

(declare-fun d!856044 () Bool)

(declare-fun lt!1051246 () Int)

(assert (=> d!856044 (>= lt!1051246 0)))

(declare-fun e!1920986 () Int)

(assert (=> d!856044 (= lt!1051246 e!1920986)))

(declare-fun c!510123 () Bool)

(assert (=> d!856044 (= c!510123 ((_ is Nil!35250) s!11993))))

(assert (=> d!856044 (= (size!26559 s!11993) lt!1051246)))

(declare-fun b!3069093 () Bool)

(assert (=> b!3069093 (= e!1920986 0)))

(declare-fun b!3069094 () Bool)

(assert (=> b!3069094 (= e!1920986 (+ 1 (size!26559 (t!234439 s!11993))))))

(assert (= (and d!856044 c!510123) b!3069093))

(assert (= (and d!856044 (not c!510123)) b!3069094))

(declare-fun m!3384849 () Bool)

(assert (=> b!3069094 m!3384849))

(assert (=> b!3068965 d!856044))

(declare-fun b!3069129 () Bool)

(declare-fun e!1921013 () Bool)

(declare-fun call!212966 () Bool)

(assert (=> b!3069129 (= e!1921013 call!212966)))

(declare-fun b!3069130 () Bool)

(declare-fun e!1921010 () Bool)

(declare-fun call!212965 () Bool)

(assert (=> b!3069130 (= e!1921010 call!212965)))

(declare-fun b!3069131 () Bool)

(declare-fun res!1259690 () Bool)

(assert (=> b!3069131 (=> (not res!1259690) (not e!1921013))))

(assert (=> b!3069131 (= res!1259690 call!212965)))

(declare-fun e!1921009 () Bool)

(assert (=> b!3069131 (= e!1921009 e!1921013)))

(declare-fun bm!212960 () Bool)

(declare-fun c!510132 () Bool)

(assert (=> bm!212960 (= call!212965 (validRegex!4242 (ite c!510132 (regOne!19531 (regTwo!19530 r!17423)) (regTwo!19530 (regTwo!19530 r!17423)))))))

(declare-fun b!3069132 () Bool)

(declare-fun e!1921008 () Bool)

(assert (=> b!3069132 (= e!1921008 e!1921009)))

(assert (=> b!3069132 (= c!510132 ((_ is Union!9509) (regTwo!19530 r!17423)))))

(declare-fun d!856046 () Bool)

(declare-fun res!1259689 () Bool)

(declare-fun e!1921014 () Bool)

(assert (=> d!856046 (=> res!1259689 e!1921014)))

(assert (=> d!856046 (= res!1259689 ((_ is ElementMatch!9509) (regTwo!19530 r!17423)))))

(assert (=> d!856046 (= (validRegex!4242 (regTwo!19530 r!17423)) e!1921014)))

(declare-fun b!3069133 () Bool)

(declare-fun e!1921012 () Bool)

(assert (=> b!3069133 (= e!1921012 e!1921010)))

(declare-fun res!1259688 () Bool)

(assert (=> b!3069133 (=> (not res!1259688) (not e!1921010))))

(assert (=> b!3069133 (= res!1259688 call!212966)))

(declare-fun bm!212961 () Bool)

(declare-fun call!212967 () Bool)

(assert (=> bm!212961 (= call!212966 call!212967)))

(declare-fun b!3069134 () Bool)

(declare-fun e!1921011 () Bool)

(assert (=> b!3069134 (= e!1921011 call!212967)))

(declare-fun b!3069135 () Bool)

(assert (=> b!3069135 (= e!1921008 e!1921011)))

(declare-fun res!1259687 () Bool)

(declare-fun nullable!3155 (Regex!9509) Bool)

(assert (=> b!3069135 (= res!1259687 (not (nullable!3155 (reg!9838 (regTwo!19530 r!17423)))))))

(assert (=> b!3069135 (=> (not res!1259687) (not e!1921011))))

(declare-fun c!510131 () Bool)

(declare-fun bm!212962 () Bool)

(assert (=> bm!212962 (= call!212967 (validRegex!4242 (ite c!510131 (reg!9838 (regTwo!19530 r!17423)) (ite c!510132 (regTwo!19531 (regTwo!19530 r!17423)) (regOne!19530 (regTwo!19530 r!17423))))))))

(declare-fun b!3069136 () Bool)

(declare-fun res!1259686 () Bool)

(assert (=> b!3069136 (=> res!1259686 e!1921012)))

(assert (=> b!3069136 (= res!1259686 (not ((_ is Concat!14830) (regTwo!19530 r!17423))))))

(assert (=> b!3069136 (= e!1921009 e!1921012)))

(declare-fun b!3069137 () Bool)

(assert (=> b!3069137 (= e!1921014 e!1921008)))

(assert (=> b!3069137 (= c!510131 ((_ is Star!9509) (regTwo!19530 r!17423)))))

(assert (= (and d!856046 (not res!1259689)) b!3069137))

(assert (= (and b!3069137 c!510131) b!3069135))

(assert (= (and b!3069137 (not c!510131)) b!3069132))

(assert (= (and b!3069135 res!1259687) b!3069134))

(assert (= (and b!3069132 c!510132) b!3069131))

(assert (= (and b!3069132 (not c!510132)) b!3069136))

(assert (= (and b!3069131 res!1259690) b!3069129))

(assert (= (and b!3069136 (not res!1259686)) b!3069133))

(assert (= (and b!3069133 res!1259688) b!3069130))

(assert (= (or b!3069131 b!3069130) bm!212960))

(assert (= (or b!3069129 b!3069133) bm!212961))

(assert (= (or b!3069134 bm!212961) bm!212962))

(declare-fun m!3384851 () Bool)

(assert (=> bm!212960 m!3384851))

(declare-fun m!3384853 () Bool)

(assert (=> b!3069135 m!3384853))

(declare-fun m!3384857 () Bool)

(assert (=> bm!212962 m!3384857))

(assert (=> b!3068955 d!856046))

(declare-fun b!3069196 () Bool)

(declare-fun e!1921049 () Bool)

(declare-fun head!6810 (List!35374) C!19204)

(assert (=> b!3069196 (= e!1921049 (= (head!6810 s!11993) (c!510079 (regOne!19530 r!17423))))))

(declare-fun b!3069197 () Bool)

(declare-fun e!1921047 () Bool)

(declare-fun e!1921045 () Bool)

(assert (=> b!3069197 (= e!1921047 e!1921045)))

(declare-fun c!510150 () Bool)

(assert (=> b!3069197 (= c!510150 ((_ is EmptyLang!9509) (regOne!19530 r!17423)))))

(declare-fun b!3069198 () Bool)

(declare-fun e!1921048 () Bool)

(declare-fun e!1921046 () Bool)

(assert (=> b!3069198 (= e!1921048 e!1921046)))

(declare-fun res!1259719 () Bool)

(assert (=> b!3069198 (=> res!1259719 e!1921046)))

(declare-fun call!212977 () Bool)

(assert (=> b!3069198 (= res!1259719 call!212977)))

(declare-fun b!3069199 () Bool)

(declare-fun lt!1051256 () Bool)

(assert (=> b!3069199 (= e!1921045 (not lt!1051256))))

(declare-fun b!3069200 () Bool)

(declare-fun e!1921044 () Bool)

(assert (=> b!3069200 (= e!1921044 e!1921048)))

(declare-fun res!1259718 () Bool)

(assert (=> b!3069200 (=> (not res!1259718) (not e!1921048))))

(assert (=> b!3069200 (= res!1259718 (not lt!1051256))))

(declare-fun b!3069201 () Bool)

(declare-fun res!1259715 () Bool)

(assert (=> b!3069201 (=> (not res!1259715) (not e!1921049))))

(declare-fun tail!5036 (List!35374) List!35374)

(assert (=> b!3069201 (= res!1259715 (isEmpty!19575 (tail!5036 s!11993)))))

(declare-fun b!3069202 () Bool)

(declare-fun res!1259722 () Bool)

(assert (=> b!3069202 (=> res!1259722 e!1921046)))

(assert (=> b!3069202 (= res!1259722 (not (isEmpty!19575 (tail!5036 s!11993))))))

(declare-fun b!3069203 () Bool)

(declare-fun res!1259717 () Bool)

(assert (=> b!3069203 (=> (not res!1259717) (not e!1921049))))

(assert (=> b!3069203 (= res!1259717 (not call!212977))))

(declare-fun bm!212972 () Bool)

(assert (=> bm!212972 (= call!212977 (isEmpty!19575 s!11993))))

(declare-fun d!856048 () Bool)

(assert (=> d!856048 e!1921047))

(declare-fun c!510152 () Bool)

(assert (=> d!856048 (= c!510152 ((_ is EmptyExpr!9509) (regOne!19530 r!17423)))))

(declare-fun e!1921050 () Bool)

(assert (=> d!856048 (= lt!1051256 e!1921050)))

(declare-fun c!510151 () Bool)

(assert (=> d!856048 (= c!510151 (isEmpty!19575 s!11993))))

(assert (=> d!856048 (validRegex!4242 (regOne!19530 r!17423))))

(assert (=> d!856048 (= (matchR!4391 (regOne!19530 r!17423) s!11993) lt!1051256)))

(declare-fun b!3069204 () Bool)

(declare-fun derivativeStep!2751 (Regex!9509 C!19204) Regex!9509)

(assert (=> b!3069204 (= e!1921050 (matchR!4391 (derivativeStep!2751 (regOne!19530 r!17423) (head!6810 s!11993)) (tail!5036 s!11993)))))

(declare-fun b!3069205 () Bool)

(declare-fun res!1259720 () Bool)

(assert (=> b!3069205 (=> res!1259720 e!1921044)))

(assert (=> b!3069205 (= res!1259720 e!1921049)))

(declare-fun res!1259721 () Bool)

(assert (=> b!3069205 (=> (not res!1259721) (not e!1921049))))

(assert (=> b!3069205 (= res!1259721 lt!1051256)))

(declare-fun b!3069206 () Bool)

(assert (=> b!3069206 (= e!1921050 (nullable!3155 (regOne!19530 r!17423)))))

(declare-fun b!3069207 () Bool)

(assert (=> b!3069207 (= e!1921046 (not (= (head!6810 s!11993) (c!510079 (regOne!19530 r!17423)))))))

(declare-fun b!3069208 () Bool)

(assert (=> b!3069208 (= e!1921047 (= lt!1051256 call!212977))))

(declare-fun b!3069209 () Bool)

(declare-fun res!1259716 () Bool)

(assert (=> b!3069209 (=> res!1259716 e!1921044)))

(assert (=> b!3069209 (= res!1259716 (not ((_ is ElementMatch!9509) (regOne!19530 r!17423))))))

(assert (=> b!3069209 (= e!1921045 e!1921044)))

(assert (= (and d!856048 c!510151) b!3069206))

(assert (= (and d!856048 (not c!510151)) b!3069204))

(assert (= (and d!856048 c!510152) b!3069208))

(assert (= (and d!856048 (not c!510152)) b!3069197))

(assert (= (and b!3069197 c!510150) b!3069199))

(assert (= (and b!3069197 (not c!510150)) b!3069209))

(assert (= (and b!3069209 (not res!1259716)) b!3069205))

(assert (= (and b!3069205 res!1259721) b!3069203))

(assert (= (and b!3069203 res!1259717) b!3069201))

(assert (= (and b!3069201 res!1259715) b!3069196))

(assert (= (and b!3069205 (not res!1259720)) b!3069200))

(assert (= (and b!3069200 res!1259718) b!3069198))

(assert (= (and b!3069198 (not res!1259719)) b!3069202))

(assert (= (and b!3069202 (not res!1259722)) b!3069207))

(assert (= (or b!3069208 b!3069198 b!3069203) bm!212972))

(declare-fun m!3384883 () Bool)

(assert (=> b!3069201 m!3384883))

(assert (=> b!3069201 m!3384883))

(declare-fun m!3384885 () Bool)

(assert (=> b!3069201 m!3384885))

(declare-fun m!3384887 () Bool)

(assert (=> b!3069207 m!3384887))

(assert (=> bm!212972 m!3384797))

(assert (=> d!856048 m!3384797))

(declare-fun m!3384889 () Bool)

(assert (=> d!856048 m!3384889))

(declare-fun m!3384891 () Bool)

(assert (=> b!3069206 m!3384891))

(assert (=> b!3069196 m!3384887))

(assert (=> b!3069202 m!3384883))

(assert (=> b!3069202 m!3384883))

(assert (=> b!3069202 m!3384885))

(assert (=> b!3069204 m!3384887))

(assert (=> b!3069204 m!3384887))

(declare-fun m!3384893 () Bool)

(assert (=> b!3069204 m!3384893))

(assert (=> b!3069204 m!3384883))

(assert (=> b!3069204 m!3384893))

(assert (=> b!3069204 m!3384883))

(declare-fun m!3384895 () Bool)

(assert (=> b!3069204 m!3384895))

(assert (=> b!3068955 d!856048))

(declare-fun b!3069216 () Bool)

(declare-fun e!1921060 () Bool)

(assert (=> b!3069216 (= e!1921060 (= (head!6810 s!11993) (c!510079 lt!1051235)))))

(declare-fun b!3069217 () Bool)

(declare-fun e!1921058 () Bool)

(declare-fun e!1921056 () Bool)

(assert (=> b!3069217 (= e!1921058 e!1921056)))

(declare-fun c!510155 () Bool)

(assert (=> b!3069217 (= c!510155 ((_ is EmptyLang!9509) lt!1051235))))

(declare-fun b!3069218 () Bool)

(declare-fun e!1921059 () Bool)

(declare-fun e!1921057 () Bool)

(assert (=> b!3069218 (= e!1921059 e!1921057)))

(declare-fun res!1259729 () Bool)

(assert (=> b!3069218 (=> res!1259729 e!1921057)))

(declare-fun call!212980 () Bool)

(assert (=> b!3069218 (= res!1259729 call!212980)))

(declare-fun b!3069219 () Bool)

(declare-fun lt!1051257 () Bool)

(assert (=> b!3069219 (= e!1921056 (not lt!1051257))))

(declare-fun b!3069220 () Bool)

(declare-fun e!1921055 () Bool)

(assert (=> b!3069220 (= e!1921055 e!1921059)))

(declare-fun res!1259728 () Bool)

(assert (=> b!3069220 (=> (not res!1259728) (not e!1921059))))

(assert (=> b!3069220 (= res!1259728 (not lt!1051257))))

(declare-fun b!3069221 () Bool)

(declare-fun res!1259725 () Bool)

(assert (=> b!3069221 (=> (not res!1259725) (not e!1921060))))

(assert (=> b!3069221 (= res!1259725 (isEmpty!19575 (tail!5036 s!11993)))))

(declare-fun b!3069222 () Bool)

(declare-fun res!1259732 () Bool)

(assert (=> b!3069222 (=> res!1259732 e!1921057)))

(assert (=> b!3069222 (= res!1259732 (not (isEmpty!19575 (tail!5036 s!11993))))))

(declare-fun b!3069223 () Bool)

(declare-fun res!1259727 () Bool)

(assert (=> b!3069223 (=> (not res!1259727) (not e!1921060))))

(assert (=> b!3069223 (= res!1259727 (not call!212980))))

(declare-fun bm!212975 () Bool)

(assert (=> bm!212975 (= call!212980 (isEmpty!19575 s!11993))))

(declare-fun d!856062 () Bool)

(assert (=> d!856062 e!1921058))

(declare-fun c!510157 () Bool)

(assert (=> d!856062 (= c!510157 ((_ is EmptyExpr!9509) lt!1051235))))

(declare-fun e!1921061 () Bool)

(assert (=> d!856062 (= lt!1051257 e!1921061)))

(declare-fun c!510156 () Bool)

(assert (=> d!856062 (= c!510156 (isEmpty!19575 s!11993))))

(assert (=> d!856062 (validRegex!4242 lt!1051235)))

(assert (=> d!856062 (= (matchR!4391 lt!1051235 s!11993) lt!1051257)))

(declare-fun b!3069224 () Bool)

(assert (=> b!3069224 (= e!1921061 (matchR!4391 (derivativeStep!2751 lt!1051235 (head!6810 s!11993)) (tail!5036 s!11993)))))

(declare-fun b!3069225 () Bool)

(declare-fun res!1259730 () Bool)

(assert (=> b!3069225 (=> res!1259730 e!1921055)))

(assert (=> b!3069225 (= res!1259730 e!1921060)))

(declare-fun res!1259731 () Bool)

(assert (=> b!3069225 (=> (not res!1259731) (not e!1921060))))

(assert (=> b!3069225 (= res!1259731 lt!1051257)))

(declare-fun b!3069226 () Bool)

(assert (=> b!3069226 (= e!1921061 (nullable!3155 lt!1051235))))

(declare-fun b!3069227 () Bool)

(assert (=> b!3069227 (= e!1921057 (not (= (head!6810 s!11993) (c!510079 lt!1051235))))))

(declare-fun b!3069228 () Bool)

(assert (=> b!3069228 (= e!1921058 (= lt!1051257 call!212980))))

(declare-fun b!3069229 () Bool)

(declare-fun res!1259726 () Bool)

(assert (=> b!3069229 (=> res!1259726 e!1921055)))

(assert (=> b!3069229 (= res!1259726 (not ((_ is ElementMatch!9509) lt!1051235)))))

(assert (=> b!3069229 (= e!1921056 e!1921055)))

(assert (= (and d!856062 c!510156) b!3069226))

(assert (= (and d!856062 (not c!510156)) b!3069224))

(assert (= (and d!856062 c!510157) b!3069228))

(assert (= (and d!856062 (not c!510157)) b!3069217))

(assert (= (and b!3069217 c!510155) b!3069219))

(assert (= (and b!3069217 (not c!510155)) b!3069229))

(assert (= (and b!3069229 (not res!1259726)) b!3069225))

(assert (= (and b!3069225 res!1259731) b!3069223))

(assert (= (and b!3069223 res!1259727) b!3069221))

(assert (= (and b!3069221 res!1259725) b!3069216))

(assert (= (and b!3069225 (not res!1259730)) b!3069220))

(assert (= (and b!3069220 res!1259728) b!3069218))

(assert (= (and b!3069218 (not res!1259729)) b!3069222))

(assert (= (and b!3069222 (not res!1259732)) b!3069227))

(assert (= (or b!3069228 b!3069218 b!3069223) bm!212975))

(assert (=> b!3069221 m!3384883))

(assert (=> b!3069221 m!3384883))

(assert (=> b!3069221 m!3384885))

(assert (=> b!3069227 m!3384887))

(assert (=> bm!212975 m!3384797))

(assert (=> d!856062 m!3384797))

(declare-fun m!3384897 () Bool)

(assert (=> d!856062 m!3384897))

(declare-fun m!3384899 () Bool)

(assert (=> b!3069226 m!3384899))

(assert (=> b!3069216 m!3384887))

(assert (=> b!3069222 m!3384883))

(assert (=> b!3069222 m!3384883))

(assert (=> b!3069222 m!3384885))

(assert (=> b!3069224 m!3384887))

(assert (=> b!3069224 m!3384887))

(declare-fun m!3384901 () Bool)

(assert (=> b!3069224 m!3384901))

(assert (=> b!3069224 m!3384883))

(assert (=> b!3069224 m!3384901))

(assert (=> b!3069224 m!3384883))

(declare-fun m!3384903 () Bool)

(assert (=> b!3069224 m!3384903))

(assert (=> b!3068955 d!856062))

(declare-fun d!856064 () Bool)

(assert (=> d!856064 (= (matchR!4391 (regOne!19530 r!17423) s!11993) (matchR!4391 (simplify!464 (regOne!19530 r!17423)) s!11993))))

(declare-fun lt!1051260 () Unit!49457)

(declare-fun choose!18186 (Regex!9509 List!35374) Unit!49457)

(assert (=> d!856064 (= lt!1051260 (choose!18186 (regOne!19530 r!17423) s!11993))))

(assert (=> d!856064 (validRegex!4242 (regOne!19530 r!17423))))

(assert (=> d!856064 (= (lemmaSimplifySound!290 (regOne!19530 r!17423) s!11993) lt!1051260)))

(declare-fun bs!532627 () Bool)

(assert (= bs!532627 d!856064))

(assert (=> bs!532627 m!3384889))

(assert (=> bs!532627 m!3384791))

(assert (=> bs!532627 m!3384787))

(declare-fun m!3384905 () Bool)

(assert (=> bs!532627 m!3384905))

(assert (=> bs!532627 m!3384787))

(declare-fun m!3384907 () Bool)

(assert (=> bs!532627 m!3384907))

(assert (=> b!3068955 d!856064))

(declare-fun d!856066 () Bool)

(assert (=> d!856066 (= (isEmptyExpr!566 lt!1051235) ((_ is EmptyExpr!9509) lt!1051235))))

(assert (=> b!3068956 d!856066))

(declare-fun b!3069242 () Bool)

(declare-fun e!1921075 () Bool)

(declare-fun call!212988 () Bool)

(assert (=> b!3069242 (= e!1921075 call!212988)))

(declare-fun b!3069243 () Bool)

(declare-fun e!1921072 () Bool)

(declare-fun call!212987 () Bool)

(assert (=> b!3069243 (= e!1921072 call!212987)))

(declare-fun b!3069244 () Bool)

(declare-fun res!1259741 () Bool)

(assert (=> b!3069244 (=> (not res!1259741) (not e!1921075))))

(assert (=> b!3069244 (= res!1259741 call!212987)))

(declare-fun e!1921071 () Bool)

(assert (=> b!3069244 (= e!1921071 e!1921075)))

(declare-fun bm!212982 () Bool)

(declare-fun c!510163 () Bool)

(assert (=> bm!212982 (= call!212987 (validRegex!4242 (ite c!510163 (regOne!19531 r!17423) (regTwo!19530 r!17423))))))

(declare-fun b!3069245 () Bool)

(declare-fun e!1921070 () Bool)

(assert (=> b!3069245 (= e!1921070 e!1921071)))

(assert (=> b!3069245 (= c!510163 ((_ is Union!9509) r!17423))))

(declare-fun d!856068 () Bool)

(declare-fun res!1259740 () Bool)

(declare-fun e!1921076 () Bool)

(assert (=> d!856068 (=> res!1259740 e!1921076)))

(assert (=> d!856068 (= res!1259740 ((_ is ElementMatch!9509) r!17423))))

(assert (=> d!856068 (= (validRegex!4242 r!17423) e!1921076)))

(declare-fun b!3069246 () Bool)

(declare-fun e!1921074 () Bool)

(assert (=> b!3069246 (= e!1921074 e!1921072)))

(declare-fun res!1259739 () Bool)

(assert (=> b!3069246 (=> (not res!1259739) (not e!1921072))))

(assert (=> b!3069246 (= res!1259739 call!212988)))

(declare-fun bm!212983 () Bool)

(declare-fun call!212989 () Bool)

(assert (=> bm!212983 (= call!212988 call!212989)))

(declare-fun b!3069247 () Bool)

(declare-fun e!1921073 () Bool)

(assert (=> b!3069247 (= e!1921073 call!212989)))

(declare-fun b!3069248 () Bool)

(assert (=> b!3069248 (= e!1921070 e!1921073)))

(declare-fun res!1259738 () Bool)

(assert (=> b!3069248 (= res!1259738 (not (nullable!3155 (reg!9838 r!17423))))))

(assert (=> b!3069248 (=> (not res!1259738) (not e!1921073))))

(declare-fun bm!212984 () Bool)

(declare-fun c!510162 () Bool)

(assert (=> bm!212984 (= call!212989 (validRegex!4242 (ite c!510162 (reg!9838 r!17423) (ite c!510163 (regTwo!19531 r!17423) (regOne!19530 r!17423)))))))

(declare-fun b!3069249 () Bool)

(declare-fun res!1259737 () Bool)

(assert (=> b!3069249 (=> res!1259737 e!1921074)))

(assert (=> b!3069249 (= res!1259737 (not ((_ is Concat!14830) r!17423)))))

(assert (=> b!3069249 (= e!1921071 e!1921074)))

(declare-fun b!3069250 () Bool)

(assert (=> b!3069250 (= e!1921076 e!1921070)))

(assert (=> b!3069250 (= c!510162 ((_ is Star!9509) r!17423))))

(assert (= (and d!856068 (not res!1259740)) b!3069250))

(assert (= (and b!3069250 c!510162) b!3069248))

(assert (= (and b!3069250 (not c!510162)) b!3069245))

(assert (= (and b!3069248 res!1259738) b!3069247))

(assert (= (and b!3069245 c!510163) b!3069244))

(assert (= (and b!3069245 (not c!510163)) b!3069249))

(assert (= (and b!3069244 res!1259741) b!3069242))

(assert (= (and b!3069249 (not res!1259737)) b!3069246))

(assert (= (and b!3069246 res!1259739) b!3069243))

(assert (= (or b!3069244 b!3069243) bm!212982))

(assert (= (or b!3069242 b!3069246) bm!212983))

(assert (= (or b!3069247 bm!212983) bm!212984))

(declare-fun m!3384909 () Bool)

(assert (=> bm!212982 m!3384909))

(declare-fun m!3384911 () Bool)

(assert (=> b!3069248 m!3384911))

(declare-fun m!3384913 () Bool)

(assert (=> bm!212984 m!3384913))

(assert (=> start!292732 d!856068))

(declare-fun d!856070 () Bool)

(assert (=> d!856070 (= (isEmptyLang!560 lt!1051236) ((_ is EmptyLang!9509) lt!1051236))))

(assert (=> b!3068957 d!856070))

(declare-fun d!856072 () Bool)

(assert (=> d!856072 (= (isEmptyExpr!566 lt!1051236) ((_ is EmptyExpr!9509) lt!1051236))))

(assert (=> b!3068958 d!856072))

(declare-fun d!856074 () Bool)

(assert (=> d!856074 (= (isEmpty!19575 s!11993) ((_ is Nil!35250) s!11993))))

(assert (=> b!3068963 d!856074))

(declare-fun b!3069444 () Bool)

(assert (=> b!3069444 true))

(assert (=> b!3069444 true))

(declare-fun bs!532630 () Bool)

(declare-fun b!3069438 () Bool)

(assert (= bs!532630 (and b!3069438 b!3069444)))

(declare-fun lambda!114076 () Int)

(declare-fun lambda!114075 () Int)

(assert (=> bs!532630 (not (= lambda!114076 lambda!114075))))

(assert (=> b!3069438 true))

(assert (=> b!3069438 true))

(declare-fun b!3069436 () Bool)

(declare-fun c!510229 () Bool)

(assert (=> b!3069436 (= c!510229 ((_ is Union!9509) r!17423))))

(declare-fun e!1921179 () Bool)

(declare-fun e!1921180 () Bool)

(assert (=> b!3069436 (= e!1921179 e!1921180)))

(declare-fun b!3069437 () Bool)

(declare-fun e!1921185 () Bool)

(assert (=> b!3069437 (= e!1921180 e!1921185)))

(declare-fun c!510230 () Bool)

(assert (=> b!3069437 (= c!510230 ((_ is Star!9509) r!17423))))

(declare-fun call!213029 () Bool)

(assert (=> b!3069438 (= e!1921185 call!213029)))

(declare-fun d!856076 () Bool)

(declare-fun c!510228 () Bool)

(assert (=> d!856076 (= c!510228 ((_ is EmptyExpr!9509) r!17423))))

(declare-fun e!1921182 () Bool)

(assert (=> d!856076 (= (matchRSpec!1646 r!17423 s!11993) e!1921182)))

(declare-fun b!3069439 () Bool)

(declare-fun call!213030 () Bool)

(assert (=> b!3069439 (= e!1921182 call!213030)))

(declare-fun b!3069440 () Bool)

(assert (=> b!3069440 (= e!1921179 (= s!11993 (Cons!35250 (c!510079 r!17423) Nil!35250)))))

(declare-fun b!3069441 () Bool)

(declare-fun c!510227 () Bool)

(assert (=> b!3069441 (= c!510227 ((_ is ElementMatch!9509) r!17423))))

(declare-fun e!1921183 () Bool)

(assert (=> b!3069441 (= e!1921183 e!1921179)))

(declare-fun b!3069442 () Bool)

(declare-fun e!1921181 () Bool)

(assert (=> b!3069442 (= e!1921180 e!1921181)))

(declare-fun res!1259797 () Bool)

(assert (=> b!3069442 (= res!1259797 (matchRSpec!1646 (regOne!19531 r!17423) s!11993))))

(assert (=> b!3069442 (=> res!1259797 e!1921181)))

(declare-fun bm!213024 () Bool)

(assert (=> bm!213024 (= call!213030 (isEmpty!19575 s!11993))))

(declare-fun bm!213025 () Bool)

(declare-fun Exists!1772 (Int) Bool)

(assert (=> bm!213025 (= call!213029 (Exists!1772 (ite c!510230 lambda!114075 lambda!114076)))))

(declare-fun b!3069443 () Bool)

(declare-fun res!1259798 () Bool)

(declare-fun e!1921184 () Bool)

(assert (=> b!3069443 (=> res!1259798 e!1921184)))

(assert (=> b!3069443 (= res!1259798 call!213030)))

(assert (=> b!3069443 (= e!1921185 e!1921184)))

(assert (=> b!3069444 (= e!1921184 call!213029)))

(declare-fun b!3069445 () Bool)

(assert (=> b!3069445 (= e!1921182 e!1921183)))

(declare-fun res!1259799 () Bool)

(assert (=> b!3069445 (= res!1259799 (not ((_ is EmptyLang!9509) r!17423)))))

(assert (=> b!3069445 (=> (not res!1259799) (not e!1921183))))

(declare-fun b!3069446 () Bool)

(assert (=> b!3069446 (= e!1921181 (matchRSpec!1646 (regTwo!19531 r!17423) s!11993))))

(assert (= (and d!856076 c!510228) b!3069439))

(assert (= (and d!856076 (not c!510228)) b!3069445))

(assert (= (and b!3069445 res!1259799) b!3069441))

(assert (= (and b!3069441 c!510227) b!3069440))

(assert (= (and b!3069441 (not c!510227)) b!3069436))

(assert (= (and b!3069436 c!510229) b!3069442))

(assert (= (and b!3069436 (not c!510229)) b!3069437))

(assert (= (and b!3069442 (not res!1259797)) b!3069446))

(assert (= (and b!3069437 c!510230) b!3069443))

(assert (= (and b!3069437 (not c!510230)) b!3069438))

(assert (= (and b!3069443 (not res!1259798)) b!3069444))

(assert (= (or b!3069444 b!3069438) bm!213025))

(assert (= (or b!3069439 b!3069443) bm!213024))

(declare-fun m!3384953 () Bool)

(assert (=> b!3069442 m!3384953))

(assert (=> bm!213024 m!3384797))

(declare-fun m!3384955 () Bool)

(assert (=> bm!213025 m!3384955))

(declare-fun m!3384957 () Bool)

(assert (=> b!3069446 m!3384957))

(assert (=> b!3068954 d!856076))

(declare-fun b!3069476 () Bool)

(declare-fun e!1921205 () Bool)

(assert (=> b!3069476 (= e!1921205 (= (head!6810 s!11993) (c!510079 r!17423)))))

(declare-fun b!3069477 () Bool)

(declare-fun e!1921203 () Bool)

(declare-fun e!1921201 () Bool)

(assert (=> b!3069477 (= e!1921203 e!1921201)))

(declare-fun c!510242 () Bool)

(assert (=> b!3069477 (= c!510242 ((_ is EmptyLang!9509) r!17423))))

(declare-fun b!3069478 () Bool)

(declare-fun e!1921204 () Bool)

(declare-fun e!1921202 () Bool)

(assert (=> b!3069478 (= e!1921204 e!1921202)))

(declare-fun res!1259807 () Bool)

(assert (=> b!3069478 (=> res!1259807 e!1921202)))

(declare-fun call!213038 () Bool)

(assert (=> b!3069478 (= res!1259807 call!213038)))

(declare-fun b!3069479 () Bool)

(declare-fun lt!1051289 () Bool)

(assert (=> b!3069479 (= e!1921201 (not lt!1051289))))

(declare-fun b!3069480 () Bool)

(declare-fun e!1921200 () Bool)

(assert (=> b!3069480 (= e!1921200 e!1921204)))

(declare-fun res!1259806 () Bool)

(assert (=> b!3069480 (=> (not res!1259806) (not e!1921204))))

(assert (=> b!3069480 (= res!1259806 (not lt!1051289))))

(declare-fun b!3069481 () Bool)

(declare-fun res!1259803 () Bool)

(assert (=> b!3069481 (=> (not res!1259803) (not e!1921205))))

(assert (=> b!3069481 (= res!1259803 (isEmpty!19575 (tail!5036 s!11993)))))

(declare-fun b!3069482 () Bool)

(declare-fun res!1259810 () Bool)

(assert (=> b!3069482 (=> res!1259810 e!1921202)))

(assert (=> b!3069482 (= res!1259810 (not (isEmpty!19575 (tail!5036 s!11993))))))

(declare-fun b!3069483 () Bool)

(declare-fun res!1259805 () Bool)

(assert (=> b!3069483 (=> (not res!1259805) (not e!1921205))))

(assert (=> b!3069483 (= res!1259805 (not call!213038))))

(declare-fun bm!213033 () Bool)

(assert (=> bm!213033 (= call!213038 (isEmpty!19575 s!11993))))

(declare-fun d!856094 () Bool)

(assert (=> d!856094 e!1921203))

(declare-fun c!510244 () Bool)

(assert (=> d!856094 (= c!510244 ((_ is EmptyExpr!9509) r!17423))))

(declare-fun e!1921206 () Bool)

(assert (=> d!856094 (= lt!1051289 e!1921206)))

(declare-fun c!510243 () Bool)

(assert (=> d!856094 (= c!510243 (isEmpty!19575 s!11993))))

(assert (=> d!856094 (validRegex!4242 r!17423)))

(assert (=> d!856094 (= (matchR!4391 r!17423 s!11993) lt!1051289)))

(declare-fun b!3069484 () Bool)

(assert (=> b!3069484 (= e!1921206 (matchR!4391 (derivativeStep!2751 r!17423 (head!6810 s!11993)) (tail!5036 s!11993)))))

(declare-fun b!3069485 () Bool)

(declare-fun res!1259808 () Bool)

(assert (=> b!3069485 (=> res!1259808 e!1921200)))

(assert (=> b!3069485 (= res!1259808 e!1921205)))

(declare-fun res!1259809 () Bool)

(assert (=> b!3069485 (=> (not res!1259809) (not e!1921205))))

(assert (=> b!3069485 (= res!1259809 lt!1051289)))

(declare-fun b!3069486 () Bool)

(assert (=> b!3069486 (= e!1921206 (nullable!3155 r!17423))))

(declare-fun b!3069487 () Bool)

(assert (=> b!3069487 (= e!1921202 (not (= (head!6810 s!11993) (c!510079 r!17423))))))

(declare-fun b!3069488 () Bool)

(assert (=> b!3069488 (= e!1921203 (= lt!1051289 call!213038))))

(declare-fun b!3069489 () Bool)

(declare-fun res!1259804 () Bool)

(assert (=> b!3069489 (=> res!1259804 e!1921200)))

(assert (=> b!3069489 (= res!1259804 (not ((_ is ElementMatch!9509) r!17423)))))

(assert (=> b!3069489 (= e!1921201 e!1921200)))

(assert (= (and d!856094 c!510243) b!3069486))

(assert (= (and d!856094 (not c!510243)) b!3069484))

(assert (= (and d!856094 c!510244) b!3069488))

(assert (= (and d!856094 (not c!510244)) b!3069477))

(assert (= (and b!3069477 c!510242) b!3069479))

(assert (= (and b!3069477 (not c!510242)) b!3069489))

(assert (= (and b!3069489 (not res!1259804)) b!3069485))

(assert (= (and b!3069485 res!1259809) b!3069483))

(assert (= (and b!3069483 res!1259805) b!3069481))

(assert (= (and b!3069481 res!1259803) b!3069476))

(assert (= (and b!3069485 (not res!1259808)) b!3069480))

(assert (= (and b!3069480 res!1259806) b!3069478))

(assert (= (and b!3069478 (not res!1259807)) b!3069482))

(assert (= (and b!3069482 (not res!1259810)) b!3069487))

(assert (= (or b!3069488 b!3069478 b!3069483) bm!213033))

(assert (=> b!3069481 m!3384883))

(assert (=> b!3069481 m!3384883))

(assert (=> b!3069481 m!3384885))

(assert (=> b!3069487 m!3384887))

(assert (=> bm!213033 m!3384797))

(assert (=> d!856094 m!3384797))

(assert (=> d!856094 m!3384803))

(declare-fun m!3384977 () Bool)

(assert (=> b!3069486 m!3384977))

(assert (=> b!3069476 m!3384887))

(assert (=> b!3069482 m!3384883))

(assert (=> b!3069482 m!3384883))

(assert (=> b!3069482 m!3384885))

(assert (=> b!3069484 m!3384887))

(assert (=> b!3069484 m!3384887))

(declare-fun m!3384979 () Bool)

(assert (=> b!3069484 m!3384979))

(assert (=> b!3069484 m!3384883))

(assert (=> b!3069484 m!3384979))

(assert (=> b!3069484 m!3384883))

(declare-fun m!3384981 () Bool)

(assert (=> b!3069484 m!3384981))

(assert (=> b!3068954 d!856094))

(declare-fun d!856098 () Bool)

(assert (=> d!856098 (= (matchR!4391 r!17423 s!11993) (matchRSpec!1646 r!17423 s!11993))))

(declare-fun lt!1051298 () Unit!49457)

(declare-fun choose!18188 (Regex!9509 List!35374) Unit!49457)

(assert (=> d!856098 (= lt!1051298 (choose!18188 r!17423 s!11993))))

(assert (=> d!856098 (validRegex!4242 r!17423)))

(assert (=> d!856098 (= (mainMatchTheorem!1646 r!17423 s!11993) lt!1051298)))

(declare-fun bs!532631 () Bool)

(assert (= bs!532631 d!856098))

(assert (=> bs!532631 m!3384809))

(assert (=> bs!532631 m!3384807))

(declare-fun m!3385005 () Bool)

(assert (=> bs!532631 m!3385005))

(assert (=> bs!532631 m!3384803))

(assert (=> b!3068954 d!856098))

(declare-fun d!856104 () Bool)

(assert (=> d!856104 (= (isEmptyLang!560 lt!1051235) ((_ is EmptyLang!9509) lt!1051235))))

(assert (=> b!3068959 d!856104))

(declare-fun b!3069609 () Bool)

(declare-fun e!1921277 () Regex!9509)

(assert (=> b!3069609 (= e!1921277 (regTwo!19530 r!17423))))

(declare-fun b!3069610 () Bool)

(declare-fun e!1921276 () Regex!9509)

(assert (=> b!3069610 (= e!1921276 EmptyExpr!9509)))

(declare-fun d!856106 () Bool)

(declare-fun e!1921278 () Bool)

(assert (=> d!856106 e!1921278))

(declare-fun res!1259826 () Bool)

(assert (=> d!856106 (=> (not res!1259826) (not e!1921278))))

(declare-fun lt!1051315 () Regex!9509)

(assert (=> d!856106 (= res!1259826 (validRegex!4242 lt!1051315))))

(declare-fun e!1921268 () Regex!9509)

(assert (=> d!856106 (= lt!1051315 e!1921268)))

(declare-fun c!510280 () Bool)

(assert (=> d!856106 (= c!510280 ((_ is EmptyLang!9509) (regTwo!19530 r!17423)))))

(assert (=> d!856106 (validRegex!4242 (regTwo!19530 r!17423))))

(assert (=> d!856106 (= (simplify!464 (regTwo!19530 r!17423)) lt!1051315)))

(declare-fun bm!213058 () Bool)

(declare-fun lt!1051314 () Regex!9509)

(declare-fun call!213065 () Bool)

(declare-fun lt!1051311 () Regex!9509)

(declare-fun c!510289 () Bool)

(assert (=> bm!213058 (= call!213065 (isEmptyExpr!566 (ite c!510289 lt!1051311 lt!1051314)))))

(declare-fun b!3069611 () Bool)

(declare-fun e!1921274 () Regex!9509)

(declare-fun lt!1051316 () Regex!9509)

(assert (=> b!3069611 (= e!1921274 lt!1051316)))

(declare-fun b!3069612 () Bool)

(declare-fun c!510285 () Bool)

(assert (=> b!3069612 (= c!510285 ((_ is Union!9509) (regTwo!19530 r!17423)))))

(declare-fun e!1921269 () Regex!9509)

(declare-fun e!1921275 () Regex!9509)

(assert (=> b!3069612 (= e!1921269 e!1921275)))

(declare-fun b!3069613 () Bool)

(assert (=> b!3069613 (= e!1921268 e!1921277)))

(declare-fun c!510281 () Bool)

(assert (=> b!3069613 (= c!510281 ((_ is ElementMatch!9509) (regTwo!19530 r!17423)))))

(declare-fun b!3069614 () Bool)

(declare-fun c!510287 () Bool)

(assert (=> b!3069614 (= c!510287 call!213065)))

(declare-fun e!1921267 () Regex!9509)

(assert (=> b!3069614 (= e!1921267 e!1921274)))

(declare-fun b!3069615 () Bool)

(declare-fun e!1921270 () Regex!9509)

(declare-fun lt!1051312 () Regex!9509)

(declare-fun lt!1051313 () Regex!9509)

(assert (=> b!3069615 (= e!1921270 (Union!9509 lt!1051312 lt!1051313))))

(declare-fun b!3069616 () Bool)

(declare-fun e!1921279 () Bool)

(declare-fun call!213064 () Bool)

(assert (=> b!3069616 (= e!1921279 call!213064)))

(declare-fun bm!213059 () Bool)

(declare-fun call!213067 () Bool)

(declare-fun call!213066 () Bool)

(assert (=> bm!213059 (= call!213067 call!213066)))

(declare-fun b!3069617 () Bool)

(declare-fun e!1921271 () Regex!9509)

(assert (=> b!3069617 (= e!1921271 lt!1051313)))

(declare-fun b!3069618 () Bool)

(assert (=> b!3069618 (= e!1921267 EmptyLang!9509)))

(declare-fun bm!213060 () Bool)

(assert (=> bm!213060 (= call!213066 (isEmptyLang!560 (ite c!510289 lt!1051311 (ite c!510285 lt!1051312 lt!1051314))))))

(declare-fun b!3069619 () Bool)

(declare-fun c!510286 () Bool)

(assert (=> b!3069619 (= c!510286 call!213064)))

(assert (=> b!3069619 (= e!1921271 e!1921270)))

(declare-fun b!3069620 () Bool)

(declare-fun e!1921266 () Regex!9509)

(assert (=> b!3069620 (= e!1921266 lt!1051314)))

(declare-fun bm!213061 () Bool)

(declare-fun call!213063 () Regex!9509)

(assert (=> bm!213061 (= call!213063 (simplify!464 (ite c!510285 (regTwo!19531 (regTwo!19530 r!17423)) (regOne!19530 (regTwo!19530 r!17423)))))))

(declare-fun b!3069621 () Bool)

(assert (=> b!3069621 (= e!1921270 lt!1051312)))

(declare-fun b!3069622 () Bool)

(declare-fun e!1921273 () Regex!9509)

(assert (=> b!3069622 (= e!1921273 (Star!9509 lt!1051311))))

(declare-fun b!3069623 () Bool)

(declare-fun c!510290 () Bool)

(assert (=> b!3069623 (= c!510290 ((_ is EmptyExpr!9509) (regTwo!19530 r!17423)))))

(assert (=> b!3069623 (= e!1921277 e!1921276)))

(declare-fun b!3069624 () Bool)

(assert (=> b!3069624 (= e!1921266 (Concat!14830 lt!1051314 lt!1051316))))

(declare-fun b!3069625 () Bool)

(assert (=> b!3069625 (= e!1921275 e!1921271)))

(declare-fun call!213068 () Regex!9509)

(assert (=> b!3069625 (= lt!1051312 call!213068)))

(assert (=> b!3069625 (= lt!1051313 call!213063)))

(declare-fun c!510284 () Bool)

(assert (=> b!3069625 (= c!510284 call!213067)))

(declare-fun b!3069626 () Bool)

(assert (=> b!3069626 (= e!1921273 EmptyExpr!9509)))

(declare-fun b!3069627 () Bool)

(declare-fun e!1921272 () Bool)

(assert (=> b!3069627 (= e!1921272 call!213065)))

(declare-fun bm!213062 () Bool)

(declare-fun call!213069 () Regex!9509)

(assert (=> bm!213062 (= call!213068 call!213069)))

(declare-fun bm!213063 () Bool)

(assert (=> bm!213063 (= call!213069 (simplify!464 (ite c!510289 (reg!9838 (regTwo!19530 r!17423)) (ite c!510285 (regOne!19531 (regTwo!19530 r!17423)) (regTwo!19530 (regTwo!19530 r!17423))))))))

(declare-fun b!3069628 () Bool)

(assert (=> b!3069628 (= e!1921276 e!1921269)))

(assert (=> b!3069628 (= c!510289 ((_ is Star!9509) (regTwo!19530 r!17423)))))

(declare-fun b!3069629 () Bool)

(assert (=> b!3069629 (= e!1921275 e!1921267)))

(assert (=> b!3069629 (= lt!1051314 call!213063)))

(assert (=> b!3069629 (= lt!1051316 call!213068)))

(declare-fun res!1259825 () Bool)

(assert (=> b!3069629 (= res!1259825 call!213067)))

(assert (=> b!3069629 (=> res!1259825 e!1921279)))

(declare-fun c!510288 () Bool)

(assert (=> b!3069629 (= c!510288 e!1921279)))

(declare-fun b!3069630 () Bool)

(assert (=> b!3069630 (= e!1921274 e!1921266)))

(declare-fun c!510283 () Bool)

(assert (=> b!3069630 (= c!510283 (isEmptyExpr!566 lt!1051316))))

(declare-fun bm!213064 () Bool)

(assert (=> bm!213064 (= call!213064 (isEmptyLang!560 (ite c!510285 lt!1051313 lt!1051316)))))

(declare-fun b!3069631 () Bool)

(declare-fun c!510282 () Bool)

(assert (=> b!3069631 (= c!510282 e!1921272)))

(declare-fun res!1259827 () Bool)

(assert (=> b!3069631 (=> res!1259827 e!1921272)))

(assert (=> b!3069631 (= res!1259827 call!213066)))

(assert (=> b!3069631 (= lt!1051311 call!213069)))

(assert (=> b!3069631 (= e!1921269 e!1921273)))

(declare-fun b!3069632 () Bool)

(assert (=> b!3069632 (= e!1921278 (= (nullable!3155 lt!1051315) (nullable!3155 (regTwo!19530 r!17423))))))

(declare-fun b!3069633 () Bool)

(assert (=> b!3069633 (= e!1921268 EmptyLang!9509)))

(assert (= (and d!856106 c!510280) b!3069633))

(assert (= (and d!856106 (not c!510280)) b!3069613))

(assert (= (and b!3069613 c!510281) b!3069609))

(assert (= (and b!3069613 (not c!510281)) b!3069623))

(assert (= (and b!3069623 c!510290) b!3069610))

(assert (= (and b!3069623 (not c!510290)) b!3069628))

(assert (= (and b!3069628 c!510289) b!3069631))

(assert (= (and b!3069628 (not c!510289)) b!3069612))

(assert (= (and b!3069631 (not res!1259827)) b!3069627))

(assert (= (and b!3069631 c!510282) b!3069626))

(assert (= (and b!3069631 (not c!510282)) b!3069622))

(assert (= (and b!3069612 c!510285) b!3069625))

(assert (= (and b!3069612 (not c!510285)) b!3069629))

(assert (= (and b!3069625 c!510284) b!3069617))

(assert (= (and b!3069625 (not c!510284)) b!3069619))

(assert (= (and b!3069619 c!510286) b!3069621))

(assert (= (and b!3069619 (not c!510286)) b!3069615))

(assert (= (and b!3069629 (not res!1259825)) b!3069616))

(assert (= (and b!3069629 c!510288) b!3069618))

(assert (= (and b!3069629 (not c!510288)) b!3069614))

(assert (= (and b!3069614 c!510287) b!3069611))

(assert (= (and b!3069614 (not c!510287)) b!3069630))

(assert (= (and b!3069630 c!510283) b!3069620))

(assert (= (and b!3069630 (not c!510283)) b!3069624))

(assert (= (or b!3069625 b!3069629) bm!213062))

(assert (= (or b!3069625 b!3069629) bm!213061))

(assert (= (or b!3069625 b!3069629) bm!213059))

(assert (= (or b!3069619 b!3069616) bm!213064))

(assert (= (or b!3069627 b!3069614) bm!213058))

(assert (= (or b!3069631 bm!213062) bm!213063))

(assert (= (or b!3069631 bm!213059) bm!213060))

(assert (= (and d!856106 res!1259826) b!3069632))

(declare-fun m!3385007 () Bool)

(assert (=> bm!213064 m!3385007))

(declare-fun m!3385009 () Bool)

(assert (=> bm!213061 m!3385009))

(declare-fun m!3385011 () Bool)

(assert (=> b!3069630 m!3385011))

(declare-fun m!3385013 () Bool)

(assert (=> d!856106 m!3385013))

(assert (=> d!856106 m!3384789))

(declare-fun m!3385015 () Bool)

(assert (=> b!3069632 m!3385015))

(declare-fun m!3385017 () Bool)

(assert (=> b!3069632 m!3385017))

(declare-fun m!3385019 () Bool)

(assert (=> bm!213063 m!3385019))

(declare-fun m!3385021 () Bool)

(assert (=> bm!213058 m!3385021))

(declare-fun m!3385023 () Bool)

(assert (=> bm!213060 m!3385023))

(assert (=> b!3068959 d!856106))

(declare-fun b!3069634 () Bool)

(declare-fun e!1921291 () Regex!9509)

(assert (=> b!3069634 (= e!1921291 (regOne!19530 r!17423))))

(declare-fun b!3069635 () Bool)

(declare-fun e!1921290 () Regex!9509)

(assert (=> b!3069635 (= e!1921290 EmptyExpr!9509)))

(declare-fun d!856108 () Bool)

(declare-fun e!1921292 () Bool)

(assert (=> d!856108 e!1921292))

(declare-fun res!1259829 () Bool)

(assert (=> d!856108 (=> (not res!1259829) (not e!1921292))))

(declare-fun lt!1051321 () Regex!9509)

(assert (=> d!856108 (= res!1259829 (validRegex!4242 lt!1051321))))

(declare-fun e!1921282 () Regex!9509)

(assert (=> d!856108 (= lt!1051321 e!1921282)))

(declare-fun c!510291 () Bool)

(assert (=> d!856108 (= c!510291 ((_ is EmptyLang!9509) (regOne!19530 r!17423)))))

(assert (=> d!856108 (validRegex!4242 (regOne!19530 r!17423))))

(assert (=> d!856108 (= (simplify!464 (regOne!19530 r!17423)) lt!1051321)))

(declare-fun c!510300 () Bool)

(declare-fun bm!213065 () Bool)

(declare-fun call!213072 () Bool)

(declare-fun lt!1051320 () Regex!9509)

(declare-fun lt!1051317 () Regex!9509)

(assert (=> bm!213065 (= call!213072 (isEmptyExpr!566 (ite c!510300 lt!1051317 lt!1051320)))))

(declare-fun b!3069636 () Bool)

(declare-fun e!1921288 () Regex!9509)

(declare-fun lt!1051322 () Regex!9509)

(assert (=> b!3069636 (= e!1921288 lt!1051322)))

(declare-fun b!3069637 () Bool)

(declare-fun c!510296 () Bool)

(assert (=> b!3069637 (= c!510296 ((_ is Union!9509) (regOne!19530 r!17423)))))

(declare-fun e!1921283 () Regex!9509)

(declare-fun e!1921289 () Regex!9509)

(assert (=> b!3069637 (= e!1921283 e!1921289)))

(declare-fun b!3069638 () Bool)

(assert (=> b!3069638 (= e!1921282 e!1921291)))

(declare-fun c!510292 () Bool)

(assert (=> b!3069638 (= c!510292 ((_ is ElementMatch!9509) (regOne!19530 r!17423)))))

(declare-fun b!3069639 () Bool)

(declare-fun c!510298 () Bool)

(assert (=> b!3069639 (= c!510298 call!213072)))

(declare-fun e!1921281 () Regex!9509)

(assert (=> b!3069639 (= e!1921281 e!1921288)))

(declare-fun b!3069640 () Bool)

(declare-fun e!1921284 () Regex!9509)

(declare-fun lt!1051318 () Regex!9509)

(declare-fun lt!1051319 () Regex!9509)

(assert (=> b!3069640 (= e!1921284 (Union!9509 lt!1051318 lt!1051319))))

(declare-fun b!3069641 () Bool)

(declare-fun e!1921293 () Bool)

(declare-fun call!213071 () Bool)

(assert (=> b!3069641 (= e!1921293 call!213071)))

(declare-fun bm!213066 () Bool)

(declare-fun call!213074 () Bool)

(declare-fun call!213073 () Bool)

(assert (=> bm!213066 (= call!213074 call!213073)))

(declare-fun b!3069642 () Bool)

(declare-fun e!1921285 () Regex!9509)

(assert (=> b!3069642 (= e!1921285 lt!1051319)))

(declare-fun b!3069643 () Bool)

(assert (=> b!3069643 (= e!1921281 EmptyLang!9509)))

(declare-fun bm!213067 () Bool)

(assert (=> bm!213067 (= call!213073 (isEmptyLang!560 (ite c!510300 lt!1051317 (ite c!510296 lt!1051318 lt!1051320))))))

(declare-fun b!3069644 () Bool)

(declare-fun c!510297 () Bool)

(assert (=> b!3069644 (= c!510297 call!213071)))

(assert (=> b!3069644 (= e!1921285 e!1921284)))

(declare-fun b!3069645 () Bool)

(declare-fun e!1921280 () Regex!9509)

(assert (=> b!3069645 (= e!1921280 lt!1051320)))

(declare-fun bm!213068 () Bool)

(declare-fun call!213070 () Regex!9509)

(assert (=> bm!213068 (= call!213070 (simplify!464 (ite c!510296 (regTwo!19531 (regOne!19530 r!17423)) (regOne!19530 (regOne!19530 r!17423)))))))

(declare-fun b!3069646 () Bool)

(assert (=> b!3069646 (= e!1921284 lt!1051318)))

(declare-fun b!3069647 () Bool)

(declare-fun e!1921287 () Regex!9509)

(assert (=> b!3069647 (= e!1921287 (Star!9509 lt!1051317))))

(declare-fun b!3069648 () Bool)

(declare-fun c!510301 () Bool)

(assert (=> b!3069648 (= c!510301 ((_ is EmptyExpr!9509) (regOne!19530 r!17423)))))

(assert (=> b!3069648 (= e!1921291 e!1921290)))

(declare-fun b!3069649 () Bool)

(assert (=> b!3069649 (= e!1921280 (Concat!14830 lt!1051320 lt!1051322))))

(declare-fun b!3069650 () Bool)

(assert (=> b!3069650 (= e!1921289 e!1921285)))

(declare-fun call!213075 () Regex!9509)

(assert (=> b!3069650 (= lt!1051318 call!213075)))

(assert (=> b!3069650 (= lt!1051319 call!213070)))

(declare-fun c!510295 () Bool)

(assert (=> b!3069650 (= c!510295 call!213074)))

(declare-fun b!3069651 () Bool)

(assert (=> b!3069651 (= e!1921287 EmptyExpr!9509)))

(declare-fun b!3069652 () Bool)

(declare-fun e!1921286 () Bool)

(assert (=> b!3069652 (= e!1921286 call!213072)))

(declare-fun bm!213069 () Bool)

(declare-fun call!213076 () Regex!9509)

(assert (=> bm!213069 (= call!213075 call!213076)))

(declare-fun bm!213070 () Bool)

(assert (=> bm!213070 (= call!213076 (simplify!464 (ite c!510300 (reg!9838 (regOne!19530 r!17423)) (ite c!510296 (regOne!19531 (regOne!19530 r!17423)) (regTwo!19530 (regOne!19530 r!17423))))))))

(declare-fun b!3069653 () Bool)

(assert (=> b!3069653 (= e!1921290 e!1921283)))

(assert (=> b!3069653 (= c!510300 ((_ is Star!9509) (regOne!19530 r!17423)))))

(declare-fun b!3069654 () Bool)

(assert (=> b!3069654 (= e!1921289 e!1921281)))

(assert (=> b!3069654 (= lt!1051320 call!213070)))

(assert (=> b!3069654 (= lt!1051322 call!213075)))

(declare-fun res!1259828 () Bool)

(assert (=> b!3069654 (= res!1259828 call!213074)))

(assert (=> b!3069654 (=> res!1259828 e!1921293)))

(declare-fun c!510299 () Bool)

(assert (=> b!3069654 (= c!510299 e!1921293)))

(declare-fun b!3069655 () Bool)

(assert (=> b!3069655 (= e!1921288 e!1921280)))

(declare-fun c!510294 () Bool)

(assert (=> b!3069655 (= c!510294 (isEmptyExpr!566 lt!1051322))))

(declare-fun bm!213071 () Bool)

(assert (=> bm!213071 (= call!213071 (isEmptyLang!560 (ite c!510296 lt!1051319 lt!1051322)))))

(declare-fun b!3069656 () Bool)

(declare-fun c!510293 () Bool)

(assert (=> b!3069656 (= c!510293 e!1921286)))

(declare-fun res!1259830 () Bool)

(assert (=> b!3069656 (=> res!1259830 e!1921286)))

(assert (=> b!3069656 (= res!1259830 call!213073)))

(assert (=> b!3069656 (= lt!1051317 call!213076)))

(assert (=> b!3069656 (= e!1921283 e!1921287)))

(declare-fun b!3069657 () Bool)

(assert (=> b!3069657 (= e!1921292 (= (nullable!3155 lt!1051321) (nullable!3155 (regOne!19530 r!17423))))))

(declare-fun b!3069658 () Bool)

(assert (=> b!3069658 (= e!1921282 EmptyLang!9509)))

(assert (= (and d!856108 c!510291) b!3069658))

(assert (= (and d!856108 (not c!510291)) b!3069638))

(assert (= (and b!3069638 c!510292) b!3069634))

(assert (= (and b!3069638 (not c!510292)) b!3069648))

(assert (= (and b!3069648 c!510301) b!3069635))

(assert (= (and b!3069648 (not c!510301)) b!3069653))

(assert (= (and b!3069653 c!510300) b!3069656))

(assert (= (and b!3069653 (not c!510300)) b!3069637))

(assert (= (and b!3069656 (not res!1259830)) b!3069652))

(assert (= (and b!3069656 c!510293) b!3069651))

(assert (= (and b!3069656 (not c!510293)) b!3069647))

(assert (= (and b!3069637 c!510296) b!3069650))

(assert (= (and b!3069637 (not c!510296)) b!3069654))

(assert (= (and b!3069650 c!510295) b!3069642))

(assert (= (and b!3069650 (not c!510295)) b!3069644))

(assert (= (and b!3069644 c!510297) b!3069646))

(assert (= (and b!3069644 (not c!510297)) b!3069640))

(assert (= (and b!3069654 (not res!1259828)) b!3069641))

(assert (= (and b!3069654 c!510299) b!3069643))

(assert (= (and b!3069654 (not c!510299)) b!3069639))

(assert (= (and b!3069639 c!510298) b!3069636))

(assert (= (and b!3069639 (not c!510298)) b!3069655))

(assert (= (and b!3069655 c!510294) b!3069645))

(assert (= (and b!3069655 (not c!510294)) b!3069649))

(assert (= (or b!3069650 b!3069654) bm!213069))

(assert (= (or b!3069650 b!3069654) bm!213068))

(assert (= (or b!3069650 b!3069654) bm!213066))

(assert (= (or b!3069644 b!3069641) bm!213071))

(assert (= (or b!3069652 b!3069639) bm!213065))

(assert (= (or b!3069656 bm!213069) bm!213070))

(assert (= (or b!3069656 bm!213066) bm!213067))

(assert (= (and d!856108 res!1259829) b!3069657))

(declare-fun m!3385025 () Bool)

(assert (=> bm!213071 m!3385025))

(declare-fun m!3385027 () Bool)

(assert (=> bm!213068 m!3385027))

(declare-fun m!3385029 () Bool)

(assert (=> b!3069655 m!3385029))

(declare-fun m!3385031 () Bool)

(assert (=> d!856108 m!3385031))

(assert (=> d!856108 m!3384889))

(declare-fun m!3385033 () Bool)

(assert (=> b!3069657 m!3385033))

(assert (=> b!3069657 m!3384891))

(declare-fun m!3385035 () Bool)

(assert (=> bm!213070 m!3385035))

(declare-fun m!3385037 () Bool)

(assert (=> bm!213065 m!3385037))

(declare-fun m!3385039 () Bool)

(assert (=> bm!213067 m!3385039))

(assert (=> b!3068959 d!856108))

(declare-fun b!3069671 () Bool)

(declare-fun e!1921296 () Bool)

(declare-fun tp!968611 () Bool)

(assert (=> b!3069671 (= e!1921296 tp!968611)))

(declare-fun b!3069670 () Bool)

(declare-fun tp!968614 () Bool)

(declare-fun tp!968613 () Bool)

(assert (=> b!3069670 (= e!1921296 (and tp!968614 tp!968613))))

(declare-fun b!3069672 () Bool)

(declare-fun tp!968612 () Bool)

(declare-fun tp!968610 () Bool)

(assert (=> b!3069672 (= e!1921296 (and tp!968612 tp!968610))))

(assert (=> b!3068960 (= tp!968560 e!1921296)))

(declare-fun b!3069669 () Bool)

(assert (=> b!3069669 (= e!1921296 tp_is_empty!16581)))

(assert (= (and b!3068960 ((_ is ElementMatch!9509) (regOne!19531 r!17423))) b!3069669))

(assert (= (and b!3068960 ((_ is Concat!14830) (regOne!19531 r!17423))) b!3069670))

(assert (= (and b!3068960 ((_ is Star!9509) (regOne!19531 r!17423))) b!3069671))

(assert (= (and b!3068960 ((_ is Union!9509) (regOne!19531 r!17423))) b!3069672))

(declare-fun b!3069675 () Bool)

(declare-fun e!1921297 () Bool)

(declare-fun tp!968616 () Bool)

(assert (=> b!3069675 (= e!1921297 tp!968616)))

(declare-fun b!3069674 () Bool)

(declare-fun tp!968619 () Bool)

(declare-fun tp!968618 () Bool)

(assert (=> b!3069674 (= e!1921297 (and tp!968619 tp!968618))))

(declare-fun b!3069676 () Bool)

(declare-fun tp!968617 () Bool)

(declare-fun tp!968615 () Bool)

(assert (=> b!3069676 (= e!1921297 (and tp!968617 tp!968615))))

(assert (=> b!3068960 (= tp!968558 e!1921297)))

(declare-fun b!3069673 () Bool)

(assert (=> b!3069673 (= e!1921297 tp_is_empty!16581)))

(assert (= (and b!3068960 ((_ is ElementMatch!9509) (regTwo!19531 r!17423))) b!3069673))

(assert (= (and b!3068960 ((_ is Concat!14830) (regTwo!19531 r!17423))) b!3069674))

(assert (= (and b!3068960 ((_ is Star!9509) (regTwo!19531 r!17423))) b!3069675))

(assert (= (and b!3068960 ((_ is Union!9509) (regTwo!19531 r!17423))) b!3069676))

(declare-fun b!3069679 () Bool)

(declare-fun e!1921298 () Bool)

(declare-fun tp!968621 () Bool)

(assert (=> b!3069679 (= e!1921298 tp!968621)))

(declare-fun b!3069678 () Bool)

(declare-fun tp!968624 () Bool)

(declare-fun tp!968623 () Bool)

(assert (=> b!3069678 (= e!1921298 (and tp!968624 tp!968623))))

(declare-fun b!3069680 () Bool)

(declare-fun tp!968622 () Bool)

(declare-fun tp!968620 () Bool)

(assert (=> b!3069680 (= e!1921298 (and tp!968622 tp!968620))))

(assert (=> b!3068961 (= tp!968559 e!1921298)))

(declare-fun b!3069677 () Bool)

(assert (=> b!3069677 (= e!1921298 tp_is_empty!16581)))

(assert (= (and b!3068961 ((_ is ElementMatch!9509) (reg!9838 r!17423))) b!3069677))

(assert (= (and b!3068961 ((_ is Concat!14830) (reg!9838 r!17423))) b!3069678))

(assert (= (and b!3068961 ((_ is Star!9509) (reg!9838 r!17423))) b!3069679))

(assert (= (and b!3068961 ((_ is Union!9509) (reg!9838 r!17423))) b!3069680))

(declare-fun b!3069683 () Bool)

(declare-fun e!1921299 () Bool)

(declare-fun tp!968626 () Bool)

(assert (=> b!3069683 (= e!1921299 tp!968626)))

(declare-fun b!3069682 () Bool)

(declare-fun tp!968629 () Bool)

(declare-fun tp!968628 () Bool)

(assert (=> b!3069682 (= e!1921299 (and tp!968629 tp!968628))))

(declare-fun b!3069684 () Bool)

(declare-fun tp!968627 () Bool)

(declare-fun tp!968625 () Bool)

(assert (=> b!3069684 (= e!1921299 (and tp!968627 tp!968625))))

(assert (=> b!3068962 (= tp!968557 e!1921299)))

(declare-fun b!3069681 () Bool)

(assert (=> b!3069681 (= e!1921299 tp_is_empty!16581)))

(assert (= (and b!3068962 ((_ is ElementMatch!9509) (regOne!19530 r!17423))) b!3069681))

(assert (= (and b!3068962 ((_ is Concat!14830) (regOne!19530 r!17423))) b!3069682))

(assert (= (and b!3068962 ((_ is Star!9509) (regOne!19530 r!17423))) b!3069683))

(assert (= (and b!3068962 ((_ is Union!9509) (regOne!19530 r!17423))) b!3069684))

(declare-fun b!3069687 () Bool)

(declare-fun e!1921300 () Bool)

(declare-fun tp!968631 () Bool)

(assert (=> b!3069687 (= e!1921300 tp!968631)))

(declare-fun b!3069686 () Bool)

(declare-fun tp!968634 () Bool)

(declare-fun tp!968633 () Bool)

(assert (=> b!3069686 (= e!1921300 (and tp!968634 tp!968633))))

(declare-fun b!3069688 () Bool)

(declare-fun tp!968632 () Bool)

(declare-fun tp!968630 () Bool)

(assert (=> b!3069688 (= e!1921300 (and tp!968632 tp!968630))))

(assert (=> b!3068962 (= tp!968556 e!1921300)))

(declare-fun b!3069685 () Bool)

(assert (=> b!3069685 (= e!1921300 tp_is_empty!16581)))

(assert (= (and b!3068962 ((_ is ElementMatch!9509) (regTwo!19530 r!17423))) b!3069685))

(assert (= (and b!3068962 ((_ is Concat!14830) (regTwo!19530 r!17423))) b!3069686))

(assert (= (and b!3068962 ((_ is Star!9509) (regTwo!19530 r!17423))) b!3069687))

(assert (= (and b!3068962 ((_ is Union!9509) (regTwo!19530 r!17423))) b!3069688))

(declare-fun b!3069693 () Bool)

(declare-fun e!1921303 () Bool)

(declare-fun tp!968637 () Bool)

(assert (=> b!3069693 (= e!1921303 (and tp_is_empty!16581 tp!968637))))

(assert (=> b!3068953 (= tp!968561 e!1921303)))

(assert (= (and b!3068953 ((_ is Cons!35250) (t!234439 s!11993))) b!3069693))

(check-sat (not b!3069676) (not bm!212982) (not bm!213068) (not b!3069202) (not bm!212948) (not b!3069049) (not bm!212950) (not b!3069487) (not b!3069216) (not bm!213064) (not b!3069196) (not bm!213025) (not bm!213071) (not b!3069201) (not b!3069206) (not d!856064) (not bm!213063) (not b!3069226) (not b!3069687) (not b!3069684) (not bm!212943) (not d!856106) (not bm!212984) (not bm!213024) (not b!3069630) (not b!3069227) (not b!3069671) (not bm!212962) (not b!3069678) (not bm!213065) (not b!3069682) (not bm!212972) (not b!3069680) (not bm!213058) (not bm!213060) (not b!3069672) (not b!3069688) (not b!3069482) (not b!3069486) (not bm!212960) (not b!3069655) (not bm!212949) (not bm!212941) (not b!3069674) (not d!856098) (not bm!213070) (not b!3069094) (not bm!212937) (not bm!213067) (not d!856062) (not d!856108) (not b!3069686) (not bm!212942) (not b!3069693) (not bm!212938) tp_is_empty!16581 (not b!3069679) (not b!3069221) (not d!856048) (not b!3069481) (not b!3069683) (not b!3069204) (not b!3069675) (not b!3069446) (not bm!213033) (not bm!213061) (not b!3069224) (not b!3069442) (not bm!212945) (not b!3069135) (not b!3069484) (not b!3069222) (not bm!212975) (not b!3069657) (not b!3069248) (not b!3069632) (not d!856094) (not b!3069207) (not b!3069476) (not bm!212944) (not b!3069670))
(check-sat)
