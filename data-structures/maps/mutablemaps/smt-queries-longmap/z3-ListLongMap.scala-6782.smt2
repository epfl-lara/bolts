; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85418 () Bool)

(assert start!85418)

(declare-fun res!663825 () Bool)

(declare-fun e!560399 () Bool)

(assert (=> start!85418 (=> (not res!663825) (not e!560399))))

(declare-datatypes ((List!21032 0))(
  ( (Nil!21029) (Cons!21028 (h!22190 (_ BitVec 64)) (t!30041 List!21032)) )
))
(declare-fun l!3519 () List!21032)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5789 (List!21032 (_ BitVec 64)) Bool)

(assert (=> start!85418 (= res!663825 (not (contains!5789 l!3519 e!29)))))

(assert (=> start!85418 e!560399))

(assert (=> start!85418 true))

(declare-fun b!993063 () Bool)

(declare-fun res!663826 () Bool)

(assert (=> b!993063 (=> (not res!663826) (not e!560399))))

(declare-datatypes ((tuple2!15104 0))(
  ( (tuple2!15105 (_1!7562 (_ BitVec 64)) (_2!7562 List!21032)) )
))
(declare-datatypes ((Option!565 0))(
  ( (Some!564 (v!14395 tuple2!15104)) (None!563) )
))
(declare-fun isEmpty!774 (Option!565) Bool)

(declare-fun unapply!41 (List!21032) Option!565)

(assert (=> b!993063 (= res!663826 (isEmpty!774 (unapply!41 l!3519)))))

(declare-fun b!993064 () Bool)

(get-info :version)

(assert (=> b!993064 (= e!560399 (not ((_ is Nil!21029) l!3519)))))

(assert (= (and start!85418 res!663825) b!993063))

(assert (= (and b!993063 res!663826) b!993064))

(declare-fun m!920921 () Bool)

(assert (=> start!85418 m!920921))

(declare-fun m!920923 () Bool)

(assert (=> b!993063 m!920923))

(assert (=> b!993063 m!920923))

(declare-fun m!920925 () Bool)

(assert (=> b!993063 m!920925))

(check-sat (not start!85418) (not b!993063))
(check-sat)
(get-model)

(declare-fun d!118405 () Bool)

(declare-fun lt!440424 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!472 (List!21032) (InoxSet (_ BitVec 64)))

(assert (=> d!118405 (= lt!440424 (select (content!472 l!3519) e!29))))

(declare-fun e!560414 () Bool)

(assert (=> d!118405 (= lt!440424 e!560414)))

(declare-fun res!663843 () Bool)

(assert (=> d!118405 (=> (not res!663843) (not e!560414))))

(assert (=> d!118405 (= res!663843 ((_ is Cons!21028) l!3519))))

(assert (=> d!118405 (= (contains!5789 l!3519 e!29) lt!440424)))

(declare-fun b!993081 () Bool)

(declare-fun e!560413 () Bool)

(assert (=> b!993081 (= e!560414 e!560413)))

(declare-fun res!663844 () Bool)

(assert (=> b!993081 (=> res!663844 e!560413)))

(assert (=> b!993081 (= res!663844 (= (h!22190 l!3519) e!29))))

(declare-fun b!993082 () Bool)

(assert (=> b!993082 (= e!560413 (contains!5789 (t!30041 l!3519) e!29))))

(assert (= (and d!118405 res!663843) b!993081))

(assert (= (and b!993081 (not res!663844)) b!993082))

(declare-fun m!920939 () Bool)

(assert (=> d!118405 m!920939))

(declare-fun m!920941 () Bool)

(assert (=> d!118405 m!920941))

(declare-fun m!920943 () Bool)

(assert (=> b!993082 m!920943))

(assert (=> start!85418 d!118405))

(declare-fun d!118415 () Bool)

(assert (=> d!118415 (= (isEmpty!774 (unapply!41 l!3519)) (not ((_ is Some!564) (unapply!41 l!3519))))))

(assert (=> b!993063 d!118415))

(declare-fun d!118419 () Bool)

(assert (=> d!118419 (= (unapply!41 l!3519) (ite ((_ is Nil!21029) l!3519) None!563 (Some!564 (tuple2!15105 (h!22190 l!3519) (t!30041 l!3519)))))))

(assert (=> b!993063 d!118419))

(check-sat (not d!118405) (not b!993082))
(check-sat)
