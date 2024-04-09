; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115234 () Bool)

(assert start!115234)

(declare-fun res!908154 () Bool)

(declare-fun e!773803 () Bool)

(assert (=> start!115234 (=> (not res!908154) (not e!773803))))

(declare-datatypes ((List!31992 0))(
  ( (Nil!31989) (Cons!31988 (h!33197 (_ BitVec 64)) (t!46693 List!31992)) )
))
(declare-datatypes ((tuple2!24512 0))(
  ( (tuple2!24513 (_1!12266 (_ BitVec 64)) (_2!12266 List!31992)) )
))
(declare-datatypes ((Option!782 0))(
  ( (Some!781 (v!21578 tuple2!24512)) (None!780) )
))
(declare-fun lt!600992 () Option!782)

(declare-fun isEmpty!1107 (Option!782) Bool)

(assert (=> start!115234 (= res!908154 (not (isEmpty!1107 lt!600992)))))

(declare-fun l!3677 () List!31992)

(declare-fun unapply!47 (List!31992) Option!782)

(assert (=> start!115234 (= lt!600992 (unapply!47 l!3677))))

(assert (=> start!115234 e!773803))

(assert (=> start!115234 true))

(declare-fun b!1364417 () Bool)

(declare-fun isDefined!534 (Option!782) Bool)

(assert (=> b!1364417 (= e!773803 (not (isDefined!534 lt!600992)))))

(assert (= (and start!115234 res!908154) b!1364417))

(declare-fun m!1249213 () Bool)

(assert (=> start!115234 m!1249213))

(declare-fun m!1249215 () Bool)

(assert (=> start!115234 m!1249215))

(declare-fun m!1249217 () Bool)

(assert (=> b!1364417 m!1249217))

(check-sat (not start!115234) (not b!1364417))
(check-sat)
(get-model)

(declare-fun d!146325 () Bool)

(get-info :version)

(assert (=> d!146325 (= (isEmpty!1107 lt!600992) (not ((_ is Some!781) lt!600992)))))

(assert (=> start!115234 d!146325))

(declare-fun d!146331 () Bool)

(assert (=> d!146331 (= (unapply!47 l!3677) (ite ((_ is Nil!31989) l!3677) None!780 (Some!781 (tuple2!24513 (h!33197 l!3677) (t!46693 l!3677)))))))

(assert (=> start!115234 d!146331))

(declare-fun d!146337 () Bool)

(assert (=> d!146337 (= (isDefined!534 lt!600992) (not (isEmpty!1107 lt!600992)))))

(declare-fun bs!39117 () Bool)

(assert (= bs!39117 d!146337))

(assert (=> bs!39117 m!1249213))

(assert (=> b!1364417 d!146337))

(check-sat (not d!146337))
(check-sat)
