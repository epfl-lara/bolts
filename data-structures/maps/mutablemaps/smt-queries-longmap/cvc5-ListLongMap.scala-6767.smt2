; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84942 () Bool)

(assert start!84942)

(declare-fun res!663137 () Bool)

(declare-fun e!559607 () Bool)

(assert (=> start!84942 (=> (not res!663137) (not e!559607))))

(declare-datatypes ((List!20986 0))(
  ( (Nil!20983) (Cons!20982 (h!22144 (_ BitVec 64)) (t!29977 List!20986)) )
))
(declare-fun tail!21 () List!20986)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5743 (List!20986 (_ BitVec 64)) Bool)

(assert (=> start!84942 (= res!663137 (not (contains!5743 tail!21 head!726)))))

(assert (=> start!84942 e!559607))

(assert (=> start!84942 true))

(declare-fun b!992003 () Bool)

(declare-fun res!663138 () Bool)

(assert (=> b!992003 (=> (not res!663138) (not e!559607))))

(declare-fun content!429 (List!20986) (Set (_ BitVec 64)))

(assert (=> b!992003 (= res!663138 (not (set.member head!726 (content!429 tail!21))))))

(declare-fun b!992004 () Bool)

(declare-fun e!559606 () Bool)

(assert (=> b!992004 (= e!559607 e!559606)))

(declare-fun res!663139 () Bool)

(assert (=> b!992004 (=> (not res!663139) (not e!559606))))

(declare-datatypes ((tuple2!15024 0))(
  ( (tuple2!15025 (_1!7522 (_ BitVec 64)) (_2!7522 List!20986)) )
))
(declare-datatypes ((Option!525 0))(
  ( (Some!524 (v!14316 tuple2!15024)) (None!523) )
))
(declare-fun lt!440019 () Option!525)

(declare-fun isEmpty!734 (Option!525) Bool)

(assert (=> b!992004 (= res!663139 (not (isEmpty!734 lt!440019)))))

(declare-fun unapply!1 (List!20986) Option!525)

(declare-fun $colon$colon!559 (List!20986 (_ BitVec 64)) List!20986)

(assert (=> b!992004 (= lt!440019 (unapply!1 ($colon$colon!559 tail!21 head!726)))))

(declare-fun b!992005 () Bool)

(declare-fun isDefined!387 (Option!525) Bool)

(assert (=> b!992005 (= e!559606 (not (isDefined!387 lt!440019)))))

(assert (= (and start!84942 res!663137) b!992003))

(assert (= (and b!992003 res!663138) b!992004))

(assert (= (and b!992004 res!663139) b!992005))

(declare-fun m!919793 () Bool)

(assert (=> start!84942 m!919793))

(declare-fun m!919795 () Bool)

(assert (=> b!992003 m!919795))

(declare-fun m!919797 () Bool)

(assert (=> b!992003 m!919797))

(declare-fun m!919799 () Bool)

(assert (=> b!992004 m!919799))

(declare-fun m!919801 () Bool)

(assert (=> b!992004 m!919801))

(assert (=> b!992004 m!919801))

(declare-fun m!919803 () Bool)

(assert (=> b!992004 m!919803))

(declare-fun m!919805 () Bool)

(assert (=> b!992005 m!919805))

(push 1)

(assert (not start!84942))

(assert (not b!992005))

(assert (not b!992004))

(assert (not b!992003))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!117941 () Bool)

(declare-fun lt!440030 () Bool)

(assert (=> d!117941 (= lt!440030 (set.member head!726 (content!429 tail!21)))))

(declare-fun e!559631 () Bool)

(assert (=> d!117941 (= lt!440030 e!559631)))

(declare-fun res!663167 () Bool)

(assert (=> d!117941 (=> (not res!663167) (not e!559631))))

(assert (=> d!117941 (= res!663167 (is-Cons!20982 tail!21))))

(assert (=> d!117941 (= (contains!5743 tail!21 head!726) lt!440030)))

(declare-fun b!992038 () Bool)

(declare-fun e!559632 () Bool)

(assert (=> b!992038 (= e!559631 e!559632)))

(declare-fun res!663166 () Bool)

(assert (=> b!992038 (=> res!663166 e!559632)))

(assert (=> b!992038 (= res!663166 (= (h!22144 tail!21) head!726))))

(declare-fun b!992039 () Bool)

(assert (=> b!992039 (= e!559632 (contains!5743 (t!29977 tail!21) head!726))))

(assert (= (and d!117941 res!663167) b!992038))

(assert (= (and b!992038 (not res!663166)) b!992039))

(assert (=> d!117941 m!919795))

(assert (=> d!117941 m!919797))

(declare-fun m!919839 () Bool)

(assert (=> b!992039 m!919839))

(assert (=> start!84942 d!117941))

(declare-fun d!117949 () Bool)

(assert (=> d!117949 (= (isDefined!387 lt!440019) (not (isEmpty!734 lt!440019)))))

(declare-fun bs!28199 () Bool)

(assert (= bs!28199 d!117949))

(assert (=> bs!28199 m!919799))

(assert (=> b!992005 d!117949))

(declare-fun d!117953 () Bool)

(assert (=> d!117953 (= (isEmpty!734 lt!440019) (not (is-Some!524 lt!440019)))))

(assert (=> b!992004 d!117953))

(declare-fun d!117957 () Bool)

(assert (=> d!117957 (= (unapply!1 ($colon$colon!559 tail!21 head!726)) (ite (is-Nil!20983 ($colon$colon!559 tail!21 head!726)) None!523 (Some!524 (tuple2!15025 (h!22144 ($colon$colon!559 tail!21 head!726)) (t!29977 ($colon$colon!559 tail!21 head!726))))))))

(assert (=> b!992004 d!117957))

(declare-fun d!117961 () Bool)

(assert (=> d!117961 (= ($colon$colon!559 tail!21 head!726) (Cons!20982 head!726 tail!21))))

(assert (=> b!992004 d!117961))

(declare-fun d!117967 () Bool)

(declare-fun c!100577 () Bool)

(assert (=> d!117967 (= c!100577 (is-Nil!20983 tail!21))))

(declare-fun e!559645 () (Set (_ BitVec 64)))

(assert (=> d!117967 (= (content!429 tail!21) e!559645)))

(declare-fun b!992056 () Bool)

(assert (=> b!992056 (= e!559645 (as set.empty (Set (_ BitVec 64))))))

(declare-fun b!992057 () Bool)

(assert (=> b!992057 (= e!559645 (set.union (set.insert (h!22144 tail!21) (as set.empty (Set (_ BitVec 64)))) (content!429 (t!29977 tail!21))))))

(assert (= (and d!117967 c!100577) b!992056))

(assert (= (and d!117967 (not c!100577)) b!992057))

(declare-fun m!919845 () Bool)

(assert (=> b!992057 m!919845))

(declare-fun m!919847 () Bool)

(assert (=> b!992057 m!919847))

(assert (=> b!992003 d!117967))

(push 1)

