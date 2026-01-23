; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756792 () Bool)

(assert start!756792)

(declare-fun b!8035876 () Bool)

(declare-fun e!4733547 () Bool)

(declare-fun tp!2406091 () Bool)

(declare-fun tp!2406090 () Bool)

(assert (=> b!8035876 (= e!4733547 (and tp!2406091 tp!2406090))))

(declare-fun b!8035877 () Bool)

(declare-fun e!4733546 () Bool)

(declare-datatypes ((C!43828 0))(
  ( (C!43829 (val!32690 Int)) )
))
(declare-datatypes ((Regex!21745 0))(
  ( (ElementMatch!21745 (c!1474196 C!43828)) (Concat!30748 (regOne!44002 Regex!21745) (regTwo!44002 Regex!21745)) (EmptyExpr!21745) (Star!21745 (reg!22074 Regex!21745)) (EmptyLang!21745) (Union!21745 (regOne!44003 Regex!21745) (regTwo!44003 Regex!21745)) )
))
(declare-fun r!13107 () Regex!21745)

(declare-fun RegexPrimitiveSize!159 (Regex!21745) Int)

(assert (=> b!8035877 (= e!4733546 (>= (RegexPrimitiveSize!159 (regOne!44002 r!13107)) (RegexPrimitiveSize!159 r!13107)))))

(declare-fun b!8035878 () Bool)

(declare-fun res!3177099 () Bool)

(assert (=> b!8035878 (=> (not res!3177099) (not e!4733546))))

(get-info :version)

(assert (=> b!8035878 (= res!3177099 (and (not ((_ is EmptyExpr!21745) r!13107)) (not ((_ is EmptyLang!21745) r!13107)) (not ((_ is ElementMatch!21745) r!13107)) (not ((_ is Union!21745) r!13107)) (not ((_ is Star!21745) r!13107))))))

(declare-fun b!8035879 () Bool)

(declare-fun res!3177100 () Bool)

(assert (=> b!8035879 (=> (not res!3177100) (not e!4733546))))

(declare-fun nullable!9770 (Regex!21745) Bool)

(assert (=> b!8035879 (= res!3177100 (nullable!9770 (regOne!44002 r!13107)))))

(declare-fun b!8035880 () Bool)

(declare-fun tp_is_empty!54485 () Bool)

(assert (=> b!8035880 (= e!4733547 tp_is_empty!54485)))

(declare-fun b!8035881 () Bool)

(declare-fun tp!2406093 () Bool)

(declare-fun tp!2406089 () Bool)

(assert (=> b!8035881 (= e!4733547 (and tp!2406093 tp!2406089))))

(declare-fun b!8035875 () Bool)

(declare-fun tp!2406092 () Bool)

(assert (=> b!8035875 (= e!4733547 tp!2406092)))

(declare-fun res!3177101 () Bool)

(assert (=> start!756792 (=> (not res!3177101) (not e!4733546))))

(declare-fun validRegex!12041 (Regex!21745) Bool)

(assert (=> start!756792 (= res!3177101 (validRegex!12041 r!13107))))

(assert (=> start!756792 e!4733546))

(assert (=> start!756792 e!4733547))

(assert (= (and start!756792 res!3177101) b!8035878))

(assert (= (and b!8035878 res!3177099) b!8035879))

(assert (= (and b!8035879 res!3177100) b!8035877))

(assert (= (and start!756792 ((_ is ElementMatch!21745) r!13107)) b!8035880))

(assert (= (and start!756792 ((_ is Concat!30748) r!13107)) b!8035881))

(assert (= (and start!756792 ((_ is Star!21745) r!13107)) b!8035875))

(assert (= (and start!756792 ((_ is Union!21745) r!13107)) b!8035876))

(declare-fun m!8393290 () Bool)

(assert (=> b!8035877 m!8393290))

(declare-fun m!8393292 () Bool)

(assert (=> b!8035877 m!8393292))

(declare-fun m!8393294 () Bool)

(assert (=> b!8035879 m!8393294))

(declare-fun m!8393296 () Bool)

(assert (=> start!756792 m!8393296))

(check-sat (not b!8035881) (not b!8035877) (not start!756792) (not b!8035875) tp_is_empty!54485 (not b!8035879) (not b!8035876))
(check-sat)
(get-model)

(declare-fun b!8035920 () Bool)

(declare-fun e!4733574 () Int)

(declare-fun e!4733575 () Int)

(assert (=> b!8035920 (= e!4733574 e!4733575)))

(declare-fun c!1474215 () Bool)

(assert (=> b!8035920 (= c!1474215 ((_ is Star!21745) (regOne!44002 r!13107)))))

(declare-fun d!2395001 () Bool)

(declare-fun lt!2722083 () Int)

(assert (=> d!2395001 (>= lt!2722083 0)))

(declare-fun e!4733573 () Int)

(assert (=> d!2395001 (= lt!2722083 e!4733573)))

(declare-fun c!1474214 () Bool)

(assert (=> d!2395001 (= c!1474214 ((_ is ElementMatch!21745) (regOne!44002 r!13107)))))

(assert (=> d!2395001 (= (RegexPrimitiveSize!159 (regOne!44002 r!13107)) lt!2722083)))

(declare-fun bm!745720 () Bool)

(declare-fun call!745727 () Int)

(declare-fun call!745725 () Int)

(assert (=> bm!745720 (= call!745727 call!745725)))

(declare-fun b!8035921 () Bool)

(declare-fun e!4733576 () Int)

(assert (=> b!8035921 (= e!4733573 e!4733576)))

(declare-fun c!1474213 () Bool)

(assert (=> b!8035921 (= c!1474213 ((_ is Concat!30748) (regOne!44002 r!13107)))))

(declare-fun b!8035922 () Bool)

(declare-fun e!4733572 () Int)

(declare-fun call!745726 () Int)

(assert (=> b!8035922 (= e!4733572 (+ 1 call!745727 call!745726))))

(declare-fun bm!745721 () Bool)

(assert (=> bm!745721 (= call!745725 (RegexPrimitiveSize!159 (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))))))

(declare-fun b!8035923 () Bool)

(assert (=> b!8035923 (= e!4733572 0)))

(declare-fun b!8035924 () Bool)

(declare-fun c!1474212 () Bool)

(assert (=> b!8035924 (= c!1474212 ((_ is EmptyExpr!21745) (regOne!44002 r!13107)))))

(assert (=> b!8035924 (= e!4733576 e!4733574)))

(declare-fun bm!745722 () Bool)

(assert (=> bm!745722 (= call!745726 (RegexPrimitiveSize!159 (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))))))

(declare-fun b!8035925 () Bool)

(declare-fun c!1474211 () Bool)

(assert (=> b!8035925 (= c!1474211 ((_ is EmptyLang!21745) (regOne!44002 r!13107)))))

(assert (=> b!8035925 (= e!4733575 e!4733572)))

(declare-fun b!8035926 () Bool)

(assert (=> b!8035926 (= e!4733576 (+ 1 call!745725 call!745726))))

(declare-fun b!8035927 () Bool)

(assert (=> b!8035927 (= e!4733575 (+ 1 call!745727))))

(declare-fun b!8035928 () Bool)

(assert (=> b!8035928 (= e!4733574 0)))

(declare-fun b!8035929 () Bool)

(assert (=> b!8035929 (= e!4733573 1)))

(assert (= (and d!2395001 c!1474214) b!8035929))

(assert (= (and d!2395001 (not c!1474214)) b!8035921))

(assert (= (and b!8035921 c!1474213) b!8035926))

(assert (= (and b!8035921 (not c!1474213)) b!8035924))

(assert (= (and b!8035924 c!1474212) b!8035928))

(assert (= (and b!8035924 (not c!1474212)) b!8035920))

(assert (= (and b!8035920 c!1474215) b!8035927))

(assert (= (and b!8035920 (not c!1474215)) b!8035925))

(assert (= (and b!8035925 c!1474211) b!8035923))

(assert (= (and b!8035925 (not c!1474211)) b!8035922))

(assert (= (or b!8035927 b!8035922) bm!745720))

(assert (= (or b!8035926 b!8035922) bm!745722))

(assert (= (or b!8035926 bm!745720) bm!745721))

(declare-fun m!8393300 () Bool)

(assert (=> bm!745721 m!8393300))

(declare-fun m!8393302 () Bool)

(assert (=> bm!745722 m!8393302))

(assert (=> b!8035877 d!2395001))

(declare-fun b!8035939 () Bool)

(declare-fun e!4733586 () Int)

(declare-fun e!4733587 () Int)

(assert (=> b!8035939 (= e!4733586 e!4733587)))

(declare-fun c!1474222 () Bool)

(assert (=> b!8035939 (= c!1474222 ((_ is Star!21745) r!13107))))

(declare-fun d!2395007 () Bool)

(declare-fun lt!2722084 () Int)

(assert (=> d!2395007 (>= lt!2722084 0)))

(declare-fun e!4733585 () Int)

(assert (=> d!2395007 (= lt!2722084 e!4733585)))

(declare-fun c!1474221 () Bool)

(assert (=> d!2395007 (= c!1474221 ((_ is ElementMatch!21745) r!13107))))

(assert (=> d!2395007 (= (RegexPrimitiveSize!159 r!13107) lt!2722084)))

(declare-fun bm!745726 () Bool)

(declare-fun call!745733 () Int)

(declare-fun call!745731 () Int)

(assert (=> bm!745726 (= call!745733 call!745731)))

(declare-fun b!8035940 () Bool)

(declare-fun e!4733588 () Int)

(assert (=> b!8035940 (= e!4733585 e!4733588)))

(declare-fun c!1474220 () Bool)

(assert (=> b!8035940 (= c!1474220 ((_ is Concat!30748) r!13107))))

(declare-fun b!8035941 () Bool)

(declare-fun e!4733584 () Int)

(declare-fun call!745732 () Int)

(assert (=> b!8035941 (= e!4733584 (+ 1 call!745733 call!745732))))

(declare-fun bm!745727 () Bool)

(assert (=> bm!745727 (= call!745731 (RegexPrimitiveSize!159 (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))))))

(declare-fun b!8035942 () Bool)

(assert (=> b!8035942 (= e!4733584 0)))

(declare-fun b!8035943 () Bool)

(declare-fun c!1474219 () Bool)

(assert (=> b!8035943 (= c!1474219 ((_ is EmptyExpr!21745) r!13107))))

(assert (=> b!8035943 (= e!4733588 e!4733586)))

(declare-fun bm!745728 () Bool)

(assert (=> bm!745728 (= call!745732 (RegexPrimitiveSize!159 (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))))))

(declare-fun b!8035944 () Bool)

(declare-fun c!1474218 () Bool)

(assert (=> b!8035944 (= c!1474218 ((_ is EmptyLang!21745) r!13107))))

(assert (=> b!8035944 (= e!4733587 e!4733584)))

(declare-fun b!8035945 () Bool)

(assert (=> b!8035945 (= e!4733588 (+ 1 call!745731 call!745732))))

(declare-fun b!8035946 () Bool)

(assert (=> b!8035946 (= e!4733587 (+ 1 call!745733))))

(declare-fun b!8035947 () Bool)

(assert (=> b!8035947 (= e!4733586 0)))

(declare-fun b!8035948 () Bool)

(assert (=> b!8035948 (= e!4733585 1)))

(assert (= (and d!2395007 c!1474221) b!8035948))

(assert (= (and d!2395007 (not c!1474221)) b!8035940))

(assert (= (and b!8035940 c!1474220) b!8035945))

(assert (= (and b!8035940 (not c!1474220)) b!8035943))

(assert (= (and b!8035943 c!1474219) b!8035947))

(assert (= (and b!8035943 (not c!1474219)) b!8035939))

(assert (= (and b!8035939 c!1474222) b!8035946))

(assert (= (and b!8035939 (not c!1474222)) b!8035944))

(assert (= (and b!8035944 c!1474218) b!8035942))

(assert (= (and b!8035944 (not c!1474218)) b!8035941))

(assert (= (or b!8035946 b!8035941) bm!745726))

(assert (= (or b!8035945 b!8035941) bm!745728))

(assert (= (or b!8035945 bm!745726) bm!745727))

(declare-fun m!8393310 () Bool)

(assert (=> bm!745727 m!8393310))

(declare-fun m!8393312 () Bool)

(assert (=> bm!745728 m!8393312))

(assert (=> b!8035877 d!2395007))

(declare-fun b!8035987 () Bool)

(declare-fun e!4733618 () Bool)

(declare-fun call!745746 () Bool)

(assert (=> b!8035987 (= e!4733618 call!745746)))

(declare-fun b!8035989 () Bool)

(declare-fun e!4733615 () Bool)

(assert (=> b!8035989 (= e!4733615 e!4733618)))

(declare-fun res!3177128 () Bool)

(assert (=> b!8035989 (=> (not res!3177128) (not e!4733618))))

(declare-fun call!745747 () Bool)

(assert (=> b!8035989 (= res!3177128 call!745747)))

(declare-fun b!8035990 () Bool)

(declare-fun res!3177129 () Bool)

(declare-fun e!4733613 () Bool)

(assert (=> b!8035990 (=> (not res!3177129) (not e!4733613))))

(assert (=> b!8035990 (= res!3177129 call!745747)))

(declare-fun e!4733617 () Bool)

(assert (=> b!8035990 (= e!4733617 e!4733613)))

(declare-fun b!8035991 () Bool)

(declare-fun e!4733619 () Bool)

(declare-fun e!4733616 () Bool)

(assert (=> b!8035991 (= e!4733619 e!4733616)))

(declare-fun res!3177127 () Bool)

(assert (=> b!8035991 (= res!3177127 (not (nullable!9770 (reg!22074 r!13107))))))

(assert (=> b!8035991 (=> (not res!3177127) (not e!4733616))))

(declare-fun call!745748 () Bool)

(declare-fun c!1474238 () Bool)

(declare-fun bm!745741 () Bool)

(declare-fun c!1474237 () Bool)

(assert (=> bm!745741 (= call!745748 (validRegex!12041 (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))))))

(declare-fun d!2395011 () Bool)

(declare-fun res!3177131 () Bool)

(declare-fun e!4733614 () Bool)

(assert (=> d!2395011 (=> res!3177131 e!4733614)))

(assert (=> d!2395011 (= res!3177131 ((_ is ElementMatch!21745) r!13107))))

(assert (=> d!2395011 (= (validRegex!12041 r!13107) e!4733614)))

(declare-fun b!8035988 () Bool)

(assert (=> b!8035988 (= e!4733613 call!745746)))

(declare-fun b!8035992 () Bool)

(declare-fun res!3177130 () Bool)

(assert (=> b!8035992 (=> res!3177130 e!4733615)))

(assert (=> b!8035992 (= res!3177130 (not ((_ is Concat!30748) r!13107)))))

(assert (=> b!8035992 (= e!4733617 e!4733615)))

(declare-fun bm!745742 () Bool)

(assert (=> bm!745742 (= call!745746 (validRegex!12041 (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))))))

(declare-fun b!8035993 () Bool)

(assert (=> b!8035993 (= e!4733614 e!4733619)))

(assert (=> b!8035993 (= c!1474238 ((_ is Star!21745) r!13107))))

(declare-fun b!8035994 () Bool)

(assert (=> b!8035994 (= e!4733619 e!4733617)))

(assert (=> b!8035994 (= c!1474237 ((_ is Union!21745) r!13107))))

(declare-fun b!8035995 () Bool)

(assert (=> b!8035995 (= e!4733616 call!745748)))

(declare-fun bm!745743 () Bool)

(assert (=> bm!745743 (= call!745747 call!745748)))

(assert (= (and d!2395011 (not res!3177131)) b!8035993))

(assert (= (and b!8035993 c!1474238) b!8035991))

(assert (= (and b!8035993 (not c!1474238)) b!8035994))

(assert (= (and b!8035991 res!3177127) b!8035995))

(assert (= (and b!8035994 c!1474237) b!8035990))

(assert (= (and b!8035994 (not c!1474237)) b!8035992))

(assert (= (and b!8035990 res!3177129) b!8035988))

(assert (= (and b!8035992 (not res!3177130)) b!8035989))

(assert (= (and b!8035989 res!3177128) b!8035987))

(assert (= (or b!8035988 b!8035987) bm!745742))

(assert (= (or b!8035990 b!8035989) bm!745743))

(assert (= (or b!8035995 bm!745743) bm!745741))

(declare-fun m!8393314 () Bool)

(assert (=> b!8035991 m!8393314))

(declare-fun m!8393316 () Bool)

(assert (=> bm!745741 m!8393316))

(declare-fun m!8393318 () Bool)

(assert (=> bm!745742 m!8393318))

(assert (=> start!756792 d!2395011))

(declare-fun d!2395013 () Bool)

(declare-fun nullableFct!3864 (Regex!21745) Bool)

(assert (=> d!2395013 (= (nullable!9770 (regOne!44002 r!13107)) (nullableFct!3864 (regOne!44002 r!13107)))))

(declare-fun bs!1971506 () Bool)

(assert (= bs!1971506 d!2395013))

(declare-fun m!8393324 () Bool)

(assert (=> bs!1971506 m!8393324))

(assert (=> b!8035879 d!2395013))

(declare-fun b!8036037 () Bool)

(declare-fun e!4733634 () Bool)

(declare-fun tp!2406117 () Bool)

(declare-fun tp!2406118 () Bool)

(assert (=> b!8036037 (= e!4733634 (and tp!2406117 tp!2406118))))

(declare-fun b!8036036 () Bool)

(assert (=> b!8036036 (= e!4733634 tp_is_empty!54485)))

(declare-fun b!8036038 () Bool)

(declare-fun tp!2406115 () Bool)

(assert (=> b!8036038 (= e!4733634 tp!2406115)))

(declare-fun b!8036039 () Bool)

(declare-fun tp!2406114 () Bool)

(declare-fun tp!2406116 () Bool)

(assert (=> b!8036039 (= e!4733634 (and tp!2406114 tp!2406116))))

(assert (=> b!8035876 (= tp!2406091 e!4733634)))

(assert (= (and b!8035876 ((_ is ElementMatch!21745) (regOne!44003 r!13107))) b!8036036))

(assert (= (and b!8035876 ((_ is Concat!30748) (regOne!44003 r!13107))) b!8036037))

(assert (= (and b!8035876 ((_ is Star!21745) (regOne!44003 r!13107))) b!8036038))

(assert (= (and b!8035876 ((_ is Union!21745) (regOne!44003 r!13107))) b!8036039))

(declare-fun b!8036041 () Bool)

(declare-fun e!4733635 () Bool)

(declare-fun tp!2406122 () Bool)

(declare-fun tp!2406123 () Bool)

(assert (=> b!8036041 (= e!4733635 (and tp!2406122 tp!2406123))))

(declare-fun b!8036040 () Bool)

(assert (=> b!8036040 (= e!4733635 tp_is_empty!54485)))

(declare-fun b!8036042 () Bool)

(declare-fun tp!2406120 () Bool)

(assert (=> b!8036042 (= e!4733635 tp!2406120)))

(declare-fun b!8036043 () Bool)

(declare-fun tp!2406119 () Bool)

(declare-fun tp!2406121 () Bool)

(assert (=> b!8036043 (= e!4733635 (and tp!2406119 tp!2406121))))

(assert (=> b!8035876 (= tp!2406090 e!4733635)))

(assert (= (and b!8035876 ((_ is ElementMatch!21745) (regTwo!44003 r!13107))) b!8036040))

(assert (= (and b!8035876 ((_ is Concat!30748) (regTwo!44003 r!13107))) b!8036041))

(assert (= (and b!8035876 ((_ is Star!21745) (regTwo!44003 r!13107))) b!8036042))

(assert (= (and b!8035876 ((_ is Union!21745) (regTwo!44003 r!13107))) b!8036043))

(declare-fun b!8036049 () Bool)

(declare-fun e!4733637 () Bool)

(declare-fun tp!2406132 () Bool)

(declare-fun tp!2406133 () Bool)

(assert (=> b!8036049 (= e!4733637 (and tp!2406132 tp!2406133))))

(declare-fun b!8036048 () Bool)

(assert (=> b!8036048 (= e!4733637 tp_is_empty!54485)))

(declare-fun b!8036050 () Bool)

(declare-fun tp!2406130 () Bool)

(assert (=> b!8036050 (= e!4733637 tp!2406130)))

(declare-fun b!8036051 () Bool)

(declare-fun tp!2406129 () Bool)

(declare-fun tp!2406131 () Bool)

(assert (=> b!8036051 (= e!4733637 (and tp!2406129 tp!2406131))))

(assert (=> b!8035881 (= tp!2406093 e!4733637)))

(assert (= (and b!8035881 ((_ is ElementMatch!21745) (regOne!44002 r!13107))) b!8036048))

(assert (= (and b!8035881 ((_ is Concat!30748) (regOne!44002 r!13107))) b!8036049))

(assert (= (and b!8035881 ((_ is Star!21745) (regOne!44002 r!13107))) b!8036050))

(assert (= (and b!8035881 ((_ is Union!21745) (regOne!44002 r!13107))) b!8036051))

(declare-fun b!8036057 () Bool)

(declare-fun e!4733639 () Bool)

(declare-fun tp!2406142 () Bool)

(declare-fun tp!2406143 () Bool)

(assert (=> b!8036057 (= e!4733639 (and tp!2406142 tp!2406143))))

(declare-fun b!8036056 () Bool)

(assert (=> b!8036056 (= e!4733639 tp_is_empty!54485)))

(declare-fun b!8036058 () Bool)

(declare-fun tp!2406140 () Bool)

(assert (=> b!8036058 (= e!4733639 tp!2406140)))

(declare-fun b!8036059 () Bool)

(declare-fun tp!2406139 () Bool)

(declare-fun tp!2406141 () Bool)

(assert (=> b!8036059 (= e!4733639 (and tp!2406139 tp!2406141))))

(assert (=> b!8035881 (= tp!2406089 e!4733639)))

(assert (= (and b!8035881 ((_ is ElementMatch!21745) (regTwo!44002 r!13107))) b!8036056))

(assert (= (and b!8035881 ((_ is Concat!30748) (regTwo!44002 r!13107))) b!8036057))

(assert (= (and b!8035881 ((_ is Star!21745) (regTwo!44002 r!13107))) b!8036058))

(assert (= (and b!8035881 ((_ is Union!21745) (regTwo!44002 r!13107))) b!8036059))

(declare-fun b!8036065 () Bool)

(declare-fun e!4733641 () Bool)

(declare-fun tp!2406152 () Bool)

(declare-fun tp!2406153 () Bool)

(assert (=> b!8036065 (= e!4733641 (and tp!2406152 tp!2406153))))

(declare-fun b!8036064 () Bool)

(assert (=> b!8036064 (= e!4733641 tp_is_empty!54485)))

(declare-fun b!8036066 () Bool)

(declare-fun tp!2406150 () Bool)

(assert (=> b!8036066 (= e!4733641 tp!2406150)))

(declare-fun b!8036067 () Bool)

(declare-fun tp!2406149 () Bool)

(declare-fun tp!2406151 () Bool)

(assert (=> b!8036067 (= e!4733641 (and tp!2406149 tp!2406151))))

(assert (=> b!8035875 (= tp!2406092 e!4733641)))

(assert (= (and b!8035875 ((_ is ElementMatch!21745) (reg!22074 r!13107))) b!8036064))

(assert (= (and b!8035875 ((_ is Concat!30748) (reg!22074 r!13107))) b!8036065))

(assert (= (and b!8035875 ((_ is Star!21745) (reg!22074 r!13107))) b!8036066))

(assert (= (and b!8035875 ((_ is Union!21745) (reg!22074 r!13107))) b!8036067))

(check-sat (not bm!745727) (not bm!745741) (not b!8036057) (not b!8036039) (not bm!745742) (not b!8036058) (not b!8036065) (not b!8036059) (not bm!745728) (not b!8036038) (not d!2395013) (not b!8036037) (not bm!745721) (not b!8036067) (not b!8036050) (not b!8036051) (not b!8036049) (not b!8035991) (not b!8036041) (not bm!745722) (not b!8036042) tp_is_empty!54485 (not b!8036066) (not b!8036043))
(check-sat)
(get-model)

(declare-fun b!8036076 () Bool)

(declare-fun e!4733646 () Int)

(declare-fun e!4733647 () Int)

(assert (=> b!8036076 (= e!4733646 e!4733647)))

(declare-fun c!1474253 () Bool)

(assert (=> b!8036076 (= c!1474253 ((_ is Star!21745) (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))))))

(declare-fun d!2395017 () Bool)

(declare-fun lt!2722089 () Int)

(assert (=> d!2395017 (>= lt!2722089 0)))

(declare-fun e!4733645 () Int)

(assert (=> d!2395017 (= lt!2722089 e!4733645)))

(declare-fun c!1474252 () Bool)

(assert (=> d!2395017 (= c!1474252 ((_ is ElementMatch!21745) (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))))))

(assert (=> d!2395017 (= (RegexPrimitiveSize!159 (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))) lt!2722089)))

(declare-fun bm!745750 () Bool)

(declare-fun call!745757 () Int)

(declare-fun call!745755 () Int)

(assert (=> bm!745750 (= call!745757 call!745755)))

(declare-fun b!8036077 () Bool)

(declare-fun e!4733648 () Int)

(assert (=> b!8036077 (= e!4733645 e!4733648)))

(declare-fun c!1474251 () Bool)

(assert (=> b!8036077 (= c!1474251 ((_ is Concat!30748) (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))))))

(declare-fun b!8036078 () Bool)

(declare-fun e!4733644 () Int)

(declare-fun call!745756 () Int)

(assert (=> b!8036078 (= e!4733644 (+ 1 call!745757 call!745756))))

(declare-fun bm!745751 () Bool)

(assert (=> bm!745751 (= call!745755 (RegexPrimitiveSize!159 (ite c!1474251 (regOne!44002 (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))) (ite c!1474253 (reg!22074 (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))) (regOne!44003 (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107)))))))))

(declare-fun b!8036079 () Bool)

(assert (=> b!8036079 (= e!4733644 0)))

(declare-fun b!8036080 () Bool)

(declare-fun c!1474250 () Bool)

(assert (=> b!8036080 (= c!1474250 ((_ is EmptyExpr!21745) (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))))))

(assert (=> b!8036080 (= e!4733648 e!4733646)))

(declare-fun bm!745752 () Bool)

(assert (=> bm!745752 (= call!745756 (RegexPrimitiveSize!159 (ite c!1474251 (regTwo!44002 (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))) (regTwo!44003 (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))))))))

(declare-fun b!8036081 () Bool)

(declare-fun c!1474249 () Bool)

(assert (=> b!8036081 (= c!1474249 ((_ is EmptyLang!21745) (ite c!1474220 (regTwo!44002 r!13107) (regTwo!44003 r!13107))))))

(assert (=> b!8036081 (= e!4733647 e!4733644)))

(declare-fun b!8036082 () Bool)

(assert (=> b!8036082 (= e!4733648 (+ 1 call!745755 call!745756))))

(declare-fun b!8036083 () Bool)

(assert (=> b!8036083 (= e!4733647 (+ 1 call!745757))))

(declare-fun b!8036084 () Bool)

(assert (=> b!8036084 (= e!4733646 0)))

(declare-fun b!8036085 () Bool)

(assert (=> b!8036085 (= e!4733645 1)))

(assert (= (and d!2395017 c!1474252) b!8036085))

(assert (= (and d!2395017 (not c!1474252)) b!8036077))

(assert (= (and b!8036077 c!1474251) b!8036082))

(assert (= (and b!8036077 (not c!1474251)) b!8036080))

(assert (= (and b!8036080 c!1474250) b!8036084))

(assert (= (and b!8036080 (not c!1474250)) b!8036076))

(assert (= (and b!8036076 c!1474253) b!8036083))

(assert (= (and b!8036076 (not c!1474253)) b!8036081))

(assert (= (and b!8036081 c!1474249) b!8036079))

(assert (= (and b!8036081 (not c!1474249)) b!8036078))

(assert (= (or b!8036083 b!8036078) bm!745750))

(assert (= (or b!8036082 b!8036078) bm!745752))

(assert (= (or b!8036082 bm!745750) bm!745751))

(declare-fun m!8393330 () Bool)

(assert (=> bm!745751 m!8393330))

(declare-fun m!8393332 () Bool)

(assert (=> bm!745752 m!8393332))

(assert (=> bm!745728 d!2395017))

(declare-fun b!8036086 () Bool)

(declare-fun e!4733654 () Bool)

(declare-fun call!745758 () Bool)

(assert (=> b!8036086 (= e!4733654 call!745758)))

(declare-fun b!8036088 () Bool)

(declare-fun e!4733651 () Bool)

(assert (=> b!8036088 (= e!4733651 e!4733654)))

(declare-fun res!3177133 () Bool)

(assert (=> b!8036088 (=> (not res!3177133) (not e!4733654))))

(declare-fun call!745759 () Bool)

(assert (=> b!8036088 (= res!3177133 call!745759)))

(declare-fun b!8036089 () Bool)

(declare-fun res!3177134 () Bool)

(declare-fun e!4733649 () Bool)

(assert (=> b!8036089 (=> (not res!3177134) (not e!4733649))))

(assert (=> b!8036089 (= res!3177134 call!745759)))

(declare-fun e!4733653 () Bool)

(assert (=> b!8036089 (= e!4733653 e!4733649)))

(declare-fun b!8036090 () Bool)

(declare-fun e!4733655 () Bool)

(declare-fun e!4733652 () Bool)

(assert (=> b!8036090 (= e!4733655 e!4733652)))

(declare-fun res!3177132 () Bool)

(assert (=> b!8036090 (= res!3177132 (not (nullable!9770 (reg!22074 (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))))))))

(assert (=> b!8036090 (=> (not res!3177132) (not e!4733652))))

(declare-fun call!745760 () Bool)

(declare-fun c!1474254 () Bool)

(declare-fun c!1474255 () Bool)

(declare-fun bm!745753 () Bool)

(assert (=> bm!745753 (= call!745760 (validRegex!12041 (ite c!1474255 (reg!22074 (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))) (ite c!1474254 (regOne!44003 (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))) (regOne!44002 (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107))))))))))

(declare-fun d!2395019 () Bool)

(declare-fun res!3177136 () Bool)

(declare-fun e!4733650 () Bool)

(assert (=> d!2395019 (=> res!3177136 e!4733650)))

(assert (=> d!2395019 (= res!3177136 ((_ is ElementMatch!21745) (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))))))

(assert (=> d!2395019 (= (validRegex!12041 (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))) e!4733650)))

(declare-fun b!8036087 () Bool)

(assert (=> b!8036087 (= e!4733649 call!745758)))

(declare-fun b!8036091 () Bool)

(declare-fun res!3177135 () Bool)

(assert (=> b!8036091 (=> res!3177135 e!4733651)))

(assert (=> b!8036091 (= res!3177135 (not ((_ is Concat!30748) (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107))))))))

(assert (=> b!8036091 (= e!4733653 e!4733651)))

(declare-fun bm!745754 () Bool)

(assert (=> bm!745754 (= call!745758 (validRegex!12041 (ite c!1474254 (regTwo!44003 (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))) (regTwo!44002 (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))))))))

(declare-fun b!8036092 () Bool)

(assert (=> b!8036092 (= e!4733650 e!4733655)))

(assert (=> b!8036092 (= c!1474255 ((_ is Star!21745) (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))))))

(declare-fun b!8036093 () Bool)

(assert (=> b!8036093 (= e!4733655 e!4733653)))

(assert (=> b!8036093 (= c!1474254 ((_ is Union!21745) (ite c!1474238 (reg!22074 r!13107) (ite c!1474237 (regOne!44003 r!13107) (regOne!44002 r!13107)))))))

(declare-fun b!8036094 () Bool)

(assert (=> b!8036094 (= e!4733652 call!745760)))

(declare-fun bm!745755 () Bool)

(assert (=> bm!745755 (= call!745759 call!745760)))

(assert (= (and d!2395019 (not res!3177136)) b!8036092))

(assert (= (and b!8036092 c!1474255) b!8036090))

(assert (= (and b!8036092 (not c!1474255)) b!8036093))

(assert (= (and b!8036090 res!3177132) b!8036094))

(assert (= (and b!8036093 c!1474254) b!8036089))

(assert (= (and b!8036093 (not c!1474254)) b!8036091))

(assert (= (and b!8036089 res!3177134) b!8036087))

(assert (= (and b!8036091 (not res!3177135)) b!8036088))

(assert (= (and b!8036088 res!3177133) b!8036086))

(assert (= (or b!8036087 b!8036086) bm!745754))

(assert (= (or b!8036089 b!8036088) bm!745755))

(assert (= (or b!8036094 bm!745755) bm!745753))

(declare-fun m!8393334 () Bool)

(assert (=> b!8036090 m!8393334))

(declare-fun m!8393336 () Bool)

(assert (=> bm!745753 m!8393336))

(declare-fun m!8393338 () Bool)

(assert (=> bm!745754 m!8393338))

(assert (=> bm!745741 d!2395019))

(declare-fun b!8036095 () Bool)

(declare-fun e!4733658 () Int)

(declare-fun e!4733659 () Int)

(assert (=> b!8036095 (= e!4733658 e!4733659)))

(declare-fun c!1474260 () Bool)

(assert (=> b!8036095 (= c!1474260 ((_ is Star!21745) (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))))))

(declare-fun d!2395021 () Bool)

(declare-fun lt!2722090 () Int)

(assert (=> d!2395021 (>= lt!2722090 0)))

(declare-fun e!4733657 () Int)

(assert (=> d!2395021 (= lt!2722090 e!4733657)))

(declare-fun c!1474259 () Bool)

(assert (=> d!2395021 (= c!1474259 ((_ is ElementMatch!21745) (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))))))

(assert (=> d!2395021 (= (RegexPrimitiveSize!159 (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))) lt!2722090)))

(declare-fun bm!745756 () Bool)

(declare-fun call!745763 () Int)

(declare-fun call!745761 () Int)

(assert (=> bm!745756 (= call!745763 call!745761)))

(declare-fun b!8036096 () Bool)

(declare-fun e!4733660 () Int)

(assert (=> b!8036096 (= e!4733657 e!4733660)))

(declare-fun c!1474258 () Bool)

(assert (=> b!8036096 (= c!1474258 ((_ is Concat!30748) (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))))))

(declare-fun b!8036097 () Bool)

(declare-fun e!4733656 () Int)

(declare-fun call!745762 () Int)

(assert (=> b!8036097 (= e!4733656 (+ 1 call!745763 call!745762))))

(declare-fun bm!745757 () Bool)

(assert (=> bm!745757 (= call!745761 (RegexPrimitiveSize!159 (ite c!1474258 (regOne!44002 (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))) (ite c!1474260 (reg!22074 (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))) (regOne!44003 (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107)))))))))))

(declare-fun b!8036098 () Bool)

(assert (=> b!8036098 (= e!4733656 0)))

(declare-fun b!8036099 () Bool)

(declare-fun c!1474257 () Bool)

(assert (=> b!8036099 (= c!1474257 ((_ is EmptyExpr!21745) (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))))))

(assert (=> b!8036099 (= e!4733660 e!4733658)))

(declare-fun bm!745758 () Bool)

(assert (=> bm!745758 (= call!745762 (RegexPrimitiveSize!159 (ite c!1474258 (regTwo!44002 (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))) (regTwo!44003 (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))))))))

(declare-fun b!8036100 () Bool)

(declare-fun c!1474256 () Bool)

(assert (=> b!8036100 (= c!1474256 ((_ is EmptyLang!21745) (ite c!1474213 (regOne!44002 (regOne!44002 r!13107)) (ite c!1474215 (reg!22074 (regOne!44002 r!13107)) (regOne!44003 (regOne!44002 r!13107))))))))

(assert (=> b!8036100 (= e!4733659 e!4733656)))

(declare-fun b!8036101 () Bool)

(assert (=> b!8036101 (= e!4733660 (+ 1 call!745761 call!745762))))

(declare-fun b!8036102 () Bool)

(assert (=> b!8036102 (= e!4733659 (+ 1 call!745763))))

(declare-fun b!8036103 () Bool)

(assert (=> b!8036103 (= e!4733658 0)))

(declare-fun b!8036104 () Bool)

(assert (=> b!8036104 (= e!4733657 1)))

(assert (= (and d!2395021 c!1474259) b!8036104))

(assert (= (and d!2395021 (not c!1474259)) b!8036096))

(assert (= (and b!8036096 c!1474258) b!8036101))

(assert (= (and b!8036096 (not c!1474258)) b!8036099))

(assert (= (and b!8036099 c!1474257) b!8036103))

(assert (= (and b!8036099 (not c!1474257)) b!8036095))

(assert (= (and b!8036095 c!1474260) b!8036102))

(assert (= (and b!8036095 (not c!1474260)) b!8036100))

(assert (= (and b!8036100 c!1474256) b!8036098))

(assert (= (and b!8036100 (not c!1474256)) b!8036097))

(assert (= (or b!8036102 b!8036097) bm!745756))

(assert (= (or b!8036101 b!8036097) bm!745758))

(assert (= (or b!8036101 bm!745756) bm!745757))

(declare-fun m!8393340 () Bool)

(assert (=> bm!745757 m!8393340))

(declare-fun m!8393342 () Bool)

(assert (=> bm!745758 m!8393342))

(assert (=> bm!745721 d!2395021))

(declare-fun d!2395023 () Bool)

(assert (=> d!2395023 (= (nullable!9770 (reg!22074 r!13107)) (nullableFct!3864 (reg!22074 r!13107)))))

(declare-fun bs!1971507 () Bool)

(assert (= bs!1971507 d!2395023))

(declare-fun m!8393344 () Bool)

(assert (=> bs!1971507 m!8393344))

(assert (=> b!8035991 d!2395023))

(declare-fun b!8036129 () Bool)

(declare-fun e!4733678 () Bool)

(declare-fun e!4733681 () Bool)

(assert (=> b!8036129 (= e!4733678 e!4733681)))

(declare-fun res!3177149 () Bool)

(assert (=> b!8036129 (=> (not res!3177149) (not e!4733681))))

(assert (=> b!8036129 (= res!3177149 (and (not ((_ is EmptyLang!21745) (regOne!44002 r!13107))) (not ((_ is ElementMatch!21745) (regOne!44002 r!13107)))))))

(declare-fun b!8036130 () Bool)

(declare-fun e!4733682 () Bool)

(assert (=> b!8036130 (= e!4733681 e!4733682)))

(declare-fun res!3177150 () Bool)

(assert (=> b!8036130 (=> res!3177150 e!4733682)))

(assert (=> b!8036130 (= res!3177150 ((_ is Star!21745) (regOne!44002 r!13107)))))

(declare-fun b!8036131 () Bool)

(declare-fun e!4733680 () Bool)

(declare-fun call!745772 () Bool)

(assert (=> b!8036131 (= e!4733680 call!745772)))

(declare-fun d!2395025 () Bool)

(declare-fun res!3177147 () Bool)

(assert (=> d!2395025 (=> res!3177147 e!4733678)))

(assert (=> d!2395025 (= res!3177147 ((_ is EmptyExpr!21745) (regOne!44002 r!13107)))))

(assert (=> d!2395025 (= (nullableFct!3864 (regOne!44002 r!13107)) e!4733678)))

(declare-fun bm!745766 () Bool)

(declare-fun c!1474268 () Bool)

(assert (=> bm!745766 (= call!745772 (nullable!9770 (ite c!1474268 (regTwo!44003 (regOne!44002 r!13107)) (regTwo!44002 (regOne!44002 r!13107)))))))

(declare-fun b!8036132 () Bool)

(declare-fun e!4733679 () Bool)

(declare-fun e!4733683 () Bool)

(assert (=> b!8036132 (= e!4733679 e!4733683)))

(declare-fun res!3177148 () Bool)

(declare-fun call!745771 () Bool)

(assert (=> b!8036132 (= res!3177148 call!745771)))

(assert (=> b!8036132 (=> res!3177148 e!4733683)))

(declare-fun b!8036133 () Bool)

(assert (=> b!8036133 (= e!4733683 call!745772)))

(declare-fun bm!745767 () Bool)

(assert (=> bm!745767 (= call!745771 (nullable!9770 (ite c!1474268 (regOne!44003 (regOne!44002 r!13107)) (regOne!44002 (regOne!44002 r!13107)))))))

(declare-fun b!8036134 () Bool)

(assert (=> b!8036134 (= e!4733679 e!4733680)))

(declare-fun res!3177151 () Bool)

(assert (=> b!8036134 (= res!3177151 call!745771)))

(assert (=> b!8036134 (=> (not res!3177151) (not e!4733680))))

(declare-fun b!8036135 () Bool)

(assert (=> b!8036135 (= e!4733682 e!4733679)))

(assert (=> b!8036135 (= c!1474268 ((_ is Union!21745) (regOne!44002 r!13107)))))

(assert (= (and d!2395025 (not res!3177147)) b!8036129))

(assert (= (and b!8036129 res!3177149) b!8036130))

(assert (= (and b!8036130 (not res!3177150)) b!8036135))

(assert (= (and b!8036135 c!1474268) b!8036132))

(assert (= (and b!8036135 (not c!1474268)) b!8036134))

(assert (= (and b!8036132 (not res!3177148)) b!8036133))

(assert (= (and b!8036134 res!3177151) b!8036131))

(assert (= (or b!8036133 b!8036131) bm!745766))

(assert (= (or b!8036132 b!8036134) bm!745767))

(declare-fun m!8393352 () Bool)

(assert (=> bm!745766 m!8393352))

(declare-fun m!8393354 () Bool)

(assert (=> bm!745767 m!8393354))

(assert (=> d!2395013 d!2395025))

(declare-fun b!8036146 () Bool)

(declare-fun e!4733691 () Int)

(declare-fun e!4733692 () Int)

(assert (=> b!8036146 (= e!4733691 e!4733692)))

(declare-fun c!1474278 () Bool)

(assert (=> b!8036146 (= c!1474278 ((_ is Star!21745) (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))))))

(declare-fun d!2395033 () Bool)

(declare-fun lt!2722093 () Int)

(assert (=> d!2395033 (>= lt!2722093 0)))

(declare-fun e!4733690 () Int)

(assert (=> d!2395033 (= lt!2722093 e!4733690)))

(declare-fun c!1474277 () Bool)

(assert (=> d!2395033 (= c!1474277 ((_ is ElementMatch!21745) (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))))))

(assert (=> d!2395033 (= (RegexPrimitiveSize!159 (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))) lt!2722093)))

(declare-fun bm!745771 () Bool)

(declare-fun call!745778 () Int)

(declare-fun call!745776 () Int)

(assert (=> bm!745771 (= call!745778 call!745776)))

(declare-fun b!8036147 () Bool)

(declare-fun e!4733693 () Int)

(assert (=> b!8036147 (= e!4733690 e!4733693)))

(declare-fun c!1474276 () Bool)

(assert (=> b!8036147 (= c!1474276 ((_ is Concat!30748) (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))))))

(declare-fun b!8036148 () Bool)

(declare-fun e!4733689 () Int)

(declare-fun call!745777 () Int)

(assert (=> b!8036148 (= e!4733689 (+ 1 call!745778 call!745777))))

(declare-fun bm!745772 () Bool)

(assert (=> bm!745772 (= call!745776 (RegexPrimitiveSize!159 (ite c!1474276 (regOne!44002 (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))) (ite c!1474278 (reg!22074 (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))) (regOne!44003 (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107))))))))))

(declare-fun b!8036149 () Bool)

(assert (=> b!8036149 (= e!4733689 0)))

(declare-fun b!8036150 () Bool)

(declare-fun c!1474275 () Bool)

(assert (=> b!8036150 (= c!1474275 ((_ is EmptyExpr!21745) (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))))))

(assert (=> b!8036150 (= e!4733693 e!4733691)))

(declare-fun bm!745773 () Bool)

(assert (=> bm!745773 (= call!745777 (RegexPrimitiveSize!159 (ite c!1474276 (regTwo!44002 (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))) (regTwo!44003 (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))))))))

(declare-fun b!8036151 () Bool)

(declare-fun c!1474274 () Bool)

(assert (=> b!8036151 (= c!1474274 ((_ is EmptyLang!21745) (ite c!1474213 (regTwo!44002 (regOne!44002 r!13107)) (regTwo!44003 (regOne!44002 r!13107)))))))

(assert (=> b!8036151 (= e!4733692 e!4733689)))

(declare-fun b!8036152 () Bool)

(assert (=> b!8036152 (= e!4733693 (+ 1 call!745776 call!745777))))

(declare-fun b!8036153 () Bool)

(assert (=> b!8036153 (= e!4733692 (+ 1 call!745778))))

(declare-fun b!8036154 () Bool)

(assert (=> b!8036154 (= e!4733691 0)))

(declare-fun b!8036155 () Bool)

(assert (=> b!8036155 (= e!4733690 1)))

(assert (= (and d!2395033 c!1474277) b!8036155))

(assert (= (and d!2395033 (not c!1474277)) b!8036147))

(assert (= (and b!8036147 c!1474276) b!8036152))

(assert (= (and b!8036147 (not c!1474276)) b!8036150))

(assert (= (and b!8036150 c!1474275) b!8036154))

(assert (= (and b!8036150 (not c!1474275)) b!8036146))

(assert (= (and b!8036146 c!1474278) b!8036153))

(assert (= (and b!8036146 (not c!1474278)) b!8036151))

(assert (= (and b!8036151 c!1474274) b!8036149))

(assert (= (and b!8036151 (not c!1474274)) b!8036148))

(assert (= (or b!8036153 b!8036148) bm!745771))

(assert (= (or b!8036152 b!8036148) bm!745773))

(assert (= (or b!8036152 bm!745771) bm!745772))

(declare-fun m!8393360 () Bool)

(assert (=> bm!745772 m!8393360))

(declare-fun m!8393362 () Bool)

(assert (=> bm!745773 m!8393362))

(assert (=> bm!745722 d!2395033))

(declare-fun b!8036156 () Bool)

(declare-fun e!4733699 () Bool)

(declare-fun call!745779 () Bool)

(assert (=> b!8036156 (= e!4733699 call!745779)))

(declare-fun b!8036158 () Bool)

(declare-fun e!4733696 () Bool)

(assert (=> b!8036158 (= e!4733696 e!4733699)))

(declare-fun res!3177153 () Bool)

(assert (=> b!8036158 (=> (not res!3177153) (not e!4733699))))

(declare-fun call!745780 () Bool)

(assert (=> b!8036158 (= res!3177153 call!745780)))

(declare-fun b!8036159 () Bool)

(declare-fun res!3177154 () Bool)

(declare-fun e!4733694 () Bool)

(assert (=> b!8036159 (=> (not res!3177154) (not e!4733694))))

(assert (=> b!8036159 (= res!3177154 call!745780)))

(declare-fun e!4733698 () Bool)

(assert (=> b!8036159 (= e!4733698 e!4733694)))

(declare-fun b!8036160 () Bool)

(declare-fun e!4733700 () Bool)

(declare-fun e!4733697 () Bool)

(assert (=> b!8036160 (= e!4733700 e!4733697)))

(declare-fun res!3177152 () Bool)

(assert (=> b!8036160 (= res!3177152 (not (nullable!9770 (reg!22074 (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))))))))

(assert (=> b!8036160 (=> (not res!3177152) (not e!4733697))))

(declare-fun c!1474279 () Bool)

(declare-fun call!745781 () Bool)

(declare-fun bm!745774 () Bool)

(declare-fun c!1474280 () Bool)

(assert (=> bm!745774 (= call!745781 (validRegex!12041 (ite c!1474280 (reg!22074 (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))) (ite c!1474279 (regOne!44003 (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))) (regOne!44002 (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107)))))))))

(declare-fun d!2395037 () Bool)

(declare-fun res!3177156 () Bool)

(declare-fun e!4733695 () Bool)

(assert (=> d!2395037 (=> res!3177156 e!4733695)))

(assert (=> d!2395037 (= res!3177156 ((_ is ElementMatch!21745) (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))))))

(assert (=> d!2395037 (= (validRegex!12041 (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))) e!4733695)))

(declare-fun b!8036157 () Bool)

(assert (=> b!8036157 (= e!4733694 call!745779)))

(declare-fun b!8036161 () Bool)

(declare-fun res!3177155 () Bool)

(assert (=> b!8036161 (=> res!3177155 e!4733696)))

(assert (=> b!8036161 (= res!3177155 (not ((_ is Concat!30748) (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107)))))))

(assert (=> b!8036161 (= e!4733698 e!4733696)))

(declare-fun bm!745775 () Bool)

(assert (=> bm!745775 (= call!745779 (validRegex!12041 (ite c!1474279 (regTwo!44003 (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))) (regTwo!44002 (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))))))))

(declare-fun b!8036162 () Bool)

(assert (=> b!8036162 (= e!4733695 e!4733700)))

(assert (=> b!8036162 (= c!1474280 ((_ is Star!21745) (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))))))

(declare-fun b!8036163 () Bool)

(assert (=> b!8036163 (= e!4733700 e!4733698)))

(assert (=> b!8036163 (= c!1474279 ((_ is Union!21745) (ite c!1474237 (regTwo!44003 r!13107) (regTwo!44002 r!13107))))))

(declare-fun b!8036164 () Bool)

(assert (=> b!8036164 (= e!4733697 call!745781)))

(declare-fun bm!745776 () Bool)

(assert (=> bm!745776 (= call!745780 call!745781)))

(assert (= (and d!2395037 (not res!3177156)) b!8036162))

(assert (= (and b!8036162 c!1474280) b!8036160))

(assert (= (and b!8036162 (not c!1474280)) b!8036163))

(assert (= (and b!8036160 res!3177152) b!8036164))

(assert (= (and b!8036163 c!1474279) b!8036159))

(assert (= (and b!8036163 (not c!1474279)) b!8036161))

(assert (= (and b!8036159 res!3177154) b!8036157))

(assert (= (and b!8036161 (not res!3177155)) b!8036158))

(assert (= (and b!8036158 res!3177153) b!8036156))

(assert (= (or b!8036157 b!8036156) bm!745775))

(assert (= (or b!8036159 b!8036158) bm!745776))

(assert (= (or b!8036164 bm!745776) bm!745774))

(declare-fun m!8393364 () Bool)

(assert (=> b!8036160 m!8393364))

(declare-fun m!8393366 () Bool)

(assert (=> bm!745774 m!8393366))

(declare-fun m!8393368 () Bool)

(assert (=> bm!745775 m!8393368))

(assert (=> bm!745742 d!2395037))

(declare-fun b!8036165 () Bool)

(declare-fun e!4733703 () Int)

(declare-fun e!4733704 () Int)

(assert (=> b!8036165 (= e!4733703 e!4733704)))

(declare-fun c!1474285 () Bool)

(assert (=> b!8036165 (= c!1474285 ((_ is Star!21745) (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))))))

(declare-fun d!2395039 () Bool)

(declare-fun lt!2722094 () Int)

(assert (=> d!2395039 (>= lt!2722094 0)))

(declare-fun e!4733702 () Int)

(assert (=> d!2395039 (= lt!2722094 e!4733702)))

(declare-fun c!1474284 () Bool)

(assert (=> d!2395039 (= c!1474284 ((_ is ElementMatch!21745) (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))))))

(assert (=> d!2395039 (= (RegexPrimitiveSize!159 (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))) lt!2722094)))

(declare-fun bm!745777 () Bool)

(declare-fun call!745784 () Int)

(declare-fun call!745782 () Int)

(assert (=> bm!745777 (= call!745784 call!745782)))

(declare-fun b!8036166 () Bool)

(declare-fun e!4733705 () Int)

(assert (=> b!8036166 (= e!4733702 e!4733705)))

(declare-fun c!1474283 () Bool)

(assert (=> b!8036166 (= c!1474283 ((_ is Concat!30748) (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))))))

(declare-fun b!8036167 () Bool)

(declare-fun e!4733701 () Int)

(declare-fun call!745783 () Int)

(assert (=> b!8036167 (= e!4733701 (+ 1 call!745784 call!745783))))

(declare-fun bm!745778 () Bool)

(assert (=> bm!745778 (= call!745782 (RegexPrimitiveSize!159 (ite c!1474283 (regOne!44002 (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))) (ite c!1474285 (reg!22074 (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))) (regOne!44003 (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107))))))))))

(declare-fun b!8036168 () Bool)

(assert (=> b!8036168 (= e!4733701 0)))

(declare-fun c!1474282 () Bool)

(declare-fun b!8036169 () Bool)

(assert (=> b!8036169 (= c!1474282 ((_ is EmptyExpr!21745) (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))))))

(assert (=> b!8036169 (= e!4733705 e!4733703)))

(declare-fun bm!745779 () Bool)

(assert (=> bm!745779 (= call!745783 (RegexPrimitiveSize!159 (ite c!1474283 (regTwo!44002 (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))) (regTwo!44003 (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))))))))

(declare-fun c!1474281 () Bool)

(declare-fun b!8036170 () Bool)

(assert (=> b!8036170 (= c!1474281 ((_ is EmptyLang!21745) (ite c!1474220 (regOne!44002 r!13107) (ite c!1474222 (reg!22074 r!13107) (regOne!44003 r!13107)))))))

(assert (=> b!8036170 (= e!4733704 e!4733701)))

(declare-fun b!8036171 () Bool)

(assert (=> b!8036171 (= e!4733705 (+ 1 call!745782 call!745783))))

(declare-fun b!8036172 () Bool)

(assert (=> b!8036172 (= e!4733704 (+ 1 call!745784))))

(declare-fun b!8036173 () Bool)

(assert (=> b!8036173 (= e!4733703 0)))

(declare-fun b!8036174 () Bool)

(assert (=> b!8036174 (= e!4733702 1)))

(assert (= (and d!2395039 c!1474284) b!8036174))

(assert (= (and d!2395039 (not c!1474284)) b!8036166))

(assert (= (and b!8036166 c!1474283) b!8036171))

(assert (= (and b!8036166 (not c!1474283)) b!8036169))

(assert (= (and b!8036169 c!1474282) b!8036173))

(assert (= (and b!8036169 (not c!1474282)) b!8036165))

(assert (= (and b!8036165 c!1474285) b!8036172))

(assert (= (and b!8036165 (not c!1474285)) b!8036170))

(assert (= (and b!8036170 c!1474281) b!8036168))

(assert (= (and b!8036170 (not c!1474281)) b!8036167))

(assert (= (or b!8036172 b!8036167) bm!745777))

(assert (= (or b!8036171 b!8036167) bm!745779))

(assert (= (or b!8036171 bm!745777) bm!745778))

(declare-fun m!8393370 () Bool)

(assert (=> bm!745778 m!8393370))

(declare-fun m!8393372 () Bool)

(assert (=> bm!745779 m!8393372))

(assert (=> bm!745727 d!2395039))

(declare-fun b!8036190 () Bool)

(declare-fun e!4733718 () Bool)

(declare-fun tp!2406167 () Bool)

(declare-fun tp!2406168 () Bool)

(assert (=> b!8036190 (= e!4733718 (and tp!2406167 tp!2406168))))

(declare-fun b!8036189 () Bool)

(assert (=> b!8036189 (= e!4733718 tp_is_empty!54485)))

(declare-fun b!8036191 () Bool)

(declare-fun tp!2406165 () Bool)

(assert (=> b!8036191 (= e!4733718 tp!2406165)))

(declare-fun b!8036192 () Bool)

(declare-fun tp!2406164 () Bool)

(declare-fun tp!2406166 () Bool)

(assert (=> b!8036192 (= e!4733718 (and tp!2406164 tp!2406166))))

(assert (=> b!8036057 (= tp!2406142 e!4733718)))

(assert (= (and b!8036057 ((_ is ElementMatch!21745) (regOne!44002 (regTwo!44002 r!13107)))) b!8036189))

(assert (= (and b!8036057 ((_ is Concat!30748) (regOne!44002 (regTwo!44002 r!13107)))) b!8036190))

(assert (= (and b!8036057 ((_ is Star!21745) (regOne!44002 (regTwo!44002 r!13107)))) b!8036191))

(assert (= (and b!8036057 ((_ is Union!21745) (regOne!44002 (regTwo!44002 r!13107)))) b!8036192))

(declare-fun b!8036194 () Bool)

(declare-fun e!4733719 () Bool)

(declare-fun tp!2406172 () Bool)

(declare-fun tp!2406173 () Bool)

(assert (=> b!8036194 (= e!4733719 (and tp!2406172 tp!2406173))))

(declare-fun b!8036193 () Bool)

(assert (=> b!8036193 (= e!4733719 tp_is_empty!54485)))

(declare-fun b!8036195 () Bool)

(declare-fun tp!2406170 () Bool)

(assert (=> b!8036195 (= e!4733719 tp!2406170)))

(declare-fun b!8036196 () Bool)

(declare-fun tp!2406169 () Bool)

(declare-fun tp!2406171 () Bool)

(assert (=> b!8036196 (= e!4733719 (and tp!2406169 tp!2406171))))

(assert (=> b!8036057 (= tp!2406143 e!4733719)))

(assert (= (and b!8036057 ((_ is ElementMatch!21745) (regTwo!44002 (regTwo!44002 r!13107)))) b!8036193))

(assert (= (and b!8036057 ((_ is Concat!30748) (regTwo!44002 (regTwo!44002 r!13107)))) b!8036194))

(assert (= (and b!8036057 ((_ is Star!21745) (regTwo!44002 (regTwo!44002 r!13107)))) b!8036195))

(assert (= (and b!8036057 ((_ is Union!21745) (regTwo!44002 (regTwo!44002 r!13107)))) b!8036196))

(declare-fun b!8036198 () Bool)

(declare-fun e!4733720 () Bool)

(declare-fun tp!2406177 () Bool)

(declare-fun tp!2406178 () Bool)

(assert (=> b!8036198 (= e!4733720 (and tp!2406177 tp!2406178))))

(declare-fun b!8036197 () Bool)

(assert (=> b!8036197 (= e!4733720 tp_is_empty!54485)))

(declare-fun b!8036199 () Bool)

(declare-fun tp!2406175 () Bool)

(assert (=> b!8036199 (= e!4733720 tp!2406175)))

(declare-fun b!8036200 () Bool)

(declare-fun tp!2406174 () Bool)

(declare-fun tp!2406176 () Bool)

(assert (=> b!8036200 (= e!4733720 (and tp!2406174 tp!2406176))))

(assert (=> b!8036058 (= tp!2406140 e!4733720)))

(assert (= (and b!8036058 ((_ is ElementMatch!21745) (reg!22074 (regTwo!44002 r!13107)))) b!8036197))

(assert (= (and b!8036058 ((_ is Concat!30748) (reg!22074 (regTwo!44002 r!13107)))) b!8036198))

(assert (= (and b!8036058 ((_ is Star!21745) (reg!22074 (regTwo!44002 r!13107)))) b!8036199))

(assert (= (and b!8036058 ((_ is Union!21745) (reg!22074 (regTwo!44002 r!13107)))) b!8036200))

(declare-fun b!8036202 () Bool)

(declare-fun e!4733721 () Bool)

(declare-fun tp!2406182 () Bool)

(declare-fun tp!2406183 () Bool)

(assert (=> b!8036202 (= e!4733721 (and tp!2406182 tp!2406183))))

(declare-fun b!8036201 () Bool)

(assert (=> b!8036201 (= e!4733721 tp_is_empty!54485)))

(declare-fun b!8036203 () Bool)

(declare-fun tp!2406180 () Bool)

(assert (=> b!8036203 (= e!4733721 tp!2406180)))

(declare-fun b!8036204 () Bool)

(declare-fun tp!2406179 () Bool)

(declare-fun tp!2406181 () Bool)

(assert (=> b!8036204 (= e!4733721 (and tp!2406179 tp!2406181))))

(assert (=> b!8036067 (= tp!2406149 e!4733721)))

(assert (= (and b!8036067 ((_ is ElementMatch!21745) (regOne!44003 (reg!22074 r!13107)))) b!8036201))

(assert (= (and b!8036067 ((_ is Concat!30748) (regOne!44003 (reg!22074 r!13107)))) b!8036202))

(assert (= (and b!8036067 ((_ is Star!21745) (regOne!44003 (reg!22074 r!13107)))) b!8036203))

(assert (= (and b!8036067 ((_ is Union!21745) (regOne!44003 (reg!22074 r!13107)))) b!8036204))

(declare-fun b!8036206 () Bool)

(declare-fun e!4733722 () Bool)

(declare-fun tp!2406187 () Bool)

(declare-fun tp!2406188 () Bool)

(assert (=> b!8036206 (= e!4733722 (and tp!2406187 tp!2406188))))

(declare-fun b!8036205 () Bool)

(assert (=> b!8036205 (= e!4733722 tp_is_empty!54485)))

(declare-fun b!8036207 () Bool)

(declare-fun tp!2406185 () Bool)

(assert (=> b!8036207 (= e!4733722 tp!2406185)))

(declare-fun b!8036208 () Bool)

(declare-fun tp!2406184 () Bool)

(declare-fun tp!2406186 () Bool)

(assert (=> b!8036208 (= e!4733722 (and tp!2406184 tp!2406186))))

(assert (=> b!8036067 (= tp!2406151 e!4733722)))

(assert (= (and b!8036067 ((_ is ElementMatch!21745) (regTwo!44003 (reg!22074 r!13107)))) b!8036205))

(assert (= (and b!8036067 ((_ is Concat!30748) (regTwo!44003 (reg!22074 r!13107)))) b!8036206))

(assert (= (and b!8036067 ((_ is Star!21745) (regTwo!44003 (reg!22074 r!13107)))) b!8036207))

(assert (= (and b!8036067 ((_ is Union!21745) (regTwo!44003 (reg!22074 r!13107)))) b!8036208))

(declare-fun b!8036210 () Bool)

(declare-fun e!4733723 () Bool)

(declare-fun tp!2406192 () Bool)

(declare-fun tp!2406193 () Bool)

(assert (=> b!8036210 (= e!4733723 (and tp!2406192 tp!2406193))))

(declare-fun b!8036209 () Bool)

(assert (=> b!8036209 (= e!4733723 tp_is_empty!54485)))

(declare-fun b!8036211 () Bool)

(declare-fun tp!2406190 () Bool)

(assert (=> b!8036211 (= e!4733723 tp!2406190)))

(declare-fun b!8036212 () Bool)

(declare-fun tp!2406189 () Bool)

(declare-fun tp!2406191 () Bool)

(assert (=> b!8036212 (= e!4733723 (and tp!2406189 tp!2406191))))

(assert (=> b!8036065 (= tp!2406152 e!4733723)))

(assert (= (and b!8036065 ((_ is ElementMatch!21745) (regOne!44002 (reg!22074 r!13107)))) b!8036209))

(assert (= (and b!8036065 ((_ is Concat!30748) (regOne!44002 (reg!22074 r!13107)))) b!8036210))

(assert (= (and b!8036065 ((_ is Star!21745) (regOne!44002 (reg!22074 r!13107)))) b!8036211))

(assert (= (and b!8036065 ((_ is Union!21745) (regOne!44002 (reg!22074 r!13107)))) b!8036212))

(declare-fun b!8036214 () Bool)

(declare-fun e!4733724 () Bool)

(declare-fun tp!2406197 () Bool)

(declare-fun tp!2406198 () Bool)

(assert (=> b!8036214 (= e!4733724 (and tp!2406197 tp!2406198))))

(declare-fun b!8036213 () Bool)

(assert (=> b!8036213 (= e!4733724 tp_is_empty!54485)))

(declare-fun b!8036215 () Bool)

(declare-fun tp!2406195 () Bool)

(assert (=> b!8036215 (= e!4733724 tp!2406195)))

(declare-fun b!8036216 () Bool)

(declare-fun tp!2406194 () Bool)

(declare-fun tp!2406196 () Bool)

(assert (=> b!8036216 (= e!4733724 (and tp!2406194 tp!2406196))))

(assert (=> b!8036065 (= tp!2406153 e!4733724)))

(assert (= (and b!8036065 ((_ is ElementMatch!21745) (regTwo!44002 (reg!22074 r!13107)))) b!8036213))

(assert (= (and b!8036065 ((_ is Concat!30748) (regTwo!44002 (reg!22074 r!13107)))) b!8036214))

(assert (= (and b!8036065 ((_ is Star!21745) (regTwo!44002 (reg!22074 r!13107)))) b!8036215))

(assert (= (and b!8036065 ((_ is Union!21745) (regTwo!44002 (reg!22074 r!13107)))) b!8036216))

(declare-fun b!8036218 () Bool)

(declare-fun e!4733725 () Bool)

(declare-fun tp!2406202 () Bool)

(declare-fun tp!2406203 () Bool)

(assert (=> b!8036218 (= e!4733725 (and tp!2406202 tp!2406203))))

(declare-fun b!8036217 () Bool)

(assert (=> b!8036217 (= e!4733725 tp_is_empty!54485)))

(declare-fun b!8036219 () Bool)

(declare-fun tp!2406200 () Bool)

(assert (=> b!8036219 (= e!4733725 tp!2406200)))

(declare-fun b!8036220 () Bool)

(declare-fun tp!2406199 () Bool)

(declare-fun tp!2406201 () Bool)

(assert (=> b!8036220 (= e!4733725 (and tp!2406199 tp!2406201))))

(assert (=> b!8036066 (= tp!2406150 e!4733725)))

(assert (= (and b!8036066 ((_ is ElementMatch!21745) (reg!22074 (reg!22074 r!13107)))) b!8036217))

(assert (= (and b!8036066 ((_ is Concat!30748) (reg!22074 (reg!22074 r!13107)))) b!8036218))

(assert (= (and b!8036066 ((_ is Star!21745) (reg!22074 (reg!22074 r!13107)))) b!8036219))

(assert (= (and b!8036066 ((_ is Union!21745) (reg!22074 (reg!22074 r!13107)))) b!8036220))

(declare-fun b!8036222 () Bool)

(declare-fun e!4733726 () Bool)

(declare-fun tp!2406207 () Bool)

(declare-fun tp!2406208 () Bool)

(assert (=> b!8036222 (= e!4733726 (and tp!2406207 tp!2406208))))

(declare-fun b!8036221 () Bool)

(assert (=> b!8036221 (= e!4733726 tp_is_empty!54485)))

(declare-fun b!8036223 () Bool)

(declare-fun tp!2406205 () Bool)

(assert (=> b!8036223 (= e!4733726 tp!2406205)))

(declare-fun b!8036224 () Bool)

(declare-fun tp!2406204 () Bool)

(declare-fun tp!2406206 () Bool)

(assert (=> b!8036224 (= e!4733726 (and tp!2406204 tp!2406206))))

(assert (=> b!8036041 (= tp!2406122 e!4733726)))

(assert (= (and b!8036041 ((_ is ElementMatch!21745) (regOne!44002 (regTwo!44003 r!13107)))) b!8036221))

(assert (= (and b!8036041 ((_ is Concat!30748) (regOne!44002 (regTwo!44003 r!13107)))) b!8036222))

(assert (= (and b!8036041 ((_ is Star!21745) (regOne!44002 (regTwo!44003 r!13107)))) b!8036223))

(assert (= (and b!8036041 ((_ is Union!21745) (regOne!44002 (regTwo!44003 r!13107)))) b!8036224))

(declare-fun b!8036226 () Bool)

(declare-fun e!4733727 () Bool)

(declare-fun tp!2406212 () Bool)

(declare-fun tp!2406213 () Bool)

(assert (=> b!8036226 (= e!4733727 (and tp!2406212 tp!2406213))))

(declare-fun b!8036225 () Bool)

(assert (=> b!8036225 (= e!4733727 tp_is_empty!54485)))

(declare-fun b!8036227 () Bool)

(declare-fun tp!2406210 () Bool)

(assert (=> b!8036227 (= e!4733727 tp!2406210)))

(declare-fun b!8036228 () Bool)

(declare-fun tp!2406209 () Bool)

(declare-fun tp!2406211 () Bool)

(assert (=> b!8036228 (= e!4733727 (and tp!2406209 tp!2406211))))

(assert (=> b!8036041 (= tp!2406123 e!4733727)))

(assert (= (and b!8036041 ((_ is ElementMatch!21745) (regTwo!44002 (regTwo!44003 r!13107)))) b!8036225))

(assert (= (and b!8036041 ((_ is Concat!30748) (regTwo!44002 (regTwo!44003 r!13107)))) b!8036226))

(assert (= (and b!8036041 ((_ is Star!21745) (regTwo!44002 (regTwo!44003 r!13107)))) b!8036227))

(assert (= (and b!8036041 ((_ is Union!21745) (regTwo!44002 (regTwo!44003 r!13107)))) b!8036228))

(declare-fun b!8036230 () Bool)

(declare-fun e!4733728 () Bool)

(declare-fun tp!2406217 () Bool)

(declare-fun tp!2406218 () Bool)

(assert (=> b!8036230 (= e!4733728 (and tp!2406217 tp!2406218))))

(declare-fun b!8036229 () Bool)

(assert (=> b!8036229 (= e!4733728 tp_is_empty!54485)))

(declare-fun b!8036231 () Bool)

(declare-fun tp!2406215 () Bool)

(assert (=> b!8036231 (= e!4733728 tp!2406215)))

(declare-fun b!8036232 () Bool)

(declare-fun tp!2406214 () Bool)

(declare-fun tp!2406216 () Bool)

(assert (=> b!8036232 (= e!4733728 (and tp!2406214 tp!2406216))))

(assert (=> b!8036042 (= tp!2406120 e!4733728)))

(assert (= (and b!8036042 ((_ is ElementMatch!21745) (reg!22074 (regTwo!44003 r!13107)))) b!8036229))

(assert (= (and b!8036042 ((_ is Concat!30748) (reg!22074 (regTwo!44003 r!13107)))) b!8036230))

(assert (= (and b!8036042 ((_ is Star!21745) (reg!22074 (regTwo!44003 r!13107)))) b!8036231))

(assert (= (and b!8036042 ((_ is Union!21745) (reg!22074 (regTwo!44003 r!13107)))) b!8036232))

(declare-fun b!8036234 () Bool)

(declare-fun e!4733729 () Bool)

(declare-fun tp!2406222 () Bool)

(declare-fun tp!2406223 () Bool)

(assert (=> b!8036234 (= e!4733729 (and tp!2406222 tp!2406223))))

(declare-fun b!8036233 () Bool)

(assert (=> b!8036233 (= e!4733729 tp_is_empty!54485)))

(declare-fun b!8036235 () Bool)

(declare-fun tp!2406220 () Bool)

(assert (=> b!8036235 (= e!4733729 tp!2406220)))

(declare-fun b!8036236 () Bool)

(declare-fun tp!2406219 () Bool)

(declare-fun tp!2406221 () Bool)

(assert (=> b!8036236 (= e!4733729 (and tp!2406219 tp!2406221))))

(assert (=> b!8036051 (= tp!2406129 e!4733729)))

(assert (= (and b!8036051 ((_ is ElementMatch!21745) (regOne!44003 (regOne!44002 r!13107)))) b!8036233))

(assert (= (and b!8036051 ((_ is Concat!30748) (regOne!44003 (regOne!44002 r!13107)))) b!8036234))

(assert (= (and b!8036051 ((_ is Star!21745) (regOne!44003 (regOne!44002 r!13107)))) b!8036235))

(assert (= (and b!8036051 ((_ is Union!21745) (regOne!44003 (regOne!44002 r!13107)))) b!8036236))

(declare-fun b!8036238 () Bool)

(declare-fun e!4733730 () Bool)

(declare-fun tp!2406227 () Bool)

(declare-fun tp!2406228 () Bool)

(assert (=> b!8036238 (= e!4733730 (and tp!2406227 tp!2406228))))

(declare-fun b!8036237 () Bool)

(assert (=> b!8036237 (= e!4733730 tp_is_empty!54485)))

(declare-fun b!8036239 () Bool)

(declare-fun tp!2406225 () Bool)

(assert (=> b!8036239 (= e!4733730 tp!2406225)))

(declare-fun b!8036240 () Bool)

(declare-fun tp!2406224 () Bool)

(declare-fun tp!2406226 () Bool)

(assert (=> b!8036240 (= e!4733730 (and tp!2406224 tp!2406226))))

(assert (=> b!8036051 (= tp!2406131 e!4733730)))

(assert (= (and b!8036051 ((_ is ElementMatch!21745) (regTwo!44003 (regOne!44002 r!13107)))) b!8036237))

(assert (= (and b!8036051 ((_ is Concat!30748) (regTwo!44003 (regOne!44002 r!13107)))) b!8036238))

(assert (= (and b!8036051 ((_ is Star!21745) (regTwo!44003 (regOne!44002 r!13107)))) b!8036239))

(assert (= (and b!8036051 ((_ is Union!21745) (regTwo!44003 (regOne!44002 r!13107)))) b!8036240))

(declare-fun b!8036249 () Bool)

(declare-fun e!4733737 () Bool)

(declare-fun tp!2406232 () Bool)

(declare-fun tp!2406233 () Bool)

(assert (=> b!8036249 (= e!4733737 (and tp!2406232 tp!2406233))))

(declare-fun b!8036248 () Bool)

(assert (=> b!8036248 (= e!4733737 tp_is_empty!54485)))

(declare-fun b!8036250 () Bool)

(declare-fun tp!2406230 () Bool)

(assert (=> b!8036250 (= e!4733737 tp!2406230)))

(declare-fun b!8036251 () Bool)

(declare-fun tp!2406229 () Bool)

(declare-fun tp!2406231 () Bool)

(assert (=> b!8036251 (= e!4733737 (and tp!2406229 tp!2406231))))

(assert (=> b!8036037 (= tp!2406117 e!4733737)))

(assert (= (and b!8036037 ((_ is ElementMatch!21745) (regOne!44002 (regOne!44003 r!13107)))) b!8036248))

(assert (= (and b!8036037 ((_ is Concat!30748) (regOne!44002 (regOne!44003 r!13107)))) b!8036249))

(assert (= (and b!8036037 ((_ is Star!21745) (regOne!44002 (regOne!44003 r!13107)))) b!8036250))

(assert (= (and b!8036037 ((_ is Union!21745) (regOne!44002 (regOne!44003 r!13107)))) b!8036251))

(declare-fun b!8036253 () Bool)

(declare-fun e!4733738 () Bool)

(declare-fun tp!2406237 () Bool)

(declare-fun tp!2406238 () Bool)

(assert (=> b!8036253 (= e!4733738 (and tp!2406237 tp!2406238))))

(declare-fun b!8036252 () Bool)

(assert (=> b!8036252 (= e!4733738 tp_is_empty!54485)))

(declare-fun b!8036254 () Bool)

(declare-fun tp!2406235 () Bool)

(assert (=> b!8036254 (= e!4733738 tp!2406235)))

(declare-fun b!8036255 () Bool)

(declare-fun tp!2406234 () Bool)

(declare-fun tp!2406236 () Bool)

(assert (=> b!8036255 (= e!4733738 (and tp!2406234 tp!2406236))))

(assert (=> b!8036037 (= tp!2406118 e!4733738)))

(assert (= (and b!8036037 ((_ is ElementMatch!21745) (regTwo!44002 (regOne!44003 r!13107)))) b!8036252))

(assert (= (and b!8036037 ((_ is Concat!30748) (regTwo!44002 (regOne!44003 r!13107)))) b!8036253))

(assert (= (and b!8036037 ((_ is Star!21745) (regTwo!44002 (regOne!44003 r!13107)))) b!8036254))

(assert (= (and b!8036037 ((_ is Union!21745) (regTwo!44002 (regOne!44003 r!13107)))) b!8036255))

(declare-fun b!8036257 () Bool)

(declare-fun e!4733739 () Bool)

(declare-fun tp!2406242 () Bool)

(declare-fun tp!2406243 () Bool)

(assert (=> b!8036257 (= e!4733739 (and tp!2406242 tp!2406243))))

(declare-fun b!8036256 () Bool)

(assert (=> b!8036256 (= e!4733739 tp_is_empty!54485)))

(declare-fun b!8036258 () Bool)

(declare-fun tp!2406240 () Bool)

(assert (=> b!8036258 (= e!4733739 tp!2406240)))

(declare-fun b!8036259 () Bool)

(declare-fun tp!2406239 () Bool)

(declare-fun tp!2406241 () Bool)

(assert (=> b!8036259 (= e!4733739 (and tp!2406239 tp!2406241))))

(assert (=> b!8036049 (= tp!2406132 e!4733739)))

(assert (= (and b!8036049 ((_ is ElementMatch!21745) (regOne!44002 (regOne!44002 r!13107)))) b!8036256))

(assert (= (and b!8036049 ((_ is Concat!30748) (regOne!44002 (regOne!44002 r!13107)))) b!8036257))

(assert (= (and b!8036049 ((_ is Star!21745) (regOne!44002 (regOne!44002 r!13107)))) b!8036258))

(assert (= (and b!8036049 ((_ is Union!21745) (regOne!44002 (regOne!44002 r!13107)))) b!8036259))

(declare-fun b!8036261 () Bool)

(declare-fun e!4733740 () Bool)

(declare-fun tp!2406247 () Bool)

(declare-fun tp!2406248 () Bool)

(assert (=> b!8036261 (= e!4733740 (and tp!2406247 tp!2406248))))

(declare-fun b!8036260 () Bool)

(assert (=> b!8036260 (= e!4733740 tp_is_empty!54485)))

(declare-fun b!8036262 () Bool)

(declare-fun tp!2406245 () Bool)

(assert (=> b!8036262 (= e!4733740 tp!2406245)))

(declare-fun b!8036263 () Bool)

(declare-fun tp!2406244 () Bool)

(declare-fun tp!2406246 () Bool)

(assert (=> b!8036263 (= e!4733740 (and tp!2406244 tp!2406246))))

(assert (=> b!8036049 (= tp!2406133 e!4733740)))

(assert (= (and b!8036049 ((_ is ElementMatch!21745) (regTwo!44002 (regOne!44002 r!13107)))) b!8036260))

(assert (= (and b!8036049 ((_ is Concat!30748) (regTwo!44002 (regOne!44002 r!13107)))) b!8036261))

(assert (= (and b!8036049 ((_ is Star!21745) (regTwo!44002 (regOne!44002 r!13107)))) b!8036262))

(assert (= (and b!8036049 ((_ is Union!21745) (regTwo!44002 (regOne!44002 r!13107)))) b!8036263))

(declare-fun b!8036275 () Bool)

(declare-fun e!4733746 () Bool)

(declare-fun tp!2406252 () Bool)

(declare-fun tp!2406253 () Bool)

(assert (=> b!8036275 (= e!4733746 (and tp!2406252 tp!2406253))))

(declare-fun b!8036274 () Bool)

(assert (=> b!8036274 (= e!4733746 tp_is_empty!54485)))

(declare-fun b!8036276 () Bool)

(declare-fun tp!2406250 () Bool)

(assert (=> b!8036276 (= e!4733746 tp!2406250)))

(declare-fun b!8036277 () Bool)

(declare-fun tp!2406249 () Bool)

(declare-fun tp!2406251 () Bool)

(assert (=> b!8036277 (= e!4733746 (and tp!2406249 tp!2406251))))

(assert (=> b!8036050 (= tp!2406130 e!4733746)))

(assert (= (and b!8036050 ((_ is ElementMatch!21745) (reg!22074 (regOne!44002 r!13107)))) b!8036274))

(assert (= (and b!8036050 ((_ is Concat!30748) (reg!22074 (regOne!44002 r!13107)))) b!8036275))

(assert (= (and b!8036050 ((_ is Star!21745) (reg!22074 (regOne!44002 r!13107)))) b!8036276))

(assert (= (and b!8036050 ((_ is Union!21745) (reg!22074 (regOne!44002 r!13107)))) b!8036277))

(declare-fun b!8036279 () Bool)

(declare-fun e!4733747 () Bool)

(declare-fun tp!2406257 () Bool)

(declare-fun tp!2406258 () Bool)

(assert (=> b!8036279 (= e!4733747 (and tp!2406257 tp!2406258))))

(declare-fun b!8036278 () Bool)

(assert (=> b!8036278 (= e!4733747 tp_is_empty!54485)))

(declare-fun b!8036280 () Bool)

(declare-fun tp!2406255 () Bool)

(assert (=> b!8036280 (= e!4733747 tp!2406255)))

(declare-fun b!8036281 () Bool)

(declare-fun tp!2406254 () Bool)

(declare-fun tp!2406256 () Bool)

(assert (=> b!8036281 (= e!4733747 (and tp!2406254 tp!2406256))))

(assert (=> b!8036059 (= tp!2406139 e!4733747)))

(assert (= (and b!8036059 ((_ is ElementMatch!21745) (regOne!44003 (regTwo!44002 r!13107)))) b!8036278))

(assert (= (and b!8036059 ((_ is Concat!30748) (regOne!44003 (regTwo!44002 r!13107)))) b!8036279))

(assert (= (and b!8036059 ((_ is Star!21745) (regOne!44003 (regTwo!44002 r!13107)))) b!8036280))

(assert (= (and b!8036059 ((_ is Union!21745) (regOne!44003 (regTwo!44002 r!13107)))) b!8036281))

(declare-fun b!8036283 () Bool)

(declare-fun e!4733748 () Bool)

(declare-fun tp!2406262 () Bool)

(declare-fun tp!2406263 () Bool)

(assert (=> b!8036283 (= e!4733748 (and tp!2406262 tp!2406263))))

(declare-fun b!8036282 () Bool)

(assert (=> b!8036282 (= e!4733748 tp_is_empty!54485)))

(declare-fun b!8036284 () Bool)

(declare-fun tp!2406260 () Bool)

(assert (=> b!8036284 (= e!4733748 tp!2406260)))

(declare-fun b!8036285 () Bool)

(declare-fun tp!2406259 () Bool)

(declare-fun tp!2406261 () Bool)

(assert (=> b!8036285 (= e!4733748 (and tp!2406259 tp!2406261))))

(assert (=> b!8036059 (= tp!2406141 e!4733748)))

(assert (= (and b!8036059 ((_ is ElementMatch!21745) (regTwo!44003 (regTwo!44002 r!13107)))) b!8036282))

(assert (= (and b!8036059 ((_ is Concat!30748) (regTwo!44003 (regTwo!44002 r!13107)))) b!8036283))

(assert (= (and b!8036059 ((_ is Star!21745) (regTwo!44003 (regTwo!44002 r!13107)))) b!8036284))

(assert (= (and b!8036059 ((_ is Union!21745) (regTwo!44003 (regTwo!44002 r!13107)))) b!8036285))

(declare-fun b!8036287 () Bool)

(declare-fun e!4733749 () Bool)

(declare-fun tp!2406267 () Bool)

(declare-fun tp!2406268 () Bool)

(assert (=> b!8036287 (= e!4733749 (and tp!2406267 tp!2406268))))

(declare-fun b!8036286 () Bool)

(assert (=> b!8036286 (= e!4733749 tp_is_empty!54485)))

(declare-fun b!8036288 () Bool)

(declare-fun tp!2406265 () Bool)

(assert (=> b!8036288 (= e!4733749 tp!2406265)))

(declare-fun b!8036289 () Bool)

(declare-fun tp!2406264 () Bool)

(declare-fun tp!2406266 () Bool)

(assert (=> b!8036289 (= e!4733749 (and tp!2406264 tp!2406266))))

(assert (=> b!8036039 (= tp!2406114 e!4733749)))

(assert (= (and b!8036039 ((_ is ElementMatch!21745) (regOne!44003 (regOne!44003 r!13107)))) b!8036286))

(assert (= (and b!8036039 ((_ is Concat!30748) (regOne!44003 (regOne!44003 r!13107)))) b!8036287))

(assert (= (and b!8036039 ((_ is Star!21745) (regOne!44003 (regOne!44003 r!13107)))) b!8036288))

(assert (= (and b!8036039 ((_ is Union!21745) (regOne!44003 (regOne!44003 r!13107)))) b!8036289))

(declare-fun b!8036300 () Bool)

(declare-fun e!4733757 () Bool)

(declare-fun tp!2406272 () Bool)

(declare-fun tp!2406273 () Bool)

(assert (=> b!8036300 (= e!4733757 (and tp!2406272 tp!2406273))))

(declare-fun b!8036299 () Bool)

(assert (=> b!8036299 (= e!4733757 tp_is_empty!54485)))

(declare-fun b!8036301 () Bool)

(declare-fun tp!2406270 () Bool)

(assert (=> b!8036301 (= e!4733757 tp!2406270)))

(declare-fun b!8036302 () Bool)

(declare-fun tp!2406269 () Bool)

(declare-fun tp!2406271 () Bool)

(assert (=> b!8036302 (= e!4733757 (and tp!2406269 tp!2406271))))

(assert (=> b!8036039 (= tp!2406116 e!4733757)))

(assert (= (and b!8036039 ((_ is ElementMatch!21745) (regTwo!44003 (regOne!44003 r!13107)))) b!8036299))

(assert (= (and b!8036039 ((_ is Concat!30748) (regTwo!44003 (regOne!44003 r!13107)))) b!8036300))

(assert (= (and b!8036039 ((_ is Star!21745) (regTwo!44003 (regOne!44003 r!13107)))) b!8036301))

(assert (= (and b!8036039 ((_ is Union!21745) (regTwo!44003 (regOne!44003 r!13107)))) b!8036302))

(declare-fun b!8036304 () Bool)

(declare-fun e!4733758 () Bool)

(declare-fun tp!2406277 () Bool)

(declare-fun tp!2406278 () Bool)

(assert (=> b!8036304 (= e!4733758 (and tp!2406277 tp!2406278))))

(declare-fun b!8036303 () Bool)

(assert (=> b!8036303 (= e!4733758 tp_is_empty!54485)))

(declare-fun b!8036305 () Bool)

(declare-fun tp!2406275 () Bool)

(assert (=> b!8036305 (= e!4733758 tp!2406275)))

(declare-fun b!8036306 () Bool)

(declare-fun tp!2406274 () Bool)

(declare-fun tp!2406276 () Bool)

(assert (=> b!8036306 (= e!4733758 (and tp!2406274 tp!2406276))))

(assert (=> b!8036038 (= tp!2406115 e!4733758)))

(assert (= (and b!8036038 ((_ is ElementMatch!21745) (reg!22074 (regOne!44003 r!13107)))) b!8036303))

(assert (= (and b!8036038 ((_ is Concat!30748) (reg!22074 (regOne!44003 r!13107)))) b!8036304))

(assert (= (and b!8036038 ((_ is Star!21745) (reg!22074 (regOne!44003 r!13107)))) b!8036305))

(assert (= (and b!8036038 ((_ is Union!21745) (reg!22074 (regOne!44003 r!13107)))) b!8036306))

(declare-fun b!8036308 () Bool)

(declare-fun e!4733759 () Bool)

(declare-fun tp!2406282 () Bool)

(declare-fun tp!2406283 () Bool)

(assert (=> b!8036308 (= e!4733759 (and tp!2406282 tp!2406283))))

(declare-fun b!8036307 () Bool)

(assert (=> b!8036307 (= e!4733759 tp_is_empty!54485)))

(declare-fun b!8036309 () Bool)

(declare-fun tp!2406280 () Bool)

(assert (=> b!8036309 (= e!4733759 tp!2406280)))

(declare-fun b!8036310 () Bool)

(declare-fun tp!2406279 () Bool)

(declare-fun tp!2406281 () Bool)

(assert (=> b!8036310 (= e!4733759 (and tp!2406279 tp!2406281))))

(assert (=> b!8036043 (= tp!2406119 e!4733759)))

(assert (= (and b!8036043 ((_ is ElementMatch!21745) (regOne!44003 (regTwo!44003 r!13107)))) b!8036307))

(assert (= (and b!8036043 ((_ is Concat!30748) (regOne!44003 (regTwo!44003 r!13107)))) b!8036308))

(assert (= (and b!8036043 ((_ is Star!21745) (regOne!44003 (regTwo!44003 r!13107)))) b!8036309))

(assert (= (and b!8036043 ((_ is Union!21745) (regOne!44003 (regTwo!44003 r!13107)))) b!8036310))

(declare-fun b!8036312 () Bool)

(declare-fun e!4733760 () Bool)

(declare-fun tp!2406287 () Bool)

(declare-fun tp!2406288 () Bool)

(assert (=> b!8036312 (= e!4733760 (and tp!2406287 tp!2406288))))

(declare-fun b!8036311 () Bool)

(assert (=> b!8036311 (= e!4733760 tp_is_empty!54485)))

(declare-fun b!8036313 () Bool)

(declare-fun tp!2406285 () Bool)

(assert (=> b!8036313 (= e!4733760 tp!2406285)))

(declare-fun b!8036314 () Bool)

(declare-fun tp!2406284 () Bool)

(declare-fun tp!2406286 () Bool)

(assert (=> b!8036314 (= e!4733760 (and tp!2406284 tp!2406286))))

(assert (=> b!8036043 (= tp!2406121 e!4733760)))

(assert (= (and b!8036043 ((_ is ElementMatch!21745) (regTwo!44003 (regTwo!44003 r!13107)))) b!8036311))

(assert (= (and b!8036043 ((_ is Concat!30748) (regTwo!44003 (regTwo!44003 r!13107)))) b!8036312))

(assert (= (and b!8036043 ((_ is Star!21745) (regTwo!44003 (regTwo!44003 r!13107)))) b!8036313))

(assert (= (and b!8036043 ((_ is Union!21745) (regTwo!44003 (regTwo!44003 r!13107)))) b!8036314))

(check-sat (not b!8036216) (not b!8036203) (not b!8036211) (not b!8036302) (not b!8036255) (not b!8036222) (not b!8036309) (not b!8036254) (not b!8036285) (not b!8036192) (not b!8036280) (not b!8036240) (not b!8036239) (not b!8036308) (not b!8036194) (not b!8036235) (not b!8036259) (not bm!745752) (not b!8036160) (not bm!745754) (not b!8036236) (not b!8036250) (not b!8036190) (not bm!745758) (not bm!745772) (not b!8036276) (not b!8036300) (not b!8036207) (not b!8036215) (not b!8036228) (not b!8036277) (not b!8036306) (not b!8036288) (not b!8036204) (not b!8036281) (not bm!745773) (not b!8036227) (not b!8036289) (not b!8036261) (not b!8036090) (not b!8036231) (not b!8036314) (not b!8036230) (not b!8036223) (not d!2395023) (not b!8036251) (not b!8036195) (not b!8036196) (not bm!745775) (not b!8036313) (not bm!745751) (not b!8036284) (not b!8036208) (not b!8036232) (not b!8036238) (not b!8036275) (not b!8036253) (not b!8036191) (not bm!745767) (not b!8036198) (not bm!745757) (not bm!745779) (not b!8036279) (not b!8036258) (not b!8036218) (not b!8036210) (not b!8036262) (not b!8036200) tp_is_empty!54485 (not b!8036312) (not b!8036304) (not b!8036257) (not b!8036305) (not b!8036234) (not b!8036249) (not b!8036202) (not b!8036212) (not b!8036199) (not b!8036219) (not b!8036287) (not b!8036224) (not b!8036310) (not b!8036226) (not b!8036206) (not bm!745766) (not bm!745774) (not b!8036283) (not bm!745753) (not b!8036263) (not b!8036301) (not b!8036214) (not b!8036220) (not bm!745778))
(check-sat)
