; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!411074 () Bool)

(assert start!411074)

(declare-fun res!1756870 () Bool)

(declare-fun e!2657024 () Bool)

(assert (=> start!411074 (=> (not res!1756870) (not e!2657024))))

(declare-fun lt!1514664 () Int)

(assert (=> start!411074 (= res!1756870 (<= 0 lt!1514664))))

(declare-datatypes ((T!80030 0))(
  ( (T!80031 (val!15277 Int)) )
))
(declare-datatypes ((List!47486 0))(
  ( (Nil!47362) (Cons!47362 (h!52782 T!80030) (t!354071 List!47486)) )
))
(declare-datatypes ((IArray!28693 0))(
  ( (IArray!28694 (innerList!14404 List!47486)) )
))
(declare-fun arr!8 () IArray!28693)

(declare-fun size!34680 (IArray!28693) Int)

(assert (=> start!411074 (= lt!1514664 (size!34680 arr!8))))

(assert (=> start!411074 e!2657024))

(declare-fun e!2657025 () Bool)

(declare-fun inv!62744 (IArray!28693) Bool)

(assert (=> start!411074 (and (inv!62744 arr!8) e!2657025)))

(declare-fun b!4279972 () Bool)

(declare-fun drop!2144 (List!47486 Int) List!47486)

(declare-fun list!17284 (IArray!28693) List!47486)

(assert (=> b!4279972 (= e!2657024 (not (= Nil!47362 (drop!2144 (list!17284 arr!8) lt!1514664))))))

(declare-fun b!4279973 () Bool)

(declare-fun tp!1309227 () Bool)

(assert (=> b!4279973 (= e!2657025 tp!1309227)))

(assert (= (and start!411074 res!1756870) b!4279972))

(assert (= start!411074 b!4279973))

(declare-fun m!4877783 () Bool)

(assert (=> start!411074 m!4877783))

(declare-fun m!4877785 () Bool)

(assert (=> start!411074 m!4877785))

(declare-fun m!4877787 () Bool)

(assert (=> b!4279972 m!4877787))

(assert (=> b!4279972 m!4877787))

(declare-fun m!4877789 () Bool)

(assert (=> b!4279972 m!4877789))

(push 1)

(assert (not start!411074))

(assert (not b!4279972))

(assert (not b!4279973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1264320 () Bool)

(declare-fun lt!1514670 () Int)

(declare-fun size!34682 (List!47486) Int)

(assert (=> d!1264320 (= lt!1514670 (size!34682 (list!17284 arr!8)))))

(declare-fun choose!26095 (IArray!28693) Int)

(assert (=> d!1264320 (= lt!1514670 (choose!26095 arr!8))))

(assert (=> d!1264320 (= (size!34680 arr!8) lt!1514670)))

(declare-fun bs!602681 () Bool)

(assert (= bs!602681 d!1264320))

(assert (=> bs!602681 m!4877787))

(assert (=> bs!602681 m!4877787))

(declare-fun m!4877799 () Bool)

(assert (=> bs!602681 m!4877799))

(declare-fun m!4877801 () Bool)

(assert (=> bs!602681 m!4877801))

(assert (=> start!411074 d!1264320))

(declare-fun d!1264324 () Bool)

(assert (=> d!1264324 (= (inv!62744 arr!8) (<= (size!34682 (innerList!14404 arr!8)) 2147483647))))

(declare-fun bs!602682 () Bool)

(assert (= bs!602682 d!1264324))

(declare-fun m!4877803 () Bool)

(assert (=> bs!602682 m!4877803))

(assert (=> start!411074 d!1264324))

(declare-fun b!4280016 () Bool)

(declare-fun e!2657052 () List!47486)

(assert (=> b!4280016 (= e!2657052 (drop!2144 (t!354071 (list!17284 arr!8)) (- lt!1514664 1)))))

(declare-fun b!4280017 () Bool)

(declare-fun e!2657055 () List!47486)

(assert (=> b!4280017 (= e!2657055 e!2657052)))

(declare-fun c!729304 () Bool)

(assert (=> b!4280017 (= c!729304 (<= lt!1514664 0))))

(declare-fun b!4280018 () Bool)

(declare-fun e!2657056 () Int)

(declare-fun e!2657053 () Int)

(assert (=> b!4280018 (= e!2657056 e!2657053)))

(declare-fun c!729303 () Bool)

(declare-fun call!294300 () Int)

(assert (=> b!4280018 (= c!729303 (>= lt!1514664 call!294300))))

(declare-fun b!4280019 () Bool)

(assert (=> b!4280019 (= e!2657053 (- call!294300 lt!1514664))))

(declare-fun bm!294295 () Bool)

(assert (=> bm!294295 (= call!294300 (size!34682 (list!17284 arr!8)))))

(declare-fun b!4280020 () Bool)

(assert (=> b!4280020 (= e!2657055 Nil!47362)))

(declare-fun b!4280021 () Bool)

(assert (=> b!4280021 (= e!2657053 0)))

(declare-fun b!4280022 () Bool)

(assert (=> b!4280022 (= e!2657056 call!294300)))

(declare-fun d!1264326 () Bool)

(declare-fun e!2657054 () Bool)

(assert (=> d!1264326 e!2657054))

(declare-fun res!1756878 () Bool)

(assert (=> d!1264326 (=> (not res!1756878) (not e!2657054))))

(declare-fun lt!1514675 () List!47486)

(declare-fun content!7495 (List!47486) (Set T!80030))

(assert (=> d!1264326 (= res!1756878 (set.subset (content!7495 lt!1514675) (content!7495 (list!17284 arr!8))))))

(assert (=> d!1264326 (= lt!1514675 e!2657055)))

(declare-fun c!729305 () Bool)

(assert (=> d!1264326 (= c!729305 (is-Nil!47362 (list!17284 arr!8)))))

(assert (=> d!1264326 (= (drop!2144 (list!17284 arr!8) lt!1514664) lt!1514675)))

(declare-fun b!4280023 () Bool)

(assert (=> b!4280023 (= e!2657054 (= (size!34682 lt!1514675) e!2657056))))

(declare-fun c!729306 () Bool)

(assert (=> b!4280023 (= c!729306 (<= lt!1514664 0))))

(declare-fun b!4280024 () Bool)

(assert (=> b!4280024 (= e!2657052 (list!17284 arr!8))))

(assert (= (and d!1264326 c!729305) b!4280020))

(assert (= (and d!1264326 (not c!729305)) b!4280017))

(assert (= (and b!4280017 c!729304) b!4280024))

(assert (= (and b!4280017 (not c!729304)) b!4280016))

(assert (= (and d!1264326 res!1756878) b!4280023))

(assert (= (and b!4280023 c!729306) b!4280022))

(assert (= (and b!4280023 (not c!729306)) b!4280018))

(assert (= (and b!4280018 c!729303) b!4280021))

(assert (= (and b!4280018 (not c!729303)) b!4280019))

(assert (= (or b!4280022 b!4280018 b!4280019) bm!294295))

(declare-fun m!4877805 () Bool)

(assert (=> b!4280016 m!4877805))

(assert (=> bm!294295 m!4877787))

(assert (=> bm!294295 m!4877799))

(declare-fun m!4877807 () Bool)

(assert (=> d!1264326 m!4877807))

(assert (=> d!1264326 m!4877787))

(declare-fun m!4877809 () Bool)

(assert (=> d!1264326 m!4877809))

(declare-fun m!4877811 () Bool)

(assert (=> b!4280023 m!4877811))

(assert (=> b!4279972 d!1264326))

(declare-fun d!1264328 () Bool)

(assert (=> d!1264328 (= (list!17284 arr!8) (innerList!14404 arr!8))))

(assert (=> b!4279972 d!1264328))

(declare-fun b!4280038 () Bool)

(declare-fun e!2657064 () Bool)

(declare-fun tp_is_empty!22963 () Bool)

(declare-fun tp!1309233 () Bool)

(assert (=> b!4280038 (= e!2657064 (and tp_is_empty!22963 tp!1309233))))

(assert (=> b!4279973 (= tp!1309227 e!2657064)))

(assert (= (and b!4279973 (is-Cons!47362 (innerList!14404 arr!8))) b!4280038))

(push 1)

(assert (not d!1264326))

(assert (not d!1264324))

(assert (not bm!294295))

(assert (not b!4280038))

(assert (not d!1264320))

(assert (not b!4280016))

(assert tp_is_empty!22963)

(assert (not b!4280023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4280044 () Bool)

(declare-fun e!2657068 () List!47486)

(assert (=> b!4280044 (= e!2657068 (drop!2144 (t!354071 (t!354071 (list!17284 arr!8))) (- (- lt!1514664 1) 1)))))

(declare-fun b!4280045 () Bool)

(declare-fun e!2657071 () List!47486)

(assert (=> b!4280045 (= e!2657071 e!2657068)))

(declare-fun c!729312 () Bool)

(assert (=> b!4280045 (= c!729312 (<= (- lt!1514664 1) 0))))

(declare-fun b!4280046 () Bool)

(declare-fun e!2657072 () Int)

(declare-fun e!2657069 () Int)

(assert (=> b!4280046 (= e!2657072 e!2657069)))

(declare-fun c!729311 () Bool)

(declare-fun call!294302 () Int)

(assert (=> b!4280046 (= c!729311 (>= (- lt!1514664 1) call!294302))))

(declare-fun b!4280047 () Bool)

(assert (=> b!4280047 (= e!2657069 (- call!294302 (- lt!1514664 1)))))

(declare-fun bm!294297 () Bool)

(assert (=> bm!294297 (= call!294302 (size!34682 (t!354071 (list!17284 arr!8))))))

(declare-fun b!4280048 () Bool)

(assert (=> b!4280048 (= e!2657071 Nil!47362)))

(declare-fun b!4280049 () Bool)

(assert (=> b!4280049 (= e!2657069 0)))

(declare-fun b!4280050 () Bool)

(assert (=> b!4280050 (= e!2657072 call!294302)))

(declare-fun d!1264336 () Bool)

(declare-fun e!2657070 () Bool)

(assert (=> d!1264336 e!2657070))

(declare-fun res!1756880 () Bool)

(assert (=> d!1264336 (=> (not res!1756880) (not e!2657070))))

(declare-fun lt!1514680 () List!47486)

(assert (=> d!1264336 (= res!1756880 (set.subset (content!7495 lt!1514680) (content!7495 (t!354071 (list!17284 arr!8)))))))

(assert (=> d!1264336 (= lt!1514680 e!2657071)))

(declare-fun c!729313 () Bool)

(assert (=> d!1264336 (= c!729313 (is-Nil!47362 (t!354071 (list!17284 arr!8))))))

(assert (=> d!1264336 (= (drop!2144 (t!354071 (list!17284 arr!8)) (- lt!1514664 1)) lt!1514680)))

(declare-fun b!4280051 () Bool)

(assert (=> b!4280051 (= e!2657070 (= (size!34682 lt!1514680) e!2657072))))

(declare-fun c!729314 () Bool)

(assert (=> b!4280051 (= c!729314 (<= (- lt!1514664 1) 0))))

(declare-fun b!4280052 () Bool)

(assert (=> b!4280052 (= e!2657068 (t!354071 (list!17284 arr!8)))))

(assert (= (and d!1264336 c!729313) b!4280048))

(assert (= (and d!1264336 (not c!729313)) b!4280045))

(assert (= (and b!4280045 c!729312) b!4280052))

(assert (= (and b!4280045 (not c!729312)) b!4280044))

(assert (= (and d!1264336 res!1756880) b!4280051))

(assert (= (and b!4280051 c!729314) b!4280050))

(assert (= (and b!4280051 (not c!729314)) b!4280046))

(assert (= (and b!4280046 c!729311) b!4280049))

(assert (= (and b!4280046 (not c!729311)) b!4280047))

(assert (= (or b!4280050 b!4280046 b!4280047) bm!294297))

(declare-fun m!4877827 () Bool)

(assert (=> b!4280044 m!4877827))

(declare-fun m!4877829 () Bool)

(assert (=> bm!294297 m!4877829))

(declare-fun m!4877831 () Bool)

(assert (=> d!1264336 m!4877831))

(declare-fun m!4877833 () Bool)

(assert (=> d!1264336 m!4877833))

(declare-fun m!4877835 () Bool)

(assert (=> b!4280051 m!4877835))

(assert (=> b!4280016 d!1264336))

(declare-fun d!1264338 () Bool)

(declare-fun lt!1514683 () Int)

(assert (=> d!1264338 (>= lt!1514683 0)))

(declare-fun e!2657075 () Int)

(assert (=> d!1264338 (= lt!1514683 e!2657075)))

(declare-fun c!729317 () Bool)

(assert (=> d!1264338 (= c!729317 (is-Nil!47362 (innerList!14404 arr!8)))))

(assert (=> d!1264338 (= (size!34682 (innerList!14404 arr!8)) lt!1514683)))

(declare-fun b!4280057 () Bool)

(assert (=> b!4280057 (= e!2657075 0)))

(declare-fun b!4280058 () Bool)

(assert (=> b!4280058 (= e!2657075 (+ 1 (size!34682 (t!354071 (innerList!14404 arr!8)))))))

(assert (= (and d!1264338 c!729317) b!4280057))

(assert (= (and d!1264338 (not c!729317)) b!4280058))

(declare-fun m!4877837 () Bool)

(assert (=> b!4280058 m!4877837))

(assert (=> d!1264324 d!1264338))

(declare-fun d!1264340 () Bool)

(declare-fun lt!1514684 () Int)

(assert (=> d!1264340 (>= lt!1514684 0)))

(declare-fun e!2657076 () Int)

(assert (=> d!1264340 (= lt!1514684 e!2657076)))

(declare-fun c!729318 () Bool)

(assert (=> d!1264340 (= c!729318 (is-Nil!47362 (list!17284 arr!8)))))

(assert (=> d!1264340 (= (size!34682 (list!17284 arr!8)) lt!1514684)))

(declare-fun b!4280059 () Bool)

(assert (=> b!4280059 (= e!2657076 0)))

(declare-fun b!4280060 () Bool)

(assert (=> b!4280060 (= e!2657076 (+ 1 (size!34682 (t!354071 (list!17284 arr!8)))))))

(assert (= (and d!1264340 c!729318) b!4280059))

(assert (= (and d!1264340 (not c!729318)) b!4280060))

(assert (=> b!4280060 m!4877829))

(assert (=> d!1264320 d!1264340))

(assert (=> d!1264320 d!1264328))

(declare-fun d!1264342 () Bool)

(declare-fun _$1!10367 () Int)

(assert (=> d!1264342 (= _$1!10367 (size!34682 (list!17284 arr!8)))))

(assert (=> d!1264342 true))

(assert (=> d!1264342 (= (choose!26095 arr!8) _$1!10367)))

(declare-fun bs!602685 () Bool)

(assert (= bs!602685 d!1264342))

(assert (=> bs!602685 m!4877787))

(assert (=> bs!602685 m!4877787))

(assert (=> bs!602685 m!4877799))

(assert (=> d!1264320 d!1264342))

(declare-fun d!1264344 () Bool)

(declare-fun lt!1514685 () Int)

(assert (=> d!1264344 (>= lt!1514685 0)))

(declare-fun e!2657077 () Int)

(assert (=> d!1264344 (= lt!1514685 e!2657077)))

(declare-fun c!729319 () Bool)

(assert (=> d!1264344 (= c!729319 (is-Nil!47362 lt!1514675))))

(assert (=> d!1264344 (= (size!34682 lt!1514675) lt!1514685)))

(declare-fun b!4280061 () Bool)

(assert (=> b!4280061 (= e!2657077 0)))

(declare-fun b!4280062 () Bool)

(assert (=> b!4280062 (= e!2657077 (+ 1 (size!34682 (t!354071 lt!1514675))))))

(assert (= (and d!1264344 c!729319) b!4280061))

(assert (= (and d!1264344 (not c!729319)) b!4280062))

(declare-fun m!4877839 () Bool)

(assert (=> b!4280062 m!4877839))

(assert (=> b!4280023 d!1264344))

(declare-fun d!1264346 () Bool)

(declare-fun c!729322 () Bool)

(assert (=> d!1264346 (= c!729322 (is-Nil!47362 lt!1514675))))

(declare-fun e!2657080 () (Set T!80030))

(assert (=> d!1264346 (= (content!7495 lt!1514675) e!2657080)))

(declare-fun b!4280067 () Bool)

(assert (=> b!4280067 (= e!2657080 (as set.empty (Set T!80030)))))

(declare-fun b!4280068 () Bool)

(assert (=> b!4280068 (= e!2657080 (set.union (set.insert (h!52782 lt!1514675) (as set.empty (Set T!80030))) (content!7495 (t!354071 lt!1514675))))))

(assert (= (and d!1264346 c!729322) b!4280067))

(assert (= (and d!1264346 (not c!729322)) b!4280068))

(declare-fun m!4877841 () Bool)

(assert (=> b!4280068 m!4877841))

(declare-fun m!4877843 () Bool)

(assert (=> b!4280068 m!4877843))

(assert (=> d!1264326 d!1264346))

(declare-fun d!1264348 () Bool)

(declare-fun c!729323 () Bool)

(assert (=> d!1264348 (= c!729323 (is-Nil!47362 (list!17284 arr!8)))))

(declare-fun e!2657081 () (Set T!80030))

(assert (=> d!1264348 (= (content!7495 (list!17284 arr!8)) e!2657081)))

(declare-fun b!4280069 () Bool)

(assert (=> b!4280069 (= e!2657081 (as set.empty (Set T!80030)))))

(declare-fun b!4280070 () Bool)

(assert (=> b!4280070 (= e!2657081 (set.union (set.insert (h!52782 (list!17284 arr!8)) (as set.empty (Set T!80030))) (content!7495 (t!354071 (list!17284 arr!8)))))))

(assert (= (and d!1264348 c!729323) b!4280069))

(assert (= (and d!1264348 (not c!729323)) b!4280070))

(declare-fun m!4877845 () Bool)

(assert (=> b!4280070 m!4877845))

(assert (=> b!4280070 m!4877833))

(assert (=> d!1264326 d!1264348))

(assert (=> bm!294295 d!1264340))

(declare-fun b!4280071 () Bool)

(declare-fun e!2657082 () Bool)

(declare-fun tp!1309237 () Bool)

(assert (=> b!4280071 (= e!2657082 (and tp_is_empty!22963 tp!1309237))))

(assert (=> b!4280038 (= tp!1309233 e!2657082)))

(assert (= (and b!4280038 (is-Cons!47362 (t!354071 (innerList!14404 arr!8)))) b!4280071))

(push 1)

(assert (not b!4280051))

(assert (not bm!294297))

(assert (not b!4280058))

(assert (not b!4280068))

(assert (not d!1264342))

(assert (not b!4280044))

(assert (not b!4280071))

(assert tp_is_empty!22963)

(assert (not d!1264336))

(assert (not b!4280062))

(assert (not b!4280060))

(assert (not b!4280070))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4280100 () Bool)

(declare-fun e!2657098 () List!47486)

(assert (=> b!4280100 (= e!2657098 (drop!2144 (t!354071 (t!354071 (t!354071 (list!17284 arr!8)))) (- (- (- lt!1514664 1) 1) 1)))))

(declare-fun b!4280101 () Bool)

(declare-fun e!2657101 () List!47486)

(assert (=> b!4280101 (= e!2657101 e!2657098)))

(declare-fun c!729338 () Bool)

(assert (=> b!4280101 (= c!729338 (<= (- (- lt!1514664 1) 1) 0))))

(declare-fun b!4280102 () Bool)

(declare-fun e!2657102 () Int)

(declare-fun e!2657099 () Int)

(assert (=> b!4280102 (= e!2657102 e!2657099)))

(declare-fun c!729337 () Bool)

(declare-fun call!294304 () Int)

(assert (=> b!4280102 (= c!729337 (>= (- (- lt!1514664 1) 1) call!294304))))

(declare-fun b!4280103 () Bool)

(assert (=> b!4280103 (= e!2657099 (- call!294304 (- (- lt!1514664 1) 1)))))

(declare-fun bm!294299 () Bool)

(assert (=> bm!294299 (= call!294304 (size!34682 (t!354071 (t!354071 (list!17284 arr!8)))))))

(declare-fun b!4280104 () Bool)

(assert (=> b!4280104 (= e!2657101 Nil!47362)))

(declare-fun b!4280105 () Bool)

(assert (=> b!4280105 (= e!2657099 0)))

(declare-fun b!4280106 () Bool)

(assert (=> b!4280106 (= e!2657102 call!294304)))

(declare-fun d!1264364 () Bool)

(declare-fun e!2657100 () Bool)

(assert (=> d!1264364 e!2657100))

(declare-fun res!1756882 () Bool)

(assert (=> d!1264364 (=> (not res!1756882) (not e!2657100))))

(declare-fun lt!1514692 () List!47486)

(assert (=> d!1264364 (= res!1756882 (set.subset (content!7495 lt!1514692) (content!7495 (t!354071 (t!354071 (list!17284 arr!8))))))))

(assert (=> d!1264364 (= lt!1514692 e!2657101)))

(declare-fun c!729339 () Bool)

(assert (=> d!1264364 (= c!729339 (is-Nil!47362 (t!354071 (t!354071 (list!17284 arr!8)))))))

(assert (=> d!1264364 (= (drop!2144 (t!354071 (t!354071 (list!17284 arr!8))) (- (- lt!1514664 1) 1)) lt!1514692)))

(declare-fun b!4280107 () Bool)

(assert (=> b!4280107 (= e!2657100 (= (size!34682 lt!1514692) e!2657102))))

(declare-fun c!729340 () Bool)

(assert (=> b!4280107 (= c!729340 (<= (- (- lt!1514664 1) 1) 0))))

(declare-fun b!4280108 () Bool)

(assert (=> b!4280108 (= e!2657098 (t!354071 (t!354071 (list!17284 arr!8))))))

(assert (= (and d!1264364 c!729339) b!4280104))

(assert (= (and d!1264364 (not c!729339)) b!4280101))

(assert (= (and b!4280101 c!729338) b!4280108))

(assert (= (and b!4280101 (not c!729338)) b!4280100))

(assert (= (and d!1264364 res!1756882) b!4280107))

(assert (= (and b!4280107 c!729340) b!4280106))

(assert (= (and b!4280107 (not c!729340)) b!4280102))

(assert (= (and b!4280102 c!729337) b!4280105))

(assert (= (and b!4280102 (not c!729337)) b!4280103))

(assert (= (or b!4280106 b!4280102 b!4280103) bm!294299))

(declare-fun m!4877867 () Bool)

(assert (=> b!4280100 m!4877867))

(declare-fun m!4877869 () Bool)

(assert (=> bm!294299 m!4877869))

(declare-fun m!4877871 () Bool)

(assert (=> d!1264364 m!4877871))

(declare-fun m!4877873 () Bool)

(assert (=> d!1264364 m!4877873))

(declare-fun m!4877875 () Bool)

(assert (=> b!4280107 m!4877875))

(assert (=> b!4280044 d!1264364))

(declare-fun d!1264366 () Bool)

(declare-fun lt!1514693 () Int)

(assert (=> d!1264366 (>= lt!1514693 0)))

(declare-fun e!2657103 () Int)

(assert (=> d!1264366 (= lt!1514693 e!2657103)))

(declare-fun c!729341 () Bool)

(assert (=> d!1264366 (= c!729341 (is-Nil!47362 (t!354071 lt!1514675)))))

(assert (=> d!1264366 (= (size!34682 (t!354071 lt!1514675)) lt!1514693)))

(declare-fun b!4280109 () Bool)

(assert (=> b!4280109 (= e!2657103 0)))

(declare-fun b!4280110 () Bool)

(assert (=> b!4280110 (= e!2657103 (+ 1 (size!34682 (t!354071 (t!354071 lt!1514675)))))))

(assert (= (and d!1264366 c!729341) b!4280109))

(assert (= (and d!1264366 (not c!729341)) b!4280110))

(declare-fun m!4877877 () Bool)

(assert (=> b!4280110 m!4877877))

(assert (=> b!4280062 d!1264366))

(declare-fun d!1264368 () Bool)

(declare-fun lt!1514694 () Int)

(assert (=> d!1264368 (>= lt!1514694 0)))

(declare-fun e!2657104 () Int)

(assert (=> d!1264368 (= lt!1514694 e!2657104)))

(declare-fun c!729342 () Bool)

(assert (=> d!1264368 (= c!729342 (is-Nil!47362 (t!354071 (list!17284 arr!8))))))

(assert (=> d!1264368 (= (size!34682 (t!354071 (list!17284 arr!8))) lt!1514694)))

(declare-fun b!4280111 () Bool)

(assert (=> b!4280111 (= e!2657104 0)))

(declare-fun b!4280112 () Bool)

(assert (=> b!4280112 (= e!2657104 (+ 1 (size!34682 (t!354071 (t!354071 (list!17284 arr!8))))))))

(assert (= (and d!1264368 c!729342) b!4280111))

(assert (= (and d!1264368 (not c!729342)) b!4280112))

(assert (=> b!4280112 m!4877869))

(assert (=> b!4280060 d!1264368))

(declare-fun d!1264370 () Bool)

(declare-fun lt!1514695 () Int)

(assert (=> d!1264370 (>= lt!1514695 0)))

(declare-fun e!2657105 () Int)

(assert (=> d!1264370 (= lt!1514695 e!2657105)))

(declare-fun c!729343 () Bool)

(assert (=> d!1264370 (= c!729343 (is-Nil!47362 (t!354071 (innerList!14404 arr!8))))))

(assert (=> d!1264370 (= (size!34682 (t!354071 (innerList!14404 arr!8))) lt!1514695)))

(declare-fun b!4280113 () Bool)

(assert (=> b!4280113 (= e!2657105 0)))

(declare-fun b!4280114 () Bool)

(assert (=> b!4280114 (= e!2657105 (+ 1 (size!34682 (t!354071 (t!354071 (innerList!14404 arr!8))))))))

(assert (= (and d!1264370 c!729343) b!4280113))

(assert (= (and d!1264370 (not c!729343)) b!4280114))

(declare-fun m!4877879 () Bool)

(assert (=> b!4280114 m!4877879))

(assert (=> b!4280058 d!1264370))

(declare-fun d!1264372 () Bool)

(declare-fun c!729344 () Bool)

(assert (=> d!1264372 (= c!729344 (is-Nil!47362 (t!354071 (list!17284 arr!8))))))

(declare-fun e!2657106 () (Set T!80030))

(assert (=> d!1264372 (= (content!7495 (t!354071 (list!17284 arr!8))) e!2657106)))

(declare-fun b!4280115 () Bool)

(assert (=> b!4280115 (= e!2657106 (as set.empty (Set T!80030)))))

(declare-fun b!4280116 () Bool)

(assert (=> b!4280116 (= e!2657106 (set.union (set.insert (h!52782 (t!354071 (list!17284 arr!8))) (as set.empty (Set T!80030))) (content!7495 (t!354071 (t!354071 (list!17284 arr!8))))))))

(assert (= (and d!1264372 c!729344) b!4280115))

(assert (= (and d!1264372 (not c!729344)) b!4280116))

(declare-fun m!4877881 () Bool)

(assert (=> b!4280116 m!4877881))

(assert (=> b!4280116 m!4877873))

(assert (=> b!4280070 d!1264372))

(assert (=> d!1264342 d!1264340))

(assert (=> d!1264342 d!1264328))

(declare-fun d!1264374 () Bool)

(declare-fun c!729345 () Bool)

(assert (=> d!1264374 (= c!729345 (is-Nil!47362 lt!1514680))))

(declare-fun e!2657107 () (Set T!80030))

(assert (=> d!1264374 (= (content!7495 lt!1514680) e!2657107)))

(declare-fun b!4280117 () Bool)

(assert (=> b!4280117 (= e!2657107 (as set.empty (Set T!80030)))))

(declare-fun b!4280118 () Bool)

(assert (=> b!4280118 (= e!2657107 (set.union (set.insert (h!52782 lt!1514680) (as set.empty (Set T!80030))) (content!7495 (t!354071 lt!1514680))))))

(assert (= (and d!1264374 c!729345) b!4280117))

(assert (= (and d!1264374 (not c!729345)) b!4280118))

(declare-fun m!4877883 () Bool)

(assert (=> b!4280118 m!4877883))

(declare-fun m!4877885 () Bool)

(assert (=> b!4280118 m!4877885))

(assert (=> d!1264336 d!1264374))

(assert (=> d!1264336 d!1264372))

(declare-fun d!1264376 () Bool)

(declare-fun c!729346 () Bool)

(assert (=> d!1264376 (= c!729346 (is-Nil!47362 (t!354071 lt!1514675)))))

(declare-fun e!2657108 () (Set T!80030))

(assert (=> d!1264376 (= (content!7495 (t!354071 lt!1514675)) e!2657108)))

(declare-fun b!4280119 () Bool)

(assert (=> b!4280119 (= e!2657108 (as set.empty (Set T!80030)))))

(declare-fun b!4280120 () Bool)

(assert (=> b!4280120 (= e!2657108 (set.union (set.insert (h!52782 (t!354071 lt!1514675)) (as set.empty (Set T!80030))) (content!7495 (t!354071 (t!354071 lt!1514675)))))))

(assert (= (and d!1264376 c!729346) b!4280119))

(assert (= (and d!1264376 (not c!729346)) b!4280120))

(declare-fun m!4877887 () Bool)

(assert (=> b!4280120 m!4877887))

(declare-fun m!4877889 () Bool)

(assert (=> b!4280120 m!4877889))

(assert (=> b!4280068 d!1264376))

(declare-fun d!1264378 () Bool)

(declare-fun lt!1514696 () Int)

(assert (=> d!1264378 (>= lt!1514696 0)))

(declare-fun e!2657109 () Int)

(assert (=> d!1264378 (= lt!1514696 e!2657109)))

(declare-fun c!729347 () Bool)

(assert (=> d!1264378 (= c!729347 (is-Nil!47362 lt!1514680))))

(assert (=> d!1264378 (= (size!34682 lt!1514680) lt!1514696)))

(declare-fun b!4280121 () Bool)

(assert (=> b!4280121 (= e!2657109 0)))

(declare-fun b!4280122 () Bool)

(assert (=> b!4280122 (= e!2657109 (+ 1 (size!34682 (t!354071 lt!1514680))))))

(assert (= (and d!1264378 c!729347) b!4280121))

(assert (= (and d!1264378 (not c!729347)) b!4280122))

(declare-fun m!4877891 () Bool)

(assert (=> b!4280122 m!4877891))

(assert (=> b!4280051 d!1264378))

(assert (=> bm!294297 d!1264368))

(declare-fun b!4280123 () Bool)

(declare-fun e!2657110 () Bool)

(declare-fun tp!1309239 () Bool)

(assert (=> b!4280123 (= e!2657110 (and tp_is_empty!22963 tp!1309239))))

(assert (=> b!4280071 (= tp!1309237 e!2657110)))

(assert (= (and b!4280071 (is-Cons!47362 (t!354071 (t!354071 (innerList!14404 arr!8))))) b!4280123))

(push 1)

(assert (not b!4280122))

(assert (not b!4280100))

(assert (not bm!294299))

(assert (not b!4280107))

(assert (not b!4280118))

(assert (not b!4280123))

(assert (not b!4280120))

(assert (not d!1264364))

(assert tp_is_empty!22963)

(assert (not b!4280114))

(assert (not b!4280112))

(assert (not b!4280110))

(assert (not b!4280116))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

