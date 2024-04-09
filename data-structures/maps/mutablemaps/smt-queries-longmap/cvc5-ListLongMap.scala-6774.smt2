; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85182 () Bool)

(assert start!85182)

(declare-datatypes ((List!21007 0))(
  ( (Nil!21004) (Cons!21003 (h!22165 (_ BitVec 64)) (t!30013 List!21007)) )
))
(declare-fun tail!21 () List!21007)

(declare-fun b!992530 () Bool)

(declare-fun lt!440199 () List!21007)

(declare-fun e!559979 () Bool)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun -!447 (List!21007 (_ BitVec 64)) List!21007)

(assert (=> b!992530 (= e!559979 (not (= (-!447 lt!440199 head!726) tail!21)))))

(declare-fun res!663472 () Bool)

(declare-fun e!559978 () Bool)

(assert (=> start!85182 (=> (not res!663472) (not e!559978))))

(declare-fun contains!5764 (List!21007 (_ BitVec 64)) Bool)

(assert (=> start!85182 (= res!663472 (not (contains!5764 tail!21 head!726)))))

(assert (=> start!85182 e!559978))

(assert (=> start!85182 true))

(declare-fun b!992528 () Bool)

(assert (=> b!992528 (= e!559978 e!559979)))

(declare-fun res!663470 () Bool)

(assert (=> b!992528 (=> (not res!663470) (not e!559979))))

(declare-datatypes ((tuple2!15060 0))(
  ( (tuple2!15061 (_1!7540 (_ BitVec 64)) (_2!7540 List!21007)) )
))
(declare-datatypes ((Option!543 0))(
  ( (Some!542 (v!14352 tuple2!15060)) (None!541) )
))
(declare-fun isEmpty!752 (Option!543) Bool)

(declare-fun unapply!19 (List!21007) Option!543)

(assert (=> b!992528 (= res!663470 (isEmpty!752 (unapply!19 lt!440199)))))

(declare-fun $colon$colon!577 (List!21007 (_ BitVec 64)) List!21007)

(assert (=> b!992528 (= lt!440199 ($colon$colon!577 tail!21 head!726))))

(declare-fun b!992529 () Bool)

(declare-fun res!663469 () Bool)

(assert (=> b!992529 (=> (not res!663469) (not e!559979))))

(assert (=> b!992529 (= res!663469 (not (is-Nil!21004 lt!440199)))))

(declare-fun b!992527 () Bool)

(declare-fun res!663471 () Bool)

(assert (=> b!992527 (=> (not res!663471) (not e!559978))))

(declare-fun content!450 (List!21007) (Set (_ BitVec 64)))

(assert (=> b!992527 (= res!663471 (not (set.member head!726 (content!450 tail!21))))))

(assert (= (and start!85182 res!663472) b!992527))

(assert (= (and b!992527 res!663471) b!992528))

(assert (= (and b!992528 res!663470) b!992529))

(assert (= (and b!992529 res!663469) b!992530))

(declare-fun m!920339 () Bool)

(assert (=> b!992530 m!920339))

(declare-fun m!920341 () Bool)

(assert (=> start!85182 m!920341))

(declare-fun m!920343 () Bool)

(assert (=> b!992528 m!920343))

(assert (=> b!992528 m!920343))

(declare-fun m!920345 () Bool)

(assert (=> b!992528 m!920345))

(declare-fun m!920347 () Bool)

(assert (=> b!992528 m!920347))

(declare-fun m!920349 () Bool)

(assert (=> b!992527 m!920349))

(declare-fun m!920351 () Bool)

(assert (=> b!992527 m!920351))

(push 1)

(assert (not start!85182))

(assert (not b!992530))

(assert (not b!992528))

(assert (not b!992527))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118171 () Bool)

(declare-fun lt!440208 () Bool)

(assert (=> d!118171 (= lt!440208 (set.member head!726 (content!450 tail!21)))))

(declare-fun e!559997 () Bool)

(assert (=> d!118171 (= lt!440208 e!559997)))

(declare-fun res!663501 () Bool)

(assert (=> d!118171 (=> (not res!663501) (not e!559997))))

(assert (=> d!118171 (= res!663501 (is-Cons!21003 tail!21))))

(assert (=> d!118171 (= (contains!5764 tail!21 head!726) lt!440208)))

(declare-fun b!992559 () Bool)

(declare-fun e!559996 () Bool)

(assert (=> b!992559 (= e!559997 e!559996)))

(declare-fun res!663502 () Bool)

(assert (=> b!992559 (=> res!663502 e!559996)))

(assert (=> b!992559 (= res!663502 (= (h!22165 tail!21) head!726))))

(declare-fun b!992560 () Bool)

(assert (=> b!992560 (= e!559996 (contains!5764 (t!30013 tail!21) head!726))))

(assert (= (and d!118171 res!663501) b!992559))

(assert (= (and b!992559 (not res!663502)) b!992560))

(assert (=> d!118171 m!920349))

(assert (=> d!118171 m!920351))

(declare-fun m!920381 () Bool)

(assert (=> b!992560 m!920381))

(assert (=> start!85182 d!118171))

(declare-fun bm!42115 () Bool)

(declare-fun call!42118 () List!21007)

(assert (=> bm!42115 (= call!42118 (-!447 (t!30013 lt!440199) head!726))))

(declare-fun b!992598 () Bool)

(declare-fun e!560026 () List!21007)

(assert (=> b!992598 (= e!560026 (Cons!21003 (h!22165 lt!440199) call!42118))))

(declare-fun e!560024 () Bool)

(declare-fun lt!440217 () List!21007)

(declare-fun b!992599 () Bool)

(assert (=> b!992599 (= e!560024 (= (content!450 lt!440217) (set.minus (content!450 lt!440199) (set.insert head!726 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!992600 () Bool)

(declare-fun e!560025 () List!21007)

(assert (=> b!992600 (= e!560025 Nil!21004)))

(declare-fun b!992601 () Bool)

(assert (=> b!992601 (= e!560025 e!560026)))

(declare-fun c!100679 () Bool)

(assert (=> b!992601 (= c!100679 (= head!726 (h!22165 lt!440199)))))

(declare-fun b!992602 () Bool)

(assert (=> b!992602 (= e!560026 call!42118)))

(declare-fun d!118183 () Bool)

(assert (=> d!118183 e!560024))

(declare-fun res!663514 () Bool)

(assert (=> d!118183 (=> (not res!663514) (not e!560024))))

(declare-fun size!30679 (List!21007) Int)

(assert (=> d!118183 (= res!663514 (<= (size!30679 lt!440217) (size!30679 lt!440199)))))

(assert (=> d!118183 (= lt!440217 e!560025)))

(declare-fun c!100680 () Bool)

(assert (=> d!118183 (= c!100680 (is-Cons!21003 lt!440199))))

(assert (=> d!118183 (= (-!447 lt!440199 head!726) lt!440217)))

(assert (= (and d!118183 c!100680) b!992601))

(assert (= (and d!118183 (not c!100680)) b!992600))

(assert (= (and b!992601 c!100679) b!992602))

(assert (= (and b!992601 (not c!100679)) b!992598))

(assert (= (or b!992602 b!992598) bm!42115))

(assert (= (and d!118183 res!663514) b!992599))

(declare-fun m!920401 () Bool)

(assert (=> bm!42115 m!920401))

(declare-fun m!920403 () Bool)

(assert (=> b!992599 m!920403))

(declare-fun m!920405 () Bool)

(assert (=> b!992599 m!920405))

(declare-fun m!920407 () Bool)

(assert (=> b!992599 m!920407))

(declare-fun m!920409 () Bool)

(assert (=> d!118183 m!920409))

(declare-fun m!920411 () Bool)

(assert (=> d!118183 m!920411))

(assert (=> b!992530 d!118183))

(declare-fun d!118197 () Bool)

(assert (=> d!118197 (= (isEmpty!752 (unapply!19 lt!440199)) (not (is-Some!542 (unapply!19 lt!440199))))))

(assert (=> b!992528 d!118197))

(declare-fun d!118199 () Bool)

(assert (=> d!118199 (= (unapply!19 lt!440199) (ite (is-Nil!21004 lt!440199) None!541 (Some!542 (tuple2!15061 (h!22165 lt!440199) (t!30013 lt!440199)))))))

(assert (=> b!992528 d!118199))

(declare-fun d!118203 () Bool)

(assert (=> d!118203 (= ($colon$colon!577 tail!21 head!726) (Cons!21003 head!726 tail!21))))

(assert (=> b!992528 d!118203))

(declare-fun d!118205 () Bool)

(declare-fun c!100692 () Bool)

(assert (=> d!118205 (= c!100692 (is-Nil!21004 tail!21))))

(declare-fun e!560046 () (Set (_ BitVec 64)))

(assert (=> d!118205 (= (content!450 tail!21) e!560046)))

(declare-fun b!992632 () Bool)

(assert (=> b!992632 (= e!560046 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!992633 () Bool)

(assert (=> b!992633 (= e!560046 (set.union (set.insert (h!22165 tail!21) (as set.empty (Set (_ BitVec 64)))) (content!450 (t!30013 tail!21))))))

(assert (= (and d!118205 c!100692) b!992632))

(assert (= (and d!118205 (not c!100692)) b!992633))

(declare-fun m!920417 () Bool)

(assert (=> b!992633 m!920417))

(declare-fun m!920421 () Bool)

(assert (=> b!992633 m!920421))

(assert (=> b!992527 d!118205))

(push 1)

