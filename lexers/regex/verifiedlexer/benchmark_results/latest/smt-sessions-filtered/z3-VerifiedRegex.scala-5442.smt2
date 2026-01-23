; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!276348 () Bool)

(assert start!276348)

(declare-fun res!1182110 () Bool)

(declare-fun e!1800137 () Bool)

(assert (=> start!276348 (=> (not res!1182110) (not e!1800137))))

(declare-fun i!849 () Int)

(assert (=> start!276348 (= res!1182110 (>= i!849 0))))

(assert (=> start!276348 e!1800137))

(assert (=> start!276348 true))

(declare-fun e!1800136 () Bool)

(assert (=> start!276348 e!1800136))

(declare-fun b!2841390 () Bool)

(declare-fun res!1182109 () Bool)

(assert (=> b!2841390 (=> (not res!1182109) (not e!1800137))))

(declare-datatypes ((B!2521 0))(
  ( (B!2522 (val!10564 Int)) )
))
(declare-datatypes ((List!33776 0))(
  ( (Nil!33652) (Cons!33652 (h!39072 B!2521) (t!232621 List!33776)) )
))
(declare-fun l!2988 () List!33776)

(declare-fun size!26121 (List!33776) Int)

(assert (=> b!2841390 (= res!1182109 (<= i!849 (size!26121 l!2988)))))

(declare-fun b!2841391 () Bool)

(declare-fun ListPrimitiveSize!231 (List!33776) Int)

(assert (=> b!2841391 (= e!1800137 (< (ListPrimitiveSize!231 l!2988) 0))))

(declare-fun b!2841392 () Bool)

(declare-fun tp_is_empty!14651 () Bool)

(declare-fun tp!910284 () Bool)

(assert (=> b!2841392 (= e!1800136 (and tp_is_empty!14651 tp!910284))))

(assert (= (and start!276348 res!1182110) b!2841390))

(assert (= (and b!2841390 res!1182109) b!2841391))

(get-info :version)

(assert (= (and start!276348 ((_ is Cons!33652) l!2988)) b!2841392))

(declare-fun m!3269415 () Bool)

(assert (=> b!2841390 m!3269415))

(declare-fun m!3269417 () Bool)

(assert (=> b!2841391 m!3269417))

(check-sat (not b!2841391) (not b!2841390) (not b!2841392) tp_is_empty!14651)
(check-sat)
(get-model)

(declare-fun d!823869 () Bool)

(declare-fun lt!1011628 () Int)

(assert (=> d!823869 (>= lt!1011628 0)))

(declare-fun e!1800140 () Int)

(assert (=> d!823869 (= lt!1011628 e!1800140)))

(declare-fun c!458660 () Bool)

(assert (=> d!823869 (= c!458660 ((_ is Nil!33652) l!2988))))

(assert (=> d!823869 (= (ListPrimitiveSize!231 l!2988) lt!1011628)))

(declare-fun b!2841397 () Bool)

(assert (=> b!2841397 (= e!1800140 0)))

(declare-fun b!2841398 () Bool)

(assert (=> b!2841398 (= e!1800140 (+ 1 (ListPrimitiveSize!231 (t!232621 l!2988))))))

(assert (= (and d!823869 c!458660) b!2841397))

(assert (= (and d!823869 (not c!458660)) b!2841398))

(declare-fun m!3269419 () Bool)

(assert (=> b!2841398 m!3269419))

(assert (=> b!2841391 d!823869))

(declare-fun d!823873 () Bool)

(declare-fun lt!1011634 () Int)

(assert (=> d!823873 (>= lt!1011634 0)))

(declare-fun e!1800146 () Int)

(assert (=> d!823873 (= lt!1011634 e!1800146)))

(declare-fun c!458666 () Bool)

(assert (=> d!823873 (= c!458666 ((_ is Nil!33652) l!2988))))

(assert (=> d!823873 (= (size!26121 l!2988) lt!1011634)))

(declare-fun b!2841409 () Bool)

(assert (=> b!2841409 (= e!1800146 0)))

(declare-fun b!2841410 () Bool)

(assert (=> b!2841410 (= e!1800146 (+ 1 (size!26121 (t!232621 l!2988))))))

(assert (= (and d!823873 c!458666) b!2841409))

(assert (= (and d!823873 (not c!458666)) b!2841410))

(declare-fun m!3269423 () Bool)

(assert (=> b!2841410 m!3269423))

(assert (=> b!2841390 d!823873))

(declare-fun b!2841419 () Bool)

(declare-fun e!1800151 () Bool)

(declare-fun tp!910287 () Bool)

(assert (=> b!2841419 (= e!1800151 (and tp_is_empty!14651 tp!910287))))

(assert (=> b!2841392 (= tp!910284 e!1800151)))

(assert (= (and b!2841392 ((_ is Cons!33652) (t!232621 l!2988))) b!2841419))

(check-sat (not b!2841410) (not b!2841398) (not b!2841419) tp_is_empty!14651)
(check-sat)
