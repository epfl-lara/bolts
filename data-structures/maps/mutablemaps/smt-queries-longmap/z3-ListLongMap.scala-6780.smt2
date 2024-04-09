; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85346 () Bool)

(assert start!85346)

(declare-fun res!663715 () Bool)

(declare-fun e!560261 () Bool)

(assert (=> start!85346 (=> (not res!663715) (not e!560261))))

(declare-datatypes ((List!21026 0))(
  ( (Nil!21023) (Cons!21022 (h!22184 (_ BitVec 64)) (t!30035 List!21026)) )
))
(declare-fun l!3519 () List!21026)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5783 (List!21026 (_ BitVec 64)) Bool)

(assert (=> start!85346 (= res!663715 (not (contains!5783 l!3519 e!29)))))

(assert (=> start!85346 e!560261))

(assert (=> start!85346 true))

(declare-fun b!992867 () Bool)

(declare-fun e!560260 () Bool)

(assert (=> b!992867 (= e!560261 e!560260)))

(declare-fun res!663713 () Bool)

(assert (=> b!992867 (=> (not res!663713) (not e!560260))))

(declare-datatypes ((tuple2!15092 0))(
  ( (tuple2!15093 (_1!7556 (_ BitVec 64)) (_2!7556 List!21026)) )
))
(declare-datatypes ((Option!559 0))(
  ( (Some!558 (v!14383 tuple2!15092)) (None!557) )
))
(declare-fun lt!440357 () Option!559)

(declare-fun isEmpty!768 (Option!559) Bool)

(assert (=> b!992867 (= res!663713 (not (isEmpty!768 lt!440357)))))

(declare-fun unapply!35 (List!21026) Option!559)

(assert (=> b!992867 (= lt!440357 (unapply!35 l!3519))))

(declare-fun b!992868 () Bool)

(declare-fun e!560259 () Bool)

(assert (=> b!992868 (= e!560260 e!560259)))

(declare-fun res!663714 () Bool)

(assert (=> b!992868 (=> (not res!663714) (not e!560259))))

(declare-fun lt!440356 () tuple2!15092)

(assert (=> b!992868 (= res!663714 (not (contains!5783 (_2!7556 lt!440356) e!29)))))

(declare-fun get!15735 (Option!559) tuple2!15092)

(assert (=> b!992868 (= lt!440356 (get!15735 lt!440357))))

(declare-fun b!992869 () Bool)

(declare-fun -!451 (List!21026 (_ BitVec 64)) List!21026)

(assert (=> b!992869 (= e!560259 (not (= (-!451 l!3519 e!29) l!3519)))))

(assert (=> b!992869 (= (-!451 (_2!7556 lt!440356) e!29) (_2!7556 lt!440356))))

(declare-datatypes ((Unit!32868 0))(
  ( (Unit!32869) )
))
(declare-fun lt!440358 () Unit!32868)

(declare-fun lemmaListMinusENotContainedEqualsList!0 ((_ BitVec 64) List!21026) Unit!32868)

(assert (=> b!992869 (= lt!440358 (lemmaListMinusENotContainedEqualsList!0 e!29 (_2!7556 lt!440356)))))

(assert (= (and start!85346 res!663715) b!992867))

(assert (= (and b!992867 res!663713) b!992868))

(assert (= (and b!992868 res!663714) b!992869))

(declare-fun m!920715 () Bool)

(assert (=> start!85346 m!920715))

(declare-fun m!920717 () Bool)

(assert (=> b!992867 m!920717))

(declare-fun m!920719 () Bool)

(assert (=> b!992867 m!920719))

(declare-fun m!920721 () Bool)

(assert (=> b!992868 m!920721))

(declare-fun m!920723 () Bool)

(assert (=> b!992868 m!920723))

(declare-fun m!920725 () Bool)

(assert (=> b!992869 m!920725))

(declare-fun m!920727 () Bool)

(assert (=> b!992869 m!920727))

(declare-fun m!920729 () Bool)

(assert (=> b!992869 m!920729))

(check-sat (not start!85346) (not b!992869) (not b!992868) (not b!992867))
(check-sat)
(get-model)

(declare-fun d!118329 () Bool)

(declare-fun lt!440373 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!466 (List!21026) (InoxSet (_ BitVec 64)))

(assert (=> d!118329 (= lt!440373 (select (content!466 l!3519) e!29))))

(declare-fun e!560282 () Bool)

(assert (=> d!118329 (= lt!440373 e!560282)))

(declare-fun res!663736 () Bool)

(assert (=> d!118329 (=> (not res!663736) (not e!560282))))

(get-info :version)

(assert (=> d!118329 (= res!663736 ((_ is Cons!21022) l!3519))))

(assert (=> d!118329 (= (contains!5783 l!3519 e!29) lt!440373)))

(declare-fun b!992889 () Bool)

(declare-fun e!560281 () Bool)

(assert (=> b!992889 (= e!560282 e!560281)))

(declare-fun res!663735 () Bool)

(assert (=> b!992889 (=> res!663735 e!560281)))

(assert (=> b!992889 (= res!663735 (= (h!22184 l!3519) e!29))))

(declare-fun b!992890 () Bool)

(assert (=> b!992890 (= e!560281 (contains!5783 (t!30035 l!3519) e!29))))

(assert (= (and d!118329 res!663736) b!992889))

(assert (= (and b!992889 (not res!663735)) b!992890))

(declare-fun m!920753 () Bool)

(assert (=> d!118329 m!920753))

(declare-fun m!920755 () Bool)

(assert (=> d!118329 m!920755))

(declare-fun m!920757 () Bool)

(assert (=> b!992890 m!920757))

(assert (=> start!85346 d!118329))

(declare-fun b!992930 () Bool)

(declare-fun e!560313 () List!21026)

(declare-fun e!560311 () List!21026)

(assert (=> b!992930 (= e!560313 e!560311)))

(declare-fun c!100729 () Bool)

(assert (=> b!992930 (= c!100729 (= e!29 (h!22184 l!3519)))))

(declare-fun b!992931 () Bool)

(assert (=> b!992931 (= e!560313 Nil!21023)))

(declare-fun d!118339 () Bool)

(declare-fun e!560312 () Bool)

(assert (=> d!118339 e!560312))

(declare-fun res!663748 () Bool)

(assert (=> d!118339 (=> (not res!663748) (not e!560312))))

(declare-fun lt!440384 () List!21026)

(declare-fun size!30682 (List!21026) Int)

(assert (=> d!118339 (= res!663748 (<= (size!30682 lt!440384) (size!30682 l!3519)))))

(assert (=> d!118339 (= lt!440384 e!560313)))

(declare-fun c!100728 () Bool)

(assert (=> d!118339 (= c!100728 ((_ is Cons!21022) l!3519))))

(assert (=> d!118339 (= (-!451 l!3519 e!29) lt!440384)))

(declare-fun b!992932 () Bool)

(declare-fun call!42129 () List!21026)

(assert (=> b!992932 (= e!560311 (Cons!21022 (h!22184 l!3519) call!42129))))

(declare-fun b!992933 () Bool)

(assert (=> b!992933 (= e!560312 (= (content!466 lt!440384) ((_ map and) (content!466 l!3519) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) e!29 true)))))))

(declare-fun bm!42126 () Bool)

(assert (=> bm!42126 (= call!42129 (-!451 (t!30035 l!3519) e!29))))

(declare-fun b!992934 () Bool)

(assert (=> b!992934 (= e!560311 call!42129)))

(assert (= (and d!118339 c!100728) b!992930))

(assert (= (and d!118339 (not c!100728)) b!992931))

(assert (= (and b!992930 c!100729) b!992934))

(assert (= (and b!992930 (not c!100729)) b!992932))

(assert (= (or b!992934 b!992932) bm!42126))

(assert (= (and d!118339 res!663748) b!992933))

(declare-fun m!920775 () Bool)

(assert (=> d!118339 m!920775))

(declare-fun m!920777 () Bool)

(assert (=> d!118339 m!920777))

(declare-fun m!920779 () Bool)

(assert (=> b!992933 m!920779))

(assert (=> b!992933 m!920753))

(declare-fun m!920781 () Bool)

(assert (=> b!992933 m!920781))

(declare-fun m!920783 () Bool)

(assert (=> bm!42126 m!920783))

(assert (=> b!992869 d!118339))

(declare-fun b!992942 () Bool)

(declare-fun e!560321 () List!21026)

(declare-fun e!560319 () List!21026)

(assert (=> b!992942 (= e!560321 e!560319)))

(declare-fun c!100733 () Bool)

(assert (=> b!992942 (= c!100733 (= e!29 (h!22184 (_2!7556 lt!440356))))))

(declare-fun b!992943 () Bool)

(assert (=> b!992943 (= e!560321 Nil!21023)))

(declare-fun d!118345 () Bool)

(declare-fun e!560320 () Bool)

(assert (=> d!118345 e!560320))

(declare-fun res!663752 () Bool)

(assert (=> d!118345 (=> (not res!663752) (not e!560320))))

(declare-fun lt!440386 () List!21026)

(assert (=> d!118345 (= res!663752 (<= (size!30682 lt!440386) (size!30682 (_2!7556 lt!440356))))))

(assert (=> d!118345 (= lt!440386 e!560321)))

(declare-fun c!100732 () Bool)

(assert (=> d!118345 (= c!100732 ((_ is Cons!21022) (_2!7556 lt!440356)))))

(assert (=> d!118345 (= (-!451 (_2!7556 lt!440356) e!29) lt!440386)))

(declare-fun b!992944 () Bool)

(declare-fun call!42131 () List!21026)

(assert (=> b!992944 (= e!560319 (Cons!21022 (h!22184 (_2!7556 lt!440356)) call!42131))))

(declare-fun b!992945 () Bool)

(assert (=> b!992945 (= e!560320 (= (content!466 lt!440386) ((_ map and) (content!466 (_2!7556 lt!440356)) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) e!29 true)))))))

(declare-fun bm!42128 () Bool)

(assert (=> bm!42128 (= call!42131 (-!451 (t!30035 (_2!7556 lt!440356)) e!29))))

(declare-fun b!992946 () Bool)

(assert (=> b!992946 (= e!560319 call!42131)))

(assert (= (and d!118345 c!100732) b!992942))

(assert (= (and d!118345 (not c!100732)) b!992943))

(assert (= (and b!992942 c!100733) b!992946))

(assert (= (and b!992942 (not c!100733)) b!992944))

(assert (= (or b!992946 b!992944) bm!42128))

(assert (= (and d!118345 res!663752) b!992945))

(declare-fun m!920795 () Bool)

(assert (=> d!118345 m!920795))

(declare-fun m!920797 () Bool)

(assert (=> d!118345 m!920797))

(declare-fun m!920799 () Bool)

(assert (=> b!992945 m!920799))

(declare-fun m!920801 () Bool)

(assert (=> b!992945 m!920801))

(assert (=> b!992945 m!920781))

(declare-fun m!920803 () Bool)

(assert (=> bm!42128 m!920803))

(assert (=> b!992869 d!118345))

(declare-fun d!118349 () Bool)

(assert (=> d!118349 (= (-!451 (_2!7556 lt!440356) e!29) (_2!7556 lt!440356))))

(declare-fun lt!440395 () Unit!32868)

(declare-fun choose!48 ((_ BitVec 64) List!21026) Unit!32868)

(assert (=> d!118349 (= lt!440395 (choose!48 e!29 (_2!7556 lt!440356)))))

(assert (=> d!118349 (not (contains!5783 (_2!7556 lt!440356) e!29))))

(assert (=> d!118349 (= (lemmaListMinusENotContainedEqualsList!0 e!29 (_2!7556 lt!440356)) lt!440395)))

(declare-fun bs!28248 () Bool)

(assert (= bs!28248 d!118349))

(assert (=> bs!28248 m!920727))

(declare-fun m!920819 () Bool)

(assert (=> bs!28248 m!920819))

(assert (=> bs!28248 m!920721))

(assert (=> b!992869 d!118349))

(declare-fun d!118357 () Bool)

(declare-fun lt!440396 () Bool)

(assert (=> d!118357 (= lt!440396 (select (content!466 (_2!7556 lt!440356)) e!29))))

(declare-fun e!560333 () Bool)

(assert (=> d!118357 (= lt!440396 e!560333)))

(declare-fun res!663758 () Bool)

(assert (=> d!118357 (=> (not res!663758) (not e!560333))))

(assert (=> d!118357 (= res!663758 ((_ is Cons!21022) (_2!7556 lt!440356)))))

(assert (=> d!118357 (= (contains!5783 (_2!7556 lt!440356) e!29) lt!440396)))

(declare-fun b!992959 () Bool)

(declare-fun e!560332 () Bool)

(assert (=> b!992959 (= e!560333 e!560332)))

(declare-fun res!663757 () Bool)

(assert (=> b!992959 (=> res!663757 e!560332)))

(assert (=> b!992959 (= res!663757 (= (h!22184 (_2!7556 lt!440356)) e!29))))

(declare-fun b!992960 () Bool)

(assert (=> b!992960 (= e!560332 (contains!5783 (t!30035 (_2!7556 lt!440356)) e!29))))

(assert (= (and d!118357 res!663758) b!992959))

(assert (= (and b!992959 (not res!663757)) b!992960))

(assert (=> d!118357 m!920801))

(declare-fun m!920833 () Bool)

(assert (=> d!118357 m!920833))

(declare-fun m!920835 () Bool)

(assert (=> b!992960 m!920835))

(assert (=> b!992868 d!118357))

(declare-fun d!118361 () Bool)

(assert (=> d!118361 (= (get!15735 lt!440357) (v!14383 lt!440357))))

(assert (=> b!992868 d!118361))

(declare-fun d!118365 () Bool)

(assert (=> d!118365 (= (isEmpty!768 lt!440357) (not ((_ is Some!558) lt!440357)))))

(assert (=> b!992867 d!118365))

(declare-fun d!118369 () Bool)

(assert (=> d!118369 (= (unapply!35 l!3519) (ite ((_ is Nil!21023) l!3519) None!557 (Some!558 (tuple2!15093 (h!22184 l!3519) (t!30035 l!3519)))))))

(assert (=> b!992867 d!118369))

(check-sat (not d!118349) (not d!118357) (not d!118329) (not b!992960) (not b!992933) (not b!992945) (not b!992890) (not bm!42128) (not d!118345) (not bm!42126) (not d!118339))
(check-sat)
