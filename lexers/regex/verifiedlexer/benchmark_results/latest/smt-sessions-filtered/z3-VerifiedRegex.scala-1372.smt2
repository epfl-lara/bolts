; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73232 () Bool)

(assert start!73232)

(declare-fun res!378704 () Bool)

(declare-fun e!542031 () Bool)

(assert (=> start!73232 (=> (not res!378704) (not e!542031))))

(declare-datatypes ((B!1201 0))(
  ( (B!1202 (val!2558 Int)) )
))
(declare-datatypes ((List!8829 0))(
  ( (Nil!8813) (Cons!8813 (h!14214 B!1201) (t!92941 List!8829)) )
))
(declare-fun l1!1535 () List!8829)

(declare-fun b!25421 () B!1201)

(get-info :version)

(assert (=> start!73232 (= res!378704 (and (or (not ((_ is Cons!8813) l1!1535)) (not (= (h!14214 l1!1535) b!25421))) ((_ is Cons!8813) l1!1535)))))

(assert (=> start!73232 e!542031))

(declare-fun e!542032 () Bool)

(assert (=> start!73232 e!542032))

(declare-fun tp_is_empty!3773 () Bool)

(assert (=> start!73232 tp_is_empty!3773))

(declare-fun b!820431 () Bool)

(declare-fun ListPrimitiveSize!58 (List!8829) Int)

(assert (=> b!820431 (= e!542031 (>= (ListPrimitiveSize!58 (t!92941 l1!1535)) (ListPrimitiveSize!58 l1!1535)))))

(declare-fun b!820432 () Bool)

(declare-fun tp!256554 () Bool)

(assert (=> b!820432 (= e!542032 (and tp_is_empty!3773 tp!256554))))

(assert (= (and start!73232 res!378704) b!820431))

(assert (= (and start!73232 ((_ is Cons!8813) l1!1535)) b!820432))

(declare-fun m!1061431 () Bool)

(assert (=> b!820431 m!1061431))

(declare-fun m!1061433 () Bool)

(assert (=> b!820431 m!1061433))

(check-sat (not b!820431) (not b!820432) tp_is_empty!3773)
(check-sat)
(get-model)

(declare-fun d!258373 () Bool)

(declare-fun lt!317060 () Int)

(assert (=> d!258373 (>= lt!317060 0)))

(declare-fun e!542042 () Int)

(assert (=> d!258373 (= lt!317060 e!542042)))

(declare-fun c!132943 () Bool)

(assert (=> d!258373 (= c!132943 ((_ is Nil!8813) (t!92941 l1!1535)))))

(assert (=> d!258373 (= (ListPrimitiveSize!58 (t!92941 l1!1535)) lt!317060)))

(declare-fun b!820450 () Bool)

(assert (=> b!820450 (= e!542042 0)))

(declare-fun b!820451 () Bool)

(assert (=> b!820451 (= e!542042 (+ 1 (ListPrimitiveSize!58 (t!92941 (t!92941 l1!1535)))))))

(assert (= (and d!258373 c!132943) b!820450))

(assert (= (and d!258373 (not c!132943)) b!820451))

(declare-fun m!1061437 () Bool)

(assert (=> b!820451 m!1061437))

(assert (=> b!820431 d!258373))

(declare-fun d!258377 () Bool)

(declare-fun lt!317061 () Int)

(assert (=> d!258377 (>= lt!317061 0)))

(declare-fun e!542043 () Int)

(assert (=> d!258377 (= lt!317061 e!542043)))

(declare-fun c!132944 () Bool)

(assert (=> d!258377 (= c!132944 ((_ is Nil!8813) l1!1535))))

(assert (=> d!258377 (= (ListPrimitiveSize!58 l1!1535) lt!317061)))

(declare-fun b!820452 () Bool)

(assert (=> b!820452 (= e!542043 0)))

(declare-fun b!820453 () Bool)

(assert (=> b!820453 (= e!542043 (+ 1 (ListPrimitiveSize!58 (t!92941 l1!1535))))))

(assert (= (and d!258377 c!132944) b!820452))

(assert (= (and d!258377 (not c!132944)) b!820453))

(assert (=> b!820453 m!1061431))

(assert (=> b!820431 d!258377))

(declare-fun b!820458 () Bool)

(declare-fun e!542046 () Bool)

(declare-fun tp!256560 () Bool)

(assert (=> b!820458 (= e!542046 (and tp_is_empty!3773 tp!256560))))

(assert (=> b!820432 (= tp!256554 e!542046)))

(assert (= (and b!820432 ((_ is Cons!8813) (t!92941 l1!1535))) b!820458))

(check-sat (not b!820453) (not b!820451) (not b!820458) tp_is_empty!3773)
(check-sat)
