; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115316 () Bool)

(assert start!115316)

(declare-fun res!908178 () Bool)

(declare-fun e!773836 () Bool)

(assert (=> start!115316 (=> (not res!908178) (not e!773836))))

(declare-datatypes ((List!32003 0))(
  ( (Nil!32000) (Cons!31999 (h!33208 (_ BitVec 64)) (t!46704 List!32003)) )
))
(declare-datatypes ((tuple2!24528 0))(
  ( (tuple2!24529 (_1!12274 (_ BitVec 64)) (_2!12274 List!32003)) )
))
(declare-datatypes ((Option!790 0))(
  ( (Some!789 (v!21586 tuple2!24528)) (None!788) )
))
(declare-fun lt!601025 () Option!790)

(declare-fun isEmpty!1115 (Option!790) Bool)

(assert (=> start!115316 (= res!908178 (not (isEmpty!1115 lt!601025)))))

(declare-fun l!3677 () List!32003)

(declare-fun unapply!55 (List!32003) Option!790)

(assert (=> start!115316 (= lt!601025 (unapply!55 l!3677))))

(assert (=> start!115316 e!773836))

(assert (=> start!115316 true))

(declare-fun b!1364459 () Bool)

(declare-fun ListPrimitiveSize!172 (List!32003) Int)

(declare-fun get!22743 (Option!790) tuple2!24528)

(assert (=> b!1364459 (= e!773836 (>= (ListPrimitiveSize!172 (_2!12274 (get!22743 lt!601025))) (ListPrimitiveSize!172 l!3677)))))

(assert (= (and start!115316 res!908178) b!1364459))

(declare-fun m!1249273 () Bool)

(assert (=> start!115316 m!1249273))

(declare-fun m!1249275 () Bool)

(assert (=> start!115316 m!1249275))

(declare-fun m!1249277 () Bool)

(assert (=> b!1364459 m!1249277))

(declare-fun m!1249279 () Bool)

(assert (=> b!1364459 m!1249279))

(declare-fun m!1249281 () Bool)

(assert (=> b!1364459 m!1249281))

(push 1)

(assert (not start!115316))

(assert (not b!1364459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146397 () Bool)

(assert (=> d!146397 (= (isEmpty!1115 lt!601025) (not (is-Some!789 lt!601025)))))

(assert (=> start!115316 d!146397))

(declare-fun d!146399 () Bool)

(assert (=> d!146399 (= (unapply!55 l!3677) (ite (is-Nil!32000 l!3677) None!788 (Some!789 (tuple2!24529 (h!33208 l!3677) (t!46704 l!3677)))))))

(assert (=> start!115316 d!146399))

(declare-fun d!146403 () Bool)

(declare-fun lt!601042 () Int)

(assert (=> d!146403 (>= lt!601042 0)))

(declare-fun e!773853 () Int)

(assert (=> d!146403 (= lt!601042 e!773853)))

(declare-fun c!127593 () Bool)

(assert (=> d!146403 (= c!127593 (is-Nil!32000 (_2!12274 (get!22743 lt!601025))))))

(assert (=> d!146403 (= (ListPrimitiveSize!172 (_2!12274 (get!22743 lt!601025))) lt!601042)))

(declare-fun b!1364486 () Bool)

(assert (=> b!1364486 (= e!773853 0)))

(declare-fun b!1364487 () Bool)

(assert (=> b!1364487 (= e!773853 (+ 1 (ListPrimitiveSize!172 (t!46704 (_2!12274 (get!22743 lt!601025))))))))

(assert (= (and d!146403 c!127593) b!1364486))

(assert (= (and d!146403 (not c!127593)) b!1364487))

(declare-fun m!1249311 () Bool)

(assert (=> b!1364487 m!1249311))

(assert (=> b!1364459 d!146403))

(declare-fun d!146417 () Bool)

(assert (=> d!146417 (= (get!22743 lt!601025) (v!21586 lt!601025))))

(assert (=> b!1364459 d!146417))

(declare-fun d!146419 () Bool)

(declare-fun lt!601043 () Int)

(assert (=> d!146419 (>= lt!601043 0)))

(declare-fun e!773854 () Int)

(assert (=> d!146419 (= lt!601043 e!773854)))

(declare-fun c!127594 () Bool)

(assert (=> d!146419 (= c!127594 (is-Nil!32000 l!3677))))

(assert (=> d!146419 (= (ListPrimitiveSize!172 l!3677) lt!601043)))

(declare-fun b!1364488 () Bool)

(assert (=> b!1364488 (= e!773854 0)))

(declare-fun b!1364489 () Bool)

(assert (=> b!1364489 (= e!773854 (+ 1 (ListPrimitiveSize!172 (t!46704 l!3677))))))

(assert (= (and d!146419 c!127594) b!1364488))

(assert (= (and d!146419 (not c!127594)) b!1364489))

(declare-fun m!1249313 () Bool)

(assert (=> b!1364489 m!1249313))

(assert (=> b!1364459 d!146419))

(push 1)

