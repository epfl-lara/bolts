; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85184 () Bool)

(assert start!85184)

(declare-fun b!992539 () Bool)

(declare-fun res!663484 () Bool)

(declare-fun e!559985 () Bool)

(assert (=> b!992539 (=> (not res!663484) (not e!559985))))

(declare-fun head!726 () (_ BitVec 64))

(declare-datatypes ((List!21008 0))(
  ( (Nil!21005) (Cons!21004 (h!22166 (_ BitVec 64)) (t!30014 List!21008)) )
))
(declare-fun tail!21 () List!21008)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!451 (List!21008) (InoxSet (_ BitVec 64)))

(assert (=> b!992539 (= res!663484 (not (select (content!451 tail!21) head!726)))))

(declare-fun b!992541 () Bool)

(declare-fun res!663483 () Bool)

(declare-fun e!559984 () Bool)

(assert (=> b!992541 (=> (not res!663483) (not e!559984))))

(declare-fun lt!440202 () List!21008)

(get-info :version)

(assert (=> b!992541 (= res!663483 (not ((_ is Nil!21005) lt!440202)))))

(declare-fun res!663481 () Bool)

(assert (=> start!85184 (=> (not res!663481) (not e!559985))))

(declare-fun contains!5765 (List!21008 (_ BitVec 64)) Bool)

(assert (=> start!85184 (= res!663481 (not (contains!5765 tail!21 head!726)))))

(assert (=> start!85184 e!559985))

(assert (=> start!85184 true))

(declare-fun b!992540 () Bool)

(assert (=> b!992540 (= e!559985 e!559984)))

(declare-fun res!663482 () Bool)

(assert (=> b!992540 (=> (not res!663482) (not e!559984))))

(declare-datatypes ((tuple2!15062 0))(
  ( (tuple2!15063 (_1!7541 (_ BitVec 64)) (_2!7541 List!21008)) )
))
(declare-datatypes ((Option!544 0))(
  ( (Some!543 (v!14353 tuple2!15062)) (None!542) )
))
(declare-fun isEmpty!753 (Option!544) Bool)

(declare-fun unapply!20 (List!21008) Option!544)

(assert (=> b!992540 (= res!663482 (isEmpty!753 (unapply!20 lt!440202)))))

(declare-fun $colon$colon!578 (List!21008 (_ BitVec 64)) List!21008)

(assert (=> b!992540 (= lt!440202 ($colon$colon!578 tail!21 head!726))))

(declare-fun b!992542 () Bool)

(declare-fun -!448 (List!21008 (_ BitVec 64)) List!21008)

(assert (=> b!992542 (= e!559984 (not (= (-!448 lt!440202 head!726) tail!21)))))

(assert (= (and start!85184 res!663481) b!992539))

(assert (= (and b!992539 res!663484) b!992540))

(assert (= (and b!992540 res!663482) b!992541))

(assert (= (and b!992541 res!663483) b!992542))

(declare-fun m!920353 () Bool)

(assert (=> b!992539 m!920353))

(declare-fun m!920355 () Bool)

(assert (=> b!992539 m!920355))

(declare-fun m!920357 () Bool)

(assert (=> start!85184 m!920357))

(declare-fun m!920359 () Bool)

(assert (=> b!992540 m!920359))

(assert (=> b!992540 m!920359))

(declare-fun m!920361 () Bool)

(assert (=> b!992540 m!920361))

(declare-fun m!920363 () Bool)

(assert (=> b!992540 m!920363))

(declare-fun m!920365 () Bool)

(assert (=> b!992542 m!920365))

(check-sat (not b!992542) (not b!992540) (not b!992539) (not start!85184))
(check-sat)
(get-model)

(declare-fun b!992589 () Bool)

(declare-fun e!560017 () List!21008)

(assert (=> b!992589 (= e!560017 Nil!21005)))

(declare-fun b!992590 () Bool)

(declare-fun e!560019 () List!21008)

(assert (=> b!992590 (= e!560017 e!560019)))

(declare-fun c!100678 () Bool)

(assert (=> b!992590 (= c!100678 (= head!726 (h!22166 lt!440202)))))

(declare-fun b!992591 () Bool)

(declare-fun call!42115 () List!21008)

(assert (=> b!992591 (= e!560019 (Cons!21004 (h!22166 lt!440202) call!42115))))

(declare-fun b!992592 () Bool)

(assert (=> b!992592 (= e!560019 call!42115)))

(declare-fun bm!42112 () Bool)

(assert (=> bm!42112 (= call!42115 (-!448 (t!30014 lt!440202) head!726))))

(declare-fun b!992593 () Bool)

(declare-fun lt!440215 () List!21008)

(declare-fun e!560018 () Bool)

(assert (=> b!992593 (= e!560018 (= (content!451 lt!440215) ((_ map and) (content!451 lt!440202) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) head!726 true)))))))

(declare-fun d!118175 () Bool)

(assert (=> d!118175 e!560018))

(declare-fun res!663509 () Bool)

(assert (=> d!118175 (=> (not res!663509) (not e!560018))))

(declare-fun size!30678 (List!21008) Int)

(assert (=> d!118175 (= res!663509 (<= (size!30678 lt!440215) (size!30678 lt!440202)))))

(assert (=> d!118175 (= lt!440215 e!560017)))

(declare-fun c!100677 () Bool)

(assert (=> d!118175 (= c!100677 ((_ is Cons!21004) lt!440202))))

(assert (=> d!118175 (= (-!448 lt!440202 head!726) lt!440215)))

(assert (= (and d!118175 c!100677) b!992590))

(assert (= (and d!118175 (not c!100677)) b!992589))

(assert (= (and b!992590 c!100678) b!992592))

(assert (= (and b!992590 (not c!100678)) b!992591))

(assert (= (or b!992592 b!992591) bm!42112))

(assert (= (and d!118175 res!663509) b!992593))

(declare-fun m!920387 () Bool)

(assert (=> bm!42112 m!920387))

(declare-fun m!920389 () Bool)

(assert (=> b!992593 m!920389))

(declare-fun m!920391 () Bool)

(assert (=> b!992593 m!920391))

(declare-fun m!920393 () Bool)

(assert (=> b!992593 m!920393))

(declare-fun m!920395 () Bool)

(assert (=> d!118175 m!920395))

(declare-fun m!920397 () Bool)

(assert (=> d!118175 m!920397))

(assert (=> b!992542 d!118175))

(declare-fun d!118187 () Bool)

(assert (=> d!118187 (= (isEmpty!753 (unapply!20 lt!440202)) (not ((_ is Some!543) (unapply!20 lt!440202))))))

(assert (=> b!992540 d!118187))

(declare-fun d!118189 () Bool)

(assert (=> d!118189 (= (unapply!20 lt!440202) (ite ((_ is Nil!21005) lt!440202) None!542 (Some!543 (tuple2!15063 (h!22166 lt!440202) (t!30014 lt!440202)))))))

(assert (=> b!992540 d!118189))

(declare-fun d!118193 () Bool)

(assert (=> d!118193 (= ($colon$colon!578 tail!21 head!726) (Cons!21004 head!726 tail!21))))

(assert (=> b!992540 d!118193))

(declare-fun d!118195 () Bool)

(declare-fun c!100687 () Bool)

(assert (=> d!118195 (= c!100687 ((_ is Nil!21005) tail!21))))

(declare-fun e!560034 () (InoxSet (_ BitVec 64)))

(assert (=> d!118195 (= (content!451 tail!21) e!560034)))

(declare-fun b!992615 () Bool)

(assert (=> b!992615 (= e!560034 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!992616 () Bool)

(assert (=> b!992616 (= e!560034 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!22166 tail!21) true) (content!451 (t!30014 tail!21))))))

(assert (= (and d!118195 c!100687) b!992615))

(assert (= (and d!118195 (not c!100687)) b!992616))

(declare-fun m!920413 () Bool)

(assert (=> b!992616 m!920413))

(declare-fun m!920415 () Bool)

(assert (=> b!992616 m!920415))

(assert (=> b!992539 d!118195))

(declare-fun d!118201 () Bool)

(declare-fun lt!440223 () Bool)

(assert (=> d!118201 (= lt!440223 (select (content!451 tail!21) head!726))))

(declare-fun e!560047 () Bool)

(assert (=> d!118201 (= lt!440223 e!560047)))

(declare-fun res!663522 () Bool)

(assert (=> d!118201 (=> (not res!663522) (not e!560047))))

(assert (=> d!118201 (= res!663522 ((_ is Cons!21004) tail!21))))

(assert (=> d!118201 (= (contains!5765 tail!21 head!726) lt!440223)))

(declare-fun b!992634 () Bool)

(declare-fun e!560048 () Bool)

(assert (=> b!992634 (= e!560047 e!560048)))

(declare-fun res!663523 () Bool)

(assert (=> b!992634 (=> res!663523 e!560048)))

(assert (=> b!992634 (= res!663523 (= (h!22166 tail!21) head!726))))

(declare-fun b!992635 () Bool)

(assert (=> b!992635 (= e!560048 (contains!5765 (t!30014 tail!21) head!726))))

(assert (= (and d!118201 res!663522) b!992634))

(assert (= (and b!992634 (not res!663523)) b!992635))

(assert (=> d!118201 m!920353))

(assert (=> d!118201 m!920355))

(declare-fun m!920433 () Bool)

(assert (=> b!992635 m!920433))

(assert (=> start!85184 d!118201))

(check-sat (not b!992616) (not d!118201) (not b!992593) (not b!992635) (not bm!42112) (not d!118175))
(check-sat)
