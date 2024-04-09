; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85108 () Bool)

(assert start!85108)

(declare-fun b!992371 () Bool)

(declare-fun res!663386 () Bool)

(declare-fun e!559871 () Bool)

(assert (=> b!992371 (=> (not res!663386) (not e!559871))))

(declare-fun head!726 () (_ BitVec 64))

(declare-datatypes ((List!21003 0))(
  ( (Nil!21000) (Cons!20999 (h!22161 (_ BitVec 64)) (t!30003 List!21003)) )
))
(declare-fun tail!21 () List!21003)

(declare-fun content!446 (List!21003) (Set (_ BitVec 64)))

(assert (=> b!992371 (= res!663386 (not (member head!726 (content!446 tail!21))))))

(declare-fun b!992372 () Bool)

(declare-fun e!559870 () Bool)

(assert (=> b!992372 (= e!559871 e!559870)))

(declare-fun res!663388 () Bool)

(assert (=> b!992372 (=> (not res!663388) (not e!559870))))

(declare-fun lt!440160 () List!21003)

(declare-datatypes ((tuple2!15052 0))(
  ( (tuple2!15053 (_1!7536 (_ BitVec 64)) (_2!7536 List!21003)) )
))
(declare-datatypes ((Option!539 0))(
  ( (Some!538 (v!14342 tuple2!15052)) (None!537) )
))
(declare-fun isEmpty!748 (Option!539) Bool)

(declare-fun unapply!15 (List!21003) Option!539)

(assert (=> b!992372 (= res!663388 (isEmpty!748 (unapply!15 lt!440160)))))

(declare-fun $colon$colon!573 (List!21003 (_ BitVec 64)) List!21003)

(assert (=> b!992372 (= lt!440160 ($colon$colon!573 tail!21 head!726))))

(declare-fun res!663387 () Bool)

(assert (=> start!85108 (=> (not res!663387) (not e!559871))))

(declare-fun contains!5760 (List!21003 (_ BitVec 64)) Bool)

(assert (=> start!85108 (= res!663387 (not (contains!5760 tail!21 head!726)))))

(assert (=> start!85108 e!559871))

(assert (=> start!85108 true))

(declare-fun b!992373 () Bool)

(declare-fun res!663385 () Bool)

(assert (=> b!992373 (=> (not res!663385) (not e!559870))))

(assert (=> b!992373 (= res!663385 (is-Nil!21000 lt!440160))))

(declare-fun b!992374 () Bool)

(declare-fun -!446 (List!21003 (_ BitVec 64)) List!21003)

(assert (=> b!992374 (= e!559870 (not (= (-!446 lt!440160 head!726) tail!21)))))

(assert (= (and start!85108 res!663387) b!992371))

(assert (= (and b!992371 res!663386) b!992372))

(assert (= (and b!992372 res!663388) b!992373))

(assert (= (and b!992373 res!663385) b!992374))

(declare-fun m!920217 () Bool)

(assert (=> b!992371 m!920217))

(declare-fun m!920219 () Bool)

(assert (=> b!992371 m!920219))

(declare-fun m!920221 () Bool)

(assert (=> b!992372 m!920221))

(assert (=> b!992372 m!920221))

(declare-fun m!920223 () Bool)

(assert (=> b!992372 m!920223))

(declare-fun m!920225 () Bool)

(assert (=> b!992372 m!920225))

(declare-fun m!920227 () Bool)

(assert (=> start!85108 m!920227))

(declare-fun m!920229 () Bool)

(assert (=> b!992374 m!920229))

(push 1)

(assert (not b!992371))

(assert (not start!85108))

(assert (not b!992372))

(assert (not b!992374))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118105 () Bool)

(declare-fun c!100632 () Bool)

(assert (=> d!118105 (= c!100632 (is-Nil!21000 tail!21))))

(declare-fun e!559880 () (Set (_ BitVec 64)))

(assert (=> d!118105 (= (content!446 tail!21) e!559880)))

(declare-fun b!992385 () Bool)

(assert (=> b!992385 (= e!559880 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!992386 () Bool)

(assert (=> b!992386 (= e!559880 (union (insert (h!22161 tail!21) (as emptyset (Set (_ BitVec 64)))) (content!446 (t!30003 tail!21))))))

(assert (= (and d!118105 c!100632) b!992385))

(assert (= (and d!118105 (not c!100632)) b!992386))

(declare-fun m!920233 () Bool)

(assert (=> b!992386 m!920233))

(declare-fun m!920235 () Bool)

(assert (=> b!992386 m!920235))

(assert (=> b!992371 d!118105))

(declare-fun d!118109 () Bool)

(declare-fun lt!440168 () Bool)

(assert (=> d!118109 (= lt!440168 (member head!726 (content!446 tail!21)))))

(declare-fun e!559893 () Bool)

(assert (=> d!118109 (= lt!440168 e!559893)))

(declare-fun res!663402 () Bool)

(assert (=> d!118109 (=> (not res!663402) (not e!559893))))

(assert (=> d!118109 (= res!663402 (is-Cons!20999 tail!21))))

(assert (=> d!118109 (= (contains!5760 tail!21 head!726) lt!440168)))

(declare-fun b!992401 () Bool)

(declare-fun e!559892 () Bool)

(assert (=> b!992401 (= e!559893 e!559892)))

(declare-fun res!663401 () Bool)

(assert (=> b!992401 (=> res!663401 e!559892)))

(assert (=> b!992401 (= res!663401 (= (h!22161 tail!21) head!726))))

(declare-fun b!992402 () Bool)

(assert (=> b!992402 (= e!559892 (contains!5760 (t!30003 tail!21) head!726))))

(assert (= (and d!118109 res!663402) b!992401))

(assert (= (and b!992401 (not res!663401)) b!992402))

(assert (=> d!118109 m!920217))

(assert (=> d!118109 m!920219))

(declare-fun m!920237 () Bool)

(assert (=> b!992402 m!920237))

(assert (=> start!85108 d!118109))

(declare-fun d!118117 () Bool)

(assert (=> d!118117 (= (isEmpty!748 (unapply!15 lt!440160)) (not (is-Some!538 (unapply!15 lt!440160))))))

(assert (=> b!992372 d!118117))

(declare-fun d!118121 () Bool)

(assert (=> d!118121 (= (unapply!15 lt!440160) (ite (is-Nil!21000 lt!440160) None!537 (Some!538 (tuple2!15053 (h!22161 lt!440160) (t!30003 lt!440160)))))))

(assert (=> b!992372 d!118121))

(declare-fun d!118123 () Bool)

(assert (=> d!118123 (= ($colon$colon!573 tail!21 head!726) (Cons!20999 head!726 tail!21))))

(assert (=> b!992372 d!118123))

(declare-fun b!992451 () Bool)

(declare-fun e!559926 () List!21003)

(declare-fun e!559928 () List!21003)

(assert (=> b!992451 (= e!559926 e!559928)))

(declare-fun c!100656 () Bool)

(assert (=> b!992451 (= c!100656 (= head!726 (h!22161 lt!440160)))))

(declare-fun b!992452 () Bool)

(declare-fun call!42112 () List!21003)

(assert (=> b!992452 (= e!559928 call!42112)))

(declare-fun bm!42109 () Bool)

(assert (=> bm!42109 (= call!42112 (-!446 (t!30003 lt!440160) head!726))))

(declare-fun d!118125 () Bool)

(declare-fun e!559927 () Bool)

(assert (=> d!118125 e!559927))

(declare-fun res!663415 () Bool)

