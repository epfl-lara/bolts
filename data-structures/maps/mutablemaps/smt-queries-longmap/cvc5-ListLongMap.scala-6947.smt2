; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87514 () Bool)

(assert start!87514)

(declare-fun res!680356 () Bool)

(declare-fun e!569935 () Bool)

(assert (=> start!87514 (=> (not res!680356) (not e!569935))))

(declare-datatypes ((B!1388 0))(
  ( (B!1389 (val!11778 Int)) )
))
(declare-datatypes ((tuple2!15192 0))(
  ( (tuple2!15193 (_1!7606 (_ BitVec 64)) (_2!7606 B!1388)) )
))
(declare-datatypes ((List!21511 0))(
  ( (Nil!21508) (Cons!21507 (h!22705 tuple2!15192) (t!30520 List!21511)) )
))
(declare-fun l!412 () List!21511)

(declare-fun isStrictlySorted!548 (List!21511) Bool)

(assert (=> start!87514 (= res!680356 (isStrictlySorted!548 l!412))))

(assert (=> start!87514 e!569935))

(declare-fun e!569936 () Bool)

(assert (=> start!87514 e!569936))

(declare-fun b!1013100 () Bool)

(declare-fun ListPrimitiveSize!97 (List!21511) Int)

(assert (=> b!1013100 (= e!569935 (< (ListPrimitiveSize!97 l!412) 0))))

(declare-fun b!1013101 () Bool)

(declare-fun tp_is_empty!23455 () Bool)

(declare-fun tp!70392 () Bool)

(assert (=> b!1013101 (= e!569936 (and tp_is_empty!23455 tp!70392))))

(assert (= (and start!87514 res!680356) b!1013100))

(assert (= (and start!87514 (is-Cons!21507 l!412)) b!1013101))

(declare-fun m!936417 () Bool)

(assert (=> start!87514 m!936417))

(declare-fun m!936419 () Bool)

(assert (=> b!1013100 m!936419))

(push 1)

(assert (not start!87514))

(assert (not b!1013100))

(assert (not b!1013101))

(assert tp_is_empty!23455)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120371 () Bool)

(declare-fun res!680371 () Bool)

(declare-fun e!569960 () Bool)

(assert (=> d!120371 (=> res!680371 e!569960)))

(assert (=> d!120371 (= res!680371 (or (is-Nil!21508 l!412) (is-Nil!21508 (t!30520 l!412))))))

(assert (=> d!120371 (= (isStrictlySorted!548 l!412) e!569960)))

(declare-fun b!1013128 () Bool)

(declare-fun e!569961 () Bool)

(assert (=> b!1013128 (= e!569960 e!569961)))

(declare-fun res!680372 () Bool)

(assert (=> b!1013128 (=> (not res!680372) (not e!569961))))

(assert (=> b!1013128 (= res!680372 (bvslt (_1!7606 (h!22705 l!412)) (_1!7606 (h!22705 (t!30520 l!412)))))))

(declare-fun b!1013129 () Bool)

(assert (=> b!1013129 (= e!569961 (isStrictlySorted!548 (t!30520 l!412)))))

(assert (= (and d!120371 (not res!680371)) b!1013128))

(assert (= (and b!1013128 res!680372) b!1013129))

(declare-fun m!936431 () Bool)

(assert (=> b!1013129 m!936431))

(assert (=> start!87514 d!120371))

(declare-fun d!120377 () Bool)

(declare-fun lt!447863 () Int)

(assert (=> d!120377 (>= lt!447863 0)))

(declare-fun e!569976 () Int)

(assert (=> d!120377 (= lt!447863 e!569976)))

(declare-fun c!102362 () Bool)

(assert (=> d!120377 (= c!102362 (is-Nil!21508 l!412))))

(assert (=> d!120377 (= (ListPrimitiveSize!97 l!412) lt!447863)))

(declare-fun b!1013150 () Bool)

(assert (=> b!1013150 (= e!569976 0)))

(declare-fun b!1013151 () Bool)

(assert (=> b!1013151 (= e!569976 (+ 1 (ListPrimitiveSize!97 (t!30520 l!412))))))

(assert (= (and d!120377 c!102362) b!1013150))

(assert (= (and d!120377 (not c!102362)) b!1013151))

(declare-fun m!936437 () Bool)

(assert (=> b!1013151 m!936437))

(assert (=> b!1013100 d!120377))

(declare-fun b!1013163 () Bool)

(declare-fun e!569983 () Bool)

(declare-fun tp!70406 () Bool)

(assert (=> b!1013163 (= e!569983 (and tp_is_empty!23455 tp!70406))))

(assert (=> b!1013101 (= tp!70392 e!569983)))

(assert (= (and b!1013101 (is-Cons!21507 (t!30520 l!412))) b!1013163))

(push 1)

