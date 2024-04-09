; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85106 () Bool)

(assert start!85106)

(declare-fun b!992359 () Bool)

(declare-fun res!663374 () Bool)

(declare-fun e!559865 () Bool)

(assert (=> b!992359 (=> (not res!663374) (not e!559865))))

(declare-fun head!726 () (_ BitVec 64))

(declare-datatypes ((List!21002 0))(
  ( (Nil!20999) (Cons!20998 (h!22160 (_ BitVec 64)) (t!30002 List!21002)) )
))
(declare-fun tail!21 () List!21002)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!445 (List!21002) (InoxSet (_ BitVec 64)))

(assert (=> b!992359 (= res!663374 (not (select (content!445 tail!21) head!726)))))

(declare-fun res!663373 () Bool)

(assert (=> start!85106 (=> (not res!663373) (not e!559865))))

(declare-fun contains!5759 (List!21002 (_ BitVec 64)) Bool)

(assert (=> start!85106 (= res!663373 (not (contains!5759 tail!21 head!726)))))

(assert (=> start!85106 e!559865))

(assert (=> start!85106 true))

(declare-fun b!992361 () Bool)

(declare-fun res!663375 () Bool)

(declare-fun e!559864 () Bool)

(assert (=> b!992361 (=> (not res!663375) (not e!559864))))

(declare-fun lt!440157 () List!21002)

(get-info :version)

(assert (=> b!992361 (= res!663375 ((_ is Nil!20999) lt!440157))))

(declare-fun b!992362 () Bool)

(declare-fun -!445 (List!21002 (_ BitVec 64)) List!21002)

(assert (=> b!992362 (= e!559864 (not (= (-!445 lt!440157 head!726) tail!21)))))

(declare-fun b!992360 () Bool)

(assert (=> b!992360 (= e!559865 e!559864)))

(declare-fun res!663376 () Bool)

(assert (=> b!992360 (=> (not res!663376) (not e!559864))))

(declare-datatypes ((tuple2!15050 0))(
  ( (tuple2!15051 (_1!7535 (_ BitVec 64)) (_2!7535 List!21002)) )
))
(declare-datatypes ((Option!538 0))(
  ( (Some!537 (v!14341 tuple2!15050)) (None!536) )
))
(declare-fun isEmpty!747 (Option!538) Bool)

(declare-fun unapply!14 (List!21002) Option!538)

(assert (=> b!992360 (= res!663376 (isEmpty!747 (unapply!14 lt!440157)))))

(declare-fun $colon$colon!572 (List!21002 (_ BitVec 64)) List!21002)

(assert (=> b!992360 (= lt!440157 ($colon$colon!572 tail!21 head!726))))

(assert (= (and start!85106 res!663373) b!992359))

(assert (= (and b!992359 res!663374) b!992360))

(assert (= (and b!992360 res!663376) b!992361))

(assert (= (and b!992361 res!663375) b!992362))

(declare-fun m!920203 () Bool)

(assert (=> b!992359 m!920203))

(declare-fun m!920205 () Bool)

(assert (=> b!992359 m!920205))

(declare-fun m!920207 () Bool)

(assert (=> start!85106 m!920207))

(declare-fun m!920209 () Bool)

(assert (=> b!992362 m!920209))

(declare-fun m!920211 () Bool)

(assert (=> b!992360 m!920211))

(assert (=> b!992360 m!920211))

(declare-fun m!920213 () Bool)

(assert (=> b!992360 m!920213))

(declare-fun m!920215 () Bool)

(assert (=> b!992360 m!920215))

(check-sat (not b!992362) (not b!992359) (not start!85106) (not b!992360))
(check-sat)
(get-model)

(declare-fun b!992403 () Bool)

(declare-fun e!559895 () List!21002)

(assert (=> b!992403 (= e!559895 Nil!20999)))

(declare-fun b!992404 () Bool)

(declare-fun e!559896 () List!21002)

(declare-fun call!42106 () List!21002)

(assert (=> b!992404 (= e!559896 call!42106)))

(declare-fun b!992405 () Bool)

(assert (=> b!992405 (= e!559896 (Cons!20998 (h!22160 lt!440157) call!42106))))

(declare-fun lt!440169 () List!21002)

(declare-fun b!992406 () Bool)

(declare-fun e!559894 () Bool)

(assert (=> b!992406 (= e!559894 (= (content!445 lt!440169) ((_ map and) (content!445 lt!440157) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) head!726 true)))))))

(declare-fun d!118103 () Bool)

(assert (=> d!118103 e!559894))

(declare-fun res!663403 () Bool)

(assert (=> d!118103 (=> (not res!663403) (not e!559894))))

(declare-fun size!30676 (List!21002) Int)

(assert (=> d!118103 (= res!663403 (<= (size!30676 lt!440169) (size!30676 lt!440157)))))

(assert (=> d!118103 (= lt!440169 e!559895)))

(declare-fun c!100638 () Bool)

(assert (=> d!118103 (= c!100638 ((_ is Cons!20998) lt!440157))))

(assert (=> d!118103 (= (-!445 lt!440157 head!726) lt!440169)))

(declare-fun b!992407 () Bool)

(assert (=> b!992407 (= e!559895 e!559896)))

(declare-fun c!100637 () Bool)

(assert (=> b!992407 (= c!100637 (= head!726 (h!22160 lt!440157)))))

(declare-fun bm!42103 () Bool)

(assert (=> bm!42103 (= call!42106 (-!445 (t!30002 lt!440157) head!726))))

(assert (= (and d!118103 c!100638) b!992407))

(assert (= (and d!118103 (not c!100638)) b!992403))

(assert (= (and b!992407 c!100637) b!992404))

(assert (= (and b!992407 (not c!100637)) b!992405))

(assert (= (or b!992404 b!992405) bm!42103))

(assert (= (and d!118103 res!663403) b!992406))

(declare-fun m!920239 () Bool)

(assert (=> b!992406 m!920239))

(declare-fun m!920241 () Bool)

(assert (=> b!992406 m!920241))

(declare-fun m!920243 () Bool)

(assert (=> b!992406 m!920243))

(declare-fun m!920245 () Bool)

(assert (=> d!118103 m!920245))

(declare-fun m!920247 () Bool)

(assert (=> d!118103 m!920247))

(declare-fun m!920249 () Bool)

(assert (=> bm!42103 m!920249))

(assert (=> b!992362 d!118103))

(declare-fun d!118119 () Bool)

(declare-fun c!100645 () Bool)

(assert (=> d!118119 (= c!100645 ((_ is Nil!20999) tail!21))))

(declare-fun e!559904 () (InoxSet (_ BitVec 64)))

(assert (=> d!118119 (= (content!445 tail!21) e!559904)))

(declare-fun b!992420 () Bool)

(assert (=> b!992420 (= e!559904 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!992421 () Bool)

(assert (=> b!992421 (= e!559904 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!22160 tail!21) true) (content!445 (t!30002 tail!21))))))

(assert (= (and d!118119 c!100645) b!992420))

(assert (= (and d!118119 (not c!100645)) b!992421))

(declare-fun m!920251 () Bool)

(assert (=> b!992421 m!920251))

(declare-fun m!920253 () Bool)

(assert (=> b!992421 m!920253))

(assert (=> b!992359 d!118119))

(declare-fun d!118127 () Bool)

(declare-fun lt!440177 () Bool)

(assert (=> d!118127 (= lt!440177 (select (content!445 tail!21) head!726))))

(declare-fun e!559919 () Bool)

(assert (=> d!118127 (= lt!440177 e!559919)))

(declare-fun res!663411 () Bool)

(assert (=> d!118127 (=> (not res!663411) (not e!559919))))

(assert (=> d!118127 (= res!663411 ((_ is Cons!20998) tail!21))))

(assert (=> d!118127 (= (contains!5759 tail!21 head!726) lt!440177)))

(declare-fun b!992441 () Bool)

(declare-fun e!559920 () Bool)

(assert (=> b!992441 (= e!559919 e!559920)))

(declare-fun res!663412 () Bool)

(assert (=> b!992441 (=> res!663412 e!559920)))

(assert (=> b!992441 (= res!663412 (= (h!22160 tail!21) head!726))))

(declare-fun b!992442 () Bool)

(assert (=> b!992442 (= e!559920 (contains!5759 (t!30002 tail!21) head!726))))

(assert (= (and d!118127 res!663411) b!992441))

(assert (= (and b!992441 (not res!663412)) b!992442))

(assert (=> d!118127 m!920203))

(assert (=> d!118127 m!920205))

(declare-fun m!920267 () Bool)

(assert (=> b!992442 m!920267))

(assert (=> start!85106 d!118127))

(declare-fun d!118131 () Bool)

(assert (=> d!118131 (= (isEmpty!747 (unapply!14 lt!440157)) (not ((_ is Some!537) (unapply!14 lt!440157))))))

(assert (=> b!992360 d!118131))

(declare-fun d!118133 () Bool)

(assert (=> d!118133 (= (unapply!14 lt!440157) (ite ((_ is Nil!20999) lt!440157) None!536 (Some!537 (tuple2!15051 (h!22160 lt!440157) (t!30002 lt!440157)))))))

(assert (=> b!992360 d!118133))

(declare-fun d!118135 () Bool)

(assert (=> d!118135 (= ($colon$colon!572 tail!21 head!726) (Cons!20998 head!726 tail!21))))

(assert (=> b!992360 d!118135))

(check-sat (not d!118103) (not bm!42103) (not b!992442) (not b!992421) (not d!118127) (not b!992406))
(check-sat)
