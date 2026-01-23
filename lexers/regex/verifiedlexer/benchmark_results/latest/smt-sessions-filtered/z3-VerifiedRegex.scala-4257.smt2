; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229570 () Bool)

(assert start!229570)

(declare-fun res!993485 () Bool)

(declare-fun e!1490299 () Bool)

(assert (=> start!229570 (=> (not res!993485) (not e!1490299))))

(declare-fun i!741 () Int)

(assert (=> start!229570 (= res!993485 (<= 0 i!741))))

(assert (=> start!229570 e!1490299))

(assert (=> start!229570 true))

(declare-fun e!1490298 () Bool)

(assert (=> start!229570 e!1490298))

(declare-fun b!2325930 () Bool)

(declare-datatypes ((T!44076 0))(
  ( (T!44077 (val!8004 Int)) )
))
(declare-datatypes ((List!27790 0))(
  ( (Nil!27692) (Cons!27692 (h!33093 T!44076) (t!207492 List!27790)) )
))
(declare-fun l!2797 () List!27790)

(declare-fun isEmpty!15810 (List!27790) Bool)

(declare-fun slice!727 (List!27790 Int Int) List!27790)

(assert (=> b!2325930 (= e!1490299 (not (isEmpty!15810 (slice!727 l!2797 0 i!741))))))

(declare-fun b!2325929 () Bool)

(declare-fun res!993484 () Bool)

(assert (=> b!2325929 (=> (not res!993484) (not e!1490299))))

(get-info :version)

(assert (=> b!2325929 (= res!993484 (and (not ((_ is Nil!27692) l!2797)) (= i!741 0)))))

(declare-fun b!2325931 () Bool)

(declare-fun tp_is_empty!10873 () Bool)

(declare-fun tp!737147 () Bool)

(assert (=> b!2325931 (= e!1490298 (and tp_is_empty!10873 tp!737147))))

(declare-fun b!2325928 () Bool)

(declare-fun res!993486 () Bool)

(assert (=> b!2325928 (=> (not res!993486) (not e!1490299))))

(declare-fun size!21968 (List!27790) Int)

(assert (=> b!2325928 (= res!993486 (<= i!741 (size!21968 l!2797)))))

(assert (= (and start!229570 res!993485) b!2325928))

(assert (= (and b!2325928 res!993486) b!2325929))

(assert (= (and b!2325929 res!993484) b!2325930))

(assert (= (and start!229570 ((_ is Cons!27692) l!2797)) b!2325931))

(declare-fun m!2757133 () Bool)

(assert (=> b!2325930 m!2757133))

(assert (=> b!2325930 m!2757133))

(declare-fun m!2757135 () Bool)

(assert (=> b!2325930 m!2757135))

(declare-fun m!2757137 () Bool)

(assert (=> b!2325928 m!2757137))

(check-sat (not b!2325928) (not b!2325930) (not b!2325931) tp_is_empty!10873)
(check-sat)
(get-model)

(declare-fun d!688744 () Bool)

(declare-fun lt!861568 () Int)

(assert (=> d!688744 (>= lt!861568 0)))

(declare-fun e!1490302 () Int)

(assert (=> d!688744 (= lt!861568 e!1490302)))

(declare-fun c!369270 () Bool)

(assert (=> d!688744 (= c!369270 ((_ is Nil!27692) l!2797))))

(assert (=> d!688744 (= (size!21968 l!2797) lt!861568)))

(declare-fun b!2325936 () Bool)

(assert (=> b!2325936 (= e!1490302 0)))

(declare-fun b!2325937 () Bool)

(assert (=> b!2325937 (= e!1490302 (+ 1 (size!21968 (t!207492 l!2797))))))

(assert (= (and d!688744 c!369270) b!2325936))

(assert (= (and d!688744 (not c!369270)) b!2325937))

(declare-fun m!2757143 () Bool)

(assert (=> b!2325937 m!2757143))

(assert (=> b!2325928 d!688744))

(declare-fun d!688750 () Bool)

(assert (=> d!688750 (= (isEmpty!15810 (slice!727 l!2797 0 i!741)) ((_ is Nil!27692) (slice!727 l!2797 0 i!741)))))

(assert (=> b!2325930 d!688750))

(declare-fun d!688752 () Bool)

(declare-fun take!493 (List!27790 Int) List!27790)

(declare-fun drop!1514 (List!27790 Int) List!27790)

(assert (=> d!688752 (= (slice!727 l!2797 0 i!741) (take!493 (drop!1514 l!2797 0) (- i!741 0)))))

(declare-fun bs!459271 () Bool)

(assert (= bs!459271 d!688752))

(declare-fun m!2757147 () Bool)

(assert (=> bs!459271 m!2757147))

(assert (=> bs!459271 m!2757147))

(declare-fun m!2757149 () Bool)

(assert (=> bs!459271 m!2757149))

(assert (=> b!2325930 d!688752))

(declare-fun b!2325953 () Bool)

(declare-fun e!1490311 () Bool)

(declare-fun tp!737153 () Bool)

(assert (=> b!2325953 (= e!1490311 (and tp_is_empty!10873 tp!737153))))

(assert (=> b!2325931 (= tp!737147 e!1490311)))

(assert (= (and b!2325931 ((_ is Cons!27692) (t!207492 l!2797))) b!2325953))

(check-sat (not b!2325937) (not d!688752) (not b!2325953) tp_is_empty!10873)
(check-sat)
(get-model)

(declare-fun d!688754 () Bool)

(declare-fun lt!861572 () Int)

(assert (=> d!688754 (>= lt!861572 0)))

(declare-fun e!1490312 () Int)

(assert (=> d!688754 (= lt!861572 e!1490312)))

(declare-fun c!369274 () Bool)

(assert (=> d!688754 (= c!369274 ((_ is Nil!27692) (t!207492 l!2797)))))

(assert (=> d!688754 (= (size!21968 (t!207492 l!2797)) lt!861572)))

(declare-fun b!2325954 () Bool)

(assert (=> b!2325954 (= e!1490312 0)))

(declare-fun b!2325955 () Bool)

(assert (=> b!2325955 (= e!1490312 (+ 1 (size!21968 (t!207492 (t!207492 l!2797)))))))

(assert (= (and d!688754 c!369274) b!2325954))

(assert (= (and d!688754 (not c!369274)) b!2325955))

(declare-fun m!2757151 () Bool)

(assert (=> b!2325955 m!2757151))

(assert (=> b!2325937 d!688754))

(declare-fun b!2325982 () Bool)

(declare-fun e!1490329 () List!27790)

(assert (=> b!2325982 (= e!1490329 (Cons!27692 (h!33093 (drop!1514 l!2797 0)) (take!493 (t!207492 (drop!1514 l!2797 0)) (- (- i!741 0) 1))))))

(declare-fun b!2325983 () Bool)

(declare-fun e!1490330 () Bool)

(declare-fun lt!861578 () List!27790)

(declare-fun e!1490327 () Int)

(assert (=> b!2325983 (= e!1490330 (= (size!21968 lt!861578) e!1490327))))

(declare-fun c!369288 () Bool)

(assert (=> b!2325983 (= c!369288 (<= (- i!741 0) 0))))

(declare-fun b!2325984 () Bool)

(assert (=> b!2325984 (= e!1490327 0)))

(declare-fun d!688756 () Bool)

(assert (=> d!688756 e!1490330))

(declare-fun res!993491 () Bool)

(assert (=> d!688756 (=> (not res!993491) (not e!1490330))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3751 (List!27790) (InoxSet T!44076))

(assert (=> d!688756 (= res!993491 (= ((_ map implies) (content!3751 lt!861578) (content!3751 (drop!1514 l!2797 0))) ((as const (InoxSet T!44076)) true)))))

(assert (=> d!688756 (= lt!861578 e!1490329)))

(declare-fun c!369286 () Bool)

(assert (=> d!688756 (= c!369286 (or ((_ is Nil!27692) (drop!1514 l!2797 0)) (<= (- i!741 0) 0)))))

(assert (=> d!688756 (= (take!493 (drop!1514 l!2797 0) (- i!741 0)) lt!861578)))

(declare-fun b!2325985 () Bool)

(declare-fun e!1490331 () Int)

(assert (=> b!2325985 (= e!1490331 (size!21968 (drop!1514 l!2797 0)))))

(declare-fun b!2325986 () Bool)

(assert (=> b!2325986 (= e!1490329 Nil!27692)))

(declare-fun b!2325987 () Bool)

(assert (=> b!2325987 (= e!1490331 (- i!741 0))))

(declare-fun b!2325988 () Bool)

(assert (=> b!2325988 (= e!1490327 e!1490331)))

(declare-fun c!369285 () Bool)

(assert (=> b!2325988 (= c!369285 (>= (- i!741 0) (size!21968 (drop!1514 l!2797 0))))))

(assert (= (and d!688756 c!369286) b!2325986))

(assert (= (and d!688756 (not c!369286)) b!2325982))

(assert (= (and d!688756 res!993491) b!2325983))

(assert (= (and b!2325983 c!369288) b!2325984))

(assert (= (and b!2325983 (not c!369288)) b!2325988))

(assert (= (and b!2325988 c!369285) b!2325985))

(assert (= (and b!2325988 (not c!369285)) b!2325987))

(declare-fun m!2757155 () Bool)

(assert (=> d!688756 m!2757155))

(assert (=> d!688756 m!2757147))

(declare-fun m!2757157 () Bool)

(assert (=> d!688756 m!2757157))

(assert (=> b!2325985 m!2757147))

(declare-fun m!2757159 () Bool)

(assert (=> b!2325985 m!2757159))

(declare-fun m!2757161 () Bool)

(assert (=> b!2325983 m!2757161))

(assert (=> b!2325988 m!2757147))

(assert (=> b!2325988 m!2757159))

(declare-fun m!2757163 () Bool)

(assert (=> b!2325982 m!2757163))

(assert (=> d!688752 d!688756))

(declare-fun b!2326036 () Bool)

(declare-fun e!1490358 () List!27790)

(assert (=> b!2326036 (= e!1490358 l!2797)))

(declare-fun b!2326037 () Bool)

(declare-fun e!1490361 () Int)

(assert (=> b!2326037 (= e!1490361 0)))

(declare-fun b!2326038 () Bool)

(declare-fun e!1490360 () List!27790)

(assert (=> b!2326038 (= e!1490360 Nil!27692)))

(declare-fun d!688762 () Bool)

(declare-fun e!1490359 () Bool)

(assert (=> d!688762 e!1490359))

(declare-fun res!993497 () Bool)

(assert (=> d!688762 (=> (not res!993497) (not e!1490359))))

(declare-fun lt!861584 () List!27790)

(assert (=> d!688762 (= res!993497 (= ((_ map implies) (content!3751 lt!861584) (content!3751 l!2797)) ((as const (InoxSet T!44076)) true)))))

(assert (=> d!688762 (= lt!861584 e!1490360)))

(declare-fun c!369310 () Bool)

(assert (=> d!688762 (= c!369310 ((_ is Nil!27692) l!2797))))

(assert (=> d!688762 (= (drop!1514 l!2797 0) lt!861584)))

(declare-fun b!2326039 () Bool)

(declare-fun call!138935 () Int)

(assert (=> b!2326039 (= e!1490361 (- call!138935 0))))

(declare-fun b!2326040 () Bool)

(declare-fun e!1490362 () Int)

(assert (=> b!2326040 (= e!1490362 call!138935)))

(declare-fun b!2326041 () Bool)

(assert (=> b!2326041 (= e!1490362 e!1490361)))

(declare-fun c!369312 () Bool)

(assert (=> b!2326041 (= c!369312 (>= 0 call!138935))))

(declare-fun bm!138930 () Bool)

(assert (=> bm!138930 (= call!138935 (size!21968 l!2797))))

(declare-fun b!2326042 () Bool)

(assert (=> b!2326042 (= e!1490360 e!1490358)))

(declare-fun c!369313 () Bool)

(assert (=> b!2326042 (= c!369313 (<= 0 0))))

(declare-fun b!2326043 () Bool)

(assert (=> b!2326043 (= e!1490358 (drop!1514 (t!207492 l!2797) (- 0 1)))))

(declare-fun b!2326044 () Bool)

(assert (=> b!2326044 (= e!1490359 (= (size!21968 lt!861584) e!1490362))))

(declare-fun c!369311 () Bool)

(assert (=> b!2326044 (= c!369311 (<= 0 0))))

(assert (= (and d!688762 c!369310) b!2326038))

(assert (= (and d!688762 (not c!369310)) b!2326042))

(assert (= (and b!2326042 c!369313) b!2326036))

(assert (= (and b!2326042 (not c!369313)) b!2326043))

(assert (= (and d!688762 res!993497) b!2326044))

(assert (= (and b!2326044 c!369311) b!2326040))

(assert (= (and b!2326044 (not c!369311)) b!2326041))

(assert (= (and b!2326041 c!369312) b!2326037))

(assert (= (and b!2326041 (not c!369312)) b!2326039))

(assert (= (or b!2326040 b!2326041 b!2326039) bm!138930))

(declare-fun m!2757175 () Bool)

(assert (=> d!688762 m!2757175))

(declare-fun m!2757177 () Bool)

(assert (=> d!688762 m!2757177))

(assert (=> bm!138930 m!2757137))

(declare-fun m!2757179 () Bool)

(assert (=> b!2326043 m!2757179))

(declare-fun m!2757181 () Bool)

(assert (=> b!2326044 m!2757181))

(assert (=> d!688752 d!688762))

(declare-fun b!2326045 () Bool)

(declare-fun e!1490363 () Bool)

(declare-fun tp!737154 () Bool)

(assert (=> b!2326045 (= e!1490363 (and tp_is_empty!10873 tp!737154))))

(assert (=> b!2325953 (= tp!737153 e!1490363)))

(assert (= (and b!2325953 ((_ is Cons!27692) (t!207492 (t!207492 l!2797)))) b!2326045))

(check-sat tp_is_empty!10873 (not b!2325982) (not d!688756) (not b!2326043) (not d!688762) (not b!2325983) (not b!2326045) (not b!2325985) (not b!2326044) (not bm!138930) (not b!2325988) (not b!2325955))
(check-sat)
