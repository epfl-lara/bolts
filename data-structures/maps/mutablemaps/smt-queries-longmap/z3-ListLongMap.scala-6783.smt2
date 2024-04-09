; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85442 () Bool)

(assert start!85442)

(declare-fun res!663866 () Bool)

(declare-fun e!560426 () Bool)

(assert (=> start!85442 (=> (not res!663866) (not e!560426))))

(declare-datatypes ((List!21035 0))(
  ( (Nil!21032) (Cons!21031 (h!22193 (_ BitVec 64)) (t!30044 List!21035)) )
))
(declare-fun l!3519 () List!21035)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5792 (List!21035 (_ BitVec 64)) Bool)

(assert (=> start!85442 (= res!663866 (not (contains!5792 l!3519 e!29)))))

(assert (=> start!85442 e!560426))

(assert (=> start!85442 true))

(declare-fun b!993104 () Bool)

(declare-fun res!663867 () Bool)

(assert (=> b!993104 (=> (not res!663867) (not e!560426))))

(declare-datatypes ((tuple2!15110 0))(
  ( (tuple2!15111 (_1!7565 (_ BitVec 64)) (_2!7565 List!21035)) )
))
(declare-datatypes ((Option!568 0))(
  ( (Some!567 (v!14401 tuple2!15110)) (None!566) )
))
(declare-fun isEmpty!777 (Option!568) Bool)

(declare-fun unapply!44 (List!21035) Option!568)

(assert (=> b!993104 (= res!663867 (isEmpty!777 (unapply!44 l!3519)))))

(declare-fun b!993105 () Bool)

(declare-fun res!663868 () Bool)

(assert (=> b!993105 (=> (not res!663868) (not e!560426))))

(get-info :version)

(assert (=> b!993105 (= res!663868 (not ((_ is Nil!21032) l!3519)))))

(declare-fun b!993106 () Bool)

(declare-fun -!457 (List!21035 (_ BitVec 64)) List!21035)

(assert (=> b!993106 (= e!560426 (not (= (-!457 l!3519 e!29) l!3519)))))

(assert (= (and start!85442 res!663866) b!993104))

(assert (= (and b!993104 res!663867) b!993105))

(assert (= (and b!993105 res!663868) b!993106))

(declare-fun m!920959 () Bool)

(assert (=> start!85442 m!920959))

(declare-fun m!920961 () Bool)

(assert (=> b!993104 m!920961))

(assert (=> b!993104 m!920961))

(declare-fun m!920963 () Bool)

(assert (=> b!993104 m!920963))

(declare-fun m!920965 () Bool)

(assert (=> b!993106 m!920965))

(check-sat (not b!993104) (not b!993106) (not start!85442))
(check-sat)
(get-model)

(declare-fun d!118427 () Bool)

(assert (=> d!118427 (= (isEmpty!777 (unapply!44 l!3519)) (not ((_ is Some!567) (unapply!44 l!3519))))))

(assert (=> b!993104 d!118427))

(declare-fun d!118433 () Bool)

(assert (=> d!118433 (= (unapply!44 l!3519) (ite ((_ is Nil!21032) l!3519) None!566 (Some!567 (tuple2!15111 (h!22193 l!3519) (t!30044 l!3519)))))))

(assert (=> b!993104 d!118433))

(declare-fun bm!42146 () Bool)

(declare-fun call!42149 () List!21035)

(assert (=> bm!42146 (= call!42149 (-!457 (t!30044 l!3519) e!29))))

(declare-fun b!993146 () Bool)

(declare-fun e!560453 () List!21035)

(assert (=> b!993146 (= e!560453 call!42149)))

(declare-fun b!993147 () Bool)

(assert (=> b!993147 (= e!560453 (Cons!21031 (h!22193 l!3519) call!42149))))

(declare-fun d!118439 () Bool)

(declare-fun e!560455 () Bool)

(assert (=> d!118439 e!560455))

(declare-fun res!663884 () Bool)

(assert (=> d!118439 (=> (not res!663884) (not e!560455))))

(declare-fun lt!440434 () List!21035)

(declare-fun size!30689 (List!21035) Int)

(assert (=> d!118439 (= res!663884 (<= (size!30689 lt!440434) (size!30689 l!3519)))))

(declare-fun e!560451 () List!21035)

(assert (=> d!118439 (= lt!440434 e!560451)))

(declare-fun c!100768 () Bool)

(assert (=> d!118439 (= c!100768 ((_ is Cons!21031) l!3519))))

(assert (=> d!118439 (= (-!457 l!3519 e!29) lt!440434)))

(declare-fun b!993148 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!475 (List!21035) (InoxSet (_ BitVec 64)))

(assert (=> b!993148 (= e!560455 (= (content!475 lt!440434) ((_ map and) (content!475 l!3519) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) e!29 true)))))))

(declare-fun b!993149 () Bool)

(assert (=> b!993149 (= e!560451 Nil!21032)))

(declare-fun b!993150 () Bool)

(assert (=> b!993150 (= e!560451 e!560453)))

(declare-fun c!100769 () Bool)

(assert (=> b!993150 (= c!100769 (= e!29 (h!22193 l!3519)))))

(assert (= (and d!118439 c!100768) b!993150))

(assert (= (and d!118439 (not c!100768)) b!993149))

(assert (= (and b!993150 c!100769) b!993146))

(assert (= (and b!993150 (not c!100769)) b!993147))

(assert (= (or b!993146 b!993147) bm!42146))

(assert (= (and d!118439 res!663884) b!993148))

(declare-fun m!920975 () Bool)

(assert (=> bm!42146 m!920975))

(declare-fun m!920981 () Bool)

(assert (=> d!118439 m!920981))

(declare-fun m!920987 () Bool)

(assert (=> d!118439 m!920987))

(declare-fun m!920991 () Bool)

(assert (=> b!993148 m!920991))

(declare-fun m!920997 () Bool)

(assert (=> b!993148 m!920997))

(declare-fun m!921005 () Bool)

(assert (=> b!993148 m!921005))

(assert (=> b!993106 d!118439))

(declare-fun d!118441 () Bool)

(declare-fun lt!440445 () Bool)

(assert (=> d!118441 (= lt!440445 (select (content!475 l!3519) e!29))))

(declare-fun e!560475 () Bool)

(assert (=> d!118441 (= lt!440445 e!560475)))

(declare-fun res!663901 () Bool)

(assert (=> d!118441 (=> (not res!663901) (not e!560475))))

(assert (=> d!118441 (= res!663901 ((_ is Cons!21031) l!3519))))

(assert (=> d!118441 (= (contains!5792 l!3519 e!29) lt!440445)))

(declare-fun b!993176 () Bool)

(declare-fun e!560477 () Bool)

(assert (=> b!993176 (= e!560475 e!560477)))

(declare-fun res!663904 () Bool)

(assert (=> b!993176 (=> res!663904 e!560477)))

(assert (=> b!993176 (= res!663904 (= (h!22193 l!3519) e!29))))

(declare-fun b!993178 () Bool)

(assert (=> b!993178 (= e!560477 (contains!5792 (t!30044 l!3519) e!29))))

(assert (= (and d!118441 res!663901) b!993176))

(assert (= (and b!993176 (not res!663904)) b!993178))

(assert (=> d!118441 m!920997))

(declare-fun m!921015 () Bool)

(assert (=> d!118441 m!921015))

(declare-fun m!921021 () Bool)

(assert (=> b!993178 m!921021))

(assert (=> start!85442 d!118441))

(check-sat (not d!118441) (not b!993178) (not d!118439) (not b!993148) (not bm!42146))
(check-sat)
