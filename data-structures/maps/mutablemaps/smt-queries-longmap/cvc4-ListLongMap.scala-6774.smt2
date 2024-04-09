; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85186 () Bool)

(assert start!85186)

(declare-fun b!992553 () Bool)

(declare-fun res!663493 () Bool)

(declare-fun e!559990 () Bool)

(assert (=> b!992553 (=> (not res!663493) (not e!559990))))

(declare-datatypes ((List!21009 0))(
  ( (Nil!21006) (Cons!21005 (h!22167 (_ BitVec 64)) (t!30015 List!21009)) )
))
(declare-fun lt!440205 () List!21009)

(assert (=> b!992553 (= res!663493 (not (is-Nil!21006 lt!440205)))))

(declare-fun res!663494 () Bool)

(declare-fun e!559991 () Bool)

(assert (=> start!85186 (=> (not res!663494) (not e!559991))))

(declare-fun tail!21 () List!21009)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5766 (List!21009 (_ BitVec 64)) Bool)

(assert (=> start!85186 (= res!663494 (not (contains!5766 tail!21 head!726)))))

(assert (=> start!85186 e!559991))

(assert (=> start!85186 true))

(declare-fun b!992552 () Bool)

(assert (=> b!992552 (= e!559991 e!559990)))

(declare-fun res!663495 () Bool)

(assert (=> b!992552 (=> (not res!663495) (not e!559990))))

(declare-datatypes ((tuple2!15064 0))(
  ( (tuple2!15065 (_1!7542 (_ BitVec 64)) (_2!7542 List!21009)) )
))
(declare-datatypes ((Option!545 0))(
  ( (Some!544 (v!14354 tuple2!15064)) (None!543) )
))
(declare-fun isEmpty!754 (Option!545) Bool)

(declare-fun unapply!21 (List!21009) Option!545)

(assert (=> b!992552 (= res!663495 (isEmpty!754 (unapply!21 lt!440205)))))

(declare-fun $colon$colon!579 (List!21009 (_ BitVec 64)) List!21009)

(assert (=> b!992552 (= lt!440205 ($colon$colon!579 tail!21 head!726))))

(declare-fun b!992554 () Bool)

(declare-fun -!449 (List!21009 (_ BitVec 64)) List!21009)

(assert (=> b!992554 (= e!559990 (not (= (-!449 lt!440205 head!726) tail!21)))))

(declare-fun b!992551 () Bool)

(declare-fun res!663496 () Bool)

(assert (=> b!992551 (=> (not res!663496) (not e!559991))))

(declare-fun content!452 (List!21009) (Set (_ BitVec 64)))

(assert (=> b!992551 (= res!663496 (not (member head!726 (content!452 tail!21))))))

(assert (= (and start!85186 res!663494) b!992551))

(assert (= (and b!992551 res!663496) b!992552))

(assert (= (and b!992552 res!663495) b!992553))

(assert (= (and b!992553 res!663493) b!992554))

(declare-fun m!920367 () Bool)

(assert (=> start!85186 m!920367))

(declare-fun m!920369 () Bool)

(assert (=> b!992552 m!920369))

(assert (=> b!992552 m!920369))

(declare-fun m!920371 () Bool)

(assert (=> b!992552 m!920371))

(declare-fun m!920373 () Bool)

(assert (=> b!992552 m!920373))

(declare-fun m!920375 () Bool)

(assert (=> b!992554 m!920375))

(declare-fun m!920377 () Bool)

(assert (=> b!992551 m!920377))

(declare-fun m!920379 () Bool)

(assert (=> b!992551 m!920379))

(push 1)

(assert (not b!992552))

(assert (not b!992551))

(assert (not start!85186))

(assert (not b!992554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118173 () Bool)

(assert (=> d!118173 (= (isEmpty!754 (unapply!21 lt!440205)) (not (is-Some!544 (unapply!21 lt!440205))))))

(assert (=> b!992552 d!118173))

(declare-fun d!118177 () Bool)

(assert (=> d!118177 (= (unapply!21 lt!440205) (ite (is-Nil!21006 lt!440205) None!543 (Some!544 (tuple2!15065 (h!22167 lt!440205) (t!30015 lt!440205)))))))

(assert (=> b!992552 d!118177))

(declare-fun d!118179 () Bool)

(assert (=> d!118179 (= ($colon$colon!579 tail!21 head!726) (Cons!21005 head!726 tail!21))))

(assert (=> b!992552 d!118179))

(declare-fun d!118181 () Bool)

(declare-fun c!100672 () Bool)

(assert (=> d!118181 (= c!100672 (is-Nil!21006 tail!21))))

(declare-fun e!560005 () (Set (_ BitVec 64)))

(assert (=> d!118181 (= (content!452 tail!21) e!560005)))

(declare-fun b!992573 () Bool)

(assert (=> b!992573 (= e!560005 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!992574 () Bool)

(assert (=> b!992574 (= e!560005 (union (insert (h!22167 tail!21) (as emptyset (Set (_ BitVec 64)))) (content!452 (t!30015 tail!21))))))

(assert (= (and d!118181 c!100672) b!992573))

(assert (= (and d!118181 (not c!100672)) b!992574))

(declare-fun m!920383 () Bool)

(assert (=> b!992574 m!920383))

(declare-fun m!920385 () Bool)

(assert (=> b!992574 m!920385))

(assert (=> b!992551 d!118181))

(declare-fun d!118185 () Bool)

(declare-fun lt!440216 () Bool)

(assert (=> d!118185 (= lt!440216 (member head!726 (content!452 tail!21)))))

(declare-fun e!560023 () Bool)

(assert (=> d!118185 (= lt!440216 e!560023)))

(declare-fun res!663513 () Bool)

(assert (=> d!118185 (=> (not res!663513) (not e!560023))))

(assert (=> d!118185 (= res!663513 (is-Cons!21005 tail!21))))

(assert (=> d!118185 (= (contains!5766 tail!21 head!726) lt!440216)))

(declare-fun b!992596 () Bool)

(declare-fun e!560022 () Bool)

(assert (=> b!992596 (= e!560023 e!560022)))

(declare-fun res!663512 () Bool)

(assert (=> b!992596 (=> res!663512 e!560022)))

(assert (=> b!992596 (= res!663512 (= (h!22167 tail!21) head!726))))

(declare-fun b!992597 () Bool)

(assert (=> b!992597 (= e!560022 (contains!5766 (t!30015 tail!21) head!726))))

(assert (= (and d!118185 res!663513) b!992596))

(assert (= (and b!992596 (not res!663512)) b!992597))

(assert (=> d!118185 m!920377))

(assert (=> d!118185 m!920379))

(declare-fun m!920399 () Bool)

(assert (=> b!992597 m!920399))

(assert (=> start!85186 d!118185))

(declare-fun bm!42118 () Bool)

(declare-fun call!42121 () List!21009)

(assert (=> bm!42118 (= call!42121 (-!449 (t!30015 lt!440205) head!726))))

(declare-fun b!992628 () Bool)

(declare-fun e!560045 () List!21009)

(declare-fun e!560044 () List!21009)

(assert (=> b!992628 (= e!560045 e!560044)))

(declare-fun c!100691 () Bool)

(assert (=> b!992628 (= c!100691 (= head!726 (h!22167 lt!440205)))))

(declare-fun b!992629 () Bool)

(assert (=> b!992629 (= e!560044 (Cons!21005 (h!22167 lt!440205) call!42121))))

(declare-fun e!560043 () Bool)

(declare-fun lt!440222 () List!21009)

(declare-fun b!992630 () Bool)

(assert (=> b!992630 (= e!560043 (= (content!452 lt!440222) (setminus (content!452 lt!440205) (insert head!726 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!992631 () Bool)

(assert (=> b!992631 (= e!560045 Nil!21006)))

(declare-fun d!118191 () Bool)

(assert (=> d!118191 e!560043))

(declare-fun res!663521 () Bool)

(assert (=> d!118191 (=> (not res!663521) (not e!560043))))

(declare-fun size!30680 (List!21009) Int)

(assert (=> d!118191 (= res!663521 (<= (size!30680 lt!440222) (size!30680 lt!440205)))))

(assert (=> d!118191 (= lt!440222 e!560045)))

(declare-fun c!100690 () Bool)

(assert (=> d!118191 (= c!100690 (is-Cons!21005 lt!440205))))

