; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1240 () Bool)

(assert start!1240)

(declare-fun res!8893 () Bool)

(declare-fun e!6020 () Bool)

(assert (=> start!1240 (=> (not res!8893) (not e!6020))))

(declare-datatypes ((B!324 0))(
  ( (B!325 (val!257 Int)) )
))
(declare-datatypes ((tuple2!296 0))(
  ( (tuple2!297 (_1!148 (_ BitVec 64)) (_2!148 B!324)) )
))
(declare-datatypes ((List!304 0))(
  ( (Nil!301) (Cons!300 (h!866 tuple2!296) (t!2451 List!304)) )
))
(declare-fun l!408 () List!304)

(assert (=> start!1240 (= res!8893 (is-Cons!300 l!408))))

(assert (=> start!1240 e!6020))

(declare-fun e!6019 () Bool)

(assert (=> start!1240 e!6019))

(declare-fun b!10402 () Bool)

(declare-fun lt!2559 () (_ BitVec 32))

(assert (=> b!10402 (= e!6020 (and (bvslt lt!2559 #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 lt!2559) #b00000000000000000000000000000000)))))

(declare-fun intSize!3 (List!304) (_ BitVec 32))

(assert (=> b!10402 (= lt!2559 (intSize!3 (t!2451 l!408)))))

(declare-fun b!10403 () Bool)

(declare-fun tp_is_empty!497 () Bool)

(declare-fun tp!1505 () Bool)

(assert (=> b!10403 (= e!6019 (and tp_is_empty!497 tp!1505))))

(assert (= (and start!1240 res!8893) b!10402))

(assert (= (and start!1240 (is-Cons!300 l!408)) b!10403))

(declare-fun m!6729 () Bool)

(assert (=> b!10402 m!6729))

(push 1)

(assert (not b!10402))

(assert (not b!10403))

(assert tp_is_empty!497)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1107 () Bool)

(declare-fun lt!2576 () (_ BitVec 32))

(assert (=> d!1107 (bvsge lt!2576 #b00000000000000000000000000000000)))

(declare-fun e!6032 () (_ BitVec 32))

(assert (=> d!1107 (= lt!2576 e!6032)))

(declare-fun c!944 () Bool)

(assert (=> d!1107 (= c!944 (is-Cons!300 (t!2451 l!408)))))

(assert (=> d!1107 (= (intSize!3 (t!2451 l!408)) lt!2576)))

(declare-fun b!10427 () Bool)

(declare-fun lt!2577 () (_ BitVec 32))

(assert (=> b!10427 (= e!6032 (ite (bvslt lt!2577 #b01111111111111111111111111111111) (bvadd #b00000000000000000000000000000001 lt!2577) #b00000000000000000000000000000000))))

(assert (=> b!10427 (= lt!2577 (intSize!3 (t!2451 (t!2451 l!408))))))

(declare-fun b!10428 () Bool)

