; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85260 () Bool)

(assert start!85260)

(declare-fun res!663580 () Bool)

(declare-fun e!560105 () Bool)

(assert (=> start!85260 (=> (not res!663580) (not e!560105))))

(declare-datatypes ((List!21016 0))(
  ( (Nil!21013) (Cons!21012 (h!22174 (_ BitVec 64)) (t!30025 List!21016)) )
))
(declare-fun l!3519 () List!21016)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5773 (List!21016 (_ BitVec 64)) Bool)

(assert (=> start!85260 (= res!663580 (not (contains!5773 l!3519 e!29)))))

(assert (=> start!85260 e!560105))

(assert (=> start!85260 true))

(declare-fun b!992692 () Bool)

(declare-fun ListPrimitiveSize!91 (List!21016) Int)

(assert (=> b!992692 (= e!560105 (< (ListPrimitiveSize!91 l!3519) 0))))

(assert (= (and start!85260 res!663580) b!992692))

(declare-fun m!920507 () Bool)

(assert (=> start!85260 m!920507))

(declare-fun m!920509 () Bool)

(assert (=> b!992692 m!920509))

(push 1)

(assert (not b!992692))

(assert (not start!85260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118237 () Bool)

(declare-fun lt!440264 () Int)

(assert (=> d!118237 (>= lt!440264 0)))

(declare-fun e!560118 () Int)

(assert (=> d!118237 (= lt!440264 e!560118)))

(declare-fun c!100695 () Bool)

(assert (=> d!118237 (= c!100695 (is-Nil!21013 l!3519))))

(assert (=> d!118237 (= (ListPrimitiveSize!91 l!3519) lt!440264)))

(declare-fun b!992707 () Bool)

(assert (=> b!992707 (= e!560118 0)))

(declare-fun b!992708 () Bool)

(assert (=> b!992708 (= e!560118 (+ 1 (ListPrimitiveSize!91 (t!30025 l!3519))))))

(assert (= (and d!118237 c!100695) b!992707))

(assert (= (and d!118237 (not c!100695)) b!992708))

(declare-fun m!920519 () Bool)

(assert (=> b!992708 m!920519))

(assert (=> b!992692 d!118237))

(declare-fun d!118243 () Bool)

(declare-fun lt!440276 () Bool)

(declare-fun content!458 (List!21016) (Set (_ BitVec 64)))

(assert (=> d!118243 (= lt!440276 (set.member e!29 (content!458 l!3519)))))

(declare-fun e!560137 () Bool)

(assert (=> d!118243 (= lt!440276 e!560137)))

(declare-fun res!663603 () Bool)

(assert (=> d!118243 (=> (not res!663603) (not e!560137))))

(assert (=> d!118243 (= res!663603 (is-Cons!21012 l!3519))))

(assert (=> d!118243 (= (contains!5773 l!3519 e!29) lt!440276)))

(declare-fun b!992731 () Bool)

(declare-fun e!560136 () Bool)

(assert (=> b!992731 (= e!560137 e!560136)))

(declare-fun res!663604 () Bool)

(assert (=> b!992731 (=> res!663604 e!560136)))

(assert (=> b!992731 (= res!663604 (= (h!22174 l!3519) e!29))))

(declare-fun b!992732 () Bool)

(assert (=> b!992732 (= e!560136 (contains!5773 (t!30025 l!3519) e!29))))

(assert (= (and d!118243 res!663603) b!992731))

(assert (= (and b!992731 (not res!663604)) b!992732))

(declare-fun m!920535 () Bool)

(assert (=> d!118243 m!920535))

(declare-fun m!920537 () Bool)

(assert (=> d!118243 m!920537))

(declare-fun m!920539 () Bool)

(assert (=> b!992732 m!920539))

(assert (=> start!85260 d!118243))

(push 1)

