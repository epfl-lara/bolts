; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89046 () Bool)

(assert start!89046)

(declare-fun b!1020746 () Bool)

(declare-fun e!574668 () Bool)

(declare-fun tp_is_empty!23817 () Bool)

(declare-fun tp!71312 () Bool)

(assert (=> b!1020746 (= e!574668 (and tp_is_empty!23817 tp!71312))))

(declare-fun res!684283 () Bool)

(declare-fun e!574667 () Bool)

(assert (=> start!89046 (=> (not res!684283) (not e!574667))))

(declare-datatypes ((B!1750 0))(
  ( (B!1751 (val!11959 Int)) )
))
(declare-datatypes ((tuple2!15554 0))(
  ( (tuple2!15555 (_1!7787 (_ BitVec 64)) (_2!7787 B!1750)) )
))
(declare-datatypes ((List!21761 0))(
  ( (Nil!21758) (Cons!21757 (h!22955 tuple2!15554) (t!30778 List!21761)) )
))
(declare-fun l!1367 () List!21761)

(declare-fun isStrictlySorted!708 (List!21761) Bool)

(assert (=> start!89046 (= res!684283 (isStrictlySorted!708 l!1367))))

(assert (=> start!89046 e!574667))

(assert (=> start!89046 e!574668))

(assert (=> start!89046 true))

(assert (=> start!89046 tp_is_empty!23817))

(declare-fun b!1020745 () Bool)

(declare-fun e!574669 () Bool)

(declare-fun key!393 () (_ BitVec 64))

(declare-fun containsKey!558 (List!21761 (_ BitVec 64)) Bool)

(assert (=> b!1020745 (= e!574669 (not (containsKey!558 l!1367 key!393)))))

(declare-fun b!1020743 () Bool)

(assert (=> b!1020743 (= e!574667 e!574669)))

(declare-fun res!684285 () Bool)

(assert (=> b!1020743 (=> (not res!684285) (not e!574669))))

(declare-fun lt!449926 () tuple2!15554)

(declare-fun contains!5952 (List!21761 tuple2!15554) Bool)

(assert (=> b!1020743 (= res!684285 (contains!5952 l!1367 lt!449926))))

(declare-fun value!188 () B!1750)

(assert (=> b!1020743 (= lt!449926 (tuple2!15555 key!393 value!188))))

(declare-fun b!1020744 () Bool)

(declare-fun res!684284 () Bool)

(assert (=> b!1020744 (=> (not res!684284) (not e!574669))))

(get-info :version)

(assert (=> b!1020744 (= res!684284 (or (not ((_ is Cons!21757) l!1367)) (= (h!22955 l!1367) lt!449926)))))

(assert (= (and start!89046 res!684283) b!1020743))

(assert (= (and b!1020743 res!684285) b!1020744))

(assert (= (and b!1020744 res!684284) b!1020745))

(assert (= (and start!89046 ((_ is Cons!21757) l!1367)) b!1020746))

(declare-fun m!940675 () Bool)

(assert (=> start!89046 m!940675))

(declare-fun m!940677 () Bool)

(assert (=> b!1020745 m!940677))

(declare-fun m!940679 () Bool)

(assert (=> b!1020743 m!940679))

(check-sat (not b!1020743) tp_is_empty!23817 (not start!89046) (not b!1020746) (not b!1020745))
(check-sat)
(get-model)

(declare-fun d!122413 () Bool)

(declare-fun lt!449932 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!509 (List!21761) (InoxSet tuple2!15554))

(assert (=> d!122413 (= lt!449932 (select (content!509 l!1367) lt!449926))))

(declare-fun e!574694 () Bool)

(assert (=> d!122413 (= lt!449932 e!574694)))

(declare-fun res!684309 () Bool)

(assert (=> d!122413 (=> (not res!684309) (not e!574694))))

(assert (=> d!122413 (= res!684309 ((_ is Cons!21757) l!1367))))

(assert (=> d!122413 (= (contains!5952 l!1367 lt!449926) lt!449932)))

(declare-fun b!1020771 () Bool)

(declare-fun e!574693 () Bool)

(assert (=> b!1020771 (= e!574694 e!574693)))

(declare-fun res!684310 () Bool)

(assert (=> b!1020771 (=> res!684310 e!574693)))

(assert (=> b!1020771 (= res!684310 (= (h!22955 l!1367) lt!449926))))

(declare-fun b!1020772 () Bool)

(assert (=> b!1020772 (= e!574693 (contains!5952 (t!30778 l!1367) lt!449926))))

(assert (= (and d!122413 res!684309) b!1020771))

(assert (= (and b!1020771 (not res!684310)) b!1020772))

(declare-fun m!940689 () Bool)

(assert (=> d!122413 m!940689))

(declare-fun m!940691 () Bool)

(assert (=> d!122413 m!940691))

(declare-fun m!940693 () Bool)

(assert (=> b!1020772 m!940693))

(assert (=> b!1020743 d!122413))

(declare-fun d!122419 () Bool)

(declare-fun res!684327 () Bool)

(declare-fun e!574711 () Bool)

(assert (=> d!122419 (=> res!684327 e!574711)))

(assert (=> d!122419 (= res!684327 (and ((_ is Cons!21757) l!1367) (= (_1!7787 (h!22955 l!1367)) key!393)))))

(assert (=> d!122419 (= (containsKey!558 l!1367 key!393) e!574711)))

(declare-fun b!1020791 () Bool)

(declare-fun e!574712 () Bool)

(assert (=> b!1020791 (= e!574711 e!574712)))

(declare-fun res!684328 () Bool)

(assert (=> b!1020791 (=> (not res!684328) (not e!574712))))

(assert (=> b!1020791 (= res!684328 (and (or (not ((_ is Cons!21757) l!1367)) (bvsle (_1!7787 (h!22955 l!1367)) key!393)) ((_ is Cons!21757) l!1367) (bvslt (_1!7787 (h!22955 l!1367)) key!393)))))

(declare-fun b!1020792 () Bool)

(assert (=> b!1020792 (= e!574712 (containsKey!558 (t!30778 l!1367) key!393))))

(assert (= (and d!122419 (not res!684327)) b!1020791))

(assert (= (and b!1020791 res!684328) b!1020792))

(declare-fun m!940699 () Bool)

(assert (=> b!1020792 m!940699))

(assert (=> b!1020745 d!122419))

(declare-fun d!122425 () Bool)

(declare-fun res!684343 () Bool)

(declare-fun e!574727 () Bool)

(assert (=> d!122425 (=> res!684343 e!574727)))

(assert (=> d!122425 (= res!684343 (or ((_ is Nil!21758) l!1367) ((_ is Nil!21758) (t!30778 l!1367))))))

(assert (=> d!122425 (= (isStrictlySorted!708 l!1367) e!574727)))

(declare-fun b!1020808 () Bool)

(declare-fun e!574728 () Bool)

(assert (=> b!1020808 (= e!574727 e!574728)))

(declare-fun res!684344 () Bool)

(assert (=> b!1020808 (=> (not res!684344) (not e!574728))))

(assert (=> b!1020808 (= res!684344 (bvslt (_1!7787 (h!22955 l!1367)) (_1!7787 (h!22955 (t!30778 l!1367)))))))

(declare-fun b!1020810 () Bool)

(assert (=> b!1020810 (= e!574728 (isStrictlySorted!708 (t!30778 l!1367)))))

(assert (= (and d!122425 (not res!684343)) b!1020808))

(assert (= (and b!1020808 res!684344) b!1020810))

(declare-fun m!940709 () Bool)

(assert (=> b!1020810 m!940709))

(assert (=> start!89046 d!122425))

(declare-fun b!1020820 () Bool)

(declare-fun e!574736 () Bool)

(declare-fun tp!71321 () Bool)

(assert (=> b!1020820 (= e!574736 (and tp_is_empty!23817 tp!71321))))

(assert (=> b!1020746 (= tp!71312 e!574736)))

(assert (= (and b!1020746 ((_ is Cons!21757) (t!30778 l!1367))) b!1020820))

(check-sat (not b!1020792) (not b!1020820) (not b!1020772) (not b!1020810) tp_is_empty!23817 (not d!122413))
