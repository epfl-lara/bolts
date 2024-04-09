; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85388 () Bool)

(assert start!85388)

(declare-fun res!663776 () Bool)

(declare-fun e!560342 () Bool)

(assert (=> start!85388 (=> (not res!663776) (not e!560342))))

(declare-datatypes ((List!21029 0))(
  ( (Nil!21026) (Cons!21025 (h!22187 (_ BitVec 64)) (t!30038 List!21029)) )
))
(declare-fun l!3519 () List!21029)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5786 (List!21029 (_ BitVec 64)) Bool)

(assert (=> start!85388 (= res!663776 (not (contains!5786 l!3519 e!29)))))

(assert (=> start!85388 e!560342))

(assert (=> start!85388 true))

(declare-fun b!992978 () Bool)

(declare-fun res!663777 () Bool)

(assert (=> b!992978 (=> (not res!663777) (not e!560342))))

(declare-datatypes ((tuple2!15098 0))(
  ( (tuple2!15099 (_1!7559 (_ BitVec 64)) (_2!7559 List!21029)) )
))
(declare-datatypes ((Option!562 0))(
  ( (Some!561 (v!14389 tuple2!15098)) (None!560) )
))
(declare-fun isEmpty!771 (Option!562) Bool)

(declare-fun unapply!38 (List!21029) Option!562)

(assert (=> b!992978 (= res!663777 (isEmpty!771 (unapply!38 l!3519)))))

(declare-fun b!992979 () Bool)

(declare-fun res!663778 () Bool)

(assert (=> b!992979 (=> (not res!663778) (not e!560342))))

(get-info :version)

(assert (=> b!992979 (= res!663778 ((_ is Nil!21026) l!3519))))

(declare-fun b!992980 () Bool)

(declare-fun -!454 (List!21029 (_ BitVec 64)) List!21029)

(assert (=> b!992980 (= e!560342 (not (= (-!454 l!3519 e!29) l!3519)))))

(assert (= (and start!85388 res!663776) b!992978))

(assert (= (and b!992978 res!663777) b!992979))

(assert (= (and b!992979 res!663778) b!992980))

(declare-fun m!920851 () Bool)

(assert (=> start!85388 m!920851))

(declare-fun m!920853 () Bool)

(assert (=> b!992978 m!920853))

(assert (=> b!992978 m!920853))

(declare-fun m!920855 () Bool)

(assert (=> b!992978 m!920855))

(declare-fun m!920857 () Bool)

(assert (=> b!992980 m!920857))

(check-sat (not start!85388) (not b!992980) (not b!992978))
(check-sat)
(get-model)

(declare-fun d!118379 () Bool)

(declare-fun lt!440408 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!469 (List!21029) (InoxSet (_ BitVec 64)))

(assert (=> d!118379 (= lt!440408 (select (content!469 l!3519) e!29))))

(declare-fun e!560360 () Bool)

(assert (=> d!118379 (= lt!440408 e!560360)))

(declare-fun res!663802 () Bool)

(assert (=> d!118379 (=> (not res!663802) (not e!560360))))

(assert (=> d!118379 (= res!663802 ((_ is Cons!21025) l!3519))))

(assert (=> d!118379 (= (contains!5786 l!3519 e!29) lt!440408)))

(declare-fun b!993004 () Bool)

(declare-fun e!560361 () Bool)

(assert (=> b!993004 (= e!560360 e!560361)))

(declare-fun res!663803 () Bool)

(assert (=> b!993004 (=> res!663803 e!560361)))

(assert (=> b!993004 (= res!663803 (= (h!22187 l!3519) e!29))))

(declare-fun b!993005 () Bool)

(assert (=> b!993005 (= e!560361 (contains!5786 (t!30038 l!3519) e!29))))

(assert (= (and d!118379 res!663802) b!993004))

(assert (= (and b!993004 (not res!663803)) b!993005))

(declare-fun m!920869 () Bool)

(assert (=> d!118379 m!920869))

(declare-fun m!920873 () Bool)

(assert (=> d!118379 m!920873))

(declare-fun m!920877 () Bool)

(assert (=> b!993005 m!920877))

(assert (=> start!85388 d!118379))

(declare-fun d!118385 () Bool)

(declare-fun e!560387 () Bool)

(assert (=> d!118385 e!560387))

(declare-fun res!663812 () Bool)

(assert (=> d!118385 (=> (not res!663812) (not e!560387))))

(declare-fun lt!440416 () List!21029)

(declare-fun size!30684 (List!21029) Int)

(assert (=> d!118385 (= res!663812 (<= (size!30684 lt!440416) (size!30684 l!3519)))))

(declare-fun e!560385 () List!21029)

(assert (=> d!118385 (= lt!440416 e!560385)))

(declare-fun c!100750 () Bool)

(assert (=> d!118385 (= c!100750 ((_ is Cons!21025) l!3519))))

(assert (=> d!118385 (= (-!454 l!3519 e!29) lt!440416)))

(declare-fun b!993038 () Bool)

(declare-fun e!560386 () List!21029)

(declare-fun call!42140 () List!21029)

(assert (=> b!993038 (= e!560386 call!42140)))

(declare-fun b!993039 () Bool)

(assert (=> b!993039 (= e!560387 (= (content!469 lt!440416) ((_ map and) (content!469 l!3519) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) e!29 true)))))))

(declare-fun bm!42137 () Bool)

(assert (=> bm!42137 (= call!42140 (-!454 (t!30038 l!3519) e!29))))

(declare-fun b!993040 () Bool)

(assert (=> b!993040 (= e!560385 e!560386)))

(declare-fun c!100751 () Bool)

(assert (=> b!993040 (= c!100751 (= e!29 (h!22187 l!3519)))))

(declare-fun b!993041 () Bool)

(assert (=> b!993041 (= e!560385 Nil!21026)))

(declare-fun b!993042 () Bool)

(assert (=> b!993042 (= e!560386 (Cons!21025 (h!22187 l!3519) call!42140))))

(assert (= (and d!118385 c!100750) b!993040))

(assert (= (and d!118385 (not c!100750)) b!993041))

(assert (= (and b!993040 c!100751) b!993038))

(assert (= (and b!993040 (not c!100751)) b!993042))

(assert (= (or b!993038 b!993042) bm!42137))

(assert (= (and d!118385 res!663812) b!993039))

(declare-fun m!920885 () Bool)

(assert (=> d!118385 m!920885))

(declare-fun m!920887 () Bool)

(assert (=> d!118385 m!920887))

(declare-fun m!920891 () Bool)

(assert (=> b!993039 m!920891))

(assert (=> b!993039 m!920869))

(declare-fun m!920897 () Bool)

(assert (=> b!993039 m!920897))

(declare-fun m!920901 () Bool)

(assert (=> bm!42137 m!920901))

(assert (=> b!992980 d!118385))

(declare-fun d!118389 () Bool)

(assert (=> d!118389 (= (isEmpty!771 (unapply!38 l!3519)) (not ((_ is Some!561) (unapply!38 l!3519))))))

(assert (=> b!992978 d!118389))

(declare-fun d!118395 () Bool)

(assert (=> d!118395 (= (unapply!38 l!3519) (ite ((_ is Nil!21026) l!3519) None!560 (Some!561 (tuple2!15099 (h!22187 l!3519) (t!30038 l!3519)))))))

(assert (=> b!992978 d!118395))

(check-sat (not d!118379) (not b!993005) (not b!993039) (not bm!42137) (not d!118385))
(check-sat)
