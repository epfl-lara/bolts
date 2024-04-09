; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85416 () Bool)

(assert start!85416)

(declare-fun res!663819 () Bool)

(declare-fun e!560396 () Bool)

(assert (=> start!85416 (=> (not res!663819) (not e!560396))))

(declare-datatypes ((List!21031 0))(
  ( (Nil!21028) (Cons!21027 (h!22189 (_ BitVec 64)) (t!30040 List!21031)) )
))
(declare-fun l!3519 () List!21031)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5788 (List!21031 (_ BitVec 64)) Bool)

(assert (=> start!85416 (= res!663819 (not (contains!5788 l!3519 e!29)))))

(assert (=> start!85416 e!560396))

(assert (=> start!85416 true))

(declare-fun b!993057 () Bool)

(declare-fun res!663820 () Bool)

(assert (=> b!993057 (=> (not res!663820) (not e!560396))))

(declare-datatypes ((tuple2!15102 0))(
  ( (tuple2!15103 (_1!7561 (_ BitVec 64)) (_2!7561 List!21031)) )
))
(declare-datatypes ((Option!564 0))(
  ( (Some!563 (v!14394 tuple2!15102)) (None!562) )
))
(declare-fun isEmpty!773 (Option!564) Bool)

(declare-fun unapply!40 (List!21031) Option!564)

(assert (=> b!993057 (= res!663820 (isEmpty!773 (unapply!40 l!3519)))))

(declare-fun b!993058 () Bool)

(assert (=> b!993058 (= e!560396 (not (is-Nil!21028 l!3519)))))

(assert (= (and start!85416 res!663819) b!993057))

(assert (= (and b!993057 res!663820) b!993058))

(declare-fun m!920915 () Bool)

(assert (=> start!85416 m!920915))

(declare-fun m!920917 () Bool)

(assert (=> b!993057 m!920917))

(assert (=> b!993057 m!920917))

(declare-fun m!920919 () Bool)

(assert (=> b!993057 m!920919))

(push 1)

(assert (not start!85416))

(assert (not b!993057))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118403 () Bool)

(declare-fun lt!440423 () Bool)

(declare-fun content!471 (List!21031) (Set (_ BitVec 64)))

(assert (=> d!118403 (= lt!440423 (set.member e!29 (content!471 l!3519)))))

(declare-fun e!560411 () Bool)

(assert (=> d!118403 (= lt!440423 e!560411)))

(declare-fun res!663842 () Bool)

(assert (=> d!118403 (=> (not res!663842) (not e!560411))))

(assert (=> d!118403 (= res!663842 (is-Cons!21027 l!3519))))

(assert (=> d!118403 (= (contains!5788 l!3519 e!29) lt!440423)))

(declare-fun b!993079 () Bool)

(declare-fun e!560412 () Bool)

(assert (=> b!993079 (= e!560411 e!560412)))

(declare-fun res!663841 () Bool)

(assert (=> b!993079 (=> res!663841 e!560412)))

(assert (=> b!993079 (= res!663841 (= (h!22189 l!3519) e!29))))

(declare-fun b!993080 () Bool)

(assert (=> b!993080 (= e!560412 (contains!5788 (t!30040 l!3519) e!29))))

(assert (= (and d!118403 res!663842) b!993079))

(assert (= (and b!993079 (not res!663841)) b!993080))

(declare-fun m!920933 () Bool)

(assert (=> d!118403 m!920933))

(declare-fun m!920935 () Bool)

(assert (=> d!118403 m!920935))

(declare-fun m!920937 () Bool)

(assert (=> b!993080 m!920937))

(assert (=> start!85416 d!118403))

(declare-fun d!118413 () Bool)

(assert (=> d!118413 (= (isEmpty!773 (unapply!40 l!3519)) (not (is-Some!563 (unapply!40 l!3519))))))

(assert (=> b!993057 d!118413))

(declare-fun d!118417 () Bool)

(assert (=> d!118417 (= (unapply!40 l!3519) (ite (is-Nil!21028 l!3519) None!562 (Some!563 (tuple2!15103 (h!22189 l!3519) (t!30040 l!3519)))))))

(assert (=> b!993057 d!118417))

(push 1)

