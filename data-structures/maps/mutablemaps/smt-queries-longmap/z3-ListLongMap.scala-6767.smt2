; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84944 () Bool)

(assert start!84944)

(declare-fun res!663148 () Bool)

(declare-fun e!559612 () Bool)

(assert (=> start!84944 (=> (not res!663148) (not e!559612))))

(declare-datatypes ((List!20987 0))(
  ( (Nil!20984) (Cons!20983 (h!22145 (_ BitVec 64)) (t!29978 List!20987)) )
))
(declare-fun tail!21 () List!20987)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5744 (List!20987 (_ BitVec 64)) Bool)

(assert (=> start!84944 (= res!663148 (not (contains!5744 tail!21 head!726)))))

(assert (=> start!84944 e!559612))

(assert (=> start!84944 true))

(declare-fun b!992012 () Bool)

(declare-fun res!663146 () Bool)

(assert (=> b!992012 (=> (not res!663146) (not e!559612))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!430 (List!20987) (InoxSet (_ BitVec 64)))

(assert (=> b!992012 (= res!663146 (not (select (content!430 tail!21) head!726)))))

(declare-fun b!992013 () Bool)

(declare-fun e!559613 () Bool)

(assert (=> b!992013 (= e!559612 e!559613)))

(declare-fun res!663147 () Bool)

(assert (=> b!992013 (=> (not res!663147) (not e!559613))))

(declare-datatypes ((tuple2!15026 0))(
  ( (tuple2!15027 (_1!7523 (_ BitVec 64)) (_2!7523 List!20987)) )
))
(declare-datatypes ((Option!526 0))(
  ( (Some!525 (v!14317 tuple2!15026)) (None!524) )
))
(declare-fun lt!440022 () Option!526)

(declare-fun isEmpty!735 (Option!526) Bool)

(assert (=> b!992013 (= res!663147 (not (isEmpty!735 lt!440022)))))

(declare-fun unapply!2 (List!20987) Option!526)

(declare-fun $colon$colon!560 (List!20987 (_ BitVec 64)) List!20987)

(assert (=> b!992013 (= lt!440022 (unapply!2 ($colon$colon!560 tail!21 head!726)))))

(declare-fun b!992014 () Bool)

(declare-fun isDefined!388 (Option!526) Bool)

(assert (=> b!992014 (= e!559613 (not (isDefined!388 lt!440022)))))

(assert (= (and start!84944 res!663148) b!992012))

(assert (= (and b!992012 res!663146) b!992013))

(assert (= (and b!992013 res!663147) b!992014))

(declare-fun m!919807 () Bool)

(assert (=> start!84944 m!919807))

(declare-fun m!919809 () Bool)

(assert (=> b!992012 m!919809))

(declare-fun m!919811 () Bool)

(assert (=> b!992012 m!919811))

(declare-fun m!919813 () Bool)

(assert (=> b!992013 m!919813))

(declare-fun m!919815 () Bool)

(assert (=> b!992013 m!919815))

(assert (=> b!992013 m!919815))

(declare-fun m!919817 () Bool)

(assert (=> b!992013 m!919817))

(declare-fun m!919819 () Bool)

(assert (=> b!992014 m!919819))

(check-sat (not b!992012) (not start!84944) (not b!992014) (not b!992013))
(check-sat)
(get-model)

(declare-fun d!117945 () Bool)

(declare-fun c!100572 () Bool)

(get-info :version)

(assert (=> d!117945 (= c!100572 ((_ is Nil!20984) tail!21))))

(declare-fun e!559630 () (InoxSet (_ BitVec 64)))

(assert (=> d!117945 (= (content!430 tail!21) e!559630)))

(declare-fun b!992036 () Bool)

(assert (=> b!992036 (= e!559630 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!992037 () Bool)

(assert (=> b!992037 (= e!559630 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!22145 tail!21) true) (content!430 (t!29978 tail!21))))))

(assert (= (and d!117945 c!100572) b!992036))

(assert (= (and d!117945 (not c!100572)) b!992037))

(declare-fun m!919835 () Bool)

(assert (=> b!992037 m!919835))

(declare-fun m!919837 () Bool)

(assert (=> b!992037 m!919837))

(assert (=> b!992012 d!117945))

(declare-fun d!117947 () Bool)

(declare-fun lt!440034 () Bool)

(assert (=> d!117947 (= lt!440034 (select (content!430 tail!21) head!726))))

(declare-fun e!559639 () Bool)

(assert (=> d!117947 (= lt!440034 e!559639)))

(declare-fun res!663174 () Bool)

(assert (=> d!117947 (=> (not res!663174) (not e!559639))))

(assert (=> d!117947 (= res!663174 ((_ is Cons!20983) tail!21))))

(assert (=> d!117947 (= (contains!5744 tail!21 head!726) lt!440034)))

(declare-fun b!992046 () Bool)

(declare-fun e!559640 () Bool)

(assert (=> b!992046 (= e!559639 e!559640)))

(declare-fun res!663175 () Bool)

(assert (=> b!992046 (=> res!663175 e!559640)))

(assert (=> b!992046 (= res!663175 (= (h!22145 tail!21) head!726))))

(declare-fun b!992047 () Bool)

(assert (=> b!992047 (= e!559640 (contains!5744 (t!29978 tail!21) head!726))))

(assert (= (and d!117947 res!663174) b!992046))

(assert (= (and b!992046 (not res!663175)) b!992047))

(assert (=> d!117947 m!919809))

(assert (=> d!117947 m!919811))

(declare-fun m!919843 () Bool)

(assert (=> b!992047 m!919843))

(assert (=> start!84944 d!117947))

(declare-fun d!117965 () Bool)

(assert (=> d!117965 (= (isDefined!388 lt!440022) (not (isEmpty!735 lt!440022)))))

(declare-fun bs!28201 () Bool)

(assert (= bs!28201 d!117965))

(assert (=> bs!28201 m!919813))

(assert (=> b!992014 d!117965))

(declare-fun d!117971 () Bool)

(assert (=> d!117971 (= (isEmpty!735 lt!440022) (not ((_ is Some!525) lt!440022)))))

(assert (=> b!992013 d!117971))

(declare-fun d!117973 () Bool)

(assert (=> d!117973 (= (unapply!2 ($colon$colon!560 tail!21 head!726)) (ite ((_ is Nil!20984) ($colon$colon!560 tail!21 head!726)) None!524 (Some!525 (tuple2!15027 (h!22145 ($colon$colon!560 tail!21 head!726)) (t!29978 ($colon$colon!560 tail!21 head!726))))))))

(assert (=> b!992013 d!117973))

(declare-fun d!117975 () Bool)

(assert (=> d!117975 (= ($colon$colon!560 tail!21 head!726) (Cons!20983 head!726 tail!21))))

(assert (=> b!992013 d!117975))

(check-sat (not b!992037) (not d!117947) (not d!117965) (not b!992047))
(check-sat)
