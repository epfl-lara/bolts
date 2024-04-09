; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85444 () Bool)

(assert start!85444)

(declare-fun res!663875 () Bool)

(declare-fun e!560429 () Bool)

(assert (=> start!85444 (=> (not res!663875) (not e!560429))))

(declare-datatypes ((List!21036 0))(
  ( (Nil!21033) (Cons!21032 (h!22194 (_ BitVec 64)) (t!30045 List!21036)) )
))
(declare-fun l!3519 () List!21036)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5793 (List!21036 (_ BitVec 64)) Bool)

(assert (=> start!85444 (= res!663875 (not (contains!5793 l!3519 e!29)))))

(assert (=> start!85444 e!560429))

(assert (=> start!85444 true))

(declare-fun b!993113 () Bool)

(declare-fun res!663876 () Bool)

(assert (=> b!993113 (=> (not res!663876) (not e!560429))))

(declare-datatypes ((tuple2!15112 0))(
  ( (tuple2!15113 (_1!7566 (_ BitVec 64)) (_2!7566 List!21036)) )
))
(declare-datatypes ((Option!569 0))(
  ( (Some!568 (v!14402 tuple2!15112)) (None!567) )
))
(declare-fun isEmpty!778 (Option!569) Bool)

(declare-fun unapply!45 (List!21036) Option!569)

(assert (=> b!993113 (= res!663876 (isEmpty!778 (unapply!45 l!3519)))))

(declare-fun b!993114 () Bool)

(declare-fun res!663877 () Bool)

(assert (=> b!993114 (=> (not res!663877) (not e!560429))))

(assert (=> b!993114 (= res!663877 (not (is-Nil!21033 l!3519)))))

(declare-fun b!993115 () Bool)

(declare-fun -!458 (List!21036 (_ BitVec 64)) List!21036)

(assert (=> b!993115 (= e!560429 (not (= (-!458 l!3519 e!29) l!3519)))))

(assert (= (and start!85444 res!663875) b!993113))

(assert (= (and b!993113 res!663876) b!993114))

(assert (= (and b!993114 res!663877) b!993115))

(declare-fun m!920967 () Bool)

(assert (=> start!85444 m!920967))

(declare-fun m!920969 () Bool)

(assert (=> b!993113 m!920969))

(assert (=> b!993113 m!920969))

(declare-fun m!920971 () Bool)

(assert (=> b!993113 m!920971))

(declare-fun m!920973 () Bool)

(assert (=> b!993115 m!920973))

(push 1)

(assert (not b!993113))

(assert (not b!993115))

(assert (not start!85444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118423 () Bool)

(assert (=> d!118423 (= (isEmpty!778 (unapply!45 l!3519)) (not (is-Some!568 (unapply!45 l!3519))))))

(assert (=> b!993113 d!118423))

(declare-fun d!118429 () Bool)

(assert (=> d!118429 (= (unapply!45 l!3519) (ite (is-Nil!21033 l!3519) None!567 (Some!568 (tuple2!15113 (h!22194 l!3519) (t!30045 l!3519)))))))

(assert (=> b!993113 d!118429))

(declare-fun b!993151 () Bool)

(declare-fun e!560459 () List!21036)

(declare-fun call!42151 () List!21036)

(assert (=> b!993151 (= e!560459 (Cons!21032 (h!22194 l!3519) call!42151))))

(declare-fun d!118435 () Bool)

(declare-fun e!560458 () Bool)

(assert (=> d!118435 e!560458))

(declare-fun res!663886 () Bool)

(assert (=> d!118435 (=> (not res!663886) (not e!560458))))

(declare-fun lt!440436 () List!21036)

(declare-fun size!30688 (List!21036) Int)

(assert (=> d!118435 (= res!663886 (<= (size!30688 lt!440436) (size!30688 l!3519)))))

(declare-fun e!560457 () List!21036)

(assert (=> d!118435 (= lt!440436 e!560457)))

(declare-fun c!100772 () Bool)

(assert (=> d!118435 (= c!100772 (is-Cons!21032 l!3519))))

(assert (=> d!118435 (= (-!458 l!3519 e!29) lt!440436)))

(declare-fun b!993152 () Bool)

(assert (=> b!993152 (= e!560459 call!42151)))

(declare-fun bm!42147 () Bool)

(assert (=> bm!42147 (= call!42151 (-!458 (t!30045 l!3519) e!29))))

(declare-fun b!993154 () Bool)

(assert (=> b!993154 (= e!560457 Nil!21033)))

(declare-fun b!993156 () Bool)

(declare-fun content!476 (List!21036) (Set (_ BitVec 64)))

(assert (=> b!993156 (= e!560458 (= (content!476 lt!440436) (setminus (content!476 l!3519) (insert e!29 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun b!993157 () Bool)

(assert (=> b!993157 (= e!560457 e!560459)))

(declare-fun c!100773 () Bool)

(assert (=> b!993157 (= c!100773 (= e!29 (h!22194 l!3519)))))

(assert (= (and d!118435 c!100772) b!993157))

(assert (= (and d!118435 (not c!100772)) b!993154))

(assert (= (and b!993157 c!100773) b!993152))

(assert (= (and b!993157 (not c!100773)) b!993151))

(assert (= (or b!993152 b!993151) bm!42147))

(assert (= (and d!118435 res!663886) b!993156))

(declare-fun m!920977 () Bool)

(assert (=> d!118435 m!920977))

(declare-fun m!920983 () Bool)

(assert (=> d!118435 m!920983))

(declare-fun m!920989 () Bool)

(assert (=> bm!42147 m!920989))

(declare-fun m!920995 () Bool)

(assert (=> b!993156 m!920995))

(declare-fun m!921001 () Bool)

(assert (=> b!993156 m!921001))

(declare-fun m!921007 () Bool)

(assert (=> b!993156 m!921007))

(assert (=> b!993115 d!118435))

(declare-fun d!118443 () Bool)

(declare-fun lt!440443 () Bool)

(assert (=> d!118443 (= lt!440443 (member e!29 (content!476 l!3519)))))

(declare-fun e!560473 () Bool)

(assert (=> d!118443 (= lt!440443 e!560473)))

(declare-fun res!663900 () Bool)

(assert (=> d!118443 (=> (not res!663900) (not e!560473))))

(assert (=> d!118443 (= res!663900 (is-Cons!21032 l!3519))))

(assert (=> d!118443 (= (contains!5793 l!3519 e!29) lt!440443)))

(declare-fun b!993173 () Bool)

(declare-fun e!560472 () Bool)

(assert (=> b!993173 (= e!560473 e!560472)))

(declare-fun res!663899 () Bool)

(assert (=> b!993173 (=> res!663899 e!560472)))

(assert (=> b!993173 (= res!663899 (= (h!22194 l!3519) e!29))))

(declare-fun b!993174 () Bool)

(assert (=> b!993174 (= e!560472 (contains!5793 (t!30045 l!3519) e!29))))

(assert (= (and d!118443 res!663900) b!993173))

(assert (= (and b!993173 (not res!663899)) b!993174))

(assert (=> d!118443 m!921001))

(declare-fun m!921011 () Bool)

(assert (=> d!118443 m!921011))

(declare-fun m!921017 () Bool)

(assert (=> b!993174 m!921017))

(assert (=> start!85444 d!118443))

(push 1)

