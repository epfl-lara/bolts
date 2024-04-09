; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85386 () Bool)

(assert start!85386)

(declare-fun res!663767 () Bool)

(declare-fun e!560339 () Bool)

(assert (=> start!85386 (=> (not res!663767) (not e!560339))))

(declare-datatypes ((List!21028 0))(
  ( (Nil!21025) (Cons!21024 (h!22186 (_ BitVec 64)) (t!30037 List!21028)) )
))
(declare-fun l!3519 () List!21028)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5785 (List!21028 (_ BitVec 64)) Bool)

(assert (=> start!85386 (= res!663767 (not (contains!5785 l!3519 e!29)))))

(assert (=> start!85386 e!560339))

(assert (=> start!85386 true))

(declare-fun b!992969 () Bool)

(declare-fun res!663768 () Bool)

(assert (=> b!992969 (=> (not res!663768) (not e!560339))))

(declare-datatypes ((tuple2!15096 0))(
  ( (tuple2!15097 (_1!7558 (_ BitVec 64)) (_2!7558 List!21028)) )
))
(declare-datatypes ((Option!561 0))(
  ( (Some!560 (v!14388 tuple2!15096)) (None!559) )
))
(declare-fun isEmpty!770 (Option!561) Bool)

(declare-fun unapply!37 (List!21028) Option!561)

(assert (=> b!992969 (= res!663768 (isEmpty!770 (unapply!37 l!3519)))))

(declare-fun b!992970 () Bool)

(declare-fun res!663769 () Bool)

(assert (=> b!992970 (=> (not res!663769) (not e!560339))))

(assert (=> b!992970 (= res!663769 (is-Nil!21025 l!3519))))

(declare-fun b!992971 () Bool)

(declare-fun -!453 (List!21028 (_ BitVec 64)) List!21028)

(assert (=> b!992971 (= e!560339 (not (= (-!453 l!3519 e!29) l!3519)))))

(assert (= (and start!85386 res!663767) b!992969))

(assert (= (and b!992969 res!663768) b!992970))

(assert (= (and b!992970 res!663769) b!992971))

(declare-fun m!920843 () Bool)

(assert (=> start!85386 m!920843))

(declare-fun m!920845 () Bool)

(assert (=> b!992969 m!920845))

(assert (=> b!992969 m!920845))

(declare-fun m!920847 () Bool)

(assert (=> b!992969 m!920847))

(declare-fun m!920849 () Bool)

(assert (=> b!992971 m!920849))

(push 1)

(assert (not start!85386))

(assert (not b!992971))

(assert (not b!992969))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118378 () Bool)

(declare-fun lt!440407 () Bool)

(declare-fun content!468 (List!21028) (Set (_ BitVec 64)))

(assert (=> d!118378 (= lt!440407 (set.member e!29 (content!468 l!3519)))))

(declare-fun e!560359 () Bool)

(assert (=> d!118378 (= lt!440407 e!560359)))

(declare-fun res!663801 () Bool)

(assert (=> d!118378 (=> (not res!663801) (not e!560359))))

(assert (=> d!118378 (= res!663801 (is-Cons!21024 l!3519))))

(assert (=> d!118378 (= (contains!5785 l!3519 e!29) lt!440407)))

(declare-fun b!993002 () Bool)

(declare-fun e!560358 () Bool)

(assert (=> b!993002 (= e!560359 e!560358)))

(declare-fun res!663800 () Bool)

(assert (=> b!993002 (=> res!663800 e!560358)))

(assert (=> b!993002 (= res!663800 (= (h!22186 l!3519) e!29))))

(declare-fun b!993003 () Bool)

(assert (=> b!993003 (= e!560358 (contains!5785 (t!30037 l!3519) e!29))))

(assert (= (and d!118378 res!663801) b!993002))

(assert (= (and b!993002 (not res!663800)) b!993003))

(declare-fun m!920867 () Bool)

(assert (=> d!118378 m!920867))

(declare-fun m!920871 () Bool)

(assert (=> d!118378 m!920871))

(declare-fun m!920875 () Bool)

(assert (=> b!993003 m!920875))

(assert (=> start!85386 d!118378))

(declare-fun d!118383 () Bool)

(declare-fun e!560390 () Bool)

(assert (=> d!118383 e!560390))

(declare-fun res!663813 () Bool)

(assert (=> d!118383 (=> (not res!663813) (not e!560390))))

(declare-fun lt!440417 () List!21028)

(declare-fun size!30685 (List!21028) Int)

(assert (=> d!118383 (= res!663813 (<= (size!30685 lt!440417) (size!30685 l!3519)))))

(declare-fun e!560388 () List!21028)

(assert (=> d!118383 (= lt!440417 e!560388)))

(declare-fun c!100752 () Bool)

(assert (=> d!118383 (= c!100752 (is-Cons!21024 l!3519))))

(assert (=> d!118383 (= (-!453 l!3519 e!29) lt!440417)))

(declare-fun bm!42138 () Bool)

(declare-fun call!42141 () List!21028)

(assert (=> bm!42138 (= call!42141 (-!453 (t!30037 l!3519) e!29))))

(declare-fun b!993043 () Bool)

(declare-fun e!560389 () List!21028)

(assert (=> b!993043 (= e!560389 (Cons!21024 (h!22186 l!3519) call!42141))))

(declare-fun b!993044 () Bool)

(assert (=> b!993044 (= e!560388 e!560389)))

(declare-fun c!100753 () Bool)

(assert (=> b!993044 (= c!100753 (= e!29 (h!22186 l!3519)))))

(declare-fun b!993045 () Bool)

(assert (=> b!993045 (= e!560389 call!42141)))

(declare-fun b!993046 () Bool)

(assert (=> b!993046 (= e!560390 (= (content!468 lt!440417) (set.minus (content!468 l!3519) (set.insert e!29 (as set.empty (Set (_ BitVec 64)))))))))

(declare-fun b!993047 () Bool)

(assert (=> b!993047 (= e!560388 Nil!21025)))

(assert (= (and d!118383 c!100752) b!993044))

(assert (= (and d!118383 (not c!100752)) b!993047))

(assert (= (and b!993044 c!100753) b!993045))

(assert (= (and b!993044 (not c!100753)) b!993043))

(assert (= (or b!993045 b!993043) bm!42138))

(assert (= (and d!118383 res!663813) b!993046))

(declare-fun m!920889 () Bool)

(assert (=> d!118383 m!920889))

(declare-fun m!920893 () Bool)

(assert (=> d!118383 m!920893))

(declare-fun m!920895 () Bool)

(assert (=> bm!42138 m!920895))

(declare-fun m!920899 () Bool)

(assert (=> b!993046 m!920899))

(assert (=> b!993046 m!920867))

(declare-fun m!920905 () Bool)

(assert (=> b!993046 m!920905))

(assert (=> b!992971 d!118383))

(declare-fun d!118391 () Bool)

(assert (=> d!118391 (= (isEmpty!770 (unapply!37 l!3519)) (not (is-Some!560 (unapply!37 l!3519))))))

(assert (=> b!992969 d!118391))

(declare-fun d!118397 () Bool)

(assert (=> d!118397 (= (unapply!37 l!3519) (ite (is-Nil!21025 l!3519) None!559 (Some!560 (tuple2!15097 (h!22186 l!3519) (t!30037 l!3519)))))))

(assert (=> b!992969 d!118397))

(push 1)

