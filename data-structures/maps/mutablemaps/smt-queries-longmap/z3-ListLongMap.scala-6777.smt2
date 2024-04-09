; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85262 () Bool)

(assert start!85262)

(declare-fun res!663583 () Bool)

(declare-fun e!560108 () Bool)

(assert (=> start!85262 (=> (not res!663583) (not e!560108))))

(declare-datatypes ((List!21017 0))(
  ( (Nil!21014) (Cons!21013 (h!22175 (_ BitVec 64)) (t!30026 List!21017)) )
))
(declare-fun l!3519 () List!21017)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5774 (List!21017 (_ BitVec 64)) Bool)

(assert (=> start!85262 (= res!663583 (not (contains!5774 l!3519 e!29)))))

(assert (=> start!85262 e!560108))

(assert (=> start!85262 true))

(declare-fun b!992695 () Bool)

(declare-fun ListPrimitiveSize!92 (List!21017) Int)

(assert (=> b!992695 (= e!560108 (< (ListPrimitiveSize!92 l!3519) 0))))

(assert (= (and start!85262 res!663583) b!992695))

(declare-fun m!920511 () Bool)

(assert (=> start!85262 m!920511))

(declare-fun m!920513 () Bool)

(assert (=> b!992695 m!920513))

(check-sat (not start!85262) (not b!992695))
(check-sat)
(get-model)

(declare-fun d!118241 () Bool)

(declare-fun lt!440270 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!457 (List!21017) (InoxSet (_ BitVec 64)))

(assert (=> d!118241 (= lt!440270 (select (content!457 l!3519) e!29))))

(declare-fun e!560128 () Bool)

(assert (=> d!118241 (= lt!440270 e!560128)))

(declare-fun res!663597 () Bool)

(assert (=> d!118241 (=> (not res!663597) (not e!560128))))

(get-info :version)

(assert (=> d!118241 (= res!663597 ((_ is Cons!21013) l!3519))))

(assert (=> d!118241 (= (contains!5774 l!3519 e!29) lt!440270)))

(declare-fun b!992719 () Bool)

(declare-fun e!560127 () Bool)

(assert (=> b!992719 (= e!560128 e!560127)))

(declare-fun res!663598 () Bool)

(assert (=> b!992719 (=> res!663598 e!560127)))

(assert (=> b!992719 (= res!663598 (= (h!22175 l!3519) e!29))))

(declare-fun b!992720 () Bool)

(assert (=> b!992720 (= e!560127 (contains!5774 (t!30026 l!3519) e!29))))

(assert (= (and d!118241 res!663597) b!992719))

(assert (= (and b!992719 (not res!663598)) b!992720))

(declare-fun m!920527 () Bool)

(assert (=> d!118241 m!920527))

(declare-fun m!920529 () Bool)

(assert (=> d!118241 m!920529))

(declare-fun m!920531 () Bool)

(assert (=> b!992720 m!920531))

(assert (=> start!85262 d!118241))

(declare-fun d!118247 () Bool)

(declare-fun lt!440277 () Int)

(assert (=> d!118247 (>= lt!440277 0)))

(declare-fun e!560138 () Int)

(assert (=> d!118247 (= lt!440277 e!560138)))

(declare-fun c!100701 () Bool)

(assert (=> d!118247 (= c!100701 ((_ is Nil!21014) l!3519))))

(assert (=> d!118247 (= (ListPrimitiveSize!92 l!3519) lt!440277)))

(declare-fun b!992733 () Bool)

(assert (=> b!992733 (= e!560138 0)))

(declare-fun b!992734 () Bool)

(assert (=> b!992734 (= e!560138 (+ 1 (ListPrimitiveSize!92 (t!30026 l!3519))))))

(assert (= (and d!118247 c!100701) b!992733))

(assert (= (and d!118247 (not c!100701)) b!992734))

(declare-fun m!920541 () Bool)

(assert (=> b!992734 m!920541))

(assert (=> b!992695 d!118247))

(check-sat (not d!118241) (not b!992720) (not b!992734))
(check-sat)
