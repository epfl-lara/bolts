; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85104 () Bool)

(assert start!85104)

(declare-fun res!663361 () Bool)

(declare-fun e!559858 () Bool)

(assert (=> start!85104 (=> (not res!663361) (not e!559858))))

(declare-datatypes ((List!21001 0))(
  ( (Nil!20998) (Cons!20997 (h!22159 (_ BitVec 64)) (t!30001 List!21001)) )
))
(declare-fun tail!21 () List!21001)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5758 (List!21001 (_ BitVec 64)) Bool)

(assert (=> start!85104 (= res!663361 (not (contains!5758 tail!21 head!726)))))

(assert (=> start!85104 e!559858))

(assert (=> start!85104 true))

(declare-fun b!992349 () Bool)

(declare-fun res!663364 () Bool)

(declare-fun e!559859 () Bool)

(assert (=> b!992349 (=> (not res!663364) (not e!559859))))

(declare-fun lt!440154 () List!21001)

(assert (=> b!992349 (= res!663364 (is-Nil!20998 lt!440154))))

(declare-fun b!992347 () Bool)

(declare-fun res!663363 () Bool)

(assert (=> b!992347 (=> (not res!663363) (not e!559858))))

(declare-fun content!444 (List!21001) (Set (_ BitVec 64)))

(assert (=> b!992347 (= res!663363 (not (set.member head!726 (content!444 tail!21))))))

(declare-fun b!992350 () Bool)

(declare-fun -!444 (List!21001 (_ BitVec 64)) List!21001)

(assert (=> b!992350 (= e!559859 (not (= (-!444 lt!440154 head!726) tail!21)))))

(declare-fun b!992348 () Bool)

(assert (=> b!992348 (= e!559858 e!559859)))

(declare-fun res!663362 () Bool)

(assert (=> b!992348 (=> (not res!663362) (not e!559859))))

(declare-datatypes ((tuple2!15048 0))(
  ( (tuple2!15049 (_1!7534 (_ BitVec 64)) (_2!7534 List!21001)) )
))
(declare-datatypes ((Option!537 0))(
  ( (Some!536 (v!14340 tuple2!15048)) (None!535) )
))
(declare-fun isEmpty!746 (Option!537) Bool)

(declare-fun unapply!13 (List!21001) Option!537)

(assert (=> b!992348 (= res!663362 (isEmpty!746 (unapply!13 lt!440154)))))

(declare-fun $colon$colon!571 (List!21001 (_ BitVec 64)) List!21001)

(assert (=> b!992348 (= lt!440154 ($colon$colon!571 tail!21 head!726))))

(assert (= (and start!85104 res!663361) b!992347))

(assert (= (and b!992347 res!663363) b!992348))

(assert (= (and b!992348 res!663362) b!992349))

(assert (= (and b!992349 res!663364) b!992350))

(declare-fun m!920189 () Bool)

(assert (=> start!85104 m!920189))

(declare-fun m!920191 () Bool)

(assert (=> b!992347 m!920191))

(declare-fun m!920193 () Bool)

(assert (=> b!992347 m!920193))

(declare-fun m!920195 () Bool)

(assert (=> b!992350 m!920195))

(declare-fun m!920197 () Bool)

(assert (=> b!992348 m!920197))

(assert (=> b!992348 m!920197))

(declare-fun m!920199 () Bool)

(assert (=> b!992348 m!920199))

(declare-fun m!920201 () Bool)

(assert (=> b!992348 m!920201))

(push 1)

(assert (not start!85104))

(assert (not b!992348))

(assert (not b!992350))

(assert (not b!992347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118101 () Bool)

(declare-fun lt!440163 () Bool)

(assert (=> d!118101 (= lt!440163 (set.member head!726 (content!444 tail!21)))))

(declare-fun e!559878 () Bool)

(assert (=> d!118101 (= lt!440163 e!559878)))

(declare-fun res!663394 () Bool)

(assert (=> d!118101 (=> (not res!663394) (not e!559878))))

(assert (=> d!118101 (= res!663394 (is-Cons!20997 tail!21))))

(assert (=> d!118101 (= (contains!5758 tail!21 head!726) lt!440163)))

(declare-fun b!992383 () Bool)

(declare-fun e!559879 () Bool)

(assert (=> b!992383 (= e!559878 e!559879)))

(declare-fun res!663393 () Bool)

(assert (=> b!992383 (=> res!663393 e!559879)))

(assert (=> b!992383 (= res!663393 (= (h!22159 tail!21) head!726))))

(declare-fun b!992384 () Bool)

(assert (=> b!992384 (= e!559879 (contains!5758 (t!30001 tail!21) head!726))))

(assert (= (and d!118101 res!663394) b!992383))

(assert (= (and b!992383 (not res!663393)) b!992384))

(assert (=> d!118101 m!920191))

(assert (=> d!118101 m!920193))

(declare-fun m!920231 () Bool)

(assert (=> b!992384 m!920231))

(assert (=> start!85104 d!118101))

(declare-fun d!118107 () Bool)

(assert (=> d!118107 (= (isEmpty!746 (unapply!13 lt!440154)) (not (is-Some!536 (unapply!13 lt!440154))))))

(assert (=> b!992348 d!118107))

(declare-fun d!118111 () Bool)

(assert (=> d!118111 (= (unapply!13 lt!440154) (ite (is-Nil!20998 lt!440154) None!535 (Some!536 (tuple2!15049 (h!22159 lt!440154) (t!30001 lt!440154)))))))

(assert (=> b!992348 d!118111))

(declare-fun d!118113 () Bool)

(assert (=> d!118113 (= ($colon$colon!571 tail!21 head!726) (Cons!20997 head!726 tail!21))))

(assert (=> b!992348 d!118113))

(declare-fun b!992428 () Bool)

(declare-fun e!559912 () List!21001)

(assert (=> b!992428 (= e!559912 Nil!20998)))

(declare-fun b!992430 () Bool)

(declare-fun e!559911 () List!21001)

(declare-fun call!42109 () List!21001)

(assert (=> b!992430 (= e!559911 call!42109)))

(declare-fun bm!42106 () Bool)

(assert (=> bm!42106 (= call!42109 (-!444 (t!30001 lt!440154) head!726))))

(declare-fun e!559913 () Bool)

(declare-fun lt!440174 () List!21001)

(declare-fun b!992431 () Bool)

(assert (=> b!992431 (= e!559913 (= (content!444 lt!440174) (set.minus (content!444 lt!440154) (set.insert head!726 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!992432 () Bool)

(assert (=> b!992432 (= e!559912 e!559911)))

(declare-fun c!100647 () Bool)

(assert (=> b!992432 (= c!100647 (= head!726 (h!22159 lt!440154)))))

(declare-fun b!992429 () Bool)

(assert (=> b!992429 (= e!559911 (Cons!20997 (h!22159 lt!440154) call!42109))))

(declare-fun d!118115 () Bool)

(assert (=> d!118115 e!559913))

(declare-fun res!663410 () Bool)

(assert (=> d!118115 (=> (not res!663410) (not e!559913))))

(declare-fun size!30677 (List!21001) Int)

(assert (=> d!118115 (= res!663410 (<= (size!30677 lt!440174) (size!30677 lt!440154)))))

(assert (=> d!118115 (= lt!440174 e!559912)))

(declare-fun c!100646 () Bool)

(assert (=> d!118115 (= c!100646 (is-Cons!20997 lt!440154))))

(assert (=> d!118115 (= (-!444 lt!440154 head!726) lt!440174)))

(assert (= (and d!118115 c!100646) b!992432))

(assert (= (and d!118115 (not c!100646)) b!992428))

(assert (= (and b!992432 c!100647) b!992430))

(assert (= (and b!992432 (not c!100647)) b!992429))

(assert (= (or b!992430 b!992429) bm!42106))

(assert (= (and d!118115 res!663410) b!992431))

(declare-fun m!920255 () Bool)

(assert (=> bm!42106 m!920255))

(declare-fun m!920257 () Bool)

(assert (=> b!992431 m!920257))

(declare-fun m!920259 () Bool)

(assert (=> b!992431 m!920259))

(declare-fun m!920261 () Bool)

(assert (=> b!992431 m!920261))

(declare-fun m!920263 () Bool)

(assert (=> d!118115 m!920263))

(declare-fun m!920265 () Bool)

(assert (=> d!118115 m!920265))

(assert (=> b!992350 d!118115))

(declare-fun d!118129 () Bool)

(declare-fun c!100654 () Bool)

(assert (=> d!118129 (= c!100654 (is-Nil!20998 tail!21))))

(declare-fun e!559925 () (Set (_ BitVec 64)))

(assert (=> d!118129 (= (content!444 tail!21) e!559925)))

(declare-fun b!992449 () Bool)

(assert (=> b!992449 (= e!559925 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!992450 () Bool)

(assert (=> b!992450 (= e!559925 (set.union (set.insert (h!22159 tail!21) (as set.empty (Set (_ BitVec 64)))) (content!444 (t!30001 tail!21))))))

(assert (= (and d!118129 c!100654) b!992449))

(assert (= (and d!118129 (not c!100654)) b!992450))

(declare-fun m!920269 () Bool)

(assert (=> b!992450 m!920269))

(declare-fun m!920271 () Bool)

(assert (=> b!992450 m!920271))

(assert (=> b!992347 d!118129))

(push 1)

