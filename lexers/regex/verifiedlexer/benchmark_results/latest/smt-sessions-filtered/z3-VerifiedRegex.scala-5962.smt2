; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291920 () Bool)

(assert start!291920)

(declare-fun b!3056753 () Bool)

(declare-fun res!1255258 () Bool)

(declare-fun e!1914489 () Bool)

(assert (=> b!3056753 (=> res!1255258 e!1914489)))

(declare-datatypes ((C!19136 0))(
  ( (C!19137 (val!11604 Int)) )
))
(declare-datatypes ((Regex!9475 0))(
  ( (ElementMatch!9475 (c!507043 C!19136)) (Concat!14796 (regOne!19462 Regex!9475) (regTwo!19462 Regex!9475)) (EmptyExpr!9475) (Star!9475 (reg!9804 Regex!9475)) (EmptyLang!9475) (Union!9475 (regOne!19463 Regex!9475) (regTwo!19463 Regex!9475)) )
))
(declare-fun lt!1049215 () Regex!9475)

(declare-fun isEmptyLang!526 (Regex!9475) Bool)

(assert (=> b!3056753 (= res!1255258 (not (isEmptyLang!526 lt!1049215)))))

(declare-fun b!3056754 () Bool)

(declare-fun e!1914486 () Bool)

(declare-fun tp!966656 () Bool)

(declare-fun tp!966654 () Bool)

(assert (=> b!3056754 (= e!1914486 (and tp!966656 tp!966654))))

(declare-fun b!3056755 () Bool)

(declare-fun e!1914485 () Bool)

(declare-fun tp_is_empty!16513 () Bool)

(declare-fun tp!966655 () Bool)

(assert (=> b!3056755 (= e!1914485 (and tp_is_empty!16513 tp!966655))))

(declare-fun b!3056756 () Bool)

(declare-fun e!1914487 () Bool)

(declare-fun e!1914488 () Bool)

(assert (=> b!3056756 (= e!1914487 (not e!1914488))))

(declare-fun res!1255259 () Bool)

(assert (=> b!3056756 (=> res!1255259 e!1914488)))

(declare-fun lt!1049214 () Bool)

(declare-fun r!17423 () Regex!9475)

(get-info :version)

(assert (=> b!3056756 (= res!1255259 (or lt!1049214 (not ((_ is Concat!14796) r!17423))))))

(declare-datatypes ((List!35340 0))(
  ( (Nil!35216) (Cons!35216 (h!40636 C!19136) (t!234405 List!35340)) )
))
(declare-fun s!11993 () List!35340)

(declare-fun matchRSpec!1612 (Regex!9475 List!35340) Bool)

(assert (=> b!3056756 (= lt!1049214 (matchRSpec!1612 r!17423 s!11993))))

(declare-fun matchR!4357 (Regex!9475 List!35340) Bool)

(assert (=> b!3056756 (= lt!1049214 (matchR!4357 r!17423 s!11993))))

(declare-datatypes ((Unit!49389 0))(
  ( (Unit!49390) )
))
(declare-fun lt!1049216 () Unit!49389)

(declare-fun mainMatchTheorem!1612 (Regex!9475 List!35340) Unit!49389)

(assert (=> b!3056756 (= lt!1049216 (mainMatchTheorem!1612 r!17423 s!11993))))

(declare-fun b!3056757 () Bool)

(declare-fun res!1255261 () Bool)

(assert (=> b!3056757 (=> res!1255261 e!1914488)))

(declare-fun isEmpty!19531 (List!35340) Bool)

(assert (=> b!3056757 (= res!1255261 (isEmpty!19531 s!11993))))

(declare-fun b!3056758 () Bool)

(declare-fun res!1255260 () Bool)

(assert (=> b!3056758 (=> res!1255260 e!1914489)))

(declare-fun validRegex!4208 (Regex!9475) Bool)

(assert (=> b!3056758 (= res!1255260 (not (validRegex!4208 (regTwo!19462 r!17423))))))

(declare-fun res!1255257 () Bool)

(assert (=> start!291920 (=> (not res!1255257) (not e!1914487))))

(assert (=> start!291920 (= res!1255257 (validRegex!4208 r!17423))))

(assert (=> start!291920 e!1914487))

(assert (=> start!291920 e!1914486))

(assert (=> start!291920 e!1914485))

(declare-fun b!3056759 () Bool)

(assert (=> b!3056759 (= e!1914486 tp_is_empty!16513)))

(declare-fun b!3056760 () Bool)

(assert (=> b!3056760 (= e!1914488 e!1914489)))

(declare-fun res!1255262 () Bool)

(assert (=> b!3056760 (=> res!1255262 e!1914489)))

(declare-fun lt!1049211 () Regex!9475)

(assert (=> b!3056760 (= res!1255262 (isEmptyLang!526 lt!1049211))))

(declare-fun simplify!430 (Regex!9475) Regex!9475)

(assert (=> b!3056760 (= lt!1049215 (simplify!430 (regTwo!19462 r!17423)))))

(assert (=> b!3056760 (= lt!1049211 (simplify!430 (regOne!19462 r!17423)))))

(declare-fun b!3056761 () Bool)

(declare-fun tp!966653 () Bool)

(assert (=> b!3056761 (= e!1914486 tp!966653)))

(declare-fun b!3056762 () Bool)

(declare-fun tp!966657 () Bool)

(declare-fun tp!966652 () Bool)

(assert (=> b!3056762 (= e!1914486 (and tp!966657 tp!966652))))

(declare-fun lt!1049213 () Int)

(declare-fun lt!1049212 () Int)

(declare-fun b!3056763 () Bool)

(declare-fun regexDepth!97 (Regex!9475) Int)

(assert (=> b!3056763 (= e!1914489 (< (+ lt!1049213 lt!1049212) (+ (regexDepth!97 r!17423) lt!1049212)))))

(declare-fun size!26549 (List!35340) Int)

(assert (=> b!3056763 (= lt!1049212 (size!26549 s!11993))))

(assert (=> b!3056763 (= lt!1049213 (regexDepth!97 (regTwo!19462 r!17423)))))

(assert (= (and start!291920 res!1255257) b!3056756))

(assert (= (and b!3056756 (not res!1255259)) b!3056757))

(assert (= (and b!3056757 (not res!1255261)) b!3056760))

(assert (= (and b!3056760 (not res!1255262)) b!3056753))

(assert (= (and b!3056753 (not res!1255258)) b!3056758))

(assert (= (and b!3056758 (not res!1255260)) b!3056763))

(assert (= (and start!291920 ((_ is ElementMatch!9475) r!17423)) b!3056759))

(assert (= (and start!291920 ((_ is Concat!14796) r!17423)) b!3056754))

(assert (= (and start!291920 ((_ is Star!9475) r!17423)) b!3056761))

(assert (= (and start!291920 ((_ is Union!9475) r!17423)) b!3056762))

(assert (= (and start!291920 ((_ is Cons!35216) s!11993)) b!3056755))

(declare-fun m!3380083 () Bool)

(assert (=> start!291920 m!3380083))

(declare-fun m!3380085 () Bool)

(assert (=> b!3056760 m!3380085))

(declare-fun m!3380087 () Bool)

(assert (=> b!3056760 m!3380087))

(declare-fun m!3380089 () Bool)

(assert (=> b!3056760 m!3380089))

(declare-fun m!3380091 () Bool)

(assert (=> b!3056756 m!3380091))

(declare-fun m!3380093 () Bool)

(assert (=> b!3056756 m!3380093))

(declare-fun m!3380095 () Bool)

(assert (=> b!3056756 m!3380095))

(declare-fun m!3380097 () Bool)

(assert (=> b!3056753 m!3380097))

(declare-fun m!3380099 () Bool)

(assert (=> b!3056757 m!3380099))

(declare-fun m!3380101 () Bool)

(assert (=> b!3056758 m!3380101))

(declare-fun m!3380103 () Bool)

(assert (=> b!3056763 m!3380103))

(declare-fun m!3380105 () Bool)

(assert (=> b!3056763 m!3380105))

(declare-fun m!3380107 () Bool)

(assert (=> b!3056763 m!3380107))

(check-sat (not b!3056762) (not b!3056756) (not b!3056755) (not start!291920) (not b!3056760) (not b!3056763) (not b!3056757) (not b!3056754) (not b!3056761) (not b!3056758) (not b!3056753) tp_is_empty!16513)
(check-sat)
(get-model)

(declare-fun d!854891 () Bool)

(assert (=> d!854891 (= (isEmptyLang!526 lt!1049211) ((_ is EmptyLang!9475) lt!1049211))))

(assert (=> b!3056760 d!854891))

(declare-fun b!3056914 () Bool)

(declare-fun e!1914582 () Bool)

(declare-fun call!211020 () Bool)

(assert (=> b!3056914 (= e!1914582 call!211020)))

(declare-fun b!3056915 () Bool)

(declare-fun e!1914584 () Bool)

(declare-fun call!211019 () Bool)

(assert (=> b!3056915 (= e!1914584 call!211019)))

(declare-fun b!3056916 () Bool)

(declare-fun e!1914585 () Regex!9475)

(assert (=> b!3056916 (= e!1914585 (regTwo!19462 r!17423))))

(declare-fun lt!1049257 () Regex!9475)

(declare-fun lt!1049253 () Regex!9475)

(declare-fun c!507113 () Bool)

(declare-fun bm!211012 () Bool)

(declare-fun isEmptyExpr!532 (Regex!9475) Bool)

(assert (=> bm!211012 (= call!211020 (isEmptyExpr!532 (ite c!507113 lt!1049257 lt!1049253)))))

(declare-fun b!3056917 () Bool)

(declare-fun c!507112 () Bool)

(assert (=> b!3056917 (= c!507112 ((_ is EmptyExpr!9475) (regTwo!19462 r!17423)))))

(declare-fun e!1914579 () Regex!9475)

(assert (=> b!3056917 (= e!1914585 e!1914579)))

(declare-fun c!507110 () Bool)

(declare-fun call!211021 () Bool)

(declare-fun lt!1049254 () Regex!9475)

(declare-fun lt!1049258 () Regex!9475)

(declare-fun bm!211013 () Bool)

(assert (=> bm!211013 (= call!211021 (isEmptyLang!526 (ite c!507113 lt!1049257 (ite c!507110 lt!1049254 lt!1049258))))))

(declare-fun b!3056918 () Bool)

(declare-fun c!507120 () Bool)

(assert (=> b!3056918 (= c!507120 e!1914582)))

(declare-fun res!1255282 () Bool)

(assert (=> b!3056918 (=> res!1255282 e!1914582)))

(assert (=> b!3056918 (= res!1255282 call!211021)))

(declare-fun call!211023 () Regex!9475)

(assert (=> b!3056918 (= lt!1049257 call!211023)))

(declare-fun e!1914575 () Regex!9475)

(declare-fun e!1914577 () Regex!9475)

(assert (=> b!3056918 (= e!1914575 e!1914577)))

(declare-fun b!3056919 () Bool)

(declare-fun e!1914587 () Regex!9475)

(declare-fun e!1914574 () Regex!9475)

(assert (=> b!3056919 (= e!1914587 e!1914574)))

(declare-fun c!507114 () Bool)

(assert (=> b!3056919 (= c!507114 call!211020)))

(declare-fun b!3056920 () Bool)

(declare-fun e!1914586 () Regex!9475)

(declare-fun e!1914578 () Regex!9475)

(assert (=> b!3056920 (= e!1914586 e!1914578)))

(declare-fun call!211017 () Regex!9475)

(assert (=> b!3056920 (= lt!1049254 call!211017)))

(declare-fun lt!1049256 () Regex!9475)

(declare-fun call!211022 () Regex!9475)

(assert (=> b!3056920 (= lt!1049256 call!211022)))

(declare-fun c!507116 () Bool)

(declare-fun call!211018 () Bool)

(assert (=> b!3056920 (= c!507116 call!211018)))

(declare-fun b!3056921 () Bool)

(declare-fun e!1914580 () Regex!9475)

(assert (=> b!3056921 (= e!1914580 e!1914585)))

(declare-fun c!507119 () Bool)

(assert (=> b!3056921 (= c!507119 ((_ is ElementMatch!9475) (regTwo!19462 r!17423)))))

(declare-fun b!3056922 () Bool)

(declare-fun c!507118 () Bool)

(assert (=> b!3056922 (= c!507118 (isEmptyExpr!532 lt!1049258))))

(declare-fun e!1914576 () Regex!9475)

(assert (=> b!3056922 (= e!1914576 e!1914587)))

(declare-fun b!3056923 () Bool)

(assert (=> b!3056923 (= e!1914587 lt!1049253)))

(declare-fun bm!211014 () Bool)

(assert (=> bm!211014 (= call!211022 call!211023)))

(declare-fun b!3056924 () Bool)

(assert (=> b!3056924 (= e!1914579 EmptyExpr!9475)))

(declare-fun bm!211015 () Bool)

(assert (=> bm!211015 (= call!211023 (simplify!430 (ite c!507113 (reg!9804 (regTwo!19462 r!17423)) (ite c!507110 (regTwo!19463 (regTwo!19462 r!17423)) (regOne!19462 (regTwo!19462 r!17423))))))))

(declare-fun d!854893 () Bool)

(declare-fun e!1914581 () Bool)

(assert (=> d!854893 e!1914581))

(declare-fun res!1255281 () Bool)

(assert (=> d!854893 (=> (not res!1255281) (not e!1914581))))

(declare-fun lt!1049255 () Regex!9475)

(assert (=> d!854893 (= res!1255281 (validRegex!4208 lt!1049255))))

(assert (=> d!854893 (= lt!1049255 e!1914580)))

(declare-fun c!507117 () Bool)

(assert (=> d!854893 (= c!507117 ((_ is EmptyLang!9475) (regTwo!19462 r!17423)))))

(assert (=> d!854893 (validRegex!4208 (regTwo!19462 r!17423))))

(assert (=> d!854893 (= (simplify!430 (regTwo!19462 r!17423)) lt!1049255)))

(declare-fun b!3056925 () Bool)

(assert (=> b!3056925 (= e!1914574 lt!1049258)))

(declare-fun b!3056926 () Bool)

(assert (=> b!3056926 (= e!1914577 EmptyExpr!9475)))

(declare-fun bm!211016 () Bool)

(assert (=> bm!211016 (= call!211018 call!211021)))

(declare-fun b!3056927 () Bool)

(declare-fun e!1914583 () Regex!9475)

(assert (=> b!3056927 (= e!1914583 (Union!9475 lt!1049254 lt!1049256))))

(declare-fun b!3056928 () Bool)

(assert (=> b!3056928 (= e!1914578 lt!1049256)))

(declare-fun b!3056929 () Bool)

(assert (=> b!3056929 (= e!1914580 EmptyLang!9475)))

(declare-fun b!3056930 () Bool)

(assert (=> b!3056930 (= e!1914586 e!1914576)))

(assert (=> b!3056930 (= lt!1049258 call!211022)))

(assert (=> b!3056930 (= lt!1049253 call!211017)))

(declare-fun res!1255283 () Bool)

(assert (=> b!3056930 (= res!1255283 call!211018)))

(assert (=> b!3056930 (=> res!1255283 e!1914584)))

(declare-fun c!507115 () Bool)

(assert (=> b!3056930 (= c!507115 e!1914584)))

(declare-fun b!3056931 () Bool)

(assert (=> b!3056931 (= c!507110 ((_ is Union!9475) (regTwo!19462 r!17423)))))

(assert (=> b!3056931 (= e!1914575 e!1914586)))

(declare-fun bm!211017 () Bool)

(assert (=> bm!211017 (= call!211019 (isEmptyLang!526 (ite c!507110 lt!1049256 lt!1049253)))))

(declare-fun b!3056932 () Bool)

(declare-fun nullable!3121 (Regex!9475) Bool)

(assert (=> b!3056932 (= e!1914581 (= (nullable!3121 lt!1049255) (nullable!3121 (regTwo!19462 r!17423))))))

(declare-fun b!3056933 () Bool)

(assert (=> b!3056933 (= e!1914574 (Concat!14796 lt!1049258 lt!1049253))))

(declare-fun b!3056934 () Bool)

(assert (=> b!3056934 (= e!1914577 (Star!9475 lt!1049257))))

(declare-fun bm!211018 () Bool)

(assert (=> bm!211018 (= call!211017 (simplify!430 (ite c!507110 (regOne!19463 (regTwo!19462 r!17423)) (regTwo!19462 (regTwo!19462 r!17423)))))))

(declare-fun b!3056935 () Bool)

(declare-fun c!507111 () Bool)

(assert (=> b!3056935 (= c!507111 call!211019)))

(assert (=> b!3056935 (= e!1914578 e!1914583)))

(declare-fun b!3056936 () Bool)

(assert (=> b!3056936 (= e!1914583 lt!1049254)))

(declare-fun b!3056937 () Bool)

(assert (=> b!3056937 (= e!1914579 e!1914575)))

(assert (=> b!3056937 (= c!507113 ((_ is Star!9475) (regTwo!19462 r!17423)))))

(declare-fun b!3056938 () Bool)

(assert (=> b!3056938 (= e!1914576 EmptyLang!9475)))

(assert (= (and d!854893 c!507117) b!3056929))

(assert (= (and d!854893 (not c!507117)) b!3056921))

(assert (= (and b!3056921 c!507119) b!3056916))

(assert (= (and b!3056921 (not c!507119)) b!3056917))

(assert (= (and b!3056917 c!507112) b!3056924))

(assert (= (and b!3056917 (not c!507112)) b!3056937))

(assert (= (and b!3056937 c!507113) b!3056918))

(assert (= (and b!3056937 (not c!507113)) b!3056931))

(assert (= (and b!3056918 (not res!1255282)) b!3056914))

(assert (= (and b!3056918 c!507120) b!3056926))

(assert (= (and b!3056918 (not c!507120)) b!3056934))

(assert (= (and b!3056931 c!507110) b!3056920))

(assert (= (and b!3056931 (not c!507110)) b!3056930))

(assert (= (and b!3056920 c!507116) b!3056928))

(assert (= (and b!3056920 (not c!507116)) b!3056935))

(assert (= (and b!3056935 c!507111) b!3056936))

(assert (= (and b!3056935 (not c!507111)) b!3056927))

(assert (= (and b!3056930 (not res!1255283)) b!3056915))

(assert (= (and b!3056930 c!507115) b!3056938))

(assert (= (and b!3056930 (not c!507115)) b!3056922))

(assert (= (and b!3056922 c!507118) b!3056923))

(assert (= (and b!3056922 (not c!507118)) b!3056919))

(assert (= (and b!3056919 c!507114) b!3056925))

(assert (= (and b!3056919 (not c!507114)) b!3056933))

(assert (= (or b!3056920 b!3056930) bm!211018))

(assert (= (or b!3056920 b!3056930) bm!211014))

(assert (= (or b!3056935 b!3056915) bm!211017))

(assert (= (or b!3056920 b!3056930) bm!211016))

(assert (= (or b!3056914 b!3056919) bm!211012))

(assert (= (or b!3056918 bm!211014) bm!211015))

(assert (= (or b!3056918 bm!211016) bm!211013))

(assert (= (and d!854893 res!1255281) b!3056932))

(declare-fun m!3380147 () Bool)

(assert (=> bm!211017 m!3380147))

(declare-fun m!3380149 () Bool)

(assert (=> bm!211013 m!3380149))

(declare-fun m!3380151 () Bool)

(assert (=> bm!211018 m!3380151))

(declare-fun m!3380153 () Bool)

(assert (=> d!854893 m!3380153))

(assert (=> d!854893 m!3380101))

(declare-fun m!3380155 () Bool)

(assert (=> bm!211015 m!3380155))

(declare-fun m!3380157 () Bool)

(assert (=> b!3056922 m!3380157))

(declare-fun m!3380159 () Bool)

(assert (=> bm!211012 m!3380159))

(declare-fun m!3380161 () Bool)

(assert (=> b!3056932 m!3380161))

(declare-fun m!3380163 () Bool)

(assert (=> b!3056932 m!3380163))

(assert (=> b!3056760 d!854893))

(declare-fun b!3056939 () Bool)

(declare-fun e!1914596 () Bool)

(declare-fun call!211027 () Bool)

(assert (=> b!3056939 (= e!1914596 call!211027)))

(declare-fun b!3056940 () Bool)

(declare-fun e!1914598 () Bool)

(declare-fun call!211026 () Bool)

(assert (=> b!3056940 (= e!1914598 call!211026)))

(declare-fun b!3056941 () Bool)

(declare-fun e!1914599 () Regex!9475)

(assert (=> b!3056941 (= e!1914599 (regOne!19462 r!17423))))

(declare-fun lt!1049259 () Regex!9475)

(declare-fun bm!211019 () Bool)

(declare-fun lt!1049263 () Regex!9475)

(declare-fun c!507124 () Bool)

(assert (=> bm!211019 (= call!211027 (isEmptyExpr!532 (ite c!507124 lt!1049263 lt!1049259)))))

(declare-fun b!3056942 () Bool)

(declare-fun c!507123 () Bool)

(assert (=> b!3056942 (= c!507123 ((_ is EmptyExpr!9475) (regOne!19462 r!17423)))))

(declare-fun e!1914593 () Regex!9475)

(assert (=> b!3056942 (= e!1914599 e!1914593)))

(declare-fun lt!1049260 () Regex!9475)

(declare-fun lt!1049264 () Regex!9475)

(declare-fun call!211028 () Bool)

(declare-fun c!507121 () Bool)

(declare-fun bm!211020 () Bool)

(assert (=> bm!211020 (= call!211028 (isEmptyLang!526 (ite c!507124 lt!1049263 (ite c!507121 lt!1049260 lt!1049264))))))

(declare-fun b!3056943 () Bool)

(declare-fun c!507131 () Bool)

(assert (=> b!3056943 (= c!507131 e!1914596)))

(declare-fun res!1255285 () Bool)

(assert (=> b!3056943 (=> res!1255285 e!1914596)))

(assert (=> b!3056943 (= res!1255285 call!211028)))

(declare-fun call!211030 () Regex!9475)

(assert (=> b!3056943 (= lt!1049263 call!211030)))

(declare-fun e!1914589 () Regex!9475)

(declare-fun e!1914591 () Regex!9475)

(assert (=> b!3056943 (= e!1914589 e!1914591)))

(declare-fun b!3056944 () Bool)

(declare-fun e!1914601 () Regex!9475)

(declare-fun e!1914588 () Regex!9475)

(assert (=> b!3056944 (= e!1914601 e!1914588)))

(declare-fun c!507125 () Bool)

(assert (=> b!3056944 (= c!507125 call!211027)))

(declare-fun b!3056945 () Bool)

(declare-fun e!1914600 () Regex!9475)

(declare-fun e!1914592 () Regex!9475)

(assert (=> b!3056945 (= e!1914600 e!1914592)))

(declare-fun call!211024 () Regex!9475)

(assert (=> b!3056945 (= lt!1049260 call!211024)))

(declare-fun lt!1049262 () Regex!9475)

(declare-fun call!211029 () Regex!9475)

(assert (=> b!3056945 (= lt!1049262 call!211029)))

(declare-fun c!507127 () Bool)

(declare-fun call!211025 () Bool)

(assert (=> b!3056945 (= c!507127 call!211025)))

(declare-fun b!3056946 () Bool)

(declare-fun e!1914594 () Regex!9475)

(assert (=> b!3056946 (= e!1914594 e!1914599)))

(declare-fun c!507130 () Bool)

(assert (=> b!3056946 (= c!507130 ((_ is ElementMatch!9475) (regOne!19462 r!17423)))))

(declare-fun b!3056947 () Bool)

(declare-fun c!507129 () Bool)

(assert (=> b!3056947 (= c!507129 (isEmptyExpr!532 lt!1049264))))

(declare-fun e!1914590 () Regex!9475)

(assert (=> b!3056947 (= e!1914590 e!1914601)))

(declare-fun b!3056948 () Bool)

(assert (=> b!3056948 (= e!1914601 lt!1049259)))

(declare-fun bm!211021 () Bool)

(assert (=> bm!211021 (= call!211029 call!211030)))

(declare-fun b!3056949 () Bool)

(assert (=> b!3056949 (= e!1914593 EmptyExpr!9475)))

(declare-fun bm!211022 () Bool)

(assert (=> bm!211022 (= call!211030 (simplify!430 (ite c!507124 (reg!9804 (regOne!19462 r!17423)) (ite c!507121 (regTwo!19463 (regOne!19462 r!17423)) (regOne!19462 (regOne!19462 r!17423))))))))

(declare-fun d!854899 () Bool)

(declare-fun e!1914595 () Bool)

(assert (=> d!854899 e!1914595))

(declare-fun res!1255284 () Bool)

(assert (=> d!854899 (=> (not res!1255284) (not e!1914595))))

(declare-fun lt!1049261 () Regex!9475)

(assert (=> d!854899 (= res!1255284 (validRegex!4208 lt!1049261))))

(assert (=> d!854899 (= lt!1049261 e!1914594)))

(declare-fun c!507128 () Bool)

(assert (=> d!854899 (= c!507128 ((_ is EmptyLang!9475) (regOne!19462 r!17423)))))

(assert (=> d!854899 (validRegex!4208 (regOne!19462 r!17423))))

(assert (=> d!854899 (= (simplify!430 (regOne!19462 r!17423)) lt!1049261)))

(declare-fun b!3056950 () Bool)

(assert (=> b!3056950 (= e!1914588 lt!1049264)))

(declare-fun b!3056951 () Bool)

(assert (=> b!3056951 (= e!1914591 EmptyExpr!9475)))

(declare-fun bm!211023 () Bool)

(assert (=> bm!211023 (= call!211025 call!211028)))

(declare-fun b!3056952 () Bool)

(declare-fun e!1914597 () Regex!9475)

(assert (=> b!3056952 (= e!1914597 (Union!9475 lt!1049260 lt!1049262))))

(declare-fun b!3056953 () Bool)

(assert (=> b!3056953 (= e!1914592 lt!1049262)))

(declare-fun b!3056954 () Bool)

(assert (=> b!3056954 (= e!1914594 EmptyLang!9475)))

(declare-fun b!3056955 () Bool)

(assert (=> b!3056955 (= e!1914600 e!1914590)))

(assert (=> b!3056955 (= lt!1049264 call!211029)))

(assert (=> b!3056955 (= lt!1049259 call!211024)))

(declare-fun res!1255286 () Bool)

(assert (=> b!3056955 (= res!1255286 call!211025)))

(assert (=> b!3056955 (=> res!1255286 e!1914598)))

(declare-fun c!507126 () Bool)

(assert (=> b!3056955 (= c!507126 e!1914598)))

(declare-fun b!3056956 () Bool)

(assert (=> b!3056956 (= c!507121 ((_ is Union!9475) (regOne!19462 r!17423)))))

(assert (=> b!3056956 (= e!1914589 e!1914600)))

(declare-fun bm!211024 () Bool)

(assert (=> bm!211024 (= call!211026 (isEmptyLang!526 (ite c!507121 lt!1049262 lt!1049259)))))

(declare-fun b!3056957 () Bool)

(assert (=> b!3056957 (= e!1914595 (= (nullable!3121 lt!1049261) (nullable!3121 (regOne!19462 r!17423))))))

(declare-fun b!3056958 () Bool)

(assert (=> b!3056958 (= e!1914588 (Concat!14796 lt!1049264 lt!1049259))))

(declare-fun b!3056959 () Bool)

(assert (=> b!3056959 (= e!1914591 (Star!9475 lt!1049263))))

(declare-fun bm!211025 () Bool)

(assert (=> bm!211025 (= call!211024 (simplify!430 (ite c!507121 (regOne!19463 (regOne!19462 r!17423)) (regTwo!19462 (regOne!19462 r!17423)))))))

(declare-fun b!3056960 () Bool)

(declare-fun c!507122 () Bool)

(assert (=> b!3056960 (= c!507122 call!211026)))

(assert (=> b!3056960 (= e!1914592 e!1914597)))

(declare-fun b!3056961 () Bool)

(assert (=> b!3056961 (= e!1914597 lt!1049260)))

(declare-fun b!3056962 () Bool)

(assert (=> b!3056962 (= e!1914593 e!1914589)))

(assert (=> b!3056962 (= c!507124 ((_ is Star!9475) (regOne!19462 r!17423)))))

(declare-fun b!3056963 () Bool)

(assert (=> b!3056963 (= e!1914590 EmptyLang!9475)))

(assert (= (and d!854899 c!507128) b!3056954))

(assert (= (and d!854899 (not c!507128)) b!3056946))

(assert (= (and b!3056946 c!507130) b!3056941))

(assert (= (and b!3056946 (not c!507130)) b!3056942))

(assert (= (and b!3056942 c!507123) b!3056949))

(assert (= (and b!3056942 (not c!507123)) b!3056962))

(assert (= (and b!3056962 c!507124) b!3056943))

(assert (= (and b!3056962 (not c!507124)) b!3056956))

(assert (= (and b!3056943 (not res!1255285)) b!3056939))

(assert (= (and b!3056943 c!507131) b!3056951))

(assert (= (and b!3056943 (not c!507131)) b!3056959))

(assert (= (and b!3056956 c!507121) b!3056945))

(assert (= (and b!3056956 (not c!507121)) b!3056955))

(assert (= (and b!3056945 c!507127) b!3056953))

(assert (= (and b!3056945 (not c!507127)) b!3056960))

(assert (= (and b!3056960 c!507122) b!3056961))

(assert (= (and b!3056960 (not c!507122)) b!3056952))

(assert (= (and b!3056955 (not res!1255286)) b!3056940))

(assert (= (and b!3056955 c!507126) b!3056963))

(assert (= (and b!3056955 (not c!507126)) b!3056947))

(assert (= (and b!3056947 c!507129) b!3056948))

(assert (= (and b!3056947 (not c!507129)) b!3056944))

(assert (= (and b!3056944 c!507125) b!3056950))

(assert (= (and b!3056944 (not c!507125)) b!3056958))

(assert (= (or b!3056945 b!3056955) bm!211025))

(assert (= (or b!3056945 b!3056955) bm!211021))

(assert (= (or b!3056960 b!3056940) bm!211024))

(assert (= (or b!3056945 b!3056955) bm!211023))

(assert (= (or b!3056939 b!3056944) bm!211019))

(assert (= (or b!3056943 bm!211021) bm!211022))

(assert (= (or b!3056943 bm!211023) bm!211020))

(assert (= (and d!854899 res!1255284) b!3056957))

(declare-fun m!3380165 () Bool)

(assert (=> bm!211024 m!3380165))

(declare-fun m!3380167 () Bool)

(assert (=> bm!211020 m!3380167))

(declare-fun m!3380169 () Bool)

(assert (=> bm!211025 m!3380169))

(declare-fun m!3380171 () Bool)

(assert (=> d!854899 m!3380171))

(declare-fun m!3380173 () Bool)

(assert (=> d!854899 m!3380173))

(declare-fun m!3380175 () Bool)

(assert (=> bm!211022 m!3380175))

(declare-fun m!3380177 () Bool)

(assert (=> b!3056947 m!3380177))

(declare-fun m!3380179 () Bool)

(assert (=> bm!211019 m!3380179))

(declare-fun m!3380181 () Bool)

(assert (=> b!3056957 m!3380181))

(declare-fun m!3380183 () Bool)

(assert (=> b!3056957 m!3380183))

(assert (=> b!3056760 d!854899))

(declare-fun bm!211040 () Bool)

(declare-fun call!211049 () Int)

(declare-fun c!507158 () Bool)

(assert (=> bm!211040 (= call!211049 (regexDepth!97 (ite c!507158 (regTwo!19463 r!17423) (regOne!19462 r!17423))))))

(declare-fun b!3057020 () Bool)

(declare-fun e!1914639 () Int)

(assert (=> b!3057020 (= e!1914639 1)))

(declare-fun bm!211041 () Bool)

(declare-fun call!211048 () Int)

(declare-fun c!507157 () Bool)

(assert (=> bm!211041 (= call!211048 (regexDepth!97 (ite c!507158 (regOne!19463 r!17423) (ite c!507157 (regTwo!19462 r!17423) (reg!9804 r!17423)))))))

(declare-fun b!3057021 () Bool)

(declare-fun e!1914636 () Bool)

(declare-fun e!1914640 () Bool)

(assert (=> b!3057021 (= e!1914636 e!1914640)))

(assert (=> b!3057021 (= c!507158 ((_ is Union!9475) r!17423))))

(declare-fun bm!211042 () Bool)

(declare-fun call!211051 () Int)

(declare-fun c!507156 () Bool)

(assert (=> bm!211042 (= call!211051 (regexDepth!97 (ite c!507156 (regOne!19463 r!17423) (regOne!19462 r!17423))))))

(declare-fun call!211046 () Int)

(declare-fun c!507160 () Bool)

(declare-fun bm!211043 () Bool)

(assert (=> bm!211043 (= call!211046 (regexDepth!97 (ite c!507160 (reg!9804 r!17423) (ite c!507156 (regTwo!19463 r!17423) (regTwo!19462 r!17423)))))))

(declare-fun b!3057022 () Bool)

(declare-fun e!1914642 () Bool)

(declare-fun lt!1049267 () Int)

(declare-fun call!211045 () Int)

(assert (=> b!3057022 (= e!1914642 (> lt!1049267 call!211045))))

(declare-fun b!3057023 () Bool)

(declare-fun c!507159 () Bool)

(assert (=> b!3057023 (= c!507159 ((_ is Star!9475) r!17423))))

(declare-fun e!1914638 () Bool)

(declare-fun e!1914641 () Bool)

(assert (=> b!3057023 (= e!1914638 e!1914641)))

(declare-fun b!3057024 () Bool)

(assert (=> b!3057024 (= e!1914641 (= lt!1049267 1))))

(declare-fun b!3057025 () Bool)

(declare-fun e!1914645 () Int)

(assert (=> b!3057025 (= e!1914645 (+ 1 call!211046))))

(declare-fun b!3057026 () Bool)

(declare-fun e!1914643 () Int)

(declare-fun call!211050 () Int)

(assert (=> b!3057026 (= e!1914643 (+ 1 call!211050))))

(declare-fun b!3057027 () Bool)

(declare-fun e!1914644 () Bool)

(assert (=> b!3057027 (= e!1914644 (> lt!1049267 call!211049))))

(declare-fun b!3057028 () Bool)

(declare-fun e!1914637 () Int)

(assert (=> b!3057028 (= e!1914637 (+ 1 call!211050))))

(declare-fun bm!211044 () Bool)

(assert (=> bm!211044 (= call!211045 call!211048)))

(declare-fun b!3057029 () Bool)

(assert (=> b!3057029 (= c!507156 ((_ is Union!9475) r!17423))))

(assert (=> b!3057029 (= e!1914645 e!1914643)))

(declare-fun bm!211045 () Bool)

(declare-fun call!211047 () Int)

(assert (=> bm!211045 (= call!211047 call!211046)))

(declare-fun bm!211046 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!211046 (= call!211050 (maxBigInt!0 call!211051 call!211047))))

(declare-fun b!3057030 () Bool)

(assert (=> b!3057030 (= e!1914640 e!1914644)))

(declare-fun res!1255299 () Bool)

(assert (=> b!3057030 (= res!1255299 (> lt!1049267 call!211048))))

(assert (=> b!3057030 (=> (not res!1255299) (not e!1914644))))

(declare-fun b!3057031 () Bool)

(assert (=> b!3057031 (= e!1914637 1)))

(declare-fun b!3057032 () Bool)

(assert (=> b!3057032 (= e!1914639 e!1914645)))

(assert (=> b!3057032 (= c!507160 ((_ is Star!9475) r!17423))))

(declare-fun d!854901 () Bool)

(assert (=> d!854901 e!1914636))

(declare-fun res!1255301 () Bool)

(assert (=> d!854901 (=> (not res!1255301) (not e!1914636))))

(assert (=> d!854901 (= res!1255301 (> lt!1049267 0))))

(assert (=> d!854901 (= lt!1049267 e!1914639)))

(declare-fun c!507155 () Bool)

(assert (=> d!854901 (= c!507155 ((_ is ElementMatch!9475) r!17423))))

(assert (=> d!854901 (= (regexDepth!97 r!17423) lt!1049267)))

(declare-fun b!3057033 () Bool)

(assert (=> b!3057033 (= e!1914640 e!1914638)))

(assert (=> b!3057033 (= c!507157 ((_ is Concat!14796) r!17423))))

(declare-fun b!3057034 () Bool)

(declare-fun res!1255300 () Bool)

(assert (=> b!3057034 (=> (not res!1255300) (not e!1914642))))

(assert (=> b!3057034 (= res!1255300 (> lt!1049267 call!211049))))

(assert (=> b!3057034 (= e!1914638 e!1914642)))

(declare-fun b!3057035 () Bool)

(assert (=> b!3057035 (= e!1914641 (> lt!1049267 call!211045))))

(declare-fun b!3057036 () Bool)

(assert (=> b!3057036 (= e!1914643 e!1914637)))

(declare-fun c!507154 () Bool)

(assert (=> b!3057036 (= c!507154 ((_ is Concat!14796) r!17423))))

(assert (= (and d!854901 c!507155) b!3057020))

(assert (= (and d!854901 (not c!507155)) b!3057032))

(assert (= (and b!3057032 c!507160) b!3057025))

(assert (= (and b!3057032 (not c!507160)) b!3057029))

(assert (= (and b!3057029 c!507156) b!3057026))

(assert (= (and b!3057029 (not c!507156)) b!3057036))

(assert (= (and b!3057036 c!507154) b!3057028))

(assert (= (and b!3057036 (not c!507154)) b!3057031))

(assert (= (or b!3057026 b!3057028) bm!211045))

(assert (= (or b!3057026 b!3057028) bm!211042))

(assert (= (or b!3057026 b!3057028) bm!211046))

(assert (= (or b!3057025 bm!211045) bm!211043))

(assert (= (and d!854901 res!1255301) b!3057021))

(assert (= (and b!3057021 c!507158) b!3057030))

(assert (= (and b!3057021 (not c!507158)) b!3057033))

(assert (= (and b!3057030 res!1255299) b!3057027))

(assert (= (and b!3057033 c!507157) b!3057034))

(assert (= (and b!3057033 (not c!507157)) b!3057023))

(assert (= (and b!3057034 res!1255300) b!3057022))

(assert (= (and b!3057023 c!507159) b!3057035))

(assert (= (and b!3057023 (not c!507159)) b!3057024))

(assert (= (or b!3057022 b!3057035) bm!211044))

(assert (= (or b!3057027 b!3057034) bm!211040))

(assert (= (or b!3057030 bm!211044) bm!211041))

(declare-fun m!3380185 () Bool)

(assert (=> bm!211042 m!3380185))

(declare-fun m!3380187 () Bool)

(assert (=> bm!211043 m!3380187))

(declare-fun m!3380189 () Bool)

(assert (=> bm!211046 m!3380189))

(declare-fun m!3380191 () Bool)

(assert (=> bm!211041 m!3380191))

(declare-fun m!3380193 () Bool)

(assert (=> bm!211040 m!3380193))

(assert (=> b!3056763 d!854901))

(declare-fun d!854903 () Bool)

(declare-fun lt!1049270 () Int)

(assert (=> d!854903 (>= lt!1049270 0)))

(declare-fun e!1914648 () Int)

(assert (=> d!854903 (= lt!1049270 e!1914648)))

(declare-fun c!507163 () Bool)

(assert (=> d!854903 (= c!507163 ((_ is Nil!35216) s!11993))))

(assert (=> d!854903 (= (size!26549 s!11993) lt!1049270)))

(declare-fun b!3057041 () Bool)

(assert (=> b!3057041 (= e!1914648 0)))

(declare-fun b!3057042 () Bool)

(assert (=> b!3057042 (= e!1914648 (+ 1 (size!26549 (t!234405 s!11993))))))

(assert (= (and d!854903 c!507163) b!3057041))

(assert (= (and d!854903 (not c!507163)) b!3057042))

(declare-fun m!3380195 () Bool)

(assert (=> b!3057042 m!3380195))

(assert (=> b!3056763 d!854903))

(declare-fun bm!211047 () Bool)

(declare-fun call!211056 () Int)

(declare-fun c!507168 () Bool)

(assert (=> bm!211047 (= call!211056 (regexDepth!97 (ite c!507168 (regTwo!19463 (regTwo!19462 r!17423)) (regOne!19462 (regTwo!19462 r!17423)))))))

(declare-fun b!3057043 () Bool)

(declare-fun e!1914652 () Int)

(assert (=> b!3057043 (= e!1914652 1)))

(declare-fun call!211055 () Int)

(declare-fun c!507167 () Bool)

(declare-fun bm!211048 () Bool)

(assert (=> bm!211048 (= call!211055 (regexDepth!97 (ite c!507168 (regOne!19463 (regTwo!19462 r!17423)) (ite c!507167 (regTwo!19462 (regTwo!19462 r!17423)) (reg!9804 (regTwo!19462 r!17423))))))))

(declare-fun b!3057044 () Bool)

(declare-fun e!1914649 () Bool)

(declare-fun e!1914653 () Bool)

(assert (=> b!3057044 (= e!1914649 e!1914653)))

(assert (=> b!3057044 (= c!507168 ((_ is Union!9475) (regTwo!19462 r!17423)))))

(declare-fun bm!211049 () Bool)

(declare-fun call!211058 () Int)

(declare-fun c!507166 () Bool)

(assert (=> bm!211049 (= call!211058 (regexDepth!97 (ite c!507166 (regOne!19463 (regTwo!19462 r!17423)) (regOne!19462 (regTwo!19462 r!17423)))))))

(declare-fun bm!211050 () Bool)

(declare-fun call!211053 () Int)

(declare-fun c!507170 () Bool)

(assert (=> bm!211050 (= call!211053 (regexDepth!97 (ite c!507170 (reg!9804 (regTwo!19462 r!17423)) (ite c!507166 (regTwo!19463 (regTwo!19462 r!17423)) (regTwo!19462 (regTwo!19462 r!17423))))))))

(declare-fun b!3057045 () Bool)

(declare-fun e!1914655 () Bool)

(declare-fun lt!1049271 () Int)

(declare-fun call!211052 () Int)

(assert (=> b!3057045 (= e!1914655 (> lt!1049271 call!211052))))

(declare-fun b!3057046 () Bool)

(declare-fun c!507169 () Bool)

(assert (=> b!3057046 (= c!507169 ((_ is Star!9475) (regTwo!19462 r!17423)))))

(declare-fun e!1914651 () Bool)

(declare-fun e!1914654 () Bool)

(assert (=> b!3057046 (= e!1914651 e!1914654)))

(declare-fun b!3057047 () Bool)

(assert (=> b!3057047 (= e!1914654 (= lt!1049271 1))))

(declare-fun b!3057048 () Bool)

(declare-fun e!1914658 () Int)

(assert (=> b!3057048 (= e!1914658 (+ 1 call!211053))))

(declare-fun b!3057049 () Bool)

(declare-fun e!1914656 () Int)

(declare-fun call!211057 () Int)

(assert (=> b!3057049 (= e!1914656 (+ 1 call!211057))))

(declare-fun b!3057050 () Bool)

(declare-fun e!1914657 () Bool)

(assert (=> b!3057050 (= e!1914657 (> lt!1049271 call!211056))))

(declare-fun b!3057051 () Bool)

(declare-fun e!1914650 () Int)

(assert (=> b!3057051 (= e!1914650 (+ 1 call!211057))))

(declare-fun bm!211051 () Bool)

(assert (=> bm!211051 (= call!211052 call!211055)))

(declare-fun b!3057052 () Bool)

(assert (=> b!3057052 (= c!507166 ((_ is Union!9475) (regTwo!19462 r!17423)))))

(assert (=> b!3057052 (= e!1914658 e!1914656)))

(declare-fun bm!211052 () Bool)

(declare-fun call!211054 () Int)

(assert (=> bm!211052 (= call!211054 call!211053)))

(declare-fun bm!211053 () Bool)

(assert (=> bm!211053 (= call!211057 (maxBigInt!0 call!211058 call!211054))))

(declare-fun b!3057053 () Bool)

(assert (=> b!3057053 (= e!1914653 e!1914657)))

(declare-fun res!1255302 () Bool)

(assert (=> b!3057053 (= res!1255302 (> lt!1049271 call!211055))))

(assert (=> b!3057053 (=> (not res!1255302) (not e!1914657))))

(declare-fun b!3057054 () Bool)

(assert (=> b!3057054 (= e!1914650 1)))

(declare-fun b!3057055 () Bool)

(assert (=> b!3057055 (= e!1914652 e!1914658)))

(assert (=> b!3057055 (= c!507170 ((_ is Star!9475) (regTwo!19462 r!17423)))))

(declare-fun d!854905 () Bool)

(assert (=> d!854905 e!1914649))

(declare-fun res!1255304 () Bool)

(assert (=> d!854905 (=> (not res!1255304) (not e!1914649))))

(assert (=> d!854905 (= res!1255304 (> lt!1049271 0))))

(assert (=> d!854905 (= lt!1049271 e!1914652)))

(declare-fun c!507165 () Bool)

(assert (=> d!854905 (= c!507165 ((_ is ElementMatch!9475) (regTwo!19462 r!17423)))))

(assert (=> d!854905 (= (regexDepth!97 (regTwo!19462 r!17423)) lt!1049271)))

(declare-fun b!3057056 () Bool)

(assert (=> b!3057056 (= e!1914653 e!1914651)))

(assert (=> b!3057056 (= c!507167 ((_ is Concat!14796) (regTwo!19462 r!17423)))))

(declare-fun b!3057057 () Bool)

(declare-fun res!1255303 () Bool)

(assert (=> b!3057057 (=> (not res!1255303) (not e!1914655))))

(assert (=> b!3057057 (= res!1255303 (> lt!1049271 call!211056))))

(assert (=> b!3057057 (= e!1914651 e!1914655)))

(declare-fun b!3057058 () Bool)

(assert (=> b!3057058 (= e!1914654 (> lt!1049271 call!211052))))

(declare-fun b!3057059 () Bool)

(assert (=> b!3057059 (= e!1914656 e!1914650)))

(declare-fun c!507164 () Bool)

(assert (=> b!3057059 (= c!507164 ((_ is Concat!14796) (regTwo!19462 r!17423)))))

(assert (= (and d!854905 c!507165) b!3057043))

(assert (= (and d!854905 (not c!507165)) b!3057055))

(assert (= (and b!3057055 c!507170) b!3057048))

(assert (= (and b!3057055 (not c!507170)) b!3057052))

(assert (= (and b!3057052 c!507166) b!3057049))

(assert (= (and b!3057052 (not c!507166)) b!3057059))

(assert (= (and b!3057059 c!507164) b!3057051))

(assert (= (and b!3057059 (not c!507164)) b!3057054))

(assert (= (or b!3057049 b!3057051) bm!211052))

(assert (= (or b!3057049 b!3057051) bm!211049))

(assert (= (or b!3057049 b!3057051) bm!211053))

(assert (= (or b!3057048 bm!211052) bm!211050))

(assert (= (and d!854905 res!1255304) b!3057044))

(assert (= (and b!3057044 c!507168) b!3057053))

(assert (= (and b!3057044 (not c!507168)) b!3057056))

(assert (= (and b!3057053 res!1255302) b!3057050))

(assert (= (and b!3057056 c!507167) b!3057057))

(assert (= (and b!3057056 (not c!507167)) b!3057046))

(assert (= (and b!3057057 res!1255303) b!3057045))

(assert (= (and b!3057046 c!507169) b!3057058))

(assert (= (and b!3057046 (not c!507169)) b!3057047))

(assert (= (or b!3057045 b!3057058) bm!211051))

(assert (= (or b!3057050 b!3057057) bm!211047))

(assert (= (or b!3057053 bm!211051) bm!211048))

(declare-fun m!3380197 () Bool)

(assert (=> bm!211049 m!3380197))

(declare-fun m!3380199 () Bool)

(assert (=> bm!211050 m!3380199))

(declare-fun m!3380201 () Bool)

(assert (=> bm!211053 m!3380201))

(declare-fun m!3380203 () Bool)

(assert (=> bm!211048 m!3380203))

(declare-fun m!3380205 () Bool)

(assert (=> bm!211047 m!3380205))

(assert (=> b!3056763 d!854905))

(declare-fun c!507175 () Bool)

(declare-fun call!211066 () Bool)

(declare-fun bm!211060 () Bool)

(declare-fun c!507176 () Bool)

(assert (=> bm!211060 (= call!211066 (validRegex!4208 (ite c!507175 (reg!9804 (regTwo!19462 r!17423)) (ite c!507176 (regOne!19463 (regTwo!19462 r!17423)) (regTwo!19462 (regTwo!19462 r!17423))))))))

(declare-fun b!3057078 () Bool)

(declare-fun e!1914675 () Bool)

(assert (=> b!3057078 (= e!1914675 call!211066)))

(declare-fun bm!211061 () Bool)

(declare-fun call!211067 () Bool)

(assert (=> bm!211061 (= call!211067 (validRegex!4208 (ite c!507176 (regTwo!19463 (regTwo!19462 r!17423)) (regOne!19462 (regTwo!19462 r!17423)))))))

(declare-fun b!3057079 () Bool)

(declare-fun e!1914673 () Bool)

(declare-fun e!1914676 () Bool)

(assert (=> b!3057079 (= e!1914673 e!1914676)))

(assert (=> b!3057079 (= c!507176 ((_ is Union!9475) (regTwo!19462 r!17423)))))

(declare-fun b!3057080 () Bool)

(declare-fun e!1914677 () Bool)

(declare-fun call!211065 () Bool)

(assert (=> b!3057080 (= e!1914677 call!211065)))

(declare-fun b!3057081 () Bool)

(declare-fun e!1914679 () Bool)

(assert (=> b!3057081 (= e!1914679 call!211067)))

(declare-fun d!854907 () Bool)

(declare-fun res!1255315 () Bool)

(declare-fun e!1914674 () Bool)

(assert (=> d!854907 (=> res!1255315 e!1914674)))

(assert (=> d!854907 (= res!1255315 ((_ is ElementMatch!9475) (regTwo!19462 r!17423)))))

(assert (=> d!854907 (= (validRegex!4208 (regTwo!19462 r!17423)) e!1914674)))

(declare-fun b!3057082 () Bool)

(declare-fun res!1255316 () Bool)

(assert (=> b!3057082 (=> (not res!1255316) (not e!1914679))))

(assert (=> b!3057082 (= res!1255316 call!211065)))

(assert (=> b!3057082 (= e!1914676 e!1914679)))

(declare-fun b!3057083 () Bool)

(declare-fun e!1914678 () Bool)

(assert (=> b!3057083 (= e!1914678 e!1914677)))

(declare-fun res!1255318 () Bool)

(assert (=> b!3057083 (=> (not res!1255318) (not e!1914677))))

(assert (=> b!3057083 (= res!1255318 call!211067)))

(declare-fun b!3057084 () Bool)

(declare-fun res!1255319 () Bool)

(assert (=> b!3057084 (=> res!1255319 e!1914678)))

(assert (=> b!3057084 (= res!1255319 (not ((_ is Concat!14796) (regTwo!19462 r!17423))))))

(assert (=> b!3057084 (= e!1914676 e!1914678)))

(declare-fun b!3057085 () Bool)

(assert (=> b!3057085 (= e!1914673 e!1914675)))

(declare-fun res!1255317 () Bool)

(assert (=> b!3057085 (= res!1255317 (not (nullable!3121 (reg!9804 (regTwo!19462 r!17423)))))))

(assert (=> b!3057085 (=> (not res!1255317) (not e!1914675))))

(declare-fun b!3057086 () Bool)

(assert (=> b!3057086 (= e!1914674 e!1914673)))

(assert (=> b!3057086 (= c!507175 ((_ is Star!9475) (regTwo!19462 r!17423)))))

(declare-fun bm!211062 () Bool)

(assert (=> bm!211062 (= call!211065 call!211066)))

(assert (= (and d!854907 (not res!1255315)) b!3057086))

(assert (= (and b!3057086 c!507175) b!3057085))

(assert (= (and b!3057086 (not c!507175)) b!3057079))

(assert (= (and b!3057085 res!1255317) b!3057078))

(assert (= (and b!3057079 c!507176) b!3057082))

(assert (= (and b!3057079 (not c!507176)) b!3057084))

(assert (= (and b!3057082 res!1255316) b!3057081))

(assert (= (and b!3057084 (not res!1255319)) b!3057083))

(assert (= (and b!3057083 res!1255318) b!3057080))

(assert (= (or b!3057082 b!3057080) bm!211062))

(assert (= (or b!3057081 b!3057083) bm!211061))

(assert (= (or b!3057078 bm!211062) bm!211060))

(declare-fun m!3380207 () Bool)

(assert (=> bm!211060 m!3380207))

(declare-fun m!3380209 () Bool)

(assert (=> bm!211061 m!3380209))

(declare-fun m!3380211 () Bool)

(assert (=> b!3057085 m!3380211))

(assert (=> b!3056758 d!854907))

(declare-fun d!854909 () Bool)

(assert (=> d!854909 (= (isEmptyLang!526 lt!1049215) ((_ is EmptyLang!9475) lt!1049215))))

(assert (=> b!3056753 d!854909))

(declare-fun d!854911 () Bool)

(assert (=> d!854911 (= (isEmpty!19531 s!11993) ((_ is Nil!35216) s!11993))))

(assert (=> b!3056757 d!854911))

(declare-fun call!211069 () Bool)

(declare-fun c!507178 () Bool)

(declare-fun bm!211063 () Bool)

(declare-fun c!507177 () Bool)

(assert (=> bm!211063 (= call!211069 (validRegex!4208 (ite c!507177 (reg!9804 r!17423) (ite c!507178 (regOne!19463 r!17423) (regTwo!19462 r!17423)))))))

(declare-fun b!3057087 () Bool)

(declare-fun e!1914682 () Bool)

(assert (=> b!3057087 (= e!1914682 call!211069)))

(declare-fun bm!211064 () Bool)

(declare-fun call!211070 () Bool)

(assert (=> bm!211064 (= call!211070 (validRegex!4208 (ite c!507178 (regTwo!19463 r!17423) (regOne!19462 r!17423))))))

(declare-fun b!3057088 () Bool)

(declare-fun e!1914680 () Bool)

(declare-fun e!1914683 () Bool)

(assert (=> b!3057088 (= e!1914680 e!1914683)))

(assert (=> b!3057088 (= c!507178 ((_ is Union!9475) r!17423))))

(declare-fun b!3057089 () Bool)

(declare-fun e!1914684 () Bool)

(declare-fun call!211068 () Bool)

(assert (=> b!3057089 (= e!1914684 call!211068)))

(declare-fun b!3057090 () Bool)

(declare-fun e!1914686 () Bool)

(assert (=> b!3057090 (= e!1914686 call!211070)))

(declare-fun d!854913 () Bool)

(declare-fun res!1255320 () Bool)

(declare-fun e!1914681 () Bool)

(assert (=> d!854913 (=> res!1255320 e!1914681)))

(assert (=> d!854913 (= res!1255320 ((_ is ElementMatch!9475) r!17423))))

(assert (=> d!854913 (= (validRegex!4208 r!17423) e!1914681)))

(declare-fun b!3057091 () Bool)

(declare-fun res!1255321 () Bool)

(assert (=> b!3057091 (=> (not res!1255321) (not e!1914686))))

(assert (=> b!3057091 (= res!1255321 call!211068)))

(assert (=> b!3057091 (= e!1914683 e!1914686)))

(declare-fun b!3057092 () Bool)

(declare-fun e!1914685 () Bool)

(assert (=> b!3057092 (= e!1914685 e!1914684)))

(declare-fun res!1255323 () Bool)

(assert (=> b!3057092 (=> (not res!1255323) (not e!1914684))))

(assert (=> b!3057092 (= res!1255323 call!211070)))

(declare-fun b!3057093 () Bool)

(declare-fun res!1255324 () Bool)

(assert (=> b!3057093 (=> res!1255324 e!1914685)))

(assert (=> b!3057093 (= res!1255324 (not ((_ is Concat!14796) r!17423)))))

(assert (=> b!3057093 (= e!1914683 e!1914685)))

(declare-fun b!3057094 () Bool)

(assert (=> b!3057094 (= e!1914680 e!1914682)))

(declare-fun res!1255322 () Bool)

(assert (=> b!3057094 (= res!1255322 (not (nullable!3121 (reg!9804 r!17423))))))

(assert (=> b!3057094 (=> (not res!1255322) (not e!1914682))))

(declare-fun b!3057095 () Bool)

(assert (=> b!3057095 (= e!1914681 e!1914680)))

(assert (=> b!3057095 (= c!507177 ((_ is Star!9475) r!17423))))

(declare-fun bm!211065 () Bool)

(assert (=> bm!211065 (= call!211068 call!211069)))

(assert (= (and d!854913 (not res!1255320)) b!3057095))

(assert (= (and b!3057095 c!507177) b!3057094))

(assert (= (and b!3057095 (not c!507177)) b!3057088))

(assert (= (and b!3057094 res!1255322) b!3057087))

(assert (= (and b!3057088 c!507178) b!3057091))

(assert (= (and b!3057088 (not c!507178)) b!3057093))

(assert (= (and b!3057091 res!1255321) b!3057090))

(assert (= (and b!3057093 (not res!1255324)) b!3057092))

(assert (= (and b!3057092 res!1255323) b!3057089))

(assert (= (or b!3057091 b!3057089) bm!211065))

(assert (= (or b!3057090 b!3057092) bm!211064))

(assert (= (or b!3057087 bm!211065) bm!211063))

(declare-fun m!3380213 () Bool)

(assert (=> bm!211063 m!3380213))

(declare-fun m!3380215 () Bool)

(assert (=> bm!211064 m!3380215))

(declare-fun m!3380217 () Bool)

(assert (=> b!3057094 m!3380217))

(assert (=> start!291920 d!854913))

(declare-fun b!3057344 () Bool)

(assert (=> b!3057344 true))

(assert (=> b!3057344 true))

(declare-fun bs!532410 () Bool)

(declare-fun b!3057342 () Bool)

(assert (= bs!532410 (and b!3057342 b!3057344)))

(declare-fun lambda!113814 () Int)

(declare-fun lambda!113813 () Int)

(assert (=> bs!532410 (not (= lambda!113814 lambda!113813))))

(assert (=> b!3057342 true))

(assert (=> b!3057342 true))

(declare-fun bm!211119 () Bool)

(declare-fun call!211124 () Bool)

(assert (=> bm!211119 (= call!211124 (isEmpty!19531 s!11993))))

(declare-fun b!3057340 () Bool)

(declare-fun c!507241 () Bool)

(assert (=> b!3057340 (= c!507241 ((_ is ElementMatch!9475) r!17423))))

(declare-fun e!1914818 () Bool)

(declare-fun e!1914823 () Bool)

(assert (=> b!3057340 (= e!1914818 e!1914823)))

(declare-fun c!507240 () Bool)

(declare-fun bm!211120 () Bool)

(declare-fun call!211125 () Bool)

(declare-fun Exists!1738 (Int) Bool)

(assert (=> bm!211120 (= call!211125 (Exists!1738 (ite c!507240 lambda!113813 lambda!113814)))))

(declare-fun e!1914819 () Bool)

(assert (=> b!3057342 (= e!1914819 call!211125)))

(declare-fun b!3057343 () Bool)

(declare-fun e!1914824 () Bool)

(declare-fun e!1914821 () Bool)

(assert (=> b!3057343 (= e!1914824 e!1914821)))

(declare-fun res!1255412 () Bool)

(assert (=> b!3057343 (= res!1255412 (matchRSpec!1612 (regOne!19463 r!17423) s!11993))))

(assert (=> b!3057343 (=> res!1255412 e!1914821)))

(declare-fun e!1914820 () Bool)

(assert (=> b!3057344 (= e!1914820 call!211125)))

(declare-fun b!3057345 () Bool)

(declare-fun e!1914822 () Bool)

(assert (=> b!3057345 (= e!1914822 e!1914818)))

(declare-fun res!1255410 () Bool)

(assert (=> b!3057345 (= res!1255410 (not ((_ is EmptyLang!9475) r!17423)))))

(assert (=> b!3057345 (=> (not res!1255410) (not e!1914818))))

(declare-fun b!3057346 () Bool)

(assert (=> b!3057346 (= e!1914822 call!211124)))

(declare-fun b!3057347 () Bool)

(assert (=> b!3057347 (= e!1914823 (= s!11993 (Cons!35216 (c!507043 r!17423) Nil!35216)))))

(declare-fun b!3057348 () Bool)

(declare-fun c!507239 () Bool)

(assert (=> b!3057348 (= c!507239 ((_ is Union!9475) r!17423))))

(assert (=> b!3057348 (= e!1914823 e!1914824)))

(declare-fun b!3057341 () Bool)

(assert (=> b!3057341 (= e!1914821 (matchRSpec!1612 (regTwo!19463 r!17423) s!11993))))

(declare-fun d!854915 () Bool)

(declare-fun c!507242 () Bool)

(assert (=> d!854915 (= c!507242 ((_ is EmptyExpr!9475) r!17423))))

(assert (=> d!854915 (= (matchRSpec!1612 r!17423 s!11993) e!1914822)))

(declare-fun b!3057349 () Bool)

(declare-fun res!1255411 () Bool)

(assert (=> b!3057349 (=> res!1255411 e!1914820)))

(assert (=> b!3057349 (= res!1255411 call!211124)))

(assert (=> b!3057349 (= e!1914819 e!1914820)))

(declare-fun b!3057350 () Bool)

(assert (=> b!3057350 (= e!1914824 e!1914819)))

(assert (=> b!3057350 (= c!507240 ((_ is Star!9475) r!17423))))

(assert (= (and d!854915 c!507242) b!3057346))

(assert (= (and d!854915 (not c!507242)) b!3057345))

(assert (= (and b!3057345 res!1255410) b!3057340))

(assert (= (and b!3057340 c!507241) b!3057347))

(assert (= (and b!3057340 (not c!507241)) b!3057348))

(assert (= (and b!3057348 c!507239) b!3057343))

(assert (= (and b!3057348 (not c!507239)) b!3057350))

(assert (= (and b!3057343 (not res!1255412)) b!3057341))

(assert (= (and b!3057350 c!507240) b!3057349))

(assert (= (and b!3057350 (not c!507240)) b!3057342))

(assert (= (and b!3057349 (not res!1255411)) b!3057344))

(assert (= (or b!3057344 b!3057342) bm!211120))

(assert (= (or b!3057346 b!3057349) bm!211119))

(assert (=> bm!211119 m!3380099))

(declare-fun m!3380273 () Bool)

(assert (=> bm!211120 m!3380273))

(declare-fun m!3380275 () Bool)

(assert (=> b!3057343 m!3380275))

(declare-fun m!3380277 () Bool)

(assert (=> b!3057341 m!3380277))

(assert (=> b!3056756 d!854915))

(declare-fun b!3057383 () Bool)

(declare-fun e!1914841 () Bool)

(declare-fun lt!1049287 () Bool)

(assert (=> b!3057383 (= e!1914841 (not lt!1049287))))

(declare-fun b!3057384 () Bool)

(declare-fun res!1255432 () Bool)

(declare-fun e!1914840 () Bool)

(assert (=> b!3057384 (=> res!1255432 e!1914840)))

(declare-fun e!1914843 () Bool)

(assert (=> b!3057384 (= res!1255432 e!1914843)))

(declare-fun res!1255434 () Bool)

(assert (=> b!3057384 (=> (not res!1255434) (not e!1914843))))

(assert (=> b!3057384 (= res!1255434 lt!1049287)))

(declare-fun d!854933 () Bool)

(declare-fun e!1914842 () Bool)

(assert (=> d!854933 e!1914842))

(declare-fun c!507251 () Bool)

(assert (=> d!854933 (= c!507251 ((_ is EmptyExpr!9475) r!17423))))

(declare-fun e!1914839 () Bool)

(assert (=> d!854933 (= lt!1049287 e!1914839)))

(declare-fun c!507250 () Bool)

(assert (=> d!854933 (= c!507250 (isEmpty!19531 s!11993))))

(assert (=> d!854933 (validRegex!4208 r!17423)))

(assert (=> d!854933 (= (matchR!4357 r!17423 s!11993) lt!1049287)))

(declare-fun b!3057385 () Bool)

(declare-fun e!1914845 () Bool)

(declare-fun e!1914844 () Bool)

(assert (=> b!3057385 (= e!1914845 e!1914844)))

(declare-fun res!1255431 () Bool)

(assert (=> b!3057385 (=> res!1255431 e!1914844)))

(declare-fun call!211128 () Bool)

(assert (=> b!3057385 (= res!1255431 call!211128)))

(declare-fun b!3057386 () Bool)

(declare-fun res!1255429 () Bool)

(assert (=> b!3057386 (=> (not res!1255429) (not e!1914843))))

(assert (=> b!3057386 (= res!1255429 (not call!211128))))

(declare-fun bm!211123 () Bool)

(assert (=> bm!211123 (= call!211128 (isEmpty!19531 s!11993))))

(declare-fun b!3057387 () Bool)

(declare-fun res!1255436 () Bool)

(assert (=> b!3057387 (=> (not res!1255436) (not e!1914843))))

(declare-fun tail!5002 (List!35340) List!35340)

(assert (=> b!3057387 (= res!1255436 (isEmpty!19531 (tail!5002 s!11993)))))

(declare-fun b!3057388 () Bool)

(declare-fun head!6776 (List!35340) C!19136)

(assert (=> b!3057388 (= e!1914843 (= (head!6776 s!11993) (c!507043 r!17423)))))

(declare-fun b!3057389 () Bool)

(assert (=> b!3057389 (= e!1914842 (= lt!1049287 call!211128))))

(declare-fun b!3057390 () Bool)

(declare-fun derivativeStep!2717 (Regex!9475 C!19136) Regex!9475)

(assert (=> b!3057390 (= e!1914839 (matchR!4357 (derivativeStep!2717 r!17423 (head!6776 s!11993)) (tail!5002 s!11993)))))

(declare-fun b!3057391 () Bool)

(declare-fun res!1255430 () Bool)

(assert (=> b!3057391 (=> res!1255430 e!1914844)))

(assert (=> b!3057391 (= res!1255430 (not (isEmpty!19531 (tail!5002 s!11993))))))

(declare-fun b!3057392 () Bool)

(assert (=> b!3057392 (= e!1914844 (not (= (head!6776 s!11993) (c!507043 r!17423))))))

(declare-fun b!3057393 () Bool)

(declare-fun res!1255433 () Bool)

(assert (=> b!3057393 (=> res!1255433 e!1914840)))

(assert (=> b!3057393 (= res!1255433 (not ((_ is ElementMatch!9475) r!17423)))))

(assert (=> b!3057393 (= e!1914841 e!1914840)))

(declare-fun b!3057394 () Bool)

(assert (=> b!3057394 (= e!1914839 (nullable!3121 r!17423))))

(declare-fun b!3057395 () Bool)

(assert (=> b!3057395 (= e!1914842 e!1914841)))

(declare-fun c!507249 () Bool)

(assert (=> b!3057395 (= c!507249 ((_ is EmptyLang!9475) r!17423))))

(declare-fun b!3057396 () Bool)

(assert (=> b!3057396 (= e!1914840 e!1914845)))

(declare-fun res!1255435 () Bool)

(assert (=> b!3057396 (=> (not res!1255435) (not e!1914845))))

(assert (=> b!3057396 (= res!1255435 (not lt!1049287))))

(assert (= (and d!854933 c!507250) b!3057394))

(assert (= (and d!854933 (not c!507250)) b!3057390))

(assert (= (and d!854933 c!507251) b!3057389))

(assert (= (and d!854933 (not c!507251)) b!3057395))

(assert (= (and b!3057395 c!507249) b!3057383))

(assert (= (and b!3057395 (not c!507249)) b!3057393))

(assert (= (and b!3057393 (not res!1255433)) b!3057384))

(assert (= (and b!3057384 res!1255434) b!3057386))

(assert (= (and b!3057386 res!1255429) b!3057387))

(assert (= (and b!3057387 res!1255436) b!3057388))

(assert (= (and b!3057384 (not res!1255432)) b!3057396))

(assert (= (and b!3057396 res!1255435) b!3057385))

(assert (= (and b!3057385 (not res!1255431)) b!3057391))

(assert (= (and b!3057391 (not res!1255430)) b!3057392))

(assert (= (or b!3057389 b!3057385 b!3057386) bm!211123))

(declare-fun m!3380279 () Bool)

(assert (=> b!3057387 m!3380279))

(assert (=> b!3057387 m!3380279))

(declare-fun m!3380281 () Bool)

(assert (=> b!3057387 m!3380281))

(assert (=> bm!211123 m!3380099))

(assert (=> b!3057391 m!3380279))

(assert (=> b!3057391 m!3380279))

(assert (=> b!3057391 m!3380281))

(declare-fun m!3380283 () Bool)

(assert (=> b!3057394 m!3380283))

(declare-fun m!3380285 () Bool)

(assert (=> b!3057392 m!3380285))

(assert (=> d!854933 m!3380099))

(assert (=> d!854933 m!3380083))

(assert (=> b!3057388 m!3380285))

(assert (=> b!3057390 m!3380285))

(assert (=> b!3057390 m!3380285))

(declare-fun m!3380287 () Bool)

(assert (=> b!3057390 m!3380287))

(assert (=> b!3057390 m!3380279))

(assert (=> b!3057390 m!3380287))

(assert (=> b!3057390 m!3380279))

(declare-fun m!3380289 () Bool)

(assert (=> b!3057390 m!3380289))

(assert (=> b!3056756 d!854933))

(declare-fun d!854935 () Bool)

(assert (=> d!854935 (= (matchR!4357 r!17423 s!11993) (matchRSpec!1612 r!17423 s!11993))))

(declare-fun lt!1049290 () Unit!49389)

(declare-fun choose!18107 (Regex!9475 List!35340) Unit!49389)

(assert (=> d!854935 (= lt!1049290 (choose!18107 r!17423 s!11993))))

(assert (=> d!854935 (validRegex!4208 r!17423)))

(assert (=> d!854935 (= (mainMatchTheorem!1612 r!17423 s!11993) lt!1049290)))

(declare-fun bs!532411 () Bool)

(assert (= bs!532411 d!854935))

(assert (=> bs!532411 m!3380093))

(assert (=> bs!532411 m!3380091))

(declare-fun m!3380291 () Bool)

(assert (=> bs!532411 m!3380291))

(assert (=> bs!532411 m!3380083))

(assert (=> b!3056756 d!854935))

(declare-fun b!3057408 () Bool)

(declare-fun e!1914848 () Bool)

(declare-fun tp!966707 () Bool)

(declare-fun tp!966708 () Bool)

(assert (=> b!3057408 (= e!1914848 (and tp!966707 tp!966708))))

(declare-fun b!3057410 () Bool)

(declare-fun tp!966706 () Bool)

(declare-fun tp!966710 () Bool)

(assert (=> b!3057410 (= e!1914848 (and tp!966706 tp!966710))))

(declare-fun b!3057407 () Bool)

(assert (=> b!3057407 (= e!1914848 tp_is_empty!16513)))

(assert (=> b!3056754 (= tp!966656 e!1914848)))

(declare-fun b!3057409 () Bool)

(declare-fun tp!966709 () Bool)

(assert (=> b!3057409 (= e!1914848 tp!966709)))

(assert (= (and b!3056754 ((_ is ElementMatch!9475) (regOne!19462 r!17423))) b!3057407))

(assert (= (and b!3056754 ((_ is Concat!14796) (regOne!19462 r!17423))) b!3057408))

(assert (= (and b!3056754 ((_ is Star!9475) (regOne!19462 r!17423))) b!3057409))

(assert (= (and b!3056754 ((_ is Union!9475) (regOne!19462 r!17423))) b!3057410))

(declare-fun b!3057412 () Bool)

(declare-fun e!1914849 () Bool)

(declare-fun tp!966712 () Bool)

(declare-fun tp!966713 () Bool)

(assert (=> b!3057412 (= e!1914849 (and tp!966712 tp!966713))))

(declare-fun b!3057414 () Bool)

(declare-fun tp!966711 () Bool)

(declare-fun tp!966715 () Bool)

(assert (=> b!3057414 (= e!1914849 (and tp!966711 tp!966715))))

(declare-fun b!3057411 () Bool)

(assert (=> b!3057411 (= e!1914849 tp_is_empty!16513)))

(assert (=> b!3056754 (= tp!966654 e!1914849)))

(declare-fun b!3057413 () Bool)

(declare-fun tp!966714 () Bool)

(assert (=> b!3057413 (= e!1914849 tp!966714)))

(assert (= (and b!3056754 ((_ is ElementMatch!9475) (regTwo!19462 r!17423))) b!3057411))

(assert (= (and b!3056754 ((_ is Concat!14796) (regTwo!19462 r!17423))) b!3057412))

(assert (= (and b!3056754 ((_ is Star!9475) (regTwo!19462 r!17423))) b!3057413))

(assert (= (and b!3056754 ((_ is Union!9475) (regTwo!19462 r!17423))) b!3057414))

(declare-fun b!3057416 () Bool)

(declare-fun e!1914850 () Bool)

(declare-fun tp!966717 () Bool)

(declare-fun tp!966718 () Bool)

(assert (=> b!3057416 (= e!1914850 (and tp!966717 tp!966718))))

(declare-fun b!3057418 () Bool)

(declare-fun tp!966716 () Bool)

(declare-fun tp!966720 () Bool)

(assert (=> b!3057418 (= e!1914850 (and tp!966716 tp!966720))))

(declare-fun b!3057415 () Bool)

(assert (=> b!3057415 (= e!1914850 tp_is_empty!16513)))

(assert (=> b!3056762 (= tp!966657 e!1914850)))

(declare-fun b!3057417 () Bool)

(declare-fun tp!966719 () Bool)

(assert (=> b!3057417 (= e!1914850 tp!966719)))

(assert (= (and b!3056762 ((_ is ElementMatch!9475) (regOne!19463 r!17423))) b!3057415))

(assert (= (and b!3056762 ((_ is Concat!14796) (regOne!19463 r!17423))) b!3057416))

(assert (= (and b!3056762 ((_ is Star!9475) (regOne!19463 r!17423))) b!3057417))

(assert (= (and b!3056762 ((_ is Union!9475) (regOne!19463 r!17423))) b!3057418))

(declare-fun b!3057420 () Bool)

(declare-fun e!1914851 () Bool)

(declare-fun tp!966722 () Bool)

(declare-fun tp!966723 () Bool)

(assert (=> b!3057420 (= e!1914851 (and tp!966722 tp!966723))))

(declare-fun b!3057422 () Bool)

(declare-fun tp!966721 () Bool)

(declare-fun tp!966725 () Bool)

(assert (=> b!3057422 (= e!1914851 (and tp!966721 tp!966725))))

(declare-fun b!3057419 () Bool)

(assert (=> b!3057419 (= e!1914851 tp_is_empty!16513)))

(assert (=> b!3056762 (= tp!966652 e!1914851)))

(declare-fun b!3057421 () Bool)

(declare-fun tp!966724 () Bool)

(assert (=> b!3057421 (= e!1914851 tp!966724)))

(assert (= (and b!3056762 ((_ is ElementMatch!9475) (regTwo!19463 r!17423))) b!3057419))

(assert (= (and b!3056762 ((_ is Concat!14796) (regTwo!19463 r!17423))) b!3057420))

(assert (= (and b!3056762 ((_ is Star!9475) (regTwo!19463 r!17423))) b!3057421))

(assert (= (and b!3056762 ((_ is Union!9475) (regTwo!19463 r!17423))) b!3057422))

(declare-fun b!3057427 () Bool)

(declare-fun e!1914854 () Bool)

(declare-fun tp!966728 () Bool)

(assert (=> b!3057427 (= e!1914854 (and tp_is_empty!16513 tp!966728))))

(assert (=> b!3056755 (= tp!966655 e!1914854)))

(assert (= (and b!3056755 ((_ is Cons!35216) (t!234405 s!11993))) b!3057427))

(declare-fun b!3057429 () Bool)

(declare-fun e!1914855 () Bool)

(declare-fun tp!966730 () Bool)

(declare-fun tp!966731 () Bool)

(assert (=> b!3057429 (= e!1914855 (and tp!966730 tp!966731))))

(declare-fun b!3057431 () Bool)

(declare-fun tp!966729 () Bool)

(declare-fun tp!966733 () Bool)

(assert (=> b!3057431 (= e!1914855 (and tp!966729 tp!966733))))

(declare-fun b!3057428 () Bool)

(assert (=> b!3057428 (= e!1914855 tp_is_empty!16513)))

(assert (=> b!3056761 (= tp!966653 e!1914855)))

(declare-fun b!3057430 () Bool)

(declare-fun tp!966732 () Bool)

(assert (=> b!3057430 (= e!1914855 tp!966732)))

(assert (= (and b!3056761 ((_ is ElementMatch!9475) (reg!9804 r!17423))) b!3057428))

(assert (= (and b!3056761 ((_ is Concat!14796) (reg!9804 r!17423))) b!3057429))

(assert (= (and b!3056761 ((_ is Star!9475) (reg!9804 r!17423))) b!3057430))

(assert (= (and b!3056761 ((_ is Union!9475) (reg!9804 r!17423))) b!3057431))

(check-sat (not bm!211119) (not b!3057421) (not bm!211019) (not bm!211020) (not b!3057390) (not b!3056932) (not bm!211120) (not b!3057413) (not b!3057410) (not b!3057391) (not b!3057430) (not d!854935) (not bm!211123) (not b!3057416) (not bm!211046) (not b!3057392) (not b!3057394) (not bm!211013) (not bm!211042) (not b!3057388) (not b!3056957) (not bm!211043) (not bm!211047) (not b!3057341) (not b!3056947) (not b!3057412) (not b!3057427) (not b!3056922) (not bm!211024) (not b!3057042) (not b!3057085) (not bm!211040) (not bm!211060) (not bm!211041) (not b!3057094) (not bm!211022) (not bm!211063) (not bm!211064) (not b!3057418) (not b!3057414) (not bm!211049) (not b!3057343) (not b!3057408) (not b!3057417) (not bm!211018) (not bm!211017) (not d!854933) (not b!3057429) (not b!3057387) (not d!854893) (not b!3057431) (not bm!211012) (not d!854899) (not bm!211061) (not bm!211025) (not b!3057420) (not b!3057422) tp_is_empty!16513 (not bm!211050) (not bm!211015) (not bm!211053) (not b!3057409) (not bm!211048))
(check-sat)
