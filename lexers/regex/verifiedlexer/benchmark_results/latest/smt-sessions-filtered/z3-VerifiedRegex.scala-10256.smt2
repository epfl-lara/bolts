; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534150 () Bool)

(assert start!534150)

(declare-fun b!5049949 () Bool)

(declare-fun res!2150736 () Bool)

(declare-fun e!3152967 () Bool)

(assert (=> b!5049949 (=> (not res!2150736) (not e!3152967))))

(declare-datatypes ((T!104698 0))(
  ( (T!104699 (val!23588 Int)) )
))
(declare-datatypes ((List!58498 0))(
  ( (Nil!58374) (Cons!58374 (h!64822 T!104698) (t!371137 List!58498)) )
))
(declare-fun l!2779 () List!58498)

(declare-fun i!705 () Int)

(declare-fun take!879 (List!58498 Int) List!58498)

(assert (=> b!5049949 (= res!2150736 (= (take!879 l!2779 i!705) Nil!58374))))

(declare-fun b!5049950 () Bool)

(declare-fun res!2150739 () Bool)

(assert (=> b!5049950 (=> (not res!2150739) (not e!3152967))))

(get-info :version)

(assert (=> b!5049950 (= res!2150739 (and (not ((_ is Nil!58374) l!2779)) (= i!705 0)))))

(declare-fun b!5049951 () Bool)

(declare-fun slice!901 (List!58498 Int Int) List!58498)

(assert (=> b!5049951 (= e!3152967 (not (= (slice!901 l!2779 0 i!705) Nil!58374)))))

(declare-fun b!5049952 () Bool)

(declare-fun res!2150738 () Bool)

(assert (=> b!5049952 (=> (not res!2150738) (not e!3152967))))

(declare-fun size!38997 (List!58498) Int)

(assert (=> b!5049952 (= res!2150738 (<= i!705 (size!38997 l!2779)))))

(declare-fun b!5049953 () Bool)

(declare-fun e!3152968 () Bool)

(declare-fun tp_is_empty!36931 () Bool)

(declare-fun tp!1412139 () Bool)

(assert (=> b!5049953 (= e!3152968 (and tp_is_empty!36931 tp!1412139))))

(declare-fun res!2150737 () Bool)

(assert (=> start!534150 (=> (not res!2150737) (not e!3152967))))

(assert (=> start!534150 (= res!2150737 (<= 0 i!705))))

(assert (=> start!534150 e!3152967))

(assert (=> start!534150 true))

(assert (=> start!534150 e!3152968))

(assert (= (and start!534150 res!2150737) b!5049952))

(assert (= (and b!5049952 res!2150738) b!5049950))

(assert (= (and b!5049950 res!2150739) b!5049949))

(assert (= (and b!5049949 res!2150736) b!5049951))

(assert (= (and start!534150 ((_ is Cons!58374) l!2779)) b!5049953))

(declare-fun m!6084460 () Bool)

(assert (=> b!5049949 m!6084460))

(declare-fun m!6084462 () Bool)

(assert (=> b!5049951 m!6084462))

(declare-fun m!6084464 () Bool)

(assert (=> b!5049952 m!6084464))

(check-sat (not b!5049949) tp_is_empty!36931 (not b!5049951) (not b!5049952) (not b!5049953))
(check-sat)
(get-model)

(declare-fun d!1624891 () Bool)

(declare-fun drop!2679 (List!58498 Int) List!58498)

(assert (=> d!1624891 (= (slice!901 l!2779 0 i!705) (take!879 (drop!2679 l!2779 0) (- i!705 0)))))

(declare-fun bs!1189242 () Bool)

(assert (= bs!1189242 d!1624891))

(declare-fun m!6084466 () Bool)

(assert (=> bs!1189242 m!6084466))

(assert (=> bs!1189242 m!6084466))

(declare-fun m!6084468 () Bool)

(assert (=> bs!1189242 m!6084468))

(assert (=> b!5049951 d!1624891))

(declare-fun d!1624893 () Bool)

(declare-fun lt!2086455 () Int)

(assert (=> d!1624893 (>= lt!2086455 0)))

(declare-fun e!3152974 () Int)

(assert (=> d!1624893 (= lt!2086455 e!3152974)))

(declare-fun c!866097 () Bool)

(assert (=> d!1624893 (= c!866097 ((_ is Nil!58374) l!2779))))

(assert (=> d!1624893 (= (size!38997 l!2779) lt!2086455)))

(declare-fun b!5049964 () Bool)

(assert (=> b!5049964 (= e!3152974 0)))

(declare-fun b!5049965 () Bool)

(assert (=> b!5049965 (= e!3152974 (+ 1 (size!38997 (t!371137 l!2779))))))

(assert (= (and d!1624893 c!866097) b!5049964))

(assert (= (and d!1624893 (not c!866097)) b!5049965))

(declare-fun m!6084472 () Bool)

(assert (=> b!5049965 m!6084472))

(assert (=> b!5049952 d!1624893))

(declare-fun b!5050005 () Bool)

(declare-fun e!3152998 () List!58498)

(assert (=> b!5050005 (= e!3152998 Nil!58374)))

(declare-fun b!5050006 () Bool)

(declare-fun e!3152997 () Int)

(assert (=> b!5050006 (= e!3152997 i!705)))

(declare-fun b!5050007 () Bool)

(declare-fun e!3153000 () Int)

(assert (=> b!5050007 (= e!3153000 0)))

(declare-fun b!5050008 () Bool)

(declare-fun e!3152999 () Bool)

(declare-fun lt!2086461 () List!58498)

(assert (=> b!5050008 (= e!3152999 (= (size!38997 lt!2086461) e!3153000))))

(declare-fun c!866113 () Bool)

(assert (=> b!5050008 (= c!866113 (<= i!705 0))))

(declare-fun b!5050009 () Bool)

(assert (=> b!5050009 (= e!3153000 e!3152997)))

(declare-fun c!866114 () Bool)

(assert (=> b!5050009 (= c!866114 (>= i!705 (size!38997 l!2779)))))

(declare-fun d!1624897 () Bool)

(assert (=> d!1624897 e!3152999))

(declare-fun res!2150745 () Bool)

(assert (=> d!1624897 (=> (not res!2150745) (not e!3152999))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10388 (List!58498) (InoxSet T!104698))

(assert (=> d!1624897 (= res!2150745 (= ((_ map implies) (content!10388 lt!2086461) (content!10388 l!2779)) ((as const (InoxSet T!104698)) true)))))

(assert (=> d!1624897 (= lt!2086461 e!3152998)))

(declare-fun c!866115 () Bool)

(assert (=> d!1624897 (= c!866115 (or ((_ is Nil!58374) l!2779) (<= i!705 0)))))

(assert (=> d!1624897 (= (take!879 l!2779 i!705) lt!2086461)))

(declare-fun b!5050010 () Bool)

(assert (=> b!5050010 (= e!3152998 (Cons!58374 (h!64822 l!2779) (take!879 (t!371137 l!2779) (- i!705 1))))))

(declare-fun b!5050011 () Bool)

(assert (=> b!5050011 (= e!3152997 (size!38997 l!2779))))

(assert (= (and d!1624897 c!866115) b!5050005))

(assert (= (and d!1624897 (not c!866115)) b!5050010))

(assert (= (and d!1624897 res!2150745) b!5050008))

(assert (= (and b!5050008 c!866113) b!5050007))

(assert (= (and b!5050008 (not c!866113)) b!5050009))

(assert (= (and b!5050009 c!866114) b!5050011))

(assert (= (and b!5050009 (not c!866114)) b!5050006))

(declare-fun m!6084486 () Bool)

(assert (=> d!1624897 m!6084486))

(declare-fun m!6084488 () Bool)

(assert (=> d!1624897 m!6084488))

(assert (=> b!5050009 m!6084464))

(assert (=> b!5050011 m!6084464))

(declare-fun m!6084490 () Bool)

(assert (=> b!5050010 m!6084490))

(declare-fun m!6084492 () Bool)

(assert (=> b!5050008 m!6084492))

(assert (=> b!5049949 d!1624897))

(declare-fun b!5050017 () Bool)

(declare-fun e!3153004 () Bool)

(declare-fun tp!1412145 () Bool)

(assert (=> b!5050017 (= e!3153004 (and tp_is_empty!36931 tp!1412145))))

(assert (=> b!5049953 (= tp!1412139 e!3153004)))

(assert (= (and b!5049953 ((_ is Cons!58374) (t!371137 l!2779))) b!5050017))

(check-sat (not b!5050011) (not b!5050010) (not d!1624891) (not b!5050017) (not b!5050009) (not b!5049965) (not b!5050008) tp_is_empty!36931 (not d!1624897))
(check-sat)
(get-model)

(assert (=> b!5050009 d!1624893))

(declare-fun d!1624901 () Bool)

(declare-fun c!866118 () Bool)

(assert (=> d!1624901 (= c!866118 ((_ is Nil!58374) lt!2086461))))

(declare-fun e!3153007 () (InoxSet T!104698))

(assert (=> d!1624901 (= (content!10388 lt!2086461) e!3153007)))

(declare-fun b!5050022 () Bool)

(assert (=> b!5050022 (= e!3153007 ((as const (Array T!104698 Bool)) false))))

(declare-fun b!5050023 () Bool)

(assert (=> b!5050023 (= e!3153007 ((_ map or) (store ((as const (Array T!104698 Bool)) false) (h!64822 lt!2086461) true) (content!10388 (t!371137 lt!2086461))))))

(assert (= (and d!1624901 c!866118) b!5050022))

(assert (= (and d!1624901 (not c!866118)) b!5050023))

(declare-fun m!6084494 () Bool)

(assert (=> b!5050023 m!6084494))

(declare-fun m!6084496 () Bool)

(assert (=> b!5050023 m!6084496))

(assert (=> d!1624897 d!1624901))

(declare-fun d!1624903 () Bool)

(declare-fun c!866119 () Bool)

(assert (=> d!1624903 (= c!866119 ((_ is Nil!58374) l!2779))))

(declare-fun e!3153008 () (InoxSet T!104698))

(assert (=> d!1624903 (= (content!10388 l!2779) e!3153008)))

(declare-fun b!5050024 () Bool)

(assert (=> b!5050024 (= e!3153008 ((as const (Array T!104698 Bool)) false))))

(declare-fun b!5050025 () Bool)

(assert (=> b!5050025 (= e!3153008 ((_ map or) (store ((as const (Array T!104698 Bool)) false) (h!64822 l!2779) true) (content!10388 (t!371137 l!2779))))))

(assert (= (and d!1624903 c!866119) b!5050024))

(assert (= (and d!1624903 (not c!866119)) b!5050025))

(declare-fun m!6084498 () Bool)

(assert (=> b!5050025 m!6084498))

(declare-fun m!6084500 () Bool)

(assert (=> b!5050025 m!6084500))

(assert (=> d!1624897 d!1624903))

(declare-fun b!5050026 () Bool)

(declare-fun e!3153010 () List!58498)

(assert (=> b!5050026 (= e!3153010 Nil!58374)))

(declare-fun b!5050027 () Bool)

(declare-fun e!3153009 () Int)

(assert (=> b!5050027 (= e!3153009 (- i!705 1))))

(declare-fun b!5050028 () Bool)

(declare-fun e!3153012 () Int)

(assert (=> b!5050028 (= e!3153012 0)))

(declare-fun b!5050029 () Bool)

(declare-fun e!3153011 () Bool)

(declare-fun lt!2086462 () List!58498)

(assert (=> b!5050029 (= e!3153011 (= (size!38997 lt!2086462) e!3153012))))

(declare-fun c!866120 () Bool)

(assert (=> b!5050029 (= c!866120 (<= (- i!705 1) 0))))

(declare-fun b!5050030 () Bool)

(assert (=> b!5050030 (= e!3153012 e!3153009)))

(declare-fun c!866121 () Bool)

(assert (=> b!5050030 (= c!866121 (>= (- i!705 1) (size!38997 (t!371137 l!2779))))))

(declare-fun d!1624905 () Bool)

(assert (=> d!1624905 e!3153011))

(declare-fun res!2150746 () Bool)

(assert (=> d!1624905 (=> (not res!2150746) (not e!3153011))))

(assert (=> d!1624905 (= res!2150746 (= ((_ map implies) (content!10388 lt!2086462) (content!10388 (t!371137 l!2779))) ((as const (InoxSet T!104698)) true)))))

(assert (=> d!1624905 (= lt!2086462 e!3153010)))

(declare-fun c!866122 () Bool)

(assert (=> d!1624905 (= c!866122 (or ((_ is Nil!58374) (t!371137 l!2779)) (<= (- i!705 1) 0)))))

(assert (=> d!1624905 (= (take!879 (t!371137 l!2779) (- i!705 1)) lt!2086462)))

(declare-fun b!5050031 () Bool)

(assert (=> b!5050031 (= e!3153010 (Cons!58374 (h!64822 (t!371137 l!2779)) (take!879 (t!371137 (t!371137 l!2779)) (- (- i!705 1) 1))))))

(declare-fun b!5050032 () Bool)

(assert (=> b!5050032 (= e!3153009 (size!38997 (t!371137 l!2779)))))

(assert (= (and d!1624905 c!866122) b!5050026))

(assert (= (and d!1624905 (not c!866122)) b!5050031))

(assert (= (and d!1624905 res!2150746) b!5050029))

(assert (= (and b!5050029 c!866120) b!5050028))

(assert (= (and b!5050029 (not c!866120)) b!5050030))

(assert (= (and b!5050030 c!866121) b!5050032))

(assert (= (and b!5050030 (not c!866121)) b!5050027))

(declare-fun m!6084502 () Bool)

(assert (=> d!1624905 m!6084502))

(assert (=> d!1624905 m!6084500))

(assert (=> b!5050030 m!6084472))

(assert (=> b!5050032 m!6084472))

(declare-fun m!6084504 () Bool)

(assert (=> b!5050031 m!6084504))

(declare-fun m!6084506 () Bool)

(assert (=> b!5050029 m!6084506))

(assert (=> b!5050010 d!1624905))

(declare-fun d!1624907 () Bool)

(declare-fun lt!2086463 () Int)

(assert (=> d!1624907 (>= lt!2086463 0)))

(declare-fun e!3153013 () Int)

(assert (=> d!1624907 (= lt!2086463 e!3153013)))

(declare-fun c!866123 () Bool)

(assert (=> d!1624907 (= c!866123 ((_ is Nil!58374) (t!371137 l!2779)))))

(assert (=> d!1624907 (= (size!38997 (t!371137 l!2779)) lt!2086463)))

(declare-fun b!5050033 () Bool)

(assert (=> b!5050033 (= e!3153013 0)))

(declare-fun b!5050034 () Bool)

(assert (=> b!5050034 (= e!3153013 (+ 1 (size!38997 (t!371137 (t!371137 l!2779)))))))

(assert (= (and d!1624907 c!866123) b!5050033))

(assert (= (and d!1624907 (not c!866123)) b!5050034))

(declare-fun m!6084508 () Bool)

(assert (=> b!5050034 m!6084508))

(assert (=> b!5049965 d!1624907))

(assert (=> b!5050011 d!1624893))

(declare-fun b!5050035 () Bool)

(declare-fun e!3153015 () List!58498)

(assert (=> b!5050035 (= e!3153015 Nil!58374)))

(declare-fun b!5050036 () Bool)

(declare-fun e!3153014 () Int)

(assert (=> b!5050036 (= e!3153014 (- i!705 0))))

(declare-fun b!5050037 () Bool)

(declare-fun e!3153017 () Int)

(assert (=> b!5050037 (= e!3153017 0)))

(declare-fun b!5050038 () Bool)

(declare-fun e!3153016 () Bool)

(declare-fun lt!2086464 () List!58498)

(assert (=> b!5050038 (= e!3153016 (= (size!38997 lt!2086464) e!3153017))))

(declare-fun c!866124 () Bool)

(assert (=> b!5050038 (= c!866124 (<= (- i!705 0) 0))))

(declare-fun b!5050039 () Bool)

(assert (=> b!5050039 (= e!3153017 e!3153014)))

(declare-fun c!866125 () Bool)

(assert (=> b!5050039 (= c!866125 (>= (- i!705 0) (size!38997 (drop!2679 l!2779 0))))))

(declare-fun d!1624909 () Bool)

(assert (=> d!1624909 e!3153016))

(declare-fun res!2150747 () Bool)

(assert (=> d!1624909 (=> (not res!2150747) (not e!3153016))))

(assert (=> d!1624909 (= res!2150747 (= ((_ map implies) (content!10388 lt!2086464) (content!10388 (drop!2679 l!2779 0))) ((as const (InoxSet T!104698)) true)))))

(assert (=> d!1624909 (= lt!2086464 e!3153015)))

(declare-fun c!866126 () Bool)

(assert (=> d!1624909 (= c!866126 (or ((_ is Nil!58374) (drop!2679 l!2779 0)) (<= (- i!705 0) 0)))))

(assert (=> d!1624909 (= (take!879 (drop!2679 l!2779 0) (- i!705 0)) lt!2086464)))

(declare-fun b!5050040 () Bool)

(assert (=> b!5050040 (= e!3153015 (Cons!58374 (h!64822 (drop!2679 l!2779 0)) (take!879 (t!371137 (drop!2679 l!2779 0)) (- (- i!705 0) 1))))))

(declare-fun b!5050041 () Bool)

(assert (=> b!5050041 (= e!3153014 (size!38997 (drop!2679 l!2779 0)))))

(assert (= (and d!1624909 c!866126) b!5050035))

(assert (= (and d!1624909 (not c!866126)) b!5050040))

(assert (= (and d!1624909 res!2150747) b!5050038))

(assert (= (and b!5050038 c!866124) b!5050037))

(assert (= (and b!5050038 (not c!866124)) b!5050039))

(assert (= (and b!5050039 c!866125) b!5050041))

(assert (= (and b!5050039 (not c!866125)) b!5050036))

(declare-fun m!6084510 () Bool)

(assert (=> d!1624909 m!6084510))

(assert (=> d!1624909 m!6084466))

(declare-fun m!6084512 () Bool)

(assert (=> d!1624909 m!6084512))

(assert (=> b!5050039 m!6084466))

(declare-fun m!6084514 () Bool)

(assert (=> b!5050039 m!6084514))

(assert (=> b!5050041 m!6084466))

(assert (=> b!5050041 m!6084514))

(declare-fun m!6084516 () Bool)

(assert (=> b!5050040 m!6084516))

(declare-fun m!6084518 () Bool)

(assert (=> b!5050038 m!6084518))

(assert (=> d!1624891 d!1624909))

(declare-fun b!5050076 () Bool)

(declare-fun e!3153041 () Int)

(declare-fun call!351936 () Int)

(assert (=> b!5050076 (= e!3153041 call!351936)))

(declare-fun bm!351931 () Bool)

(assert (=> bm!351931 (= call!351936 (size!38997 l!2779))))

(declare-fun d!1624911 () Bool)

(declare-fun e!3153037 () Bool)

(assert (=> d!1624911 e!3153037))

(declare-fun res!2150752 () Bool)

(assert (=> d!1624911 (=> (not res!2150752) (not e!3153037))))

(declare-fun lt!2086470 () List!58498)

(assert (=> d!1624911 (= res!2150752 (= ((_ map implies) (content!10388 lt!2086470) (content!10388 l!2779)) ((as const (InoxSet T!104698)) true)))))

(declare-fun e!3153039 () List!58498)

(assert (=> d!1624911 (= lt!2086470 e!3153039)))

(declare-fun c!866142 () Bool)

(assert (=> d!1624911 (= c!866142 ((_ is Nil!58374) l!2779))))

(assert (=> d!1624911 (= (drop!2679 l!2779 0) lt!2086470)))

(declare-fun b!5050077 () Bool)

(declare-fun e!3153040 () List!58498)

(assert (=> b!5050077 (= e!3153040 l!2779)))

(declare-fun b!5050078 () Bool)

(assert (=> b!5050078 (= e!3153037 (= (size!38997 lt!2086470) e!3153041))))

(declare-fun c!866144 () Bool)

(assert (=> b!5050078 (= c!866144 (<= 0 0))))

(declare-fun b!5050079 () Bool)

(assert (=> b!5050079 (= e!3153040 (drop!2679 (t!371137 l!2779) (- 0 1)))))

(declare-fun b!5050080 () Bool)

(assert (=> b!5050080 (= e!3153039 e!3153040)))

(declare-fun c!866145 () Bool)

(assert (=> b!5050080 (= c!866145 (<= 0 0))))

(declare-fun b!5050081 () Bool)

(declare-fun e!3153038 () Int)

(assert (=> b!5050081 (= e!3153038 0)))

(declare-fun b!5050082 () Bool)

(assert (=> b!5050082 (= e!3153038 (- call!351936 0))))

(declare-fun b!5050083 () Bool)

(assert (=> b!5050083 (= e!3153039 Nil!58374)))

(declare-fun b!5050084 () Bool)

(assert (=> b!5050084 (= e!3153041 e!3153038)))

(declare-fun c!866143 () Bool)

(assert (=> b!5050084 (= c!866143 (>= 0 call!351936))))

(assert (= (and d!1624911 c!866142) b!5050083))

(assert (= (and d!1624911 (not c!866142)) b!5050080))

(assert (= (and b!5050080 c!866145) b!5050077))

(assert (= (and b!5050080 (not c!866145)) b!5050079))

(assert (= (and d!1624911 res!2150752) b!5050078))

(assert (= (and b!5050078 c!866144) b!5050076))

(assert (= (and b!5050078 (not c!866144)) b!5050084))

(assert (= (and b!5050084 c!866143) b!5050081))

(assert (= (and b!5050084 (not c!866143)) b!5050082))

(assert (= (or b!5050076 b!5050084 b!5050082) bm!351931))

(assert (=> bm!351931 m!6084464))

(declare-fun m!6084540 () Bool)

(assert (=> d!1624911 m!6084540))

(assert (=> d!1624911 m!6084488))

(declare-fun m!6084542 () Bool)

(assert (=> b!5050078 m!6084542))

(declare-fun m!6084544 () Bool)

(assert (=> b!5050079 m!6084544))

(assert (=> d!1624891 d!1624911))

(declare-fun d!1624921 () Bool)

(declare-fun lt!2086471 () Int)

(assert (=> d!1624921 (>= lt!2086471 0)))

(declare-fun e!3153042 () Int)

(assert (=> d!1624921 (= lt!2086471 e!3153042)))

(declare-fun c!866146 () Bool)

(assert (=> d!1624921 (= c!866146 ((_ is Nil!58374) lt!2086461))))

(assert (=> d!1624921 (= (size!38997 lt!2086461) lt!2086471)))

(declare-fun b!5050085 () Bool)

(assert (=> b!5050085 (= e!3153042 0)))

(declare-fun b!5050086 () Bool)

(assert (=> b!5050086 (= e!3153042 (+ 1 (size!38997 (t!371137 lt!2086461))))))

(assert (= (and d!1624921 c!866146) b!5050085))

(assert (= (and d!1624921 (not c!866146)) b!5050086))

(declare-fun m!6084546 () Bool)

(assert (=> b!5050086 m!6084546))

(assert (=> b!5050008 d!1624921))

(declare-fun b!5050087 () Bool)

(declare-fun e!3153043 () Bool)

(declare-fun tp!1412146 () Bool)

(assert (=> b!5050087 (= e!3153043 (and tp_is_empty!36931 tp!1412146))))

(assert (=> b!5050017 (= tp!1412145 e!3153043)))

(assert (= (and b!5050017 ((_ is Cons!58374) (t!371137 (t!371137 l!2779)))) b!5050087))

(check-sat (not b!5050032) (not b!5050038) (not d!1624911) (not b!5050025) (not bm!351931) (not d!1624909) (not b!5050029) (not b!5050040) (not b!5050086) (not b!5050031) (not b!5050041) (not b!5050030) (not b!5050079) (not b!5050023) (not b!5050039) tp_is_empty!36931 (not b!5050078) (not d!1624905) (not b!5050034) (not b!5050087))
(check-sat)
