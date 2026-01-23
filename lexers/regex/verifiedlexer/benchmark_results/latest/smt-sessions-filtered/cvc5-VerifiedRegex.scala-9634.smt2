; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506406 () Bool)

(assert start!506406)

(declare-datatypes ((K!17457 0))(
  ( (K!17458 (val!22271 Int)) )
))
(declare-datatypes ((V!17703 0))(
  ( (V!17704 (val!22272 Int)) )
))
(declare-datatypes ((tuple2!59378 0))(
  ( (tuple2!59379 (_1!32983 K!17457) (_2!32983 V!17703)) )
))
(declare-datatypes ((List!55746 0))(
  ( (Nil!55622) (Cons!55622 (h!62059 tuple2!59378) (t!363242 List!55746)) )
))
(declare-datatypes ((tuple2!59380 0))(
  ( (tuple2!59381 (_1!32984 (_ BitVec 64)) (_2!32984 List!55746)) )
))
(declare-datatypes ((List!55747 0))(
  ( (Nil!55623) (Cons!55623 (h!62060 tuple2!59380) (t!363243 List!55747)) )
))
(declare-fun l!11074 () List!55747)

(declare-fun ListPrimitiveSize!362 (List!55747) Int)

(assert (=> start!506406 (< (ListPrimitiveSize!362 l!11074) 0)))

(declare-fun e!3033263 () Bool)

(assert (=> start!506406 e!3033263))

(declare-fun b!4852098 () Bool)

(declare-fun tp!1364981 () Bool)

(declare-fun tp!1364982 () Bool)

(assert (=> b!4852098 (= e!3033263 (and tp!1364981 tp!1364982))))

(assert (= (and start!506406 (is-Cons!55623 l!11074)) b!4852098))

(declare-fun m!5850408 () Bool)

(assert (=> start!506406 m!5850408))

(push 1)

(assert (not start!506406))

(assert (not b!4852098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557571 () Bool)

(declare-fun lt!1990131 () Int)

(assert (=> d!1557571 (>= lt!1990131 0)))

(declare-fun e!3033269 () Int)

(assert (=> d!1557571 (= lt!1990131 e!3033269)))

(declare-fun c!825665 () Bool)

(assert (=> d!1557571 (= c!825665 (is-Nil!55623 l!11074))))

(assert (=> d!1557571 (= (ListPrimitiveSize!362 l!11074) lt!1990131)))

(declare-fun b!4852106 () Bool)

(assert (=> b!4852106 (= e!3033269 0)))

(declare-fun b!4852107 () Bool)

(assert (=> b!4852107 (= e!3033269 (+ 1 (ListPrimitiveSize!362 (t!363243 l!11074))))))

(assert (= (and d!1557571 c!825665) b!4852106))

(assert (= (and d!1557571 (not c!825665)) b!4852107))

(declare-fun m!5850412 () Bool)

(assert (=> b!4852107 m!5850412))

(assert (=> start!506406 d!1557571))

(declare-fun tp_is_empty!35333 () Bool)

(declare-fun b!4852116 () Bool)

(declare-fun tp_is_empty!35335 () Bool)

(declare-fun tp!1364991 () Bool)

(declare-fun e!3033274 () Bool)

(assert (=> b!4852116 (= e!3033274 (and tp_is_empty!35333 tp_is_empty!35335 tp!1364991))))

(assert (=> b!4852098 (= tp!1364981 e!3033274)))

(assert (= (and b!4852098 (is-Cons!55622 (_2!32984 (h!62060 l!11074)))) b!4852116))

(declare-fun b!4852121 () Bool)

(declare-fun e!3033277 () Bool)

(declare-fun tp!1364996 () Bool)

(declare-fun tp!1364997 () Bool)

(assert (=> b!4852121 (= e!3033277 (and tp!1364996 tp!1364997))))

(assert (=> b!4852098 (= tp!1364982 e!3033277)))

(assert (= (and b!4852098 (is-Cons!55623 (t!363243 l!11074))) b!4852121))

(push 1)

(assert tp_is_empty!35333)

(assert tp_is_empty!35335)

(assert (not b!4852121))

(assert (not b!4852116))

(assert (not b!4852107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

