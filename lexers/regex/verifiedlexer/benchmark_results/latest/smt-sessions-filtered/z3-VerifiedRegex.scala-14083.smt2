; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742198 () Bool)

(assert start!742198)

(declare-fun b!7832020 () Bool)

(declare-fun e!4631764 () Bool)

(declare-fun tp!2316103 () Bool)

(declare-fun tp!2316101 () Bool)

(assert (=> b!7832020 (= e!4631764 (and tp!2316103 tp!2316101))))

(declare-fun b!7832021 () Bool)

(declare-fun e!4631765 () Bool)

(declare-fun tp_is_empty!52277 () Bool)

(declare-fun tp!2316098 () Bool)

(assert (=> b!7832021 (= e!4631765 (and tp_is_empty!52277 tp!2316098))))

(declare-fun b!7832022 () Bool)

(declare-fun res!3115250 () Bool)

(declare-fun e!4631760 () Bool)

(assert (=> b!7832022 (=> (not res!3115250) (not e!4631760))))

(declare-datatypes ((C!42248 0))(
  ( (C!42249 (val!31564 Int)) )
))
(declare-datatypes ((Regex!20961 0))(
  ( (ElementMatch!20961 (c!1440616 C!42248)) (Concat!29806 (regOne!42434 Regex!20961) (regTwo!42434 Regex!20961)) (EmptyExpr!20961) (Star!20961 (reg!21290 Regex!20961)) (EmptyLang!20961) (Union!20961 (regOne!42435 Regex!20961) (regTwo!42435 Regex!20961)) )
))
(declare-fun r2!6199 () Regex!20961)

(declare-datatypes ((List!73798 0))(
  ( (Nil!73674) (Cons!73674 (h!80122 C!42248) (t!388533 List!73798)) )
))
(declare-fun s2!3721 () List!73798)

(declare-fun matchR!10417 (Regex!20961 List!73798) Bool)

(assert (=> b!7832022 (= res!3115250 (matchR!10417 r2!6199 s2!3721))))

(declare-fun b!7832023 () Bool)

(declare-fun tp!2316094 () Bool)

(assert (=> b!7832023 (= e!4631764 tp!2316094)))

(declare-fun b!7832024 () Bool)

(declare-fun e!4631767 () Bool)

(declare-fun tp!2316095 () Bool)

(assert (=> b!7832024 (= e!4631767 tp!2316095)))

(declare-fun b!7832025 () Bool)

(declare-fun e!4631762 () Bool)

(declare-fun tp!2316100 () Bool)

(assert (=> b!7832025 (= e!4631762 (and tp_is_empty!52277 tp!2316100))))

(declare-fun b!7832026 () Bool)

(declare-fun res!3115252 () Bool)

(assert (=> b!7832026 (=> (not res!3115252) (not e!4631760))))

(declare-fun s1!4101 () List!73798)

(declare-fun s!14274 () List!73798)

(declare-fun ++!17995 (List!73798 List!73798) List!73798)

(assert (=> b!7832026 (= res!3115252 (= (++!17995 s1!4101 s2!3721) s!14274))))

(declare-fun b!7832027 () Bool)

(declare-fun s2Rec!453 () List!73798)

(declare-fun r1!6261 () Regex!20961)

(declare-fun s1Rec!453 () List!73798)

(declare-datatypes ((tuple2!69988 0))(
  ( (tuple2!69989 (_1!38297 List!73798) (_2!38297 List!73798)) )
))
(declare-datatypes ((Option!17788 0))(
  ( (None!17787) (Some!17787 (v!54922 tuple2!69988)) )
))
(declare-fun isDefined!14394 (Option!17788) Bool)

(declare-fun findConcatSeparation!3818 (Regex!20961 Regex!20961 List!73798 List!73798 List!73798) Option!17788)

(assert (=> b!7832027 (= e!4631760 (not (isDefined!14394 (findConcatSeparation!3818 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274))))))

(declare-fun b!7832028 () Bool)

(declare-fun tp!2316093 () Bool)

(declare-fun tp!2316107 () Bool)

(assert (=> b!7832028 (= e!4631764 (and tp!2316093 tp!2316107))))

(declare-fun b!7832029 () Bool)

(declare-fun res!3115247 () Bool)

(assert (=> b!7832029 (=> (not res!3115247) (not e!4631760))))

(declare-fun isPrefix!6311 (List!73798 List!73798) Bool)

(assert (=> b!7832029 (= res!3115247 (isPrefix!6311 s1Rec!453 s1!4101))))

(declare-fun b!7832030 () Bool)

(declare-fun e!4631763 () Bool)

(declare-fun tp!2316104 () Bool)

(assert (=> b!7832030 (= e!4631763 (and tp_is_empty!52277 tp!2316104))))

(declare-fun b!7832031 () Bool)

(declare-fun res!3115244 () Bool)

(assert (=> b!7832031 (=> (not res!3115244) (not e!4631760))))

(declare-fun validRegex!11375 (Regex!20961) Bool)

(assert (=> b!7832031 (= res!3115244 (validRegex!11375 r2!6199))))

(declare-fun b!7832032 () Bool)

(declare-fun res!3115249 () Bool)

(assert (=> b!7832032 (=> (not res!3115249) (not e!4631760))))

(assert (=> b!7832032 (= res!3115249 (matchR!10417 r1!6261 s1Rec!453))))

(declare-fun b!7832033 () Bool)

(declare-fun e!4631761 () Bool)

(declare-fun tp!2316106 () Bool)

(assert (=> b!7832033 (= e!4631761 (and tp_is_empty!52277 tp!2316106))))

(declare-fun res!3115246 () Bool)

(assert (=> start!742198 (=> (not res!3115246) (not e!4631760))))

(assert (=> start!742198 (= res!3115246 (validRegex!11375 r1!6261))))

(assert (=> start!742198 e!4631760))

(assert (=> start!742198 e!4631767))

(assert (=> start!742198 e!4631761))

(declare-fun e!4631766 () Bool)

(assert (=> start!742198 e!4631766))

(assert (=> start!742198 e!4631763))

(assert (=> start!742198 e!4631762))

(assert (=> start!742198 e!4631764))

(assert (=> start!742198 e!4631765))

(declare-fun b!7832034 () Bool)

(assert (=> b!7832034 (= e!4631767 tp_is_empty!52277)))

(declare-fun b!7832035 () Bool)

(declare-fun res!3115245 () Bool)

(assert (=> b!7832035 (=> (not res!3115245) (not e!4631760))))

(assert (=> b!7832035 (= res!3115245 (= (++!17995 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7832036 () Bool)

(assert (=> b!7832036 (= e!4631764 tp_is_empty!52277)))

(declare-fun b!7832037 () Bool)

(declare-fun tp!2316097 () Bool)

(declare-fun tp!2316099 () Bool)

(assert (=> b!7832037 (= e!4631767 (and tp!2316097 tp!2316099))))

(declare-fun b!7832038 () Bool)

(declare-fun res!3115248 () Bool)

(assert (=> b!7832038 (=> (not res!3115248) (not e!4631760))))

(assert (=> b!7832038 (= res!3115248 (matchR!10417 r2!6199 s2Rec!453))))

(declare-fun b!7832039 () Bool)

(declare-fun tp!2316096 () Bool)

(declare-fun tp!2316105 () Bool)

(assert (=> b!7832039 (= e!4631767 (and tp!2316096 tp!2316105))))

(declare-fun b!7832040 () Bool)

(declare-fun tp!2316102 () Bool)

(assert (=> b!7832040 (= e!4631766 (and tp_is_empty!52277 tp!2316102))))

(declare-fun b!7832041 () Bool)

(declare-fun res!3115251 () Bool)

(assert (=> b!7832041 (=> (not res!3115251) (not e!4631760))))

(assert (=> b!7832041 (= res!3115251 (matchR!10417 r1!6261 s1!4101))))

(assert (= (and start!742198 res!3115246) b!7832031))

(assert (= (and b!7832031 res!3115244) b!7832026))

(assert (= (and b!7832026 res!3115252) b!7832029))

(assert (= (and b!7832029 res!3115247) b!7832035))

(assert (= (and b!7832035 res!3115245) b!7832041))

(assert (= (and b!7832041 res!3115251) b!7832022))

(assert (= (and b!7832022 res!3115250) b!7832032))

(assert (= (and b!7832032 res!3115249) b!7832038))

(assert (= (and b!7832038 res!3115248) b!7832027))

(get-info :version)

(assert (= (and start!742198 ((_ is ElementMatch!20961) r2!6199)) b!7832034))

(assert (= (and start!742198 ((_ is Concat!29806) r2!6199)) b!7832037))

(assert (= (and start!742198 ((_ is Star!20961) r2!6199)) b!7832024))

(assert (= (and start!742198 ((_ is Union!20961) r2!6199)) b!7832039))

(assert (= (and start!742198 ((_ is Cons!73674) s1!4101)) b!7832033))

(assert (= (and start!742198 ((_ is Cons!73674) s2!3721)) b!7832040))

(assert (= (and start!742198 ((_ is Cons!73674) s2Rec!453)) b!7832030))

(assert (= (and start!742198 ((_ is Cons!73674) s!14274)) b!7832025))

(assert (= (and start!742198 ((_ is ElementMatch!20961) r1!6261)) b!7832036))

(assert (= (and start!742198 ((_ is Concat!29806) r1!6261)) b!7832020))

(assert (= (and start!742198 ((_ is Star!20961) r1!6261)) b!7832023))

(assert (= (and start!742198 ((_ is Union!20961) r1!6261)) b!7832028))

(assert (= (and start!742198 ((_ is Cons!73674) s1Rec!453)) b!7832021))

(declare-fun m!8248900 () Bool)

(assert (=> b!7832031 m!8248900))

(declare-fun m!8248902 () Bool)

(assert (=> b!7832035 m!8248902))

(declare-fun m!8248904 () Bool)

(assert (=> start!742198 m!8248904))

(declare-fun m!8248906 () Bool)

(assert (=> b!7832029 m!8248906))

(declare-fun m!8248908 () Bool)

(assert (=> b!7832041 m!8248908))

(declare-fun m!8248910 () Bool)

(assert (=> b!7832038 m!8248910))

(declare-fun m!8248912 () Bool)

(assert (=> b!7832026 m!8248912))

(declare-fun m!8248914 () Bool)

(assert (=> b!7832027 m!8248914))

(assert (=> b!7832027 m!8248914))

(declare-fun m!8248916 () Bool)

(assert (=> b!7832027 m!8248916))

(declare-fun m!8248918 () Bool)

(assert (=> b!7832032 m!8248918))

(declare-fun m!8248920 () Bool)

(assert (=> b!7832022 m!8248920))

(check-sat (not b!7832022) (not b!7832031) (not b!7832032) (not b!7832029) (not b!7832038) (not b!7832035) (not b!7832020) (not b!7832021) (not b!7832028) (not b!7832030) (not start!742198) (not b!7832025) tp_is_empty!52277 (not b!7832026) (not b!7832040) (not b!7832023) (not b!7832041) (not b!7832037) (not b!7832033) (not b!7832027) (not b!7832024) (not b!7832039))
(check-sat)
(get-model)

(declare-fun b!7832060 () Bool)

(declare-fun e!4631788 () Bool)

(declare-fun call!726306 () Bool)

(assert (=> b!7832060 (= e!4631788 call!726306)))

(declare-fun b!7832061 () Bool)

(declare-fun e!4631784 () Bool)

(declare-fun e!4631787 () Bool)

(assert (=> b!7832061 (= e!4631784 e!4631787)))

(declare-fun res!3115263 () Bool)

(assert (=> b!7832061 (=> (not res!3115263) (not e!4631787))))

(assert (=> b!7832061 (= res!3115263 call!726306)))

(declare-fun b!7832062 () Bool)

(declare-fun e!4631785 () Bool)

(declare-fun e!4631782 () Bool)

(assert (=> b!7832062 (= e!4631785 e!4631782)))

(declare-fun res!3115265 () Bool)

(declare-fun nullable!9303 (Regex!20961) Bool)

(assert (=> b!7832062 (= res!3115265 (not (nullable!9303 (reg!21290 r2!6199))))))

(assert (=> b!7832062 (=> (not res!3115265) (not e!4631782))))

(declare-fun bm!726300 () Bool)

(declare-fun call!726305 () Bool)

(declare-fun c!1440622 () Bool)

(declare-fun c!1440621 () Bool)

(assert (=> bm!726300 (= call!726305 (validRegex!11375 (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))))))

(declare-fun bm!726301 () Bool)

(assert (=> bm!726301 (= call!726306 call!726305)))

(declare-fun d!2350988 () Bool)

(declare-fun res!3115266 () Bool)

(declare-fun e!4631786 () Bool)

(assert (=> d!2350988 (=> res!3115266 e!4631786)))

(assert (=> d!2350988 (= res!3115266 ((_ is ElementMatch!20961) r2!6199))))

(assert (=> d!2350988 (= (validRegex!11375 r2!6199) e!4631786)))

(declare-fun b!7832063 () Bool)

(declare-fun res!3115267 () Bool)

(assert (=> b!7832063 (=> (not res!3115267) (not e!4631788))))

(declare-fun call!726307 () Bool)

(assert (=> b!7832063 (= res!3115267 call!726307)))

(declare-fun e!4631783 () Bool)

(assert (=> b!7832063 (= e!4631783 e!4631788)))

(declare-fun b!7832064 () Bool)

(declare-fun res!3115264 () Bool)

(assert (=> b!7832064 (=> res!3115264 e!4631784)))

(assert (=> b!7832064 (= res!3115264 (not ((_ is Concat!29806) r2!6199)))))

(assert (=> b!7832064 (= e!4631783 e!4631784)))

(declare-fun b!7832065 () Bool)

(assert (=> b!7832065 (= e!4631782 call!726305)))

(declare-fun b!7832066 () Bool)

(assert (=> b!7832066 (= e!4631787 call!726307)))

(declare-fun b!7832067 () Bool)

(assert (=> b!7832067 (= e!4631785 e!4631783)))

(assert (=> b!7832067 (= c!1440622 ((_ is Union!20961) r2!6199))))

(declare-fun bm!726302 () Bool)

(assert (=> bm!726302 (= call!726307 (validRegex!11375 (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))))))

(declare-fun b!7832068 () Bool)

(assert (=> b!7832068 (= e!4631786 e!4631785)))

(assert (=> b!7832068 (= c!1440621 ((_ is Star!20961) r2!6199))))

(assert (= (and d!2350988 (not res!3115266)) b!7832068))

(assert (= (and b!7832068 c!1440621) b!7832062))

(assert (= (and b!7832068 (not c!1440621)) b!7832067))

(assert (= (and b!7832062 res!3115265) b!7832065))

(assert (= (and b!7832067 c!1440622) b!7832063))

(assert (= (and b!7832067 (not c!1440622)) b!7832064))

(assert (= (and b!7832063 res!3115267) b!7832060))

(assert (= (and b!7832064 (not res!3115264)) b!7832061))

(assert (= (and b!7832061 res!3115263) b!7832066))

(assert (= (or b!7832060 b!7832061) bm!726301))

(assert (= (or b!7832063 b!7832066) bm!726302))

(assert (= (or b!7832065 bm!726301) bm!726300))

(declare-fun m!8248922 () Bool)

(assert (=> b!7832062 m!8248922))

(declare-fun m!8248924 () Bool)

(assert (=> bm!726300 m!8248924))

(declare-fun m!8248926 () Bool)

(assert (=> bm!726302 m!8248926))

(assert (=> b!7832031 d!2350988))

(declare-fun b!7832108 () Bool)

(declare-fun lt!2676967 () List!73798)

(declare-fun e!4631807 () Bool)

(assert (=> b!7832108 (= e!4631807 (or (not (= s2!3721 Nil!73674)) (= lt!2676967 s1!4101)))))

(declare-fun b!7832105 () Bool)

(declare-fun e!4631808 () List!73798)

(assert (=> b!7832105 (= e!4631808 s2!3721)))

(declare-fun d!2350992 () Bool)

(assert (=> d!2350992 e!4631807))

(declare-fun res!3115289 () Bool)

(assert (=> d!2350992 (=> (not res!3115289) (not e!4631807))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15643 (List!73798) (InoxSet C!42248))

(assert (=> d!2350992 (= res!3115289 (= (content!15643 lt!2676967) ((_ map or) (content!15643 s1!4101) (content!15643 s2!3721))))))

(assert (=> d!2350992 (= lt!2676967 e!4631808)))

(declare-fun c!1440631 () Bool)

(assert (=> d!2350992 (= c!1440631 ((_ is Nil!73674) s1!4101))))

(assert (=> d!2350992 (= (++!17995 s1!4101 s2!3721) lt!2676967)))

(declare-fun b!7832107 () Bool)

(declare-fun res!3115288 () Bool)

(assert (=> b!7832107 (=> (not res!3115288) (not e!4631807))))

(declare-fun size!42760 (List!73798) Int)

(assert (=> b!7832107 (= res!3115288 (= (size!42760 lt!2676967) (+ (size!42760 s1!4101) (size!42760 s2!3721))))))

(declare-fun b!7832106 () Bool)

(assert (=> b!7832106 (= e!4631808 (Cons!73674 (h!80122 s1!4101) (++!17995 (t!388533 s1!4101) s2!3721)))))

(assert (= (and d!2350992 c!1440631) b!7832105))

(assert (= (and d!2350992 (not c!1440631)) b!7832106))

(assert (= (and d!2350992 res!3115289) b!7832107))

(assert (= (and b!7832107 res!3115288) b!7832108))

(declare-fun m!8248928 () Bool)

(assert (=> d!2350992 m!8248928))

(declare-fun m!8248930 () Bool)

(assert (=> d!2350992 m!8248930))

(declare-fun m!8248932 () Bool)

(assert (=> d!2350992 m!8248932))

(declare-fun m!8248934 () Bool)

(assert (=> b!7832107 m!8248934))

(declare-fun m!8248936 () Bool)

(assert (=> b!7832107 m!8248936))

(declare-fun m!8248938 () Bool)

(assert (=> b!7832107 m!8248938))

(declare-fun m!8248940 () Bool)

(assert (=> b!7832106 m!8248940))

(assert (=> b!7832026 d!2350992))

(declare-fun b!7832109 () Bool)

(declare-fun e!4631815 () Bool)

(declare-fun call!726311 () Bool)

(assert (=> b!7832109 (= e!4631815 call!726311)))

(declare-fun b!7832110 () Bool)

(declare-fun e!4631811 () Bool)

(declare-fun e!4631814 () Bool)

(assert (=> b!7832110 (= e!4631811 e!4631814)))

(declare-fun res!3115290 () Bool)

(assert (=> b!7832110 (=> (not res!3115290) (not e!4631814))))

(assert (=> b!7832110 (= res!3115290 call!726311)))

(declare-fun b!7832111 () Bool)

(declare-fun e!4631812 () Bool)

(declare-fun e!4631809 () Bool)

(assert (=> b!7832111 (= e!4631812 e!4631809)))

(declare-fun res!3115292 () Bool)

(assert (=> b!7832111 (= res!3115292 (not (nullable!9303 (reg!21290 r1!6261))))))

(assert (=> b!7832111 (=> (not res!3115292) (not e!4631809))))

(declare-fun c!1440633 () Bool)

(declare-fun c!1440632 () Bool)

(declare-fun call!726310 () Bool)

(declare-fun bm!726305 () Bool)

(assert (=> bm!726305 (= call!726310 (validRegex!11375 (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))))))

(declare-fun bm!726306 () Bool)

(assert (=> bm!726306 (= call!726311 call!726310)))

(declare-fun d!2350994 () Bool)

(declare-fun res!3115293 () Bool)

(declare-fun e!4631813 () Bool)

(assert (=> d!2350994 (=> res!3115293 e!4631813)))

(assert (=> d!2350994 (= res!3115293 ((_ is ElementMatch!20961) r1!6261))))

(assert (=> d!2350994 (= (validRegex!11375 r1!6261) e!4631813)))

(declare-fun b!7832112 () Bool)

(declare-fun res!3115294 () Bool)

(assert (=> b!7832112 (=> (not res!3115294) (not e!4631815))))

(declare-fun call!726312 () Bool)

(assert (=> b!7832112 (= res!3115294 call!726312)))

(declare-fun e!4631810 () Bool)

(assert (=> b!7832112 (= e!4631810 e!4631815)))

(declare-fun b!7832113 () Bool)

(declare-fun res!3115291 () Bool)

(assert (=> b!7832113 (=> res!3115291 e!4631811)))

(assert (=> b!7832113 (= res!3115291 (not ((_ is Concat!29806) r1!6261)))))

(assert (=> b!7832113 (= e!4631810 e!4631811)))

(declare-fun b!7832114 () Bool)

(assert (=> b!7832114 (= e!4631809 call!726310)))

(declare-fun b!7832115 () Bool)

(assert (=> b!7832115 (= e!4631814 call!726312)))

(declare-fun b!7832116 () Bool)

(assert (=> b!7832116 (= e!4631812 e!4631810)))

(assert (=> b!7832116 (= c!1440633 ((_ is Union!20961) r1!6261))))

(declare-fun bm!726307 () Bool)

(assert (=> bm!726307 (= call!726312 (validRegex!11375 (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))))))

(declare-fun b!7832117 () Bool)

(assert (=> b!7832117 (= e!4631813 e!4631812)))

(assert (=> b!7832117 (= c!1440632 ((_ is Star!20961) r1!6261))))

(assert (= (and d!2350994 (not res!3115293)) b!7832117))

(assert (= (and b!7832117 c!1440632) b!7832111))

(assert (= (and b!7832117 (not c!1440632)) b!7832116))

(assert (= (and b!7832111 res!3115292) b!7832114))

(assert (= (and b!7832116 c!1440633) b!7832112))

(assert (= (and b!7832116 (not c!1440633)) b!7832113))

(assert (= (and b!7832112 res!3115294) b!7832109))

(assert (= (and b!7832113 (not res!3115291)) b!7832110))

(assert (= (and b!7832110 res!3115290) b!7832115))

(assert (= (or b!7832109 b!7832110) bm!726306))

(assert (= (or b!7832112 b!7832115) bm!726307))

(assert (= (or b!7832114 bm!726306) bm!726305))

(declare-fun m!8248942 () Bool)

(assert (=> b!7832111 m!8248942))

(declare-fun m!8248944 () Bool)

(assert (=> bm!726305 m!8248944))

(declare-fun m!8248946 () Bool)

(assert (=> bm!726307 m!8248946))

(assert (=> start!742198 d!2350994))

(declare-fun e!4631816 () Bool)

(declare-fun b!7832121 () Bool)

(declare-fun lt!2676968 () List!73798)

(assert (=> b!7832121 (= e!4631816 (or (not (= s2Rec!453 Nil!73674)) (= lt!2676968 s1Rec!453)))))

(declare-fun b!7832118 () Bool)

(declare-fun e!4631817 () List!73798)

(assert (=> b!7832118 (= e!4631817 s2Rec!453)))

(declare-fun d!2350996 () Bool)

(assert (=> d!2350996 e!4631816))

(declare-fun res!3115296 () Bool)

(assert (=> d!2350996 (=> (not res!3115296) (not e!4631816))))

(assert (=> d!2350996 (= res!3115296 (= (content!15643 lt!2676968) ((_ map or) (content!15643 s1Rec!453) (content!15643 s2Rec!453))))))

(assert (=> d!2350996 (= lt!2676968 e!4631817)))

(declare-fun c!1440634 () Bool)

(assert (=> d!2350996 (= c!1440634 ((_ is Nil!73674) s1Rec!453))))

(assert (=> d!2350996 (= (++!17995 s1Rec!453 s2Rec!453) lt!2676968)))

(declare-fun b!7832120 () Bool)

(declare-fun res!3115295 () Bool)

(assert (=> b!7832120 (=> (not res!3115295) (not e!4631816))))

(assert (=> b!7832120 (= res!3115295 (= (size!42760 lt!2676968) (+ (size!42760 s1Rec!453) (size!42760 s2Rec!453))))))

(declare-fun b!7832119 () Bool)

(assert (=> b!7832119 (= e!4631817 (Cons!73674 (h!80122 s1Rec!453) (++!17995 (t!388533 s1Rec!453) s2Rec!453)))))

(assert (= (and d!2350996 c!1440634) b!7832118))

(assert (= (and d!2350996 (not c!1440634)) b!7832119))

(assert (= (and d!2350996 res!3115296) b!7832120))

(assert (= (and b!7832120 res!3115295) b!7832121))

(declare-fun m!8248948 () Bool)

(assert (=> d!2350996 m!8248948))

(declare-fun m!8248950 () Bool)

(assert (=> d!2350996 m!8248950))

(declare-fun m!8248952 () Bool)

(assert (=> d!2350996 m!8248952))

(declare-fun m!8248954 () Bool)

(assert (=> b!7832120 m!8248954))

(declare-fun m!8248956 () Bool)

(assert (=> b!7832120 m!8248956))

(declare-fun m!8248958 () Bool)

(assert (=> b!7832120 m!8248958))

(declare-fun m!8248960 () Bool)

(assert (=> b!7832119 m!8248960))

(assert (=> b!7832035 d!2350996))

(declare-fun b!7832190 () Bool)

(declare-fun e!4631856 () Bool)

(declare-fun e!4631857 () Bool)

(assert (=> b!7832190 (= e!4631856 e!4631857)))

(declare-fun c!1440652 () Bool)

(assert (=> b!7832190 (= c!1440652 ((_ is EmptyLang!20961) r1!6261))))

(declare-fun b!7832191 () Bool)

(declare-fun e!4631858 () Bool)

(declare-fun head!15992 (List!73798) C!42248)

(assert (=> b!7832191 (= e!4631858 (= (head!15992 s1!4101) (c!1440616 r1!6261)))))

(declare-fun d!2350998 () Bool)

(assert (=> d!2350998 e!4631856))

(declare-fun c!1440651 () Bool)

(assert (=> d!2350998 (= c!1440651 ((_ is EmptyExpr!20961) r1!6261))))

(declare-fun lt!2676976 () Bool)

(declare-fun e!4631855 () Bool)

(assert (=> d!2350998 (= lt!2676976 e!4631855)))

(declare-fun c!1440650 () Bool)

(declare-fun isEmpty!42291 (List!73798) Bool)

(assert (=> d!2350998 (= c!1440650 (isEmpty!42291 s1!4101))))

(assert (=> d!2350998 (validRegex!11375 r1!6261)))

(assert (=> d!2350998 (= (matchR!10417 r1!6261 s1!4101) lt!2676976)))

(declare-fun b!7832192 () Bool)

(declare-fun res!3115341 () Bool)

(declare-fun e!4631854 () Bool)

(assert (=> b!7832192 (=> res!3115341 e!4631854)))

(assert (=> b!7832192 (= res!3115341 e!4631858)))

(declare-fun res!3115335 () Bool)

(assert (=> b!7832192 (=> (not res!3115335) (not e!4631858))))

(assert (=> b!7832192 (= res!3115335 lt!2676976)))

(declare-fun b!7832193 () Bool)

(declare-fun res!3115337 () Bool)

(declare-fun e!4631852 () Bool)

(assert (=> b!7832193 (=> res!3115337 e!4631852)))

(declare-fun tail!15533 (List!73798) List!73798)

(assert (=> b!7832193 (= res!3115337 (not (isEmpty!42291 (tail!15533 s1!4101))))))

(declare-fun b!7832194 () Bool)

(assert (=> b!7832194 (= e!4631857 (not lt!2676976))))

(declare-fun b!7832195 () Bool)

(declare-fun res!3115336 () Bool)

(assert (=> b!7832195 (=> (not res!3115336) (not e!4631858))))

(declare-fun call!726317 () Bool)

(assert (=> b!7832195 (= res!3115336 (not call!726317))))

(declare-fun b!7832196 () Bool)

(assert (=> b!7832196 (= e!4631855 (nullable!9303 r1!6261))))

(declare-fun b!7832197 () Bool)

(declare-fun derivativeStep!6262 (Regex!20961 C!42248) Regex!20961)

(assert (=> b!7832197 (= e!4631855 (matchR!10417 (derivativeStep!6262 r1!6261 (head!15992 s1!4101)) (tail!15533 s1!4101)))))

(declare-fun b!7832198 () Bool)

(declare-fun e!4631853 () Bool)

(assert (=> b!7832198 (= e!4631853 e!4631852)))

(declare-fun res!3115339 () Bool)

(assert (=> b!7832198 (=> res!3115339 e!4631852)))

(assert (=> b!7832198 (= res!3115339 call!726317)))

(declare-fun b!7832199 () Bool)

(assert (=> b!7832199 (= e!4631856 (= lt!2676976 call!726317))))

(declare-fun b!7832200 () Bool)

(declare-fun res!3115338 () Bool)

(assert (=> b!7832200 (=> res!3115338 e!4631854)))

(assert (=> b!7832200 (= res!3115338 (not ((_ is ElementMatch!20961) r1!6261)))))

(assert (=> b!7832200 (= e!4631857 e!4631854)))

(declare-fun b!7832201 () Bool)

(declare-fun res!3115340 () Bool)

(assert (=> b!7832201 (=> (not res!3115340) (not e!4631858))))

(assert (=> b!7832201 (= res!3115340 (isEmpty!42291 (tail!15533 s1!4101)))))

(declare-fun bm!726312 () Bool)

(assert (=> bm!726312 (= call!726317 (isEmpty!42291 s1!4101))))

(declare-fun b!7832202 () Bool)

(assert (=> b!7832202 (= e!4631854 e!4631853)))

(declare-fun res!3115342 () Bool)

(assert (=> b!7832202 (=> (not res!3115342) (not e!4631853))))

(assert (=> b!7832202 (= res!3115342 (not lt!2676976))))

(declare-fun b!7832203 () Bool)

(assert (=> b!7832203 (= e!4631852 (not (= (head!15992 s1!4101) (c!1440616 r1!6261))))))

(assert (= (and d!2350998 c!1440650) b!7832196))

(assert (= (and d!2350998 (not c!1440650)) b!7832197))

(assert (= (and d!2350998 c!1440651) b!7832199))

(assert (= (and d!2350998 (not c!1440651)) b!7832190))

(assert (= (and b!7832190 c!1440652) b!7832194))

(assert (= (and b!7832190 (not c!1440652)) b!7832200))

(assert (= (and b!7832200 (not res!3115338)) b!7832192))

(assert (= (and b!7832192 res!3115335) b!7832195))

(assert (= (and b!7832195 res!3115336) b!7832201))

(assert (= (and b!7832201 res!3115340) b!7832191))

(assert (= (and b!7832192 (not res!3115341)) b!7832202))

(assert (= (and b!7832202 res!3115342) b!7832198))

(assert (= (and b!7832198 (not res!3115339)) b!7832193))

(assert (= (and b!7832193 (not res!3115337)) b!7832203))

(assert (= (or b!7832199 b!7832195 b!7832198) bm!726312))

(declare-fun m!8249004 () Bool)

(assert (=> b!7832201 m!8249004))

(assert (=> b!7832201 m!8249004))

(declare-fun m!8249006 () Bool)

(assert (=> b!7832201 m!8249006))

(assert (=> b!7832193 m!8249004))

(assert (=> b!7832193 m!8249004))

(assert (=> b!7832193 m!8249006))

(declare-fun m!8249008 () Bool)

(assert (=> b!7832203 m!8249008))

(declare-fun m!8249010 () Bool)

(assert (=> b!7832196 m!8249010))

(assert (=> b!7832197 m!8249008))

(assert (=> b!7832197 m!8249008))

(declare-fun m!8249012 () Bool)

(assert (=> b!7832197 m!8249012))

(assert (=> b!7832197 m!8249004))

(assert (=> b!7832197 m!8249012))

(assert (=> b!7832197 m!8249004))

(declare-fun m!8249014 () Bool)

(assert (=> b!7832197 m!8249014))

(assert (=> b!7832191 m!8249008))

(declare-fun m!8249016 () Bool)

(assert (=> bm!726312 m!8249016))

(assert (=> d!2350998 m!8249016))

(assert (=> d!2350998 m!8248904))

(assert (=> b!7832041 d!2350998))

(declare-fun b!7832228 () Bool)

(declare-fun e!4631878 () Bool)

(declare-fun e!4631877 () Bool)

(assert (=> b!7832228 (= e!4631878 e!4631877)))

(declare-fun res!3115367 () Bool)

(assert (=> b!7832228 (=> (not res!3115367) (not e!4631877))))

(assert (=> b!7832228 (= res!3115367 (not ((_ is Nil!73674) s1!4101)))))

(declare-fun b!7832229 () Bool)

(declare-fun res!3115366 () Bool)

(assert (=> b!7832229 (=> (not res!3115366) (not e!4631877))))

(assert (=> b!7832229 (= res!3115366 (= (head!15992 s1Rec!453) (head!15992 s1!4101)))))

(declare-fun b!7832231 () Bool)

(declare-fun e!4631876 () Bool)

(assert (=> b!7832231 (= e!4631876 (>= (size!42760 s1!4101) (size!42760 s1Rec!453)))))

(declare-fun b!7832230 () Bool)

(assert (=> b!7832230 (= e!4631877 (isPrefix!6311 (tail!15533 s1Rec!453) (tail!15533 s1!4101)))))

(declare-fun d!2351006 () Bool)

(assert (=> d!2351006 e!4631876))

(declare-fun res!3115365 () Bool)

(assert (=> d!2351006 (=> res!3115365 e!4631876)))

(declare-fun lt!2676983 () Bool)

(assert (=> d!2351006 (= res!3115365 (not lt!2676983))))

(assert (=> d!2351006 (= lt!2676983 e!4631878)))

(declare-fun res!3115368 () Bool)

(assert (=> d!2351006 (=> res!3115368 e!4631878)))

(assert (=> d!2351006 (= res!3115368 ((_ is Nil!73674) s1Rec!453))))

(assert (=> d!2351006 (= (isPrefix!6311 s1Rec!453 s1!4101) lt!2676983)))

(assert (= (and d!2351006 (not res!3115368)) b!7832228))

(assert (= (and b!7832228 res!3115367) b!7832229))

(assert (= (and b!7832229 res!3115366) b!7832230))

(assert (= (and d!2351006 (not res!3115365)) b!7832231))

(declare-fun m!8249040 () Bool)

(assert (=> b!7832229 m!8249040))

(assert (=> b!7832229 m!8249008))

(assert (=> b!7832231 m!8248936))

(assert (=> b!7832231 m!8248956))

(declare-fun m!8249042 () Bool)

(assert (=> b!7832230 m!8249042))

(assert (=> b!7832230 m!8249004))

(assert (=> b!7832230 m!8249042))

(assert (=> b!7832230 m!8249004))

(declare-fun m!8249044 () Bool)

(assert (=> b!7832230 m!8249044))

(assert (=> b!7832029 d!2351006))

(declare-fun b!7832232 () Bool)

(declare-fun e!4631883 () Bool)

(declare-fun e!4631884 () Bool)

(assert (=> b!7832232 (= e!4631883 e!4631884)))

(declare-fun c!1440656 () Bool)

(assert (=> b!7832232 (= c!1440656 ((_ is EmptyLang!20961) r1!6261))))

(declare-fun b!7832233 () Bool)

(declare-fun e!4631885 () Bool)

(assert (=> b!7832233 (= e!4631885 (= (head!15992 s1Rec!453) (c!1440616 r1!6261)))))

(declare-fun d!2351014 () Bool)

(assert (=> d!2351014 e!4631883))

(declare-fun c!1440655 () Bool)

(assert (=> d!2351014 (= c!1440655 ((_ is EmptyExpr!20961) r1!6261))))

(declare-fun lt!2676984 () Bool)

(declare-fun e!4631882 () Bool)

(assert (=> d!2351014 (= lt!2676984 e!4631882)))

(declare-fun c!1440654 () Bool)

(assert (=> d!2351014 (= c!1440654 (isEmpty!42291 s1Rec!453))))

(assert (=> d!2351014 (validRegex!11375 r1!6261)))

(assert (=> d!2351014 (= (matchR!10417 r1!6261 s1Rec!453) lt!2676984)))

(declare-fun b!7832234 () Bool)

(declare-fun res!3115375 () Bool)

(declare-fun e!4631881 () Bool)

(assert (=> b!7832234 (=> res!3115375 e!4631881)))

(assert (=> b!7832234 (= res!3115375 e!4631885)))

(declare-fun res!3115369 () Bool)

(assert (=> b!7832234 (=> (not res!3115369) (not e!4631885))))

(assert (=> b!7832234 (= res!3115369 lt!2676984)))

(declare-fun b!7832235 () Bool)

(declare-fun res!3115371 () Bool)

(declare-fun e!4631879 () Bool)

(assert (=> b!7832235 (=> res!3115371 e!4631879)))

(assert (=> b!7832235 (= res!3115371 (not (isEmpty!42291 (tail!15533 s1Rec!453))))))

(declare-fun b!7832236 () Bool)

(assert (=> b!7832236 (= e!4631884 (not lt!2676984))))

(declare-fun b!7832237 () Bool)

(declare-fun res!3115370 () Bool)

(assert (=> b!7832237 (=> (not res!3115370) (not e!4631885))))

(declare-fun call!726318 () Bool)

(assert (=> b!7832237 (= res!3115370 (not call!726318))))

(declare-fun b!7832238 () Bool)

(assert (=> b!7832238 (= e!4631882 (nullable!9303 r1!6261))))

(declare-fun b!7832239 () Bool)

(assert (=> b!7832239 (= e!4631882 (matchR!10417 (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453)) (tail!15533 s1Rec!453)))))

(declare-fun b!7832240 () Bool)

(declare-fun e!4631880 () Bool)

(assert (=> b!7832240 (= e!4631880 e!4631879)))

(declare-fun res!3115373 () Bool)

(assert (=> b!7832240 (=> res!3115373 e!4631879)))

(assert (=> b!7832240 (= res!3115373 call!726318)))

(declare-fun b!7832241 () Bool)

(assert (=> b!7832241 (= e!4631883 (= lt!2676984 call!726318))))

(declare-fun b!7832242 () Bool)

(declare-fun res!3115372 () Bool)

(assert (=> b!7832242 (=> res!3115372 e!4631881)))

(assert (=> b!7832242 (= res!3115372 (not ((_ is ElementMatch!20961) r1!6261)))))

(assert (=> b!7832242 (= e!4631884 e!4631881)))

(declare-fun b!7832243 () Bool)

(declare-fun res!3115374 () Bool)

(assert (=> b!7832243 (=> (not res!3115374) (not e!4631885))))

(assert (=> b!7832243 (= res!3115374 (isEmpty!42291 (tail!15533 s1Rec!453)))))

(declare-fun bm!726313 () Bool)

(assert (=> bm!726313 (= call!726318 (isEmpty!42291 s1Rec!453))))

(declare-fun b!7832244 () Bool)

(assert (=> b!7832244 (= e!4631881 e!4631880)))

(declare-fun res!3115376 () Bool)

(assert (=> b!7832244 (=> (not res!3115376) (not e!4631880))))

(assert (=> b!7832244 (= res!3115376 (not lt!2676984))))

(declare-fun b!7832245 () Bool)

(assert (=> b!7832245 (= e!4631879 (not (= (head!15992 s1Rec!453) (c!1440616 r1!6261))))))

(assert (= (and d!2351014 c!1440654) b!7832238))

(assert (= (and d!2351014 (not c!1440654)) b!7832239))

(assert (= (and d!2351014 c!1440655) b!7832241))

(assert (= (and d!2351014 (not c!1440655)) b!7832232))

(assert (= (and b!7832232 c!1440656) b!7832236))

(assert (= (and b!7832232 (not c!1440656)) b!7832242))

(assert (= (and b!7832242 (not res!3115372)) b!7832234))

(assert (= (and b!7832234 res!3115369) b!7832237))

(assert (= (and b!7832237 res!3115370) b!7832243))

(assert (= (and b!7832243 res!3115374) b!7832233))

(assert (= (and b!7832234 (not res!3115375)) b!7832244))

(assert (= (and b!7832244 res!3115376) b!7832240))

(assert (= (and b!7832240 (not res!3115373)) b!7832235))

(assert (= (and b!7832235 (not res!3115371)) b!7832245))

(assert (= (or b!7832241 b!7832237 b!7832240) bm!726313))

(assert (=> b!7832243 m!8249042))

(assert (=> b!7832243 m!8249042))

(declare-fun m!8249046 () Bool)

(assert (=> b!7832243 m!8249046))

(assert (=> b!7832235 m!8249042))

(assert (=> b!7832235 m!8249042))

(assert (=> b!7832235 m!8249046))

(assert (=> b!7832245 m!8249040))

(assert (=> b!7832238 m!8249010))

(assert (=> b!7832239 m!8249040))

(assert (=> b!7832239 m!8249040))

(declare-fun m!8249048 () Bool)

(assert (=> b!7832239 m!8249048))

(assert (=> b!7832239 m!8249042))

(assert (=> b!7832239 m!8249048))

(assert (=> b!7832239 m!8249042))

(declare-fun m!8249050 () Bool)

(assert (=> b!7832239 m!8249050))

(assert (=> b!7832233 m!8249040))

(declare-fun m!8249052 () Bool)

(assert (=> bm!726313 m!8249052))

(assert (=> d!2351014 m!8249052))

(assert (=> d!2351014 m!8248904))

(assert (=> b!7832032 d!2351014))

(declare-fun d!2351016 () Bool)

(declare-fun isEmpty!42293 (Option!17788) Bool)

(assert (=> d!2351016 (= (isDefined!14394 (findConcatSeparation!3818 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274)) (not (isEmpty!42293 (findConcatSeparation!3818 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274))))))

(declare-fun bs!1966817 () Bool)

(assert (= bs!1966817 d!2351016))

(assert (=> bs!1966817 m!8248914))

(declare-fun m!8249054 () Bool)

(assert (=> bs!1966817 m!8249054))

(assert (=> b!7832027 d!2351016))

(declare-fun b!7832323 () Bool)

(declare-fun res!3115421 () Bool)

(declare-fun e!4631934 () Bool)

(assert (=> b!7832323 (=> (not res!3115421) (not e!4631934))))

(declare-fun lt!2677001 () Option!17788)

(declare-fun get!26387 (Option!17788) tuple2!69988)

(assert (=> b!7832323 (= res!3115421 (matchR!10417 r1!6261 (_1!38297 (get!26387 lt!2677001))))))

(declare-fun d!2351018 () Bool)

(declare-fun e!4631933 () Bool)

(assert (=> d!2351018 e!4631933))

(declare-fun res!3115423 () Bool)

(assert (=> d!2351018 (=> res!3115423 e!4631933)))

(assert (=> d!2351018 (= res!3115423 e!4631934)))

(declare-fun res!3115420 () Bool)

(assert (=> d!2351018 (=> (not res!3115420) (not e!4631934))))

(assert (=> d!2351018 (= res!3115420 (isDefined!14394 lt!2677001))))

(declare-fun e!4631932 () Option!17788)

(assert (=> d!2351018 (= lt!2677001 e!4631932)))

(declare-fun c!1440675 () Bool)

(declare-fun e!4631935 () Bool)

(assert (=> d!2351018 (= c!1440675 e!4631935)))

(declare-fun res!3115424 () Bool)

(assert (=> d!2351018 (=> (not res!3115424) (not e!4631935))))

(assert (=> d!2351018 (= res!3115424 (matchR!10417 r1!6261 s1Rec!453))))

(assert (=> d!2351018 (validRegex!11375 r1!6261)))

(assert (=> d!2351018 (= (findConcatSeparation!3818 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274) lt!2677001)))

(declare-fun b!7832324 () Bool)

(assert (=> b!7832324 (= e!4631932 (Some!17787 (tuple2!69989 s1Rec!453 s2Rec!453)))))

(declare-fun b!7832325 () Bool)

(declare-fun e!4631936 () Option!17788)

(assert (=> b!7832325 (= e!4631936 None!17787)))

(declare-fun b!7832326 () Bool)

(declare-datatypes ((Unit!168696 0))(
  ( (Unit!168697) )
))
(declare-fun lt!2677003 () Unit!168696)

(declare-fun lt!2677002 () Unit!168696)

(assert (=> b!7832326 (= lt!2677003 lt!2677002)))

(assert (=> b!7832326 (= (++!17995 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (t!388533 s2Rec!453)) s!14274)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3434 (List!73798 C!42248 List!73798 List!73798) Unit!168696)

(assert (=> b!7832326 (= lt!2677002 (lemmaMoveElementToOtherListKeepsConcatEq!3434 s1Rec!453 (h!80122 s2Rec!453) (t!388533 s2Rec!453) s!14274))))

(assert (=> b!7832326 (= e!4631936 (findConcatSeparation!3818 r1!6261 r2!6199 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (t!388533 s2Rec!453) s!14274))))

(declare-fun b!7832327 () Bool)

(assert (=> b!7832327 (= e!4631932 e!4631936)))

(declare-fun c!1440674 () Bool)

(assert (=> b!7832327 (= c!1440674 ((_ is Nil!73674) s2Rec!453))))

(declare-fun b!7832328 () Bool)

(declare-fun res!3115422 () Bool)

(assert (=> b!7832328 (=> (not res!3115422) (not e!4631934))))

(assert (=> b!7832328 (= res!3115422 (matchR!10417 r2!6199 (_2!38297 (get!26387 lt!2677001))))))

(declare-fun b!7832329 () Bool)

(assert (=> b!7832329 (= e!4631933 (not (isDefined!14394 lt!2677001)))))

(declare-fun b!7832330 () Bool)

(assert (=> b!7832330 (= e!4631935 (matchR!10417 r2!6199 s2Rec!453))))

(declare-fun b!7832331 () Bool)

(assert (=> b!7832331 (= e!4631934 (= (++!17995 (_1!38297 (get!26387 lt!2677001)) (_2!38297 (get!26387 lt!2677001))) s!14274))))

(assert (= (and d!2351018 res!3115424) b!7832330))

(assert (= (and d!2351018 c!1440675) b!7832324))

(assert (= (and d!2351018 (not c!1440675)) b!7832327))

(assert (= (and b!7832327 c!1440674) b!7832325))

(assert (= (and b!7832327 (not c!1440674)) b!7832326))

(assert (= (and d!2351018 res!3115420) b!7832323))

(assert (= (and b!7832323 res!3115421) b!7832328))

(assert (= (and b!7832328 res!3115422) b!7832331))

(assert (= (and d!2351018 (not res!3115423)) b!7832329))

(assert (=> b!7832330 m!8248910))

(declare-fun m!8249086 () Bool)

(assert (=> b!7832329 m!8249086))

(declare-fun m!8249088 () Bool)

(assert (=> b!7832323 m!8249088))

(declare-fun m!8249090 () Bool)

(assert (=> b!7832323 m!8249090))

(assert (=> b!7832331 m!8249088))

(declare-fun m!8249092 () Bool)

(assert (=> b!7832331 m!8249092))

(declare-fun m!8249094 () Bool)

(assert (=> b!7832326 m!8249094))

(assert (=> b!7832326 m!8249094))

(declare-fun m!8249096 () Bool)

(assert (=> b!7832326 m!8249096))

(declare-fun m!8249098 () Bool)

(assert (=> b!7832326 m!8249098))

(assert (=> b!7832326 m!8249094))

(declare-fun m!8249100 () Bool)

(assert (=> b!7832326 m!8249100))

(assert (=> d!2351018 m!8249086))

(assert (=> d!2351018 m!8248918))

(assert (=> d!2351018 m!8248904))

(assert (=> b!7832328 m!8249088))

(declare-fun m!8249108 () Bool)

(assert (=> b!7832328 m!8249108))

(assert (=> b!7832027 d!2351018))

(declare-fun b!7832350 () Bool)

(declare-fun e!4631955 () Bool)

(declare-fun e!4631956 () Bool)

(assert (=> b!7832350 (= e!4631955 e!4631956)))

(declare-fun c!1440682 () Bool)

(assert (=> b!7832350 (= c!1440682 ((_ is EmptyLang!20961) r2!6199))))

(declare-fun b!7832351 () Bool)

(declare-fun e!4631957 () Bool)

(assert (=> b!7832351 (= e!4631957 (= (head!15992 s2!3721) (c!1440616 r2!6199)))))

(declare-fun d!2351026 () Bool)

(assert (=> d!2351026 e!4631955))

(declare-fun c!1440681 () Bool)

(assert (=> d!2351026 (= c!1440681 ((_ is EmptyExpr!20961) r2!6199))))

(declare-fun lt!2677004 () Bool)

(declare-fun e!4631954 () Bool)

(assert (=> d!2351026 (= lt!2677004 e!4631954)))

(declare-fun c!1440680 () Bool)

(assert (=> d!2351026 (= c!1440680 (isEmpty!42291 s2!3721))))

(assert (=> d!2351026 (validRegex!11375 r2!6199)))

(assert (=> d!2351026 (= (matchR!10417 r2!6199 s2!3721) lt!2677004)))

(declare-fun b!7832352 () Bool)

(declare-fun res!3115441 () Bool)

(declare-fun e!4631953 () Bool)

(assert (=> b!7832352 (=> res!3115441 e!4631953)))

(assert (=> b!7832352 (= res!3115441 e!4631957)))

(declare-fun res!3115435 () Bool)

(assert (=> b!7832352 (=> (not res!3115435) (not e!4631957))))

(assert (=> b!7832352 (= res!3115435 lt!2677004)))

(declare-fun b!7832353 () Bool)

(declare-fun res!3115437 () Bool)

(declare-fun e!4631951 () Bool)

(assert (=> b!7832353 (=> res!3115437 e!4631951)))

(assert (=> b!7832353 (= res!3115437 (not (isEmpty!42291 (tail!15533 s2!3721))))))

(declare-fun b!7832354 () Bool)

(assert (=> b!7832354 (= e!4631956 (not lt!2677004))))

(declare-fun b!7832355 () Bool)

(declare-fun res!3115436 () Bool)

(assert (=> b!7832355 (=> (not res!3115436) (not e!4631957))))

(declare-fun call!726332 () Bool)

(assert (=> b!7832355 (= res!3115436 (not call!726332))))

(declare-fun b!7832356 () Bool)

(assert (=> b!7832356 (= e!4631954 (nullable!9303 r2!6199))))

(declare-fun b!7832357 () Bool)

(assert (=> b!7832357 (= e!4631954 (matchR!10417 (derivativeStep!6262 r2!6199 (head!15992 s2!3721)) (tail!15533 s2!3721)))))

(declare-fun b!7832358 () Bool)

(declare-fun e!4631952 () Bool)

(assert (=> b!7832358 (= e!4631952 e!4631951)))

(declare-fun res!3115439 () Bool)

(assert (=> b!7832358 (=> res!3115439 e!4631951)))

(assert (=> b!7832358 (= res!3115439 call!726332)))

(declare-fun b!7832359 () Bool)

(assert (=> b!7832359 (= e!4631955 (= lt!2677004 call!726332))))

(declare-fun b!7832360 () Bool)

(declare-fun res!3115438 () Bool)

(assert (=> b!7832360 (=> res!3115438 e!4631953)))

(assert (=> b!7832360 (= res!3115438 (not ((_ is ElementMatch!20961) r2!6199)))))

(assert (=> b!7832360 (= e!4631956 e!4631953)))

(declare-fun b!7832361 () Bool)

(declare-fun res!3115440 () Bool)

(assert (=> b!7832361 (=> (not res!3115440) (not e!4631957))))

(assert (=> b!7832361 (= res!3115440 (isEmpty!42291 (tail!15533 s2!3721)))))

(declare-fun bm!726327 () Bool)

(assert (=> bm!726327 (= call!726332 (isEmpty!42291 s2!3721))))

(declare-fun b!7832362 () Bool)

(assert (=> b!7832362 (= e!4631953 e!4631952)))

(declare-fun res!3115442 () Bool)

(assert (=> b!7832362 (=> (not res!3115442) (not e!4631952))))

(assert (=> b!7832362 (= res!3115442 (not lt!2677004))))

(declare-fun b!7832363 () Bool)

(assert (=> b!7832363 (= e!4631951 (not (= (head!15992 s2!3721) (c!1440616 r2!6199))))))

(assert (= (and d!2351026 c!1440680) b!7832356))

(assert (= (and d!2351026 (not c!1440680)) b!7832357))

(assert (= (and d!2351026 c!1440681) b!7832359))

(assert (= (and d!2351026 (not c!1440681)) b!7832350))

(assert (= (and b!7832350 c!1440682) b!7832354))

(assert (= (and b!7832350 (not c!1440682)) b!7832360))

(assert (= (and b!7832360 (not res!3115438)) b!7832352))

(assert (= (and b!7832352 res!3115435) b!7832355))

(assert (= (and b!7832355 res!3115436) b!7832361))

(assert (= (and b!7832361 res!3115440) b!7832351))

(assert (= (and b!7832352 (not res!3115441)) b!7832362))

(assert (= (and b!7832362 res!3115442) b!7832358))

(assert (= (and b!7832358 (not res!3115439)) b!7832353))

(assert (= (and b!7832353 (not res!3115437)) b!7832363))

(assert (= (or b!7832359 b!7832355 b!7832358) bm!726327))

(declare-fun m!8249116 () Bool)

(assert (=> b!7832361 m!8249116))

(assert (=> b!7832361 m!8249116))

(declare-fun m!8249118 () Bool)

(assert (=> b!7832361 m!8249118))

(assert (=> b!7832353 m!8249116))

(assert (=> b!7832353 m!8249116))

(assert (=> b!7832353 m!8249118))

(declare-fun m!8249120 () Bool)

(assert (=> b!7832363 m!8249120))

(declare-fun m!8249122 () Bool)

(assert (=> b!7832356 m!8249122))

(assert (=> b!7832357 m!8249120))

(assert (=> b!7832357 m!8249120))

(declare-fun m!8249124 () Bool)

(assert (=> b!7832357 m!8249124))

(assert (=> b!7832357 m!8249116))

(assert (=> b!7832357 m!8249124))

(assert (=> b!7832357 m!8249116))

(declare-fun m!8249126 () Bool)

(assert (=> b!7832357 m!8249126))

(assert (=> b!7832351 m!8249120))

(declare-fun m!8249128 () Bool)

(assert (=> bm!726327 m!8249128))

(assert (=> d!2351026 m!8249128))

(assert (=> d!2351026 m!8248900))

(assert (=> b!7832022 d!2351026))

(declare-fun b!7832378 () Bool)

(declare-fun e!4631969 () Bool)

(declare-fun e!4631970 () Bool)

(assert (=> b!7832378 (= e!4631969 e!4631970)))

(declare-fun c!1440688 () Bool)

(assert (=> b!7832378 (= c!1440688 ((_ is EmptyLang!20961) r2!6199))))

(declare-fun b!7832379 () Bool)

(declare-fun e!4631971 () Bool)

(assert (=> b!7832379 (= e!4631971 (= (head!15992 s2Rec!453) (c!1440616 r2!6199)))))

(declare-fun d!2351030 () Bool)

(assert (=> d!2351030 e!4631969))

(declare-fun c!1440687 () Bool)

(assert (=> d!2351030 (= c!1440687 ((_ is EmptyExpr!20961) r2!6199))))

(declare-fun lt!2677006 () Bool)

(declare-fun e!4631968 () Bool)

(assert (=> d!2351030 (= lt!2677006 e!4631968)))

(declare-fun c!1440686 () Bool)

(assert (=> d!2351030 (= c!1440686 (isEmpty!42291 s2Rec!453))))

(assert (=> d!2351030 (validRegex!11375 r2!6199)))

(assert (=> d!2351030 (= (matchR!10417 r2!6199 s2Rec!453) lt!2677006)))

(declare-fun b!7832380 () Bool)

(declare-fun res!3115457 () Bool)

(declare-fun e!4631967 () Bool)

(assert (=> b!7832380 (=> res!3115457 e!4631967)))

(assert (=> b!7832380 (= res!3115457 e!4631971)))

(declare-fun res!3115451 () Bool)

(assert (=> b!7832380 (=> (not res!3115451) (not e!4631971))))

(assert (=> b!7832380 (= res!3115451 lt!2677006)))

(declare-fun b!7832381 () Bool)

(declare-fun res!3115453 () Bool)

(declare-fun e!4631965 () Bool)

(assert (=> b!7832381 (=> res!3115453 e!4631965)))

(assert (=> b!7832381 (= res!3115453 (not (isEmpty!42291 (tail!15533 s2Rec!453))))))

(declare-fun b!7832382 () Bool)

(assert (=> b!7832382 (= e!4631970 (not lt!2677006))))

(declare-fun b!7832383 () Bool)

(declare-fun res!3115452 () Bool)

(assert (=> b!7832383 (=> (not res!3115452) (not e!4631971))))

(declare-fun call!726334 () Bool)

(assert (=> b!7832383 (= res!3115452 (not call!726334))))

(declare-fun b!7832384 () Bool)

(assert (=> b!7832384 (= e!4631968 (nullable!9303 r2!6199))))

(declare-fun b!7832385 () Bool)

(assert (=> b!7832385 (= e!4631968 (matchR!10417 (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453)) (tail!15533 s2Rec!453)))))

(declare-fun b!7832386 () Bool)

(declare-fun e!4631966 () Bool)

(assert (=> b!7832386 (= e!4631966 e!4631965)))

(declare-fun res!3115455 () Bool)

(assert (=> b!7832386 (=> res!3115455 e!4631965)))

(assert (=> b!7832386 (= res!3115455 call!726334)))

(declare-fun b!7832387 () Bool)

(assert (=> b!7832387 (= e!4631969 (= lt!2677006 call!726334))))

(declare-fun b!7832388 () Bool)

(declare-fun res!3115454 () Bool)

(assert (=> b!7832388 (=> res!3115454 e!4631967)))

(assert (=> b!7832388 (= res!3115454 (not ((_ is ElementMatch!20961) r2!6199)))))

(assert (=> b!7832388 (= e!4631970 e!4631967)))

(declare-fun b!7832389 () Bool)

(declare-fun res!3115456 () Bool)

(assert (=> b!7832389 (=> (not res!3115456) (not e!4631971))))

(assert (=> b!7832389 (= res!3115456 (isEmpty!42291 (tail!15533 s2Rec!453)))))

(declare-fun bm!726329 () Bool)

(assert (=> bm!726329 (= call!726334 (isEmpty!42291 s2Rec!453))))

(declare-fun b!7832390 () Bool)

(assert (=> b!7832390 (= e!4631967 e!4631966)))

(declare-fun res!3115458 () Bool)

(assert (=> b!7832390 (=> (not res!3115458) (not e!4631966))))

(assert (=> b!7832390 (= res!3115458 (not lt!2677006))))

(declare-fun b!7832391 () Bool)

(assert (=> b!7832391 (= e!4631965 (not (= (head!15992 s2Rec!453) (c!1440616 r2!6199))))))

(assert (= (and d!2351030 c!1440686) b!7832384))

(assert (= (and d!2351030 (not c!1440686)) b!7832385))

(assert (= (and d!2351030 c!1440687) b!7832387))

(assert (= (and d!2351030 (not c!1440687)) b!7832378))

(assert (= (and b!7832378 c!1440688) b!7832382))

(assert (= (and b!7832378 (not c!1440688)) b!7832388))

(assert (= (and b!7832388 (not res!3115454)) b!7832380))

(assert (= (and b!7832380 res!3115451) b!7832383))

(assert (= (and b!7832383 res!3115452) b!7832389))

(assert (= (and b!7832389 res!3115456) b!7832379))

(assert (= (and b!7832380 (not res!3115457)) b!7832390))

(assert (= (and b!7832390 res!3115458) b!7832386))

(assert (= (and b!7832386 (not res!3115455)) b!7832381))

(assert (= (and b!7832381 (not res!3115453)) b!7832391))

(assert (= (or b!7832387 b!7832383 b!7832386) bm!726329))

(declare-fun m!8249138 () Bool)

(assert (=> b!7832389 m!8249138))

(assert (=> b!7832389 m!8249138))

(declare-fun m!8249140 () Bool)

(assert (=> b!7832389 m!8249140))

(assert (=> b!7832381 m!8249138))

(assert (=> b!7832381 m!8249138))

(assert (=> b!7832381 m!8249140))

(declare-fun m!8249142 () Bool)

(assert (=> b!7832391 m!8249142))

(assert (=> b!7832384 m!8249122))

(assert (=> b!7832385 m!8249142))

(assert (=> b!7832385 m!8249142))

(declare-fun m!8249144 () Bool)

(assert (=> b!7832385 m!8249144))

(assert (=> b!7832385 m!8249138))

(assert (=> b!7832385 m!8249144))

(assert (=> b!7832385 m!8249138))

(declare-fun m!8249146 () Bool)

(assert (=> b!7832385 m!8249146))

(assert (=> b!7832379 m!8249142))

(declare-fun m!8249148 () Bool)

(assert (=> bm!726329 m!8249148))

(assert (=> d!2351030 m!8249148))

(assert (=> d!2351030 m!8248900))

(assert (=> b!7832038 d!2351030))

(declare-fun b!7832438 () Bool)

(declare-fun e!4631985 () Bool)

(declare-fun tp!2316154 () Bool)

(declare-fun tp!2316155 () Bool)

(assert (=> b!7832438 (= e!4631985 (and tp!2316154 tp!2316155))))

(assert (=> b!7832020 (= tp!2316103 e!4631985)))

(declare-fun b!7832435 () Bool)

(assert (=> b!7832435 (= e!4631985 tp_is_empty!52277)))

(declare-fun b!7832436 () Bool)

(declare-fun tp!2316156 () Bool)

(declare-fun tp!2316153 () Bool)

(assert (=> b!7832436 (= e!4631985 (and tp!2316156 tp!2316153))))

(declare-fun b!7832437 () Bool)

(declare-fun tp!2316157 () Bool)

(assert (=> b!7832437 (= e!4631985 tp!2316157)))

(assert (= (and b!7832020 ((_ is ElementMatch!20961) (regOne!42434 r1!6261))) b!7832435))

(assert (= (and b!7832020 ((_ is Concat!29806) (regOne!42434 r1!6261))) b!7832436))

(assert (= (and b!7832020 ((_ is Star!20961) (regOne!42434 r1!6261))) b!7832437))

(assert (= (and b!7832020 ((_ is Union!20961) (regOne!42434 r1!6261))) b!7832438))

(declare-fun b!7832450 () Bool)

(declare-fun e!4631988 () Bool)

(declare-fun tp!2316169 () Bool)

(declare-fun tp!2316170 () Bool)

(assert (=> b!7832450 (= e!4631988 (and tp!2316169 tp!2316170))))

(assert (=> b!7832020 (= tp!2316101 e!4631988)))

(declare-fun b!7832447 () Bool)

(assert (=> b!7832447 (= e!4631988 tp_is_empty!52277)))

(declare-fun b!7832448 () Bool)

(declare-fun tp!2316171 () Bool)

(declare-fun tp!2316168 () Bool)

(assert (=> b!7832448 (= e!4631988 (and tp!2316171 tp!2316168))))

(declare-fun b!7832449 () Bool)

(declare-fun tp!2316172 () Bool)

(assert (=> b!7832449 (= e!4631988 tp!2316172)))

(assert (= (and b!7832020 ((_ is ElementMatch!20961) (regTwo!42434 r1!6261))) b!7832447))

(assert (= (and b!7832020 ((_ is Concat!29806) (regTwo!42434 r1!6261))) b!7832448))

(assert (= (and b!7832020 ((_ is Star!20961) (regTwo!42434 r1!6261))) b!7832449))

(assert (= (and b!7832020 ((_ is Union!20961) (regTwo!42434 r1!6261))) b!7832450))

(declare-fun b!7832467 () Bool)

(declare-fun e!4631994 () Bool)

(declare-fun tp!2316190 () Bool)

(assert (=> b!7832467 (= e!4631994 (and tp_is_empty!52277 tp!2316190))))

(assert (=> b!7832021 (= tp!2316098 e!4631994)))

(assert (= (and b!7832021 ((_ is Cons!73674) (t!388533 s1Rec!453))) b!7832467))

(declare-fun b!7832472 () Bool)

(declare-fun e!4631996 () Bool)

(declare-fun tp!2316196 () Bool)

(assert (=> b!7832472 (= e!4631996 (and tp_is_empty!52277 tp!2316196))))

(assert (=> b!7832040 (= tp!2316102 e!4631996)))

(assert (= (and b!7832040 ((_ is Cons!73674) (t!388533 s2!3721))) b!7832472))

(declare-fun b!7832474 () Bool)

(declare-fun e!4631998 () Bool)

(declare-fun tp!2316198 () Bool)

(assert (=> b!7832474 (= e!4631998 (and tp_is_empty!52277 tp!2316198))))

(assert (=> b!7832030 (= tp!2316104 e!4631998)))

(assert (= (and b!7832030 ((_ is Cons!73674) (t!388533 s2Rec!453))) b!7832474))

(declare-fun b!7832479 () Bool)

(declare-fun e!4632000 () Bool)

(declare-fun tp!2316201 () Bool)

(declare-fun tp!2316202 () Bool)

(assert (=> b!7832479 (= e!4632000 (and tp!2316201 tp!2316202))))

(assert (=> b!7832028 (= tp!2316093 e!4632000)))

(declare-fun b!7832476 () Bool)

(assert (=> b!7832476 (= e!4632000 tp_is_empty!52277)))

(declare-fun b!7832477 () Bool)

(declare-fun tp!2316203 () Bool)

(declare-fun tp!2316200 () Bool)

(assert (=> b!7832477 (= e!4632000 (and tp!2316203 tp!2316200))))

(declare-fun b!7832478 () Bool)

(declare-fun tp!2316204 () Bool)

(assert (=> b!7832478 (= e!4632000 tp!2316204)))

(assert (= (and b!7832028 ((_ is ElementMatch!20961) (regOne!42435 r1!6261))) b!7832476))

(assert (= (and b!7832028 ((_ is Concat!29806) (regOne!42435 r1!6261))) b!7832477))

(assert (= (and b!7832028 ((_ is Star!20961) (regOne!42435 r1!6261))) b!7832478))

(assert (= (and b!7832028 ((_ is Union!20961) (regOne!42435 r1!6261))) b!7832479))

(declare-fun b!7832483 () Bool)

(declare-fun e!4632001 () Bool)

(declare-fun tp!2316206 () Bool)

(declare-fun tp!2316207 () Bool)

(assert (=> b!7832483 (= e!4632001 (and tp!2316206 tp!2316207))))

(assert (=> b!7832028 (= tp!2316107 e!4632001)))

(declare-fun b!7832480 () Bool)

(assert (=> b!7832480 (= e!4632001 tp_is_empty!52277)))

(declare-fun b!7832481 () Bool)

(declare-fun tp!2316208 () Bool)

(declare-fun tp!2316205 () Bool)

(assert (=> b!7832481 (= e!4632001 (and tp!2316208 tp!2316205))))

(declare-fun b!7832482 () Bool)

(declare-fun tp!2316209 () Bool)

(assert (=> b!7832482 (= e!4632001 tp!2316209)))

(assert (= (and b!7832028 ((_ is ElementMatch!20961) (regTwo!42435 r1!6261))) b!7832480))

(assert (= (and b!7832028 ((_ is Concat!29806) (regTwo!42435 r1!6261))) b!7832481))

(assert (= (and b!7832028 ((_ is Star!20961) (regTwo!42435 r1!6261))) b!7832482))

(assert (= (and b!7832028 ((_ is Union!20961) (regTwo!42435 r1!6261))) b!7832483))

(declare-fun b!7832487 () Bool)

(declare-fun e!4632002 () Bool)

(declare-fun tp!2316211 () Bool)

(declare-fun tp!2316212 () Bool)

(assert (=> b!7832487 (= e!4632002 (and tp!2316211 tp!2316212))))

(assert (=> b!7832039 (= tp!2316096 e!4632002)))

(declare-fun b!7832484 () Bool)

(assert (=> b!7832484 (= e!4632002 tp_is_empty!52277)))

(declare-fun b!7832485 () Bool)

(declare-fun tp!2316213 () Bool)

(declare-fun tp!2316210 () Bool)

(assert (=> b!7832485 (= e!4632002 (and tp!2316213 tp!2316210))))

(declare-fun b!7832486 () Bool)

(declare-fun tp!2316214 () Bool)

(assert (=> b!7832486 (= e!4632002 tp!2316214)))

(assert (= (and b!7832039 ((_ is ElementMatch!20961) (regOne!42435 r2!6199))) b!7832484))

(assert (= (and b!7832039 ((_ is Concat!29806) (regOne!42435 r2!6199))) b!7832485))

(assert (= (and b!7832039 ((_ is Star!20961) (regOne!42435 r2!6199))) b!7832486))

(assert (= (and b!7832039 ((_ is Union!20961) (regOne!42435 r2!6199))) b!7832487))

(declare-fun b!7832491 () Bool)

(declare-fun e!4632003 () Bool)

(declare-fun tp!2316216 () Bool)

(declare-fun tp!2316217 () Bool)

(assert (=> b!7832491 (= e!4632003 (and tp!2316216 tp!2316217))))

(assert (=> b!7832039 (= tp!2316105 e!4632003)))

(declare-fun b!7832488 () Bool)

(assert (=> b!7832488 (= e!4632003 tp_is_empty!52277)))

(declare-fun b!7832489 () Bool)

(declare-fun tp!2316218 () Bool)

(declare-fun tp!2316215 () Bool)

(assert (=> b!7832489 (= e!4632003 (and tp!2316218 tp!2316215))))

(declare-fun b!7832490 () Bool)

(declare-fun tp!2316219 () Bool)

(assert (=> b!7832490 (= e!4632003 tp!2316219)))

(assert (= (and b!7832039 ((_ is ElementMatch!20961) (regTwo!42435 r2!6199))) b!7832488))

(assert (= (and b!7832039 ((_ is Concat!29806) (regTwo!42435 r2!6199))) b!7832489))

(assert (= (and b!7832039 ((_ is Star!20961) (regTwo!42435 r2!6199))) b!7832490))

(assert (= (and b!7832039 ((_ is Union!20961) (regTwo!42435 r2!6199))) b!7832491))

(declare-fun b!7832495 () Bool)

(declare-fun e!4632004 () Bool)

(declare-fun tp!2316221 () Bool)

(declare-fun tp!2316222 () Bool)

(assert (=> b!7832495 (= e!4632004 (and tp!2316221 tp!2316222))))

(assert (=> b!7832037 (= tp!2316097 e!4632004)))

(declare-fun b!7832492 () Bool)

(assert (=> b!7832492 (= e!4632004 tp_is_empty!52277)))

(declare-fun b!7832493 () Bool)

(declare-fun tp!2316223 () Bool)

(declare-fun tp!2316220 () Bool)

(assert (=> b!7832493 (= e!4632004 (and tp!2316223 tp!2316220))))

(declare-fun b!7832494 () Bool)

(declare-fun tp!2316224 () Bool)

(assert (=> b!7832494 (= e!4632004 tp!2316224)))

(assert (= (and b!7832037 ((_ is ElementMatch!20961) (regOne!42434 r2!6199))) b!7832492))

(assert (= (and b!7832037 ((_ is Concat!29806) (regOne!42434 r2!6199))) b!7832493))

(assert (= (and b!7832037 ((_ is Star!20961) (regOne!42434 r2!6199))) b!7832494))

(assert (= (and b!7832037 ((_ is Union!20961) (regOne!42434 r2!6199))) b!7832495))

(declare-fun b!7832499 () Bool)

(declare-fun e!4632005 () Bool)

(declare-fun tp!2316226 () Bool)

(declare-fun tp!2316227 () Bool)

(assert (=> b!7832499 (= e!4632005 (and tp!2316226 tp!2316227))))

(assert (=> b!7832037 (= tp!2316099 e!4632005)))

(declare-fun b!7832496 () Bool)

(assert (=> b!7832496 (= e!4632005 tp_is_empty!52277)))

(declare-fun b!7832497 () Bool)

(declare-fun tp!2316228 () Bool)

(declare-fun tp!2316225 () Bool)

(assert (=> b!7832497 (= e!4632005 (and tp!2316228 tp!2316225))))

(declare-fun b!7832498 () Bool)

(declare-fun tp!2316229 () Bool)

(assert (=> b!7832498 (= e!4632005 tp!2316229)))

(assert (= (and b!7832037 ((_ is ElementMatch!20961) (regTwo!42434 r2!6199))) b!7832496))

(assert (= (and b!7832037 ((_ is Concat!29806) (regTwo!42434 r2!6199))) b!7832497))

(assert (= (and b!7832037 ((_ is Star!20961) (regTwo!42434 r2!6199))) b!7832498))

(assert (= (and b!7832037 ((_ is Union!20961) (regTwo!42434 r2!6199))) b!7832499))

(declare-fun b!7832503 () Bool)

(declare-fun e!4632006 () Bool)

(declare-fun tp!2316231 () Bool)

(declare-fun tp!2316232 () Bool)

(assert (=> b!7832503 (= e!4632006 (and tp!2316231 tp!2316232))))

(assert (=> b!7832024 (= tp!2316095 e!4632006)))

(declare-fun b!7832500 () Bool)

(assert (=> b!7832500 (= e!4632006 tp_is_empty!52277)))

(declare-fun b!7832501 () Bool)

(declare-fun tp!2316233 () Bool)

(declare-fun tp!2316230 () Bool)

(assert (=> b!7832501 (= e!4632006 (and tp!2316233 tp!2316230))))

(declare-fun b!7832502 () Bool)

(declare-fun tp!2316234 () Bool)

(assert (=> b!7832502 (= e!4632006 tp!2316234)))

(assert (= (and b!7832024 ((_ is ElementMatch!20961) (reg!21290 r2!6199))) b!7832500))

(assert (= (and b!7832024 ((_ is Concat!29806) (reg!21290 r2!6199))) b!7832501))

(assert (= (and b!7832024 ((_ is Star!20961) (reg!21290 r2!6199))) b!7832502))

(assert (= (and b!7832024 ((_ is Union!20961) (reg!21290 r2!6199))) b!7832503))

(declare-fun b!7832504 () Bool)

(declare-fun e!4632007 () Bool)

(declare-fun tp!2316235 () Bool)

(assert (=> b!7832504 (= e!4632007 (and tp_is_empty!52277 tp!2316235))))

(assert (=> b!7832025 (= tp!2316100 e!4632007)))

(assert (= (and b!7832025 ((_ is Cons!73674) (t!388533 s!14274))) b!7832504))

(declare-fun b!7832508 () Bool)

(declare-fun e!4632008 () Bool)

(declare-fun tp!2316237 () Bool)

(declare-fun tp!2316238 () Bool)

(assert (=> b!7832508 (= e!4632008 (and tp!2316237 tp!2316238))))

(assert (=> b!7832023 (= tp!2316094 e!4632008)))

(declare-fun b!7832505 () Bool)

(assert (=> b!7832505 (= e!4632008 tp_is_empty!52277)))

(declare-fun b!7832506 () Bool)

(declare-fun tp!2316239 () Bool)

(declare-fun tp!2316236 () Bool)

(assert (=> b!7832506 (= e!4632008 (and tp!2316239 tp!2316236))))

(declare-fun b!7832507 () Bool)

(declare-fun tp!2316240 () Bool)

(assert (=> b!7832507 (= e!4632008 tp!2316240)))

(assert (= (and b!7832023 ((_ is ElementMatch!20961) (reg!21290 r1!6261))) b!7832505))

(assert (= (and b!7832023 ((_ is Concat!29806) (reg!21290 r1!6261))) b!7832506))

(assert (= (and b!7832023 ((_ is Star!20961) (reg!21290 r1!6261))) b!7832507))

(assert (= (and b!7832023 ((_ is Union!20961) (reg!21290 r1!6261))) b!7832508))

(declare-fun b!7832509 () Bool)

(declare-fun e!4632009 () Bool)

(declare-fun tp!2316241 () Bool)

(assert (=> b!7832509 (= e!4632009 (and tp_is_empty!52277 tp!2316241))))

(assert (=> b!7832033 (= tp!2316106 e!4632009)))

(assert (= (and b!7832033 ((_ is Cons!73674) (t!388533 s1!4101))) b!7832509))

(check-sat (not b!7832329) (not d!2351018) (not b!7832235) (not b!7832328) (not b!7832239) (not b!7832357) (not b!7832385) (not b!7832201) (not b!7832119) (not b!7832495) (not b!7832391) (not b!7832489) (not b!7832197) (not b!7832356) (not bm!726312) (not d!2350996) (not b!7832107) (not d!2351030) (not b!7832245) (not bm!726305) (not b!7832363) (not b!7832485) (not b!7832106) (not b!7832482) (not b!7832499) (not b!7832467) (not b!7832330) (not b!7832481) (not b!7832478) (not b!7832490) (not b!7832493) (not b!7832486) (not b!7832503) (not bm!726313) (not b!7832389) (not b!7832506) (not b!7832479) (not b!7832501) (not b!7832504) (not bm!726300) (not d!2351026) (not b!7832450) (not b!7832491) (not b!7832361) (not d!2351016) (not bm!726329) (not b!7832384) (not b!7832379) (not b!7832477) (not b!7832229) (not b!7832243) (not b!7832193) (not b!7832449) (not b!7832323) (not b!7832472) (not b!7832111) (not b!7832326) (not bm!726307) (not b!7832436) (not b!7832353) (not b!7832191) (not b!7832474) (not b!7832381) (not d!2351014) (not b!7832497) (not b!7832502) (not b!7832498) (not b!7832507) (not b!7832230) (not b!7832351) (not b!7832233) (not b!7832509) (not b!7832487) (not b!7832231) (not b!7832438) (not bm!726327) (not d!2350998) (not b!7832196) (not b!7832508) (not b!7832062) (not b!7832448) (not b!7832331) (not bm!726302) (not b!7832494) (not b!7832120) (not b!7832437) (not b!7832203) (not b!7832483) (not d!2350992) tp_is_empty!52277 (not b!7832238))
(check-sat)
(get-model)

(declare-fun d!2351032 () Bool)

(declare-fun nullableFct!3669 (Regex!20961) Bool)

(assert (=> d!2351032 (= (nullable!9303 r1!6261) (nullableFct!3669 r1!6261))))

(declare-fun bs!1966818 () Bool)

(assert (= bs!1966818 d!2351032))

(declare-fun m!8249150 () Bool)

(assert (=> bs!1966818 m!8249150))

(assert (=> b!7832238 d!2351032))

(declare-fun d!2351034 () Bool)

(assert (=> d!2351034 (= (head!15992 s2Rec!453) (h!80122 s2Rec!453))))

(assert (=> b!7832391 d!2351034))

(declare-fun d!2351036 () Bool)

(declare-fun c!1440691 () Bool)

(assert (=> d!2351036 (= c!1440691 ((_ is Nil!73674) lt!2676967))))

(declare-fun e!4632012 () (InoxSet C!42248))

(assert (=> d!2351036 (= (content!15643 lt!2676967) e!4632012)))

(declare-fun b!7832514 () Bool)

(assert (=> b!7832514 (= e!4632012 ((as const (Array C!42248 Bool)) false))))

(declare-fun b!7832515 () Bool)

(assert (=> b!7832515 (= e!4632012 ((_ map or) (store ((as const (Array C!42248 Bool)) false) (h!80122 lt!2676967) true) (content!15643 (t!388533 lt!2676967))))))

(assert (= (and d!2351036 c!1440691) b!7832514))

(assert (= (and d!2351036 (not c!1440691)) b!7832515))

(declare-fun m!8249152 () Bool)

(assert (=> b!7832515 m!8249152))

(declare-fun m!8249154 () Bool)

(assert (=> b!7832515 m!8249154))

(assert (=> d!2350992 d!2351036))

(declare-fun d!2351038 () Bool)

(declare-fun c!1440692 () Bool)

(assert (=> d!2351038 (= c!1440692 ((_ is Nil!73674) s1!4101))))

(declare-fun e!4632013 () (InoxSet C!42248))

(assert (=> d!2351038 (= (content!15643 s1!4101) e!4632013)))

(declare-fun b!7832516 () Bool)

(assert (=> b!7832516 (= e!4632013 ((as const (Array C!42248 Bool)) false))))

(declare-fun b!7832517 () Bool)

(assert (=> b!7832517 (= e!4632013 ((_ map or) (store ((as const (Array C!42248 Bool)) false) (h!80122 s1!4101) true) (content!15643 (t!388533 s1!4101))))))

(assert (= (and d!2351038 c!1440692) b!7832516))

(assert (= (and d!2351038 (not c!1440692)) b!7832517))

(declare-fun m!8249156 () Bool)

(assert (=> b!7832517 m!8249156))

(declare-fun m!8249158 () Bool)

(assert (=> b!7832517 m!8249158))

(assert (=> d!2350992 d!2351038))

(declare-fun d!2351040 () Bool)

(declare-fun c!1440693 () Bool)

(assert (=> d!2351040 (= c!1440693 ((_ is Nil!73674) s2!3721))))

(declare-fun e!4632014 () (InoxSet C!42248))

(assert (=> d!2351040 (= (content!15643 s2!3721) e!4632014)))

(declare-fun b!7832518 () Bool)

(assert (=> b!7832518 (= e!4632014 ((as const (Array C!42248 Bool)) false))))

(declare-fun b!7832519 () Bool)

(assert (=> b!7832519 (= e!4632014 ((_ map or) (store ((as const (Array C!42248 Bool)) false) (h!80122 s2!3721) true) (content!15643 (t!388533 s2!3721))))))

(assert (= (and d!2351040 c!1440693) b!7832518))

(assert (= (and d!2351040 (not c!1440693)) b!7832519))

(declare-fun m!8249160 () Bool)

(assert (=> b!7832519 m!8249160))

(declare-fun m!8249162 () Bool)

(assert (=> b!7832519 m!8249162))

(assert (=> d!2350992 d!2351040))

(declare-fun d!2351042 () Bool)

(declare-fun lt!2677009 () Int)

(assert (=> d!2351042 (>= lt!2677009 0)))

(declare-fun e!4632017 () Int)

(assert (=> d!2351042 (= lt!2677009 e!4632017)))

(declare-fun c!1440696 () Bool)

(assert (=> d!2351042 (= c!1440696 ((_ is Nil!73674) lt!2676967))))

(assert (=> d!2351042 (= (size!42760 lt!2676967) lt!2677009)))

(declare-fun b!7832524 () Bool)

(assert (=> b!7832524 (= e!4632017 0)))

(declare-fun b!7832525 () Bool)

(assert (=> b!7832525 (= e!4632017 (+ 1 (size!42760 (t!388533 lt!2676967))))))

(assert (= (and d!2351042 c!1440696) b!7832524))

(assert (= (and d!2351042 (not c!1440696)) b!7832525))

(declare-fun m!8249164 () Bool)

(assert (=> b!7832525 m!8249164))

(assert (=> b!7832107 d!2351042))

(declare-fun d!2351044 () Bool)

(declare-fun lt!2677010 () Int)

(assert (=> d!2351044 (>= lt!2677010 0)))

(declare-fun e!4632018 () Int)

(assert (=> d!2351044 (= lt!2677010 e!4632018)))

(declare-fun c!1440697 () Bool)

(assert (=> d!2351044 (= c!1440697 ((_ is Nil!73674) s1!4101))))

(assert (=> d!2351044 (= (size!42760 s1!4101) lt!2677010)))

(declare-fun b!7832526 () Bool)

(assert (=> b!7832526 (= e!4632018 0)))

(declare-fun b!7832527 () Bool)

(assert (=> b!7832527 (= e!4632018 (+ 1 (size!42760 (t!388533 s1!4101))))))

(assert (= (and d!2351044 c!1440697) b!7832526))

(assert (= (and d!2351044 (not c!1440697)) b!7832527))

(declare-fun m!8249166 () Bool)

(assert (=> b!7832527 m!8249166))

(assert (=> b!7832107 d!2351044))

(declare-fun d!2351046 () Bool)

(declare-fun lt!2677011 () Int)

(assert (=> d!2351046 (>= lt!2677011 0)))

(declare-fun e!4632019 () Int)

(assert (=> d!2351046 (= lt!2677011 e!4632019)))

(declare-fun c!1440698 () Bool)

(assert (=> d!2351046 (= c!1440698 ((_ is Nil!73674) s2!3721))))

(assert (=> d!2351046 (= (size!42760 s2!3721) lt!2677011)))

(declare-fun b!7832528 () Bool)

(assert (=> b!7832528 (= e!4632019 0)))

(declare-fun b!7832529 () Bool)

(assert (=> b!7832529 (= e!4632019 (+ 1 (size!42760 (t!388533 s2!3721))))))

(assert (= (and d!2351046 c!1440698) b!7832528))

(assert (= (and d!2351046 (not c!1440698)) b!7832529))

(declare-fun m!8249168 () Bool)

(assert (=> b!7832529 m!8249168))

(assert (=> b!7832107 d!2351046))

(declare-fun d!2351048 () Bool)

(assert (=> d!2351048 (= (isEmpty!42291 s2Rec!453) ((_ is Nil!73674) s2Rec!453))))

(assert (=> bm!726329 d!2351048))

(declare-fun d!2351050 () Bool)

(declare-fun lt!2677012 () Int)

(assert (=> d!2351050 (>= lt!2677012 0)))

(declare-fun e!4632020 () Int)

(assert (=> d!2351050 (= lt!2677012 e!4632020)))

(declare-fun c!1440699 () Bool)

(assert (=> d!2351050 (= c!1440699 ((_ is Nil!73674) lt!2676968))))

(assert (=> d!2351050 (= (size!42760 lt!2676968) lt!2677012)))

(declare-fun b!7832530 () Bool)

(assert (=> b!7832530 (= e!4632020 0)))

(declare-fun b!7832531 () Bool)

(assert (=> b!7832531 (= e!4632020 (+ 1 (size!42760 (t!388533 lt!2676968))))))

(assert (= (and d!2351050 c!1440699) b!7832530))

(assert (= (and d!2351050 (not c!1440699)) b!7832531))

(declare-fun m!8249170 () Bool)

(assert (=> b!7832531 m!8249170))

(assert (=> b!7832120 d!2351050))

(declare-fun d!2351052 () Bool)

(declare-fun lt!2677013 () Int)

(assert (=> d!2351052 (>= lt!2677013 0)))

(declare-fun e!4632021 () Int)

(assert (=> d!2351052 (= lt!2677013 e!4632021)))

(declare-fun c!1440700 () Bool)

(assert (=> d!2351052 (= c!1440700 ((_ is Nil!73674) s1Rec!453))))

(assert (=> d!2351052 (= (size!42760 s1Rec!453) lt!2677013)))

(declare-fun b!7832532 () Bool)

(assert (=> b!7832532 (= e!4632021 0)))

(declare-fun b!7832533 () Bool)

(assert (=> b!7832533 (= e!4632021 (+ 1 (size!42760 (t!388533 s1Rec!453))))))

(assert (= (and d!2351052 c!1440700) b!7832532))

(assert (= (and d!2351052 (not c!1440700)) b!7832533))

(declare-fun m!8249172 () Bool)

(assert (=> b!7832533 m!8249172))

(assert (=> b!7832120 d!2351052))

(declare-fun d!2351054 () Bool)

(declare-fun lt!2677014 () Int)

(assert (=> d!2351054 (>= lt!2677014 0)))

(declare-fun e!4632022 () Int)

(assert (=> d!2351054 (= lt!2677014 e!4632022)))

(declare-fun c!1440701 () Bool)

(assert (=> d!2351054 (= c!1440701 ((_ is Nil!73674) s2Rec!453))))

(assert (=> d!2351054 (= (size!42760 s2Rec!453) lt!2677014)))

(declare-fun b!7832534 () Bool)

(assert (=> b!7832534 (= e!4632022 0)))

(declare-fun b!7832535 () Bool)

(assert (=> b!7832535 (= e!4632022 (+ 1 (size!42760 (t!388533 s2Rec!453))))))

(assert (= (and d!2351054 c!1440701) b!7832534))

(assert (= (and d!2351054 (not c!1440701)) b!7832535))

(declare-fun m!8249174 () Bool)

(assert (=> b!7832535 m!8249174))

(assert (=> b!7832120 d!2351054))

(declare-fun d!2351056 () Bool)

(assert (=> d!2351056 (= (head!15992 s2!3721) (h!80122 s2!3721))))

(assert (=> b!7832351 d!2351056))

(declare-fun d!2351058 () Bool)

(assert (=> d!2351058 (= (isEmpty!42291 (tail!15533 s2!3721)) ((_ is Nil!73674) (tail!15533 s2!3721)))))

(assert (=> b!7832353 d!2351058))

(declare-fun d!2351060 () Bool)

(assert (=> d!2351060 (= (tail!15533 s2!3721) (t!388533 s2!3721))))

(assert (=> b!7832353 d!2351060))

(assert (=> b!7832361 d!2351058))

(assert (=> b!7832361 d!2351060))

(declare-fun b!7832536 () Bool)

(declare-fun e!4632027 () Bool)

(declare-fun e!4632028 () Bool)

(assert (=> b!7832536 (= e!4632027 e!4632028)))

(declare-fun c!1440704 () Bool)

(assert (=> b!7832536 (= c!1440704 ((_ is EmptyLang!20961) (derivativeStep!6262 r2!6199 (head!15992 s2!3721))))))

(declare-fun b!7832537 () Bool)

(declare-fun e!4632029 () Bool)

(assert (=> b!7832537 (= e!4632029 (= (head!15992 (tail!15533 s2!3721)) (c!1440616 (derivativeStep!6262 r2!6199 (head!15992 s2!3721)))))))

(declare-fun d!2351062 () Bool)

(assert (=> d!2351062 e!4632027))

(declare-fun c!1440703 () Bool)

(assert (=> d!2351062 (= c!1440703 ((_ is EmptyExpr!20961) (derivativeStep!6262 r2!6199 (head!15992 s2!3721))))))

(declare-fun lt!2677015 () Bool)

(declare-fun e!4632026 () Bool)

(assert (=> d!2351062 (= lt!2677015 e!4632026)))

(declare-fun c!1440702 () Bool)

(assert (=> d!2351062 (= c!1440702 (isEmpty!42291 (tail!15533 s2!3721)))))

(assert (=> d!2351062 (validRegex!11375 (derivativeStep!6262 r2!6199 (head!15992 s2!3721)))))

(assert (=> d!2351062 (= (matchR!10417 (derivativeStep!6262 r2!6199 (head!15992 s2!3721)) (tail!15533 s2!3721)) lt!2677015)))

(declare-fun b!7832538 () Bool)

(declare-fun res!3115465 () Bool)

(declare-fun e!4632025 () Bool)

(assert (=> b!7832538 (=> res!3115465 e!4632025)))

(assert (=> b!7832538 (= res!3115465 e!4632029)))

(declare-fun res!3115459 () Bool)

(assert (=> b!7832538 (=> (not res!3115459) (not e!4632029))))

(assert (=> b!7832538 (= res!3115459 lt!2677015)))

(declare-fun b!7832539 () Bool)

(declare-fun res!3115461 () Bool)

(declare-fun e!4632023 () Bool)

(assert (=> b!7832539 (=> res!3115461 e!4632023)))

(assert (=> b!7832539 (= res!3115461 (not (isEmpty!42291 (tail!15533 (tail!15533 s2!3721)))))))

(declare-fun b!7832540 () Bool)

(assert (=> b!7832540 (= e!4632028 (not lt!2677015))))

(declare-fun b!7832541 () Bool)

(declare-fun res!3115460 () Bool)

(assert (=> b!7832541 (=> (not res!3115460) (not e!4632029))))

(declare-fun call!726335 () Bool)

(assert (=> b!7832541 (= res!3115460 (not call!726335))))

(declare-fun b!7832542 () Bool)

(assert (=> b!7832542 (= e!4632026 (nullable!9303 (derivativeStep!6262 r2!6199 (head!15992 s2!3721))))))

(declare-fun b!7832543 () Bool)

(assert (=> b!7832543 (= e!4632026 (matchR!10417 (derivativeStep!6262 (derivativeStep!6262 r2!6199 (head!15992 s2!3721)) (head!15992 (tail!15533 s2!3721))) (tail!15533 (tail!15533 s2!3721))))))

(declare-fun b!7832544 () Bool)

(declare-fun e!4632024 () Bool)

(assert (=> b!7832544 (= e!4632024 e!4632023)))

(declare-fun res!3115463 () Bool)

(assert (=> b!7832544 (=> res!3115463 e!4632023)))

(assert (=> b!7832544 (= res!3115463 call!726335)))

(declare-fun b!7832545 () Bool)

(assert (=> b!7832545 (= e!4632027 (= lt!2677015 call!726335))))

(declare-fun b!7832546 () Bool)

(declare-fun res!3115462 () Bool)

(assert (=> b!7832546 (=> res!3115462 e!4632025)))

(assert (=> b!7832546 (= res!3115462 (not ((_ is ElementMatch!20961) (derivativeStep!6262 r2!6199 (head!15992 s2!3721)))))))

(assert (=> b!7832546 (= e!4632028 e!4632025)))

(declare-fun b!7832547 () Bool)

(declare-fun res!3115464 () Bool)

(assert (=> b!7832547 (=> (not res!3115464) (not e!4632029))))

(assert (=> b!7832547 (= res!3115464 (isEmpty!42291 (tail!15533 (tail!15533 s2!3721))))))

(declare-fun bm!726330 () Bool)

(assert (=> bm!726330 (= call!726335 (isEmpty!42291 (tail!15533 s2!3721)))))

(declare-fun b!7832548 () Bool)

(assert (=> b!7832548 (= e!4632025 e!4632024)))

(declare-fun res!3115466 () Bool)

(assert (=> b!7832548 (=> (not res!3115466) (not e!4632024))))

(assert (=> b!7832548 (= res!3115466 (not lt!2677015))))

(declare-fun b!7832549 () Bool)

(assert (=> b!7832549 (= e!4632023 (not (= (head!15992 (tail!15533 s2!3721)) (c!1440616 (derivativeStep!6262 r2!6199 (head!15992 s2!3721))))))))

(assert (= (and d!2351062 c!1440702) b!7832542))

(assert (= (and d!2351062 (not c!1440702)) b!7832543))

(assert (= (and d!2351062 c!1440703) b!7832545))

(assert (= (and d!2351062 (not c!1440703)) b!7832536))

(assert (= (and b!7832536 c!1440704) b!7832540))

(assert (= (and b!7832536 (not c!1440704)) b!7832546))

(assert (= (and b!7832546 (not res!3115462)) b!7832538))

(assert (= (and b!7832538 res!3115459) b!7832541))

(assert (= (and b!7832541 res!3115460) b!7832547))

(assert (= (and b!7832547 res!3115464) b!7832537))

(assert (= (and b!7832538 (not res!3115465)) b!7832548))

(assert (= (and b!7832548 res!3115466) b!7832544))

(assert (= (and b!7832544 (not res!3115463)) b!7832539))

(assert (= (and b!7832539 (not res!3115461)) b!7832549))

(assert (= (or b!7832545 b!7832541 b!7832544) bm!726330))

(assert (=> b!7832547 m!8249116))

(declare-fun m!8249176 () Bool)

(assert (=> b!7832547 m!8249176))

(assert (=> b!7832547 m!8249176))

(declare-fun m!8249178 () Bool)

(assert (=> b!7832547 m!8249178))

(assert (=> b!7832539 m!8249116))

(assert (=> b!7832539 m!8249176))

(assert (=> b!7832539 m!8249176))

(assert (=> b!7832539 m!8249178))

(assert (=> b!7832549 m!8249116))

(declare-fun m!8249180 () Bool)

(assert (=> b!7832549 m!8249180))

(assert (=> b!7832542 m!8249124))

(declare-fun m!8249182 () Bool)

(assert (=> b!7832542 m!8249182))

(assert (=> b!7832543 m!8249116))

(assert (=> b!7832543 m!8249180))

(assert (=> b!7832543 m!8249124))

(assert (=> b!7832543 m!8249180))

(declare-fun m!8249184 () Bool)

(assert (=> b!7832543 m!8249184))

(assert (=> b!7832543 m!8249116))

(assert (=> b!7832543 m!8249176))

(assert (=> b!7832543 m!8249184))

(assert (=> b!7832543 m!8249176))

(declare-fun m!8249186 () Bool)

(assert (=> b!7832543 m!8249186))

(assert (=> b!7832537 m!8249116))

(assert (=> b!7832537 m!8249180))

(assert (=> bm!726330 m!8249116))

(assert (=> bm!726330 m!8249118))

(assert (=> d!2351062 m!8249116))

(assert (=> d!2351062 m!8249118))

(assert (=> d!2351062 m!8249124))

(declare-fun m!8249188 () Bool)

(assert (=> d!2351062 m!8249188))

(assert (=> b!7832357 d!2351062))

(declare-fun b!7832570 () Bool)

(declare-fun e!4632042 () Regex!20961)

(declare-fun e!4632040 () Regex!20961)

(assert (=> b!7832570 (= e!4632042 e!4632040)))

(declare-fun c!1440715 () Bool)

(assert (=> b!7832570 (= c!1440715 ((_ is ElementMatch!20961) r2!6199))))

(declare-fun b!7832571 () Bool)

(declare-fun c!1440719 () Bool)

(assert (=> b!7832571 (= c!1440719 (nullable!9303 (regOne!42434 r2!6199)))))

(declare-fun e!4632041 () Regex!20961)

(declare-fun e!4632043 () Regex!20961)

(assert (=> b!7832571 (= e!4632041 e!4632043)))

(declare-fun b!7832572 () Bool)

(declare-fun call!726345 () Regex!20961)

(assert (=> b!7832572 (= e!4632041 (Concat!29806 call!726345 r2!6199))))

(declare-fun b!7832573 () Bool)

(assert (=> b!7832573 (= e!4632042 EmptyLang!20961)))

(declare-fun b!7832574 () Bool)

(declare-fun c!1440716 () Bool)

(assert (=> b!7832574 (= c!1440716 ((_ is Union!20961) r2!6199))))

(declare-fun e!4632044 () Regex!20961)

(assert (=> b!7832574 (= e!4632040 e!4632044)))

(declare-fun b!7832575 () Bool)

(declare-fun call!726346 () Regex!20961)

(assert (=> b!7832575 (= e!4632043 (Union!20961 (Concat!29806 call!726346 (regTwo!42434 r2!6199)) EmptyLang!20961))))

(declare-fun b!7832576 () Bool)

(assert (=> b!7832576 (= e!4632040 (ite (= (head!15992 s2!3721) (c!1440616 r2!6199)) EmptyExpr!20961 EmptyLang!20961))))

(declare-fun bm!726339 () Bool)

(declare-fun call!726347 () Regex!20961)

(assert (=> bm!726339 (= call!726347 (derivativeStep!6262 (ite c!1440716 (regTwo!42435 r2!6199) (regTwo!42434 r2!6199)) (head!15992 s2!3721)))))

(declare-fun b!7832577 () Bool)

(assert (=> b!7832577 (= e!4632044 e!4632041)))

(declare-fun c!1440718 () Bool)

(assert (=> b!7832577 (= c!1440718 ((_ is Star!20961) r2!6199))))

(declare-fun b!7832578 () Bool)

(assert (=> b!7832578 (= e!4632043 (Union!20961 (Concat!29806 call!726346 (regTwo!42434 r2!6199)) call!726347))))

(declare-fun call!726344 () Regex!20961)

(declare-fun bm!726340 () Bool)

(assert (=> bm!726340 (= call!726344 (derivativeStep!6262 (ite c!1440716 (regOne!42435 r2!6199) (ite c!1440718 (reg!21290 r2!6199) (regOne!42434 r2!6199))) (head!15992 s2!3721)))))

(declare-fun bm!726341 () Bool)

(assert (=> bm!726341 (= call!726345 call!726344)))

(declare-fun b!7832579 () Bool)

(assert (=> b!7832579 (= e!4632044 (Union!20961 call!726344 call!726347))))

(declare-fun bm!726342 () Bool)

(assert (=> bm!726342 (= call!726346 call!726345)))

(declare-fun d!2351064 () Bool)

(declare-fun lt!2677018 () Regex!20961)

(assert (=> d!2351064 (validRegex!11375 lt!2677018)))

(assert (=> d!2351064 (= lt!2677018 e!4632042)))

(declare-fun c!1440717 () Bool)

(assert (=> d!2351064 (= c!1440717 (or ((_ is EmptyExpr!20961) r2!6199) ((_ is EmptyLang!20961) r2!6199)))))

(assert (=> d!2351064 (validRegex!11375 r2!6199)))

(assert (=> d!2351064 (= (derivativeStep!6262 r2!6199 (head!15992 s2!3721)) lt!2677018)))

(assert (= (and d!2351064 c!1440717) b!7832573))

(assert (= (and d!2351064 (not c!1440717)) b!7832570))

(assert (= (and b!7832570 c!1440715) b!7832576))

(assert (= (and b!7832570 (not c!1440715)) b!7832574))

(assert (= (and b!7832574 c!1440716) b!7832579))

(assert (= (and b!7832574 (not c!1440716)) b!7832577))

(assert (= (and b!7832577 c!1440718) b!7832572))

(assert (= (and b!7832577 (not c!1440718)) b!7832571))

(assert (= (and b!7832571 c!1440719) b!7832578))

(assert (= (and b!7832571 (not c!1440719)) b!7832575))

(assert (= (or b!7832578 b!7832575) bm!726342))

(assert (= (or b!7832572 bm!726342) bm!726341))

(assert (= (or b!7832579 bm!726341) bm!726340))

(assert (= (or b!7832579 b!7832578) bm!726339))

(declare-fun m!8249190 () Bool)

(assert (=> b!7832571 m!8249190))

(assert (=> bm!726339 m!8249120))

(declare-fun m!8249192 () Bool)

(assert (=> bm!726339 m!8249192))

(assert (=> bm!726340 m!8249120))

(declare-fun m!8249194 () Bool)

(assert (=> bm!726340 m!8249194))

(declare-fun m!8249196 () Bool)

(assert (=> d!2351064 m!8249196))

(assert (=> d!2351064 m!8248900))

(assert (=> b!7832357 d!2351064))

(assert (=> b!7832357 d!2351056))

(assert (=> b!7832357 d!2351060))

(declare-fun d!2351066 () Bool)

(assert (=> d!2351066 (= (nullable!9303 (reg!21290 r2!6199)) (nullableFct!3669 (reg!21290 r2!6199)))))

(declare-fun bs!1966819 () Bool)

(assert (= bs!1966819 d!2351066))

(declare-fun m!8249198 () Bool)

(assert (=> bs!1966819 m!8249198))

(assert (=> b!7832062 d!2351066))

(assert (=> b!7832363 d!2351056))

(declare-fun lt!2677019 () List!73798)

(declare-fun b!7832583 () Bool)

(declare-fun e!4632045 () Bool)

(assert (=> b!7832583 (= e!4632045 (or (not (= (t!388533 s2Rec!453) Nil!73674)) (= lt!2677019 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)))))))

(declare-fun b!7832580 () Bool)

(declare-fun e!4632046 () List!73798)

(assert (=> b!7832580 (= e!4632046 (t!388533 s2Rec!453))))

(declare-fun d!2351068 () Bool)

(assert (=> d!2351068 e!4632045))

(declare-fun res!3115468 () Bool)

(assert (=> d!2351068 (=> (not res!3115468) (not e!4632045))))

(assert (=> d!2351068 (= res!3115468 (= (content!15643 lt!2677019) ((_ map or) (content!15643 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674))) (content!15643 (t!388533 s2Rec!453)))))))

(assert (=> d!2351068 (= lt!2677019 e!4632046)))

(declare-fun c!1440720 () Bool)

(assert (=> d!2351068 (= c!1440720 ((_ is Nil!73674) (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674))))))

(assert (=> d!2351068 (= (++!17995 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (t!388533 s2Rec!453)) lt!2677019)))

(declare-fun b!7832582 () Bool)

(declare-fun res!3115467 () Bool)

(assert (=> b!7832582 (=> (not res!3115467) (not e!4632045))))

(assert (=> b!7832582 (= res!3115467 (= (size!42760 lt!2677019) (+ (size!42760 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674))) (size!42760 (t!388533 s2Rec!453)))))))

(declare-fun b!7832581 () Bool)

(assert (=> b!7832581 (= e!4632046 (Cons!73674 (h!80122 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674))) (++!17995 (t!388533 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674))) (t!388533 s2Rec!453))))))

(assert (= (and d!2351068 c!1440720) b!7832580))

(assert (= (and d!2351068 (not c!1440720)) b!7832581))

(assert (= (and d!2351068 res!3115468) b!7832582))

(assert (= (and b!7832582 res!3115467) b!7832583))

(declare-fun m!8249200 () Bool)

(assert (=> d!2351068 m!8249200))

(assert (=> d!2351068 m!8249094))

(declare-fun m!8249202 () Bool)

(assert (=> d!2351068 m!8249202))

(declare-fun m!8249204 () Bool)

(assert (=> d!2351068 m!8249204))

(declare-fun m!8249206 () Bool)

(assert (=> b!7832582 m!8249206))

(assert (=> b!7832582 m!8249094))

(declare-fun m!8249208 () Bool)

(assert (=> b!7832582 m!8249208))

(assert (=> b!7832582 m!8249174))

(declare-fun m!8249210 () Bool)

(assert (=> b!7832581 m!8249210))

(assert (=> b!7832326 d!2351068))

(declare-fun lt!2677020 () List!73798)

(declare-fun b!7832587 () Bool)

(declare-fun e!4632047 () Bool)

(assert (=> b!7832587 (= e!4632047 (or (not (= (Cons!73674 (h!80122 s2Rec!453) Nil!73674) Nil!73674)) (= lt!2677020 s1Rec!453)))))

(declare-fun b!7832584 () Bool)

(declare-fun e!4632048 () List!73798)

(assert (=> b!7832584 (= e!4632048 (Cons!73674 (h!80122 s2Rec!453) Nil!73674))))

(declare-fun d!2351070 () Bool)

(assert (=> d!2351070 e!4632047))

(declare-fun res!3115470 () Bool)

(assert (=> d!2351070 (=> (not res!3115470) (not e!4632047))))

(assert (=> d!2351070 (= res!3115470 (= (content!15643 lt!2677020) ((_ map or) (content!15643 s1Rec!453) (content!15643 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)))))))

(assert (=> d!2351070 (= lt!2677020 e!4632048)))

(declare-fun c!1440721 () Bool)

(assert (=> d!2351070 (= c!1440721 ((_ is Nil!73674) s1Rec!453))))

(assert (=> d!2351070 (= (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) lt!2677020)))

(declare-fun b!7832586 () Bool)

(declare-fun res!3115469 () Bool)

(assert (=> b!7832586 (=> (not res!3115469) (not e!4632047))))

(assert (=> b!7832586 (= res!3115469 (= (size!42760 lt!2677020) (+ (size!42760 s1Rec!453) (size!42760 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)))))))

(declare-fun b!7832585 () Bool)

(assert (=> b!7832585 (= e!4632048 (Cons!73674 (h!80122 s1Rec!453) (++!17995 (t!388533 s1Rec!453) (Cons!73674 (h!80122 s2Rec!453) Nil!73674))))))

(assert (= (and d!2351070 c!1440721) b!7832584))

(assert (= (and d!2351070 (not c!1440721)) b!7832585))

(assert (= (and d!2351070 res!3115470) b!7832586))

(assert (= (and b!7832586 res!3115469) b!7832587))

(declare-fun m!8249212 () Bool)

(assert (=> d!2351070 m!8249212))

(assert (=> d!2351070 m!8248950))

(declare-fun m!8249214 () Bool)

(assert (=> d!2351070 m!8249214))

(declare-fun m!8249216 () Bool)

(assert (=> b!7832586 m!8249216))

(assert (=> b!7832586 m!8248956))

(declare-fun m!8249218 () Bool)

(assert (=> b!7832586 m!8249218))

(declare-fun m!8249220 () Bool)

(assert (=> b!7832585 m!8249220))

(assert (=> b!7832326 d!2351070))

(declare-fun d!2351072 () Bool)

(assert (=> d!2351072 (= (++!17995 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (t!388533 s2Rec!453)) s!14274)))

(declare-fun lt!2677023 () Unit!168696)

(declare-fun choose!59586 (List!73798 C!42248 List!73798 List!73798) Unit!168696)

(assert (=> d!2351072 (= lt!2677023 (choose!59586 s1Rec!453 (h!80122 s2Rec!453) (t!388533 s2Rec!453) s!14274))))

(assert (=> d!2351072 (= (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) (t!388533 s2Rec!453))) s!14274)))

(assert (=> d!2351072 (= (lemmaMoveElementToOtherListKeepsConcatEq!3434 s1Rec!453 (h!80122 s2Rec!453) (t!388533 s2Rec!453) s!14274) lt!2677023)))

(declare-fun bs!1966820 () Bool)

(assert (= bs!1966820 d!2351072))

(assert (=> bs!1966820 m!8249094))

(assert (=> bs!1966820 m!8249094))

(assert (=> bs!1966820 m!8249096))

(declare-fun m!8249222 () Bool)

(assert (=> bs!1966820 m!8249222))

(declare-fun m!8249224 () Bool)

(assert (=> bs!1966820 m!8249224))

(assert (=> b!7832326 d!2351072))

(declare-fun b!7832588 () Bool)

(declare-fun res!3115472 () Bool)

(declare-fun e!4632051 () Bool)

(assert (=> b!7832588 (=> (not res!3115472) (not e!4632051))))

(declare-fun lt!2677024 () Option!17788)

(assert (=> b!7832588 (= res!3115472 (matchR!10417 r1!6261 (_1!38297 (get!26387 lt!2677024))))))

(declare-fun d!2351076 () Bool)

(declare-fun e!4632050 () Bool)

(assert (=> d!2351076 e!4632050))

(declare-fun res!3115474 () Bool)

(assert (=> d!2351076 (=> res!3115474 e!4632050)))

(assert (=> d!2351076 (= res!3115474 e!4632051)))

(declare-fun res!3115471 () Bool)

(assert (=> d!2351076 (=> (not res!3115471) (not e!4632051))))

(assert (=> d!2351076 (= res!3115471 (isDefined!14394 lt!2677024))))

(declare-fun e!4632049 () Option!17788)

(assert (=> d!2351076 (= lt!2677024 e!4632049)))

(declare-fun c!1440723 () Bool)

(declare-fun e!4632052 () Bool)

(assert (=> d!2351076 (= c!1440723 e!4632052)))

(declare-fun res!3115475 () Bool)

(assert (=> d!2351076 (=> (not res!3115475) (not e!4632052))))

(assert (=> d!2351076 (= res!3115475 (matchR!10417 r1!6261 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674))))))

(assert (=> d!2351076 (validRegex!11375 r1!6261)))

(assert (=> d!2351076 (= (findConcatSeparation!3818 r1!6261 r2!6199 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (t!388533 s2Rec!453) s!14274) lt!2677024)))

(declare-fun b!7832589 () Bool)

(assert (=> b!7832589 (= e!4632049 (Some!17787 (tuple2!69989 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (t!388533 s2Rec!453))))))

(declare-fun b!7832590 () Bool)

(declare-fun e!4632053 () Option!17788)

(assert (=> b!7832590 (= e!4632053 None!17787)))

(declare-fun b!7832591 () Bool)

(declare-fun lt!2677026 () Unit!168696)

(declare-fun lt!2677025 () Unit!168696)

(assert (=> b!7832591 (= lt!2677026 lt!2677025)))

(assert (=> b!7832591 (= (++!17995 (++!17995 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (Cons!73674 (h!80122 (t!388533 s2Rec!453)) Nil!73674)) (t!388533 (t!388533 s2Rec!453))) s!14274)))

(assert (=> b!7832591 (= lt!2677025 (lemmaMoveElementToOtherListKeepsConcatEq!3434 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (h!80122 (t!388533 s2Rec!453)) (t!388533 (t!388533 s2Rec!453)) s!14274))))

(assert (=> b!7832591 (= e!4632053 (findConcatSeparation!3818 r1!6261 r2!6199 (++!17995 (++!17995 s1Rec!453 (Cons!73674 (h!80122 s2Rec!453) Nil!73674)) (Cons!73674 (h!80122 (t!388533 s2Rec!453)) Nil!73674)) (t!388533 (t!388533 s2Rec!453)) s!14274))))

(declare-fun b!7832592 () Bool)

(assert (=> b!7832592 (= e!4632049 e!4632053)))

(declare-fun c!1440722 () Bool)

(assert (=> b!7832592 (= c!1440722 ((_ is Nil!73674) (t!388533 s2Rec!453)))))

(declare-fun b!7832593 () Bool)

(declare-fun res!3115473 () Bool)

(assert (=> b!7832593 (=> (not res!3115473) (not e!4632051))))

(assert (=> b!7832593 (= res!3115473 (matchR!10417 r2!6199 (_2!38297 (get!26387 lt!2677024))))))

(declare-fun b!7832594 () Bool)

(assert (=> b!7832594 (= e!4632050 (not (isDefined!14394 lt!2677024)))))

(declare-fun b!7832595 () Bool)

(assert (=> b!7832595 (= e!4632052 (matchR!10417 r2!6199 (t!388533 s2Rec!453)))))

(declare-fun b!7832596 () Bool)

(assert (=> b!7832596 (= e!4632051 (= (++!17995 (_1!38297 (get!26387 lt!2677024)) (_2!38297 (get!26387 lt!2677024))) s!14274))))

(assert (= (and d!2351076 res!3115475) b!7832595))

(assert (= (and d!2351076 c!1440723) b!7832589))

(assert (= (and d!2351076 (not c!1440723)) b!7832592))

(assert (= (and b!7832592 c!1440722) b!7832590))

(assert (= (and b!7832592 (not c!1440722)) b!7832591))

(assert (= (and d!2351076 res!3115471) b!7832588))

(assert (= (and b!7832588 res!3115472) b!7832593))

(assert (= (and b!7832593 res!3115473) b!7832596))

(assert (= (and d!2351076 (not res!3115474)) b!7832594))

(declare-fun m!8249228 () Bool)

(assert (=> b!7832595 m!8249228))

(declare-fun m!8249230 () Bool)

(assert (=> b!7832594 m!8249230))

(declare-fun m!8249232 () Bool)

(assert (=> b!7832588 m!8249232))

(declare-fun m!8249234 () Bool)

(assert (=> b!7832588 m!8249234))

(assert (=> b!7832596 m!8249232))

(declare-fun m!8249236 () Bool)

(assert (=> b!7832596 m!8249236))

(assert (=> b!7832591 m!8249094))

(declare-fun m!8249238 () Bool)

(assert (=> b!7832591 m!8249238))

(assert (=> b!7832591 m!8249238))

(declare-fun m!8249240 () Bool)

(assert (=> b!7832591 m!8249240))

(assert (=> b!7832591 m!8249094))

(declare-fun m!8249242 () Bool)

(assert (=> b!7832591 m!8249242))

(assert (=> b!7832591 m!8249238))

(declare-fun m!8249244 () Bool)

(assert (=> b!7832591 m!8249244))

(assert (=> d!2351076 m!8249230))

(assert (=> d!2351076 m!8249094))

(declare-fun m!8249246 () Bool)

(assert (=> d!2351076 m!8249246))

(assert (=> d!2351076 m!8248904))

(assert (=> b!7832593 m!8249232))

(declare-fun m!8249248 () Bool)

(assert (=> b!7832593 m!8249248))

(assert (=> b!7832326 d!2351076))

(declare-fun d!2351080 () Bool)

(assert (=> d!2351080 (= (isEmpty!42291 s2!3721) ((_ is Nil!73674) s2!3721))))

(assert (=> bm!726327 d!2351080))

(assert (=> b!7832231 d!2351044))

(assert (=> b!7832231 d!2351052))

(declare-fun d!2351082 () Bool)

(assert (=> d!2351082 (= (isEmpty!42291 (tail!15533 s1!4101)) ((_ is Nil!73674) (tail!15533 s1!4101)))))

(assert (=> b!7832193 d!2351082))

(declare-fun d!2351084 () Bool)

(assert (=> d!2351084 (= (tail!15533 s1!4101) (t!388533 s1!4101))))

(assert (=> b!7832193 d!2351084))

(declare-fun d!2351086 () Bool)

(assert (=> d!2351086 (= (head!15992 s1Rec!453) (h!80122 s1Rec!453))))

(assert (=> b!7832229 d!2351086))

(declare-fun d!2351088 () Bool)

(assert (=> d!2351088 (= (head!15992 s1!4101) (h!80122 s1!4101))))

(assert (=> b!7832229 d!2351088))

(assert (=> b!7832191 d!2351088))

(assert (=> b!7832330 d!2351030))

(declare-fun d!2351090 () Bool)

(assert (=> d!2351090 (= (isEmpty!42291 s1Rec!453) ((_ is Nil!73674) s1Rec!453))))

(assert (=> d!2351014 d!2351090))

(assert (=> d!2351014 d!2350994))

(assert (=> b!7832201 d!2351082))

(assert (=> b!7832201 d!2351084))

(declare-fun d!2351092 () Bool)

(assert (=> d!2351092 (= (isEmpty!42291 s1!4101) ((_ is Nil!73674) s1!4101))))

(assert (=> d!2350998 d!2351092))

(assert (=> d!2350998 d!2350994))

(declare-fun b!7832611 () Bool)

(declare-fun e!4632067 () Bool)

(declare-fun call!726350 () Bool)

(assert (=> b!7832611 (= e!4632067 call!726350)))

(declare-fun b!7832612 () Bool)

(declare-fun e!4632063 () Bool)

(declare-fun e!4632066 () Bool)

(assert (=> b!7832612 (= e!4632063 e!4632066)))

(declare-fun res!3115484 () Bool)

(assert (=> b!7832612 (=> (not res!3115484) (not e!4632066))))

(assert (=> b!7832612 (= res!3115484 call!726350)))

(declare-fun b!7832613 () Bool)

(declare-fun e!4632064 () Bool)

(declare-fun e!4632061 () Bool)

(assert (=> b!7832613 (= e!4632064 e!4632061)))

(declare-fun res!3115486 () Bool)

(assert (=> b!7832613 (= res!3115486 (not (nullable!9303 (reg!21290 (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))))))))

(assert (=> b!7832613 (=> (not res!3115486) (not e!4632061))))

(declare-fun c!1440727 () Bool)

(declare-fun bm!726344 () Bool)

(declare-fun call!726349 () Bool)

(declare-fun c!1440728 () Bool)

(assert (=> bm!726344 (= call!726349 (validRegex!11375 (ite c!1440727 (reg!21290 (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))) (ite c!1440728 (regTwo!42435 (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))) (regOne!42434 (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261))))))))))

(declare-fun bm!726345 () Bool)

(assert (=> bm!726345 (= call!726350 call!726349)))

(declare-fun d!2351094 () Bool)

(declare-fun res!3115487 () Bool)

(declare-fun e!4632065 () Bool)

(assert (=> d!2351094 (=> res!3115487 e!4632065)))

(assert (=> d!2351094 (= res!3115487 ((_ is ElementMatch!20961) (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))))))

(assert (=> d!2351094 (= (validRegex!11375 (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))) e!4632065)))

(declare-fun b!7832614 () Bool)

(declare-fun res!3115488 () Bool)

(assert (=> b!7832614 (=> (not res!3115488) (not e!4632067))))

(declare-fun call!726351 () Bool)

(assert (=> b!7832614 (= res!3115488 call!726351)))

(declare-fun e!4632062 () Bool)

(assert (=> b!7832614 (= e!4632062 e!4632067)))

(declare-fun b!7832615 () Bool)

(declare-fun res!3115485 () Bool)

(assert (=> b!7832615 (=> res!3115485 e!4632063)))

(assert (=> b!7832615 (= res!3115485 (not ((_ is Concat!29806) (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261))))))))

(assert (=> b!7832615 (= e!4632062 e!4632063)))

(declare-fun b!7832616 () Bool)

(assert (=> b!7832616 (= e!4632061 call!726349)))

(declare-fun b!7832617 () Bool)

(assert (=> b!7832617 (= e!4632066 call!726351)))

(declare-fun b!7832618 () Bool)

(assert (=> b!7832618 (= e!4632064 e!4632062)))

(assert (=> b!7832618 (= c!1440728 ((_ is Union!20961) (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))))))

(declare-fun bm!726346 () Bool)

(assert (=> bm!726346 (= call!726351 (validRegex!11375 (ite c!1440728 (regOne!42435 (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))) (regTwo!42434 (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))))))))

(declare-fun b!7832619 () Bool)

(assert (=> b!7832619 (= e!4632065 e!4632064)))

(assert (=> b!7832619 (= c!1440727 ((_ is Star!20961) (ite c!1440632 (reg!21290 r1!6261) (ite c!1440633 (regTwo!42435 r1!6261) (regOne!42434 r1!6261)))))))

(assert (= (and d!2351094 (not res!3115487)) b!7832619))

(assert (= (and b!7832619 c!1440727) b!7832613))

(assert (= (and b!7832619 (not c!1440727)) b!7832618))

(assert (= (and b!7832613 res!3115486) b!7832616))

(assert (= (and b!7832618 c!1440728) b!7832614))

(assert (= (and b!7832618 (not c!1440728)) b!7832615))

(assert (= (and b!7832614 res!3115488) b!7832611))

(assert (= (and b!7832615 (not res!3115485)) b!7832612))

(assert (= (and b!7832612 res!3115484) b!7832617))

(assert (= (or b!7832611 b!7832612) bm!726345))

(assert (= (or b!7832614 b!7832617) bm!726346))

(assert (= (or b!7832616 bm!726345) bm!726344))

(declare-fun m!8249264 () Bool)

(assert (=> b!7832613 m!8249264))

(declare-fun m!8249266 () Bool)

(assert (=> bm!726344 m!8249266))

(declare-fun m!8249268 () Bool)

(assert (=> bm!726346 m!8249268))

(assert (=> bm!726305 d!2351094))

(declare-fun d!2351098 () Bool)

(assert (=> d!2351098 (= (nullable!9303 r2!6199) (nullableFct!3669 r2!6199))))

(declare-fun bs!1966822 () Bool)

(assert (= bs!1966822 d!2351098))

(declare-fun m!8249270 () Bool)

(assert (=> bs!1966822 m!8249270))

(assert (=> b!7832384 d!2351098))

(declare-fun b!7832620 () Bool)

(declare-fun e!4632072 () Bool)

(declare-fun e!4632073 () Bool)

(assert (=> b!7832620 (= e!4632072 e!4632073)))

(declare-fun c!1440731 () Bool)

(assert (=> b!7832620 (= c!1440731 ((_ is EmptyLang!20961) (derivativeStep!6262 r1!6261 (head!15992 s1!4101))))))

(declare-fun b!7832621 () Bool)

(declare-fun e!4632074 () Bool)

(assert (=> b!7832621 (= e!4632074 (= (head!15992 (tail!15533 s1!4101)) (c!1440616 (derivativeStep!6262 r1!6261 (head!15992 s1!4101)))))))

(declare-fun d!2351100 () Bool)

(assert (=> d!2351100 e!4632072))

(declare-fun c!1440730 () Bool)

(assert (=> d!2351100 (= c!1440730 ((_ is EmptyExpr!20961) (derivativeStep!6262 r1!6261 (head!15992 s1!4101))))))

(declare-fun lt!2677028 () Bool)

(declare-fun e!4632071 () Bool)

(assert (=> d!2351100 (= lt!2677028 e!4632071)))

(declare-fun c!1440729 () Bool)

(assert (=> d!2351100 (= c!1440729 (isEmpty!42291 (tail!15533 s1!4101)))))

(assert (=> d!2351100 (validRegex!11375 (derivativeStep!6262 r1!6261 (head!15992 s1!4101)))))

(assert (=> d!2351100 (= (matchR!10417 (derivativeStep!6262 r1!6261 (head!15992 s1!4101)) (tail!15533 s1!4101)) lt!2677028)))

(declare-fun b!7832622 () Bool)

(declare-fun res!3115495 () Bool)

(declare-fun e!4632070 () Bool)

(assert (=> b!7832622 (=> res!3115495 e!4632070)))

(assert (=> b!7832622 (= res!3115495 e!4632074)))

(declare-fun res!3115489 () Bool)

(assert (=> b!7832622 (=> (not res!3115489) (not e!4632074))))

(assert (=> b!7832622 (= res!3115489 lt!2677028)))

(declare-fun b!7832623 () Bool)

(declare-fun res!3115491 () Bool)

(declare-fun e!4632068 () Bool)

(assert (=> b!7832623 (=> res!3115491 e!4632068)))

(assert (=> b!7832623 (= res!3115491 (not (isEmpty!42291 (tail!15533 (tail!15533 s1!4101)))))))

(declare-fun b!7832624 () Bool)

(assert (=> b!7832624 (= e!4632073 (not lt!2677028))))

(declare-fun b!7832625 () Bool)

(declare-fun res!3115490 () Bool)

(assert (=> b!7832625 (=> (not res!3115490) (not e!4632074))))

(declare-fun call!726352 () Bool)

(assert (=> b!7832625 (= res!3115490 (not call!726352))))

(declare-fun b!7832626 () Bool)

(assert (=> b!7832626 (= e!4632071 (nullable!9303 (derivativeStep!6262 r1!6261 (head!15992 s1!4101))))))

(declare-fun b!7832627 () Bool)

(assert (=> b!7832627 (= e!4632071 (matchR!10417 (derivativeStep!6262 (derivativeStep!6262 r1!6261 (head!15992 s1!4101)) (head!15992 (tail!15533 s1!4101))) (tail!15533 (tail!15533 s1!4101))))))

(declare-fun b!7832628 () Bool)

(declare-fun e!4632069 () Bool)

(assert (=> b!7832628 (= e!4632069 e!4632068)))

(declare-fun res!3115493 () Bool)

(assert (=> b!7832628 (=> res!3115493 e!4632068)))

(assert (=> b!7832628 (= res!3115493 call!726352)))

(declare-fun b!7832629 () Bool)

(assert (=> b!7832629 (= e!4632072 (= lt!2677028 call!726352))))

(declare-fun b!7832630 () Bool)

(declare-fun res!3115492 () Bool)

(assert (=> b!7832630 (=> res!3115492 e!4632070)))

(assert (=> b!7832630 (= res!3115492 (not ((_ is ElementMatch!20961) (derivativeStep!6262 r1!6261 (head!15992 s1!4101)))))))

(assert (=> b!7832630 (= e!4632073 e!4632070)))

(declare-fun b!7832631 () Bool)

(declare-fun res!3115494 () Bool)

(assert (=> b!7832631 (=> (not res!3115494) (not e!4632074))))

(assert (=> b!7832631 (= res!3115494 (isEmpty!42291 (tail!15533 (tail!15533 s1!4101))))))

(declare-fun bm!726347 () Bool)

(assert (=> bm!726347 (= call!726352 (isEmpty!42291 (tail!15533 s1!4101)))))

(declare-fun b!7832632 () Bool)

(assert (=> b!7832632 (= e!4632070 e!4632069)))

(declare-fun res!3115496 () Bool)

(assert (=> b!7832632 (=> (not res!3115496) (not e!4632069))))

(assert (=> b!7832632 (= res!3115496 (not lt!2677028))))

(declare-fun b!7832633 () Bool)

(assert (=> b!7832633 (= e!4632068 (not (= (head!15992 (tail!15533 s1!4101)) (c!1440616 (derivativeStep!6262 r1!6261 (head!15992 s1!4101))))))))

(assert (= (and d!2351100 c!1440729) b!7832626))

(assert (= (and d!2351100 (not c!1440729)) b!7832627))

(assert (= (and d!2351100 c!1440730) b!7832629))

(assert (= (and d!2351100 (not c!1440730)) b!7832620))

(assert (= (and b!7832620 c!1440731) b!7832624))

(assert (= (and b!7832620 (not c!1440731)) b!7832630))

(assert (= (and b!7832630 (not res!3115492)) b!7832622))

(assert (= (and b!7832622 res!3115489) b!7832625))

(assert (= (and b!7832625 res!3115490) b!7832631))

(assert (= (and b!7832631 res!3115494) b!7832621))

(assert (= (and b!7832622 (not res!3115495)) b!7832632))

(assert (= (and b!7832632 res!3115496) b!7832628))

(assert (= (and b!7832628 (not res!3115493)) b!7832623))

(assert (= (and b!7832623 (not res!3115491)) b!7832633))

(assert (= (or b!7832629 b!7832625 b!7832628) bm!726347))

(assert (=> b!7832631 m!8249004))

(declare-fun m!8249272 () Bool)

(assert (=> b!7832631 m!8249272))

(assert (=> b!7832631 m!8249272))

(declare-fun m!8249274 () Bool)

(assert (=> b!7832631 m!8249274))

(assert (=> b!7832623 m!8249004))

(assert (=> b!7832623 m!8249272))

(assert (=> b!7832623 m!8249272))

(assert (=> b!7832623 m!8249274))

(assert (=> b!7832633 m!8249004))

(declare-fun m!8249276 () Bool)

(assert (=> b!7832633 m!8249276))

(assert (=> b!7832626 m!8249012))

(declare-fun m!8249278 () Bool)

(assert (=> b!7832626 m!8249278))

(assert (=> b!7832627 m!8249004))

(assert (=> b!7832627 m!8249276))

(assert (=> b!7832627 m!8249012))

(assert (=> b!7832627 m!8249276))

(declare-fun m!8249280 () Bool)

(assert (=> b!7832627 m!8249280))

(assert (=> b!7832627 m!8249004))

(assert (=> b!7832627 m!8249272))

(assert (=> b!7832627 m!8249280))

(assert (=> b!7832627 m!8249272))

(declare-fun m!8249282 () Bool)

(assert (=> b!7832627 m!8249282))

(assert (=> b!7832621 m!8249004))

(assert (=> b!7832621 m!8249276))

(assert (=> bm!726347 m!8249004))

(assert (=> bm!726347 m!8249006))

(assert (=> d!2351100 m!8249004))

(assert (=> d!2351100 m!8249006))

(assert (=> d!2351100 m!8249012))

(declare-fun m!8249284 () Bool)

(assert (=> d!2351100 m!8249284))

(assert (=> b!7832197 d!2351100))

(declare-fun b!7832634 () Bool)

(declare-fun e!4632077 () Regex!20961)

(declare-fun e!4632075 () Regex!20961)

(assert (=> b!7832634 (= e!4632077 e!4632075)))

(declare-fun c!1440732 () Bool)

(assert (=> b!7832634 (= c!1440732 ((_ is ElementMatch!20961) r1!6261))))

(declare-fun b!7832635 () Bool)

(declare-fun c!1440736 () Bool)

(assert (=> b!7832635 (= c!1440736 (nullable!9303 (regOne!42434 r1!6261)))))

(declare-fun e!4632076 () Regex!20961)

(declare-fun e!4632078 () Regex!20961)

(assert (=> b!7832635 (= e!4632076 e!4632078)))

(declare-fun b!7832636 () Bool)

(declare-fun call!726354 () Regex!20961)

(assert (=> b!7832636 (= e!4632076 (Concat!29806 call!726354 r1!6261))))

(declare-fun b!7832637 () Bool)

(assert (=> b!7832637 (= e!4632077 EmptyLang!20961)))

(declare-fun b!7832638 () Bool)

(declare-fun c!1440733 () Bool)

(assert (=> b!7832638 (= c!1440733 ((_ is Union!20961) r1!6261))))

(declare-fun e!4632079 () Regex!20961)

(assert (=> b!7832638 (= e!4632075 e!4632079)))

(declare-fun b!7832639 () Bool)

(declare-fun call!726355 () Regex!20961)

(assert (=> b!7832639 (= e!4632078 (Union!20961 (Concat!29806 call!726355 (regTwo!42434 r1!6261)) EmptyLang!20961))))

(declare-fun b!7832640 () Bool)

(assert (=> b!7832640 (= e!4632075 (ite (= (head!15992 s1!4101) (c!1440616 r1!6261)) EmptyExpr!20961 EmptyLang!20961))))

(declare-fun call!726356 () Regex!20961)

(declare-fun bm!726348 () Bool)

(assert (=> bm!726348 (= call!726356 (derivativeStep!6262 (ite c!1440733 (regTwo!42435 r1!6261) (regTwo!42434 r1!6261)) (head!15992 s1!4101)))))

(declare-fun b!7832641 () Bool)

(assert (=> b!7832641 (= e!4632079 e!4632076)))

(declare-fun c!1440735 () Bool)

(assert (=> b!7832641 (= c!1440735 ((_ is Star!20961) r1!6261))))

(declare-fun b!7832642 () Bool)

(assert (=> b!7832642 (= e!4632078 (Union!20961 (Concat!29806 call!726355 (regTwo!42434 r1!6261)) call!726356))))

(declare-fun call!726353 () Regex!20961)

(declare-fun bm!726349 () Bool)

(assert (=> bm!726349 (= call!726353 (derivativeStep!6262 (ite c!1440733 (regOne!42435 r1!6261) (ite c!1440735 (reg!21290 r1!6261) (regOne!42434 r1!6261))) (head!15992 s1!4101)))))

(declare-fun bm!726350 () Bool)

(assert (=> bm!726350 (= call!726354 call!726353)))

(declare-fun b!7832643 () Bool)

(assert (=> b!7832643 (= e!4632079 (Union!20961 call!726353 call!726356))))

(declare-fun bm!726351 () Bool)

(assert (=> bm!726351 (= call!726355 call!726354)))

(declare-fun d!2351102 () Bool)

(declare-fun lt!2677029 () Regex!20961)

(assert (=> d!2351102 (validRegex!11375 lt!2677029)))

(assert (=> d!2351102 (= lt!2677029 e!4632077)))

(declare-fun c!1440734 () Bool)

(assert (=> d!2351102 (= c!1440734 (or ((_ is EmptyExpr!20961) r1!6261) ((_ is EmptyLang!20961) r1!6261)))))

(assert (=> d!2351102 (validRegex!11375 r1!6261)))

(assert (=> d!2351102 (= (derivativeStep!6262 r1!6261 (head!15992 s1!4101)) lt!2677029)))

(assert (= (and d!2351102 c!1440734) b!7832637))

(assert (= (and d!2351102 (not c!1440734)) b!7832634))

(assert (= (and b!7832634 c!1440732) b!7832640))

(assert (= (and b!7832634 (not c!1440732)) b!7832638))

(assert (= (and b!7832638 c!1440733) b!7832643))

(assert (= (and b!7832638 (not c!1440733)) b!7832641))

(assert (= (and b!7832641 c!1440735) b!7832636))

(assert (= (and b!7832641 (not c!1440735)) b!7832635))

(assert (= (and b!7832635 c!1440736) b!7832642))

(assert (= (and b!7832635 (not c!1440736)) b!7832639))

(assert (= (or b!7832642 b!7832639) bm!726351))

(assert (= (or b!7832636 bm!726351) bm!726350))

(assert (= (or b!7832643 bm!726350) bm!726349))

(assert (= (or b!7832643 b!7832642) bm!726348))

(declare-fun m!8249286 () Bool)

(assert (=> b!7832635 m!8249286))

(assert (=> bm!726348 m!8249008))

(declare-fun m!8249288 () Bool)

(assert (=> bm!726348 m!8249288))

(assert (=> bm!726349 m!8249008))

(declare-fun m!8249290 () Bool)

(assert (=> bm!726349 m!8249290))

(declare-fun m!8249292 () Bool)

(assert (=> d!2351102 m!8249292))

(assert (=> d!2351102 m!8248904))

(assert (=> b!7832197 d!2351102))

(assert (=> b!7832197 d!2351088))

(assert (=> b!7832197 d!2351084))

(declare-fun b!7832644 () Bool)

(declare-fun e!4632084 () Bool)

(declare-fun e!4632085 () Bool)

(assert (=> b!7832644 (= e!4632084 e!4632085)))

(declare-fun c!1440739 () Bool)

(assert (=> b!7832644 (= c!1440739 ((_ is EmptyLang!20961) r2!6199))))

(declare-fun b!7832645 () Bool)

(declare-fun e!4632086 () Bool)

(assert (=> b!7832645 (= e!4632086 (= (head!15992 (_2!38297 (get!26387 lt!2677001))) (c!1440616 r2!6199)))))

(declare-fun d!2351104 () Bool)

(assert (=> d!2351104 e!4632084))

(declare-fun c!1440738 () Bool)

(assert (=> d!2351104 (= c!1440738 ((_ is EmptyExpr!20961) r2!6199))))

(declare-fun lt!2677030 () Bool)

(declare-fun e!4632083 () Bool)

(assert (=> d!2351104 (= lt!2677030 e!4632083)))

(declare-fun c!1440737 () Bool)

(assert (=> d!2351104 (= c!1440737 (isEmpty!42291 (_2!38297 (get!26387 lt!2677001))))))

(assert (=> d!2351104 (validRegex!11375 r2!6199)))

(assert (=> d!2351104 (= (matchR!10417 r2!6199 (_2!38297 (get!26387 lt!2677001))) lt!2677030)))

(declare-fun b!7832646 () Bool)

(declare-fun res!3115503 () Bool)

(declare-fun e!4632082 () Bool)

(assert (=> b!7832646 (=> res!3115503 e!4632082)))

(assert (=> b!7832646 (= res!3115503 e!4632086)))

(declare-fun res!3115497 () Bool)

(assert (=> b!7832646 (=> (not res!3115497) (not e!4632086))))

(assert (=> b!7832646 (= res!3115497 lt!2677030)))

(declare-fun b!7832647 () Bool)

(declare-fun res!3115499 () Bool)

(declare-fun e!4632080 () Bool)

(assert (=> b!7832647 (=> res!3115499 e!4632080)))

(assert (=> b!7832647 (= res!3115499 (not (isEmpty!42291 (tail!15533 (_2!38297 (get!26387 lt!2677001))))))))

(declare-fun b!7832648 () Bool)

(assert (=> b!7832648 (= e!4632085 (not lt!2677030))))

(declare-fun b!7832649 () Bool)

(declare-fun res!3115498 () Bool)

(assert (=> b!7832649 (=> (not res!3115498) (not e!4632086))))

(declare-fun call!726357 () Bool)

(assert (=> b!7832649 (= res!3115498 (not call!726357))))

(declare-fun b!7832650 () Bool)

(assert (=> b!7832650 (= e!4632083 (nullable!9303 r2!6199))))

(declare-fun b!7832651 () Bool)

(assert (=> b!7832651 (= e!4632083 (matchR!10417 (derivativeStep!6262 r2!6199 (head!15992 (_2!38297 (get!26387 lt!2677001)))) (tail!15533 (_2!38297 (get!26387 lt!2677001)))))))

(declare-fun b!7832652 () Bool)

(declare-fun e!4632081 () Bool)

(assert (=> b!7832652 (= e!4632081 e!4632080)))

(declare-fun res!3115501 () Bool)

(assert (=> b!7832652 (=> res!3115501 e!4632080)))

(assert (=> b!7832652 (= res!3115501 call!726357)))

(declare-fun b!7832653 () Bool)

(assert (=> b!7832653 (= e!4632084 (= lt!2677030 call!726357))))

(declare-fun b!7832654 () Bool)

(declare-fun res!3115500 () Bool)

(assert (=> b!7832654 (=> res!3115500 e!4632082)))

(assert (=> b!7832654 (= res!3115500 (not ((_ is ElementMatch!20961) r2!6199)))))

(assert (=> b!7832654 (= e!4632085 e!4632082)))

(declare-fun b!7832655 () Bool)

(declare-fun res!3115502 () Bool)

(assert (=> b!7832655 (=> (not res!3115502) (not e!4632086))))

(assert (=> b!7832655 (= res!3115502 (isEmpty!42291 (tail!15533 (_2!38297 (get!26387 lt!2677001)))))))

(declare-fun bm!726352 () Bool)

(assert (=> bm!726352 (= call!726357 (isEmpty!42291 (_2!38297 (get!26387 lt!2677001))))))

(declare-fun b!7832656 () Bool)

(assert (=> b!7832656 (= e!4632082 e!4632081)))

(declare-fun res!3115504 () Bool)

(assert (=> b!7832656 (=> (not res!3115504) (not e!4632081))))

(assert (=> b!7832656 (= res!3115504 (not lt!2677030))))

(declare-fun b!7832657 () Bool)

(assert (=> b!7832657 (= e!4632080 (not (= (head!15992 (_2!38297 (get!26387 lt!2677001))) (c!1440616 r2!6199))))))

(assert (= (and d!2351104 c!1440737) b!7832650))

(assert (= (and d!2351104 (not c!1440737)) b!7832651))

(assert (= (and d!2351104 c!1440738) b!7832653))

(assert (= (and d!2351104 (not c!1440738)) b!7832644))

(assert (= (and b!7832644 c!1440739) b!7832648))

(assert (= (and b!7832644 (not c!1440739)) b!7832654))

(assert (= (and b!7832654 (not res!3115500)) b!7832646))

(assert (= (and b!7832646 res!3115497) b!7832649))

(assert (= (and b!7832649 res!3115498) b!7832655))

(assert (= (and b!7832655 res!3115502) b!7832645))

(assert (= (and b!7832646 (not res!3115503)) b!7832656))

(assert (= (and b!7832656 res!3115504) b!7832652))

(assert (= (and b!7832652 (not res!3115501)) b!7832647))

(assert (= (and b!7832647 (not res!3115499)) b!7832657))

(assert (= (or b!7832653 b!7832649 b!7832652) bm!726352))

(declare-fun m!8249294 () Bool)

(assert (=> b!7832655 m!8249294))

(assert (=> b!7832655 m!8249294))

(declare-fun m!8249296 () Bool)

(assert (=> b!7832655 m!8249296))

(assert (=> b!7832647 m!8249294))

(assert (=> b!7832647 m!8249294))

(assert (=> b!7832647 m!8249296))

(declare-fun m!8249298 () Bool)

(assert (=> b!7832657 m!8249298))

(assert (=> b!7832650 m!8249122))

(assert (=> b!7832651 m!8249298))

(assert (=> b!7832651 m!8249298))

(declare-fun m!8249300 () Bool)

(assert (=> b!7832651 m!8249300))

(assert (=> b!7832651 m!8249294))

(assert (=> b!7832651 m!8249300))

(assert (=> b!7832651 m!8249294))

(declare-fun m!8249302 () Bool)

(assert (=> b!7832651 m!8249302))

(assert (=> b!7832645 m!8249298))

(declare-fun m!8249304 () Bool)

(assert (=> bm!726352 m!8249304))

(assert (=> d!2351104 m!8249304))

(assert (=> d!2351104 m!8248900))

(assert (=> b!7832328 d!2351104))

(declare-fun d!2351106 () Bool)

(assert (=> d!2351106 (= (get!26387 lt!2677001) (v!54922 lt!2677001))))

(assert (=> b!7832328 d!2351106))

(assert (=> b!7832203 d!2351088))

(declare-fun d!2351108 () Bool)

(assert (=> d!2351108 (= (isEmpty!42293 (findConcatSeparation!3818 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274)) (not ((_ is Some!17787) (findConcatSeparation!3818 r1!6261 r2!6199 s1Rec!453 s2Rec!453 s!14274))))))

(assert (=> d!2351016 d!2351108))

(declare-fun e!4632087 () Bool)

(declare-fun lt!2677031 () List!73798)

(declare-fun b!7832661 () Bool)

(assert (=> b!7832661 (= e!4632087 (or (not (= s2!3721 Nil!73674)) (= lt!2677031 (t!388533 s1!4101))))))

(declare-fun b!7832658 () Bool)

(declare-fun e!4632088 () List!73798)

(assert (=> b!7832658 (= e!4632088 s2!3721)))

(declare-fun d!2351110 () Bool)

(assert (=> d!2351110 e!4632087))

(declare-fun res!3115506 () Bool)

(assert (=> d!2351110 (=> (not res!3115506) (not e!4632087))))

(assert (=> d!2351110 (= res!3115506 (= (content!15643 lt!2677031) ((_ map or) (content!15643 (t!388533 s1!4101)) (content!15643 s2!3721))))))

(assert (=> d!2351110 (= lt!2677031 e!4632088)))

(declare-fun c!1440740 () Bool)

(assert (=> d!2351110 (= c!1440740 ((_ is Nil!73674) (t!388533 s1!4101)))))

(assert (=> d!2351110 (= (++!17995 (t!388533 s1!4101) s2!3721) lt!2677031)))

(declare-fun b!7832660 () Bool)

(declare-fun res!3115505 () Bool)

(assert (=> b!7832660 (=> (not res!3115505) (not e!4632087))))

(assert (=> b!7832660 (= res!3115505 (= (size!42760 lt!2677031) (+ (size!42760 (t!388533 s1!4101)) (size!42760 s2!3721))))))

(declare-fun b!7832659 () Bool)

(assert (=> b!7832659 (= e!4632088 (Cons!73674 (h!80122 (t!388533 s1!4101)) (++!17995 (t!388533 (t!388533 s1!4101)) s2!3721)))))

(assert (= (and d!2351110 c!1440740) b!7832658))

(assert (= (and d!2351110 (not c!1440740)) b!7832659))

(assert (= (and d!2351110 res!3115506) b!7832660))

(assert (= (and b!7832660 res!3115505) b!7832661))

(declare-fun m!8249306 () Bool)

(assert (=> d!2351110 m!8249306))

(assert (=> d!2351110 m!8249158))

(assert (=> d!2351110 m!8248932))

(declare-fun m!8249308 () Bool)

(assert (=> b!7832660 m!8249308))

(assert (=> b!7832660 m!8249166))

(assert (=> b!7832660 m!8248938))

(declare-fun m!8249310 () Bool)

(assert (=> b!7832659 m!8249310))

(assert (=> b!7832106 d!2351110))

(declare-fun d!2351112 () Bool)

(assert (=> d!2351112 (= (isEmpty!42291 (tail!15533 s1Rec!453)) ((_ is Nil!73674) (tail!15533 s1Rec!453)))))

(assert (=> b!7832235 d!2351112))

(declare-fun d!2351114 () Bool)

(assert (=> d!2351114 (= (tail!15533 s1Rec!453) (t!388533 s1Rec!453))))

(assert (=> b!7832235 d!2351114))

(assert (=> b!7832233 d!2351086))

(assert (=> bm!726312 d!2351092))

(declare-fun e!4632089 () Bool)

(declare-fun lt!2677032 () List!73798)

(declare-fun b!7832665 () Bool)

(assert (=> b!7832665 (= e!4632089 (or (not (= s2Rec!453 Nil!73674)) (= lt!2677032 (t!388533 s1Rec!453))))))

(declare-fun b!7832662 () Bool)

(declare-fun e!4632090 () List!73798)

(assert (=> b!7832662 (= e!4632090 s2Rec!453)))

(declare-fun d!2351116 () Bool)

(assert (=> d!2351116 e!4632089))

(declare-fun res!3115508 () Bool)

(assert (=> d!2351116 (=> (not res!3115508) (not e!4632089))))

(assert (=> d!2351116 (= res!3115508 (= (content!15643 lt!2677032) ((_ map or) (content!15643 (t!388533 s1Rec!453)) (content!15643 s2Rec!453))))))

(assert (=> d!2351116 (= lt!2677032 e!4632090)))

(declare-fun c!1440741 () Bool)

(assert (=> d!2351116 (= c!1440741 ((_ is Nil!73674) (t!388533 s1Rec!453)))))

(assert (=> d!2351116 (= (++!17995 (t!388533 s1Rec!453) s2Rec!453) lt!2677032)))

(declare-fun b!7832664 () Bool)

(declare-fun res!3115507 () Bool)

(assert (=> b!7832664 (=> (not res!3115507) (not e!4632089))))

(assert (=> b!7832664 (= res!3115507 (= (size!42760 lt!2677032) (+ (size!42760 (t!388533 s1Rec!453)) (size!42760 s2Rec!453))))))

(declare-fun b!7832663 () Bool)

(assert (=> b!7832663 (= e!4632090 (Cons!73674 (h!80122 (t!388533 s1Rec!453)) (++!17995 (t!388533 (t!388533 s1Rec!453)) s2Rec!453)))))

(assert (= (and d!2351116 c!1440741) b!7832662))

(assert (= (and d!2351116 (not c!1440741)) b!7832663))

(assert (= (and d!2351116 res!3115508) b!7832664))

(assert (= (and b!7832664 res!3115507) b!7832665))

(declare-fun m!8249312 () Bool)

(assert (=> d!2351116 m!8249312))

(declare-fun m!8249314 () Bool)

(assert (=> d!2351116 m!8249314))

(assert (=> d!2351116 m!8248952))

(declare-fun m!8249316 () Bool)

(assert (=> b!7832664 m!8249316))

(assert (=> b!7832664 m!8249172))

(assert (=> b!7832664 m!8248958))

(declare-fun m!8249318 () Bool)

(assert (=> b!7832663 m!8249318))

(assert (=> b!7832119 d!2351116))

(assert (=> b!7832243 d!2351112))

(assert (=> b!7832243 d!2351114))

(assert (=> d!2351030 d!2351048))

(assert (=> d!2351030 d!2350988))

(declare-fun b!7832668 () Bool)

(declare-fun e!4632097 () Bool)

(declare-fun call!726359 () Bool)

(assert (=> b!7832668 (= e!4632097 call!726359)))

(declare-fun b!7832669 () Bool)

(declare-fun e!4632093 () Bool)

(declare-fun e!4632096 () Bool)

(assert (=> b!7832669 (= e!4632093 e!4632096)))

(declare-fun res!3115509 () Bool)

(assert (=> b!7832669 (=> (not res!3115509) (not e!4632096))))

(assert (=> b!7832669 (= res!3115509 call!726359)))

(declare-fun b!7832670 () Bool)

(declare-fun e!4632094 () Bool)

(declare-fun e!4632091 () Bool)

(assert (=> b!7832670 (= e!4632094 e!4632091)))

(declare-fun res!3115511 () Bool)

(assert (=> b!7832670 (= res!3115511 (not (nullable!9303 (reg!21290 (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))))))))

(assert (=> b!7832670 (=> (not res!3115511) (not e!4632091))))

(declare-fun call!726358 () Bool)

(declare-fun bm!726353 () Bool)

(declare-fun c!1440742 () Bool)

(declare-fun c!1440743 () Bool)

(assert (=> bm!726353 (= call!726358 (validRegex!11375 (ite c!1440742 (reg!21290 (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))) (ite c!1440743 (regTwo!42435 (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))) (regOne!42434 (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199))))))))))

(declare-fun bm!726354 () Bool)

(assert (=> bm!726354 (= call!726359 call!726358)))

(declare-fun d!2351118 () Bool)

(declare-fun res!3115512 () Bool)

(declare-fun e!4632095 () Bool)

(assert (=> d!2351118 (=> res!3115512 e!4632095)))

(assert (=> d!2351118 (= res!3115512 ((_ is ElementMatch!20961) (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))))))

(assert (=> d!2351118 (= (validRegex!11375 (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))) e!4632095)))

(declare-fun b!7832671 () Bool)

(declare-fun res!3115513 () Bool)

(assert (=> b!7832671 (=> (not res!3115513) (not e!4632097))))

(declare-fun call!726360 () Bool)

(assert (=> b!7832671 (= res!3115513 call!726360)))

(declare-fun e!4632092 () Bool)

(assert (=> b!7832671 (= e!4632092 e!4632097)))

(declare-fun b!7832672 () Bool)

(declare-fun res!3115510 () Bool)

(assert (=> b!7832672 (=> res!3115510 e!4632093)))

(assert (=> b!7832672 (= res!3115510 (not ((_ is Concat!29806) (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199))))))))

(assert (=> b!7832672 (= e!4632092 e!4632093)))

(declare-fun b!7832673 () Bool)

(assert (=> b!7832673 (= e!4632091 call!726358)))

(declare-fun b!7832674 () Bool)

(assert (=> b!7832674 (= e!4632096 call!726360)))

(declare-fun b!7832675 () Bool)

(assert (=> b!7832675 (= e!4632094 e!4632092)))

(assert (=> b!7832675 (= c!1440743 ((_ is Union!20961) (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))))))

(declare-fun bm!726355 () Bool)

(assert (=> bm!726355 (= call!726360 (validRegex!11375 (ite c!1440743 (regOne!42435 (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))) (regTwo!42434 (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))))))))

(declare-fun b!7832676 () Bool)

(assert (=> b!7832676 (= e!4632095 e!4632094)))

(assert (=> b!7832676 (= c!1440742 ((_ is Star!20961) (ite c!1440621 (reg!21290 r2!6199) (ite c!1440622 (regTwo!42435 r2!6199) (regOne!42434 r2!6199)))))))

(assert (= (and d!2351118 (not res!3115512)) b!7832676))

(assert (= (and b!7832676 c!1440742) b!7832670))

(assert (= (and b!7832676 (not c!1440742)) b!7832675))

(assert (= (and b!7832670 res!3115511) b!7832673))

(assert (= (and b!7832675 c!1440743) b!7832671))

(assert (= (and b!7832675 (not c!1440743)) b!7832672))

(assert (= (and b!7832671 res!3115513) b!7832668))

(assert (= (and b!7832672 (not res!3115510)) b!7832669))

(assert (= (and b!7832669 res!3115509) b!7832674))

(assert (= (or b!7832668 b!7832669) bm!726354))

(assert (= (or b!7832671 b!7832674) bm!726355))

(assert (= (or b!7832673 bm!726354) bm!726353))

(declare-fun m!8249320 () Bool)

(assert (=> b!7832670 m!8249320))

(declare-fun m!8249322 () Bool)

(assert (=> bm!726353 m!8249322))

(declare-fun m!8249324 () Bool)

(assert (=> bm!726355 m!8249324))

(assert (=> bm!726300 d!2351118))

(declare-fun d!2351120 () Bool)

(assert (=> d!2351120 (= (isDefined!14394 lt!2677001) (not (isEmpty!42293 lt!2677001)))))

(declare-fun bs!1966823 () Bool)

(assert (= bs!1966823 d!2351120))

(declare-fun m!8249326 () Bool)

(assert (=> bs!1966823 m!8249326))

(assert (=> d!2351018 d!2351120))

(assert (=> d!2351018 d!2351014))

(assert (=> d!2351018 d!2350994))

(assert (=> b!7832356 d!2351098))

(declare-fun b!7832695 () Bool)

(declare-fun e!4632114 () Bool)

(declare-fun call!726364 () Bool)

(assert (=> b!7832695 (= e!4632114 call!726364)))

(declare-fun b!7832696 () Bool)

(declare-fun e!4632110 () Bool)

(declare-fun e!4632113 () Bool)

(assert (=> b!7832696 (= e!4632110 e!4632113)))

(declare-fun res!3115514 () Bool)

(assert (=> b!7832696 (=> (not res!3115514) (not e!4632113))))

(assert (=> b!7832696 (= res!3115514 call!726364)))

(declare-fun b!7832697 () Bool)

(declare-fun e!4632111 () Bool)

(declare-fun e!4632108 () Bool)

(assert (=> b!7832697 (= e!4632111 e!4632108)))

(declare-fun res!3115516 () Bool)

(assert (=> b!7832697 (= res!3115516 (not (nullable!9303 (reg!21290 (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))))))))

(assert (=> b!7832697 (=> (not res!3115516) (not e!4632108))))

(declare-fun c!1440754 () Bool)

(declare-fun c!1440755 () Bool)

(declare-fun bm!726358 () Bool)

(declare-fun call!726363 () Bool)

(assert (=> bm!726358 (= call!726363 (validRegex!11375 (ite c!1440754 (reg!21290 (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))) (ite c!1440755 (regTwo!42435 (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))) (regOne!42434 (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261)))))))))

(declare-fun bm!726359 () Bool)

(assert (=> bm!726359 (= call!726364 call!726363)))

(declare-fun d!2351122 () Bool)

(declare-fun res!3115517 () Bool)

(declare-fun e!4632112 () Bool)

(assert (=> d!2351122 (=> res!3115517 e!4632112)))

(assert (=> d!2351122 (= res!3115517 ((_ is ElementMatch!20961) (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))))))

(assert (=> d!2351122 (= (validRegex!11375 (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))) e!4632112)))

(declare-fun b!7832698 () Bool)

(declare-fun res!3115518 () Bool)

(assert (=> b!7832698 (=> (not res!3115518) (not e!4632114))))

(declare-fun call!726365 () Bool)

(assert (=> b!7832698 (= res!3115518 call!726365)))

(declare-fun e!4632109 () Bool)

(assert (=> b!7832698 (= e!4632109 e!4632114)))

(declare-fun b!7832699 () Bool)

(declare-fun res!3115515 () Bool)

(assert (=> b!7832699 (=> res!3115515 e!4632110)))

(assert (=> b!7832699 (= res!3115515 (not ((_ is Concat!29806) (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261)))))))

(assert (=> b!7832699 (= e!4632109 e!4632110)))

(declare-fun b!7832700 () Bool)

(assert (=> b!7832700 (= e!4632108 call!726363)))

(declare-fun b!7832701 () Bool)

(assert (=> b!7832701 (= e!4632113 call!726365)))

(declare-fun b!7832702 () Bool)

(assert (=> b!7832702 (= e!4632111 e!4632109)))

(assert (=> b!7832702 (= c!1440755 ((_ is Union!20961) (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))))))

(declare-fun bm!726360 () Bool)

(assert (=> bm!726360 (= call!726365 (validRegex!11375 (ite c!1440755 (regOne!42435 (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))) (regTwo!42434 (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))))))))

(declare-fun b!7832703 () Bool)

(assert (=> b!7832703 (= e!4632112 e!4632111)))

(assert (=> b!7832703 (= c!1440754 ((_ is Star!20961) (ite c!1440633 (regOne!42435 r1!6261) (regTwo!42434 r1!6261))))))

(assert (= (and d!2351122 (not res!3115517)) b!7832703))

(assert (= (and b!7832703 c!1440754) b!7832697))

(assert (= (and b!7832703 (not c!1440754)) b!7832702))

(assert (= (and b!7832697 res!3115516) b!7832700))

(assert (= (and b!7832702 c!1440755) b!7832698))

(assert (= (and b!7832702 (not c!1440755)) b!7832699))

(assert (= (and b!7832698 res!3115518) b!7832695))

(assert (= (and b!7832699 (not res!3115515)) b!7832696))

(assert (= (and b!7832696 res!3115514) b!7832701))

(assert (= (or b!7832695 b!7832696) bm!726359))

(assert (= (or b!7832698 b!7832701) bm!726360))

(assert (= (or b!7832700 bm!726359) bm!726358))

(declare-fun m!8249328 () Bool)

(assert (=> b!7832697 m!8249328))

(declare-fun m!8249330 () Bool)

(assert (=> bm!726358 m!8249330))

(declare-fun m!8249332 () Bool)

(assert (=> bm!726360 m!8249332))

(assert (=> bm!726307 d!2351122))

(declare-fun b!7832704 () Bool)

(declare-fun e!4632119 () Bool)

(declare-fun e!4632120 () Bool)

(assert (=> b!7832704 (= e!4632119 e!4632120)))

(declare-fun c!1440758 () Bool)

(assert (=> b!7832704 (= c!1440758 ((_ is EmptyLang!20961) (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453))))))

(declare-fun b!7832705 () Bool)

(declare-fun e!4632121 () Bool)

(assert (=> b!7832705 (= e!4632121 (= (head!15992 (tail!15533 s1Rec!453)) (c!1440616 (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453)))))))

(declare-fun d!2351124 () Bool)

(assert (=> d!2351124 e!4632119))

(declare-fun c!1440757 () Bool)

(assert (=> d!2351124 (= c!1440757 ((_ is EmptyExpr!20961) (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453))))))

(declare-fun lt!2677035 () Bool)

(declare-fun e!4632118 () Bool)

(assert (=> d!2351124 (= lt!2677035 e!4632118)))

(declare-fun c!1440756 () Bool)

(assert (=> d!2351124 (= c!1440756 (isEmpty!42291 (tail!15533 s1Rec!453)))))

(assert (=> d!2351124 (validRegex!11375 (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453)))))

(assert (=> d!2351124 (= (matchR!10417 (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453)) (tail!15533 s1Rec!453)) lt!2677035)))

(declare-fun b!7832706 () Bool)

(declare-fun res!3115525 () Bool)

(declare-fun e!4632117 () Bool)

(assert (=> b!7832706 (=> res!3115525 e!4632117)))

(assert (=> b!7832706 (= res!3115525 e!4632121)))

(declare-fun res!3115519 () Bool)

(assert (=> b!7832706 (=> (not res!3115519) (not e!4632121))))

(assert (=> b!7832706 (= res!3115519 lt!2677035)))

(declare-fun b!7832707 () Bool)

(declare-fun res!3115521 () Bool)

(declare-fun e!4632115 () Bool)

(assert (=> b!7832707 (=> res!3115521 e!4632115)))

(assert (=> b!7832707 (= res!3115521 (not (isEmpty!42291 (tail!15533 (tail!15533 s1Rec!453)))))))

(declare-fun b!7832708 () Bool)

(assert (=> b!7832708 (= e!4632120 (not lt!2677035))))

(declare-fun b!7832709 () Bool)

(declare-fun res!3115520 () Bool)

(assert (=> b!7832709 (=> (not res!3115520) (not e!4632121))))

(declare-fun call!726368 () Bool)

(assert (=> b!7832709 (= res!3115520 (not call!726368))))

(declare-fun b!7832710 () Bool)

(assert (=> b!7832710 (= e!4632118 (nullable!9303 (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453))))))

(declare-fun b!7832711 () Bool)

(assert (=> b!7832711 (= e!4632118 (matchR!10417 (derivativeStep!6262 (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453)) (head!15992 (tail!15533 s1Rec!453))) (tail!15533 (tail!15533 s1Rec!453))))))

(declare-fun b!7832712 () Bool)

(declare-fun e!4632116 () Bool)

(assert (=> b!7832712 (= e!4632116 e!4632115)))

(declare-fun res!3115523 () Bool)

(assert (=> b!7832712 (=> res!3115523 e!4632115)))

(assert (=> b!7832712 (= res!3115523 call!726368)))

(declare-fun b!7832713 () Bool)

(assert (=> b!7832713 (= e!4632119 (= lt!2677035 call!726368))))

(declare-fun b!7832714 () Bool)

(declare-fun res!3115522 () Bool)

(assert (=> b!7832714 (=> res!3115522 e!4632117)))

(assert (=> b!7832714 (= res!3115522 (not ((_ is ElementMatch!20961) (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453)))))))

(assert (=> b!7832714 (= e!4632120 e!4632117)))

(declare-fun b!7832715 () Bool)

(declare-fun res!3115524 () Bool)

(assert (=> b!7832715 (=> (not res!3115524) (not e!4632121))))

(assert (=> b!7832715 (= res!3115524 (isEmpty!42291 (tail!15533 (tail!15533 s1Rec!453))))))

(declare-fun bm!726363 () Bool)

(assert (=> bm!726363 (= call!726368 (isEmpty!42291 (tail!15533 s1Rec!453)))))

(declare-fun b!7832716 () Bool)

(assert (=> b!7832716 (= e!4632117 e!4632116)))

(declare-fun res!3115526 () Bool)

(assert (=> b!7832716 (=> (not res!3115526) (not e!4632116))))

(assert (=> b!7832716 (= res!3115526 (not lt!2677035))))

(declare-fun b!7832717 () Bool)

(assert (=> b!7832717 (= e!4632115 (not (= (head!15992 (tail!15533 s1Rec!453)) (c!1440616 (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453))))))))

(assert (= (and d!2351124 c!1440756) b!7832710))

(assert (= (and d!2351124 (not c!1440756)) b!7832711))

(assert (= (and d!2351124 c!1440757) b!7832713))

(assert (= (and d!2351124 (not c!1440757)) b!7832704))

(assert (= (and b!7832704 c!1440758) b!7832708))

(assert (= (and b!7832704 (not c!1440758)) b!7832714))

(assert (= (and b!7832714 (not res!3115522)) b!7832706))

(assert (= (and b!7832706 res!3115519) b!7832709))

(assert (= (and b!7832709 res!3115520) b!7832715))

(assert (= (and b!7832715 res!3115524) b!7832705))

(assert (= (and b!7832706 (not res!3115525)) b!7832716))

(assert (= (and b!7832716 res!3115526) b!7832712))

(assert (= (and b!7832712 (not res!3115523)) b!7832707))

(assert (= (and b!7832707 (not res!3115521)) b!7832717))

(assert (= (or b!7832713 b!7832709 b!7832712) bm!726363))

(assert (=> b!7832715 m!8249042))

(declare-fun m!8249334 () Bool)

(assert (=> b!7832715 m!8249334))

(assert (=> b!7832715 m!8249334))

(declare-fun m!8249336 () Bool)

(assert (=> b!7832715 m!8249336))

(assert (=> b!7832707 m!8249042))

(assert (=> b!7832707 m!8249334))

(assert (=> b!7832707 m!8249334))

(assert (=> b!7832707 m!8249336))

(assert (=> b!7832717 m!8249042))

(declare-fun m!8249338 () Bool)

(assert (=> b!7832717 m!8249338))

(assert (=> b!7832710 m!8249048))

(declare-fun m!8249340 () Bool)

(assert (=> b!7832710 m!8249340))

(assert (=> b!7832711 m!8249042))

(assert (=> b!7832711 m!8249338))

(assert (=> b!7832711 m!8249048))

(assert (=> b!7832711 m!8249338))

(declare-fun m!8249342 () Bool)

(assert (=> b!7832711 m!8249342))

(assert (=> b!7832711 m!8249042))

(assert (=> b!7832711 m!8249334))

(assert (=> b!7832711 m!8249342))

(assert (=> b!7832711 m!8249334))

(declare-fun m!8249344 () Bool)

(assert (=> b!7832711 m!8249344))

(assert (=> b!7832705 m!8249042))

(assert (=> b!7832705 m!8249338))

(assert (=> bm!726363 m!8249042))

(assert (=> bm!726363 m!8249046))

(assert (=> d!2351124 m!8249042))

(assert (=> d!2351124 m!8249046))

(assert (=> d!2351124 m!8249048))

(declare-fun m!8249346 () Bool)

(assert (=> d!2351124 m!8249346))

(assert (=> b!7832239 d!2351124))

(declare-fun b!7832718 () Bool)

(declare-fun e!4632124 () Regex!20961)

(declare-fun e!4632122 () Regex!20961)

(assert (=> b!7832718 (= e!4632124 e!4632122)))

(declare-fun c!1440759 () Bool)

(assert (=> b!7832718 (= c!1440759 ((_ is ElementMatch!20961) r1!6261))))

(declare-fun b!7832719 () Bool)

(declare-fun c!1440763 () Bool)

(assert (=> b!7832719 (= c!1440763 (nullable!9303 (regOne!42434 r1!6261)))))

(declare-fun e!4632123 () Regex!20961)

(declare-fun e!4632125 () Regex!20961)

(assert (=> b!7832719 (= e!4632123 e!4632125)))

(declare-fun b!7832720 () Bool)

(declare-fun call!726374 () Regex!20961)

(assert (=> b!7832720 (= e!4632123 (Concat!29806 call!726374 r1!6261))))

(declare-fun b!7832721 () Bool)

(assert (=> b!7832721 (= e!4632124 EmptyLang!20961)))

(declare-fun b!7832722 () Bool)

(declare-fun c!1440760 () Bool)

(assert (=> b!7832722 (= c!1440760 ((_ is Union!20961) r1!6261))))

(declare-fun e!4632126 () Regex!20961)

(assert (=> b!7832722 (= e!4632122 e!4632126)))

(declare-fun b!7832723 () Bool)

(declare-fun call!726375 () Regex!20961)

(assert (=> b!7832723 (= e!4632125 (Union!20961 (Concat!29806 call!726375 (regTwo!42434 r1!6261)) EmptyLang!20961))))

(declare-fun b!7832724 () Bool)

(assert (=> b!7832724 (= e!4632122 (ite (= (head!15992 s1Rec!453) (c!1440616 r1!6261)) EmptyExpr!20961 EmptyLang!20961))))

(declare-fun call!726376 () Regex!20961)

(declare-fun bm!726368 () Bool)

(assert (=> bm!726368 (= call!726376 (derivativeStep!6262 (ite c!1440760 (regTwo!42435 r1!6261) (regTwo!42434 r1!6261)) (head!15992 s1Rec!453)))))

(declare-fun b!7832725 () Bool)

(assert (=> b!7832725 (= e!4632126 e!4632123)))

(declare-fun c!1440762 () Bool)

(assert (=> b!7832725 (= c!1440762 ((_ is Star!20961) r1!6261))))

(declare-fun b!7832726 () Bool)

(assert (=> b!7832726 (= e!4632125 (Union!20961 (Concat!29806 call!726375 (regTwo!42434 r1!6261)) call!726376))))

(declare-fun bm!726369 () Bool)

(declare-fun call!726373 () Regex!20961)

(assert (=> bm!726369 (= call!726373 (derivativeStep!6262 (ite c!1440760 (regOne!42435 r1!6261) (ite c!1440762 (reg!21290 r1!6261) (regOne!42434 r1!6261))) (head!15992 s1Rec!453)))))

(declare-fun bm!726370 () Bool)

(assert (=> bm!726370 (= call!726374 call!726373)))

(declare-fun b!7832727 () Bool)

(assert (=> b!7832727 (= e!4632126 (Union!20961 call!726373 call!726376))))

(declare-fun bm!726371 () Bool)

(assert (=> bm!726371 (= call!726375 call!726374)))

(declare-fun d!2351126 () Bool)

(declare-fun lt!2677036 () Regex!20961)

(assert (=> d!2351126 (validRegex!11375 lt!2677036)))

(assert (=> d!2351126 (= lt!2677036 e!4632124)))

(declare-fun c!1440761 () Bool)

(assert (=> d!2351126 (= c!1440761 (or ((_ is EmptyExpr!20961) r1!6261) ((_ is EmptyLang!20961) r1!6261)))))

(assert (=> d!2351126 (validRegex!11375 r1!6261)))

(assert (=> d!2351126 (= (derivativeStep!6262 r1!6261 (head!15992 s1Rec!453)) lt!2677036)))

(assert (= (and d!2351126 c!1440761) b!7832721))

(assert (= (and d!2351126 (not c!1440761)) b!7832718))

(assert (= (and b!7832718 c!1440759) b!7832724))

(assert (= (and b!7832718 (not c!1440759)) b!7832722))

(assert (= (and b!7832722 c!1440760) b!7832727))

(assert (= (and b!7832722 (not c!1440760)) b!7832725))

(assert (= (and b!7832725 c!1440762) b!7832720))

(assert (= (and b!7832725 (not c!1440762)) b!7832719))

(assert (= (and b!7832719 c!1440763) b!7832726))

(assert (= (and b!7832719 (not c!1440763)) b!7832723))

(assert (= (or b!7832726 b!7832723) bm!726371))

(assert (= (or b!7832720 bm!726371) bm!726370))

(assert (= (or b!7832727 bm!726370) bm!726369))

(assert (= (or b!7832727 b!7832726) bm!726368))

(assert (=> b!7832719 m!8249286))

(assert (=> bm!726368 m!8249040))

(declare-fun m!8249348 () Bool)

(assert (=> bm!726368 m!8249348))

(assert (=> bm!726369 m!8249040))

(declare-fun m!8249350 () Bool)

(assert (=> bm!726369 m!8249350))

(declare-fun m!8249352 () Bool)

(assert (=> d!2351126 m!8249352))

(assert (=> d!2351126 m!8248904))

(assert (=> b!7832239 d!2351126))

(assert (=> b!7832239 d!2351086))

(assert (=> b!7832239 d!2351114))

(declare-fun b!7832728 () Bool)

(declare-fun e!4632133 () Bool)

(declare-fun call!726378 () Bool)

(assert (=> b!7832728 (= e!4632133 call!726378)))

(declare-fun b!7832729 () Bool)

(declare-fun e!4632129 () Bool)

(declare-fun e!4632132 () Bool)

(assert (=> b!7832729 (= e!4632129 e!4632132)))

(declare-fun res!3115527 () Bool)

(assert (=> b!7832729 (=> (not res!3115527) (not e!4632132))))

(assert (=> b!7832729 (= res!3115527 call!726378)))

(declare-fun b!7832730 () Bool)

(declare-fun e!4632130 () Bool)

(declare-fun e!4632127 () Bool)

(assert (=> b!7832730 (= e!4632130 e!4632127)))

(declare-fun res!3115529 () Bool)

(assert (=> b!7832730 (= res!3115529 (not (nullable!9303 (reg!21290 (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))))))))

(assert (=> b!7832730 (=> (not res!3115529) (not e!4632127))))

(declare-fun bm!726372 () Bool)

(declare-fun call!726377 () Bool)

(declare-fun c!1440764 () Bool)

(declare-fun c!1440765 () Bool)

(assert (=> bm!726372 (= call!726377 (validRegex!11375 (ite c!1440764 (reg!21290 (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))) (ite c!1440765 (regTwo!42435 (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))) (regOne!42434 (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199)))))))))

(declare-fun bm!726373 () Bool)

(assert (=> bm!726373 (= call!726378 call!726377)))

(declare-fun d!2351128 () Bool)

(declare-fun res!3115530 () Bool)

(declare-fun e!4632131 () Bool)

(assert (=> d!2351128 (=> res!3115530 e!4632131)))

(assert (=> d!2351128 (= res!3115530 ((_ is ElementMatch!20961) (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))))))

(assert (=> d!2351128 (= (validRegex!11375 (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))) e!4632131)))

(declare-fun b!7832731 () Bool)

(declare-fun res!3115531 () Bool)

(assert (=> b!7832731 (=> (not res!3115531) (not e!4632133))))

(declare-fun call!726379 () Bool)

(assert (=> b!7832731 (= res!3115531 call!726379)))

(declare-fun e!4632128 () Bool)

(assert (=> b!7832731 (= e!4632128 e!4632133)))

(declare-fun b!7832732 () Bool)

(declare-fun res!3115528 () Bool)

(assert (=> b!7832732 (=> res!3115528 e!4632129)))

(assert (=> b!7832732 (= res!3115528 (not ((_ is Concat!29806) (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199)))))))

(assert (=> b!7832732 (= e!4632128 e!4632129)))

(declare-fun b!7832733 () Bool)

(assert (=> b!7832733 (= e!4632127 call!726377)))

(declare-fun b!7832734 () Bool)

(assert (=> b!7832734 (= e!4632132 call!726379)))

(declare-fun b!7832735 () Bool)

(assert (=> b!7832735 (= e!4632130 e!4632128)))

(assert (=> b!7832735 (= c!1440765 ((_ is Union!20961) (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))))))

(declare-fun bm!726374 () Bool)

(assert (=> bm!726374 (= call!726379 (validRegex!11375 (ite c!1440765 (regOne!42435 (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))) (regTwo!42434 (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))))))))

(declare-fun b!7832736 () Bool)

(assert (=> b!7832736 (= e!4632131 e!4632130)))

(assert (=> b!7832736 (= c!1440764 ((_ is Star!20961) (ite c!1440622 (regOne!42435 r2!6199) (regTwo!42434 r2!6199))))))

(assert (= (and d!2351128 (not res!3115530)) b!7832736))

(assert (= (and b!7832736 c!1440764) b!7832730))

(assert (= (and b!7832736 (not c!1440764)) b!7832735))

(assert (= (and b!7832730 res!3115529) b!7832733))

(assert (= (and b!7832735 c!1440765) b!7832731))

(assert (= (and b!7832735 (not c!1440765)) b!7832732))

(assert (= (and b!7832731 res!3115531) b!7832728))

(assert (= (and b!7832732 (not res!3115528)) b!7832729))

(assert (= (and b!7832729 res!3115527) b!7832734))

(assert (= (or b!7832728 b!7832729) bm!726373))

(assert (= (or b!7832731 b!7832734) bm!726374))

(assert (= (or b!7832733 bm!726373) bm!726372))

(declare-fun m!8249354 () Bool)

(assert (=> b!7832730 m!8249354))

(declare-fun m!8249356 () Bool)

(assert (=> bm!726372 m!8249356))

(declare-fun m!8249358 () Bool)

(assert (=> bm!726374 m!8249358))

(assert (=> bm!726302 d!2351128))

(declare-fun d!2351130 () Bool)

(declare-fun c!1440766 () Bool)

(assert (=> d!2351130 (= c!1440766 ((_ is Nil!73674) lt!2676968))))

(declare-fun e!4632134 () (InoxSet C!42248))

(assert (=> d!2351130 (= (content!15643 lt!2676968) e!4632134)))

(declare-fun b!7832737 () Bool)

(assert (=> b!7832737 (= e!4632134 ((as const (Array C!42248 Bool)) false))))

(declare-fun b!7832738 () Bool)

(assert (=> b!7832738 (= e!4632134 ((_ map or) (store ((as const (Array C!42248 Bool)) false) (h!80122 lt!2676968) true) (content!15643 (t!388533 lt!2676968))))))

(assert (= (and d!2351130 c!1440766) b!7832737))

(assert (= (and d!2351130 (not c!1440766)) b!7832738))

(declare-fun m!8249360 () Bool)

(assert (=> b!7832738 m!8249360))

(declare-fun m!8249362 () Bool)

(assert (=> b!7832738 m!8249362))

(assert (=> d!2350996 d!2351130))

(declare-fun d!2351132 () Bool)

(declare-fun c!1440767 () Bool)

(assert (=> d!2351132 (= c!1440767 ((_ is Nil!73674) s1Rec!453))))

(declare-fun e!4632135 () (InoxSet C!42248))

(assert (=> d!2351132 (= (content!15643 s1Rec!453) e!4632135)))

(declare-fun b!7832739 () Bool)

(assert (=> b!7832739 (= e!4632135 ((as const (Array C!42248 Bool)) false))))

(declare-fun b!7832740 () Bool)

(assert (=> b!7832740 (= e!4632135 ((_ map or) (store ((as const (Array C!42248 Bool)) false) (h!80122 s1Rec!453) true) (content!15643 (t!388533 s1Rec!453))))))

(assert (= (and d!2351132 c!1440767) b!7832739))

(assert (= (and d!2351132 (not c!1440767)) b!7832740))

(declare-fun m!8249364 () Bool)

(assert (=> b!7832740 m!8249364))

(assert (=> b!7832740 m!8249314))

(assert (=> d!2350996 d!2351132))

(declare-fun d!2351134 () Bool)

(declare-fun c!1440768 () Bool)

(assert (=> d!2351134 (= c!1440768 ((_ is Nil!73674) s2Rec!453))))

(declare-fun e!4632136 () (InoxSet C!42248))

(assert (=> d!2351134 (= (content!15643 s2Rec!453) e!4632136)))

(declare-fun b!7832741 () Bool)

(assert (=> b!7832741 (= e!4632136 ((as const (Array C!42248 Bool)) false))))

(declare-fun b!7832742 () Bool)

(assert (=> b!7832742 (= e!4632136 ((_ map or) (store ((as const (Array C!42248 Bool)) false) (h!80122 s2Rec!453) true) (content!15643 (t!388533 s2Rec!453))))))

(assert (= (and d!2351134 c!1440768) b!7832741))

(assert (= (and d!2351134 (not c!1440768)) b!7832742))

(declare-fun m!8249366 () Bool)

(assert (=> b!7832742 m!8249366))

(assert (=> b!7832742 m!8249204))

(assert (=> d!2350996 d!2351134))

(assert (=> b!7832379 d!2351034))

(assert (=> b!7832245 d!2351086))

(declare-fun d!2351136 () Bool)

(assert (=> d!2351136 (= (isEmpty!42291 (tail!15533 s2Rec!453)) ((_ is Nil!73674) (tail!15533 s2Rec!453)))))

(assert (=> b!7832381 d!2351136))

(declare-fun d!2351138 () Bool)

(assert (=> d!2351138 (= (tail!15533 s2Rec!453) (t!388533 s2Rec!453))))

(assert (=> b!7832381 d!2351138))

(assert (=> bm!726313 d!2351090))

(declare-fun b!7832743 () Bool)

(declare-fun e!4632141 () Bool)

(declare-fun e!4632142 () Bool)

(assert (=> b!7832743 (= e!4632141 e!4632142)))

(declare-fun c!1440771 () Bool)

(assert (=> b!7832743 (= c!1440771 ((_ is EmptyLang!20961) r1!6261))))

(declare-fun b!7832744 () Bool)

(declare-fun e!4632143 () Bool)

(assert (=> b!7832744 (= e!4632143 (= (head!15992 (_1!38297 (get!26387 lt!2677001))) (c!1440616 r1!6261)))))

(declare-fun d!2351140 () Bool)

(assert (=> d!2351140 e!4632141))

(declare-fun c!1440770 () Bool)

(assert (=> d!2351140 (= c!1440770 ((_ is EmptyExpr!20961) r1!6261))))

(declare-fun lt!2677037 () Bool)

(declare-fun e!4632140 () Bool)

(assert (=> d!2351140 (= lt!2677037 e!4632140)))

(declare-fun c!1440769 () Bool)

(assert (=> d!2351140 (= c!1440769 (isEmpty!42291 (_1!38297 (get!26387 lt!2677001))))))

(assert (=> d!2351140 (validRegex!11375 r1!6261)))

(assert (=> d!2351140 (= (matchR!10417 r1!6261 (_1!38297 (get!26387 lt!2677001))) lt!2677037)))

(declare-fun b!7832745 () Bool)

(declare-fun res!3115538 () Bool)

(declare-fun e!4632139 () Bool)

(assert (=> b!7832745 (=> res!3115538 e!4632139)))

(assert (=> b!7832745 (= res!3115538 e!4632143)))

(declare-fun res!3115532 () Bool)

(assert (=> b!7832745 (=> (not res!3115532) (not e!4632143))))

(assert (=> b!7832745 (= res!3115532 lt!2677037)))

(declare-fun b!7832746 () Bool)

(declare-fun res!3115534 () Bool)

(declare-fun e!4632137 () Bool)

(assert (=> b!7832746 (=> res!3115534 e!4632137)))

(assert (=> b!7832746 (= res!3115534 (not (isEmpty!42291 (tail!15533 (_1!38297 (get!26387 lt!2677001))))))))

(declare-fun b!7832747 () Bool)

(assert (=> b!7832747 (= e!4632142 (not lt!2677037))))

(declare-fun b!7832748 () Bool)

(declare-fun res!3115533 () Bool)

(assert (=> b!7832748 (=> (not res!3115533) (not e!4632143))))

(declare-fun call!726380 () Bool)

(assert (=> b!7832748 (= res!3115533 (not call!726380))))

(declare-fun b!7832749 () Bool)

(assert (=> b!7832749 (= e!4632140 (nullable!9303 r1!6261))))

(declare-fun b!7832750 () Bool)

(assert (=> b!7832750 (= e!4632140 (matchR!10417 (derivativeStep!6262 r1!6261 (head!15992 (_1!38297 (get!26387 lt!2677001)))) (tail!15533 (_1!38297 (get!26387 lt!2677001)))))))

(declare-fun b!7832751 () Bool)

(declare-fun e!4632138 () Bool)

(assert (=> b!7832751 (= e!4632138 e!4632137)))

(declare-fun res!3115536 () Bool)

(assert (=> b!7832751 (=> res!3115536 e!4632137)))

(assert (=> b!7832751 (= res!3115536 call!726380)))

(declare-fun b!7832752 () Bool)

(assert (=> b!7832752 (= e!4632141 (= lt!2677037 call!726380))))

(declare-fun b!7832753 () Bool)

(declare-fun res!3115535 () Bool)

(assert (=> b!7832753 (=> res!3115535 e!4632139)))

(assert (=> b!7832753 (= res!3115535 (not ((_ is ElementMatch!20961) r1!6261)))))

(assert (=> b!7832753 (= e!4632142 e!4632139)))

(declare-fun b!7832754 () Bool)

(declare-fun res!3115537 () Bool)

(assert (=> b!7832754 (=> (not res!3115537) (not e!4632143))))

(assert (=> b!7832754 (= res!3115537 (isEmpty!42291 (tail!15533 (_1!38297 (get!26387 lt!2677001)))))))

(declare-fun bm!726375 () Bool)

(assert (=> bm!726375 (= call!726380 (isEmpty!42291 (_1!38297 (get!26387 lt!2677001))))))

(declare-fun b!7832755 () Bool)

(assert (=> b!7832755 (= e!4632139 e!4632138)))

(declare-fun res!3115539 () Bool)

(assert (=> b!7832755 (=> (not res!3115539) (not e!4632138))))

(assert (=> b!7832755 (= res!3115539 (not lt!2677037))))

(declare-fun b!7832756 () Bool)

(assert (=> b!7832756 (= e!4632137 (not (= (head!15992 (_1!38297 (get!26387 lt!2677001))) (c!1440616 r1!6261))))))

(assert (= (and d!2351140 c!1440769) b!7832749))

(assert (= (and d!2351140 (not c!1440769)) b!7832750))

(assert (= (and d!2351140 c!1440770) b!7832752))

(assert (= (and d!2351140 (not c!1440770)) b!7832743))

(assert (= (and b!7832743 c!1440771) b!7832747))

(assert (= (and b!7832743 (not c!1440771)) b!7832753))

(assert (= (and b!7832753 (not res!3115535)) b!7832745))

(assert (= (and b!7832745 res!3115532) b!7832748))

(assert (= (and b!7832748 res!3115533) b!7832754))

(assert (= (and b!7832754 res!3115537) b!7832744))

(assert (= (and b!7832745 (not res!3115538)) b!7832755))

(assert (= (and b!7832755 res!3115539) b!7832751))

(assert (= (and b!7832751 (not res!3115536)) b!7832746))

(assert (= (and b!7832746 (not res!3115534)) b!7832756))

(assert (= (or b!7832752 b!7832748 b!7832751) bm!726375))

(declare-fun m!8249368 () Bool)

(assert (=> b!7832754 m!8249368))

(assert (=> b!7832754 m!8249368))

(declare-fun m!8249370 () Bool)

(assert (=> b!7832754 m!8249370))

(assert (=> b!7832746 m!8249368))

(assert (=> b!7832746 m!8249368))

(assert (=> b!7832746 m!8249370))

(declare-fun m!8249372 () Bool)

(assert (=> b!7832756 m!8249372))

(assert (=> b!7832749 m!8249010))

(assert (=> b!7832750 m!8249372))

(assert (=> b!7832750 m!8249372))

(declare-fun m!8249374 () Bool)

(assert (=> b!7832750 m!8249374))

(assert (=> b!7832750 m!8249368))

(assert (=> b!7832750 m!8249374))

(assert (=> b!7832750 m!8249368))

(declare-fun m!8249376 () Bool)

(assert (=> b!7832750 m!8249376))

(assert (=> b!7832744 m!8249372))

(declare-fun m!8249378 () Bool)

(assert (=> bm!726375 m!8249378))

(assert (=> d!2351140 m!8249378))

(assert (=> d!2351140 m!8248904))

(assert (=> b!7832323 d!2351140))

(assert (=> b!7832323 d!2351106))

(declare-fun b!7832757 () Bool)

(declare-fun e!4632146 () Bool)

(declare-fun e!4632145 () Bool)

(assert (=> b!7832757 (= e!4632146 e!4632145)))

(declare-fun res!3115542 () Bool)

(assert (=> b!7832757 (=> (not res!3115542) (not e!4632145))))

(assert (=> b!7832757 (= res!3115542 (not ((_ is Nil!73674) (tail!15533 s1!4101))))))

(declare-fun b!7832758 () Bool)

(declare-fun res!3115541 () Bool)

(assert (=> b!7832758 (=> (not res!3115541) (not e!4632145))))

(assert (=> b!7832758 (= res!3115541 (= (head!15992 (tail!15533 s1Rec!453)) (head!15992 (tail!15533 s1!4101))))))

(declare-fun b!7832760 () Bool)

(declare-fun e!4632144 () Bool)

(assert (=> b!7832760 (= e!4632144 (>= (size!42760 (tail!15533 s1!4101)) (size!42760 (tail!15533 s1Rec!453))))))

(declare-fun b!7832759 () Bool)

(assert (=> b!7832759 (= e!4632145 (isPrefix!6311 (tail!15533 (tail!15533 s1Rec!453)) (tail!15533 (tail!15533 s1!4101))))))

(declare-fun d!2351142 () Bool)

(assert (=> d!2351142 e!4632144))

(declare-fun res!3115540 () Bool)

(assert (=> d!2351142 (=> res!3115540 e!4632144)))

(declare-fun lt!2677038 () Bool)

(assert (=> d!2351142 (= res!3115540 (not lt!2677038))))

(assert (=> d!2351142 (= lt!2677038 e!4632146)))

(declare-fun res!3115543 () Bool)

(assert (=> d!2351142 (=> res!3115543 e!4632146)))

(assert (=> d!2351142 (= res!3115543 ((_ is Nil!73674) (tail!15533 s1Rec!453)))))

(assert (=> d!2351142 (= (isPrefix!6311 (tail!15533 s1Rec!453) (tail!15533 s1!4101)) lt!2677038)))

(assert (= (and d!2351142 (not res!3115543)) b!7832757))

(assert (= (and b!7832757 res!3115542) b!7832758))

(assert (= (and b!7832758 res!3115541) b!7832759))

(assert (= (and d!2351142 (not res!3115540)) b!7832760))

(assert (=> b!7832758 m!8249042))

(assert (=> b!7832758 m!8249338))

(assert (=> b!7832758 m!8249004))

(assert (=> b!7832758 m!8249276))

(assert (=> b!7832760 m!8249004))

(declare-fun m!8249380 () Bool)

(assert (=> b!7832760 m!8249380))

(assert (=> b!7832760 m!8249042))

(declare-fun m!8249382 () Bool)

(assert (=> b!7832760 m!8249382))

(assert (=> b!7832759 m!8249042))

(assert (=> b!7832759 m!8249334))

(assert (=> b!7832759 m!8249004))

(assert (=> b!7832759 m!8249272))

(assert (=> b!7832759 m!8249334))

(assert (=> b!7832759 m!8249272))

(declare-fun m!8249384 () Bool)

(assert (=> b!7832759 m!8249384))

(assert (=> b!7832230 d!2351142))

(assert (=> b!7832230 d!2351114))

(assert (=> b!7832230 d!2351084))

(declare-fun d!2351144 () Bool)

(assert (=> d!2351144 (= (nullable!9303 (reg!21290 r1!6261)) (nullableFct!3669 (reg!21290 r1!6261)))))

(declare-fun bs!1966824 () Bool)

(assert (= bs!1966824 d!2351144))

(declare-fun m!8249386 () Bool)

(assert (=> bs!1966824 m!8249386))

(assert (=> b!7832111 d!2351144))

(assert (=> d!2351026 d!2351080))

(assert (=> d!2351026 d!2350988))

(assert (=> b!7832389 d!2351136))

(assert (=> b!7832389 d!2351138))

(declare-fun b!7832774 () Bool)

(declare-fun e!4632152 () Bool)

(declare-fun lt!2677040 () List!73798)

(assert (=> b!7832774 (= e!4632152 (or (not (= (_2!38297 (get!26387 lt!2677001)) Nil!73674)) (= lt!2677040 (_1!38297 (get!26387 lt!2677001)))))))

(declare-fun b!7832771 () Bool)

(declare-fun e!4632153 () List!73798)

(assert (=> b!7832771 (= e!4632153 (_2!38297 (get!26387 lt!2677001)))))

(declare-fun d!2351146 () Bool)

(assert (=> d!2351146 e!4632152))

(declare-fun res!3115545 () Bool)

(assert (=> d!2351146 (=> (not res!3115545) (not e!4632152))))

(assert (=> d!2351146 (= res!3115545 (= (content!15643 lt!2677040) ((_ map or) (content!15643 (_1!38297 (get!26387 lt!2677001))) (content!15643 (_2!38297 (get!26387 lt!2677001))))))))

(assert (=> d!2351146 (= lt!2677040 e!4632153)))

(declare-fun c!1440777 () Bool)

(assert (=> d!2351146 (= c!1440777 ((_ is Nil!73674) (_1!38297 (get!26387 lt!2677001))))))

(assert (=> d!2351146 (= (++!17995 (_1!38297 (get!26387 lt!2677001)) (_2!38297 (get!26387 lt!2677001))) lt!2677040)))

(declare-fun b!7832773 () Bool)

(declare-fun res!3115544 () Bool)

(assert (=> b!7832773 (=> (not res!3115544) (not e!4632152))))

(assert (=> b!7832773 (= res!3115544 (= (size!42760 lt!2677040) (+ (size!42760 (_1!38297 (get!26387 lt!2677001))) (size!42760 (_2!38297 (get!26387 lt!2677001))))))))

(declare-fun b!7832772 () Bool)

(assert (=> b!7832772 (= e!4632153 (Cons!73674 (h!80122 (_1!38297 (get!26387 lt!2677001))) (++!17995 (t!388533 (_1!38297 (get!26387 lt!2677001))) (_2!38297 (get!26387 lt!2677001)))))))

(assert (= (and d!2351146 c!1440777) b!7832771))

(assert (= (and d!2351146 (not c!1440777)) b!7832772))

(assert (= (and d!2351146 res!3115545) b!7832773))

(assert (= (and b!7832773 res!3115544) b!7832774))

(declare-fun m!8249388 () Bool)

(assert (=> d!2351146 m!8249388))

(declare-fun m!8249390 () Bool)

(assert (=> d!2351146 m!8249390))

(declare-fun m!8249392 () Bool)

(assert (=> d!2351146 m!8249392))

(declare-fun m!8249394 () Bool)

(assert (=> b!7832773 m!8249394))

(declare-fun m!8249396 () Bool)

(assert (=> b!7832773 m!8249396))

(declare-fun m!8249398 () Bool)

(assert (=> b!7832773 m!8249398))

(declare-fun m!8249402 () Bool)

(assert (=> b!7832772 m!8249402))

(assert (=> b!7832331 d!2351146))

(assert (=> b!7832331 d!2351106))

(declare-fun b!7832775 () Bool)

(declare-fun e!4632158 () Bool)

(declare-fun e!4632159 () Bool)

(assert (=> b!7832775 (= e!4632158 e!4632159)))

(declare-fun c!1440780 () Bool)

(assert (=> b!7832775 (= c!1440780 ((_ is EmptyLang!20961) (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453))))))

(declare-fun b!7832776 () Bool)

(declare-fun e!4632160 () Bool)

(assert (=> b!7832776 (= e!4632160 (= (head!15992 (tail!15533 s2Rec!453)) (c!1440616 (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453)))))))

(declare-fun d!2351148 () Bool)

(assert (=> d!2351148 e!4632158))

(declare-fun c!1440779 () Bool)

(assert (=> d!2351148 (= c!1440779 ((_ is EmptyExpr!20961) (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453))))))

(declare-fun lt!2677041 () Bool)

(declare-fun e!4632157 () Bool)

(assert (=> d!2351148 (= lt!2677041 e!4632157)))

(declare-fun c!1440778 () Bool)

(assert (=> d!2351148 (= c!1440778 (isEmpty!42291 (tail!15533 s2Rec!453)))))

(assert (=> d!2351148 (validRegex!11375 (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453)))))

(assert (=> d!2351148 (= (matchR!10417 (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453)) (tail!15533 s2Rec!453)) lt!2677041)))

(declare-fun b!7832777 () Bool)

(declare-fun res!3115552 () Bool)

(declare-fun e!4632156 () Bool)

(assert (=> b!7832777 (=> res!3115552 e!4632156)))

(assert (=> b!7832777 (= res!3115552 e!4632160)))

(declare-fun res!3115546 () Bool)

(assert (=> b!7832777 (=> (not res!3115546) (not e!4632160))))

(assert (=> b!7832777 (= res!3115546 lt!2677041)))

(declare-fun b!7832778 () Bool)

(declare-fun res!3115548 () Bool)

(declare-fun e!4632154 () Bool)

(assert (=> b!7832778 (=> res!3115548 e!4632154)))

(assert (=> b!7832778 (= res!3115548 (not (isEmpty!42291 (tail!15533 (tail!15533 s2Rec!453)))))))

(declare-fun b!7832779 () Bool)

(assert (=> b!7832779 (= e!4632159 (not lt!2677041))))

(declare-fun b!7832780 () Bool)

(declare-fun res!3115547 () Bool)

(assert (=> b!7832780 (=> (not res!3115547) (not e!4632160))))

(declare-fun call!726385 () Bool)

(assert (=> b!7832780 (= res!3115547 (not call!726385))))

(declare-fun b!7832781 () Bool)

(assert (=> b!7832781 (= e!4632157 (nullable!9303 (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453))))))

(declare-fun b!7832782 () Bool)

(assert (=> b!7832782 (= e!4632157 (matchR!10417 (derivativeStep!6262 (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453)) (head!15992 (tail!15533 s2Rec!453))) (tail!15533 (tail!15533 s2Rec!453))))))

(declare-fun b!7832783 () Bool)

(declare-fun e!4632155 () Bool)

(assert (=> b!7832783 (= e!4632155 e!4632154)))

(declare-fun res!3115550 () Bool)

(assert (=> b!7832783 (=> res!3115550 e!4632154)))

(assert (=> b!7832783 (= res!3115550 call!726385)))

(declare-fun b!7832784 () Bool)

(assert (=> b!7832784 (= e!4632158 (= lt!2677041 call!726385))))

(declare-fun b!7832785 () Bool)

(declare-fun res!3115549 () Bool)

(assert (=> b!7832785 (=> res!3115549 e!4632156)))

(assert (=> b!7832785 (= res!3115549 (not ((_ is ElementMatch!20961) (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453)))))))

(assert (=> b!7832785 (= e!4632159 e!4632156)))

(declare-fun b!7832786 () Bool)

(declare-fun res!3115551 () Bool)

(assert (=> b!7832786 (=> (not res!3115551) (not e!4632160))))

(assert (=> b!7832786 (= res!3115551 (isEmpty!42291 (tail!15533 (tail!15533 s2Rec!453))))))

(declare-fun bm!726380 () Bool)

(assert (=> bm!726380 (= call!726385 (isEmpty!42291 (tail!15533 s2Rec!453)))))

(declare-fun b!7832787 () Bool)

(assert (=> b!7832787 (= e!4632156 e!4632155)))

(declare-fun res!3115553 () Bool)

(assert (=> b!7832787 (=> (not res!3115553) (not e!4632155))))

(assert (=> b!7832787 (= res!3115553 (not lt!2677041))))

(declare-fun b!7832788 () Bool)

(assert (=> b!7832788 (= e!4632154 (not (= (head!15992 (tail!15533 s2Rec!453)) (c!1440616 (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453))))))))

(assert (= (and d!2351148 c!1440778) b!7832781))

(assert (= (and d!2351148 (not c!1440778)) b!7832782))

(assert (= (and d!2351148 c!1440779) b!7832784))

(assert (= (and d!2351148 (not c!1440779)) b!7832775))

(assert (= (and b!7832775 c!1440780) b!7832779))

(assert (= (and b!7832775 (not c!1440780)) b!7832785))

(assert (= (and b!7832785 (not res!3115549)) b!7832777))

(assert (= (and b!7832777 res!3115546) b!7832780))

(assert (= (and b!7832780 res!3115547) b!7832786))

(assert (= (and b!7832786 res!3115551) b!7832776))

(assert (= (and b!7832777 (not res!3115552)) b!7832787))

(assert (= (and b!7832787 res!3115553) b!7832783))

(assert (= (and b!7832783 (not res!3115550)) b!7832778))

(assert (= (and b!7832778 (not res!3115548)) b!7832788))

(assert (= (or b!7832784 b!7832780 b!7832783) bm!726380))

(assert (=> b!7832786 m!8249138))

(declare-fun m!8249410 () Bool)

(assert (=> b!7832786 m!8249410))

(assert (=> b!7832786 m!8249410))

(declare-fun m!8249412 () Bool)

(assert (=> b!7832786 m!8249412))

(assert (=> b!7832778 m!8249138))

(assert (=> b!7832778 m!8249410))

(assert (=> b!7832778 m!8249410))

(assert (=> b!7832778 m!8249412))

(assert (=> b!7832788 m!8249138))

(declare-fun m!8249414 () Bool)

(assert (=> b!7832788 m!8249414))

(assert (=> b!7832781 m!8249144))

(declare-fun m!8249416 () Bool)

(assert (=> b!7832781 m!8249416))

(assert (=> b!7832782 m!8249138))

(assert (=> b!7832782 m!8249414))

(assert (=> b!7832782 m!8249144))

(assert (=> b!7832782 m!8249414))

(declare-fun m!8249418 () Bool)

(assert (=> b!7832782 m!8249418))

(assert (=> b!7832782 m!8249138))

(assert (=> b!7832782 m!8249410))

(assert (=> b!7832782 m!8249418))

(assert (=> b!7832782 m!8249410))

(declare-fun m!8249420 () Bool)

(assert (=> b!7832782 m!8249420))

(assert (=> b!7832776 m!8249138))

(assert (=> b!7832776 m!8249414))

(assert (=> bm!726380 m!8249138))

(assert (=> bm!726380 m!8249140))

(assert (=> d!2351148 m!8249138))

(assert (=> d!2351148 m!8249140))

(assert (=> d!2351148 m!8249144))

(declare-fun m!8249422 () Bool)

(assert (=> d!2351148 m!8249422))

(assert (=> b!7832385 d!2351148))

(declare-fun b!7832789 () Bool)

(declare-fun e!4632163 () Regex!20961)

(declare-fun e!4632161 () Regex!20961)

(assert (=> b!7832789 (= e!4632163 e!4632161)))

(declare-fun c!1440781 () Bool)

(assert (=> b!7832789 (= c!1440781 ((_ is ElementMatch!20961) r2!6199))))

(declare-fun b!7832790 () Bool)

(declare-fun c!1440785 () Bool)

(assert (=> b!7832790 (= c!1440785 (nullable!9303 (regOne!42434 r2!6199)))))

(declare-fun e!4632162 () Regex!20961)

(declare-fun e!4632164 () Regex!20961)

(assert (=> b!7832790 (= e!4632162 e!4632164)))

(declare-fun b!7832791 () Bool)

(declare-fun call!726387 () Regex!20961)

(assert (=> b!7832791 (= e!4632162 (Concat!29806 call!726387 r2!6199))))

(declare-fun b!7832792 () Bool)

(assert (=> b!7832792 (= e!4632163 EmptyLang!20961)))

(declare-fun b!7832793 () Bool)

(declare-fun c!1440782 () Bool)

(assert (=> b!7832793 (= c!1440782 ((_ is Union!20961) r2!6199))))

(declare-fun e!4632165 () Regex!20961)

(assert (=> b!7832793 (= e!4632161 e!4632165)))

(declare-fun b!7832794 () Bool)

(declare-fun call!726388 () Regex!20961)

(assert (=> b!7832794 (= e!4632164 (Union!20961 (Concat!29806 call!726388 (regTwo!42434 r2!6199)) EmptyLang!20961))))

(declare-fun b!7832795 () Bool)

(assert (=> b!7832795 (= e!4632161 (ite (= (head!15992 s2Rec!453) (c!1440616 r2!6199)) EmptyExpr!20961 EmptyLang!20961))))

(declare-fun bm!726381 () Bool)

(declare-fun call!726389 () Regex!20961)

(assert (=> bm!726381 (= call!726389 (derivativeStep!6262 (ite c!1440782 (regTwo!42435 r2!6199) (regTwo!42434 r2!6199)) (head!15992 s2Rec!453)))))

(declare-fun b!7832796 () Bool)

(assert (=> b!7832796 (= e!4632165 e!4632162)))

(declare-fun c!1440784 () Bool)

(assert (=> b!7832796 (= c!1440784 ((_ is Star!20961) r2!6199))))

(declare-fun b!7832797 () Bool)

(assert (=> b!7832797 (= e!4632164 (Union!20961 (Concat!29806 call!726388 (regTwo!42434 r2!6199)) call!726389))))

(declare-fun call!726386 () Regex!20961)

(declare-fun bm!726382 () Bool)

(assert (=> bm!726382 (= call!726386 (derivativeStep!6262 (ite c!1440782 (regOne!42435 r2!6199) (ite c!1440784 (reg!21290 r2!6199) (regOne!42434 r2!6199))) (head!15992 s2Rec!453)))))

(declare-fun bm!726383 () Bool)

(assert (=> bm!726383 (= call!726387 call!726386)))

(declare-fun b!7832798 () Bool)

(assert (=> b!7832798 (= e!4632165 (Union!20961 call!726386 call!726389))))

(declare-fun bm!726384 () Bool)

(assert (=> bm!726384 (= call!726388 call!726387)))

(declare-fun d!2351154 () Bool)

(declare-fun lt!2677042 () Regex!20961)

(assert (=> d!2351154 (validRegex!11375 lt!2677042)))

(assert (=> d!2351154 (= lt!2677042 e!4632163)))

(declare-fun c!1440783 () Bool)

(assert (=> d!2351154 (= c!1440783 (or ((_ is EmptyExpr!20961) r2!6199) ((_ is EmptyLang!20961) r2!6199)))))

(assert (=> d!2351154 (validRegex!11375 r2!6199)))

(assert (=> d!2351154 (= (derivativeStep!6262 r2!6199 (head!15992 s2Rec!453)) lt!2677042)))

(assert (= (and d!2351154 c!1440783) b!7832792))

(assert (= (and d!2351154 (not c!1440783)) b!7832789))

(assert (= (and b!7832789 c!1440781) b!7832795))

(assert (= (and b!7832789 (not c!1440781)) b!7832793))

(assert (= (and b!7832793 c!1440782) b!7832798))

(assert (= (and b!7832793 (not c!1440782)) b!7832796))

(assert (= (and b!7832796 c!1440784) b!7832791))

(assert (= (and b!7832796 (not c!1440784)) b!7832790))

(assert (= (and b!7832790 c!1440785) b!7832797))

(assert (= (and b!7832790 (not c!1440785)) b!7832794))

(assert (= (or b!7832797 b!7832794) bm!726384))

(assert (= (or b!7832791 bm!726384) bm!726383))

(assert (= (or b!7832798 bm!726383) bm!726382))

(assert (= (or b!7832798 b!7832797) bm!726381))

(assert (=> b!7832790 m!8249190))

(assert (=> bm!726381 m!8249142))

(declare-fun m!8249424 () Bool)

(assert (=> bm!726381 m!8249424))

(assert (=> bm!726382 m!8249142))

(declare-fun m!8249426 () Bool)

(assert (=> bm!726382 m!8249426))

(declare-fun m!8249428 () Bool)

(assert (=> d!2351154 m!8249428))

(assert (=> d!2351154 m!8248900))

(assert (=> b!7832385 d!2351154))

(assert (=> b!7832385 d!2351034))

(assert (=> b!7832385 d!2351138))

(assert (=> b!7832196 d!2351032))

(assert (=> b!7832329 d!2351120))

(declare-fun b!7832802 () Bool)

(declare-fun e!4632166 () Bool)

(declare-fun tp!2316243 () Bool)

(declare-fun tp!2316244 () Bool)

(assert (=> b!7832802 (= e!4632166 (and tp!2316243 tp!2316244))))

(assert (=> b!7832482 (= tp!2316209 e!4632166)))

(declare-fun b!7832799 () Bool)

(assert (=> b!7832799 (= e!4632166 tp_is_empty!52277)))

(declare-fun b!7832800 () Bool)

(declare-fun tp!2316245 () Bool)

(declare-fun tp!2316242 () Bool)

(assert (=> b!7832800 (= e!4632166 (and tp!2316245 tp!2316242))))

(declare-fun b!7832801 () Bool)

(declare-fun tp!2316246 () Bool)

(assert (=> b!7832801 (= e!4632166 tp!2316246)))

(assert (= (and b!7832482 ((_ is ElementMatch!20961) (reg!21290 (regTwo!42435 r1!6261)))) b!7832799))

(assert (= (and b!7832482 ((_ is Concat!29806) (reg!21290 (regTwo!42435 r1!6261)))) b!7832800))

(assert (= (and b!7832482 ((_ is Star!20961) (reg!21290 (regTwo!42435 r1!6261)))) b!7832801))

(assert (= (and b!7832482 ((_ is Union!20961) (reg!21290 (regTwo!42435 r1!6261)))) b!7832802))

(declare-fun b!7832806 () Bool)

(declare-fun e!4632167 () Bool)

(declare-fun tp!2316248 () Bool)

(declare-fun tp!2316249 () Bool)

(assert (=> b!7832806 (= e!4632167 (and tp!2316248 tp!2316249))))

(assert (=> b!7832507 (= tp!2316240 e!4632167)))

(declare-fun b!7832803 () Bool)

(assert (=> b!7832803 (= e!4632167 tp_is_empty!52277)))

(declare-fun b!7832804 () Bool)

(declare-fun tp!2316250 () Bool)

(declare-fun tp!2316247 () Bool)

(assert (=> b!7832804 (= e!4632167 (and tp!2316250 tp!2316247))))

(declare-fun b!7832805 () Bool)

(declare-fun tp!2316251 () Bool)

(assert (=> b!7832805 (= e!4632167 tp!2316251)))

(assert (= (and b!7832507 ((_ is ElementMatch!20961) (reg!21290 (reg!21290 r1!6261)))) b!7832803))

(assert (= (and b!7832507 ((_ is Concat!29806) (reg!21290 (reg!21290 r1!6261)))) b!7832804))

(assert (= (and b!7832507 ((_ is Star!20961) (reg!21290 (reg!21290 r1!6261)))) b!7832805))

(assert (= (and b!7832507 ((_ is Union!20961) (reg!21290 (reg!21290 r1!6261)))) b!7832806))

(declare-fun b!7832814 () Bool)

(declare-fun e!4632170 () Bool)

(declare-fun tp!2316253 () Bool)

(declare-fun tp!2316254 () Bool)

(assert (=> b!7832814 (= e!4632170 (and tp!2316253 tp!2316254))))

(assert (=> b!7832490 (= tp!2316219 e!4632170)))

(declare-fun b!7832811 () Bool)

(assert (=> b!7832811 (= e!4632170 tp_is_empty!52277)))

(declare-fun b!7832812 () Bool)

(declare-fun tp!2316255 () Bool)

(declare-fun tp!2316252 () Bool)

(assert (=> b!7832812 (= e!4632170 (and tp!2316255 tp!2316252))))

(declare-fun b!7832813 () Bool)

(declare-fun tp!2316256 () Bool)

(assert (=> b!7832813 (= e!4632170 tp!2316256)))

(assert (= (and b!7832490 ((_ is ElementMatch!20961) (reg!21290 (regTwo!42435 r2!6199)))) b!7832811))

(assert (= (and b!7832490 ((_ is Concat!29806) (reg!21290 (regTwo!42435 r2!6199)))) b!7832812))

(assert (= (and b!7832490 ((_ is Star!20961) (reg!21290 (regTwo!42435 r2!6199)))) b!7832813))

(assert (= (and b!7832490 ((_ is Union!20961) (reg!21290 (regTwo!42435 r2!6199)))) b!7832814))

(declare-fun b!7832815 () Bool)

(declare-fun e!4632171 () Bool)

(declare-fun tp!2316257 () Bool)

(assert (=> b!7832815 (= e!4632171 (and tp_is_empty!52277 tp!2316257))))

(assert (=> b!7832474 (= tp!2316198 e!4632171)))

(assert (= (and b!7832474 ((_ is Cons!73674) (t!388533 (t!388533 s2Rec!453)))) b!7832815))

(declare-fun b!7832819 () Bool)

(declare-fun e!4632172 () Bool)

(declare-fun tp!2316259 () Bool)

(declare-fun tp!2316260 () Bool)

(assert (=> b!7832819 (= e!4632172 (and tp!2316259 tp!2316260))))

(assert (=> b!7832450 (= tp!2316169 e!4632172)))

(declare-fun b!7832816 () Bool)

(assert (=> b!7832816 (= e!4632172 tp_is_empty!52277)))

(declare-fun b!7832817 () Bool)

(declare-fun tp!2316261 () Bool)

(declare-fun tp!2316258 () Bool)

(assert (=> b!7832817 (= e!4632172 (and tp!2316261 tp!2316258))))

(declare-fun b!7832818 () Bool)

(declare-fun tp!2316262 () Bool)

(assert (=> b!7832818 (= e!4632172 tp!2316262)))

(assert (= (and b!7832450 ((_ is ElementMatch!20961) (regOne!42435 (regTwo!42434 r1!6261)))) b!7832816))

(assert (= (and b!7832450 ((_ is Concat!29806) (regOne!42435 (regTwo!42434 r1!6261)))) b!7832817))

(assert (= (and b!7832450 ((_ is Star!20961) (regOne!42435 (regTwo!42434 r1!6261)))) b!7832818))

(assert (= (and b!7832450 ((_ is Union!20961) (regOne!42435 (regTwo!42434 r1!6261)))) b!7832819))

(declare-fun b!7832823 () Bool)

(declare-fun e!4632173 () Bool)

(declare-fun tp!2316264 () Bool)

(declare-fun tp!2316265 () Bool)

(assert (=> b!7832823 (= e!4632173 (and tp!2316264 tp!2316265))))

(assert (=> b!7832450 (= tp!2316170 e!4632173)))

(declare-fun b!7832820 () Bool)

(assert (=> b!7832820 (= e!4632173 tp_is_empty!52277)))

(declare-fun b!7832821 () Bool)

(declare-fun tp!2316266 () Bool)

(declare-fun tp!2316263 () Bool)

(assert (=> b!7832821 (= e!4632173 (and tp!2316266 tp!2316263))))

(declare-fun b!7832822 () Bool)

(declare-fun tp!2316267 () Bool)

(assert (=> b!7832822 (= e!4632173 tp!2316267)))

(assert (= (and b!7832450 ((_ is ElementMatch!20961) (regTwo!42435 (regTwo!42434 r1!6261)))) b!7832820))

(assert (= (and b!7832450 ((_ is Concat!29806) (regTwo!42435 (regTwo!42434 r1!6261)))) b!7832821))

(assert (= (and b!7832450 ((_ is Star!20961) (regTwo!42435 (regTwo!42434 r1!6261)))) b!7832822))

(assert (= (and b!7832450 ((_ is Union!20961) (regTwo!42435 (regTwo!42434 r1!6261)))) b!7832823))

(declare-fun b!7832827 () Bool)

(declare-fun e!4632174 () Bool)

(declare-fun tp!2316269 () Bool)

(declare-fun tp!2316270 () Bool)

(assert (=> b!7832827 (= e!4632174 (and tp!2316269 tp!2316270))))

(assert (=> b!7832499 (= tp!2316226 e!4632174)))

(declare-fun b!7832824 () Bool)

(assert (=> b!7832824 (= e!4632174 tp_is_empty!52277)))

(declare-fun b!7832825 () Bool)

(declare-fun tp!2316271 () Bool)

(declare-fun tp!2316268 () Bool)

(assert (=> b!7832825 (= e!4632174 (and tp!2316271 tp!2316268))))

(declare-fun b!7832826 () Bool)

(declare-fun tp!2316272 () Bool)

(assert (=> b!7832826 (= e!4632174 tp!2316272)))

(assert (= (and b!7832499 ((_ is ElementMatch!20961) (regOne!42435 (regTwo!42434 r2!6199)))) b!7832824))

(assert (= (and b!7832499 ((_ is Concat!29806) (regOne!42435 (regTwo!42434 r2!6199)))) b!7832825))

(assert (= (and b!7832499 ((_ is Star!20961) (regOne!42435 (regTwo!42434 r2!6199)))) b!7832826))

(assert (= (and b!7832499 ((_ is Union!20961) (regOne!42435 (regTwo!42434 r2!6199)))) b!7832827))

(declare-fun b!7832831 () Bool)

(declare-fun e!4632175 () Bool)

(declare-fun tp!2316274 () Bool)

(declare-fun tp!2316275 () Bool)

(assert (=> b!7832831 (= e!4632175 (and tp!2316274 tp!2316275))))

(assert (=> b!7832499 (= tp!2316227 e!4632175)))

(declare-fun b!7832828 () Bool)

(assert (=> b!7832828 (= e!4632175 tp_is_empty!52277)))

(declare-fun b!7832829 () Bool)

(declare-fun tp!2316276 () Bool)

(declare-fun tp!2316273 () Bool)

(assert (=> b!7832829 (= e!4632175 (and tp!2316276 tp!2316273))))

(declare-fun b!7832830 () Bool)

(declare-fun tp!2316277 () Bool)

(assert (=> b!7832830 (= e!4632175 tp!2316277)))

(assert (= (and b!7832499 ((_ is ElementMatch!20961) (regTwo!42435 (regTwo!42434 r2!6199)))) b!7832828))

(assert (= (and b!7832499 ((_ is Concat!29806) (regTwo!42435 (regTwo!42434 r2!6199)))) b!7832829))

(assert (= (and b!7832499 ((_ is Star!20961) (regTwo!42435 (regTwo!42434 r2!6199)))) b!7832830))

(assert (= (and b!7832499 ((_ is Union!20961) (regTwo!42435 (regTwo!42434 r2!6199)))) b!7832831))

(declare-fun b!7832835 () Bool)

(declare-fun e!4632176 () Bool)

(declare-fun tp!2316279 () Bool)

(declare-fun tp!2316280 () Bool)

(assert (=> b!7832835 (= e!4632176 (and tp!2316279 tp!2316280))))

(assert (=> b!7832481 (= tp!2316208 e!4632176)))

(declare-fun b!7832832 () Bool)

(assert (=> b!7832832 (= e!4632176 tp_is_empty!52277)))

(declare-fun b!7832833 () Bool)

(declare-fun tp!2316281 () Bool)

(declare-fun tp!2316278 () Bool)

(assert (=> b!7832833 (= e!4632176 (and tp!2316281 tp!2316278))))

(declare-fun b!7832834 () Bool)

(declare-fun tp!2316282 () Bool)

(assert (=> b!7832834 (= e!4632176 tp!2316282)))

(assert (= (and b!7832481 ((_ is ElementMatch!20961) (regOne!42434 (regTwo!42435 r1!6261)))) b!7832832))

(assert (= (and b!7832481 ((_ is Concat!29806) (regOne!42434 (regTwo!42435 r1!6261)))) b!7832833))

(assert (= (and b!7832481 ((_ is Star!20961) (regOne!42434 (regTwo!42435 r1!6261)))) b!7832834))

(assert (= (and b!7832481 ((_ is Union!20961) (regOne!42434 (regTwo!42435 r1!6261)))) b!7832835))

(declare-fun b!7832839 () Bool)

(declare-fun e!4632177 () Bool)

(declare-fun tp!2316284 () Bool)

(declare-fun tp!2316285 () Bool)

(assert (=> b!7832839 (= e!4632177 (and tp!2316284 tp!2316285))))

(assert (=> b!7832481 (= tp!2316205 e!4632177)))

(declare-fun b!7832836 () Bool)

(assert (=> b!7832836 (= e!4632177 tp_is_empty!52277)))

(declare-fun b!7832837 () Bool)

(declare-fun tp!2316286 () Bool)

(declare-fun tp!2316283 () Bool)

(assert (=> b!7832837 (= e!4632177 (and tp!2316286 tp!2316283))))

(declare-fun b!7832838 () Bool)

(declare-fun tp!2316287 () Bool)

(assert (=> b!7832838 (= e!4632177 tp!2316287)))

(assert (= (and b!7832481 ((_ is ElementMatch!20961) (regTwo!42434 (regTwo!42435 r1!6261)))) b!7832836))

(assert (= (and b!7832481 ((_ is Concat!29806) (regTwo!42434 (regTwo!42435 r1!6261)))) b!7832837))

(assert (= (and b!7832481 ((_ is Star!20961) (regTwo!42434 (regTwo!42435 r1!6261)))) b!7832838))

(assert (= (and b!7832481 ((_ is Union!20961) (regTwo!42434 (regTwo!42435 r1!6261)))) b!7832839))

(declare-fun b!7832843 () Bool)

(declare-fun e!4632178 () Bool)

(declare-fun tp!2316289 () Bool)

(declare-fun tp!2316290 () Bool)

(assert (=> b!7832843 (= e!4632178 (and tp!2316289 tp!2316290))))

(assert (=> b!7832506 (= tp!2316239 e!4632178)))

(declare-fun b!7832840 () Bool)

(assert (=> b!7832840 (= e!4632178 tp_is_empty!52277)))

(declare-fun b!7832841 () Bool)

(declare-fun tp!2316291 () Bool)

(declare-fun tp!2316288 () Bool)

(assert (=> b!7832841 (= e!4632178 (and tp!2316291 tp!2316288))))

(declare-fun b!7832842 () Bool)

(declare-fun tp!2316292 () Bool)

(assert (=> b!7832842 (= e!4632178 tp!2316292)))

(assert (= (and b!7832506 ((_ is ElementMatch!20961) (regOne!42434 (reg!21290 r1!6261)))) b!7832840))

(assert (= (and b!7832506 ((_ is Concat!29806) (regOne!42434 (reg!21290 r1!6261)))) b!7832841))

(assert (= (and b!7832506 ((_ is Star!20961) (regOne!42434 (reg!21290 r1!6261)))) b!7832842))

(assert (= (and b!7832506 ((_ is Union!20961) (regOne!42434 (reg!21290 r1!6261)))) b!7832843))

(declare-fun b!7832847 () Bool)

(declare-fun e!4632179 () Bool)

(declare-fun tp!2316294 () Bool)

(declare-fun tp!2316295 () Bool)

(assert (=> b!7832847 (= e!4632179 (and tp!2316294 tp!2316295))))

(assert (=> b!7832506 (= tp!2316236 e!4632179)))

(declare-fun b!7832844 () Bool)

(assert (=> b!7832844 (= e!4632179 tp_is_empty!52277)))

(declare-fun b!7832845 () Bool)

(declare-fun tp!2316296 () Bool)

(declare-fun tp!2316293 () Bool)

(assert (=> b!7832845 (= e!4632179 (and tp!2316296 tp!2316293))))

(declare-fun b!7832846 () Bool)

(declare-fun tp!2316297 () Bool)

(assert (=> b!7832846 (= e!4632179 tp!2316297)))

(assert (= (and b!7832506 ((_ is ElementMatch!20961) (regTwo!42434 (reg!21290 r1!6261)))) b!7832844))

(assert (= (and b!7832506 ((_ is Concat!29806) (regTwo!42434 (reg!21290 r1!6261)))) b!7832845))

(assert (= (and b!7832506 ((_ is Star!20961) (regTwo!42434 (reg!21290 r1!6261)))) b!7832846))

(assert (= (and b!7832506 ((_ is Union!20961) (regTwo!42434 (reg!21290 r1!6261)))) b!7832847))

(declare-fun b!7832851 () Bool)

(declare-fun e!4632180 () Bool)

(declare-fun tp!2316299 () Bool)

(declare-fun tp!2316300 () Bool)

(assert (=> b!7832851 (= e!4632180 (and tp!2316299 tp!2316300))))

(assert (=> b!7832483 (= tp!2316206 e!4632180)))

(declare-fun b!7832848 () Bool)

(assert (=> b!7832848 (= e!4632180 tp_is_empty!52277)))

(declare-fun b!7832849 () Bool)

(declare-fun tp!2316301 () Bool)

(declare-fun tp!2316298 () Bool)

(assert (=> b!7832849 (= e!4632180 (and tp!2316301 tp!2316298))))

(declare-fun b!7832850 () Bool)

(declare-fun tp!2316302 () Bool)

(assert (=> b!7832850 (= e!4632180 tp!2316302)))

(assert (= (and b!7832483 ((_ is ElementMatch!20961) (regOne!42435 (regTwo!42435 r1!6261)))) b!7832848))

(assert (= (and b!7832483 ((_ is Concat!29806) (regOne!42435 (regTwo!42435 r1!6261)))) b!7832849))

(assert (= (and b!7832483 ((_ is Star!20961) (regOne!42435 (regTwo!42435 r1!6261)))) b!7832850))

(assert (= (and b!7832483 ((_ is Union!20961) (regOne!42435 (regTwo!42435 r1!6261)))) b!7832851))

(declare-fun b!7832857 () Bool)

(declare-fun e!4632182 () Bool)

(declare-fun tp!2316304 () Bool)

(declare-fun tp!2316305 () Bool)

(assert (=> b!7832857 (= e!4632182 (and tp!2316304 tp!2316305))))

(assert (=> b!7832483 (= tp!2316207 e!4632182)))

(declare-fun b!7832854 () Bool)

(assert (=> b!7832854 (= e!4632182 tp_is_empty!52277)))

(declare-fun b!7832855 () Bool)

(declare-fun tp!2316306 () Bool)

(declare-fun tp!2316303 () Bool)

(assert (=> b!7832855 (= e!4632182 (and tp!2316306 tp!2316303))))

(declare-fun b!7832856 () Bool)

(declare-fun tp!2316307 () Bool)

(assert (=> b!7832856 (= e!4632182 tp!2316307)))

(assert (= (and b!7832483 ((_ is ElementMatch!20961) (regTwo!42435 (regTwo!42435 r1!6261)))) b!7832854))

(assert (= (and b!7832483 ((_ is Concat!29806) (regTwo!42435 (regTwo!42435 r1!6261)))) b!7832855))

(assert (= (and b!7832483 ((_ is Star!20961) (regTwo!42435 (regTwo!42435 r1!6261)))) b!7832856))

(assert (= (and b!7832483 ((_ is Union!20961) (regTwo!42435 (regTwo!42435 r1!6261)))) b!7832857))

(declare-fun b!7832861 () Bool)

(declare-fun e!4632183 () Bool)

(declare-fun tp!2316309 () Bool)

(declare-fun tp!2316310 () Bool)

(assert (=> b!7832861 (= e!4632183 (and tp!2316309 tp!2316310))))

(assert (=> b!7832508 (= tp!2316237 e!4632183)))

(declare-fun b!7832858 () Bool)

(assert (=> b!7832858 (= e!4632183 tp_is_empty!52277)))

(declare-fun b!7832859 () Bool)

(declare-fun tp!2316311 () Bool)

(declare-fun tp!2316308 () Bool)

(assert (=> b!7832859 (= e!4632183 (and tp!2316311 tp!2316308))))

(declare-fun b!7832860 () Bool)

(declare-fun tp!2316312 () Bool)

(assert (=> b!7832860 (= e!4632183 tp!2316312)))

(assert (= (and b!7832508 ((_ is ElementMatch!20961) (regOne!42435 (reg!21290 r1!6261)))) b!7832858))

(assert (= (and b!7832508 ((_ is Concat!29806) (regOne!42435 (reg!21290 r1!6261)))) b!7832859))

(assert (= (and b!7832508 ((_ is Star!20961) (regOne!42435 (reg!21290 r1!6261)))) b!7832860))

(assert (= (and b!7832508 ((_ is Union!20961) (regOne!42435 (reg!21290 r1!6261)))) b!7832861))

(declare-fun b!7832865 () Bool)

(declare-fun e!4632184 () Bool)

(declare-fun tp!2316314 () Bool)

(declare-fun tp!2316315 () Bool)

(assert (=> b!7832865 (= e!4632184 (and tp!2316314 tp!2316315))))

(assert (=> b!7832508 (= tp!2316238 e!4632184)))

(declare-fun b!7832862 () Bool)

(assert (=> b!7832862 (= e!4632184 tp_is_empty!52277)))

(declare-fun b!7832863 () Bool)

(declare-fun tp!2316316 () Bool)

(declare-fun tp!2316313 () Bool)

(assert (=> b!7832863 (= e!4632184 (and tp!2316316 tp!2316313))))

(declare-fun b!7832864 () Bool)

(declare-fun tp!2316317 () Bool)

(assert (=> b!7832864 (= e!4632184 tp!2316317)))

(assert (= (and b!7832508 ((_ is ElementMatch!20961) (regTwo!42435 (reg!21290 r1!6261)))) b!7832862))

(assert (= (and b!7832508 ((_ is Concat!29806) (regTwo!42435 (reg!21290 r1!6261)))) b!7832863))

(assert (= (and b!7832508 ((_ is Star!20961) (regTwo!42435 (reg!21290 r1!6261)))) b!7832864))

(assert (= (and b!7832508 ((_ is Union!20961) (regTwo!42435 (reg!21290 r1!6261)))) b!7832865))

(declare-fun b!7832871 () Bool)

(declare-fun e!4632186 () Bool)

(declare-fun tp!2316319 () Bool)

(declare-fun tp!2316320 () Bool)

(assert (=> b!7832871 (= e!4632186 (and tp!2316319 tp!2316320))))

(assert (=> b!7832491 (= tp!2316216 e!4632186)))

(declare-fun b!7832868 () Bool)

(assert (=> b!7832868 (= e!4632186 tp_is_empty!52277)))

(declare-fun b!7832869 () Bool)

(declare-fun tp!2316321 () Bool)

(declare-fun tp!2316318 () Bool)

(assert (=> b!7832869 (= e!4632186 (and tp!2316321 tp!2316318))))

(declare-fun b!7832870 () Bool)

(declare-fun tp!2316322 () Bool)

(assert (=> b!7832870 (= e!4632186 tp!2316322)))

(assert (= (and b!7832491 ((_ is ElementMatch!20961) (regOne!42435 (regTwo!42435 r2!6199)))) b!7832868))

(assert (= (and b!7832491 ((_ is Concat!29806) (regOne!42435 (regTwo!42435 r2!6199)))) b!7832869))

(assert (= (and b!7832491 ((_ is Star!20961) (regOne!42435 (regTwo!42435 r2!6199)))) b!7832870))

(assert (= (and b!7832491 ((_ is Union!20961) (regOne!42435 (regTwo!42435 r2!6199)))) b!7832871))

(declare-fun b!7832875 () Bool)

(declare-fun e!4632187 () Bool)

(declare-fun tp!2316324 () Bool)

(declare-fun tp!2316325 () Bool)

(assert (=> b!7832875 (= e!4632187 (and tp!2316324 tp!2316325))))

(assert (=> b!7832491 (= tp!2316217 e!4632187)))

(declare-fun b!7832872 () Bool)

(assert (=> b!7832872 (= e!4632187 tp_is_empty!52277)))

(declare-fun b!7832873 () Bool)

(declare-fun tp!2316326 () Bool)

(declare-fun tp!2316323 () Bool)

(assert (=> b!7832873 (= e!4632187 (and tp!2316326 tp!2316323))))

(declare-fun b!7832874 () Bool)

(declare-fun tp!2316327 () Bool)

(assert (=> b!7832874 (= e!4632187 tp!2316327)))

(assert (= (and b!7832491 ((_ is ElementMatch!20961) (regTwo!42435 (regTwo!42435 r2!6199)))) b!7832872))

(assert (= (and b!7832491 ((_ is Concat!29806) (regTwo!42435 (regTwo!42435 r2!6199)))) b!7832873))

(assert (= (and b!7832491 ((_ is Star!20961) (regTwo!42435 (regTwo!42435 r2!6199)))) b!7832874))

(assert (= (and b!7832491 ((_ is Union!20961) (regTwo!42435 (regTwo!42435 r2!6199)))) b!7832875))

(declare-fun b!7832881 () Bool)

(declare-fun e!4632189 () Bool)

(declare-fun tp!2316329 () Bool)

(declare-fun tp!2316330 () Bool)

(assert (=> b!7832881 (= e!4632189 (and tp!2316329 tp!2316330))))

(assert (=> b!7832448 (= tp!2316171 e!4632189)))

(declare-fun b!7832878 () Bool)

(assert (=> b!7832878 (= e!4632189 tp_is_empty!52277)))

(declare-fun b!7832879 () Bool)

(declare-fun tp!2316331 () Bool)

(declare-fun tp!2316328 () Bool)

(assert (=> b!7832879 (= e!4632189 (and tp!2316331 tp!2316328))))

(declare-fun b!7832880 () Bool)

(declare-fun tp!2316332 () Bool)

(assert (=> b!7832880 (= e!4632189 tp!2316332)))

(assert (= (and b!7832448 ((_ is ElementMatch!20961) (regOne!42434 (regTwo!42434 r1!6261)))) b!7832878))

(assert (= (and b!7832448 ((_ is Concat!29806) (regOne!42434 (regTwo!42434 r1!6261)))) b!7832879))

(assert (= (and b!7832448 ((_ is Star!20961) (regOne!42434 (regTwo!42434 r1!6261)))) b!7832880))

(assert (= (and b!7832448 ((_ is Union!20961) (regOne!42434 (regTwo!42434 r1!6261)))) b!7832881))

(declare-fun b!7832885 () Bool)

(declare-fun e!4632190 () Bool)

(declare-fun tp!2316334 () Bool)

(declare-fun tp!2316335 () Bool)

(assert (=> b!7832885 (= e!4632190 (and tp!2316334 tp!2316335))))

(assert (=> b!7832448 (= tp!2316168 e!4632190)))

(declare-fun b!7832882 () Bool)

(assert (=> b!7832882 (= e!4632190 tp_is_empty!52277)))

(declare-fun b!7832883 () Bool)

(declare-fun tp!2316336 () Bool)

(declare-fun tp!2316333 () Bool)

(assert (=> b!7832883 (= e!4632190 (and tp!2316336 tp!2316333))))

(declare-fun b!7832884 () Bool)

(declare-fun tp!2316337 () Bool)

(assert (=> b!7832884 (= e!4632190 tp!2316337)))

(assert (= (and b!7832448 ((_ is ElementMatch!20961) (regTwo!42434 (regTwo!42434 r1!6261)))) b!7832882))

(assert (= (and b!7832448 ((_ is Concat!29806) (regTwo!42434 (regTwo!42434 r1!6261)))) b!7832883))

(assert (= (and b!7832448 ((_ is Star!20961) (regTwo!42434 (regTwo!42434 r1!6261)))) b!7832884))

(assert (= (and b!7832448 ((_ is Union!20961) (regTwo!42434 (regTwo!42434 r1!6261)))) b!7832885))

(declare-fun b!7832889 () Bool)

(declare-fun e!4632191 () Bool)

(declare-fun tp!2316339 () Bool)

(declare-fun tp!2316340 () Bool)

(assert (=> b!7832889 (= e!4632191 (and tp!2316339 tp!2316340))))

(assert (=> b!7832497 (= tp!2316228 e!4632191)))

(declare-fun b!7832886 () Bool)

(assert (=> b!7832886 (= e!4632191 tp_is_empty!52277)))

(declare-fun b!7832887 () Bool)

(declare-fun tp!2316341 () Bool)

(declare-fun tp!2316338 () Bool)

(assert (=> b!7832887 (= e!4632191 (and tp!2316341 tp!2316338))))

(declare-fun b!7832888 () Bool)

(declare-fun tp!2316342 () Bool)

(assert (=> b!7832888 (= e!4632191 tp!2316342)))

(assert (= (and b!7832497 ((_ is ElementMatch!20961) (regOne!42434 (regTwo!42434 r2!6199)))) b!7832886))

(assert (= (and b!7832497 ((_ is Concat!29806) (regOne!42434 (regTwo!42434 r2!6199)))) b!7832887))

(assert (= (and b!7832497 ((_ is Star!20961) (regOne!42434 (regTwo!42434 r2!6199)))) b!7832888))

(assert (= (and b!7832497 ((_ is Union!20961) (regOne!42434 (regTwo!42434 r2!6199)))) b!7832889))

(declare-fun b!7832893 () Bool)

(declare-fun e!4632192 () Bool)

(declare-fun tp!2316344 () Bool)

(declare-fun tp!2316345 () Bool)

(assert (=> b!7832893 (= e!4632192 (and tp!2316344 tp!2316345))))

(assert (=> b!7832497 (= tp!2316225 e!4632192)))

(declare-fun b!7832890 () Bool)

(assert (=> b!7832890 (= e!4632192 tp_is_empty!52277)))

(declare-fun b!7832891 () Bool)

(declare-fun tp!2316346 () Bool)

(declare-fun tp!2316343 () Bool)

(assert (=> b!7832891 (= e!4632192 (and tp!2316346 tp!2316343))))

(declare-fun b!7832892 () Bool)

(declare-fun tp!2316347 () Bool)

(assert (=> b!7832892 (= e!4632192 tp!2316347)))

(assert (= (and b!7832497 ((_ is ElementMatch!20961) (regTwo!42434 (regTwo!42434 r2!6199)))) b!7832890))

(assert (= (and b!7832497 ((_ is Concat!29806) (regTwo!42434 (regTwo!42434 r2!6199)))) b!7832891))

(assert (= (and b!7832497 ((_ is Star!20961) (regTwo!42434 (regTwo!42434 r2!6199)))) b!7832892))

(assert (= (and b!7832497 ((_ is Union!20961) (regTwo!42434 (regTwo!42434 r2!6199)))) b!7832893))

(declare-fun b!7832897 () Bool)

(declare-fun e!4632193 () Bool)

(declare-fun tp!2316349 () Bool)

(declare-fun tp!2316350 () Bool)

(assert (=> b!7832897 (= e!4632193 (and tp!2316349 tp!2316350))))

(assert (=> b!7832489 (= tp!2316218 e!4632193)))

(declare-fun b!7832894 () Bool)

(assert (=> b!7832894 (= e!4632193 tp_is_empty!52277)))

(declare-fun b!7832895 () Bool)

(declare-fun tp!2316351 () Bool)

(declare-fun tp!2316348 () Bool)

(assert (=> b!7832895 (= e!4632193 (and tp!2316351 tp!2316348))))

(declare-fun b!7832896 () Bool)

(declare-fun tp!2316352 () Bool)

(assert (=> b!7832896 (= e!4632193 tp!2316352)))

(assert (= (and b!7832489 ((_ is ElementMatch!20961) (regOne!42434 (regTwo!42435 r2!6199)))) b!7832894))

(assert (= (and b!7832489 ((_ is Concat!29806) (regOne!42434 (regTwo!42435 r2!6199)))) b!7832895))

(assert (= (and b!7832489 ((_ is Star!20961) (regOne!42434 (regTwo!42435 r2!6199)))) b!7832896))

(assert (= (and b!7832489 ((_ is Union!20961) (regOne!42434 (regTwo!42435 r2!6199)))) b!7832897))

(declare-fun b!7832901 () Bool)

(declare-fun e!4632194 () Bool)

(declare-fun tp!2316354 () Bool)

(declare-fun tp!2316355 () Bool)

(assert (=> b!7832901 (= e!4632194 (and tp!2316354 tp!2316355))))

(assert (=> b!7832489 (= tp!2316215 e!4632194)))

(declare-fun b!7832898 () Bool)

(assert (=> b!7832898 (= e!4632194 tp_is_empty!52277)))

(declare-fun b!7832899 () Bool)

(declare-fun tp!2316356 () Bool)

(declare-fun tp!2316353 () Bool)

(assert (=> b!7832899 (= e!4632194 (and tp!2316356 tp!2316353))))

(declare-fun b!7832900 () Bool)

(declare-fun tp!2316357 () Bool)

(assert (=> b!7832900 (= e!4632194 tp!2316357)))

(assert (= (and b!7832489 ((_ is ElementMatch!20961) (regTwo!42434 (regTwo!42435 r2!6199)))) b!7832898))

(assert (= (and b!7832489 ((_ is Concat!29806) (regTwo!42434 (regTwo!42435 r2!6199)))) b!7832899))

(assert (= (and b!7832489 ((_ is Star!20961) (regTwo!42434 (regTwo!42435 r2!6199)))) b!7832900))

(assert (= (and b!7832489 ((_ is Union!20961) (regTwo!42434 (regTwo!42435 r2!6199)))) b!7832901))

(declare-fun b!7832905 () Bool)

(declare-fun e!4632195 () Bool)

(declare-fun tp!2316359 () Bool)

(declare-fun tp!2316360 () Bool)

(assert (=> b!7832905 (= e!4632195 (and tp!2316359 tp!2316360))))

(assert (=> b!7832449 (= tp!2316172 e!4632195)))

(declare-fun b!7832902 () Bool)

(assert (=> b!7832902 (= e!4632195 tp_is_empty!52277)))

(declare-fun b!7832903 () Bool)

(declare-fun tp!2316361 () Bool)

(declare-fun tp!2316358 () Bool)

(assert (=> b!7832903 (= e!4632195 (and tp!2316361 tp!2316358))))

(declare-fun b!7832904 () Bool)

(declare-fun tp!2316362 () Bool)

(assert (=> b!7832904 (= e!4632195 tp!2316362)))

(assert (= (and b!7832449 ((_ is ElementMatch!20961) (reg!21290 (regTwo!42434 r1!6261)))) b!7832902))

(assert (= (and b!7832449 ((_ is Concat!29806) (reg!21290 (regTwo!42434 r1!6261)))) b!7832903))

(assert (= (and b!7832449 ((_ is Star!20961) (reg!21290 (regTwo!42434 r1!6261)))) b!7832904))

(assert (= (and b!7832449 ((_ is Union!20961) (reg!21290 (regTwo!42434 r1!6261)))) b!7832905))

(declare-fun b!7832909 () Bool)

(declare-fun e!4632196 () Bool)

(declare-fun tp!2316364 () Bool)

(declare-fun tp!2316365 () Bool)

(assert (=> b!7832909 (= e!4632196 (and tp!2316364 tp!2316365))))

(assert (=> b!7832498 (= tp!2316229 e!4632196)))

(declare-fun b!7832906 () Bool)

(assert (=> b!7832906 (= e!4632196 tp_is_empty!52277)))

(declare-fun b!7832907 () Bool)

(declare-fun tp!2316366 () Bool)

(declare-fun tp!2316363 () Bool)

(assert (=> b!7832907 (= e!4632196 (and tp!2316366 tp!2316363))))

(declare-fun b!7832908 () Bool)

(declare-fun tp!2316367 () Bool)

(assert (=> b!7832908 (= e!4632196 tp!2316367)))

(assert (= (and b!7832498 ((_ is ElementMatch!20961) (reg!21290 (regTwo!42434 r2!6199)))) b!7832906))

(assert (= (and b!7832498 ((_ is Concat!29806) (reg!21290 (regTwo!42434 r2!6199)))) b!7832907))

(assert (= (and b!7832498 ((_ is Star!20961) (reg!21290 (regTwo!42434 r2!6199)))) b!7832908))

(assert (= (and b!7832498 ((_ is Union!20961) (reg!21290 (regTwo!42434 r2!6199)))) b!7832909))

(declare-fun b!7832924 () Bool)

(declare-fun e!4632204 () Bool)

(declare-fun tp!2316368 () Bool)

(assert (=> b!7832924 (= e!4632204 (and tp_is_empty!52277 tp!2316368))))

(assert (=> b!7832467 (= tp!2316190 e!4632204)))

(assert (= (and b!7832467 ((_ is Cons!73674) (t!388533 (t!388533 s1Rec!453)))) b!7832924))

(declare-fun b!7832925 () Bool)

(declare-fun e!4632205 () Bool)

(declare-fun tp!2316369 () Bool)

(assert (=> b!7832925 (= e!4632205 (and tp_is_empty!52277 tp!2316369))))

(assert (=> b!7832509 (= tp!2316241 e!4632205)))

(assert (= (and b!7832509 ((_ is Cons!73674) (t!388533 (t!388533 s1!4101)))) b!7832925))

(declare-fun b!7832929 () Bool)

(declare-fun e!4632206 () Bool)

(declare-fun tp!2316371 () Bool)

(declare-fun tp!2316372 () Bool)

(assert (=> b!7832929 (= e!4632206 (and tp!2316371 tp!2316372))))

(assert (=> b!7832495 (= tp!2316221 e!4632206)))

(declare-fun b!7832926 () Bool)

(assert (=> b!7832926 (= e!4632206 tp_is_empty!52277)))

(declare-fun b!7832927 () Bool)

(declare-fun tp!2316373 () Bool)

(declare-fun tp!2316370 () Bool)

(assert (=> b!7832927 (= e!4632206 (and tp!2316373 tp!2316370))))

(declare-fun b!7832928 () Bool)

(declare-fun tp!2316374 () Bool)

(assert (=> b!7832928 (= e!4632206 tp!2316374)))

(assert (= (and b!7832495 ((_ is ElementMatch!20961) (regOne!42435 (regOne!42434 r2!6199)))) b!7832926))

(assert (= (and b!7832495 ((_ is Concat!29806) (regOne!42435 (regOne!42434 r2!6199)))) b!7832927))

(assert (= (and b!7832495 ((_ is Star!20961) (regOne!42435 (regOne!42434 r2!6199)))) b!7832928))

(assert (= (and b!7832495 ((_ is Union!20961) (regOne!42435 (regOne!42434 r2!6199)))) b!7832929))

(declare-fun b!7832933 () Bool)

(declare-fun e!4632207 () Bool)

(declare-fun tp!2316376 () Bool)

(declare-fun tp!2316377 () Bool)

(assert (=> b!7832933 (= e!4632207 (and tp!2316376 tp!2316377))))

(assert (=> b!7832495 (= tp!2316222 e!4632207)))

(declare-fun b!7832930 () Bool)

(assert (=> b!7832930 (= e!4632207 tp_is_empty!52277)))

(declare-fun b!7832931 () Bool)

(declare-fun tp!2316378 () Bool)

(declare-fun tp!2316375 () Bool)

(assert (=> b!7832931 (= e!4632207 (and tp!2316378 tp!2316375))))

(declare-fun b!7832932 () Bool)

(declare-fun tp!2316379 () Bool)

(assert (=> b!7832932 (= e!4632207 tp!2316379)))

(assert (= (and b!7832495 ((_ is ElementMatch!20961) (regTwo!42435 (regOne!42434 r2!6199)))) b!7832930))

(assert (= (and b!7832495 ((_ is Concat!29806) (regTwo!42435 (regOne!42434 r2!6199)))) b!7832931))

(assert (= (and b!7832495 ((_ is Star!20961) (regTwo!42435 (regOne!42434 r2!6199)))) b!7832932))

(assert (= (and b!7832495 ((_ is Union!20961) (regTwo!42435 (regOne!42434 r2!6199)))) b!7832933))

(declare-fun b!7832937 () Bool)

(declare-fun e!4632208 () Bool)

(declare-fun tp!2316381 () Bool)

(declare-fun tp!2316382 () Bool)

(assert (=> b!7832937 (= e!4632208 (and tp!2316381 tp!2316382))))

(assert (=> b!7832477 (= tp!2316203 e!4632208)))

(declare-fun b!7832934 () Bool)

(assert (=> b!7832934 (= e!4632208 tp_is_empty!52277)))

(declare-fun b!7832935 () Bool)

(declare-fun tp!2316383 () Bool)

(declare-fun tp!2316380 () Bool)

(assert (=> b!7832935 (= e!4632208 (and tp!2316383 tp!2316380))))

(declare-fun b!7832936 () Bool)

(declare-fun tp!2316384 () Bool)

(assert (=> b!7832936 (= e!4632208 tp!2316384)))

(assert (= (and b!7832477 ((_ is ElementMatch!20961) (regOne!42434 (regOne!42435 r1!6261)))) b!7832934))

(assert (= (and b!7832477 ((_ is Concat!29806) (regOne!42434 (regOne!42435 r1!6261)))) b!7832935))

(assert (= (and b!7832477 ((_ is Star!20961) (regOne!42434 (regOne!42435 r1!6261)))) b!7832936))

(assert (= (and b!7832477 ((_ is Union!20961) (regOne!42434 (regOne!42435 r1!6261)))) b!7832937))

(declare-fun b!7832941 () Bool)

(declare-fun e!4632209 () Bool)

(declare-fun tp!2316386 () Bool)

(declare-fun tp!2316387 () Bool)

(assert (=> b!7832941 (= e!4632209 (and tp!2316386 tp!2316387))))

(assert (=> b!7832477 (= tp!2316200 e!4632209)))

(declare-fun b!7832938 () Bool)

(assert (=> b!7832938 (= e!4632209 tp_is_empty!52277)))

(declare-fun b!7832939 () Bool)

(declare-fun tp!2316388 () Bool)

(declare-fun tp!2316385 () Bool)

(assert (=> b!7832939 (= e!4632209 (and tp!2316388 tp!2316385))))

(declare-fun b!7832940 () Bool)

(declare-fun tp!2316389 () Bool)

(assert (=> b!7832940 (= e!4632209 tp!2316389)))

(assert (= (and b!7832477 ((_ is ElementMatch!20961) (regTwo!42434 (regOne!42435 r1!6261)))) b!7832938))

(assert (= (and b!7832477 ((_ is Concat!29806) (regTwo!42434 (regOne!42435 r1!6261)))) b!7832939))

(assert (= (and b!7832477 ((_ is Star!20961) (regTwo!42434 (regOne!42435 r1!6261)))) b!7832940))

(assert (= (and b!7832477 ((_ is Union!20961) (regTwo!42434 (regOne!42435 r1!6261)))) b!7832941))

(declare-fun b!7832945 () Bool)

(declare-fun e!4632210 () Bool)

(declare-fun tp!2316391 () Bool)

(declare-fun tp!2316392 () Bool)

(assert (=> b!7832945 (= e!4632210 (and tp!2316391 tp!2316392))))

(assert (=> b!7832436 (= tp!2316156 e!4632210)))

(declare-fun b!7832942 () Bool)

(assert (=> b!7832942 (= e!4632210 tp_is_empty!52277)))

(declare-fun b!7832943 () Bool)

(declare-fun tp!2316393 () Bool)

(declare-fun tp!2316390 () Bool)

(assert (=> b!7832943 (= e!4632210 (and tp!2316393 tp!2316390))))

(declare-fun b!7832944 () Bool)

(declare-fun tp!2316394 () Bool)

(assert (=> b!7832944 (= e!4632210 tp!2316394)))

(assert (= (and b!7832436 ((_ is ElementMatch!20961) (regOne!42434 (regOne!42434 r1!6261)))) b!7832942))

(assert (= (and b!7832436 ((_ is Concat!29806) (regOne!42434 (regOne!42434 r1!6261)))) b!7832943))

(assert (= (and b!7832436 ((_ is Star!20961) (regOne!42434 (regOne!42434 r1!6261)))) b!7832944))

(assert (= (and b!7832436 ((_ is Union!20961) (regOne!42434 (regOne!42434 r1!6261)))) b!7832945))

(declare-fun b!7832949 () Bool)

(declare-fun e!4632211 () Bool)

(declare-fun tp!2316396 () Bool)

(declare-fun tp!2316397 () Bool)

(assert (=> b!7832949 (= e!4632211 (and tp!2316396 tp!2316397))))

(assert (=> b!7832436 (= tp!2316153 e!4632211)))

(declare-fun b!7832946 () Bool)

(assert (=> b!7832946 (= e!4632211 tp_is_empty!52277)))

(declare-fun b!7832947 () Bool)

(declare-fun tp!2316398 () Bool)

(declare-fun tp!2316395 () Bool)

(assert (=> b!7832947 (= e!4632211 (and tp!2316398 tp!2316395))))

(declare-fun b!7832948 () Bool)

(declare-fun tp!2316399 () Bool)

(assert (=> b!7832948 (= e!4632211 tp!2316399)))

(assert (= (and b!7832436 ((_ is ElementMatch!20961) (regTwo!42434 (regOne!42434 r1!6261)))) b!7832946))

(assert (= (and b!7832436 ((_ is Concat!29806) (regTwo!42434 (regOne!42434 r1!6261)))) b!7832947))

(assert (= (and b!7832436 ((_ is Star!20961) (regTwo!42434 (regOne!42434 r1!6261)))) b!7832948))

(assert (= (and b!7832436 ((_ is Union!20961) (regTwo!42434 (regOne!42434 r1!6261)))) b!7832949))

(declare-fun b!7832953 () Bool)

(declare-fun e!4632212 () Bool)

(declare-fun tp!2316401 () Bool)

(declare-fun tp!2316402 () Bool)

(assert (=> b!7832953 (= e!4632212 (and tp!2316401 tp!2316402))))

(assert (=> b!7832486 (= tp!2316214 e!4632212)))

(declare-fun b!7832950 () Bool)

(assert (=> b!7832950 (= e!4632212 tp_is_empty!52277)))

(declare-fun b!7832951 () Bool)

(declare-fun tp!2316403 () Bool)

(declare-fun tp!2316400 () Bool)

(assert (=> b!7832951 (= e!4632212 (and tp!2316403 tp!2316400))))

(declare-fun b!7832952 () Bool)

(declare-fun tp!2316404 () Bool)

(assert (=> b!7832952 (= e!4632212 tp!2316404)))

(assert (= (and b!7832486 ((_ is ElementMatch!20961) (reg!21290 (regOne!42435 r2!6199)))) b!7832950))

(assert (= (and b!7832486 ((_ is Concat!29806) (reg!21290 (regOne!42435 r2!6199)))) b!7832951))

(assert (= (and b!7832486 ((_ is Star!20961) (reg!21290 (regOne!42435 r2!6199)))) b!7832952))

(assert (= (and b!7832486 ((_ is Union!20961) (reg!21290 (regOne!42435 r2!6199)))) b!7832953))

(declare-fun b!7832957 () Bool)

(declare-fun e!4632213 () Bool)

(declare-fun tp!2316406 () Bool)

(declare-fun tp!2316407 () Bool)

(assert (=> b!7832957 (= e!4632213 (and tp!2316406 tp!2316407))))

(assert (=> b!7832494 (= tp!2316224 e!4632213)))

(declare-fun b!7832954 () Bool)

(assert (=> b!7832954 (= e!4632213 tp_is_empty!52277)))

(declare-fun b!7832955 () Bool)

(declare-fun tp!2316408 () Bool)

(declare-fun tp!2316405 () Bool)

(assert (=> b!7832955 (= e!4632213 (and tp!2316408 tp!2316405))))

(declare-fun b!7832956 () Bool)

(declare-fun tp!2316409 () Bool)

(assert (=> b!7832956 (= e!4632213 tp!2316409)))

(assert (= (and b!7832494 ((_ is ElementMatch!20961) (reg!21290 (regOne!42434 r2!6199)))) b!7832954))

(assert (= (and b!7832494 ((_ is Concat!29806) (reg!21290 (regOne!42434 r2!6199)))) b!7832955))

(assert (= (and b!7832494 ((_ is Star!20961) (reg!21290 (regOne!42434 r2!6199)))) b!7832956))

(assert (= (and b!7832494 ((_ is Union!20961) (reg!21290 (regOne!42434 r2!6199)))) b!7832957))

(declare-fun b!7832961 () Bool)

(declare-fun e!4632214 () Bool)

(declare-fun tp!2316411 () Bool)

(declare-fun tp!2316412 () Bool)

(assert (=> b!7832961 (= e!4632214 (and tp!2316411 tp!2316412))))

(assert (=> b!7832438 (= tp!2316154 e!4632214)))

(declare-fun b!7832958 () Bool)

(assert (=> b!7832958 (= e!4632214 tp_is_empty!52277)))

(declare-fun b!7832959 () Bool)

(declare-fun tp!2316413 () Bool)

(declare-fun tp!2316410 () Bool)

(assert (=> b!7832959 (= e!4632214 (and tp!2316413 tp!2316410))))

(declare-fun b!7832960 () Bool)

(declare-fun tp!2316414 () Bool)

(assert (=> b!7832960 (= e!4632214 tp!2316414)))

(assert (= (and b!7832438 ((_ is ElementMatch!20961) (regOne!42435 (regOne!42434 r1!6261)))) b!7832958))

(assert (= (and b!7832438 ((_ is Concat!29806) (regOne!42435 (regOne!42434 r1!6261)))) b!7832959))

(assert (= (and b!7832438 ((_ is Star!20961) (regOne!42435 (regOne!42434 r1!6261)))) b!7832960))

(assert (= (and b!7832438 ((_ is Union!20961) (regOne!42435 (regOne!42434 r1!6261)))) b!7832961))

(declare-fun b!7832965 () Bool)

(declare-fun e!4632215 () Bool)

(declare-fun tp!2316416 () Bool)

(declare-fun tp!2316417 () Bool)

(assert (=> b!7832965 (= e!4632215 (and tp!2316416 tp!2316417))))

(assert (=> b!7832438 (= tp!2316155 e!4632215)))

(declare-fun b!7832962 () Bool)

(assert (=> b!7832962 (= e!4632215 tp_is_empty!52277)))

(declare-fun b!7832963 () Bool)

(declare-fun tp!2316418 () Bool)

(declare-fun tp!2316415 () Bool)

(assert (=> b!7832963 (= e!4632215 (and tp!2316418 tp!2316415))))

(declare-fun b!7832964 () Bool)

(declare-fun tp!2316419 () Bool)

(assert (=> b!7832964 (= e!4632215 tp!2316419)))

(assert (= (and b!7832438 ((_ is ElementMatch!20961) (regTwo!42435 (regOne!42434 r1!6261)))) b!7832962))

(assert (= (and b!7832438 ((_ is Concat!29806) (regTwo!42435 (regOne!42434 r1!6261)))) b!7832963))

(assert (= (and b!7832438 ((_ is Star!20961) (regTwo!42435 (regOne!42434 r1!6261)))) b!7832964))

(assert (= (and b!7832438 ((_ is Union!20961) (regTwo!42435 (regOne!42434 r1!6261)))) b!7832965))

(declare-fun b!7832969 () Bool)

(declare-fun e!4632216 () Bool)

(declare-fun tp!2316421 () Bool)

(declare-fun tp!2316422 () Bool)

(assert (=> b!7832969 (= e!4632216 (and tp!2316421 tp!2316422))))

(assert (=> b!7832478 (= tp!2316204 e!4632216)))

(declare-fun b!7832966 () Bool)

(assert (=> b!7832966 (= e!4632216 tp_is_empty!52277)))

(declare-fun b!7832967 () Bool)

(declare-fun tp!2316423 () Bool)

(declare-fun tp!2316420 () Bool)

(assert (=> b!7832967 (= e!4632216 (and tp!2316423 tp!2316420))))

(declare-fun b!7832968 () Bool)

(declare-fun tp!2316424 () Bool)

(assert (=> b!7832968 (= e!4632216 tp!2316424)))

(assert (= (and b!7832478 ((_ is ElementMatch!20961) (reg!21290 (regOne!42435 r1!6261)))) b!7832966))

(assert (= (and b!7832478 ((_ is Concat!29806) (reg!21290 (regOne!42435 r1!6261)))) b!7832967))

(assert (= (and b!7832478 ((_ is Star!20961) (reg!21290 (regOne!42435 r1!6261)))) b!7832968))

(assert (= (and b!7832478 ((_ is Union!20961) (reg!21290 (regOne!42435 r1!6261)))) b!7832969))

(declare-fun b!7832973 () Bool)

(declare-fun e!4632217 () Bool)

(declare-fun tp!2316426 () Bool)

(declare-fun tp!2316427 () Bool)

(assert (=> b!7832973 (= e!4632217 (and tp!2316426 tp!2316427))))

(assert (=> b!7832437 (= tp!2316157 e!4632217)))

(declare-fun b!7832970 () Bool)

(assert (=> b!7832970 (= e!4632217 tp_is_empty!52277)))

(declare-fun b!7832971 () Bool)

(declare-fun tp!2316428 () Bool)

(declare-fun tp!2316425 () Bool)

(assert (=> b!7832971 (= e!4632217 (and tp!2316428 tp!2316425))))

(declare-fun b!7832972 () Bool)

(declare-fun tp!2316429 () Bool)

(assert (=> b!7832972 (= e!4632217 tp!2316429)))

(assert (= (and b!7832437 ((_ is ElementMatch!20961) (reg!21290 (regOne!42434 r1!6261)))) b!7832970))

(assert (= (and b!7832437 ((_ is Concat!29806) (reg!21290 (regOne!42434 r1!6261)))) b!7832971))

(assert (= (and b!7832437 ((_ is Star!20961) (reg!21290 (regOne!42434 r1!6261)))) b!7832972))

(assert (= (and b!7832437 ((_ is Union!20961) (reg!21290 (regOne!42434 r1!6261)))) b!7832973))

(declare-fun b!7832977 () Bool)

(declare-fun e!4632218 () Bool)

(declare-fun tp!2316431 () Bool)

(declare-fun tp!2316432 () Bool)

(assert (=> b!7832977 (= e!4632218 (and tp!2316431 tp!2316432))))

(assert (=> b!7832487 (= tp!2316211 e!4632218)))

(declare-fun b!7832974 () Bool)

(assert (=> b!7832974 (= e!4632218 tp_is_empty!52277)))

(declare-fun b!7832975 () Bool)

(declare-fun tp!2316433 () Bool)

(declare-fun tp!2316430 () Bool)

(assert (=> b!7832975 (= e!4632218 (and tp!2316433 tp!2316430))))

(declare-fun b!7832976 () Bool)

(declare-fun tp!2316434 () Bool)

(assert (=> b!7832976 (= e!4632218 tp!2316434)))

(assert (= (and b!7832487 ((_ is ElementMatch!20961) (regOne!42435 (regOne!42435 r2!6199)))) b!7832974))

(assert (= (and b!7832487 ((_ is Concat!29806) (regOne!42435 (regOne!42435 r2!6199)))) b!7832975))

(assert (= (and b!7832487 ((_ is Star!20961) (regOne!42435 (regOne!42435 r2!6199)))) b!7832976))

(assert (= (and b!7832487 ((_ is Union!20961) (regOne!42435 (regOne!42435 r2!6199)))) b!7832977))

(declare-fun b!7832981 () Bool)

(declare-fun e!4632219 () Bool)

(declare-fun tp!2316436 () Bool)

(declare-fun tp!2316437 () Bool)

(assert (=> b!7832981 (= e!4632219 (and tp!2316436 tp!2316437))))

(assert (=> b!7832487 (= tp!2316212 e!4632219)))

(declare-fun b!7832978 () Bool)

(assert (=> b!7832978 (= e!4632219 tp_is_empty!52277)))

(declare-fun b!7832979 () Bool)

(declare-fun tp!2316438 () Bool)

(declare-fun tp!2316435 () Bool)

(assert (=> b!7832979 (= e!4632219 (and tp!2316438 tp!2316435))))

(declare-fun b!7832980 () Bool)

(declare-fun tp!2316439 () Bool)

(assert (=> b!7832980 (= e!4632219 tp!2316439)))

(assert (= (and b!7832487 ((_ is ElementMatch!20961) (regTwo!42435 (regOne!42435 r2!6199)))) b!7832978))

(assert (= (and b!7832487 ((_ is Concat!29806) (regTwo!42435 (regOne!42435 r2!6199)))) b!7832979))

(assert (= (and b!7832487 ((_ is Star!20961) (regTwo!42435 (regOne!42435 r2!6199)))) b!7832980))

(assert (= (and b!7832487 ((_ is Union!20961) (regTwo!42435 (regOne!42435 r2!6199)))) b!7832981))

(declare-fun b!7832985 () Bool)

(declare-fun e!4632220 () Bool)

(declare-fun tp!2316441 () Bool)

(declare-fun tp!2316442 () Bool)

(assert (=> b!7832985 (= e!4632220 (and tp!2316441 tp!2316442))))

(assert (=> b!7832501 (= tp!2316233 e!4632220)))

(declare-fun b!7832982 () Bool)

(assert (=> b!7832982 (= e!4632220 tp_is_empty!52277)))

(declare-fun b!7832983 () Bool)

(declare-fun tp!2316443 () Bool)

(declare-fun tp!2316440 () Bool)

(assert (=> b!7832983 (= e!4632220 (and tp!2316443 tp!2316440))))

(declare-fun b!7832984 () Bool)

(declare-fun tp!2316444 () Bool)

(assert (=> b!7832984 (= e!4632220 tp!2316444)))

(assert (= (and b!7832501 ((_ is ElementMatch!20961) (regOne!42434 (reg!21290 r2!6199)))) b!7832982))

(assert (= (and b!7832501 ((_ is Concat!29806) (regOne!42434 (reg!21290 r2!6199)))) b!7832983))

(assert (= (and b!7832501 ((_ is Star!20961) (regOne!42434 (reg!21290 r2!6199)))) b!7832984))

(assert (= (and b!7832501 ((_ is Union!20961) (regOne!42434 (reg!21290 r2!6199)))) b!7832985))

(declare-fun b!7832989 () Bool)

(declare-fun e!4632221 () Bool)

(declare-fun tp!2316446 () Bool)

(declare-fun tp!2316447 () Bool)

(assert (=> b!7832989 (= e!4632221 (and tp!2316446 tp!2316447))))

(assert (=> b!7832501 (= tp!2316230 e!4632221)))

(declare-fun b!7832986 () Bool)

(assert (=> b!7832986 (= e!4632221 tp_is_empty!52277)))

(declare-fun b!7832987 () Bool)

(declare-fun tp!2316448 () Bool)

(declare-fun tp!2316445 () Bool)

(assert (=> b!7832987 (= e!4632221 (and tp!2316448 tp!2316445))))

(declare-fun b!7832988 () Bool)

(declare-fun tp!2316449 () Bool)

(assert (=> b!7832988 (= e!4632221 tp!2316449)))

(assert (= (and b!7832501 ((_ is ElementMatch!20961) (regTwo!42434 (reg!21290 r2!6199)))) b!7832986))

(assert (= (and b!7832501 ((_ is Concat!29806) (regTwo!42434 (reg!21290 r2!6199)))) b!7832987))

(assert (= (and b!7832501 ((_ is Star!20961) (regTwo!42434 (reg!21290 r2!6199)))) b!7832988))

(assert (= (and b!7832501 ((_ is Union!20961) (regTwo!42434 (reg!21290 r2!6199)))) b!7832989))

(declare-fun b!7832993 () Bool)

(declare-fun e!4632222 () Bool)

(declare-fun tp!2316451 () Bool)

(declare-fun tp!2316452 () Bool)

(assert (=> b!7832993 (= e!4632222 (and tp!2316451 tp!2316452))))

(assert (=> b!7832503 (= tp!2316231 e!4632222)))

(declare-fun b!7832990 () Bool)

(assert (=> b!7832990 (= e!4632222 tp_is_empty!52277)))

(declare-fun b!7832991 () Bool)

(declare-fun tp!2316453 () Bool)

(declare-fun tp!2316450 () Bool)

(assert (=> b!7832991 (= e!4632222 (and tp!2316453 tp!2316450))))

(declare-fun b!7832992 () Bool)

(declare-fun tp!2316454 () Bool)

(assert (=> b!7832992 (= e!4632222 tp!2316454)))

(assert (= (and b!7832503 ((_ is ElementMatch!20961) (regOne!42435 (reg!21290 r2!6199)))) b!7832990))

(assert (= (and b!7832503 ((_ is Concat!29806) (regOne!42435 (reg!21290 r2!6199)))) b!7832991))

(assert (= (and b!7832503 ((_ is Star!20961) (regOne!42435 (reg!21290 r2!6199)))) b!7832992))

(assert (= (and b!7832503 ((_ is Union!20961) (regOne!42435 (reg!21290 r2!6199)))) b!7832993))

(declare-fun b!7832997 () Bool)

(declare-fun e!4632223 () Bool)

(declare-fun tp!2316456 () Bool)

(declare-fun tp!2316457 () Bool)

(assert (=> b!7832997 (= e!4632223 (and tp!2316456 tp!2316457))))

(assert (=> b!7832503 (= tp!2316232 e!4632223)))

(declare-fun b!7832994 () Bool)

(assert (=> b!7832994 (= e!4632223 tp_is_empty!52277)))

(declare-fun b!7832995 () Bool)

(declare-fun tp!2316458 () Bool)

(declare-fun tp!2316455 () Bool)

(assert (=> b!7832995 (= e!4632223 (and tp!2316458 tp!2316455))))

(declare-fun b!7832996 () Bool)

(declare-fun tp!2316459 () Bool)

(assert (=> b!7832996 (= e!4632223 tp!2316459)))

(assert (= (and b!7832503 ((_ is ElementMatch!20961) (regTwo!42435 (reg!21290 r2!6199)))) b!7832994))

(assert (= (and b!7832503 ((_ is Concat!29806) (regTwo!42435 (reg!21290 r2!6199)))) b!7832995))

(assert (= (and b!7832503 ((_ is Star!20961) (regTwo!42435 (reg!21290 r2!6199)))) b!7832996))

(assert (= (and b!7832503 ((_ is Union!20961) (regTwo!42435 (reg!21290 r2!6199)))) b!7832997))

(declare-fun b!7833010 () Bool)

(declare-fun e!4632231 () Bool)

(declare-fun tp!2316461 () Bool)

(declare-fun tp!2316462 () Bool)

(assert (=> b!7833010 (= e!4632231 (and tp!2316461 tp!2316462))))

(assert (=> b!7832485 (= tp!2316213 e!4632231)))

(declare-fun b!7833007 () Bool)

(assert (=> b!7833007 (= e!4632231 tp_is_empty!52277)))

(declare-fun b!7833008 () Bool)

(declare-fun tp!2316463 () Bool)

(declare-fun tp!2316460 () Bool)

(assert (=> b!7833008 (= e!4632231 (and tp!2316463 tp!2316460))))

(declare-fun b!7833009 () Bool)

(declare-fun tp!2316464 () Bool)

(assert (=> b!7833009 (= e!4632231 tp!2316464)))

(assert (= (and b!7832485 ((_ is ElementMatch!20961) (regOne!42434 (regOne!42435 r2!6199)))) b!7833007))

(assert (= (and b!7832485 ((_ is Concat!29806) (regOne!42434 (regOne!42435 r2!6199)))) b!7833008))

(assert (= (and b!7832485 ((_ is Star!20961) (regOne!42434 (regOne!42435 r2!6199)))) b!7833009))

(assert (= (and b!7832485 ((_ is Union!20961) (regOne!42434 (regOne!42435 r2!6199)))) b!7833010))

(declare-fun b!7833014 () Bool)

(declare-fun e!4632232 () Bool)

(declare-fun tp!2316466 () Bool)

(declare-fun tp!2316467 () Bool)

(assert (=> b!7833014 (= e!4632232 (and tp!2316466 tp!2316467))))

(assert (=> b!7832485 (= tp!2316210 e!4632232)))

(declare-fun b!7833011 () Bool)

(assert (=> b!7833011 (= e!4632232 tp_is_empty!52277)))

(declare-fun b!7833012 () Bool)

(declare-fun tp!2316468 () Bool)

(declare-fun tp!2316465 () Bool)

(assert (=> b!7833012 (= e!4632232 (and tp!2316468 tp!2316465))))

(declare-fun b!7833013 () Bool)

(declare-fun tp!2316469 () Bool)

(assert (=> b!7833013 (= e!4632232 tp!2316469)))

(assert (= (and b!7832485 ((_ is ElementMatch!20961) (regTwo!42434 (regOne!42435 r2!6199)))) b!7833011))

(assert (= (and b!7832485 ((_ is Concat!29806) (regTwo!42434 (regOne!42435 r2!6199)))) b!7833012))

(assert (= (and b!7832485 ((_ is Star!20961) (regTwo!42434 (regOne!42435 r2!6199)))) b!7833013))

(assert (= (and b!7832485 ((_ is Union!20961) (regTwo!42434 (regOne!42435 r2!6199)))) b!7833014))

(declare-fun b!7833018 () Bool)

(declare-fun e!4632233 () Bool)

(declare-fun tp!2316471 () Bool)

(declare-fun tp!2316472 () Bool)

(assert (=> b!7833018 (= e!4632233 (and tp!2316471 tp!2316472))))

(assert (=> b!7832493 (= tp!2316223 e!4632233)))

(declare-fun b!7833015 () Bool)

(assert (=> b!7833015 (= e!4632233 tp_is_empty!52277)))

(declare-fun b!7833016 () Bool)

(declare-fun tp!2316473 () Bool)

(declare-fun tp!2316470 () Bool)

(assert (=> b!7833016 (= e!4632233 (and tp!2316473 tp!2316470))))

(declare-fun b!7833017 () Bool)

(declare-fun tp!2316474 () Bool)

(assert (=> b!7833017 (= e!4632233 tp!2316474)))

(assert (= (and b!7832493 ((_ is ElementMatch!20961) (regOne!42434 (regOne!42434 r2!6199)))) b!7833015))

(assert (= (and b!7832493 ((_ is Concat!29806) (regOne!42434 (regOne!42434 r2!6199)))) b!7833016))

(assert (= (and b!7832493 ((_ is Star!20961) (regOne!42434 (regOne!42434 r2!6199)))) b!7833017))

(assert (= (and b!7832493 ((_ is Union!20961) (regOne!42434 (regOne!42434 r2!6199)))) b!7833018))

(declare-fun b!7833022 () Bool)

(declare-fun e!4632234 () Bool)

(declare-fun tp!2316476 () Bool)

(declare-fun tp!2316477 () Bool)

(assert (=> b!7833022 (= e!4632234 (and tp!2316476 tp!2316477))))

(assert (=> b!7832493 (= tp!2316220 e!4632234)))

(declare-fun b!7833019 () Bool)

(assert (=> b!7833019 (= e!4632234 tp_is_empty!52277)))

(declare-fun b!7833020 () Bool)

(declare-fun tp!2316478 () Bool)

(declare-fun tp!2316475 () Bool)

(assert (=> b!7833020 (= e!4632234 (and tp!2316478 tp!2316475))))

(declare-fun b!7833021 () Bool)

(declare-fun tp!2316479 () Bool)

(assert (=> b!7833021 (= e!4632234 tp!2316479)))

(assert (= (and b!7832493 ((_ is ElementMatch!20961) (regTwo!42434 (regOne!42434 r2!6199)))) b!7833019))

(assert (= (and b!7832493 ((_ is Concat!29806) (regTwo!42434 (regOne!42434 r2!6199)))) b!7833020))

(assert (= (and b!7832493 ((_ is Star!20961) (regTwo!42434 (regOne!42434 r2!6199)))) b!7833021))

(assert (= (and b!7832493 ((_ is Union!20961) (regTwo!42434 (regOne!42434 r2!6199)))) b!7833022))

(declare-fun b!7833026 () Bool)

(declare-fun e!4632235 () Bool)

(declare-fun tp!2316481 () Bool)

(declare-fun tp!2316482 () Bool)

(assert (=> b!7833026 (= e!4632235 (and tp!2316481 tp!2316482))))

(assert (=> b!7832502 (= tp!2316234 e!4632235)))

(declare-fun b!7833023 () Bool)

(assert (=> b!7833023 (= e!4632235 tp_is_empty!52277)))

(declare-fun b!7833024 () Bool)

(declare-fun tp!2316483 () Bool)

(declare-fun tp!2316480 () Bool)

(assert (=> b!7833024 (= e!4632235 (and tp!2316483 tp!2316480))))

(declare-fun b!7833025 () Bool)

(declare-fun tp!2316484 () Bool)

(assert (=> b!7833025 (= e!4632235 tp!2316484)))

(assert (= (and b!7832502 ((_ is ElementMatch!20961) (reg!21290 (reg!21290 r2!6199)))) b!7833023))

(assert (= (and b!7832502 ((_ is Concat!29806) (reg!21290 (reg!21290 r2!6199)))) b!7833024))

(assert (= (and b!7832502 ((_ is Star!20961) (reg!21290 (reg!21290 r2!6199)))) b!7833025))

(assert (= (and b!7832502 ((_ is Union!20961) (reg!21290 (reg!21290 r2!6199)))) b!7833026))

(declare-fun b!7833030 () Bool)

(declare-fun e!4632236 () Bool)

(declare-fun tp!2316486 () Bool)

(declare-fun tp!2316487 () Bool)

(assert (=> b!7833030 (= e!4632236 (and tp!2316486 tp!2316487))))

(assert (=> b!7832479 (= tp!2316201 e!4632236)))

(declare-fun b!7833027 () Bool)

(assert (=> b!7833027 (= e!4632236 tp_is_empty!52277)))

(declare-fun b!7833028 () Bool)

(declare-fun tp!2316488 () Bool)

(declare-fun tp!2316485 () Bool)

(assert (=> b!7833028 (= e!4632236 (and tp!2316488 tp!2316485))))

(declare-fun b!7833029 () Bool)

(declare-fun tp!2316489 () Bool)

(assert (=> b!7833029 (= e!4632236 tp!2316489)))

(assert (= (and b!7832479 ((_ is ElementMatch!20961) (regOne!42435 (regOne!42435 r1!6261)))) b!7833027))

(assert (= (and b!7832479 ((_ is Concat!29806) (regOne!42435 (regOne!42435 r1!6261)))) b!7833028))

(assert (= (and b!7832479 ((_ is Star!20961) (regOne!42435 (regOne!42435 r1!6261)))) b!7833029))

(assert (= (and b!7832479 ((_ is Union!20961) (regOne!42435 (regOne!42435 r1!6261)))) b!7833030))

(declare-fun b!7833034 () Bool)

(declare-fun e!4632237 () Bool)

(declare-fun tp!2316491 () Bool)

(declare-fun tp!2316492 () Bool)

(assert (=> b!7833034 (= e!4632237 (and tp!2316491 tp!2316492))))

(assert (=> b!7832479 (= tp!2316202 e!4632237)))

(declare-fun b!7833031 () Bool)

(assert (=> b!7833031 (= e!4632237 tp_is_empty!52277)))

(declare-fun b!7833032 () Bool)

(declare-fun tp!2316493 () Bool)

(declare-fun tp!2316490 () Bool)

(assert (=> b!7833032 (= e!4632237 (and tp!2316493 tp!2316490))))

(declare-fun b!7833033 () Bool)

(declare-fun tp!2316494 () Bool)

(assert (=> b!7833033 (= e!4632237 tp!2316494)))

(assert (= (and b!7832479 ((_ is ElementMatch!20961) (regTwo!42435 (regOne!42435 r1!6261)))) b!7833031))

(assert (= (and b!7832479 ((_ is Concat!29806) (regTwo!42435 (regOne!42435 r1!6261)))) b!7833032))

(assert (= (and b!7832479 ((_ is Star!20961) (regTwo!42435 (regOne!42435 r1!6261)))) b!7833033))

(assert (= (and b!7832479 ((_ is Union!20961) (regTwo!42435 (regOne!42435 r1!6261)))) b!7833034))

(declare-fun b!7833035 () Bool)

(declare-fun e!4632238 () Bool)

(declare-fun tp!2316495 () Bool)

(assert (=> b!7833035 (= e!4632238 (and tp_is_empty!52277 tp!2316495))))

(assert (=> b!7832504 (= tp!2316235 e!4632238)))

(assert (= (and b!7832504 ((_ is Cons!73674) (t!388533 (t!388533 s!14274)))) b!7833035))

(declare-fun b!7833036 () Bool)

(declare-fun e!4632239 () Bool)

(declare-fun tp!2316496 () Bool)

(assert (=> b!7833036 (= e!4632239 (and tp_is_empty!52277 tp!2316496))))

(assert (=> b!7832472 (= tp!2316196 e!4632239)))

(assert (= (and b!7832472 ((_ is Cons!73674) (t!388533 (t!388533 s2!3721)))) b!7833036))

(check-sat (not b!7832939) (not b!7832591) (not b!7832948) (not b!7832842) (not b!7832740) (not b!7832977) (not b!7833022) (not b!7832980) (not b!7832859) (not bm!726340) (not b!7832814) (not b!7832633) (not b!7832907) (not b!7832835) (not b!7832742) (not d!2351140) (not b!7833010) (not b!7832860) (not b!7832976) (not d!2351148) (not b!7832581) (not b!7832885) (not b!7832951) (not b!7832984) (not b!7832905) (not b!7832861) (not b!7832952) (not b!7832627) (not b!7832940) (not b!7832817) (not b!7832596) (not b!7832819) (not b!7832623) (not b!7832802) (not b!7832621) (not b!7832847) (not d!2351098) (not b!7832756) (not b!7833008) (not b!7832979) (not b!7832746) (not d!2351154) (not b!7832631) (not d!2351062) (not bm!726348) (not b!7832773) (not b!7832897) (not bm!726382) (not b!7832888) (not b!7832778) (not b!7832987) (not b!7832788) (not d!2351124) (not b!7832988) (not d!2351072) (not b!7832635) (not b!7832925) (not b!7832899) (not bm!726363) (not b!7832838) (not d!2351066) (not b!7832936) (not b!7832971) (not b!7832517) (not b!7832993) (not b!7832760) (not b!7832659) (not b!7832964) (not bm!726380) (not b!7832717) (not b!7832800) (not b!7832875) (not bm!726347) (not b!7833017) (not b!7832864) (not bm!726344) (not b!7832851) (not b!7832535) (not b!7832781) (not b!7832823) (not b!7832935) (not b!7832542) (not d!2351120) (not b!7832812) (not b!7832613) (not b!7832881) (not b!7832947) (not b!7833014) (not b!7832786) (not b!7832595) (not b!7832991) (not b!7832754) (not b!7832873) (not b!7832879) (not b!7832956) (not b!7832586) (not b!7832830) (not b!7832571) (not bm!726352) (not bm!726330) (not b!7832997) (not b!7832815) (not b!7832825) (not b!7832655) (not b!7832945) (not b!7832908) (not b!7832871) (not b!7832697) (not b!7832883) (not d!2351126) (not b!7832892) (not b!7832874) (not b!7832967) (not b!7832525) (not b!7833029) (not b!7832955) (not b!7832719) (not b!7832829) (not b!7832790) (not b!7832670) (not b!7832593) (not b!7832863) (not b!7832705) (not b!7832965) (not b!7832650) (not b!7833018) (not b!7832924) (not b!7832539) (not b!7832865) (not b!7832957) (not b!7832983) (not b!7832527) (not d!2351146) (not d!2351100) (not b!7832941) (not b!7832776) (not b!7832870) (not b!7832529) (not bm!726349) (not b!7832738) (not b!7832884) (not b!7832841) (not d!2351144) (not b!7832821) (not b!7833034) (not b!7832880) (not b!7832710) (not b!7832730) (not b!7832972) (not d!2351064) (not b!7833021) (not b!7832831) (not b!7832996) (not b!7832588) (not d!2351104) (not b!7833012) (not b!7832805) (not b!7832856) (not d!2351116) (not b!7832804) (not b!7832660) (not b!7832533) (not b!7832995) (not b!7832663) (not b!7833024) (not b!7832869) (not b!7833016) (not b!7832904) (not b!7832973) (not b!7832537) (not b!7832944) (not bm!726374) (not bm!726358) (not b!7832715) (not b!7832711) (not b!7832782) (not b!7832594) (not b!7832519) (not b!7832929) (not b!7832547) (not b!7832891) (not b!7832850) (not b!7832960) (not b!7832896) (not bm!726339) (not b!7832893) (not bm!726355) (not b!7832772) (not b!7832953) (not b!7832903) (not b!7832645) (not d!2351102) (not bm!726346) (not b!7832582) (not b!7832837) (not b!7832806) (not b!7832992) (not b!7832949) (not b!7833028) (not b!7832857) (not b!7832989) (not b!7832744) (not b!7832969) (not b!7833032) (not b!7833035) (not b!7832515) (not b!7833025) (not b!7833020) (not bm!726368) (not b!7832531) (not b!7832833) (not b!7832889) (not b!7832759) (not d!2351110) (not d!2351070) (not bm!726381) (not b!7833026) (not d!2351032) (not b!7833036) (not b!7832846) (not b!7832827) (not bm!726372) (not b!7832937) (not b!7832849) (not bm!726353) (not b!7832822) (not b!7832932) (not bm!726369) (not b!7832749) (not b!7832855) (not b!7832968) (not b!7832895) (not b!7833033) (not b!7832657) (not bm!726375) (not d!2351068) (not b!7832959) (not b!7832707) (not b!7832750) (not b!7832985) (not b!7832900) (not b!7832887) (not b!7832826) (not b!7832943) (not b!7832834) (not b!7832839) (not b!7833030) (not b!7832928) (not bm!726360) (not b!7833013) (not b!7832931) (not b!7832981) (not b!7832585) (not b!7832549) tp_is_empty!52277 (not b!7832909) (not b!7832927) (not b!7832845) (not b!7832651) (not b!7832758) (not b!7832843) (not b!7832961) (not b!7832626) (not b!7832647) (not b!7832801) (not b!7832975) (not b!7832901) (not b!7832933) (not b!7832963) (not b!7832543) (not d!2351076) (not b!7833009) (not b!7832664) (not b!7832818) (not b!7832813))
(check-sat)
