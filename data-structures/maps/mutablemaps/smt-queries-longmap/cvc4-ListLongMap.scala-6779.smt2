; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85312 () Bool)

(assert start!85312)

(declare-fun res!663671 () Bool)

(declare-fun e!560207 () Bool)

(assert (=> start!85312 (=> (not res!663671) (not e!560207))))

(declare-datatypes ((List!21024 0))(
  ( (Nil!21021) (Cons!21020 (h!22182 (_ BitVec 64)) (t!30033 List!21024)) )
))
(declare-fun l!3519 () List!21024)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5781 (List!21024 (_ BitVec 64)) Bool)

(assert (=> start!85312 (= res!663671 (not (contains!5781 l!3519 e!29)))))

(assert (=> start!85312 e!560207))

(assert (=> start!85312 true))

(declare-fun b!992801 () Bool)

(declare-fun e!560206 () Bool)

(assert (=> b!992801 (= e!560207 e!560206)))

(declare-fun res!663672 () Bool)

(assert (=> b!992801 (=> (not res!663672) (not e!560206))))

(declare-datatypes ((tuple2!15088 0))(
  ( (tuple2!15089 (_1!7554 (_ BitVec 64)) (_2!7554 List!21024)) )
))
(declare-datatypes ((Option!557 0))(
  ( (Some!556 (v!14378 tuple2!15088)) (None!555) )
))
(declare-fun lt!440316 () Option!557)

(declare-fun isEmpty!766 (Option!557) Bool)

(assert (=> b!992801 (= res!663672 (not (isEmpty!766 lt!440316)))))

(declare-fun unapply!33 (List!21024) Option!557)

(assert (=> b!992801 (= lt!440316 (unapply!33 l!3519))))

(declare-fun b!992802 () Bool)

(declare-fun e!560205 () Bool)

(assert (=> b!992802 (= e!560206 e!560205)))

(declare-fun res!663673 () Bool)

(assert (=> b!992802 (=> (not res!663673) (not e!560205))))

(declare-fun lt!440315 () tuple2!15088)

(assert (=> b!992802 (= res!663673 (not (contains!5781 (_2!7554 lt!440315) e!29)))))

(declare-fun get!15731 (Option!557) tuple2!15088)

(assert (=> b!992802 (= lt!440315 (get!15731 lt!440316))))

(declare-fun b!992803 () Bool)

(declare-fun ListPrimitiveSize!96 (List!21024) Int)

(assert (=> b!992803 (= e!560205 (>= (ListPrimitiveSize!96 (_2!7554 lt!440315)) (ListPrimitiveSize!96 l!3519)))))

(assert (= (and start!85312 res!663671) b!992801))

(assert (= (and b!992801 res!663672) b!992802))

(assert (= (and b!992802 res!663673) b!992803))

(declare-fun m!920637 () Bool)

(assert (=> start!85312 m!920637))

(declare-fun m!920639 () Bool)

(assert (=> b!992801 m!920639))

(declare-fun m!920641 () Bool)

(assert (=> b!992801 m!920641))

(declare-fun m!920643 () Bool)

(assert (=> b!992802 m!920643))

(declare-fun m!920645 () Bool)

(assert (=> b!992802 m!920645))

(declare-fun m!920647 () Bool)

(assert (=> b!992803 m!920647))

(declare-fun m!920649 () Bool)

(assert (=> b!992803 m!920649))

(push 1)

(assert (not b!992801))

(assert (not b!992802))

(assert (not start!85312))

(assert (not b!992803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118289 () Bool)

(assert (=> d!118289 (= (isEmpty!766 lt!440316) (not (is-Some!556 lt!440316)))))

(assert (=> b!992801 d!118289))

(declare-fun d!118291 () Bool)

(assert (=> d!118291 (= (unapply!33 l!3519) (ite (is-Nil!21021 l!3519) None!555 (Some!556 (tuple2!15089 (h!22182 l!3519) (t!30033 l!3519)))))))

(assert (=> b!992801 d!118291))

(declare-fun d!118299 () Bool)

(declare-fun lt!440327 () Bool)

(declare-fun content!463 (List!21024) (Set (_ BitVec 64)))

(assert (=> d!118299 (= lt!440327 (member e!29 (content!463 (_2!7554 lt!440315))))))

(declare-fun e!560223 () Bool)

(assert (=> d!118299 (= lt!440327 e!560223)))

(declare-fun res!663685 () Bool)

(assert (=> d!118299 (=> (not res!663685) (not e!560223))))

(assert (=> d!118299 (= res!663685 (is-Cons!21020 (_2!7554 lt!440315)))))

(assert (=> d!118299 (= (contains!5781 (_2!7554 lt!440315) e!29) lt!440327)))

(declare-fun b!992823 () Bool)

(declare-fun e!560222 () Bool)

(assert (=> b!992823 (= e!560223 e!560222)))

(declare-fun res!663687 () Bool)

(assert (=> b!992823 (=> res!663687 e!560222)))

(assert (=> b!992823 (= res!663687 (= (h!22182 (_2!7554 lt!440315)) e!29))))

(declare-fun b!992825 () Bool)

(assert (=> b!992825 (= e!560222 (contains!5781 (t!30033 (_2!7554 lt!440315)) e!29))))

(assert (= (and d!118299 res!663685) b!992823))

(assert (= (and b!992823 (not res!663687)) b!992825))

(declare-fun m!920663 () Bool)

(assert (=> d!118299 m!920663))

(declare-fun m!920667 () Bool)

(assert (=> d!118299 m!920667))

(declare-fun m!920671 () Bool)

(assert (=> b!992825 m!920671))

(assert (=> b!992802 d!118299))

(declare-fun d!118311 () Bool)

(assert (=> d!118311 (= (get!15731 lt!440316) (v!14378 lt!440316))))

(assert (=> b!992802 d!118311))

(declare-fun d!118313 () Bool)

(declare-fun lt!440330 () Bool)

(assert (=> d!118313 (= lt!440330 (member e!29 (content!463 l!3519)))))

(declare-fun e!560231 () Bool)

(assert (=> d!118313 (= lt!440330 e!560231)))

(declare-fun res!663692 () Bool)

(assert (=> d!118313 (=> (not res!663692) (not e!560231))))

(assert (=> d!118313 (= res!663692 (is-Cons!21020 l!3519))))

(assert (=> d!118313 (= (contains!5781 l!3519 e!29) lt!440330)))

(declare-fun b!992830 () Bool)

(declare-fun e!560230 () Bool)

(assert (=> b!992830 (= e!560231 e!560230)))

(declare-fun res!663693 () Bool)

(assert (=> b!992830 (=> res!663693 e!560230)))

(assert (=> b!992830 (= res!663693 (= (h!22182 l!3519) e!29))))

(declare-fun b!992831 () Bool)

(assert (=> b!992831 (= e!560230 (contains!5781 (t!30033 l!3519) e!29))))

(assert (= (and d!118313 res!663692) b!992830))

(assert (= (and b!992830 (not res!663693)) b!992831))

(declare-fun m!920673 () Bool)

(assert (=> d!118313 m!920673))

(declare-fun m!920675 () Bool)

(assert (=> d!118313 m!920675))

(declare-fun m!920677 () Bool)

(assert (=> b!992831 m!920677))

(assert (=> start!85312 d!118313))

(declare-fun d!118315 () Bool)

(declare-fun lt!440339 () Int)

(assert (=> d!118315 (>= lt!440339 0)))

(declare-fun e!560242 () Int)

(assert (=> d!118315 (= lt!440339 e!560242)))

(declare-fun c!100712 () Bool)

(assert (=> d!118315 (= c!100712 (is-Nil!21021 (_2!7554 lt!440315)))))

(assert (=> d!118315 (= (ListPrimitiveSize!96 (_2!7554 lt!440315)) lt!440339)))

(declare-fun b!992848 () Bool)

(assert (=> b!992848 (= e!560242 0)))

(declare-fun b!992849 () Bool)

(assert (=> b!992849 (= e!560242 (+ 1 (ListPrimitiveSize!96 (t!30033 (_2!7554 lt!440315)))))))

(assert (= (and d!118315 c!100712) b!992848))

(assert (= (and d!118315 (not c!100712)) b!992849))

(declare-fun m!920695 () Bool)

(assert (=> b!992849 m!920695))

(assert (=> b!992803 d!118315))

(declare-fun d!118323 () Bool)

(declare-fun lt!440340 () Int)

(assert (=> d!118323 (>= lt!440340 0)))

(declare-fun e!560243 () Int)

(assert (=> d!118323 (= lt!440340 e!560243)))

