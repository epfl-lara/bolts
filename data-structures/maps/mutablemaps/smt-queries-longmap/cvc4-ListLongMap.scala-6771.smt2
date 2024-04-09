; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85054 () Bool)

(assert start!85054)

(declare-fun b!992233 () Bool)

(declare-fun res!663316 () Bool)

(declare-fun e!559777 () Bool)

(assert (=> b!992233 (=> (not res!663316) (not e!559777))))

(declare-fun head!726 () (_ BitVec 64))

(declare-datatypes ((List!21000 0))(
  ( (Nil!20997) (Cons!20996 (h!22158 (_ BitVec 64)) (t!29997 List!21000)) )
))
(declare-fun tail!21 () List!21000)

(declare-fun content!443 (List!21000) (Set (_ BitVec 64)))

(assert (=> b!992233 (= res!663316 (not (member head!726 (content!443 tail!21))))))

(declare-fun b!992235 () Bool)

(declare-fun e!559778 () Bool)

(declare-fun e!559776 () Bool)

(assert (=> b!992235 (= e!559778 e!559776)))

(declare-fun res!663315 () Bool)

(assert (=> b!992235 (=> (not res!663315) (not e!559776))))

(declare-datatypes ((tuple2!15046 0))(
  ( (tuple2!15047 (_1!7533 (_ BitVec 64)) (_2!7533 List!21000)) )
))
(declare-fun lt!440115 () tuple2!15046)

(declare-fun contains!5757 (List!21000 (_ BitVec 64)) Bool)

(assert (=> b!992235 (= res!663315 (not (contains!5757 (_2!7533 lt!440115) head!726)))))

(declare-datatypes ((Option!536 0))(
  ( (Some!535 (v!14336 tuple2!15046)) (None!534) )
))
(declare-fun lt!440117 () Option!536)

(declare-fun get!15706 (Option!536) tuple2!15046)

(assert (=> b!992235 (= lt!440115 (get!15706 lt!440117))))

(declare-fun b!992234 () Bool)

(assert (=> b!992234 (= e!559777 e!559778)))

(declare-fun res!663314 () Bool)

(assert (=> b!992234 (=> (not res!663314) (not e!559778))))

(declare-fun isEmpty!745 (Option!536) Bool)

(assert (=> b!992234 (= res!663314 (not (isEmpty!745 lt!440117)))))

(declare-fun lt!440116 () List!21000)

(declare-fun unapply!12 (List!21000) Option!536)

(assert (=> b!992234 (= lt!440117 (unapply!12 lt!440116))))

(declare-fun $colon$colon!570 (List!21000 (_ BitVec 64)) List!21000)

(assert (=> b!992234 (= lt!440116 ($colon$colon!570 tail!21 head!726))))

(declare-fun b!992236 () Bool)

(declare-fun -!443 (List!21000 (_ BitVec 64)) List!21000)

(assert (=> b!992236 (= e!559776 (not (= (-!443 lt!440116 head!726) tail!21)))))

(assert (=> b!992236 (= (-!443 (_2!7533 lt!440115) head!726) (_2!7533 lt!440115))))

(declare-datatypes ((Unit!32864 0))(
  ( (Unit!32865) )
))
(declare-fun lt!440118 () Unit!32864)

(declare-fun lemmaListMinusENotContainedEqualsList!0 ((_ BitVec 64) List!21000) Unit!32864)

(assert (=> b!992236 (= lt!440118 (lemmaListMinusENotContainedEqualsList!0 head!726 (_2!7533 lt!440115)))))

(declare-fun res!663313 () Bool)

(assert (=> start!85054 (=> (not res!663313) (not e!559777))))

(assert (=> start!85054 (= res!663313 (not (contains!5757 tail!21 head!726)))))

(assert (=> start!85054 e!559777))

(assert (=> start!85054 true))

(assert (= (and start!85054 res!663313) b!992233))

(assert (= (and b!992233 res!663316) b!992234))

(assert (= (and b!992234 res!663314) b!992235))

(assert (= (and b!992235 res!663315) b!992236))

(declare-fun m!920065 () Bool)

(assert (=> start!85054 m!920065))

(declare-fun m!920067 () Bool)

(assert (=> b!992236 m!920067))

(declare-fun m!920069 () Bool)

(assert (=> b!992236 m!920069))

(declare-fun m!920071 () Bool)

(assert (=> b!992236 m!920071))

(declare-fun m!920073 () Bool)

(assert (=> b!992235 m!920073))

(declare-fun m!920075 () Bool)

(assert (=> b!992235 m!920075))

(declare-fun m!920077 () Bool)

(assert (=> b!992233 m!920077))

(declare-fun m!920079 () Bool)

(assert (=> b!992233 m!920079))

(declare-fun m!920081 () Bool)

(assert (=> b!992234 m!920081))

(declare-fun m!920083 () Bool)

(assert (=> b!992234 m!920083))

(declare-fun m!920085 () Bool)

(assert (=> b!992234 m!920085))

(push 1)

(assert (not b!992233))

(assert (not b!992235))

(assert (not start!85054))

(assert (not b!992234))

(assert (not b!992236))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118043 () Bool)

(declare-fun lt!440128 () Bool)

(assert (=> d!118043 (= lt!440128 (member head!726 (content!443 (_2!7533 lt!440115))))))

(declare-fun e!559797 () Bool)

(assert (=> d!118043 (= lt!440128 e!559797)))

(declare-fun res!663335 () Bool)

(assert (=> d!118043 (=> (not res!663335) (not e!559797))))

(assert (=> d!118043 (= res!663335 (is-Cons!20996 (_2!7533 lt!440115)))))

(assert (=> d!118043 (= (contains!5757 (_2!7533 lt!440115) head!726) lt!440128)))

(declare-fun b!992255 () Bool)

(declare-fun e!559798 () Bool)

(assert (=> b!992255 (= e!559797 e!559798)))

(declare-fun res!663336 () Bool)

(assert (=> b!992255 (=> res!663336 e!559798)))

(assert (=> b!992255 (= res!663336 (= (h!22158 (_2!7533 lt!440115)) head!726))))

(declare-fun b!992256 () Bool)

(assert (=> b!992256 (= e!559798 (contains!5757 (t!29997 (_2!7533 lt!440115)) head!726))))

(assert (= (and d!118043 res!663335) b!992255))

(assert (= (and b!992255 (not res!663336)) b!992256))

(declare-fun m!920101 () Bool)

(assert (=> d!118043 m!920101))

(declare-fun m!920103 () Bool)

(assert (=> d!118043 m!920103))

(declare-fun m!920105 () Bool)

(assert (=> b!992256 m!920105))

(assert (=> b!992235 d!118043))

(declare-fun d!118061 () Bool)

(assert (=> d!118061 (= (get!15706 lt!440117) (v!14336 lt!440117))))

(assert (=> b!992235 d!118061))

(declare-fun d!118063 () Bool)

(declare-fun c!100606 () Bool)

(assert (=> d!118063 (= c!100606 (is-Nil!20997 tail!21))))

(declare-fun e!559809 () (Set (_ BitVec 64)))

(assert (=> d!118063 (= (content!443 tail!21) e!559809)))

(declare-fun b!992275 () Bool)

(assert (=> b!992275 (= e!559809 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!992276 () Bool)

(assert (=> b!992276 (= e!559809 (union (insert (h!22158 tail!21) (as emptyset (Set (_ BitVec 64)))) (content!443 (t!29997 tail!21))))))

(assert (= (and d!118063 c!100606) b!992275))

(assert (= (and d!118063 (not c!100606)) b!992276))

(declare-fun m!920111 () Bool)

(assert (=> b!992276 m!920111))

(declare-fun m!920113 () Bool)

(assert (=> b!992276 m!920113))

(assert (=> b!992233 d!118063))

(declare-fun d!118067 () Bool)

(declare-fun lt!440131 () Bool)

(assert (=> d!118067 (= lt!440131 (member head!726 (content!443 tail!21)))))

(declare-fun e!559810 () Bool)

(assert (=> d!118067 (= lt!440131 e!559810)))

(declare-fun res!663337 () Bool)

(assert (=> d!118067 (=> (not res!663337) (not e!559810))))

(assert (=> d!118067 (= res!663337 (is-Cons!20996 tail!21))))

(assert (=> d!118067 (= (contains!5757 tail!21 head!726) lt!440131)))

(declare-fun b!992277 () Bool)

(declare-fun e!559811 () Bool)

(assert (=> b!992277 (= e!559810 e!559811)))

(declare-fun res!663338 () Bool)

(assert (=> b!992277 (=> res!663338 e!559811)))

(assert (=> b!992277 (= res!663338 (= (h!22158 tail!21) head!726))))

(declare-fun b!992278 () Bool)

(assert (=> b!992278 (= e!559811 (contains!5757 (t!29997 tail!21) head!726))))

(assert (= (and d!118067 res!663337) b!992277))

(assert (= (and b!992277 (not res!663338)) b!992278))

(assert (=> d!118067 m!920077))

(assert (=> d!118067 m!920079))

(declare-fun m!920115 () Bool)

(assert (=> b!992278 m!920115))

(assert (=> start!85054 d!118067))

(declare-fun d!118069 () Bool)

(assert (=> d!118069 (= (isEmpty!745 lt!440117) (not (is-Some!535 lt!440117)))))

(assert (=> b!992234 d!118069))

(declare-fun d!118071 () Bool)

(assert (=> d!118071 (= (unapply!12 lt!440116) (ite (is-Nil!20997 lt!440116) None!534 (Some!535 (tuple2!15047 (h!22158 lt!440116) (t!29997 lt!440116)))))))

(assert (=> b!992234 d!118071))

(declare-fun d!118073 () Bool)

(assert (=> d!118073 (= ($colon$colon!570 tail!21 head!726) (Cons!20996 head!726 tail!21))))

(assert (=> b!992234 d!118073))

(declare-fun b!992323 () Bool)

(declare-fun e!559846 () List!21000)

(declare-fun call!42102 () List!21000)

(assert (=> b!992323 (= e!559846 (Cons!20996 (h!22158 lt!440116) call!42102))))

(declare-fun b!992324 () Bool)

(assert (=> b!992324 (= e!559846 call!42102)))

(declare-fun d!118077 () Bool)

(declare-fun e!559845 () Bool)

(assert (=> d!118077 e!559845))

(declare-fun res!663351 () Bool)

(assert (=> d!118077 (=> (not res!663351) (not e!559845))))

(declare-fun lt!440147 () List!21000)

(declare-fun size!30675 (List!21000) Int)

(assert (=> d!118077 (= res!663351 (<= (size!30675 lt!440147) (size!30675 lt!440116)))))

(declare-fun e!559844 () List!21000)

(assert (=> d!118077 (= lt!440147 e!559844)))

(declare-fun c!100623 () Bool)

(assert (=> d!118077 (= c!100623 (is-Cons!20996 lt!440116))))

(assert (=> d!118077 (= (-!443 lt!440116 head!726) lt!440147)))

(declare-fun b!992325 () Bool)

(assert (=> b!992325 (= e!559844 e!559846)))

(declare-fun c!100624 () Bool)

(assert (=> b!992325 (= c!100624 (= head!726 (h!22158 lt!440116)))))

(declare-fun b!992326 () Bool)

(assert (=> b!992326 (= e!559845 (= (content!443 lt!440147) (setminus (content!443 lt!440116) (insert head!726 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!992327 () Bool)

(assert (=> b!992327 (= e!559844 Nil!20997)))

(declare-fun bm!42099 () Bool)

(assert (=> bm!42099 (= call!42102 (-!443 (t!29997 lt!440116) head!726))))

(assert (= (and d!118077 c!100623) b!992325))

(assert (= (and d!118077 (not c!100623)) b!992327))

(assert (= (and b!992325 c!100624) b!992324))

(assert (= (and b!992325 (not c!100624)) b!992323))

(assert (= (or b!992324 b!992323) bm!42099))

(assert (= (and d!118077 res!663351) b!992326))

(declare-fun m!920163 () Bool)

(assert (=> d!118077 m!920163))

(declare-fun m!920165 () Bool)

(assert (=> d!118077 m!920165))

(declare-fun m!920167 () Bool)

(assert (=> b!992326 m!920167))

(declare-fun m!920169 () Bool)

(assert (=> b!992326 m!920169))

(declare-fun m!920171 () Bool)

(assert (=> b!992326 m!920171))

(declare-fun m!920173 () Bool)

(assert (=> bm!42099 m!920173))

(assert (=> b!992236 d!118077))

(declare-fun b!992332 () Bool)

(declare-fun e!559851 () List!21000)

(declare-fun call!42103 () List!21000)

(assert (=> b!992332 (= e!559851 (Cons!20996 (h!22158 (_2!7533 lt!440115)) call!42103))))

(declare-fun b!992333 () Bool)

(assert (=> b!992333 (= e!559851 call!42103)))

(declare-fun d!118095 () Bool)

(declare-fun e!559850 () Bool)

(assert (=> d!118095 e!559850))

(declare-fun res!663352 () Bool)

(assert (=> d!118095 (=> (not res!663352) (not e!559850))))

(declare-fun lt!440148 () List!21000)

(assert (=> d!118095 (= res!663352 (<= (size!30675 lt!440148) (size!30675 (_2!7533 lt!440115))))))

(declare-fun e!559849 () List!21000)

(assert (=> d!118095 (= lt!440148 e!559849)))

(declare-fun c!100627 () Bool)

(assert (=> d!118095 (= c!100627 (is-Cons!20996 (_2!7533 lt!440115)))))

(assert (=> d!118095 (= (-!443 (_2!7533 lt!440115) head!726) lt!440148)))

(declare-fun b!992334 () Bool)

(assert (=> b!992334 (= e!559849 e!559851)))

(declare-fun c!100628 () Bool)

(assert (=> b!992334 (= c!100628 (= head!726 (h!22158 (_2!7533 lt!440115))))))

(declare-fun b!992335 () Bool)

(assert (=> b!992335 (= e!559850 (= (content!443 lt!440148) (setminus (content!443 (_2!7533 lt!440115)) (insert head!726 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!992336 () Bool)

(assert (=> b!992336 (= e!559849 Nil!20997)))

(declare-fun bm!42100 () Bool)

(assert (=> bm!42100 (= call!42103 (-!443 (t!29997 (_2!7533 lt!440115)) head!726))))

(assert (= (and d!118095 c!100627) b!992334))

(assert (= (and d!118095 (not c!100627)) b!992336))

(assert (= (and b!992334 c!100628) b!992333))

(assert (= (and b!992334 (not c!100628)) b!992332))

