; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85150 () Bool)

(assert start!85150)

(declare-fun res!663442 () Bool)

(declare-fun e!559945 () Bool)

(assert (=> start!85150 (=> (not res!663442) (not e!559945))))

(declare-datatypes ((List!21006 0))(
  ( (Nil!21003) (Cons!21002 (h!22164 (_ BitVec 64)) (t!30009 List!21006)) )
))
(declare-fun tail!21 () List!21006)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5763 (List!21006 (_ BitVec 64)) Bool)

(assert (=> start!85150 (= res!663442 (not (contains!5763 tail!21 head!726)))))

(assert (=> start!85150 e!559945))

(assert (=> start!85150 true))

(declare-fun b!992480 () Bool)

(declare-fun res!663440 () Bool)

(assert (=> b!992480 (=> (not res!663440) (not e!559945))))

(declare-fun content!449 (List!21006) (Set (_ BitVec 64)))

(assert (=> b!992480 (= res!663440 (not (member head!726 (content!449 tail!21))))))

(declare-fun b!992481 () Bool)

(declare-fun e!559946 () Bool)

(assert (=> b!992481 (= e!559945 e!559946)))

(declare-fun res!663441 () Bool)

(assert (=> b!992481 (=> (not res!663441) (not e!559946))))

(declare-fun lt!440187 () List!21006)

(declare-datatypes ((tuple2!15058 0))(
  ( (tuple2!15059 (_1!7539 (_ BitVec 64)) (_2!7539 List!21006)) )
))
(declare-datatypes ((Option!542 0))(
  ( (Some!541 (v!14348 tuple2!15058)) (None!540) )
))
(declare-fun isEmpty!751 (Option!542) Bool)

(declare-fun unapply!18 (List!21006) Option!542)

(assert (=> b!992481 (= res!663441 (isEmpty!751 (unapply!18 lt!440187)))))

(declare-fun $colon$colon!576 (List!21006 (_ BitVec 64)) List!21006)

(assert (=> b!992481 (= lt!440187 ($colon$colon!576 tail!21 head!726))))

(declare-fun b!992482 () Bool)

(assert (=> b!992482 (= e!559946 (not (is-Nil!21003 lt!440187)))))

(assert (= (and start!85150 res!663442) b!992480))

(assert (= (and b!992480 res!663440) b!992481))

(assert (= (and b!992481 res!663441) b!992482))

(declare-fun m!920309 () Bool)

(assert (=> start!85150 m!920309))

(declare-fun m!920311 () Bool)

(assert (=> b!992480 m!920311))

(declare-fun m!920313 () Bool)

(assert (=> b!992480 m!920313))

(declare-fun m!920315 () Bool)

(assert (=> b!992481 m!920315))

(assert (=> b!992481 m!920315))

(declare-fun m!920317 () Bool)

(assert (=> b!992481 m!920317))

(declare-fun m!920319 () Bool)

(assert (=> b!992481 m!920319))

(push 1)

(assert (not b!992480))

(assert (not start!85150))

(assert (not b!992481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118143 () Bool)

(declare-fun c!100662 () Bool)

(assert (=> d!118143 (= c!100662 (is-Nil!21003 tail!21))))

(declare-fun e!559952 () (Set (_ BitVec 64)))

(assert (=> d!118143 (= (content!449 tail!21) e!559952)))

(declare-fun b!992493 () Bool)

(assert (=> b!992493 (= e!559952 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!992494 () Bool)

(assert (=> b!992494 (= e!559952 (union (insert (h!22164 tail!21) (as emptyset (Set (_ BitVec 64)))) (content!449 (t!30009 tail!21))))))

(assert (= (and d!118143 c!100662) b!992493))

(assert (= (and d!118143 (not c!100662)) b!992494))

(declare-fun m!920325 () Bool)

(assert (=> b!992494 m!920325))

(declare-fun m!920327 () Bool)

(assert (=> b!992494 m!920327))

(assert (=> b!992480 d!118143))

(declare-fun d!118151 () Bool)

(declare-fun lt!440190 () Bool)

(assert (=> d!118151 (= lt!440190 (member head!726 (content!449 tail!21)))))

(declare-fun e!559961 () Bool)

(assert (=> d!118151 (= lt!440190 e!559961)))

(declare-fun res!663448 () Bool)

(assert (=> d!118151 (=> (not res!663448) (not e!559961))))

(assert (=> d!118151 (= res!663448 (is-Cons!21002 tail!21))))

(assert (=> d!118151 (= (contains!5763 tail!21 head!726) lt!440190)))

(declare-fun b!992505 () Bool)

(declare-fun e!559960 () Bool)

(assert (=> b!992505 (= e!559961 e!559960)))

(declare-fun res!663447 () Bool)

(assert (=> b!992505 (=> res!663447 e!559960)))

(assert (=> b!992505 (= res!663447 (= (h!22164 tail!21) head!726))))

(declare-fun b!992506 () Bool)

(assert (=> b!992506 (= e!559960 (contains!5763 (t!30009 tail!21) head!726))))

(assert (= (and d!118151 res!663448) b!992505))

(assert (= (and b!992505 (not res!663447)) b!992506))

(assert (=> d!118151 m!920311))

