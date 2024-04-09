; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85344 () Bool)

(assert start!85344)

(declare-fun res!663705 () Bool)

(declare-fun e!560252 () Bool)

(assert (=> start!85344 (=> (not res!663705) (not e!560252))))

(declare-datatypes ((List!21025 0))(
  ( (Nil!21022) (Cons!21021 (h!22183 (_ BitVec 64)) (t!30034 List!21025)) )
))
(declare-fun l!3519 () List!21025)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5782 (List!21025 (_ BitVec 64)) Bool)

(assert (=> start!85344 (= res!663705 (not (contains!5782 l!3519 e!29)))))

(assert (=> start!85344 e!560252))

(assert (=> start!85344 true))

(declare-fun b!992858 () Bool)

(declare-fun e!560251 () Bool)

(assert (=> b!992858 (= e!560252 e!560251)))

(declare-fun res!663704 () Bool)

(assert (=> b!992858 (=> (not res!663704) (not e!560251))))

(declare-datatypes ((tuple2!15090 0))(
  ( (tuple2!15091 (_1!7555 (_ BitVec 64)) (_2!7555 List!21025)) )
))
(declare-datatypes ((Option!558 0))(
  ( (Some!557 (v!14382 tuple2!15090)) (None!556) )
))
(declare-fun lt!440349 () Option!558)

(declare-fun isEmpty!767 (Option!558) Bool)

(assert (=> b!992858 (= res!663704 (not (isEmpty!767 lt!440349)))))

(declare-fun unapply!34 (List!21025) Option!558)

(assert (=> b!992858 (= lt!440349 (unapply!34 l!3519))))

(declare-fun b!992859 () Bool)

(declare-fun e!560250 () Bool)

(assert (=> b!992859 (= e!560251 e!560250)))

(declare-fun res!663706 () Bool)

(assert (=> b!992859 (=> (not res!663706) (not e!560250))))

(declare-fun lt!440347 () tuple2!15090)

(assert (=> b!992859 (= res!663706 (not (contains!5782 (_2!7555 lt!440347) e!29)))))

(declare-fun get!15734 (Option!558) tuple2!15090)

(assert (=> b!992859 (= lt!440347 (get!15734 lt!440349))))

(declare-fun b!992860 () Bool)

(declare-fun -!450 (List!21025 (_ BitVec 64)) List!21025)

(assert (=> b!992860 (= e!560250 (not (= (-!450 l!3519 e!29) l!3519)))))

(assert (=> b!992860 (= (-!450 (_2!7555 lt!440347) e!29) (_2!7555 lt!440347))))

(declare-datatypes ((Unit!32866 0))(
  ( (Unit!32867) )
))
(declare-fun lt!440348 () Unit!32866)

(declare-fun lemmaListMinusENotContainedEqualsList!0 ((_ BitVec 64) List!21025) Unit!32866)

(assert (=> b!992860 (= lt!440348 (lemmaListMinusENotContainedEqualsList!0 e!29 (_2!7555 lt!440347)))))

(assert (= (and start!85344 res!663705) b!992858))

(assert (= (and b!992858 res!663704) b!992859))

(assert (= (and b!992859 res!663706) b!992860))

(declare-fun m!920699 () Bool)

(assert (=> start!85344 m!920699))

(declare-fun m!920701 () Bool)

(assert (=> b!992858 m!920701))

(declare-fun m!920703 () Bool)

(assert (=> b!992858 m!920703))

(declare-fun m!920705 () Bool)

(assert (=> b!992859 m!920705))

(declare-fun m!920707 () Bool)

(assert (=> b!992859 m!920707))

(declare-fun m!920709 () Bool)

(assert (=> b!992860 m!920709))

(declare-fun m!920711 () Bool)

(assert (=> b!992860 m!920711))

(declare-fun m!920713 () Bool)

(assert (=> b!992860 m!920713))

(push 1)

(assert (not start!85344))

(assert (not b!992860))

(assert (not b!992859))

(assert (not b!992858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118327 () Bool)

(declare-fun lt!440372 () Bool)

(declare-fun content!465 (List!21025) (Set (_ BitVec 64)))

(assert (=> d!118327 (= lt!440372 (set.member e!29 (content!465 l!3519)))))

(declare-fun e!560280 () Bool)

(assert (=> d!118327 (= lt!440372 e!560280)))

(declare-fun res!663734 () Bool)

(assert (=> d!118327 (=> (not res!663734) (not e!560280))))

(assert (=> d!118327 (= res!663734 (is-Cons!21021 l!3519))))

(assert (=> d!118327 (= (contains!5782 l!3519 e!29) lt!440372)))

(declare-fun b!992887 () Bool)

(declare-fun e!560279 () Bool)

(assert (=> b!992887 (= e!560280 e!560279)))

(declare-fun res!663733 () Bool)

(assert (=> b!992887 (=> res!663733 e!560279)))

(assert (=> b!992887 (= res!663733 (= (h!22183 l!3519) e!29))))

(declare-fun b!992888 () Bool)

(assert (=> b!992888 (= e!560279 (contains!5782 (t!30034 l!3519) e!29))))

(assert (= (and d!118327 res!663734) b!992887))

(assert (= (and b!992887 (not res!663733)) b!992888))

(declare-fun m!920747 () Bool)

(assert (=> d!118327 m!920747))

(declare-fun m!920749 () Bool)

(assert (=> d!118327 m!920749))

(declare-fun m!920751 () Bool)

(assert (=> b!992888 m!920751))

(assert (=> start!85344 d!118327))

(declare-fun b!992925 () Bool)

(declare-fun e!560310 () List!21025)

(declare-fun e!560309 () List!21025)

(assert (=> b!992925 (= e!560310 e!560309)))

(declare-fun c!100726 () Bool)

(assert (=> b!992925 (= c!100726 (= e!29 (h!22183 l!3519)))))

(declare-fun d!118337 () Bool)

(declare-fun e!560307 () Bool)

(assert (=> d!118337 e!560307))

(declare-fun res!663747 () Bool)

(assert (=> d!118337 (=> (not res!663747) (not e!560307))))

(declare-fun lt!440383 () List!21025)

(declare-fun size!30681 (List!21025) Int)

(assert (=> d!118337 (= res!663747 (<= (size!30681 lt!440383) (size!30681 l!3519)))))

(assert (=> d!118337 (= lt!440383 e!560310)))

(declare-fun c!100724 () Bool)

(assert (=> d!118337 (= c!100724 (is-Cons!21021 l!3519))))

(assert (=> d!118337 (= (-!450 l!3519 e!29) lt!440383)))

(declare-fun b!992926 () Bool)

(assert (=> b!992926 (= e!560307 (= (content!465 lt!440383) (set.minus (content!465 l!3519) (set.insert e!29 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!992927 () Bool)

(declare-fun call!42126 () List!21025)

(assert (=> b!992927 (= e!560309 call!42126)))

(declare-fun b!992928 () Bool)

(assert (=> b!992928 (= e!560310 Nil!21022)))

(declare-fun bm!42123 () Bool)

(assert (=> bm!42123 (= call!42126 (-!450 (t!30034 l!3519) e!29))))

(declare-fun b!992929 () Bool)

(assert (=> b!992929 (= e!560309 (Cons!21021 (h!22183 l!3519) call!42126))))

(assert (= (and d!118337 c!100724) b!992925))

(assert (= (and d!118337 (not c!100724)) b!992928))

(assert (= (and b!992925 c!100726) b!992927))

(assert (= (and b!992925 (not c!100726)) b!992929))

(assert (= (or b!992927 b!992929) bm!42123))

(assert (= (and d!118337 res!663747) b!992926))

(declare-fun m!920765 () Bool)

(assert (=> d!118337 m!920765))

(declare-fun m!920767 () Bool)

(assert (=> d!118337 m!920767))

(declare-fun m!920769 () Bool)

(assert (=> b!992926 m!920769))

(assert (=> b!992926 m!920747))

(declare-fun m!920771 () Bool)

(assert (=> b!992926 m!920771))

(declare-fun m!920773 () Bool)

(assert (=> bm!42123 m!920773))

(assert (=> b!992860 d!118337))

(declare-fun b!992935 () Bool)

(declare-fun e!560316 () List!21025)

(declare-fun e!560315 () List!21025)

(assert (=> b!992935 (= e!560316 e!560315)))

(declare-fun c!100731 () Bool)

(assert (=> b!992935 (= c!100731 (= e!29 (h!22183 (_2!7555 lt!440347))))))

(declare-fun d!118343 () Bool)

(declare-fun e!560314 () Bool)

(assert (=> d!118343 e!560314))

(declare-fun res!663749 () Bool)

(assert (=> d!118343 (=> (not res!663749) (not e!560314))))

(declare-fun lt!440385 () List!21025)

(assert (=> d!118343 (= res!663749 (<= (size!30681 lt!440385) (size!30681 (_2!7555 lt!440347))))))

(assert (=> d!118343 (= lt!440385 e!560316)))

(declare-fun c!100730 () Bool)

(assert (=> d!118343 (= c!100730 (is-Cons!21021 (_2!7555 lt!440347)))))

(assert (=> d!118343 (= (-!450 (_2!7555 lt!440347) e!29) lt!440385)))

(declare-fun b!992936 () Bool)

(assert (=> b!992936 (= e!560314 (= (content!465 lt!440385) (set.minus (content!465 (_2!7555 lt!440347)) (set.insert e!29 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!992937 () Bool)

(declare-fun call!42130 () List!21025)

(assert (=> b!992937 (= e!560315 call!42130)))

(declare-fun b!992938 () Bool)

(assert (=> b!992938 (= e!560316 Nil!21022)))

(declare-fun bm!42127 () Bool)

(assert (=> bm!42127 (= call!42130 (-!450 (t!30034 (_2!7555 lt!440347)) e!29))))

(declare-fun b!992939 () Bool)

(assert (=> b!992939 (= e!560315 (Cons!21021 (h!22183 (_2!7555 lt!440347)) call!42130))))

(assert (= (and d!118343 c!100730) b!992935))

(assert (= (and d!118343 (not c!100730)) b!992938))

(assert (= (and b!992935 c!100731) b!992937))

(assert (= (and b!992935 (not c!100731)) b!992939))

(assert (= (or b!992937 b!992939) bm!42127))

(assert (= (and d!118343 res!663749) b!992936))

(declare-fun m!920785 () Bool)

(assert (=> d!118343 m!920785))

(declare-fun m!920787 () Bool)

(assert (=> d!118343 m!920787))

(declare-fun m!920789 () Bool)

(assert (=> b!992936 m!920789))

(declare-fun m!920791 () Bool)

(assert (=> b!992936 m!920791))

(assert (=> b!992936 m!920771))

(declare-fun m!920793 () Bool)

(assert (=> bm!42127 m!920793))

(assert (=> b!992860 d!118343))

(declare-fun d!118347 () Bool)

(assert (=> d!118347 (= (-!450 (_2!7555 lt!440347) e!29) (_2!7555 lt!440347))))

(declare-fun lt!440392 () Unit!32866)

(declare-fun choose!48 ((_ BitVec 64) List!21025) Unit!32866)

(assert (=> d!118347 (= lt!440392 (choose!48 e!29 (_2!7555 lt!440347)))))

(assert (=> d!118347 (not (contains!5782 (_2!7555 lt!440347) e!29))))

(assert (=> d!118347 (= (lemmaListMinusENotContainedEqualsList!0 e!29 (_2!7555 lt!440347)) lt!440392)))

(declare-fun bs!28247 () Bool)

(assert (= bs!28247 d!118347))

(assert (=> bs!28247 m!920711))

(declare-fun m!920815 () Bool)

(assert (=> bs!28247 m!920815))

(assert (=> bs!28247 m!920705))

(assert (=> b!992860 d!118347))

(declare-fun d!118353 () Bool)

(declare-fun lt!440394 () Bool)

(assert (=> d!118353 (= lt!440394 (set.member e!29 (content!465 (_2!7555 lt!440347))))))

(declare-fun e!560331 () Bool)

(assert (=> d!118353 (= lt!440394 e!560331)))

(declare-fun res!663756 () Bool)

(assert (=> d!118353 (=> (not res!663756) (not e!560331))))

(assert (=> d!118353 (= res!663756 (is-Cons!21021 (_2!7555 lt!440347)))))

(assert (=> d!118353 (= (contains!5782 (_2!7555 lt!440347) e!29) lt!440394)))

(declare-fun b!992957 () Bool)

(declare-fun e!560330 () Bool)

(assert (=> b!992957 (= e!560331 e!560330)))

(declare-fun res!663755 () Bool)

(assert (=> b!992957 (=> res!663755 e!560330)))

(assert (=> b!992957 (= res!663755 (= (h!22183 (_2!7555 lt!440347)) e!29))))

(declare-fun b!992958 () Bool)

(assert (=> b!992958 (= e!560330 (contains!5782 (t!30034 (_2!7555 lt!440347)) e!29))))

(assert (= (and d!118353 res!663756) b!992957))

(assert (= (and b!992957 (not res!663755)) b!992958))

(assert (=> d!118353 m!920791))

(declare-fun m!920817 () Bool)

(assert (=> d!118353 m!920817))

(declare-fun m!920823 () Bool)

(assert (=> b!992958 m!920823))

(assert (=> b!992859 d!118353))

(declare-fun d!118355 () Bool)

(assert (=> d!118355 (= (get!15734 lt!440349) (v!14382 lt!440349))))

(assert (=> b!992859 d!118355))

(declare-fun d!118363 () Bool)

(assert (=> d!118363 (= (isEmpty!767 lt!440349) (not (is-Some!557 lt!440349)))))

(assert (=> b!992858 d!118363))

(declare-fun d!118367 () Bool)

(assert (=> d!118367 (= (unapply!34 l!3519) (ite (is-Nil!21022 l!3519) None!556 (Some!557 (tuple2!15091 (h!22183 l!3519) (t!30034 l!3519)))))))

(assert (=> b!992858 d!118367))

(push 1)

(assert (not b!992888))

(assert (not d!118353))

(assert (not b!992926))

(assert (not bm!42123))

(assert (not b!992936))

(assert (not d!118327))

(assert (not b!992958))

(assert (not d!118343))

(assert (not d!118337))

(assert (not bm!42127))

(assert (not d!118347))

(check-sat)

