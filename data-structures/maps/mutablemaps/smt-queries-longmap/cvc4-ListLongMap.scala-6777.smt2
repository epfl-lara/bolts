; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85264 () Bool)

(assert start!85264)

(declare-fun res!663586 () Bool)

(declare-fun e!560111 () Bool)

(assert (=> start!85264 (=> (not res!663586) (not e!560111))))

(declare-datatypes ((List!21018 0))(
  ( (Nil!21015) (Cons!21014 (h!22176 (_ BitVec 64)) (t!30027 List!21018)) )
))
(declare-fun l!3519 () List!21018)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5775 (List!21018 (_ BitVec 64)) Bool)

(assert (=> start!85264 (= res!663586 (not (contains!5775 l!3519 e!29)))))

(assert (=> start!85264 e!560111))

(assert (=> start!85264 true))

(declare-fun b!992698 () Bool)

(declare-fun ListPrimitiveSize!93 (List!21018) Int)

(assert (=> b!992698 (= e!560111 (< (ListPrimitiveSize!93 l!3519) 0))))

(assert (= (and start!85264 res!663586) b!992698))

(declare-fun m!920515 () Bool)

(assert (=> start!85264 m!920515))

(declare-fun m!920517 () Bool)

(assert (=> b!992698 m!920517))

(push 1)

(assert (not start!85264))

(assert (not b!992698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118239 () Bool)

(declare-fun lt!440267 () Bool)

(declare-fun content!456 (List!21018) (Set (_ BitVec 64)))

(assert (=> d!118239 (= lt!440267 (member e!29 (content!456 l!3519)))))

(declare-fun e!560124 () Bool)

(assert (=> d!118239 (= lt!440267 e!560124)))

(declare-fun res!663596 () Bool)

(assert (=> d!118239 (=> (not res!663596) (not e!560124))))

(assert (=> d!118239 (= res!663596 (is-Cons!21014 l!3519))))

(assert (=> d!118239 (= (contains!5775 l!3519 e!29) lt!440267)))

(declare-fun b!992713 () Bool)

(declare-fun e!560123 () Bool)

(assert (=> b!992713 (= e!560124 e!560123)))

(declare-fun res!663595 () Bool)

(assert (=> b!992713 (=> res!663595 e!560123)))

(assert (=> b!992713 (= res!663595 (= (h!22176 l!3519) e!29))))

(declare-fun b!992714 () Bool)

(assert (=> b!992714 (= e!560123 (contains!5775 (t!30027 l!3519) e!29))))

(assert (= (and d!118239 res!663596) b!992713))

(assert (= (and b!992713 (not res!663595)) b!992714))

(declare-fun m!920521 () Bool)

(assert (=> d!118239 m!920521))

(declare-fun m!920523 () Bool)

(assert (=> d!118239 m!920523))

(declare-fun m!920525 () Bool)

(assert (=> b!992714 m!920525))

(assert (=> start!85264 d!118239))

(declare-fun d!118245 () Bool)

(declare-fun lt!440273 () Int)

(assert (=> d!118245 (>= lt!440273 0)))

(declare-fun e!560129 () Int)

(assert (=> d!118245 (= lt!440273 e!560129)))

(declare-fun c!100698 () Bool)

(assert (=> d!118245 (= c!100698 (is-Nil!21015 l!3519))))

(assert (=> d!118245 (= (ListPrimitiveSize!93 l!3519) lt!440273)))

(declare-fun b!992721 () Bool)

(assert (=> b!992721 (= e!560129 0)))

(declare-fun b!992722 () Bool)

(assert (=> b!992722 (= e!560129 (+ 1 (ListPrimitiveSize!93 (t!30027 l!3519))))))

(assert (= (and d!118245 c!100698) b!992721))

(assert (= (and d!118245 (not c!100698)) b!992722))

(declare-fun m!920533 () Bool)

(assert (=> b!992722 m!920533))

(assert (=> b!992698 d!118245))

(push 1)

(assert (not b!992722))

