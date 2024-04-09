; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85280 () Bool)

(assert start!85280)

(declare-fun res!663615 () Bool)

(declare-fun e!560149 () Bool)

(assert (=> start!85280 (=> (not res!663615) (not e!560149))))

(declare-datatypes ((List!21020 0))(
  ( (Nil!21017) (Cons!21016 (h!22178 (_ BitVec 64)) (t!30029 List!21020)) )
))
(declare-fun l!3519 () List!21020)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5777 (List!21020 (_ BitVec 64)) Bool)

(assert (=> start!85280 (= res!663615 (not (contains!5777 l!3519 e!29)))))

(assert (=> start!85280 e!560149))

(assert (=> start!85280 true))

(declare-fun b!992745 () Bool)

(declare-fun e!560150 () Bool)

(assert (=> b!992745 (= e!560149 e!560150)))

(declare-fun res!663616 () Bool)

(assert (=> b!992745 (=> (not res!663616) (not e!560150))))

(declare-datatypes ((tuple2!15080 0))(
  ( (tuple2!15081 (_1!7550 (_ BitVec 64)) (_2!7550 List!21020)) )
))
(declare-datatypes ((Option!553 0))(
  ( (Some!552 (v!14371 tuple2!15080)) (None!551) )
))
(declare-fun lt!440283 () Option!553)

(declare-fun isEmpty!762 (Option!553) Bool)

(assert (=> b!992745 (= res!663616 (not (isEmpty!762 lt!440283)))))

(declare-fun unapply!29 (List!21020) Option!553)

(assert (=> b!992745 (= lt!440283 (unapply!29 l!3519))))

(declare-fun b!992746 () Bool)

(declare-fun get!15725 (Option!553) tuple2!15080)

(assert (=> b!992746 (= e!560150 (contains!5777 (_2!7550 (get!15725 lt!440283)) e!29))))

(assert (= (and start!85280 res!663615) b!992745))

(assert (= (and b!992745 res!663616) b!992746))

(declare-fun m!920553 () Bool)

(assert (=> start!85280 m!920553))

(declare-fun m!920555 () Bool)

(assert (=> b!992745 m!920555))

(declare-fun m!920557 () Bool)

(assert (=> b!992745 m!920557))

(declare-fun m!920559 () Bool)

(assert (=> b!992746 m!920559))

(declare-fun m!920561 () Bool)

(assert (=> b!992746 m!920561))

(check-sat (not b!992745) (not b!992746) (not start!85280))
(check-sat)
(get-model)

(declare-fun d!118251 () Bool)

(get-info :version)

(assert (=> d!118251 (= (isEmpty!762 lt!440283) (not ((_ is Some!552) lt!440283)))))

(assert (=> b!992745 d!118251))

(declare-fun d!118257 () Bool)

(assert (=> d!118257 (= (unapply!29 l!3519) (ite ((_ is Nil!21017) l!3519) None!551 (Some!552 (tuple2!15081 (h!22178 l!3519) (t!30029 l!3519)))))))

(assert (=> b!992745 d!118257))

(declare-fun d!118263 () Bool)

(declare-fun lt!440293 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!459 (List!21020) (InoxSet (_ BitVec 64)))

(assert (=> d!118263 (= lt!440293 (select (content!459 (_2!7550 (get!15725 lt!440283))) e!29))))

(declare-fun e!560169 () Bool)

(assert (=> d!118263 (= lt!440293 e!560169)))

(declare-fun res!663635 () Bool)

(assert (=> d!118263 (=> (not res!663635) (not e!560169))))

(assert (=> d!118263 (= res!663635 ((_ is Cons!21016) (_2!7550 (get!15725 lt!440283))))))

(assert (=> d!118263 (= (contains!5777 (_2!7550 (get!15725 lt!440283)) e!29) lt!440293)))

(declare-fun b!992765 () Bool)

(declare-fun e!560170 () Bool)

(assert (=> b!992765 (= e!560169 e!560170)))

(declare-fun res!663636 () Bool)

(assert (=> b!992765 (=> res!663636 e!560170)))

(assert (=> b!992765 (= res!663636 (= (h!22178 (_2!7550 (get!15725 lt!440283))) e!29))))

(declare-fun b!992766 () Bool)

(assert (=> b!992766 (= e!560170 (contains!5777 (t!30029 (_2!7550 (get!15725 lt!440283))) e!29))))

(assert (= (and d!118263 res!663635) b!992765))

(assert (= (and b!992765 (not res!663636)) b!992766))

(declare-fun m!920573 () Bool)

(assert (=> d!118263 m!920573))

(declare-fun m!920577 () Bool)

(assert (=> d!118263 m!920577))

(declare-fun m!920581 () Bool)

(assert (=> b!992766 m!920581))

(assert (=> b!992746 d!118263))

(declare-fun d!118269 () Bool)

(assert (=> d!118269 (= (get!15725 lt!440283) (v!14371 lt!440283))))

(assert (=> b!992746 d!118269))

(declare-fun d!118275 () Bool)

(declare-fun lt!440296 () Bool)

(assert (=> d!118275 (= lt!440296 (select (content!459 l!3519) e!29))))

(declare-fun e!560175 () Bool)

(assert (=> d!118275 (= lt!440296 e!560175)))

(declare-fun res!663641 () Bool)

(assert (=> d!118275 (=> (not res!663641) (not e!560175))))

(assert (=> d!118275 (= res!663641 ((_ is Cons!21016) l!3519))))

(assert (=> d!118275 (= (contains!5777 l!3519 e!29) lt!440296)))

(declare-fun b!992771 () Bool)

(declare-fun e!560176 () Bool)

(assert (=> b!992771 (= e!560175 e!560176)))

(declare-fun res!663642 () Bool)

(assert (=> b!992771 (=> res!663642 e!560176)))

(assert (=> b!992771 (= res!663642 (= (h!22178 l!3519) e!29))))

(declare-fun b!992772 () Bool)

(assert (=> b!992772 (= e!560176 (contains!5777 (t!30029 l!3519) e!29))))

(assert (= (and d!118275 res!663641) b!992771))

(assert (= (and b!992771 (not res!663642)) b!992772))

(declare-fun m!920591 () Bool)

(assert (=> d!118275 m!920591))

(declare-fun m!920593 () Bool)

(assert (=> d!118275 m!920593))

(declare-fun m!920597 () Bool)

(assert (=> b!992772 m!920597))

(assert (=> start!85280 d!118275))

(check-sat (not d!118275) (not d!118263) (not b!992772) (not b!992766))
(check-sat)
