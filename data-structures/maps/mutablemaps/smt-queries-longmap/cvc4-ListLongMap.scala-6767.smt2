; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!84946 () Bool)

(assert start!84946)

(declare-fun res!663155 () Bool)

(declare-fun e!559618 () Bool)

(assert (=> start!84946 (=> (not res!663155) (not e!559618))))

(declare-datatypes ((List!20988 0))(
  ( (Nil!20985) (Cons!20984 (h!22146 (_ BitVec 64)) (t!29979 List!20988)) )
))
(declare-fun tail!21 () List!20988)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5745 (List!20988 (_ BitVec 64)) Bool)

(assert (=> start!84946 (= res!663155 (not (contains!5745 tail!21 head!726)))))

(assert (=> start!84946 e!559618))

(assert (=> start!84946 true))

(declare-fun b!992021 () Bool)

(declare-fun res!663156 () Bool)

(assert (=> b!992021 (=> (not res!663156) (not e!559618))))

(declare-fun content!431 (List!20988) (Set (_ BitVec 64)))

(assert (=> b!992021 (= res!663156 (not (member head!726 (content!431 tail!21))))))

(declare-fun b!992022 () Bool)

(declare-fun e!559619 () Bool)

(assert (=> b!992022 (= e!559618 e!559619)))

(declare-fun res!663157 () Bool)

(assert (=> b!992022 (=> (not res!663157) (not e!559619))))

(declare-datatypes ((tuple2!15028 0))(
  ( (tuple2!15029 (_1!7524 (_ BitVec 64)) (_2!7524 List!20988)) )
))
(declare-datatypes ((Option!527 0))(
  ( (Some!526 (v!14318 tuple2!15028)) (None!525) )
))
(declare-fun lt!440025 () Option!527)

(declare-fun isEmpty!736 (Option!527) Bool)

(assert (=> b!992022 (= res!663157 (not (isEmpty!736 lt!440025)))))

(declare-fun unapply!3 (List!20988) Option!527)

(declare-fun $colon$colon!561 (List!20988 (_ BitVec 64)) List!20988)

(assert (=> b!992022 (= lt!440025 (unapply!3 ($colon$colon!561 tail!21 head!726)))))

(declare-fun b!992023 () Bool)

(declare-fun isDefined!389 (Option!527) Bool)

(assert (=> b!992023 (= e!559619 (not (isDefined!389 lt!440025)))))

(assert (= (and start!84946 res!663155) b!992021))

(assert (= (and b!992021 res!663156) b!992022))

(assert (= (and b!992022 res!663157) b!992023))

(declare-fun m!919821 () Bool)

(assert (=> start!84946 m!919821))

(declare-fun m!919823 () Bool)

(assert (=> b!992021 m!919823))

(declare-fun m!919825 () Bool)

(assert (=> b!992021 m!919825))

(declare-fun m!919827 () Bool)

(assert (=> b!992022 m!919827))

(declare-fun m!919829 () Bool)

(assert (=> b!992022 m!919829))

(assert (=> b!992022 m!919829))

(declare-fun m!919831 () Bool)

(assert (=> b!992022 m!919831))

(declare-fun m!919833 () Bool)

(assert (=> b!992023 m!919833))

(push 1)

(assert (not start!84946))

(assert (not b!992023))

(assert (not b!992022))

(assert (not b!992021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!117943 () Bool)

(declare-fun lt!440031 () Bool)

(assert (=> d!117943 (= lt!440031 (member head!726 (content!431 tail!21)))))

(declare-fun e!559634 () Bool)

(assert (=> d!117943 (= lt!440031 e!559634)))

(declare-fun res!663168 () Bool)

(assert (=> d!117943 (=> (not res!663168) (not e!559634))))

(assert (=> d!117943 (= res!663168 (is-Cons!20984 tail!21))))

(assert (=> d!117943 (= (contains!5745 tail!21 head!726) lt!440031)))

(declare-fun b!992040 () Bool)

(declare-fun e!559633 () Bool)

(assert (=> b!992040 (= e!559634 e!559633)))

(declare-fun res!663169 () Bool)

(assert (=> b!992040 (=> res!663169 e!559633)))

(assert (=> b!992040 (= res!663169 (= (h!22146 tail!21) head!726))))

(declare-fun b!992041 () Bool)

(assert (=> b!992041 (= e!559633 (contains!5745 (t!29979 tail!21) head!726))))

(assert (= (and d!117943 res!663168) b!992040))

(assert (= (and b!992040 (not res!663169)) b!992041))

(assert (=> d!117943 m!919823))

(assert (=> d!117943 m!919825))

(declare-fun m!919841 () Bool)

(assert (=> b!992041 m!919841))

(assert (=> start!84946 d!117943))

(declare-fun d!117951 () Bool)

(assert (=> d!117951 (= (isDefined!389 lt!440025) (not (isEmpty!736 lt!440025)))))

(declare-fun bs!28200 () Bool)

(assert (= bs!28200 d!117951))

(assert (=> bs!28200 m!919827))

(assert (=> b!992023 d!117951))

(declare-fun d!117955 () Bool)

(assert (=> d!117955 (= (isEmpty!736 lt!440025) (not (is-Some!526 lt!440025)))))

(assert (=> b!992022 d!117955))

(declare-fun d!117959 () Bool)

(assert (=> d!117959 (= (unapply!3 ($colon$colon!561 tail!21 head!726)) (ite (is-Nil!20985 ($colon$colon!561 tail!21 head!726)) None!525 (Some!526 (tuple2!15029 (h!22146 ($colon$colon!561 tail!21 head!726)) (t!29979 ($colon$colon!561 tail!21 head!726))))))))

(assert (=> b!992022 d!117959))

(declare-fun d!117963 () Bool)

(assert (=> d!117963 (= ($colon$colon!561 tail!21 head!726) (Cons!20984 head!726 tail!21))))

(assert (=> b!992022 d!117963))

(declare-fun d!117969 () Bool)

(declare-fun c!100578 () Bool)

(assert (=> d!117969 (= c!100578 (is-Nil!20985 tail!21))))

(declare-fun e!559646 () (Set (_ BitVec 64)))

(assert (=> d!117969 (= (content!431 tail!21) e!559646)))

(declare-fun b!992058 () Bool)

(assert (=> b!992058 (= e!559646 (as emptyset (Set (_ BitVec 64))))))

(declare-fun b!992059 () Bool)

(assert (=> b!992059 (= e!559646 (union (insert (h!22146 tail!21) (as emptyset (Set (_ BitVec 64)))) (content!431 (t!29979 tail!21))))))

(assert (= (and d!117969 c!100578) b!992058))

(assert (= (and d!117969 (not c!100578)) b!992059))

(declare-fun m!919849 () Bool)

