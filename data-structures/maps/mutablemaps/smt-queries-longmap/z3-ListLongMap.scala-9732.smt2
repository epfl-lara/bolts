; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115306 () Bool)

(assert start!115306)

(declare-datatypes ((List!32001 0))(
  ( (Nil!31998) (Cons!31997 (h!33206 (_ BitVec 64)) (t!46702 List!32001)) )
))
(declare-fun l!3677 () List!32001)

(declare-fun ListPrimitiveSize!170 (List!32001) Int)

(assert (=> start!115306 (< (ListPrimitiveSize!170 l!3677) 0)))

(assert (=> start!115306 true))

(declare-fun bs!39135 () Bool)

(assert (= bs!39135 start!115306))

(declare-fun m!1249263 () Bool)

(assert (=> bs!39135 m!1249263))

(check-sat (not start!115306))
(check-sat)
(get-model)

(declare-fun d!146383 () Bool)

(declare-fun lt!601020 () Int)

(assert (=> d!146383 (>= lt!601020 0)))

(declare-fun e!773831 () Int)

(assert (=> d!146383 (= lt!601020 e!773831)))

(declare-fun c!127580 () Bool)

(get-info :version)

(assert (=> d!146383 (= c!127580 ((_ is Nil!31998) l!3677))))

(assert (=> d!146383 (= (ListPrimitiveSize!170 l!3677) lt!601020)))

(declare-fun b!1364451 () Bool)

(assert (=> b!1364451 (= e!773831 0)))

(declare-fun b!1364452 () Bool)

(assert (=> b!1364452 (= e!773831 (+ 1 (ListPrimitiveSize!170 (t!46702 l!3677))))))

(assert (= (and d!146383 c!127580) b!1364451))

(assert (= (and d!146383 (not c!127580)) b!1364452))

(declare-fun m!1249267 () Bool)

(assert (=> b!1364452 m!1249267))

(assert (=> start!115306 d!146383))

(check-sat (not b!1364452))
(check-sat)
