; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85012 () Bool)

(assert start!85012)

(declare-fun res!663254 () Bool)

(declare-fun e!559718 () Bool)

(assert (=> start!85012 (=> (not res!663254) (not e!559718))))

(declare-datatypes ((List!20997 0))(
  ( (Nil!20994) (Cons!20993 (h!22155 (_ BitVec 64)) (t!29991 List!20997)) )
))
(declare-fun tail!21 () List!20997)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5754 (List!20997 (_ BitVec 64)) Bool)

(assert (=> start!85012 (= res!663254 (not (contains!5754 tail!21 head!726)))))

(assert (=> start!85012 e!559718))

(assert (=> start!85012 true))

(declare-fun b!992156 () Bool)

(declare-fun res!663256 () Bool)

(assert (=> b!992156 (=> (not res!663256) (not e!559718))))

(declare-fun content!440 (List!20997) (Set (_ BitVec 64)))

(assert (=> b!992156 (= res!663256 (not (member head!726 (content!440 tail!21))))))

(declare-fun b!992157 () Bool)

(declare-fun e!559717 () Bool)

(assert (=> b!992157 (= e!559718 e!559717)))

(declare-fun res!663255 () Bool)

(assert (=> b!992157 (=> (not res!663255) (not e!559717))))

(declare-datatypes ((tuple2!15040 0))(
  ( (tuple2!15041 (_1!7530 (_ BitVec 64)) (_2!7530 List!20997)) )
))
(declare-datatypes ((Option!533 0))(
  ( (Some!532 (v!14330 tuple2!15040)) (None!531) )
))
(declare-fun lt!440070 () Option!533)

(declare-fun isEmpty!742 (Option!533) Bool)

(assert (=> b!992157 (= res!663255 (not (isEmpty!742 lt!440070)))))

(declare-fun unapply!9 (List!20997) Option!533)

(declare-fun $colon$colon!567 (List!20997 (_ BitVec 64)) List!20997)

(assert (=> b!992157 (= lt!440070 (unapply!9 ($colon$colon!567 tail!21 head!726)))))

(declare-fun b!992158 () Bool)

(declare-fun get!15701 (Option!533) tuple2!15040)

(assert (=> b!992158 (= e!559717 (contains!5754 (_2!7530 (get!15701 lt!440070)) head!726))))

(assert (= (and start!85012 res!663254) b!992156))

(assert (= (and b!992156 res!663256) b!992157))

(assert (= (and b!992157 res!663255) b!992158))

(declare-fun m!919969 () Bool)

(assert (=> start!85012 m!919969))

(declare-fun m!919971 () Bool)

(assert (=> b!992156 m!919971))

(declare-fun m!919973 () Bool)

(assert (=> b!992156 m!919973))

(declare-fun m!919975 () Bool)

(assert (=> b!992157 m!919975))

(declare-fun m!919977 () Bool)

(assert (=> b!992157 m!919977))

(assert (=> b!992157 m!919977))

(declare-fun m!919979 () Bool)

(assert (=> b!992157 m!919979))

(declare-fun m!919981 () Bool)

(assert (=> b!992158 m!919981))

(declare-fun m!919983 () Bool)

(assert (=> b!992158 m!919983))

(push 1)

(assert (not start!85012))

(assert (not b!992158))

(assert (not b!992157))

(assert (not b!992156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!117999 () Bool)

(declare-fun lt!440079 () Bool)

(assert (=> d!117999 (= lt!440079 (member head!726 (content!440 tail!21)))))

(declare-fun e!559735 () Bool)

(assert (=> d!117999 (= lt!440079 e!559735)))

(declare-fun res!663273 () Bool)

(assert (=> d!117999 (=> (not res!663273) (not e!559735))))

(assert (=> d!117999 (= res!663273 (is-Cons!20993 tail!21))))

(assert (=> d!117999 (= (contains!5754 tail!21 head!726) lt!440079)))

(declare-fun b!992175 () Bool)

(declare-fun e!559736 () Bool)

(assert (=> b!992175 (= e!559735 e!559736)))

(declare-fun res!663274 () Bool)

(assert (=> b!992175 (=> res!663274 e!559736)))

(assert (=> b!992175 (= res!663274 (= (h!22155 tail!21) head!726))))

(declare-fun b!992176 () Bool)

(assert (=> b!992176 (= e!559736 (contains!5754 (t!29991 tail!21) head!726))))

(assert (= (and d!117999 res!663273) b!992175))

(assert (= (and b!992175 (not res!663274)) b!992176))

(assert (=> d!117999 m!919971))

(assert (=> d!117999 m!919973))

(declare-fun m!919989 () Bool)

(assert (=> b!992176 m!919989))

(assert (=> start!85012 d!117999))

(declare-fun d!118005 () Bool)

(declare-fun lt!440082 () Bool)

(assert (=> d!118005 (= lt!440082 (member head!726 (content!440 (_2!7530 (get!15701 lt!440070)))))))

(declare-fun e!559741 () Bool)

(assert (=> d!118005 (= lt!440082 e!559741)))

(declare-fun res!663279 () Bool)

(assert (=> d!118005 (=> (not res!663279) (not e!559741))))

(assert (=> d!118005 (= res!663279 (is-Cons!20993 (_2!7530 (get!15701 lt!440070))))))

(assert (=> d!118005 (= (contains!5754 (_2!7530 (get!15701 lt!440070)) head!726) lt!440082)))

(declare-fun b!992181 () Bool)

(declare-fun e!559742 () Bool)

(assert (=> b!992181 (= e!559741 e!559742)))

(declare-fun res!663280 () Bool)

(assert (=> b!992181 (=> res!663280 e!559742)))

(assert (=> b!992181 (= res!663280 (= (h!22155 (_2!7530 (get!15701 lt!440070))) head!726))))

(declare-fun b!992182 () Bool)

(assert (=> b!992182 (= e!559742 (contains!5754 (t!29991 (_2!7530 (get!15701 lt!440070))) head!726))))

(assert (= (and d!118005 res!663279) b!992181))

(assert (= (and b!992181 (not res!663280)) b!992182))

(declare-fun m!919995 () Bool)

(assert (=> d!118005 m!919995))

(declare-fun m!920001 () Bool)

(assert (=> d!118005 m!920001))

(declare-fun m!920007 () Bool)

(assert (=> b!992182 m!920007))

(assert (=> b!992158 d!118005))

(declare-fun d!118011 () Bool)

(assert (=> d!118011 (= (get!15701 lt!440070) (v!14330 lt!440070))))

(assert (=> b!992158 d!118011))

(declare-fun d!118017 () Bool)

(assert (=> d!118017 (= (isEmpty!742 lt!440070) (not (is-Some!532 lt!440070)))))

(assert (=> b!992157 d!118017))

(declare-fun d!118022 () Bool)

(assert (=> d!118022 (= (unapply!9 ($colon$colon!567 tail!21 head!726)) (ite (is-Nil!20994 ($colon$colon!567 tail!21 head!726)) None!531 (Some!532 (tuple2!15041 (h!22155 ($colon$colon!567 tail!21 head!726)) (t!29991 ($colon$colon!567 tail!21 head!726))))))))

(assert (=> b!992157 d!118022))

(declare-fun d!118027 () Bool)

(assert (=> d!118027 (= ($colon$colon!567 tail!21 head!726) (Cons!20993 head!726 tail!21))))

(assert (=> b!992157 d!118027))

(declare-fun d!118031 () Bool)

(declare-fun c!100595 () Bool)

(assert (=> d!118031 (= c!100595 (is-Nil!20994 tail!21))))

(declare-fun e!559750 () (Set (_ BitVec 64)))

(assert (=> d!118031 (= (content!440 tail!21) e!559750)))

(declare-fun b!992196 () Bool)

(assert (=> b!992196 (= e!559750 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!992198 () Bool)

(assert (=> b!992198 (= e!559750 (union (insert (h!22155 tail!21) (as emptyset (Set (_ BitVec 64)))) (content!440 (t!29991 tail!21))))))

(assert (= (and d!118031 c!100595) b!992196))

(assert (= (and d!118031 (not c!100595)) b!992198))

(declare-fun m!920010 () Bool)

(assert (=> b!992198 m!920010))

(declare-fun m!920017 () Bool)

(assert (=> b!992198 m!920017))

(assert (=> b!992156 d!118031))

(push 1)

