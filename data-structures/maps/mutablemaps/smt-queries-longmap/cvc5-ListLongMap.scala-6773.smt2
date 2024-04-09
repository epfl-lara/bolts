; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85146 () Bool)

(assert start!85146)

(declare-fun res!663423 () Bool)

(declare-fun e!559933 () Bool)

(assert (=> start!85146 (=> (not res!663423) (not e!559933))))

(declare-datatypes ((List!21004 0))(
  ( (Nil!21001) (Cons!21000 (h!22162 (_ BitVec 64)) (t!30007 List!21004)) )
))
(declare-fun tail!21 () List!21004)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5761 (List!21004 (_ BitVec 64)) Bool)

(assert (=> start!85146 (= res!663423 (not (contains!5761 tail!21 head!726)))))

(assert (=> start!85146 e!559933))

(assert (=> start!85146 true))

(declare-fun b!992462 () Bool)

(declare-fun res!663422 () Bool)

(assert (=> b!992462 (=> (not res!663422) (not e!559933))))

(declare-fun content!447 (List!21004) (Set (_ BitVec 64)))

(assert (=> b!992462 (= res!663422 (not (set.member head!726 (content!447 tail!21))))))

(declare-fun b!992463 () Bool)

(declare-fun e!559934 () Bool)

(assert (=> b!992463 (= e!559933 e!559934)))

(declare-fun res!663424 () Bool)

(assert (=> b!992463 (=> (not res!663424) (not e!559934))))

(declare-fun lt!440181 () List!21004)

(declare-datatypes ((tuple2!15054 0))(
  ( (tuple2!15055 (_1!7537 (_ BitVec 64)) (_2!7537 List!21004)) )
))
(declare-datatypes ((Option!540 0))(
  ( (Some!539 (v!14346 tuple2!15054)) (None!538) )
))
(declare-fun isEmpty!749 (Option!540) Bool)

(declare-fun unapply!16 (List!21004) Option!540)

(assert (=> b!992463 (= res!663424 (isEmpty!749 (unapply!16 lt!440181)))))

(declare-fun $colon$colon!574 (List!21004 (_ BitVec 64)) List!21004)

(assert (=> b!992463 (= lt!440181 ($colon$colon!574 tail!21 head!726))))

(declare-fun b!992464 () Bool)

(assert (=> b!992464 (= e!559934 (not (is-Nil!21001 lt!440181)))))

(assert (= (and start!85146 res!663423) b!992462))

(assert (= (and b!992462 res!663422) b!992463))

(assert (= (and b!992463 res!663424) b!992464))

(declare-fun m!920285 () Bool)

(assert (=> start!85146 m!920285))

(declare-fun m!920287 () Bool)

(assert (=> b!992462 m!920287))

(declare-fun m!920289 () Bool)

(assert (=> b!992462 m!920289))

(declare-fun m!920291 () Bool)

(assert (=> b!992463 m!920291))

(assert (=> b!992463 m!920291))

(declare-fun m!920293 () Bool)

(assert (=> b!992463 m!920293))

(declare-fun m!920295 () Bool)

(assert (=> b!992463 m!920295))

(push 1)

(assert (not b!992462))

(assert (not b!992463))

(assert (not start!85146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118139 () Bool)

(declare-fun c!100661 () Bool)

(assert (=> d!118139 (= c!100661 (is-Nil!21001 tail!21))))

(declare-fun e!559951 () (Set (_ BitVec 64)))

(assert (=> d!118139 (= (content!447 tail!21) e!559951)))

(declare-fun b!992491 () Bool)

(assert (=> b!992491 (= e!559951 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!992492 () Bool)

(assert (=> b!992492 (= e!559951 (set.union (set.insert (h!22162 tail!21) (as set.empty (Set (_ BitVec 64)))) (content!447 (t!30007 tail!21))))))

(assert (= (and d!118139 c!100661) b!992491))

(assert (= (and d!118139 (not c!100661)) b!992492))

(declare-fun m!920321 () Bool)

(assert (=> b!992492 m!920321))

(declare-fun m!920323 () Bool)

(assert (=> b!992492 m!920323))

(assert (=> b!992462 d!118139))

(declare-fun d!118149 () Bool)

(assert (=> d!118149 (= (isEmpty!749 (unapply!16 lt!440181)) (not (is-Some!539 (unapply!16 lt!440181))))))

(assert (=> b!992463 d!118149))

(declare-fun d!118155 () Bool)

(assert (=> d!118155 (= (unapply!16 lt!440181) (ite (is-Nil!21001 lt!440181) None!538 (Some!539 (tuple2!15055 (h!22162 lt!440181) (t!30007 lt!440181)))))))

(assert (=> b!992463 d!118155))

(declare-fun d!118157 () Bool)

(assert (=> d!118157 (= ($colon$colon!574 tail!21 head!726) (Cons!21000 head!726 tail!21))))

(assert (=> b!992463 d!118157))

(declare-fun d!118159 () Bool)

(declare-fun lt!440195 () Bool)

(assert (=> d!118159 (= lt!440195 (set.member head!726 (content!447 tail!21)))))

(declare-fun e!559970 () Bool)

(assert (=> d!118159 (= lt!440195 e!559970)))

(declare-fun res!663458 () Bool)

(assert (=> d!118159 (=> (not res!663458) (not e!559970))))

(assert (=> d!118159 (= res!663458 (is-Cons!21000 tail!21))))

(assert (=> d!118159 (= (contains!5761 tail!21 head!726) lt!440195)))

(declare-fun b!992515 () Bool)

(declare-fun e!559971 () Bool)

(assert (=> b!992515 (= e!559970 e!559971)))

(declare-fun res!663457 () Bool)

(assert (=> b!992515 (=> res!663457 e!559971)))

(assert (=> b!992515 (= res!663457 (= (h!22162 tail!21) head!726))))

(declare-fun b!992516 () Bool)

(assert (=> b!992516 (= e!559971 (contains!5761 (t!30007 tail!21) head!726))))

(assert (= (and d!118159 res!663458) b!992515))

(assert (= (and b!992515 (not res!663457)) b!992516))

(assert (=> d!118159 m!920287))

(assert (=> d!118159 m!920289))

(declare-fun m!920335 () Bool)

(assert (=> b!992516 m!920335))

(assert (=> start!85146 d!118159))

(push 1)

