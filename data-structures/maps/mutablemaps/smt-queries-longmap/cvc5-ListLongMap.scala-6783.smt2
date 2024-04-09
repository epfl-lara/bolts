; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85440 () Bool)

(assert start!85440)

(declare-fun res!663857 () Bool)

(declare-fun e!560423 () Bool)

(assert (=> start!85440 (=> (not res!663857) (not e!560423))))

(declare-datatypes ((List!21034 0))(
  ( (Nil!21031) (Cons!21030 (h!22192 (_ BitVec 64)) (t!30043 List!21034)) )
))
(declare-fun l!3519 () List!21034)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5791 (List!21034 (_ BitVec 64)) Bool)

(assert (=> start!85440 (= res!663857 (not (contains!5791 l!3519 e!29)))))

(assert (=> start!85440 e!560423))

(assert (=> start!85440 true))

(declare-fun b!993095 () Bool)

(declare-fun res!663858 () Bool)

(assert (=> b!993095 (=> (not res!663858) (not e!560423))))

(declare-datatypes ((tuple2!15108 0))(
  ( (tuple2!15109 (_1!7564 (_ BitVec 64)) (_2!7564 List!21034)) )
))
(declare-datatypes ((Option!567 0))(
  ( (Some!566 (v!14400 tuple2!15108)) (None!565) )
))
(declare-fun isEmpty!776 (Option!567) Bool)

(declare-fun unapply!43 (List!21034) Option!567)

(assert (=> b!993095 (= res!663858 (isEmpty!776 (unapply!43 l!3519)))))

(declare-fun b!993096 () Bool)

(declare-fun res!663859 () Bool)

(assert (=> b!993096 (=> (not res!663859) (not e!560423))))

(assert (=> b!993096 (= res!663859 (not (is-Nil!21031 l!3519)))))

(declare-fun b!993097 () Bool)

(declare-fun -!456 (List!21034 (_ BitVec 64)) List!21034)

(assert (=> b!993097 (= e!560423 (not (= (-!456 l!3519 e!29) l!3519)))))

(assert (= (and start!85440 res!663857) b!993095))

(assert (= (and b!993095 res!663858) b!993096))

(assert (= (and b!993096 res!663859) b!993097))

(declare-fun m!920951 () Bool)

(assert (=> start!85440 m!920951))

(declare-fun m!920953 () Bool)

(assert (=> b!993095 m!920953))

(assert (=> b!993095 m!920953))

(declare-fun m!920955 () Bool)

(assert (=> b!993095 m!920955))

(declare-fun m!920957 () Bool)

(assert (=> b!993097 m!920957))

(push 1)

(assert (not b!993095))

(assert (not b!993097))

(assert (not start!85440))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118425 () Bool)

(assert (=> d!118425 (= (isEmpty!776 (unapply!43 l!3519)) (not (is-Some!566 (unapply!43 l!3519))))))

(assert (=> b!993095 d!118425))

(declare-fun d!118431 () Bool)

(assert (=> d!118431 (= (unapply!43 l!3519) (ite (is-Nil!21031 l!3519) None!565 (Some!566 (tuple2!15109 (h!22192 l!3519) (t!30043 l!3519)))))))

(assert (=> b!993095 d!118431))

(declare-fun b!993153 () Bool)

(declare-fun e!560454 () List!21034)

(assert (=> b!993153 (= e!560454 Nil!21031)))

(declare-fun d!118437 () Bool)

(declare-fun e!560452 () Bool)

(assert (=> d!118437 e!560452))

(declare-fun res!663885 () Bool)

(assert (=> d!118437 (=> (not res!663885) (not e!560452))))

(declare-fun lt!440435 () List!21034)

(declare-fun size!30687 (List!21034) Int)

(assert (=> d!118437 (= res!663885 (<= (size!30687 lt!440435) (size!30687 l!3519)))))

(assert (=> d!118437 (= lt!440435 e!560454)))

(declare-fun c!100771 () Bool)

(assert (=> d!118437 (= c!100771 (is-Cons!21030 l!3519))))

(assert (=> d!118437 (= (-!456 l!3519 e!29) lt!440435)))

(declare-fun b!993155 () Bool)

(declare-fun e!560456 () List!21034)

(declare-fun call!42150 () List!21034)

(assert (=> b!993155 (= e!560456 (Cons!21030 (h!22192 l!3519) call!42150))))

(declare-fun bm!42148 () Bool)

(assert (=> bm!42148 (= call!42150 (-!456 (t!30043 l!3519) e!29))))

(declare-fun b!993158 () Bool)

(declare-fun content!474 (List!21034) (Set (_ BitVec 64)))

(assert (=> b!993158 (= e!560452 (= (content!474 lt!440435) (set.minus (content!474 l!3519) (set.insert e!29 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!993159 () Bool)

(assert (=> b!993159 (= e!560454 e!560456)))

(declare-fun c!100770 () Bool)

(assert (=> b!993159 (= c!100770 (= e!29 (h!22192 l!3519)))))

(declare-fun b!993160 () Bool)

(assert (=> b!993160 (= e!560456 call!42150)))

(assert (= (and d!118437 c!100771) b!993159))

(assert (= (and d!118437 (not c!100771)) b!993153))

(assert (= (and b!993159 c!100770) b!993160))

(assert (= (and b!993159 (not c!100770)) b!993155))

(assert (= (or b!993160 b!993155) bm!42148))

(assert (= (and d!118437 res!663885) b!993158))

(declare-fun m!920979 () Bool)

(assert (=> d!118437 m!920979))

(declare-fun m!920985 () Bool)

(assert (=> d!118437 m!920985))

(declare-fun m!920993 () Bool)

(assert (=> bm!42148 m!920993))

(declare-fun m!920999 () Bool)

(assert (=> b!993158 m!920999))

(declare-fun m!921003 () Bool)

(assert (=> b!993158 m!921003))

(declare-fun m!921009 () Bool)

(assert (=> b!993158 m!921009))

(assert (=> b!993097 d!118437))

(declare-fun d!118445 () Bool)

(declare-fun lt!440444 () Bool)

(assert (=> d!118445 (= lt!440444 (set.member e!29 (content!474 l!3519)))))

(declare-fun e!560474 () Bool)

(assert (=> d!118445 (= lt!440444 e!560474)))

(declare-fun res!663902 () Bool)

(assert (=> d!118445 (=> (not res!663902) (not e!560474))))

(assert (=> d!118445 (= res!663902 (is-Cons!21030 l!3519))))

(assert (=> d!118445 (= (contains!5791 l!3519 e!29) lt!440444)))

(declare-fun b!993175 () Bool)

(declare-fun e!560476 () Bool)

(assert (=> b!993175 (= e!560474 e!560476)))

(declare-fun res!663903 () Bool)

(assert (=> b!993175 (=> res!663903 e!560476)))

(assert (=> b!993175 (= res!663903 (= (h!22192 l!3519) e!29))))

(declare-fun b!993177 () Bool)

(assert (=> b!993177 (= e!560476 (contains!5791 (t!30043 l!3519) e!29))))

(assert (= (and d!118445 res!663902) b!993175))

(assert (= (and b!993175 (not res!663903)) b!993177))

(assert (=> d!118445 m!921003))

(declare-fun m!921014 () Bool)

(assert (=> d!118445 m!921014))

(declare-fun m!921019 () Bool)

(assert (=> b!993177 m!921019))

(assert (=> start!85440 d!118445))

(push 1)

