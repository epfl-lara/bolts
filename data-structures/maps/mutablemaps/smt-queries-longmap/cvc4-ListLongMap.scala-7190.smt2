; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92194 () Bool)

(assert start!92194)

(declare-fun res!697283 () Bool)

(declare-fun e!594375 () Bool)

(assert (=> start!92194 (=> (not res!697283) (not e!594375))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65985 0))(
  ( (array!65986 (arr!31731 (Array (_ BitVec 32) (_ BitVec 64))) (size!32268 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65985)

(assert (=> start!92194 (= res!697283 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32268 a!3488)) (bvslt (size!32268 a!3488) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!32268 a!3488))))))

(assert (=> start!92194 e!594375))

(assert (=> start!92194 true))

(declare-fun array_inv!24353 (array!65985) Bool)

(assert (=> start!92194 (array_inv!24353 a!3488)))

(declare-fun b!1048011 () Bool)

(declare-fun res!697282 () Bool)

(assert (=> b!1048011 (=> (not res!697282) (not e!594375))))

(declare-datatypes ((List!22174 0))(
  ( (Nil!22171) (Cons!22170 (h!23379 (_ BitVec 64)) (t!31488 List!22174)) )
))
(declare-fun noDuplicate!1508 (List!22174) Bool)

(assert (=> b!1048011 (= res!697282 (noDuplicate!1508 Nil!22171))))

(declare-fun b!1048012 () Bool)

(declare-fun e!594377 () Bool)

(assert (=> b!1048012 (= e!594375 e!594377)))

(declare-fun res!697284 () Bool)

(assert (=> b!1048012 (=> res!697284 e!594377)))

(declare-fun contains!6120 (List!22174 (_ BitVec 64)) Bool)

(assert (=> b!1048012 (= res!697284 (contains!6120 Nil!22171 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1048013 () Bool)

(assert (=> b!1048013 (= e!594377 (contains!6120 Nil!22171 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92194 res!697283) b!1048011))

(assert (= (and b!1048011 res!697282) b!1048012))

(assert (= (and b!1048012 (not res!697284)) b!1048013))

(declare-fun m!969181 () Bool)

(assert (=> start!92194 m!969181))

(declare-fun m!969183 () Bool)

(assert (=> b!1048011 m!969183))

(declare-fun m!969185 () Bool)

(assert (=> b!1048012 m!969185))

(declare-fun m!969187 () Bool)

(assert (=> b!1048013 m!969187))

(push 1)

(assert (not b!1048013))

(assert (not start!92194))

(assert (not b!1048011))

(assert (not b!1048012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127573 () Bool)

(declare-fun lt!463082 () Bool)

(declare-fun content!531 (List!22174) (Set (_ BitVec 64)))

(assert (=> d!127573 (= lt!463082 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!531 Nil!22171)))))

(declare-fun e!594403 () Bool)

(assert (=> d!127573 (= lt!463082 e!594403)))

(declare-fun res!697309 () Bool)

(assert (=> d!127573 (=> (not res!697309) (not e!594403))))

(assert (=> d!127573 (= res!697309 (is-Cons!22170 Nil!22171))))

(assert (=> d!127573 (= (contains!6120 Nil!22171 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463082)))

(declare-fun b!1048038 () Bool)

(declare-fun e!594402 () Bool)

(assert (=> b!1048038 (= e!594403 e!594402)))

(declare-fun res!697310 () Bool)

(assert (=> b!1048038 (=> res!697310 e!594402)))

(assert (=> b!1048038 (= res!697310 (= (h!23379 Nil!22171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1048039 () Bool)

(assert (=> b!1048039 (= e!594402 (contains!6120 (t!31488 Nil!22171) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!127573 res!697309) b!1048038))

(assert (= (and b!1048038 (not res!697310)) b!1048039))

(declare-fun m!969207 () Bool)

(assert (=> d!127573 m!969207))

(declare-fun m!969209 () Bool)

(assert (=> d!127573 m!969209))

(declare-fun m!969211 () Bool)

(assert (=> b!1048039 m!969211))

(assert (=> b!1048013 d!127573))

(declare-fun d!127585 () Bool)

(assert (=> d!127585 (= (array_inv!24353 a!3488) (bvsge (size!32268 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92194 d!127585))

(declare-fun d!127587 () Bool)

(declare-fun res!697319 () Bool)

(declare-fun e!594412 () Bool)

(assert (=> d!127587 (=> res!697319 e!594412)))

(assert (=> d!127587 (= res!697319 (is-Nil!22171 Nil!22171))))

(assert (=> d!127587 (= (noDuplicate!1508 Nil!22171) e!594412)))

(declare-fun b!1048048 () Bool)

(declare-fun e!594413 () Bool)

(assert (=> b!1048048 (= e!594412 e!594413)))

(declare-fun res!697320 () Bool)

(assert (=> b!1048048 (=> (not res!697320) (not e!594413))))

(assert (=> b!1048048 (= res!697320 (not (contains!6120 (t!31488 Nil!22171) (h!23379 Nil!22171))))))

(declare-fun b!1048049 () Bool)

(assert (=> b!1048049 (= e!594413 (noDuplicate!1508 (t!31488 Nil!22171)))))

(assert (= (and d!127587 (not res!697319)) b!1048048))

(assert (= (and b!1048048 res!697320) b!1048049))

(declare-fun m!969213 () Bool)

(assert (=> b!1048048 m!969213))

(declare-fun m!969215 () Bool)

(assert (=> b!1048049 m!969215))

(assert (=> b!1048011 d!127587))

(declare-fun d!127589 () Bool)

(declare-fun lt!463086 () Bool)

(assert (=> d!127589 (= lt!463086 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!531 Nil!22171)))))

(declare-fun e!594417 () Bool)

(assert (=> d!127589 (= lt!463086 e!594417)))

(declare-fun res!697323 () Bool)

