; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85226 () Bool)

(assert start!85226)

(declare-fun res!663534 () Bool)

(declare-fun e!560060 () Bool)

(assert (=> start!85226 (=> (not res!663534) (not e!560060))))

(declare-datatypes ((List!21011 0))(
  ( (Nil!21008) (Cons!21007 (h!22169 (_ BitVec 64)) (t!30020 List!21011)) )
))
(declare-fun l!3519 () List!21011)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5768 (List!21011 (_ BitVec 64)) Bool)

(assert (=> start!85226 (= res!663534 (not (contains!5768 l!3519 e!29)))))

(assert (=> start!85226 e!560060))

(assert (=> start!85226 true))

(declare-fun b!992646 () Bool)

(declare-fun e!560059 () Bool)

(assert (=> b!992646 (= e!560060 e!560059)))

(declare-fun res!663535 () Bool)

(assert (=> b!992646 (=> (not res!663535) (not e!560059))))

(declare-datatypes ((tuple2!15068 0))(
  ( (tuple2!15069 (_1!7544 (_ BitVec 64)) (_2!7544 List!21011)) )
))
(declare-datatypes ((Option!547 0))(
  ( (Some!546 (v!14359 tuple2!15068)) (None!545) )
))
(declare-fun lt!440229 () Option!547)

(declare-fun isEmpty!756 (Option!547) Bool)

(assert (=> b!992646 (= res!663535 (not (isEmpty!756 lt!440229)))))

(declare-fun unapply!23 (List!21011) Option!547)

(assert (=> b!992646 (= lt!440229 (unapply!23 l!3519))))

(declare-fun b!992647 () Bool)

(declare-fun isDefined!391 (Option!547) Bool)

(assert (=> b!992647 (= e!560059 (not (isDefined!391 lt!440229)))))

(assert (= (and start!85226 res!663534) b!992646))

(assert (= (and b!992646 res!663535) b!992647))

(declare-fun m!920443 () Bool)

(assert (=> start!85226 m!920443))

(declare-fun m!920445 () Bool)

(assert (=> b!992646 m!920445))

(declare-fun m!920447 () Bool)

(assert (=> b!992646 m!920447))

(declare-fun m!920449 () Bool)

(assert (=> b!992647 m!920449))

(check-sat (not b!992646) (not b!992647) (not start!85226))
(check-sat)
(get-model)

(declare-fun d!118211 () Bool)

(get-info :version)

(assert (=> d!118211 (= (isEmpty!756 lt!440229) (not ((_ is Some!546) lt!440229)))))

(assert (=> b!992646 d!118211))

(declare-fun d!118217 () Bool)

(assert (=> d!118217 (= (unapply!23 l!3519) (ite ((_ is Nil!21008) l!3519) None!545 (Some!546 (tuple2!15069 (h!22169 l!3519) (t!30020 l!3519)))))))

(assert (=> b!992646 d!118217))

(declare-fun d!118223 () Bool)

(assert (=> d!118223 (= (isDefined!391 lt!440229) (not (isEmpty!756 lt!440229)))))

(declare-fun bs!28231 () Bool)

(assert (= bs!28231 d!118223))

(assert (=> bs!28231 m!920445))

(assert (=> b!992647 d!118223))

(declare-fun d!118231 () Bool)

(declare-fun lt!440241 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!454 (List!21011) (InoxSet (_ BitVec 64)))

(assert (=> d!118231 (= lt!440241 (select (content!454 l!3519) e!29))))

(declare-fun e!560083 () Bool)

(assert (=> d!118231 (= lt!440241 e!560083)))

(declare-fun res!663558 () Bool)

(assert (=> d!118231 (=> (not res!663558) (not e!560083))))

(assert (=> d!118231 (= res!663558 ((_ is Cons!21007) l!3519))))

(assert (=> d!118231 (= (contains!5768 l!3519 e!29) lt!440241)))

(declare-fun b!992670 () Bool)

(declare-fun e!560084 () Bool)

(assert (=> b!992670 (= e!560083 e!560084)))

(declare-fun res!663559 () Bool)

(assert (=> b!992670 (=> res!663559 e!560084)))

(assert (=> b!992670 (= res!663559 (= (h!22169 l!3519) e!29))))

(declare-fun b!992671 () Bool)

(assert (=> b!992671 (= e!560084 (contains!5768 (t!30020 l!3519) e!29))))

(assert (= (and d!118231 res!663558) b!992670))

(assert (= (and b!992670 (not res!663559)) b!992671))

(declare-fun m!920465 () Bool)

(assert (=> d!118231 m!920465))

(declare-fun m!920471 () Bool)

(assert (=> d!118231 m!920471))

(declare-fun m!920475 () Bool)

(assert (=> b!992671 m!920475))

(assert (=> start!85226 d!118231))

(check-sat (not b!992671) (not d!118231) (not d!118223))
(check-sat)
