; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85278 () Bool)

(assert start!85278)

(declare-fun res!663609 () Bool)

(declare-fun e!560144 () Bool)

(assert (=> start!85278 (=> (not res!663609) (not e!560144))))

(declare-datatypes ((List!21019 0))(
  ( (Nil!21016) (Cons!21015 (h!22177 (_ BitVec 64)) (t!30028 List!21019)) )
))
(declare-fun l!3519 () List!21019)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5776 (List!21019 (_ BitVec 64)) Bool)

(assert (=> start!85278 (= res!663609 (not (contains!5776 l!3519 e!29)))))

(assert (=> start!85278 e!560144))

(assert (=> start!85278 true))

(declare-fun b!992739 () Bool)

(declare-fun e!560143 () Bool)

(assert (=> b!992739 (= e!560144 e!560143)))

(declare-fun res!663610 () Bool)

(assert (=> b!992739 (=> (not res!663610) (not e!560143))))

(declare-datatypes ((tuple2!15078 0))(
  ( (tuple2!15079 (_1!7549 (_ BitVec 64)) (_2!7549 List!21019)) )
))
(declare-datatypes ((Option!552 0))(
  ( (Some!551 (v!14370 tuple2!15078)) (None!550) )
))
(declare-fun lt!440280 () Option!552)

(declare-fun isEmpty!761 (Option!552) Bool)

(assert (=> b!992739 (= res!663610 (not (isEmpty!761 lt!440280)))))

(declare-fun unapply!28 (List!21019) Option!552)

(assert (=> b!992739 (= lt!440280 (unapply!28 l!3519))))

(declare-fun b!992740 () Bool)

(declare-fun get!15724 (Option!552) tuple2!15078)

(assert (=> b!992740 (= e!560143 (contains!5776 (_2!7549 (get!15724 lt!440280)) e!29))))

(assert (= (and start!85278 res!663609) b!992739))

(assert (= (and b!992739 res!663610) b!992740))

(declare-fun m!920543 () Bool)

(assert (=> start!85278 m!920543))

(declare-fun m!920545 () Bool)

(assert (=> b!992739 m!920545))

(declare-fun m!920547 () Bool)

(assert (=> b!992739 m!920547))

(declare-fun m!920549 () Bool)

(assert (=> b!992740 m!920549))

(declare-fun m!920551 () Bool)

(assert (=> b!992740 m!920551))

(push 1)

(assert (not b!992739))

(assert (not b!992740))

(assert (not start!85278))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118253 () Bool)

(assert (=> d!118253 (= (isEmpty!761 lt!440280) (not (is-Some!551 lt!440280)))))

(assert (=> b!992739 d!118253))

(declare-fun d!118259 () Bool)

(assert (=> d!118259 (= (unapply!28 l!3519) (ite (is-Nil!21016 l!3519) None!550 (Some!551 (tuple2!15079 (h!22177 l!3519) (t!30028 l!3519)))))))

(assert (=> b!992739 d!118259))

(declare-fun d!118265 () Bool)

(declare-fun lt!440294 () Bool)

(declare-fun content!460 (List!21019) (Set (_ BitVec 64)))

(assert (=> d!118265 (= lt!440294 (set.member e!29 (content!460 (_2!7549 (get!15724 lt!440280)))))))

(declare-fun e!560171 () Bool)

(assert (=> d!118265 (= lt!440294 e!560171)))

(declare-fun res!663637 () Bool)

(assert (=> d!118265 (=> (not res!663637) (not e!560171))))

(assert (=> d!118265 (= res!663637 (is-Cons!21015 (_2!7549 (get!15724 lt!440280))))))

(assert (=> d!118265 (= (contains!5776 (_2!7549 (get!15724 lt!440280)) e!29) lt!440294)))

(declare-fun b!992767 () Bool)

(declare-fun e!560172 () Bool)

(assert (=> b!992767 (= e!560171 e!560172)))

(declare-fun res!663638 () Bool)

(assert (=> b!992767 (=> res!663638 e!560172)))

(assert (=> b!992767 (= res!663638 (= (h!22177 (_2!7549 (get!15724 lt!440280))) e!29))))

(declare-fun b!992768 () Bool)

(assert (=> b!992768 (= e!560172 (contains!5776 (t!30028 (_2!7549 (get!15724 lt!440280))) e!29))))

(assert (= (and d!118265 res!663637) b!992767))

(assert (= (and b!992767 (not res!663638)) b!992768))

(declare-fun m!920575 () Bool)

(assert (=> d!118265 m!920575))

(declare-fun m!920579 () Bool)

(assert (=> d!118265 m!920579))

(declare-fun m!920583 () Bool)

(assert (=> b!992768 m!920583))

(assert (=> b!992740 d!118265))

(declare-fun d!118271 () Bool)

(assert (=> d!118271 (= (get!15724 lt!440280) (v!14370 lt!440280))))

(assert (=> b!992740 d!118271))

(declare-fun d!118277 () Bool)

(declare-fun lt!440297 () Bool)

(assert (=> d!118277 (= lt!440297 (set.member e!29 (content!460 l!3519)))))

(declare-fun e!560177 () Bool)

(assert (=> d!118277 (= lt!440297 e!560177)))

(declare-fun res!663643 () Bool)

(assert (=> d!118277 (=> (not res!663643) (not e!560177))))

(assert (=> d!118277 (= res!663643 (is-Cons!21015 l!3519))))

(assert (=> d!118277 (= (contains!5776 l!3519 e!29) lt!440297)))

(declare-fun b!992773 () Bool)

(declare-fun e!560178 () Bool)

(assert (=> b!992773 (= e!560177 e!560178)))

(declare-fun res!663644 () Bool)

(assert (=> b!992773 (=> res!663644 e!560178)))

(assert (=> b!992773 (= res!663644 (= (h!22177 l!3519) e!29))))

(declare-fun b!992774 () Bool)

(assert (=> b!992774 (= e!560178 (contains!5776 (t!30028 l!3519) e!29))))

(assert (= (and d!118277 res!663643) b!992773))

(assert (= (and b!992773 (not res!663644)) b!992774))

(declare-fun m!920595 () Bool)

(assert (=> d!118277 m!920595))

(declare-fun m!920599 () Bool)

(assert (=> d!118277 m!920599))

(declare-fun m!920601 () Bool)

(assert (=> b!992774 m!920601))

(assert (=> start!85278 d!118277))

(push 1)

