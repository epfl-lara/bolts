; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!85390 () Bool)

(assert start!85390)

(declare-fun res!663785 () Bool)

(declare-fun e!560345 () Bool)

(assert (=> start!85390 (=> (not res!663785) (not e!560345))))

(declare-datatypes ((List!21030 0))(
  ( (Nil!21027) (Cons!21026 (h!22188 (_ BitVec 64)) (t!30039 List!21030)) )
))
(declare-fun l!3519 () List!21030)

(declare-fun e!29 () (_ BitVec 64))

(declare-fun contains!5787 (List!21030 (_ BitVec 64)) Bool)

(assert (=> start!85390 (= res!663785 (not (contains!5787 l!3519 e!29)))))

(assert (=> start!85390 e!560345))

(assert (=> start!85390 true))

(declare-fun b!992987 () Bool)

(declare-fun res!663786 () Bool)

(assert (=> b!992987 (=> (not res!663786) (not e!560345))))

(declare-datatypes ((tuple2!15100 0))(
  ( (tuple2!15101 (_1!7560 (_ BitVec 64)) (_2!7560 List!21030)) )
))
(declare-datatypes ((Option!563 0))(
  ( (Some!562 (v!14390 tuple2!15100)) (None!561) )
))
(declare-fun isEmpty!772 (Option!563) Bool)

(declare-fun unapply!39 (List!21030) Option!563)

(assert (=> b!992987 (= res!663786 (isEmpty!772 (unapply!39 l!3519)))))

(declare-fun b!992988 () Bool)

(declare-fun res!663787 () Bool)

(assert (=> b!992988 (=> (not res!663787) (not e!560345))))

(assert (=> b!992988 (= res!663787 (is-Nil!21027 l!3519))))

(declare-fun b!992989 () Bool)

(declare-fun -!455 (List!21030 (_ BitVec 64)) List!21030)

(assert (=> b!992989 (= e!560345 (not (= (-!455 l!3519 e!29) l!3519)))))

(assert (= (and start!85390 res!663785) b!992987))

(assert (= (and b!992987 res!663786) b!992988))

(assert (= (and b!992988 res!663787) b!992989))

(declare-fun m!920859 () Bool)

(assert (=> start!85390 m!920859))

(declare-fun m!920861 () Bool)

(assert (=> b!992987 m!920861))

(assert (=> b!992987 m!920861))

(declare-fun m!920863 () Bool)

(assert (=> b!992987 m!920863))

(declare-fun m!920865 () Bool)

(assert (=> b!992989 m!920865))

(push 1)

(assert (not start!85390))

(assert (not b!992989))

(assert (not b!992987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!118381 () Bool)

(declare-fun lt!440409 () Bool)

(declare-fun content!470 (List!21030) (Set (_ BitVec 64)))

(assert (=> d!118381 (= lt!440409 (member e!29 (content!470 l!3519)))))

(declare-fun e!560362 () Bool)

(assert (=> d!118381 (= lt!440409 e!560362)))

(declare-fun res!663804 () Bool)

(assert (=> d!118381 (=> (not res!663804) (not e!560362))))

(assert (=> d!118381 (= res!663804 (is-Cons!21026 l!3519))))

(assert (=> d!118381 (= (contains!5787 l!3519 e!29) lt!440409)))

(declare-fun b!993006 () Bool)

(declare-fun e!560363 () Bool)

(assert (=> b!993006 (= e!560362 e!560363)))

(declare-fun res!663805 () Bool)

(assert (=> b!993006 (=> res!663805 e!560363)))

(assert (=> b!993006 (= res!663805 (= (h!22188 l!3519) e!29))))

(declare-fun b!993007 () Bool)

(assert (=> b!993007 (= e!560363 (contains!5787 (t!30039 l!3519) e!29))))

(assert (= (and d!118381 res!663804) b!993006))

(assert (= (and b!993006 (not res!663805)) b!993007))

(declare-fun m!920879 () Bool)

(assert (=> d!118381 m!920879))

(declare-fun m!920881 () Bool)

(assert (=> d!118381 m!920881))

(declare-fun m!920883 () Bool)

(assert (=> b!993007 m!920883))

(assert (=> start!85390 d!118381))

(declare-fun bm!42139 () Bool)

(declare-fun call!42142 () List!21030)

(assert (=> bm!42139 (= call!42142 (-!455 (t!30039 l!3519) e!29))))

(declare-fun b!993049 () Bool)

(declare-fun e!560392 () List!21030)

(assert (=> b!993049 (= e!560392 call!42142)))

(declare-fun lt!440418 () List!21030)

(declare-fun b!993050 () Bool)

(declare-fun e!560393 () Bool)

(assert (=> b!993050 (= e!560393 (= (content!470 lt!440418) (setminus (content!470 l!3519) (insert e!29 (as emptyset (Set (_ BitVec 64)))))))))

(declare-fun d!118387 () Bool)

(assert (=> d!118387 e!560393))

(declare-fun res!663814 () Bool)

(assert (=> d!118387 (=> (not res!663814) (not e!560393))))

(declare-fun size!30686 (List!21030) Int)

(assert (=> d!118387 (= res!663814 (<= (size!30686 lt!440418) (size!30686 l!3519)))))

(declare-fun e!560391 () List!21030)

(assert (=> d!118387 (= lt!440418 e!560391)))

(declare-fun c!100755 () Bool)

(assert (=> d!118387 (= c!100755 (is-Cons!21026 l!3519))))

(assert (=> d!118387 (= (-!455 l!3519 e!29) lt!440418)))

(declare-fun b!993048 () Bool)

(assert (=> b!993048 (= e!560391 Nil!21027)))

(declare-fun b!993051 () Bool)

(assert (=> b!993051 (= e!560392 (Cons!21026 (h!22188 l!3519) call!42142))))

(declare-fun b!993052 () Bool)

(assert (=> b!993052 (= e!560391 e!560392)))

(declare-fun c!100754 () Bool)

(assert (=> b!993052 (= c!100754 (= e!29 (h!22188 l!3519)))))

