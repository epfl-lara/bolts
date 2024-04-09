; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85008 () Bool)

(assert start!85008)

(declare-fun res!663236 () Bool)

(declare-fun e!559705 () Bool)

(assert (=> start!85008 (=> (not res!663236) (not e!559705))))

(declare-datatypes ((List!20995 0))(
  ( (Nil!20992) (Cons!20991 (h!22153 (_ BitVec 64)) (t!29989 List!20995)) )
))
(declare-fun tail!21 () List!20995)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5752 (List!20995 (_ BitVec 64)) Bool)

(assert (=> start!85008 (= res!663236 (not (contains!5752 tail!21 head!726)))))

(assert (=> start!85008 e!559705))

(assert (=> start!85008 true))

(declare-fun b!992138 () Bool)

(declare-fun res!663238 () Bool)

(assert (=> b!992138 (=> (not res!663238) (not e!559705))))

(declare-fun content!438 (List!20995) (Set (_ BitVec 64)))

(assert (=> b!992138 (= res!663238 (not (set.member head!726 (content!438 tail!21))))))

(declare-fun b!992139 () Bool)

(declare-fun e!559706 () Bool)

(assert (=> b!992139 (= e!559705 e!559706)))

(declare-fun res!663237 () Bool)

(assert (=> b!992139 (=> (not res!663237) (not e!559706))))

(declare-datatypes ((tuple2!15036 0))(
  ( (tuple2!15037 (_1!7528 (_ BitVec 64)) (_2!7528 List!20995)) )
))
(declare-datatypes ((Option!531 0))(
  ( (Some!530 (v!14328 tuple2!15036)) (None!529) )
))
(declare-fun lt!440064 () Option!531)

(declare-fun isEmpty!740 (Option!531) Bool)

(assert (=> b!992139 (= res!663237 (not (isEmpty!740 lt!440064)))))

(declare-fun unapply!7 (List!20995) Option!531)

(declare-fun $colon$colon!565 (List!20995 (_ BitVec 64)) List!20995)

(assert (=> b!992139 (= lt!440064 (unapply!7 ($colon$colon!565 tail!21 head!726)))))

(declare-fun b!992140 () Bool)

(declare-fun get!15699 (Option!531) tuple2!15036)

(assert (=> b!992140 (= e!559706 (contains!5752 (_2!7528 (get!15699 lt!440064)) head!726))))

(assert (= (and start!85008 res!663236) b!992138))

(assert (= (and b!992138 res!663238) b!992139))

(assert (= (and b!992139 res!663237) b!992140))

(declare-fun m!919937 () Bool)

(assert (=> start!85008 m!919937))

(declare-fun m!919939 () Bool)

(assert (=> b!992138 m!919939))

(declare-fun m!919941 () Bool)

(assert (=> b!992138 m!919941))

(declare-fun m!919943 () Bool)

(assert (=> b!992139 m!919943))

(declare-fun m!919945 () Bool)

(assert (=> b!992139 m!919945))

(assert (=> b!992139 m!919945))

(declare-fun m!919947 () Bool)

(assert (=> b!992139 m!919947))

(declare-fun m!919949 () Bool)

(assert (=> b!992140 m!919949))

(declare-fun m!919951 () Bool)

(assert (=> b!992140 m!919951))

(push 1)

(assert (not start!85008))

(assert (not b!992140))

(assert (not b!992139))

(assert (not b!992138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!117995 () Bool)

(declare-fun lt!440077 () Bool)

(assert (=> d!117995 (= lt!440077 (set.member head!726 (content!438 tail!21)))))

(declare-fun e!559732 () Bool)

(assert (=> d!117995 (= lt!440077 e!559732)))

(declare-fun res!663271 () Bool)

(assert (=> d!117995 (=> (not res!663271) (not e!559732))))

(assert (=> d!117995 (= res!663271 (is-Cons!20991 tail!21))))

(assert (=> d!117995 (= (contains!5752 tail!21 head!726) lt!440077)))

(declare-fun b!992171 () Bool)

(declare-fun e!559731 () Bool)

(assert (=> b!992171 (= e!559732 e!559731)))

(declare-fun res!663270 () Bool)

(assert (=> b!992171 (=> res!663270 e!559731)))

(assert (=> b!992171 (= res!663270 (= (h!22153 tail!21) head!726))))

(declare-fun b!992173 () Bool)

(assert (=> b!992173 (= e!559731 (contains!5752 (t!29989 tail!21) head!726))))

(assert (= (and d!117995 res!663271) b!992171))

(assert (= (and b!992171 (not res!663270)) b!992173))

(assert (=> d!117995 m!919939))

(assert (=> d!117995 m!919941))

(declare-fun m!919986 () Bool)

(assert (=> b!992173 m!919986))

(assert (=> start!85008 d!117995))

(declare-fun d!118003 () Bool)

(declare-fun lt!440080 () Bool)

(assert (=> d!118003 (= lt!440080 (set.member head!726 (content!438 (_2!7528 (get!15699 lt!440064)))))))

(declare-fun e!559740 () Bool)

(assert (=> d!118003 (= lt!440080 e!559740)))

(declare-fun res!663278 () Bool)

(assert (=> d!118003 (=> (not res!663278) (not e!559740))))

(assert (=> d!118003 (= res!663278 (is-Cons!20991 (_2!7528 (get!15699 lt!440064))))))

(assert (=> d!118003 (= (contains!5752 (_2!7528 (get!15699 lt!440064)) head!726) lt!440080)))

(declare-fun b!992179 () Bool)

(declare-fun e!559737 () Bool)

(assert (=> b!992179 (= e!559740 e!559737)))

(declare-fun res!663277 () Bool)

(assert (=> b!992179 (=> res!663277 e!559737)))

(assert (=> b!992179 (= res!663277 (= (h!22153 (_2!7528 (get!15699 lt!440064))) head!726))))

(declare-fun b!992180 () Bool)

(assert (=> b!992180 (= e!559737 (contains!5752 (t!29989 (_2!7528 (get!15699 lt!440064))) head!726))))

(assert (= (and d!118003 res!663278) b!992179))

(assert (= (and b!992179 (not res!663277)) b!992180))

(declare-fun m!919992 () Bool)

(assert (=> d!118003 m!919992))

(declare-fun m!919997 () Bool)

(assert (=> d!118003 m!919997))

(declare-fun m!920004 () Bool)

(assert (=> b!992180 m!920004))

(assert (=> b!992140 d!118003))

(declare-fun d!118009 () Bool)

(assert (=> d!118009 (= (get!15699 lt!440064) (v!14328 lt!440064))))

(assert (=> b!992140 d!118009))

(declare-fun d!118015 () Bool)

(assert (=> d!118015 (= (isEmpty!740 lt!440064) (not (is-Some!530 lt!440064)))))

(assert (=> b!992139 d!118015))

(declare-fun d!118023 () Bool)

(assert (=> d!118023 (= (unapply!7 ($colon$colon!565 tail!21 head!726)) (ite (is-Nil!20992 ($colon$colon!565 tail!21 head!726)) None!529 (Some!530 (tuple2!15037 (h!22153 ($colon$colon!565 tail!21 head!726)) (t!29989 ($colon$colon!565 tail!21 head!726))))))))

(assert (=> b!992139 d!118023))

(declare-fun d!118028 () Bool)

(assert (=> d!118028 (= ($colon$colon!565 tail!21 head!726) (Cons!20991 head!726 tail!21))))

(assert (=> b!992139 d!118028))

(declare-fun d!118035 () Bool)

(declare-fun c!100594 () Bool)

(assert (=> d!118035 (= c!100594 (is-Nil!20992 tail!21))))

(declare-fun e!559749 () (Set (_ BitVec 64)))

(assert (=> d!118035 (= (content!438 tail!21) e!559749)))

(declare-fun b!992195 () Bool)

(assert (=> b!992195 (= e!559749 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!992197 () Bool)

(assert (=> b!992197 (= e!559749 (set.union (set.insert (h!22153 tail!21) (as set.empty (Set (_ BitVec 64)))) (content!438 (t!29989 tail!21))))))

(assert (= (and d!118035 c!100594) b!992195))

(assert (= (and d!118035 (not c!100594)) b!992197))

(declare-fun m!920011 () Bool)

(assert (=> b!992197 m!920011))

(declare-fun m!920019 () Bool)

(assert (=> b!992197 m!920019))

(assert (=> b!992138 d!118035))

(push 1)

