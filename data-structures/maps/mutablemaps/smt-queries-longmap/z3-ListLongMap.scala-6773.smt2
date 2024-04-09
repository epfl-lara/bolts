; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85148 () Bool)

(assert start!85148)

(declare-fun res!663433 () Bool)

(declare-fun e!559940 () Bool)

(assert (=> start!85148 (=> (not res!663433) (not e!559940))))

(declare-datatypes ((List!21005 0))(
  ( (Nil!21002) (Cons!21001 (h!22163 (_ BitVec 64)) (t!30008 List!21005)) )
))
(declare-fun tail!21 () List!21005)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5762 (List!21005 (_ BitVec 64)) Bool)

(assert (=> start!85148 (= res!663433 (not (contains!5762 tail!21 head!726)))))

(assert (=> start!85148 e!559940))

(assert (=> start!85148 true))

(declare-fun b!992471 () Bool)

(declare-fun res!663431 () Bool)

(assert (=> b!992471 (=> (not res!663431) (not e!559940))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!448 (List!21005) (InoxSet (_ BitVec 64)))

(assert (=> b!992471 (= res!663431 (not (select (content!448 tail!21) head!726)))))

(declare-fun b!992472 () Bool)

(declare-fun e!559939 () Bool)

(assert (=> b!992472 (= e!559940 e!559939)))

(declare-fun res!663432 () Bool)

(assert (=> b!992472 (=> (not res!663432) (not e!559939))))

(declare-fun lt!440184 () List!21005)

(declare-datatypes ((tuple2!15056 0))(
  ( (tuple2!15057 (_1!7538 (_ BitVec 64)) (_2!7538 List!21005)) )
))
(declare-datatypes ((Option!541 0))(
  ( (Some!540 (v!14347 tuple2!15056)) (None!539) )
))
(declare-fun isEmpty!750 (Option!541) Bool)

(declare-fun unapply!17 (List!21005) Option!541)

(assert (=> b!992472 (= res!663432 (isEmpty!750 (unapply!17 lt!440184)))))

(declare-fun $colon$colon!575 (List!21005 (_ BitVec 64)) List!21005)

(assert (=> b!992472 (= lt!440184 ($colon$colon!575 tail!21 head!726))))

(declare-fun b!992473 () Bool)

(get-info :version)

(assert (=> b!992473 (= e!559939 (not ((_ is Nil!21002) lt!440184)))))

(assert (= (and start!85148 res!663433) b!992471))

(assert (= (and b!992471 res!663431) b!992472))

(assert (= (and b!992472 res!663432) b!992473))

(declare-fun m!920297 () Bool)

(assert (=> start!85148 m!920297))

(declare-fun m!920299 () Bool)

(assert (=> b!992471 m!920299))

(declare-fun m!920301 () Bool)

(assert (=> b!992471 m!920301))

(declare-fun m!920303 () Bool)

(assert (=> b!992472 m!920303))

(assert (=> b!992472 m!920303))

(declare-fun m!920305 () Bool)

(assert (=> b!992472 m!920305))

(declare-fun m!920307 () Bool)

(assert (=> b!992472 m!920307))

(check-sat (not b!992472) (not b!992471) (not start!85148))
(check-sat)
(get-model)

(declare-fun d!118141 () Bool)

(assert (=> d!118141 (= (isEmpty!750 (unapply!17 lt!440184)) (not ((_ is Some!540) (unapply!17 lt!440184))))))

(assert (=> b!992472 d!118141))

(declare-fun d!118145 () Bool)

(assert (=> d!118145 (= (unapply!17 lt!440184) (ite ((_ is Nil!21002) lt!440184) None!539 (Some!540 (tuple2!15057 (h!22163 lt!440184) (t!30008 lt!440184)))))))

(assert (=> b!992472 d!118145))

(declare-fun d!118147 () Bool)

(assert (=> d!118147 (= ($colon$colon!575 tail!21 head!726) (Cons!21001 head!726 tail!21))))

(assert (=> b!992472 d!118147))

(declare-fun d!118153 () Bool)

(declare-fun c!100665 () Bool)

(assert (=> d!118153 (= c!100665 ((_ is Nil!21002) tail!21))))

(declare-fun e!559959 () (InoxSet (_ BitVec 64)))

(assert (=> d!118153 (= (content!448 tail!21) e!559959)))

(declare-fun b!992503 () Bool)

(assert (=> b!992503 (= e!559959 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!992504 () Bool)

(assert (=> b!992504 (= e!559959 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!22163 tail!21) true) (content!448 (t!30008 tail!21))))))

(assert (= (and d!118153 c!100665) b!992503))

(assert (= (and d!118153 (not c!100665)) b!992504))

(declare-fun m!920329 () Bool)

(assert (=> b!992504 m!920329))

(declare-fun m!920331 () Bool)

(assert (=> b!992504 m!920331))

(assert (=> b!992471 d!118153))

(declare-fun d!118161 () Bool)

(declare-fun lt!440196 () Bool)

(assert (=> d!118161 (= lt!440196 (select (content!448 tail!21) head!726))))

(declare-fun e!559972 () Bool)

(assert (=> d!118161 (= lt!440196 e!559972)))

(declare-fun res!663460 () Bool)

(assert (=> d!118161 (=> (not res!663460) (not e!559972))))

(assert (=> d!118161 (= res!663460 ((_ is Cons!21001) tail!21))))

(assert (=> d!118161 (= (contains!5762 tail!21 head!726) lt!440196)))

(declare-fun b!992517 () Bool)

(declare-fun e!559973 () Bool)

(assert (=> b!992517 (= e!559972 e!559973)))

(declare-fun res!663459 () Bool)

(assert (=> b!992517 (=> res!663459 e!559973)))

(assert (=> b!992517 (= res!663459 (= (h!22163 tail!21) head!726))))

(declare-fun b!992518 () Bool)

(assert (=> b!992518 (= e!559973 (contains!5762 (t!30008 tail!21) head!726))))

(assert (= (and d!118161 res!663460) b!992517))

(assert (= (and b!992517 (not res!663459)) b!992518))

(assert (=> d!118161 m!920299))

(assert (=> d!118161 m!920301))

(declare-fun m!920337 () Bool)

(assert (=> b!992518 m!920337))

(assert (=> start!85148 d!118161))

(check-sat (not b!992518) (not d!118161) (not b!992504))
(check-sat)
