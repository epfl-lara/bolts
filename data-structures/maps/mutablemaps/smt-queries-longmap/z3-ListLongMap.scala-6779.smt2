; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85310 () Bool)

(assert start!85310)

(declare-fun res!663663 () Bool)

(declare-fun e!560198 () Bool)

(assert (=> start!85310 (=> (not res!663663) (not e!560198))))

(declare-datatypes ((List!21023 0))(
  ( (Nil!21020) (Cons!21019 (h!22181 (_ BitVec 64)) (t!30032 List!21023)) )
))
(declare-fun l!3519 () List!21023)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5780 (List!21023 (_ BitVec 64)) Bool)

(assert (=> start!85310 (= res!663663 (not (contains!5780 l!3519 e!29)))))

(assert (=> start!85310 e!560198))

(assert (=> start!85310 true))

(declare-fun b!992792 () Bool)

(declare-fun e!560197 () Bool)

(assert (=> b!992792 (= e!560198 e!560197)))

(declare-fun res!663662 () Bool)

(assert (=> b!992792 (=> (not res!663662) (not e!560197))))

(declare-datatypes ((tuple2!15086 0))(
  ( (tuple2!15087 (_1!7553 (_ BitVec 64)) (_2!7553 List!21023)) )
))
(declare-datatypes ((Option!556 0))(
  ( (Some!555 (v!14377 tuple2!15086)) (None!554) )
))
(declare-fun lt!440310 () Option!556)

(declare-fun isEmpty!765 (Option!556) Bool)

(assert (=> b!992792 (= res!663662 (not (isEmpty!765 lt!440310)))))

(declare-fun unapply!32 (List!21023) Option!556)

(assert (=> b!992792 (= lt!440310 (unapply!32 l!3519))))

(declare-fun b!992793 () Bool)

(declare-fun e!560196 () Bool)

(assert (=> b!992793 (= e!560197 e!560196)))

(declare-fun res!663664 () Bool)

(assert (=> b!992793 (=> (not res!663664) (not e!560196))))

(declare-fun lt!440309 () tuple2!15086)

(assert (=> b!992793 (= res!663664 (not (contains!5780 (_2!7553 lt!440309) e!29)))))

(declare-fun get!15730 (Option!556) tuple2!15086)

(assert (=> b!992793 (= lt!440309 (get!15730 lt!440310))))

(declare-fun b!992794 () Bool)

(declare-fun ListPrimitiveSize!95 (List!21023) Int)

(assert (=> b!992794 (= e!560196 (>= (ListPrimitiveSize!95 (_2!7553 lt!440309)) (ListPrimitiveSize!95 l!3519)))))

(assert (= (and start!85310 res!663663) b!992792))

(assert (= (and b!992792 res!663662) b!992793))

(assert (= (and b!992793 res!663664) b!992794))

(declare-fun m!920623 () Bool)

(assert (=> start!85310 m!920623))

(declare-fun m!920625 () Bool)

(assert (=> b!992792 m!920625))

(declare-fun m!920627 () Bool)

(assert (=> b!992792 m!920627))

(declare-fun m!920629 () Bool)

(assert (=> b!992793 m!920629))

(declare-fun m!920631 () Bool)

(assert (=> b!992793 m!920631))

(declare-fun m!920633 () Bool)

(assert (=> b!992794 m!920633))

(declare-fun m!920635 () Bool)

(assert (=> b!992794 m!920635))

(check-sat (not b!992794) (not b!992792) (not b!992793) (not start!85310))
(check-sat)
(get-model)

(declare-fun d!118283 () Bool)

(declare-fun lt!440319 () Int)

(assert (=> d!118283 (>= lt!440319 0)))

(declare-fun e!560210 () Int)

(assert (=> d!118283 (= lt!440319 e!560210)))

(declare-fun c!100704 () Bool)

(get-info :version)

(assert (=> d!118283 (= c!100704 ((_ is Nil!21020) (_2!7553 lt!440309)))))

(assert (=> d!118283 (= (ListPrimitiveSize!95 (_2!7553 lt!440309)) lt!440319)))

(declare-fun b!992808 () Bool)

(assert (=> b!992808 (= e!560210 0)))

(declare-fun b!992809 () Bool)

(assert (=> b!992809 (= e!560210 (+ 1 (ListPrimitiveSize!95 (t!30032 (_2!7553 lt!440309)))))))

(assert (= (and d!118283 c!100704) b!992808))

(assert (= (and d!118283 (not c!100704)) b!992809))

(declare-fun m!920651 () Bool)

(assert (=> b!992809 m!920651))

(assert (=> b!992794 d!118283))

(declare-fun d!118295 () Bool)

(declare-fun lt!440320 () Int)

(assert (=> d!118295 (>= lt!440320 0)))

(declare-fun e!560211 () Int)

(assert (=> d!118295 (= lt!440320 e!560211)))

(declare-fun c!100705 () Bool)

(assert (=> d!118295 (= c!100705 ((_ is Nil!21020) l!3519))))

(assert (=> d!118295 (= (ListPrimitiveSize!95 l!3519) lt!440320)))

(declare-fun b!992810 () Bool)

(assert (=> b!992810 (= e!560211 0)))

(declare-fun b!992811 () Bool)

(assert (=> b!992811 (= e!560211 (+ 1 (ListPrimitiveSize!95 (t!30032 l!3519))))))

(assert (= (and d!118295 c!100705) b!992810))

(assert (= (and d!118295 (not c!100705)) b!992811))

(declare-fun m!920653 () Bool)

(assert (=> b!992811 m!920653))

(assert (=> b!992794 d!118295))

(declare-fun d!118297 () Bool)

(assert (=> d!118297 (= (isEmpty!765 lt!440310) (not ((_ is Some!555) lt!440310)))))

(assert (=> b!992792 d!118297))

(declare-fun d!118301 () Bool)

(assert (=> d!118301 (= (unapply!32 l!3519) (ite ((_ is Nil!21020) l!3519) None!554 (Some!555 (tuple2!15087 (h!22181 l!3519) (t!30032 l!3519)))))))

(assert (=> b!992792 d!118301))

(declare-fun d!118303 () Bool)

(declare-fun lt!440331 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!464 (List!21023) (InoxSet (_ BitVec 64)))

(assert (=> d!118303 (= lt!440331 (select (content!464 (_2!7553 lt!440309)) e!29))))

(declare-fun e!560232 () Bool)

(assert (=> d!118303 (= lt!440331 e!560232)))

(declare-fun res!663694 () Bool)

(assert (=> d!118303 (=> (not res!663694) (not e!560232))))

(assert (=> d!118303 (= res!663694 ((_ is Cons!21019) (_2!7553 lt!440309)))))

(assert (=> d!118303 (= (contains!5780 (_2!7553 lt!440309) e!29) lt!440331)))

(declare-fun b!992832 () Bool)

(declare-fun e!560233 () Bool)

(assert (=> b!992832 (= e!560232 e!560233)))

(declare-fun res!663695 () Bool)

(assert (=> b!992832 (=> res!663695 e!560233)))

(assert (=> b!992832 (= res!663695 (= (h!22181 (_2!7553 lt!440309)) e!29))))

(declare-fun b!992833 () Bool)

(assert (=> b!992833 (= e!560233 (contains!5780 (t!30032 (_2!7553 lt!440309)) e!29))))

(assert (= (and d!118303 res!663694) b!992832))

(assert (= (and b!992832 (not res!663695)) b!992833))

(declare-fun m!920679 () Bool)

(assert (=> d!118303 m!920679))

(declare-fun m!920681 () Bool)

(assert (=> d!118303 m!920681))

(declare-fun m!920683 () Bool)

(assert (=> b!992833 m!920683))

(assert (=> b!992793 d!118303))

(declare-fun d!118317 () Bool)

(assert (=> d!118317 (= (get!15730 lt!440310) (v!14377 lt!440310))))

(assert (=> b!992793 d!118317))

(declare-fun d!118319 () Bool)

(declare-fun lt!440334 () Bool)

(assert (=> d!118319 (= lt!440334 (select (content!464 l!3519) e!29))))

(declare-fun e!560236 () Bool)

(assert (=> d!118319 (= lt!440334 e!560236)))

(declare-fun res!663696 () Bool)

(assert (=> d!118319 (=> (not res!663696) (not e!560236))))

(assert (=> d!118319 (= res!663696 ((_ is Cons!21019) l!3519))))

(assert (=> d!118319 (= (contains!5780 l!3519 e!29) lt!440334)))

(declare-fun b!992838 () Bool)

(declare-fun e!560237 () Bool)

(assert (=> b!992838 (= e!560236 e!560237)))

(declare-fun res!663697 () Bool)

(assert (=> b!992838 (=> res!663697 e!560237)))

(assert (=> b!992838 (= res!663697 (= (h!22181 l!3519) e!29))))

(declare-fun b!992839 () Bool)

(assert (=> b!992839 (= e!560237 (contains!5780 (t!30032 l!3519) e!29))))

(assert (= (and d!118319 res!663696) b!992838))

(assert (= (and b!992838 (not res!663697)) b!992839))

(declare-fun m!920685 () Bool)

(assert (=> d!118319 m!920685))

(declare-fun m!920687 () Bool)

(assert (=> d!118319 m!920687))

(declare-fun m!920689 () Bool)

(assert (=> b!992839 m!920689))

(assert (=> start!85310 d!118319))

(check-sat (not b!992839) (not b!992811) (not d!118303) (not d!118319) (not b!992809) (not b!992833))
(check-sat)
