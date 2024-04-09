; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85010 () Bool)

(assert start!85010)

(declare-fun res!663246 () Bool)

(declare-fun e!559711 () Bool)

(assert (=> start!85010 (=> (not res!663246) (not e!559711))))

(declare-datatypes ((List!20996 0))(
  ( (Nil!20993) (Cons!20992 (h!22154 (_ BitVec 64)) (t!29990 List!20996)) )
))
(declare-fun tail!21 () List!20996)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun contains!5753 (List!20996 (_ BitVec 64)) Bool)

(assert (=> start!85010 (= res!663246 (not (contains!5753 tail!21 head!726)))))

(assert (=> start!85010 e!559711))

(assert (=> start!85010 true))

(declare-fun b!992147 () Bool)

(declare-fun res!663245 () Bool)

(assert (=> b!992147 (=> (not res!663245) (not e!559711))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!439 (List!20996) (InoxSet (_ BitVec 64)))

(assert (=> b!992147 (= res!663245 (not (select (content!439 tail!21) head!726)))))

(declare-fun b!992148 () Bool)

(declare-fun e!559712 () Bool)

(assert (=> b!992148 (= e!559711 e!559712)))

(declare-fun res!663247 () Bool)

(assert (=> b!992148 (=> (not res!663247) (not e!559712))))

(declare-datatypes ((tuple2!15038 0))(
  ( (tuple2!15039 (_1!7529 (_ BitVec 64)) (_2!7529 List!20996)) )
))
(declare-datatypes ((Option!532 0))(
  ( (Some!531 (v!14329 tuple2!15038)) (None!530) )
))
(declare-fun lt!440067 () Option!532)

(declare-fun isEmpty!741 (Option!532) Bool)

(assert (=> b!992148 (= res!663247 (not (isEmpty!741 lt!440067)))))

(declare-fun unapply!8 (List!20996) Option!532)

(declare-fun $colon$colon!566 (List!20996 (_ BitVec 64)) List!20996)

(assert (=> b!992148 (= lt!440067 (unapply!8 ($colon$colon!566 tail!21 head!726)))))

(declare-fun b!992149 () Bool)

(declare-fun get!15700 (Option!532) tuple2!15038)

(assert (=> b!992149 (= e!559712 (contains!5753 (_2!7529 (get!15700 lt!440067)) head!726))))

(assert (= (and start!85010 res!663246) b!992147))

(assert (= (and b!992147 res!663245) b!992148))

(assert (= (and b!992148 res!663247) b!992149))

(declare-fun m!919953 () Bool)

(assert (=> start!85010 m!919953))

(declare-fun m!919955 () Bool)

(assert (=> b!992147 m!919955))

(declare-fun m!919957 () Bool)

(assert (=> b!992147 m!919957))

(declare-fun m!919959 () Bool)

(assert (=> b!992148 m!919959))

(declare-fun m!919961 () Bool)

(assert (=> b!992148 m!919961))

(assert (=> b!992148 m!919961))

(declare-fun m!919963 () Bool)

(assert (=> b!992148 m!919963))

(declare-fun m!919965 () Bool)

(assert (=> b!992149 m!919965))

(declare-fun m!919967 () Bool)

(assert (=> b!992149 m!919967))

(check-sat (not start!85010) (not b!992149) (not b!992148) (not b!992147))
(check-sat)
(get-model)

(declare-fun d!117997 () Bool)

(declare-fun lt!440078 () Bool)

(assert (=> d!117997 (= lt!440078 (select (content!439 tail!21) head!726))))

(declare-fun e!559734 () Bool)

(assert (=> d!117997 (= lt!440078 e!559734)))

(declare-fun res!663269 () Bool)

(assert (=> d!117997 (=> (not res!663269) (not e!559734))))

(get-info :version)

(assert (=> d!117997 (= res!663269 ((_ is Cons!20992) tail!21))))

(assert (=> d!117997 (= (contains!5753 tail!21 head!726) lt!440078)))

(declare-fun b!992172 () Bool)

(declare-fun e!559733 () Bool)

(assert (=> b!992172 (= e!559734 e!559733)))

(declare-fun res!663272 () Bool)

(assert (=> b!992172 (=> res!663272 e!559733)))

(assert (=> b!992172 (= res!663272 (= (h!22154 tail!21) head!726))))

(declare-fun b!992174 () Bool)

(assert (=> b!992174 (= e!559733 (contains!5753 (t!29990 tail!21) head!726))))

(assert (= (and d!117997 res!663269) b!992172))

(assert (= (and b!992172 (not res!663272)) b!992174))

(assert (=> d!117997 m!919955))

(assert (=> d!117997 m!919957))

(declare-fun m!919987 () Bool)

(assert (=> b!992174 m!919987))

(assert (=> start!85010 d!117997))

(declare-fun d!118002 () Bool)

(declare-fun lt!440081 () Bool)

(assert (=> d!118002 (= lt!440081 (select (content!439 (_2!7529 (get!15700 lt!440067))) head!726))))

(declare-fun e!559739 () Bool)

(assert (=> d!118002 (= lt!440081 e!559739)))

(declare-fun res!663275 () Bool)

(assert (=> d!118002 (=> (not res!663275) (not e!559739))))

(assert (=> d!118002 (= res!663275 ((_ is Cons!20992) (_2!7529 (get!15700 lt!440067))))))

(assert (=> d!118002 (= (contains!5753 (_2!7529 (get!15700 lt!440067)) head!726) lt!440081)))

(declare-fun b!992177 () Bool)

(declare-fun e!559738 () Bool)

(assert (=> b!992177 (= e!559739 e!559738)))

(declare-fun res!663276 () Bool)

(assert (=> b!992177 (=> res!663276 e!559738)))

(assert (=> b!992177 (= res!663276 (= (h!22154 (_2!7529 (get!15700 lt!440067))) head!726))))

(declare-fun b!992178 () Bool)

(assert (=> b!992178 (= e!559738 (contains!5753 (t!29990 (_2!7529 (get!15700 lt!440067))) head!726))))

(assert (= (and d!118002 res!663275) b!992177))

(assert (= (and b!992177 (not res!663276)) b!992178))

(declare-fun m!919993 () Bool)

(assert (=> d!118002 m!919993))

(declare-fun m!919999 () Bool)

(assert (=> d!118002 m!919999))

(declare-fun m!920005 () Bool)

(assert (=> b!992178 m!920005))

(assert (=> b!992149 d!118002))

(declare-fun d!118008 () Bool)

(assert (=> d!118008 (= (get!15700 lt!440067) (v!14329 lt!440067))))

(assert (=> b!992149 d!118008))

(declare-fun d!118014 () Bool)

(assert (=> d!118014 (= (isEmpty!741 lt!440067) (not ((_ is Some!531) lt!440067)))))

(assert (=> b!992148 d!118014))

(declare-fun d!118019 () Bool)

(assert (=> d!118019 (= (unapply!8 ($colon$colon!566 tail!21 head!726)) (ite ((_ is Nil!20993) ($colon$colon!566 tail!21 head!726)) None!530 (Some!531 (tuple2!15039 (h!22154 ($colon$colon!566 tail!21 head!726)) (t!29990 ($colon$colon!566 tail!21 head!726))))))))

(assert (=> b!992148 d!118019))

(declare-fun d!118029 () Bool)

(assert (=> d!118029 (= ($colon$colon!566 tail!21 head!726) (Cons!20992 head!726 tail!21))))

(assert (=> b!992148 d!118029))

(declare-fun d!118034 () Bool)

(declare-fun c!100596 () Bool)

(assert (=> d!118034 (= c!100596 ((_ is Nil!20993) tail!21))))

(declare-fun e!559751 () (InoxSet (_ BitVec 64)))

(assert (=> d!118034 (= (content!439 tail!21) e!559751)))

(declare-fun b!992199 () Bool)

(assert (=> b!992199 (= e!559751 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!992200 () Bool)

(assert (=> b!992200 (= e!559751 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!22154 tail!21) true) (content!439 (t!29990 tail!21))))))

(assert (= (and d!118034 c!100596) b!992199))

(assert (= (and d!118034 (not c!100596)) b!992200))

(declare-fun m!920013 () Bool)

(assert (=> b!992200 m!920013))

(declare-fun m!920015 () Bool)

(assert (=> b!992200 m!920015))

(assert (=> b!992147 d!118034))

(check-sat (not d!117997) (not d!118002) (not b!992200) (not b!992174) (not b!992178))
(check-sat)
