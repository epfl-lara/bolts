; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85052 () Bool)

(assert start!85052)

(declare-fun b!992222 () Bool)

(declare-fun e!559768 () Bool)

(declare-fun e!559769 () Bool)

(assert (=> b!992222 (= e!559768 e!559769)))

(declare-fun res!663301 () Bool)

(assert (=> b!992222 (=> (not res!663301) (not e!559769))))

(declare-datatypes ((List!20999 0))(
  ( (Nil!20996) (Cons!20995 (h!22157 (_ BitVec 64)) (t!29996 List!20999)) )
))
(declare-datatypes ((tuple2!15044 0))(
  ( (tuple2!15045 (_1!7532 (_ BitVec 64)) (_2!7532 List!20999)) )
))
(declare-datatypes ((Option!535 0))(
  ( (Some!534 (v!14335 tuple2!15044)) (None!533) )
))
(declare-fun lt!440106 () Option!535)

(declare-fun isEmpty!744 (Option!535) Bool)

(assert (=> b!992222 (= res!663301 (not (isEmpty!744 lt!440106)))))

(declare-fun lt!440105 () List!20999)

(declare-fun unapply!11 (List!20999) Option!535)

(assert (=> b!992222 (= lt!440106 (unapply!11 lt!440105))))

(declare-fun tail!21 () List!20999)

(declare-fun head!726 () (_ BitVec 64))

(declare-fun $colon$colon!569 (List!20999 (_ BitVec 64)) List!20999)

(assert (=> b!992222 (= lt!440105 ($colon$colon!569 tail!21 head!726))))

(declare-fun b!992224 () Bool)

(declare-fun e!559767 () Bool)

(declare-fun -!442 (List!20999 (_ BitVec 64)) List!20999)

(assert (=> b!992224 (= e!559767 (not (= (-!442 lt!440105 head!726) tail!21)))))

(declare-fun lt!440104 () tuple2!15044)

(assert (=> b!992224 (= (-!442 (_2!7532 lt!440104) head!726) (_2!7532 lt!440104))))

(declare-datatypes ((Unit!32862 0))(
  ( (Unit!32863) )
))
(declare-fun lt!440103 () Unit!32862)

(declare-fun lemmaListMinusENotContainedEqualsList!0 ((_ BitVec 64) List!20999) Unit!32862)

(assert (=> b!992224 (= lt!440103 (lemmaListMinusENotContainedEqualsList!0 head!726 (_2!7532 lt!440104)))))

(declare-fun res!663302 () Bool)

(assert (=> start!85052 (=> (not res!663302) (not e!559768))))

(declare-fun contains!5756 (List!20999 (_ BitVec 64)) Bool)

(assert (=> start!85052 (= res!663302 (not (contains!5756 tail!21 head!726)))))

(assert (=> start!85052 e!559768))

(assert (=> start!85052 true))

(declare-fun b!992223 () Bool)

(assert (=> b!992223 (= e!559769 e!559767)))

(declare-fun res!663304 () Bool)

(assert (=> b!992223 (=> (not res!663304) (not e!559767))))

(assert (=> b!992223 (= res!663304 (not (contains!5756 (_2!7532 lt!440104) head!726)))))

(declare-fun get!15705 (Option!535) tuple2!15044)

(assert (=> b!992223 (= lt!440104 (get!15705 lt!440106))))

(declare-fun b!992221 () Bool)

(declare-fun res!663303 () Bool)

(assert (=> b!992221 (=> (not res!663303) (not e!559768))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!442 (List!20999) (InoxSet (_ BitVec 64)))

(assert (=> b!992221 (= res!663303 (not (select (content!442 tail!21) head!726)))))

(assert (= (and start!85052 res!663302) b!992221))

(assert (= (and b!992221 res!663303) b!992222))

(assert (= (and b!992222 res!663301) b!992223))

(assert (= (and b!992223 res!663304) b!992224))

(declare-fun m!920043 () Bool)

(assert (=> b!992221 m!920043))

(declare-fun m!920045 () Bool)

(assert (=> b!992221 m!920045))

(declare-fun m!920047 () Bool)

(assert (=> b!992223 m!920047))

(declare-fun m!920049 () Bool)

(assert (=> b!992223 m!920049))

(declare-fun m!920051 () Bool)

(assert (=> b!992222 m!920051))

(declare-fun m!920053 () Bool)

(assert (=> b!992222 m!920053))

(declare-fun m!920055 () Bool)

(assert (=> b!992222 m!920055))

(declare-fun m!920057 () Bool)

(assert (=> b!992224 m!920057))

(declare-fun m!920059 () Bool)

(assert (=> b!992224 m!920059))

(declare-fun m!920061 () Bool)

(assert (=> b!992224 m!920061))

(declare-fun m!920063 () Bool)

(assert (=> start!85052 m!920063))

(check-sat (not b!992221) (not start!85052) (not b!992224) (not b!992222) (not b!992223))
(check-sat)
(get-model)

(declare-fun d!118039 () Bool)

(declare-fun lt!440121 () Bool)

(assert (=> d!118039 (= lt!440121 (select (content!442 (_2!7532 lt!440104)) head!726))))

(declare-fun e!559783 () Bool)

(assert (=> d!118039 (= lt!440121 e!559783)))

(declare-fun res!663322 () Bool)

(assert (=> d!118039 (=> (not res!663322) (not e!559783))))

(get-info :version)

(assert (=> d!118039 (= res!663322 ((_ is Cons!20995) (_2!7532 lt!440104)))))

(assert (=> d!118039 (= (contains!5756 (_2!7532 lt!440104) head!726) lt!440121)))

(declare-fun b!992241 () Bool)

(declare-fun e!559784 () Bool)

(assert (=> b!992241 (= e!559783 e!559784)))

(declare-fun res!663321 () Bool)

(assert (=> b!992241 (=> res!663321 e!559784)))

(assert (=> b!992241 (= res!663321 (= (h!22157 (_2!7532 lt!440104)) head!726))))

(declare-fun b!992242 () Bool)

(assert (=> b!992242 (= e!559784 (contains!5756 (t!29996 (_2!7532 lt!440104)) head!726))))

(assert (= (and d!118039 res!663322) b!992241))

(assert (= (and b!992241 (not res!663321)) b!992242))

(declare-fun m!920087 () Bool)

(assert (=> d!118039 m!920087))

(declare-fun m!920089 () Bool)

(assert (=> d!118039 m!920089))

(declare-fun m!920091 () Bool)

(assert (=> b!992242 m!920091))

(assert (=> b!992223 d!118039))

(declare-fun d!118045 () Bool)

(assert (=> d!118045 (= (get!15705 lt!440106) (v!14335 lt!440106))))

(assert (=> b!992223 d!118045))

(declare-fun d!118047 () Bool)

(declare-fun lt!440124 () Bool)

(assert (=> d!118047 (= lt!440124 (select (content!442 tail!21) head!726))))

(declare-fun e!559789 () Bool)

(assert (=> d!118047 (= lt!440124 e!559789)))

(declare-fun res!663328 () Bool)

(assert (=> d!118047 (=> (not res!663328) (not e!559789))))

(assert (=> d!118047 (= res!663328 ((_ is Cons!20995) tail!21))))

(assert (=> d!118047 (= (contains!5756 tail!21 head!726) lt!440124)))

(declare-fun b!992247 () Bool)

(declare-fun e!559790 () Bool)

(assert (=> b!992247 (= e!559789 e!559790)))

(declare-fun res!663327 () Bool)

(assert (=> b!992247 (=> res!663327 e!559790)))

(assert (=> b!992247 (= res!663327 (= (h!22157 tail!21) head!726))))

(declare-fun b!992248 () Bool)

(assert (=> b!992248 (= e!559790 (contains!5756 (t!29996 tail!21) head!726))))

(assert (= (and d!118047 res!663328) b!992247))

(assert (= (and b!992247 (not res!663327)) b!992248))

(assert (=> d!118047 m!920043))

(assert (=> d!118047 m!920045))

(declare-fun m!920093 () Bool)

(assert (=> b!992248 m!920093))

(assert (=> start!85052 d!118047))

(declare-fun d!118049 () Bool)

(assert (=> d!118049 (= (isEmpty!744 lt!440106) (not ((_ is Some!534) lt!440106)))))

(assert (=> b!992222 d!118049))

(declare-fun d!118051 () Bool)

(assert (=> d!118051 (= (unapply!11 lt!440105) (ite ((_ is Nil!20996) lt!440105) None!533 (Some!534 (tuple2!15045 (h!22157 lt!440105) (t!29996 lt!440105)))))))

(assert (=> b!992222 d!118051))

(declare-fun d!118057 () Bool)

(assert (=> d!118057 (= ($colon$colon!569 tail!21 head!726) (Cons!20995 head!726 tail!21))))

(assert (=> b!992222 d!118057))

(declare-fun d!118059 () Bool)

(declare-fun c!100601 () Bool)

(assert (=> d!118059 (= c!100601 ((_ is Nil!20996) tail!21))))

(declare-fun e!559803 () (InoxSet (_ BitVec 64)))

(assert (=> d!118059 (= (content!442 tail!21) e!559803)))

(declare-fun b!992265 () Bool)

(assert (=> b!992265 (= e!559803 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!992266 () Bool)

(assert (=> b!992266 (= e!559803 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!22157 tail!21) true) (content!442 (t!29996 tail!21))))))

(assert (= (and d!118059 c!100601) b!992265))

(assert (= (and d!118059 (not c!100601)) b!992266))

(declare-fun m!920107 () Bool)

(assert (=> b!992266 m!920107))

(declare-fun m!920109 () Bool)

(assert (=> b!992266 m!920109))

(assert (=> b!992221 d!118059))

(declare-fun d!118065 () Bool)

(declare-fun e!559829 () Bool)

(assert (=> d!118065 e!559829))

(declare-fun res!663345 () Bool)

(assert (=> d!118065 (=> (not res!663345) (not e!559829))))

(declare-fun lt!440138 () List!20999)

(declare-fun size!30674 (List!20999) Int)

(assert (=> d!118065 (= res!663345 (<= (size!30674 lt!440138) (size!30674 lt!440105)))))

(declare-fun e!559830 () List!20999)

(assert (=> d!118065 (= lt!440138 e!559830)))

(declare-fun c!100616 () Bool)

(assert (=> d!118065 (= c!100616 ((_ is Cons!20995) lt!440105))))

(assert (=> d!118065 (= (-!442 lt!440105 head!726) lt!440138)))

(declare-fun b!992301 () Bool)

(declare-fun e!559828 () List!20999)

(declare-fun call!42098 () List!20999)

(assert (=> b!992301 (= e!559828 call!42098)))

(declare-fun b!992302 () Bool)

(assert (=> b!992302 (= e!559830 e!559828)))

(declare-fun c!100615 () Bool)

(assert (=> b!992302 (= c!100615 (= head!726 (h!22157 lt!440105)))))

(declare-fun b!992303 () Bool)

(assert (=> b!992303 (= e!559828 (Cons!20995 (h!22157 lt!440105) call!42098))))

(declare-fun b!992304 () Bool)

(assert (=> b!992304 (= e!559829 (= (content!442 lt!440138) ((_ map and) (content!442 lt!440105) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) head!726 true)))))))

(declare-fun b!992305 () Bool)

(assert (=> b!992305 (= e!559830 Nil!20996)))

(declare-fun bm!42095 () Bool)

(assert (=> bm!42095 (= call!42098 (-!442 (t!29996 lt!440105) head!726))))

(assert (= (and d!118065 c!100616) b!992302))

(assert (= (and d!118065 (not c!100616)) b!992305))

(assert (= (and b!992302 c!100615) b!992301))

(assert (= (and b!992302 (not c!100615)) b!992303))

(assert (= (or b!992301 b!992303) bm!42095))

(assert (= (and d!118065 res!663345) b!992304))

(declare-fun m!920137 () Bool)

(assert (=> d!118065 m!920137))

(declare-fun m!920139 () Bool)

(assert (=> d!118065 m!920139))

(declare-fun m!920141 () Bool)

(assert (=> b!992304 m!920141))

(declare-fun m!920143 () Bool)

(assert (=> b!992304 m!920143))

(declare-fun m!920147 () Bool)

(assert (=> b!992304 m!920147))

(declare-fun m!920149 () Bool)

(assert (=> bm!42095 m!920149))

(assert (=> b!992224 d!118065))

(declare-fun d!118083 () Bool)

(declare-fun e!559835 () Bool)

(assert (=> d!118083 e!559835))

(declare-fun res!663348 () Bool)

(assert (=> d!118083 (=> (not res!663348) (not e!559835))))

(declare-fun lt!440141 () List!20999)

(assert (=> d!118083 (= res!663348 (<= (size!30674 lt!440141) (size!30674 (_2!7532 lt!440104))))))

(declare-fun e!559836 () List!20999)

(assert (=> d!118083 (= lt!440141 e!559836)))

(declare-fun c!100618 () Bool)

(assert (=> d!118083 (= c!100618 ((_ is Cons!20995) (_2!7532 lt!440104)))))

(assert (=> d!118083 (= (-!442 (_2!7532 lt!440104) head!726) lt!440141)))

(declare-fun b!992308 () Bool)

(declare-fun e!559834 () List!20999)

(declare-fun call!42099 () List!20999)

(assert (=> b!992308 (= e!559834 call!42099)))

(declare-fun b!992309 () Bool)

(assert (=> b!992309 (= e!559836 e!559834)))

(declare-fun c!100617 () Bool)

(assert (=> b!992309 (= c!100617 (= head!726 (h!22157 (_2!7532 lt!440104))))))

(declare-fun b!992310 () Bool)

(assert (=> b!992310 (= e!559834 (Cons!20995 (h!22157 (_2!7532 lt!440104)) call!42099))))

(declare-fun b!992311 () Bool)

(assert (=> b!992311 (= e!559835 (= (content!442 lt!440141) ((_ map and) (content!442 (_2!7532 lt!440104)) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) head!726 true)))))))

(declare-fun b!992312 () Bool)

(assert (=> b!992312 (= e!559836 Nil!20996)))

(declare-fun bm!42096 () Bool)

(assert (=> bm!42096 (= call!42099 (-!442 (t!29996 (_2!7532 lt!440104)) head!726))))

(assert (= (and d!118083 c!100618) b!992309))

(assert (= (and d!118083 (not c!100618)) b!992312))

(assert (= (and b!992309 c!100617) b!992308))

(assert (= (and b!992309 (not c!100617)) b!992310))

(assert (= (or b!992308 b!992310) bm!42096))

(assert (= (and d!118083 res!663348) b!992311))

(declare-fun m!920153 () Bool)

(assert (=> d!118083 m!920153))

(declare-fun m!920155 () Bool)

(assert (=> d!118083 m!920155))

(declare-fun m!920157 () Bool)

(assert (=> b!992311 m!920157))

(assert (=> b!992311 m!920087))

(assert (=> b!992311 m!920147))

(declare-fun m!920159 () Bool)

(assert (=> bm!42096 m!920159))

(assert (=> b!992224 d!118083))

(declare-fun d!118087 () Bool)

(assert (=> d!118087 (= (-!442 (_2!7532 lt!440104) head!726) (_2!7532 lt!440104))))

(declare-fun lt!440146 () Unit!32862)

(declare-fun choose!48 ((_ BitVec 64) List!20999) Unit!32862)

(assert (=> d!118087 (= lt!440146 (choose!48 head!726 (_2!7532 lt!440104)))))

(assert (=> d!118087 (not (contains!5756 (_2!7532 lt!440104) head!726))))

(assert (=> d!118087 (= (lemmaListMinusENotContainedEqualsList!0 head!726 (_2!7532 lt!440104)) lt!440146)))

(declare-fun bs!28215 () Bool)

(assert (= bs!28215 d!118087))

(assert (=> bs!28215 m!920059))

(declare-fun m!920161 () Bool)

(assert (=> bs!28215 m!920161))

(assert (=> bs!28215 m!920047))

(assert (=> b!992224 d!118087))

(check-sat (not b!992242) (not d!118039) (not bm!42095) (not d!118047) (not d!118083) (not b!992311) (not b!992248) (not bm!42096) (not b!992266) (not d!118087) (not d!118065) (not b!992304))
(check-sat)
