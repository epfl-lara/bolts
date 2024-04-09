; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115318 () Bool)

(assert start!115318)

(declare-fun res!908181 () Bool)

(declare-fun e!773839 () Bool)

(assert (=> start!115318 (=> (not res!908181) (not e!773839))))

(declare-datatypes ((List!32004 0))(
  ( (Nil!32001) (Cons!32000 (h!33209 (_ BitVec 64)) (t!46705 List!32004)) )
))
(declare-datatypes ((tuple2!24530 0))(
  ( (tuple2!24531 (_1!12275 (_ BitVec 64)) (_2!12275 List!32004)) )
))
(declare-datatypes ((Option!791 0))(
  ( (Some!790 (v!21587 tuple2!24530)) (None!789) )
))
(declare-fun lt!601028 () Option!791)

(declare-fun isEmpty!1116 (Option!791) Bool)

(assert (=> start!115318 (= res!908181 (not (isEmpty!1116 lt!601028)))))

(declare-fun l!3677 () List!32004)

(declare-fun unapply!56 (List!32004) Option!791)

(assert (=> start!115318 (= lt!601028 (unapply!56 l!3677))))

(assert (=> start!115318 e!773839))

(assert (=> start!115318 true))

(declare-fun b!1364462 () Bool)

(declare-fun ListPrimitiveSize!173 (List!32004) Int)

(declare-fun get!22744 (Option!791) tuple2!24530)

(assert (=> b!1364462 (= e!773839 (>= (ListPrimitiveSize!173 (_2!12275 (get!22744 lt!601028))) (ListPrimitiveSize!173 l!3677)))))

(assert (= (and start!115318 res!908181) b!1364462))

(declare-fun m!1249283 () Bool)

(assert (=> start!115318 m!1249283))

(declare-fun m!1249285 () Bool)

(assert (=> start!115318 m!1249285))

(declare-fun m!1249287 () Bool)

(assert (=> b!1364462 m!1249287))

(declare-fun m!1249289 () Bool)

(assert (=> b!1364462 m!1249289))

(declare-fun m!1249291 () Bool)

(assert (=> b!1364462 m!1249291))

(check-sat (not b!1364462) (not start!115318))
(check-sat)
(get-model)

(declare-fun d!146395 () Bool)

(declare-fun lt!601036 () Int)

(assert (=> d!146395 (>= lt!601036 0)))

(declare-fun e!773847 () Int)

(assert (=> d!146395 (= lt!601036 e!773847)))

(declare-fun c!127587 () Bool)

(get-info :version)

(assert (=> d!146395 (= c!127587 ((_ is Nil!32001) (_2!12275 (get!22744 lt!601028))))))

(assert (=> d!146395 (= (ListPrimitiveSize!173 (_2!12275 (get!22744 lt!601028))) lt!601036)))

(declare-fun b!1364474 () Bool)

(assert (=> b!1364474 (= e!773847 0)))

(declare-fun b!1364475 () Bool)

(assert (=> b!1364475 (= e!773847 (+ 1 (ListPrimitiveSize!173 (t!46705 (_2!12275 (get!22744 lt!601028))))))))

(assert (= (and d!146395 c!127587) b!1364474))

(assert (= (and d!146395 (not c!127587)) b!1364475))

(declare-fun m!1249303 () Bool)

(assert (=> b!1364475 m!1249303))

(assert (=> b!1364462 d!146395))

(declare-fun d!146405 () Bool)

(assert (=> d!146405 (= (get!22744 lt!601028) (v!21587 lt!601028))))

(assert (=> b!1364462 d!146405))

(declare-fun d!146407 () Bool)

(declare-fun lt!601040 () Int)

(assert (=> d!146407 (>= lt!601040 0)))

(declare-fun e!773851 () Int)

(assert (=> d!146407 (= lt!601040 e!773851)))

(declare-fun c!127591 () Bool)

(assert (=> d!146407 (= c!127591 ((_ is Nil!32001) l!3677))))

(assert (=> d!146407 (= (ListPrimitiveSize!173 l!3677) lt!601040)))

(declare-fun b!1364482 () Bool)

(assert (=> b!1364482 (= e!773851 0)))

(declare-fun b!1364483 () Bool)

(assert (=> b!1364483 (= e!773851 (+ 1 (ListPrimitiveSize!173 (t!46705 l!3677))))))

(assert (= (and d!146407 c!127591) b!1364482))

(assert (= (and d!146407 (not c!127591)) b!1364483))

(declare-fun m!1249307 () Bool)

(assert (=> b!1364483 m!1249307))

(assert (=> b!1364462 d!146407))

(declare-fun d!146411 () Bool)

(assert (=> d!146411 (= (isEmpty!1116 lt!601028) (not ((_ is Some!790) lt!601028)))))

(assert (=> start!115318 d!146411))

(declare-fun d!146415 () Bool)

(assert (=> d!146415 (= (unapply!56 l!3677) (ite ((_ is Nil!32001) l!3677) None!789 (Some!790 (tuple2!24531 (h!33209 l!3677) (t!46705 l!3677)))))))

(assert (=> start!115318 d!146415))

(check-sat (not b!1364475) (not b!1364483))
(check-sat)
