; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243380 () Bool)

(assert start!243380)

(declare-fun b!2490892 () Bool)

(declare-fun e!1581235 () Bool)

(declare-fun tp!797578 () Bool)

(declare-fun tp!797577 () Bool)

(assert (=> b!2490892 (= e!1581235 (and tp!797578 tp!797577))))

(declare-fun b!2490893 () Bool)

(declare-fun tp!797574 () Bool)

(declare-fun tp!797573 () Bool)

(assert (=> b!2490893 (= e!1581235 (and tp!797574 tp!797573))))

(declare-fun b!2490894 () Bool)

(declare-fun tp!797575 () Bool)

(assert (=> b!2490894 (= e!1581235 tp!797575)))

(declare-fun b!2490895 () Bool)

(declare-fun e!1581233 () Bool)

(declare-datatypes ((C!14812 0))(
  ( (C!14813 (val!9058 Int)) )
))
(declare-datatypes ((List!29392 0))(
  ( (Nil!29292) (Cons!29292 (h!34712 C!14812) (t!211091 List!29392)) )
))
(declare-fun tl!4068 () List!29392)

(assert (=> b!2490895 (= e!1581233 (= tl!4068 Nil!29292))))

(declare-datatypes ((Regex!7327 0))(
  ( (ElementMatch!7327 (c!395953 C!14812)) (Concat!12023 (regOne!15166 Regex!7327) (regTwo!15166 Regex!7327)) (EmptyExpr!7327) (Star!7327 (reg!7656 Regex!7327)) (EmptyLang!7327) (Union!7327 (regOne!15167 Regex!7327) (regTwo!15167 Regex!7327)) )
))
(declare-fun lt!893928 () Regex!7327)

(declare-fun lt!893927 () Regex!7327)

(declare-fun derivativeStep!1896 (Regex!7327 C!14812) Regex!7327)

(declare-fun head!5671 (List!29392) C!14812)

(assert (=> b!2490895 (= lt!893928 (derivativeStep!1896 lt!893927 (head!5671 tl!4068)))))

(declare-fun b!2490897 () Bool)

(declare-fun res!1054029 () Bool)

(assert (=> b!2490897 (=> (not res!1054029) (not e!1581233))))

(declare-fun r!27340 () Regex!7327)

(declare-fun c!14016 () C!14812)

(get-info :version)

(assert (=> b!2490897 (= res!1054029 (and (not ((_ is EmptyExpr!7327) r!27340)) (not ((_ is EmptyLang!7327) r!27340)) ((_ is ElementMatch!7327) r!27340) (= c!14016 (c!395953 r!27340)) (= lt!893927 EmptyExpr!7327)))))

(declare-fun b!2490898 () Bool)

(declare-fun tp_is_empty!12509 () Bool)

(assert (=> b!2490898 (= e!1581235 tp_is_empty!12509)))

(declare-fun b!2490896 () Bool)

(declare-fun e!1581234 () Bool)

(declare-fun tp!797576 () Bool)

(assert (=> b!2490896 (= e!1581234 (and tp_is_empty!12509 tp!797576))))

(declare-fun res!1054030 () Bool)

(declare-fun e!1581236 () Bool)

(assert (=> start!243380 (=> (not res!1054030) (not e!1581236))))

(declare-fun validRegex!2953 (Regex!7327) Bool)

(assert (=> start!243380 (= res!1054030 (validRegex!2953 r!27340))))

(assert (=> start!243380 e!1581236))

(assert (=> start!243380 e!1581235))

(assert (=> start!243380 tp_is_empty!12509))

(assert (=> start!243380 e!1581234))

(declare-fun b!2490899 () Bool)

(declare-fun res!1054028 () Bool)

(assert (=> b!2490899 (=> (not res!1054028) (not e!1581233))))

(declare-fun isEmpty!16795 (List!29392) Bool)

(assert (=> b!2490899 (= res!1054028 (not (isEmpty!16795 tl!4068)))))

(declare-fun b!2490900 () Bool)

(assert (=> b!2490900 (= e!1581236 e!1581233)))

(declare-fun res!1054027 () Bool)

(assert (=> b!2490900 (=> (not res!1054027) (not e!1581233))))

(declare-fun nullable!2244 (Regex!7327) Bool)

(declare-fun derivative!22 (Regex!7327 List!29392) Regex!7327)

(assert (=> b!2490900 (= res!1054027 (nullable!2244 (derivative!22 lt!893927 tl!4068)))))

(assert (=> b!2490900 (= lt!893927 (derivativeStep!1896 r!27340 c!14016))))

(assert (= (and start!243380 res!1054030) b!2490900))

(assert (= (and b!2490900 res!1054027) b!2490897))

(assert (= (and b!2490897 res!1054029) b!2490899))

(assert (= (and b!2490899 res!1054028) b!2490895))

(assert (= (and start!243380 ((_ is ElementMatch!7327) r!27340)) b!2490898))

(assert (= (and start!243380 ((_ is Concat!12023) r!27340)) b!2490893))

(assert (= (and start!243380 ((_ is Star!7327) r!27340)) b!2490894))

(assert (= (and start!243380 ((_ is Union!7327) r!27340)) b!2490892))

(assert (= (and start!243380 ((_ is Cons!29292) tl!4068)) b!2490896))

(declare-fun m!2857931 () Bool)

(assert (=> b!2490895 m!2857931))

(assert (=> b!2490895 m!2857931))

(declare-fun m!2857933 () Bool)

(assert (=> b!2490895 m!2857933))

(declare-fun m!2857935 () Bool)

(assert (=> start!243380 m!2857935))

(declare-fun m!2857937 () Bool)

(assert (=> b!2490899 m!2857937))

(declare-fun m!2857939 () Bool)

(assert (=> b!2490900 m!2857939))

(assert (=> b!2490900 m!2857939))

(declare-fun m!2857941 () Bool)

(assert (=> b!2490900 m!2857941))

(declare-fun m!2857943 () Bool)

(assert (=> b!2490900 m!2857943))

(check-sat (not b!2490900) (not start!243380) (not b!2490893) (not b!2490896) tp_is_empty!12509 (not b!2490895) (not b!2490892) (not b!2490894) (not b!2490899))
(check-sat)
(get-model)

(declare-fun d!714401 () Bool)

(declare-fun nullableFct!550 (Regex!7327) Bool)

(assert (=> d!714401 (= (nullable!2244 (derivative!22 lt!893927 tl!4068)) (nullableFct!550 (derivative!22 lt!893927 tl!4068)))))

(declare-fun bs!468358 () Bool)

(assert (= bs!468358 d!714401))

(assert (=> bs!468358 m!2857939))

(declare-fun m!2857945 () Bool)

(assert (=> bs!468358 m!2857945))

(assert (=> b!2490900 d!714401))

(declare-fun d!714405 () Bool)

(declare-fun lt!893931 () Regex!7327)

(assert (=> d!714405 (validRegex!2953 lt!893931)))

(declare-fun e!1581253 () Regex!7327)

(assert (=> d!714405 (= lt!893931 e!1581253)))

(declare-fun c!395960 () Bool)

(assert (=> d!714405 (= c!395960 ((_ is Cons!29292) tl!4068))))

(assert (=> d!714405 (validRegex!2953 lt!893927)))

(assert (=> d!714405 (= (derivative!22 lt!893927 tl!4068) lt!893931)))

(declare-fun b!2490923 () Bool)

(assert (=> b!2490923 (= e!1581253 (derivative!22 (derivativeStep!1896 lt!893927 (h!34712 tl!4068)) (t!211091 tl!4068)))))

(declare-fun b!2490924 () Bool)

(assert (=> b!2490924 (= e!1581253 lt!893927)))

(assert (= (and d!714405 c!395960) b!2490923))

(assert (= (and d!714405 (not c!395960)) b!2490924))

(declare-fun m!2857947 () Bool)

(assert (=> d!714405 m!2857947))

(declare-fun m!2857949 () Bool)

(assert (=> d!714405 m!2857949))

(declare-fun m!2857951 () Bool)

(assert (=> b!2490923 m!2857951))

(assert (=> b!2490923 m!2857951))

(declare-fun m!2857953 () Bool)

(assert (=> b!2490923 m!2857953))

(assert (=> b!2490900 d!714405))

(declare-fun b!2490960 () Bool)

(declare-fun e!1581276 () Regex!7327)

(assert (=> b!2490960 (= e!1581276 (ite (= c!14016 (c!395953 r!27340)) EmptyExpr!7327 EmptyLang!7327))))

(declare-fun e!1581275 () Regex!7327)

(declare-fun call!153115 () Regex!7327)

(declare-fun b!2490961 () Bool)

(declare-fun call!153114 () Regex!7327)

(assert (=> b!2490961 (= e!1581275 (Union!7327 (Concat!12023 call!153115 (regTwo!15166 r!27340)) call!153114))))

(declare-fun bm!153108 () Bool)

(declare-fun call!153116 () Regex!7327)

(declare-fun call!153113 () Regex!7327)

(assert (=> bm!153108 (= call!153116 call!153113)))

(declare-fun bm!153109 () Bool)

(declare-fun c!395977 () Bool)

(assert (=> bm!153109 (= call!153114 (derivativeStep!1896 (ite c!395977 (regOne!15167 r!27340) (regTwo!15166 r!27340)) c!14016))))

(declare-fun b!2490963 () Bool)

(assert (=> b!2490963 (= c!395977 ((_ is Union!7327) r!27340))))

(declare-fun e!1581277 () Regex!7327)

(assert (=> b!2490963 (= e!1581276 e!1581277)))

(declare-fun b!2490964 () Bool)

(declare-fun e!1581274 () Regex!7327)

(assert (=> b!2490964 (= e!1581277 e!1581274)))

(declare-fun c!395978 () Bool)

(assert (=> b!2490964 (= c!395978 ((_ is Star!7327) r!27340))))

(declare-fun b!2490962 () Bool)

(assert (=> b!2490962 (= e!1581274 (Concat!12023 call!153116 r!27340))))

(declare-fun d!714407 () Bool)

(declare-fun lt!893937 () Regex!7327)

(assert (=> d!714407 (validRegex!2953 lt!893937)))

(declare-fun e!1581278 () Regex!7327)

(assert (=> d!714407 (= lt!893937 e!1581278)))

(declare-fun c!395980 () Bool)

(assert (=> d!714407 (= c!395980 (or ((_ is EmptyExpr!7327) r!27340) ((_ is EmptyLang!7327) r!27340)))))

(assert (=> d!714407 (validRegex!2953 r!27340)))

(assert (=> d!714407 (= (derivativeStep!1896 r!27340 c!14016) lt!893937)))

(declare-fun b!2490965 () Bool)

(declare-fun c!395976 () Bool)

(assert (=> b!2490965 (= c!395976 (nullable!2244 (regOne!15166 r!27340)))))

(assert (=> b!2490965 (= e!1581274 e!1581275)))

(declare-fun b!2490966 () Bool)

(assert (=> b!2490966 (= e!1581278 e!1581276)))

(declare-fun c!395979 () Bool)

(assert (=> b!2490966 (= c!395979 ((_ is ElementMatch!7327) r!27340))))

(declare-fun b!2490967 () Bool)

(assert (=> b!2490967 (= e!1581275 (Union!7327 (Concat!12023 call!153115 (regTwo!15166 r!27340)) EmptyLang!7327))))

(declare-fun b!2490968 () Bool)

(assert (=> b!2490968 (= e!1581278 EmptyLang!7327)))

(declare-fun bm!153110 () Bool)

(assert (=> bm!153110 (= call!153113 (derivativeStep!1896 (ite c!395977 (regTwo!15167 r!27340) (ite c!395978 (reg!7656 r!27340) (regOne!15166 r!27340))) c!14016))))

(declare-fun b!2490969 () Bool)

(assert (=> b!2490969 (= e!1581277 (Union!7327 call!153114 call!153113))))

(declare-fun bm!153111 () Bool)

(assert (=> bm!153111 (= call!153115 call!153116)))

(assert (= (and d!714407 c!395980) b!2490968))

(assert (= (and d!714407 (not c!395980)) b!2490966))

(assert (= (and b!2490966 c!395979) b!2490960))

(assert (= (and b!2490966 (not c!395979)) b!2490963))

(assert (= (and b!2490963 c!395977) b!2490969))

(assert (= (and b!2490963 (not c!395977)) b!2490964))

(assert (= (and b!2490964 c!395978) b!2490962))

(assert (= (and b!2490964 (not c!395978)) b!2490965))

(assert (= (and b!2490965 c!395976) b!2490961))

(assert (= (and b!2490965 (not c!395976)) b!2490967))

(assert (= (or b!2490961 b!2490967) bm!153111))

(assert (= (or b!2490962 bm!153111) bm!153108))

(assert (= (or b!2490969 bm!153108) bm!153110))

(assert (= (or b!2490969 b!2490961) bm!153109))

(declare-fun m!2857971 () Bool)

(assert (=> bm!153109 m!2857971))

(declare-fun m!2857973 () Bool)

(assert (=> d!714407 m!2857973))

(assert (=> d!714407 m!2857935))

(declare-fun m!2857975 () Bool)

(assert (=> b!2490965 m!2857975))

(declare-fun m!2857977 () Bool)

(assert (=> bm!153110 m!2857977))

(assert (=> b!2490900 d!714407))

(declare-fun b!2490990 () Bool)

(declare-fun e!1581291 () Regex!7327)

(assert (=> b!2490990 (= e!1581291 (ite (= (head!5671 tl!4068) (c!395953 lt!893927)) EmptyExpr!7327 EmptyLang!7327))))

(declare-fun call!153119 () Regex!7327)

(declare-fun call!153118 () Regex!7327)

(declare-fun b!2490991 () Bool)

(declare-fun e!1581290 () Regex!7327)

(assert (=> b!2490991 (= e!1581290 (Union!7327 (Concat!12023 call!153119 (regTwo!15166 lt!893927)) call!153118))))

(declare-fun bm!153112 () Bool)

(declare-fun call!153120 () Regex!7327)

(declare-fun call!153117 () Regex!7327)

(assert (=> bm!153112 (= call!153120 call!153117)))

(declare-fun bm!153113 () Bool)

(declare-fun c!395992 () Bool)

(assert (=> bm!153113 (= call!153118 (derivativeStep!1896 (ite c!395992 (regOne!15167 lt!893927) (regTwo!15166 lt!893927)) (head!5671 tl!4068)))))

(declare-fun b!2490993 () Bool)

(assert (=> b!2490993 (= c!395992 ((_ is Union!7327) lt!893927))))

(declare-fun e!1581292 () Regex!7327)

(assert (=> b!2490993 (= e!1581291 e!1581292)))

(declare-fun b!2490994 () Bool)

(declare-fun e!1581289 () Regex!7327)

(assert (=> b!2490994 (= e!1581292 e!1581289)))

(declare-fun c!395993 () Bool)

(assert (=> b!2490994 (= c!395993 ((_ is Star!7327) lt!893927))))

(declare-fun b!2490992 () Bool)

(assert (=> b!2490992 (= e!1581289 (Concat!12023 call!153120 lt!893927))))

(declare-fun d!714415 () Bool)

(declare-fun lt!893940 () Regex!7327)

(assert (=> d!714415 (validRegex!2953 lt!893940)))

(declare-fun e!1581293 () Regex!7327)

(assert (=> d!714415 (= lt!893940 e!1581293)))

(declare-fun c!395995 () Bool)

(assert (=> d!714415 (= c!395995 (or ((_ is EmptyExpr!7327) lt!893927) ((_ is EmptyLang!7327) lt!893927)))))

(assert (=> d!714415 (validRegex!2953 lt!893927)))

(assert (=> d!714415 (= (derivativeStep!1896 lt!893927 (head!5671 tl!4068)) lt!893940)))

(declare-fun b!2490995 () Bool)

(declare-fun c!395991 () Bool)

(assert (=> b!2490995 (= c!395991 (nullable!2244 (regOne!15166 lt!893927)))))

(assert (=> b!2490995 (= e!1581289 e!1581290)))

(declare-fun b!2490996 () Bool)

(assert (=> b!2490996 (= e!1581293 e!1581291)))

(declare-fun c!395994 () Bool)

(assert (=> b!2490996 (= c!395994 ((_ is ElementMatch!7327) lt!893927))))

(declare-fun b!2490997 () Bool)

(assert (=> b!2490997 (= e!1581290 (Union!7327 (Concat!12023 call!153119 (regTwo!15166 lt!893927)) EmptyLang!7327))))

(declare-fun b!2490998 () Bool)

(assert (=> b!2490998 (= e!1581293 EmptyLang!7327)))

(declare-fun bm!153114 () Bool)

(assert (=> bm!153114 (= call!153117 (derivativeStep!1896 (ite c!395992 (regTwo!15167 lt!893927) (ite c!395993 (reg!7656 lt!893927) (regOne!15166 lt!893927))) (head!5671 tl!4068)))))

(declare-fun b!2490999 () Bool)

(assert (=> b!2490999 (= e!1581292 (Union!7327 call!153118 call!153117))))

(declare-fun bm!153115 () Bool)

(assert (=> bm!153115 (= call!153119 call!153120)))

(assert (= (and d!714415 c!395995) b!2490998))

(assert (= (and d!714415 (not c!395995)) b!2490996))

(assert (= (and b!2490996 c!395994) b!2490990))

(assert (= (and b!2490996 (not c!395994)) b!2490993))

(assert (= (and b!2490993 c!395992) b!2490999))

(assert (= (and b!2490993 (not c!395992)) b!2490994))

(assert (= (and b!2490994 c!395993) b!2490992))

(assert (= (and b!2490994 (not c!395993)) b!2490995))

(assert (= (and b!2490995 c!395991) b!2490991))

(assert (= (and b!2490995 (not c!395991)) b!2490997))

(assert (= (or b!2490991 b!2490997) bm!153115))

(assert (= (or b!2490992 bm!153115) bm!153112))

(assert (= (or b!2490999 bm!153112) bm!153114))

(assert (= (or b!2490999 b!2490991) bm!153113))

(assert (=> bm!153113 m!2857931))

(declare-fun m!2857979 () Bool)

(assert (=> bm!153113 m!2857979))

(declare-fun m!2857981 () Bool)

(assert (=> d!714415 m!2857981))

(assert (=> d!714415 m!2857949))

(declare-fun m!2857983 () Bool)

(assert (=> b!2490995 m!2857983))

(assert (=> bm!153114 m!2857931))

(declare-fun m!2857985 () Bool)

(assert (=> bm!153114 m!2857985))

(assert (=> b!2490895 d!714415))

(declare-fun d!714417 () Bool)

(assert (=> d!714417 (= (head!5671 tl!4068) (h!34712 tl!4068))))

(assert (=> b!2490895 d!714417))

(declare-fun d!714419 () Bool)

(assert (=> d!714419 (= (isEmpty!16795 tl!4068) ((_ is Nil!29292) tl!4068))))

(assert (=> b!2490899 d!714419))

(declare-fun bm!153138 () Bool)

(declare-fun call!153144 () Bool)

(declare-fun c!396010 () Bool)

(declare-fun c!396011 () Bool)

(assert (=> bm!153138 (= call!153144 (validRegex!2953 (ite c!396010 (reg!7656 r!27340) (ite c!396011 (regTwo!15167 r!27340) (regOne!15166 r!27340)))))))

(declare-fun b!2491038 () Bool)

(declare-fun res!1054060 () Bool)

(declare-fun e!1581322 () Bool)

(assert (=> b!2491038 (=> res!1054060 e!1581322)))

(assert (=> b!2491038 (= res!1054060 (not ((_ is Concat!12023) r!27340)))))

(declare-fun e!1581319 () Bool)

(assert (=> b!2491038 (= e!1581319 e!1581322)))

(declare-fun b!2491039 () Bool)

(declare-fun e!1581318 () Bool)

(declare-fun e!1581320 () Bool)

(assert (=> b!2491039 (= e!1581318 e!1581320)))

(declare-fun res!1054059 () Bool)

(assert (=> b!2491039 (= res!1054059 (not (nullable!2244 (reg!7656 r!27340))))))

(assert (=> b!2491039 (=> (not res!1054059) (not e!1581320))))

(declare-fun b!2491040 () Bool)

(declare-fun e!1581321 () Bool)

(declare-fun call!153143 () Bool)

(assert (=> b!2491040 (= e!1581321 call!153143)))

(declare-fun b!2491041 () Bool)

(declare-fun e!1581324 () Bool)

(assert (=> b!2491041 (= e!1581322 e!1581324)))

(declare-fun res!1054058 () Bool)

(assert (=> b!2491041 (=> (not res!1054058) (not e!1581324))))

(assert (=> b!2491041 (= res!1054058 call!153143)))

(declare-fun b!2491042 () Bool)

(declare-fun e!1581323 () Bool)

(assert (=> b!2491042 (= e!1581323 e!1581318)))

(assert (=> b!2491042 (= c!396010 ((_ is Star!7327) r!27340))))

(declare-fun b!2491043 () Bool)

(assert (=> b!2491043 (= e!1581318 e!1581319)))

(assert (=> b!2491043 (= c!396011 ((_ is Union!7327) r!27340))))

(declare-fun bm!153140 () Bool)

(declare-fun call!153145 () Bool)

(assert (=> bm!153140 (= call!153145 (validRegex!2953 (ite c!396011 (regOne!15167 r!27340) (regTwo!15166 r!27340))))))

(declare-fun b!2491044 () Bool)

(assert (=> b!2491044 (= e!1581320 call!153144)))

(declare-fun bm!153139 () Bool)

(assert (=> bm!153139 (= call!153143 call!153144)))

(declare-fun d!714421 () Bool)

(declare-fun res!1054057 () Bool)

(assert (=> d!714421 (=> res!1054057 e!1581323)))

(assert (=> d!714421 (= res!1054057 ((_ is ElementMatch!7327) r!27340))))

(assert (=> d!714421 (= (validRegex!2953 r!27340) e!1581323)))

(declare-fun b!2491045 () Bool)

(declare-fun res!1054056 () Bool)

(assert (=> b!2491045 (=> (not res!1054056) (not e!1581321))))

(assert (=> b!2491045 (= res!1054056 call!153145)))

(assert (=> b!2491045 (= e!1581319 e!1581321)))

(declare-fun b!2491046 () Bool)

(assert (=> b!2491046 (= e!1581324 call!153145)))

(assert (= (and d!714421 (not res!1054057)) b!2491042))

(assert (= (and b!2491042 c!396010) b!2491039))

(assert (= (and b!2491042 (not c!396010)) b!2491043))

(assert (= (and b!2491039 res!1054059) b!2491044))

(assert (= (and b!2491043 c!396011) b!2491045))

(assert (= (and b!2491043 (not c!396011)) b!2491038))

(assert (= (and b!2491045 res!1054056) b!2491040))

(assert (= (and b!2491038 (not res!1054060)) b!2491041))

(assert (= (and b!2491041 res!1054058) b!2491046))

(assert (= (or b!2491045 b!2491046) bm!153140))

(assert (= (or b!2491040 b!2491041) bm!153139))

(assert (= (or b!2491044 bm!153139) bm!153138))

(declare-fun m!2858003 () Bool)

(assert (=> bm!153138 m!2858003))

(declare-fun m!2858005 () Bool)

(assert (=> b!2491039 m!2858005))

(declare-fun m!2858007 () Bool)

(assert (=> bm!153140 m!2858007))

(assert (=> start!243380 d!714421))

(declare-fun b!2491061 () Bool)

(declare-fun e!1581329 () Bool)

(declare-fun tp!797591 () Bool)

(assert (=> b!2491061 (= e!1581329 (and tp_is_empty!12509 tp!797591))))

(assert (=> b!2490896 (= tp!797576 e!1581329)))

(assert (= (and b!2490896 ((_ is Cons!29292) (t!211091 tl!4068))) b!2491061))

(declare-fun b!2491089 () Bool)

(declare-fun e!1581337 () Bool)

(declare-fun tp!797620 () Bool)

(declare-fun tp!797623 () Bool)

(assert (=> b!2491089 (= e!1581337 (and tp!797620 tp!797623))))

(assert (=> b!2490894 (= tp!797575 e!1581337)))

(declare-fun b!2491091 () Bool)

(declare-fun tp!797619 () Bool)

(declare-fun tp!797622 () Bool)

(assert (=> b!2491091 (= e!1581337 (and tp!797619 tp!797622))))

(declare-fun b!2491090 () Bool)

(declare-fun tp!797621 () Bool)

(assert (=> b!2491090 (= e!1581337 tp!797621)))

(declare-fun b!2491088 () Bool)

(assert (=> b!2491088 (= e!1581337 tp_is_empty!12509)))

(assert (= (and b!2490894 ((_ is ElementMatch!7327) (reg!7656 r!27340))) b!2491088))

(assert (= (and b!2490894 ((_ is Concat!12023) (reg!7656 r!27340))) b!2491089))

(assert (= (and b!2490894 ((_ is Star!7327) (reg!7656 r!27340))) b!2491090))

(assert (= (and b!2490894 ((_ is Union!7327) (reg!7656 r!27340))) b!2491091))

(declare-fun b!2491094 () Bool)

(declare-fun e!1581339 () Bool)

(declare-fun tp!797626 () Bool)

(declare-fun tp!797629 () Bool)

(assert (=> b!2491094 (= e!1581339 (and tp!797626 tp!797629))))

(assert (=> b!2490892 (= tp!797578 e!1581339)))

(declare-fun b!2491096 () Bool)

(declare-fun tp!797625 () Bool)

(declare-fun tp!797628 () Bool)

(assert (=> b!2491096 (= e!1581339 (and tp!797625 tp!797628))))

(declare-fun b!2491095 () Bool)

(declare-fun tp!797627 () Bool)

(assert (=> b!2491095 (= e!1581339 tp!797627)))

(declare-fun b!2491093 () Bool)

(assert (=> b!2491093 (= e!1581339 tp_is_empty!12509)))

(assert (= (and b!2490892 ((_ is ElementMatch!7327) (regOne!15167 r!27340))) b!2491093))

(assert (= (and b!2490892 ((_ is Concat!12023) (regOne!15167 r!27340))) b!2491094))

(assert (= (and b!2490892 ((_ is Star!7327) (regOne!15167 r!27340))) b!2491095))

(assert (= (and b!2490892 ((_ is Union!7327) (regOne!15167 r!27340))) b!2491096))

(declare-fun b!2491102 () Bool)

(declare-fun e!1581341 () Bool)

(declare-fun tp!797636 () Bool)

(declare-fun tp!797639 () Bool)

(assert (=> b!2491102 (= e!1581341 (and tp!797636 tp!797639))))

(assert (=> b!2490892 (= tp!797577 e!1581341)))

(declare-fun b!2491104 () Bool)

(declare-fun tp!797635 () Bool)

(declare-fun tp!797638 () Bool)

(assert (=> b!2491104 (= e!1581341 (and tp!797635 tp!797638))))

(declare-fun b!2491103 () Bool)

(declare-fun tp!797637 () Bool)

(assert (=> b!2491103 (= e!1581341 tp!797637)))

(declare-fun b!2491101 () Bool)

(assert (=> b!2491101 (= e!1581341 tp_is_empty!12509)))

(assert (= (and b!2490892 ((_ is ElementMatch!7327) (regTwo!15167 r!27340))) b!2491101))

(assert (= (and b!2490892 ((_ is Concat!12023) (regTwo!15167 r!27340))) b!2491102))

(assert (= (and b!2490892 ((_ is Star!7327) (regTwo!15167 r!27340))) b!2491103))

(assert (= (and b!2490892 ((_ is Union!7327) (regTwo!15167 r!27340))) b!2491104))

(declare-fun b!2491110 () Bool)

(declare-fun e!1581343 () Bool)

(declare-fun tp!797646 () Bool)

(declare-fun tp!797649 () Bool)

(assert (=> b!2491110 (= e!1581343 (and tp!797646 tp!797649))))

(assert (=> b!2490893 (= tp!797574 e!1581343)))

(declare-fun b!2491112 () Bool)

(declare-fun tp!797645 () Bool)

(declare-fun tp!797648 () Bool)

(assert (=> b!2491112 (= e!1581343 (and tp!797645 tp!797648))))

(declare-fun b!2491111 () Bool)

(declare-fun tp!797647 () Bool)

(assert (=> b!2491111 (= e!1581343 tp!797647)))

(declare-fun b!2491109 () Bool)

(assert (=> b!2491109 (= e!1581343 tp_is_empty!12509)))

(assert (= (and b!2490893 ((_ is ElementMatch!7327) (regOne!15166 r!27340))) b!2491109))

(assert (= (and b!2490893 ((_ is Concat!12023) (regOne!15166 r!27340))) b!2491110))

(assert (= (and b!2490893 ((_ is Star!7327) (regOne!15166 r!27340))) b!2491111))

(assert (= (and b!2490893 ((_ is Union!7327) (regOne!15166 r!27340))) b!2491112))

(declare-fun b!2491114 () Bool)

(declare-fun e!1581344 () Bool)

(declare-fun tp!797651 () Bool)

(declare-fun tp!797654 () Bool)

(assert (=> b!2491114 (= e!1581344 (and tp!797651 tp!797654))))

(assert (=> b!2490893 (= tp!797573 e!1581344)))

(declare-fun b!2491116 () Bool)

(declare-fun tp!797650 () Bool)

(declare-fun tp!797653 () Bool)

(assert (=> b!2491116 (= e!1581344 (and tp!797650 tp!797653))))

(declare-fun b!2491115 () Bool)

(declare-fun tp!797652 () Bool)

(assert (=> b!2491115 (= e!1581344 tp!797652)))

(declare-fun b!2491113 () Bool)

(assert (=> b!2491113 (= e!1581344 tp_is_empty!12509)))

(assert (= (and b!2490893 ((_ is ElementMatch!7327) (regTwo!15166 r!27340))) b!2491113))

(assert (= (and b!2490893 ((_ is Concat!12023) (regTwo!15166 r!27340))) b!2491114))

(assert (= (and b!2490893 ((_ is Star!7327) (regTwo!15166 r!27340))) b!2491115))

(assert (= (and b!2490893 ((_ is Union!7327) (regTwo!15166 r!27340))) b!2491116))

(check-sat (not bm!153138) (not b!2490995) (not bm!153140) tp_is_empty!12509 (not b!2491110) (not d!714405) (not b!2491116) (not b!2490923) (not b!2491112) (not b!2491089) (not b!2491115) (not bm!153114) (not b!2491102) (not b!2491114) (not bm!153110) (not b!2491103) (not b!2491094) (not b!2491096) (not bm!153113) (not bm!153109) (not b!2491039) (not d!714407) (not b!2490965) (not b!2491061) (not b!2491091) (not d!714415) (not d!714401) (not b!2491095) (not b!2491104) (not b!2491111) (not b!2491090))
(check-sat)
