; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85050 () Bool)

(assert start!85050)

(declare-fun b!992210 () Bool)

(declare-fun e!559759 () Bool)

(declare-fun e!559760 () Bool)

(assert (=> b!992210 (= e!559759 e!559760)))

(declare-fun res!663290 () Bool)

(assert (=> b!992210 (=> (not res!663290) (not e!559760))))

(declare-datatypes ((List!20998 0))(
  ( (Nil!20995) (Cons!20994 (h!22156 (_ BitVec 64)) (t!29995 List!20998)) )
))
(declare-datatypes ((tuple2!15042 0))(
  ( (tuple2!15043 (_1!7531 (_ BitVec 64)) (_2!7531 List!20998)) )
))
(declare-datatypes ((Option!534 0))(
  ( (Some!533 (v!14334 tuple2!15042)) (None!532) )
))
(declare-fun lt!440093 () Option!534)

(declare-fun isEmpty!743 (Option!534) Bool)

(assert (=> b!992210 (= res!663290 (not (isEmpty!743 lt!440093)))))

(declare-fun lt!440092 () List!20998)

(declare-fun unapply!10 (List!20998) Option!534)

(assert (=> b!992210 (= lt!440093 (unapply!10 lt!440092))))

(declare-fun tail!21 () List!20998)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun $colon$colon!568 (List!20998 (_ BitVec 64)) List!20998)

(assert (=> b!992210 (= lt!440092 ($colon$colon!568 tail!21 head!726))))

(declare-fun res!663289 () Bool)

(assert (=> start!85050 (=> (not res!663289) (not e!559759))))

(declare-fun contains!5755 (List!20998 (_ BitVec 64)) Bool)

(assert (=> start!85050 (= res!663289 (not (contains!5755 tail!21 head!726)))))

(assert (=> start!85050 e!559759))

(assert (=> start!85050 true))

(declare-fun b!992209 () Bool)

(declare-fun res!663292 () Bool)

(assert (=> b!992209 (=> (not res!663292) (not e!559759))))

(declare-fun content!441 (List!20998) (Set (_ BitVec 64)))

(assert (=> b!992209 (= res!663292 (not (set.member head!726 (content!441 tail!21))))))

(declare-fun b!992211 () Bool)

(declare-fun e!559758 () Bool)

(assert (=> b!992211 (= e!559760 e!559758)))

(declare-fun res!663291 () Bool)

(assert (=> b!992211 (=> (not res!663291) (not e!559758))))

(declare-fun lt!440094 () tuple2!15042)

(assert (=> b!992211 (= res!663291 (not (contains!5755 (_2!7531 lt!440094) head!726)))))

(declare-fun get!15704 (Option!534) tuple2!15042)

(assert (=> b!992211 (= lt!440094 (get!15704 lt!440093))))

(declare-fun b!992212 () Bool)

(declare-fun -!441 (List!20998 (_ BitVec 64)) List!20998)

(assert (=> b!992212 (= e!559758 (not (= (-!441 lt!440092 head!726) tail!21)))))

(assert (=> b!992212 (= (-!441 (_2!7531 lt!440094) head!726) (_2!7531 lt!440094))))

(declare-datatypes ((Unit!32860 0))(
  ( (Unit!32861) )
))
(declare-fun lt!440091 () Unit!32860)

(declare-fun lemmaListMinusENotContainedEqualsList!0 ((_ BitVec 64) List!20998) Unit!32860)

(assert (=> b!992212 (= lt!440091 (lemmaListMinusENotContainedEqualsList!0 head!726 (_2!7531 lt!440094)))))

(assert (= (and start!85050 res!663289) b!992209))

(assert (= (and b!992209 res!663292) b!992210))

(assert (= (and b!992210 res!663290) b!992211))

(assert (= (and b!992211 res!663291) b!992212))

(declare-fun m!920021 () Bool)

(assert (=> b!992212 m!920021))

(declare-fun m!920023 () Bool)

(assert (=> b!992212 m!920023))

(declare-fun m!920025 () Bool)

(assert (=> b!992212 m!920025))

(declare-fun m!920027 () Bool)

(assert (=> b!992209 m!920027))

(declare-fun m!920029 () Bool)

(assert (=> b!992209 m!920029))

(declare-fun m!920031 () Bool)

(assert (=> b!992211 m!920031))

(declare-fun m!920033 () Bool)

(assert (=> b!992211 m!920033))

(declare-fun m!920035 () Bool)

(assert (=> start!85050 m!920035))

(declare-fun m!920037 () Bool)

(assert (=> b!992210 m!920037))

(declare-fun m!920039 () Bool)

(assert (=> b!992210 m!920039))

(declare-fun m!920041 () Bool)

(assert (=> b!992210 m!920041))

(push 1)

(assert (not b!992212))

(assert (not start!85050))

(assert (not b!992211))

(assert (not b!992210))

(assert (not b!992209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118041 () Bool)

(declare-fun lt!440127 () Bool)

(assert (=> d!118041 (= lt!440127 (set.member head!726 (content!441 (_2!7531 lt!440094))))))

(declare-fun e!559795 () Bool)

(assert (=> d!118041 (= lt!440127 e!559795)))

(declare-fun res!663333 () Bool)

(assert (=> d!118041 (=> (not res!663333) (not e!559795))))

(assert (=> d!118041 (= res!663333 (is-Cons!20994 (_2!7531 lt!440094)))))

(assert (=> d!118041 (= (contains!5755 (_2!7531 lt!440094) head!726) lt!440127)))

(declare-fun b!992253 () Bool)

(declare-fun e!559796 () Bool)

(assert (=> b!992253 (= e!559795 e!559796)))

(declare-fun res!663334 () Bool)

(assert (=> b!992253 (=> res!663334 e!559796)))

(assert (=> b!992253 (= res!663334 (= (h!22156 (_2!7531 lt!440094)) head!726))))

(declare-fun b!992254 () Bool)

(assert (=> b!992254 (= e!559796 (contains!5755 (t!29995 (_2!7531 lt!440094)) head!726))))

(assert (= (and d!118041 res!663333) b!992253))

(assert (= (and b!992253 (not res!663334)) b!992254))

(declare-fun m!920095 () Bool)

(assert (=> d!118041 m!920095))

(declare-fun m!920097 () Bool)

(assert (=> d!118041 m!920097))

(declare-fun m!920099 () Bool)

(assert (=> b!992254 m!920099))

(assert (=> b!992211 d!118041))

(declare-fun d!118053 () Bool)

(assert (=> d!118053 (= (get!15704 lt!440093) (v!14334 lt!440093))))

(assert (=> b!992211 d!118053))

(declare-fun b!992281 () Bool)

(declare-fun lt!440133 () List!20998)

(declare-fun e!559816 () Bool)

(assert (=> b!992281 (= e!559816 (= (content!441 lt!440133) (set.minus (content!441 lt!440092) (set.insert head!726 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!992282 () Bool)

(declare-fun e!559817 () List!20998)

(assert (=> b!992282 (= e!559817 Nil!20995)))

(declare-fun b!992283 () Bool)

(declare-fun e!559814 () List!20998)

(assert (=> b!992283 (= e!559817 e!559814)))

(declare-fun c!100607 () Bool)

(assert (=> b!992283 (= c!100607 (= head!726 (h!22156 lt!440092)))))

(declare-fun b!992284 () Bool)

(declare-fun call!42094 () List!20998)

(assert (=> b!992284 (= e!559814 call!42094)))

(declare-fun bm!42091 () Bool)

(assert (=> bm!42091 (= call!42094 (-!441 (t!29995 lt!440092) head!726))))

(declare-fun d!118055 () Bool)

(assert (=> d!118055 e!559816))

(declare-fun res!663341 () Bool)

(assert (=> d!118055 (=> (not res!663341) (not e!559816))))

(declare-fun size!30673 (List!20998) Int)

(assert (=> d!118055 (= res!663341 (<= (size!30673 lt!440133) (size!30673 lt!440092)))))

(assert (=> d!118055 (= lt!440133 e!559817)))

(declare-fun c!100608 () Bool)

(assert (=> d!118055 (= c!100608 (is-Cons!20994 lt!440092))))

(assert (=> d!118055 (= (-!441 lt!440092 head!726) lt!440133)))

(declare-fun b!992285 () Bool)

(assert (=> b!992285 (= e!559814 (Cons!20994 (h!22156 lt!440092) call!42094))))

(assert (= (and d!118055 c!100608) b!992283))

(assert (= (and d!118055 (not c!100608)) b!992282))

(assert (= (and b!992283 c!100607) b!992284))

(assert (= (and b!992283 (not c!100607)) b!992285))

(assert (= (or b!992284 b!992285) bm!42091))

(assert (= (and d!118055 res!663341) b!992281))

(declare-fun m!920117 () Bool)

(assert (=> b!992281 m!920117))

(declare-fun m!920119 () Bool)

(assert (=> b!992281 m!920119))

(declare-fun m!920121 () Bool)

(assert (=> b!992281 m!920121))

(declare-fun m!920123 () Bool)

(assert (=> bm!42091 m!920123))

(declare-fun m!920125 () Bool)

(assert (=> d!118055 m!920125))

(declare-fun m!920127 () Bool)

(assert (=> d!118055 m!920127))

(assert (=> b!992212 d!118055))

(declare-fun e!559823 () Bool)

(declare-fun b!992294 () Bool)

(declare-fun lt!440135 () List!20998)

(assert (=> b!992294 (= e!559823 (= (content!441 lt!440135) (set.minus (content!441 (_2!7531 lt!440094)) (set.insert head!726 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!992295 () Bool)

(declare-fun e!559824 () List!20998)

(assert (=> b!992295 (= e!559824 Nil!20995)))

(declare-fun b!992296 () Bool)

(declare-fun e!559822 () List!20998)

(assert (=> b!992296 (= e!559824 e!559822)))

(declare-fun c!100613 () Bool)

(assert (=> b!992296 (= c!100613 (= head!726 (h!22156 (_2!7531 lt!440094))))))

(declare-fun b!992297 () Bool)

(declare-fun call!42097 () List!20998)

(assert (=> b!992297 (= e!559822 call!42097)))

(declare-fun bm!42094 () Bool)

(assert (=> bm!42094 (= call!42097 (-!441 (t!29995 (_2!7531 lt!440094)) head!726))))

(declare-fun d!118075 () Bool)

(assert (=> d!118075 e!559823))

(declare-fun res!663342 () Bool)

(assert (=> d!118075 (=> (not res!663342) (not e!559823))))

(assert (=> d!118075 (= res!663342 (<= (size!30673 lt!440135) (size!30673 (_2!7531 lt!440094))))))

(assert (=> d!118075 (= lt!440135 e!559824)))

(declare-fun c!100614 () Bool)

(assert (=> d!118075 (= c!100614 (is-Cons!20994 (_2!7531 lt!440094)))))

(assert (=> d!118075 (= (-!441 (_2!7531 lt!440094) head!726) lt!440135)))

(declare-fun b!992298 () Bool)

(assert (=> b!992298 (= e!559822 (Cons!20994 (h!22156 (_2!7531 lt!440094)) call!42097))))

(assert (= (and d!118075 c!100614) b!992296))

(assert (= (and d!118075 (not c!100614)) b!992295))

(assert (= (and b!992296 c!100613) b!992297))

(assert (= (and b!992296 (not c!100613)) b!992298))

(assert (= (or b!992297 b!992298) bm!42094))

(assert (= (and d!118075 res!663342) b!992294))

(declare-fun m!920129 () Bool)

(assert (=> b!992294 m!920129))

(assert (=> b!992294 m!920095))

(assert (=> b!992294 m!920121))

(declare-fun m!920131 () Bool)

(assert (=> bm!42094 m!920131))

(declare-fun m!920133 () Bool)

(assert (=> d!118075 m!920133))

(declare-fun m!920135 () Bool)

(assert (=> d!118075 m!920135))

(assert (=> b!992212 d!118075))

(declare-fun d!118079 () Bool)

(assert (=> d!118079 (= (-!441 (_2!7531 lt!440094) head!726) (_2!7531 lt!440094))))

(declare-fun lt!440139 () Unit!32860)

(declare-fun choose!48 ((_ BitVec 64) List!20998) Unit!32860)

(assert (=> d!118079 (= lt!440139 (choose!48 head!726 (_2!7531 lt!440094)))))

(assert (=> d!118079 (not (contains!5755 (_2!7531 lt!440094) head!726))))

(assert (=> d!118079 (= (lemmaListMinusENotContainedEqualsList!0 head!726 (_2!7531 lt!440094)) lt!440139)))

(declare-fun bs!28214 () Bool)

(assert (= bs!28214 d!118079))

(assert (=> bs!28214 m!920023))

(declare-fun m!920145 () Bool)

(assert (=> bs!28214 m!920145))

(assert (=> bs!28214 m!920031))

(assert (=> b!992212 d!118079))

(declare-fun d!118081 () Bool)

(declare-fun lt!440140 () Bool)

(assert (=> d!118081 (= lt!440140 (set.member head!726 (content!441 tail!21)))))

(declare-fun e!559831 () Bool)

(assert (=> d!118081 (= lt!440140 e!559831)))

(declare-fun res!663346 () Bool)

(assert (=> d!118081 (=> (not res!663346) (not e!559831))))

(assert (=> d!118081 (= res!663346 (is-Cons!20994 tail!21))))

(assert (=> d!118081 (= (contains!5755 tail!21 head!726) lt!440140)))

(declare-fun b!992306 () Bool)

(declare-fun e!559832 () Bool)

(assert (=> b!992306 (= e!559831 e!559832)))

(declare-fun res!663347 () Bool)

(assert (=> b!992306 (=> res!663347 e!559832)))

(assert (=> b!992306 (= res!663347 (= (h!22156 tail!21) head!726))))

(declare-fun b!992307 () Bool)

(assert (=> b!992307 (= e!559832 (contains!5755 (t!29995 tail!21) head!726))))

(assert (= (and d!118081 res!663346) b!992306))

(assert (= (and b!992306 (not res!663347)) b!992307))

(assert (=> d!118081 m!920027))

(assert (=> d!118081 m!920029))

(declare-fun m!920151 () Bool)

(assert (=> b!992307 m!920151))

(assert (=> start!85050 d!118081))

(declare-fun d!118085 () Bool)

(assert (=> d!118085 (= (isEmpty!743 lt!440093) (not (is-Some!533 lt!440093)))))

(assert (=> b!992210 d!118085))

(declare-fun d!118089 () Bool)

(assert (=> d!118089 (= (unapply!10 lt!440092) (ite (is-Nil!20995 lt!440092) None!532 (Some!533 (tuple2!15043 (h!22156 lt!440092) (t!29995 lt!440092)))))))

(assert (=> b!992210 d!118089))

(declare-fun d!118091 () Bool)

(assert (=> d!118091 (= ($colon$colon!568 tail!21 head!726) (Cons!20994 head!726 tail!21))))

(assert (=> b!992210 d!118091))

(declare-fun d!118093 () Bool)

(declare-fun c!100629 () Bool)

(assert (=> d!118093 (= c!100629 (is-Nil!20995 tail!21))))

(declare-fun e!559852 () (Set (_ BitVec 64)))

(assert (=> d!118093 (= (content!441 tail!21) e!559852)))

(declare-fun b!992337 () Bool)

(assert (=> b!992337 (= e!559852 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!992338 () Bool)

(assert (=> b!992338 (= e!559852 (set.union (set.insert (h!22156 tail!21) (as set.empty (Set (_ BitVec 64)))) (content!441 (t!29995 tail!21))))))

(assert (= (and d!118093 c!100629) b!992337))

(assert (= (and d!118093 (not c!100629)) b!992338))

(declare-fun m!920183 () Bool)

(assert (=> b!992338 m!920183))

(declare-fun m!920185 () Bool)

(assert (=> b!992338 m!920185))

(assert (=> b!992209 d!118093))

(push 1)

