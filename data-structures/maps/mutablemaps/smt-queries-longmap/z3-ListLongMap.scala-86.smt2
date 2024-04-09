; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1238 () Bool)

(assert start!1238)

(declare-fun res!8890 () Bool)

(declare-fun e!6014 () Bool)

(assert (=> start!1238 (=> (not res!8890) (not e!6014))))

(declare-datatypes ((B!322 0))(
  ( (B!323 (val!256 Int)) )
))
(declare-datatypes ((tuple2!294 0))(
  ( (tuple2!295 (_1!147 (_ BitVec 64)) (_2!147 B!322)) )
))
(declare-datatypes ((List!303 0))(
  ( (Nil!300) (Cons!299 (h!865 tuple2!294) (t!2450 List!303)) )
))
(declare-fun l!408 () List!303)

(get-info :version)

(assert (=> start!1238 (= res!8890 ((_ is Cons!299) l!408))))

(assert (=> start!1238 e!6014))

(declare-fun e!6013 () Bool)

(assert (=> start!1238 e!6013))

(declare-fun b!10396 () Bool)

(declare-fun lt!2556 () (_ BitVec 32))

(assert (=> b!10396 (= e!6014 (and (bvslt lt!2556 #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 lt!2556) #b00000000000000000000000000000000)))))

(declare-fun intSize!2 (List!303) (_ BitVec 32))

(assert (=> b!10396 (= lt!2556 (intSize!2 (t!2450 l!408)))))

(declare-fun b!10397 () Bool)

(declare-fun tp_is_empty!495 () Bool)

(declare-fun tp!1502 () Bool)

(assert (=> b!10397 (= e!6013 (and tp_is_empty!495 tp!1502))))

(assert (= (and start!1238 res!8890) b!10396))

(assert (= (and start!1238 ((_ is Cons!299) l!408)) b!10397))

(declare-fun m!6727 () Bool)

(assert (=> b!10396 m!6727))

(check-sat (not b!10396) (not b!10397) tp_is_empty!495)
(check-sat)
(get-model)

(declare-fun d!1103 () Bool)

(declare-fun lt!2564 () (_ BitVec 32))

(assert (=> d!1103 (bvsge lt!2564 #b00000000000000000000000000000000)))

(declare-fun e!6023 () (_ BitVec 32))

(assert (=> d!1103 (= lt!2564 e!6023)))

(declare-fun c!938 () Bool)

(assert (=> d!1103 (= c!938 ((_ is Cons!299) (t!2450 l!408)))))

(assert (=> d!1103 (= (intSize!2 (t!2450 l!408)) lt!2564)))

(declare-fun b!10408 () Bool)

(declare-fun lt!2565 () (_ BitVec 32))

(assert (=> b!10408 (= e!6023 (ite (bvslt lt!2565 #b01111111111111111111111111111111) (bvadd #b00000000000000000000000000000001 lt!2565) #b00000000000000000000000000000000))))

(assert (=> b!10408 (= lt!2565 (intSize!2 (t!2450 (t!2450 l!408))))))

(declare-fun b!10409 () Bool)

(assert (=> b!10409 (= e!6023 #b00000000000000000000000000000000)))

(assert (= (and d!1103 c!938) b!10408))

(assert (= (and d!1103 (not c!938)) b!10409))

(declare-fun m!6731 () Bool)

(assert (=> b!10408 m!6731))

(assert (=> b!10396 d!1103))

(declare-fun b!10422 () Bool)

(declare-fun e!6030 () Bool)

(declare-fun tp!1508 () Bool)

(assert (=> b!10422 (= e!6030 (and tp_is_empty!495 tp!1508))))

(assert (=> b!10397 (= tp!1502 e!6030)))

(assert (= (and b!10397 ((_ is Cons!299) (t!2450 l!408))) b!10422))

(check-sat (not b!10408) (not b!10422) tp_is_empty!495)
(check-sat)
