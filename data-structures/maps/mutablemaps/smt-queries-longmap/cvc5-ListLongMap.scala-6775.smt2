; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85224 () Bool)

(assert start!85224)

(declare-fun res!663529 () Bool)

(declare-fun e!560053 () Bool)

(assert (=> start!85224 (=> (not res!663529) (not e!560053))))

(declare-datatypes ((List!21010 0))(
  ( (Nil!21007) (Cons!21006 (h!22168 (_ BitVec 64)) (t!30019 List!21010)) )
))
(declare-fun l!3519 () List!21010)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5767 (List!21010 (_ BitVec 64)) Bool)

(assert (=> start!85224 (= res!663529 (not (contains!5767 l!3519 e!29)))))

(assert (=> start!85224 e!560053))

(assert (=> start!85224 true))

(declare-fun b!992640 () Bool)

(declare-fun e!560054 () Bool)

(assert (=> b!992640 (= e!560053 e!560054)))

(declare-fun res!663528 () Bool)

(assert (=> b!992640 (=> (not res!663528) (not e!560054))))

(declare-datatypes ((tuple2!15066 0))(
  ( (tuple2!15067 (_1!7543 (_ BitVec 64)) (_2!7543 List!21010)) )
))
(declare-datatypes ((Option!546 0))(
  ( (Some!545 (v!14358 tuple2!15066)) (None!544) )
))
(declare-fun lt!440226 () Option!546)

(declare-fun isEmpty!755 (Option!546) Bool)

(assert (=> b!992640 (= res!663528 (not (isEmpty!755 lt!440226)))))

(declare-fun unapply!22 (List!21010) Option!546)

(assert (=> b!992640 (= lt!440226 (unapply!22 l!3519))))

(declare-fun b!992641 () Bool)

(declare-fun isDefined!390 (Option!546) Bool)

(assert (=> b!992641 (= e!560054 (not (isDefined!390 lt!440226)))))

(assert (= (and start!85224 res!663529) b!992640))

(assert (= (and b!992640 res!663528) b!992641))

(declare-fun m!920435 () Bool)

(assert (=> start!85224 m!920435))

(declare-fun m!920437 () Bool)

(assert (=> b!992640 m!920437))

(declare-fun m!920439 () Bool)

(assert (=> b!992640 m!920439))

(declare-fun m!920441 () Bool)

(assert (=> b!992641 m!920441))

(push 1)

(assert (not b!992640))

(assert (not b!992641))

(assert (not start!85224))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118209 () Bool)

(assert (=> d!118209 (= (isEmpty!755 lt!440226) (not (is-Some!545 lt!440226)))))

(assert (=> b!992640 d!118209))

(declare-fun d!118215 () Bool)

(assert (=> d!118215 (= (unapply!22 l!3519) (ite (is-Nil!21007 l!3519) None!544 (Some!545 (tuple2!15067 (h!22168 l!3519) (t!30019 l!3519)))))))

(assert (=> b!992640 d!118215))

(declare-fun d!118221 () Bool)

(assert (=> d!118221 (= (isDefined!390 lt!440226) (not (isEmpty!755 lt!440226)))))

(declare-fun bs!28229 () Bool)

(assert (= bs!28229 d!118221))

(assert (=> bs!28229 m!920437))

(assert (=> b!992641 d!118221))

(declare-fun d!118227 () Bool)

(declare-fun lt!440240 () Bool)

(declare-fun content!453 (List!21010) (Set (_ BitVec 64)))

(assert (=> d!118227 (= lt!440240 (set.member e!29 (content!453 l!3519)))))

(declare-fun e!560082 () Bool)

(assert (=> d!118227 (= lt!440240 e!560082)))

(declare-fun res!663557 () Bool)

(assert (=> d!118227 (=> (not res!663557) (not e!560082))))

(assert (=> d!118227 (= res!663557 (is-Cons!21006 l!3519))))

(assert (=> d!118227 (= (contains!5767 l!3519 e!29) lt!440240)))

(declare-fun b!992668 () Bool)

(declare-fun e!560081 () Bool)

(assert (=> b!992668 (= e!560082 e!560081)))

(declare-fun res!663556 () Bool)

(assert (=> b!992668 (=> res!663556 e!560081)))

(assert (=> b!992668 (= res!663556 (= (h!22168 l!3519) e!29))))

(declare-fun b!992669 () Bool)

(assert (=> b!992669 (= e!560081 (contains!5767 (t!30019 l!3519) e!29))))

(assert (= (and d!118227 res!663557) b!992668))

(assert (= (and b!992668 (not res!663556)) b!992669))

(declare-fun m!920461 () Bool)

(assert (=> d!118227 m!920461))

(declare-fun m!920467 () Bool)

(assert (=> d!118227 m!920467))

(declare-fun m!920473 () Bool)

(assert (=> b!992669 m!920473))

(assert (=> start!85224 d!118227))

(push 1)

