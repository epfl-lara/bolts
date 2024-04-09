; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87532 () Bool)

(assert start!87532)

(declare-fun res!680385 () Bool)

(declare-fun e!569989 () Bool)

(assert (=> start!87532 (=> (not res!680385) (not e!569989))))

(declare-datatypes ((B!1394 0))(
  ( (B!1395 (val!11781 Int)) )
))
(declare-datatypes ((tuple2!15198 0))(
  ( (tuple2!15199 (_1!7609 (_ BitVec 64)) (_2!7609 B!1394)) )
))
(declare-datatypes ((List!21514 0))(
  ( (Nil!21511) (Cons!21510 (h!22708 tuple2!15198) (t!30523 List!21514)) )
))
(declare-fun l!412 () List!21514)

(declare-fun isStrictlySorted!551 (List!21514) Bool)

(assert (=> start!87532 (= res!680385 (isStrictlySorted!551 l!412))))

(assert (=> start!87532 e!569989))

(declare-fun e!569990 () Bool)

(assert (=> start!87532 e!569990))

(declare-fun tp_is_empty!23461 () Bool)

(assert (=> start!87532 tp_is_empty!23461))

(declare-fun b!1013171 () Bool)

(declare-fun res!680386 () Bool)

(assert (=> b!1013171 (=> (not res!680386) (not e!569989))))

(declare-fun value!115 () B!1394)

(assert (=> b!1013171 (= res!680386 (and (is-Cons!21510 l!412) (= (_2!7609 (h!22708 l!412)) value!115)))))

(declare-fun b!1013172 () Bool)

(declare-fun ListPrimitiveSize!100 (List!21514) Int)

(assert (=> b!1013172 (= e!569989 (>= (ListPrimitiveSize!100 (t!30523 l!412)) (ListPrimitiveSize!100 l!412)))))

(declare-fun b!1013173 () Bool)

(declare-fun tp!70410 () Bool)

(assert (=> b!1013173 (= e!569990 (and tp_is_empty!23461 tp!70410))))

(assert (= (and start!87532 res!680385) b!1013171))

(assert (= (and b!1013171 res!680386) b!1013172))

(assert (= (and start!87532 (is-Cons!21510 l!412)) b!1013173))

(declare-fun m!936441 () Bool)

(assert (=> start!87532 m!936441))

(declare-fun m!936443 () Bool)

(assert (=> b!1013172 m!936443))

(declare-fun m!936445 () Bool)

(assert (=> b!1013172 m!936445))

(push 1)

(assert (not b!1013172))

(assert (not start!87532))

(assert (not b!1013173))

(assert tp_is_empty!23461)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120383 () Bool)

(declare-fun lt!447871 () Int)

(assert (=> d!120383 (>= lt!447871 0)))

(declare-fun e!570009 () Int)

(assert (=> d!120383 (= lt!447871 e!570009)))

(declare-fun c!102370 () Bool)

(assert (=> d!120383 (= c!102370 (is-Nil!21511 (t!30523 l!412)))))

(assert (=> d!120383 (= (ListPrimitiveSize!100 (t!30523 l!412)) lt!447871)))

(declare-fun b!1013204 () Bool)

(assert (=> b!1013204 (= e!570009 0)))

(declare-fun b!1013205 () Bool)

(assert (=> b!1013205 (= e!570009 (+ 1 (ListPrimitiveSize!100 (t!30523 (t!30523 l!412)))))))

(assert (= (and d!120383 c!102370) b!1013204))

(assert (= (and d!120383 (not c!102370)) b!1013205))

(declare-fun m!936459 () Bool)

(assert (=> b!1013205 m!936459))

(assert (=> b!1013172 d!120383))

(declare-fun d!120389 () Bool)

(declare-fun lt!447873 () Int)

(assert (=> d!120389 (>= lt!447873 0)))

(declare-fun e!570011 () Int)

(assert (=> d!120389 (= lt!447873 e!570011)))

(declare-fun c!102372 () Bool)

(assert (=> d!120389 (= c!102372 (is-Nil!21511 l!412))))

(assert (=> d!120389 (= (ListPrimitiveSize!100 l!412) lt!447873)))

(declare-fun b!1013208 () Bool)

(assert (=> b!1013208 (= e!570011 0)))

(declare-fun b!1013209 () Bool)

(assert (=> b!1013209 (= e!570011 (+ 1 (ListPrimitiveSize!100 (t!30523 l!412))))))

(assert (= (and d!120389 c!102372) b!1013208))

(assert (= (and d!120389 (not c!102372)) b!1013209))

(assert (=> b!1013209 m!936443))

(assert (=> b!1013172 d!120389))

(declare-fun d!120393 () Bool)

(declare-fun res!680411 () Bool)

(declare-fun e!570027 () Bool)

(assert (=> d!120393 (=> res!680411 e!570027)))

(assert (=> d!120393 (= res!680411 (or (is-Nil!21511 l!412) (is-Nil!21511 (t!30523 l!412))))))

(assert (=> d!120393 (= (isStrictlySorted!551 l!412) e!570027)))

(declare-fun b!1013228 () Bool)

(declare-fun e!570028 () Bool)

(assert (=> b!1013228 (= e!570027 e!570028)))

(declare-fun res!680412 () Bool)

(assert (=> b!1013228 (=> (not res!680412) (not e!570028))))

(assert (=> b!1013228 (= res!680412 (bvslt (_1!7609 (h!22708 l!412)) (_1!7609 (h!22708 (t!30523 l!412)))))))

(declare-fun b!1013229 () Bool)

(assert (=> b!1013229 (= e!570028 (isStrictlySorted!551 (t!30523 l!412)))))

(assert (= (and d!120393 (not res!680411)) b!1013228))

(assert (= (and b!1013228 res!680412) b!1013229))

(declare-fun m!936465 () Bool)

(assert (=> b!1013229 m!936465))

(assert (=> start!87532 d!120393))

(declare-fun b!1013242 () Bool)

(declare-fun e!570037 () Bool)

(declare-fun tp!70421 () Bool)

(assert (=> b!1013242 (= e!570037 (and tp_is_empty!23461 tp!70421))))

(assert (=> b!1013173 (= tp!70410 e!570037)))

(assert (= (and b!1013173 (is-Cons!21510 (t!30523 l!412))) b!1013242))

(push 1)

(assert tp_is_empty!23461)

(assert (not b!1013242))

(assert (not b!1013209))

(assert (not b!1013205))

(assert (not b!1013229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

