; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87536 () Bool)

(assert start!87536)

(declare-fun res!680397 () Bool)

(declare-fun e!570001 () Bool)

(assert (=> start!87536 (=> (not res!680397) (not e!570001))))

(declare-datatypes ((B!1398 0))(
  ( (B!1399 (val!11783 Int)) )
))
(declare-datatypes ((tuple2!15202 0))(
  ( (tuple2!15203 (_1!7611 (_ BitVec 64)) (_2!7611 B!1398)) )
))
(declare-datatypes ((List!21516 0))(
  ( (Nil!21513) (Cons!21512 (h!22710 tuple2!15202) (t!30525 List!21516)) )
))
(declare-fun l!412 () List!21516)

(declare-fun isStrictlySorted!553 (List!21516) Bool)

(assert (=> start!87536 (= res!680397 (isStrictlySorted!553 l!412))))

(assert (=> start!87536 e!570001))

(declare-fun e!570002 () Bool)

(assert (=> start!87536 e!570002))

(declare-fun tp_is_empty!23465 () Bool)

(assert (=> start!87536 tp_is_empty!23465))

(declare-fun b!1013189 () Bool)

(declare-fun res!680398 () Bool)

(assert (=> b!1013189 (=> (not res!680398) (not e!570001))))

(declare-fun value!115 () B!1398)

(assert (=> b!1013189 (= res!680398 (and (is-Cons!21512 l!412) (= (_2!7611 (h!22710 l!412)) value!115)))))

(declare-fun b!1013190 () Bool)

(declare-fun ListPrimitiveSize!102 (List!21516) Int)

(assert (=> b!1013190 (= e!570001 (>= (ListPrimitiveSize!102 (t!30525 l!412)) (ListPrimitiveSize!102 l!412)))))

(declare-fun b!1013191 () Bool)

(declare-fun tp!70416 () Bool)

(assert (=> b!1013191 (= e!570002 (and tp_is_empty!23465 tp!70416))))

(assert (= (and start!87536 res!680397) b!1013189))

(assert (= (and b!1013189 res!680398) b!1013190))

(assert (= (and start!87536 (is-Cons!21512 l!412)) b!1013191))

(declare-fun m!936453 () Bool)

(assert (=> start!87536 m!936453))

(declare-fun m!936455 () Bool)

(assert (=> b!1013190 m!936455))

(declare-fun m!936457 () Bool)

(assert (=> b!1013190 m!936457))

(push 1)

(assert (not b!1013190))

(assert (not start!87536))

(assert (not b!1013191))

(assert tp_is_empty!23465)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120387 () Bool)

(declare-fun lt!447875 () Int)

(assert (=> d!120387 (>= lt!447875 0)))

(declare-fun e!570013 () Int)

(assert (=> d!120387 (= lt!447875 e!570013)))

(declare-fun c!102374 () Bool)

(assert (=> d!120387 (= c!102374 (is-Nil!21513 (t!30525 l!412)))))

(assert (=> d!120387 (= (ListPrimitiveSize!102 (t!30525 l!412)) lt!447875)))

(declare-fun b!1013212 () Bool)

(assert (=> b!1013212 (= e!570013 0)))

(declare-fun b!1013213 () Bool)

(assert (=> b!1013213 (= e!570013 (+ 1 (ListPrimitiveSize!102 (t!30525 (t!30525 l!412)))))))

(assert (= (and d!120387 c!102374) b!1013212))

(assert (= (and d!120387 (not c!102374)) b!1013213))

(declare-fun m!936463 () Bool)

(assert (=> b!1013213 m!936463))

(assert (=> b!1013190 d!120387))

(declare-fun d!120397 () Bool)

(declare-fun lt!447876 () Int)

(assert (=> d!120397 (>= lt!447876 0)))

(declare-fun e!570014 () Int)

(assert (=> d!120397 (= lt!447876 e!570014)))

(declare-fun c!102375 () Bool)

(assert (=> d!120397 (= c!102375 (is-Nil!21513 l!412))))

(assert (=> d!120397 (= (ListPrimitiveSize!102 l!412) lt!447876)))

(declare-fun b!1013214 () Bool)

(assert (=> b!1013214 (= e!570014 0)))

(declare-fun b!1013215 () Bool)

(assert (=> b!1013215 (= e!570014 (+ 1 (ListPrimitiveSize!102 (t!30525 l!412))))))

(assert (= (and d!120397 c!102375) b!1013214))

(assert (= (and d!120397 (not c!102375)) b!1013215))

(assert (=> b!1013215 m!936455))

(assert (=> b!1013190 d!120397))

(declare-fun d!120399 () Bool)

(declare-fun res!680415 () Bool)

(declare-fun e!570035 () Bool)

(assert (=> d!120399 (=> res!680415 e!570035)))

(assert (=> d!120399 (= res!680415 (or (is-Nil!21513 l!412) (is-Nil!21513 (t!30525 l!412))))))

(assert (=> d!120399 (= (isStrictlySorted!553 l!412) e!570035)))

(declare-fun b!1013240 () Bool)

(declare-fun e!570036 () Bool)

(assert (=> b!1013240 (= e!570035 e!570036)))

(declare-fun res!680416 () Bool)

(assert (=> b!1013240 (=> (not res!680416) (not e!570036))))

(assert (=> b!1013240 (= res!680416 (bvslt (_1!7611 (h!22710 l!412)) (_1!7611 (h!22710 (t!30525 l!412)))))))

(declare-fun b!1013241 () Bool)

(assert (=> b!1013241 (= e!570036 (isStrictlySorted!553 (t!30525 l!412)))))

(assert (= (and d!120399 (not res!680415)) b!1013240))

(assert (= (and b!1013240 res!680416) b!1013241))

(declare-fun m!936469 () Bool)

(assert (=> b!1013241 m!936469))

(assert (=> start!87536 d!120399))

(declare-fun b!1013248 () Bool)

(declare-fun e!570041 () Bool)

(declare-fun tp!70425 () Bool)

(assert (=> b!1013248 (= e!570041 (and tp_is_empty!23465 tp!70425))))

(assert (=> b!1013191 (= tp!70416 e!570041)))

(assert (= (and b!1013191 (is-Cons!21512 (t!30525 l!412))) b!1013248))

(push 1)

