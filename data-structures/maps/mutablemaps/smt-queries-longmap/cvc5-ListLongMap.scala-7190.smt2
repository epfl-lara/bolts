; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92190 () Bool)

(assert start!92190)

(declare-fun res!697266 () Bool)

(declare-fun e!594358 () Bool)

(assert (=> start!92190 (=> (not res!697266) (not e!594358))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65981 0))(
  ( (array!65982 (arr!31729 (Array (_ BitVec 32) (_ BitVec 64))) (size!32266 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65981)

(assert (=> start!92190 (= res!697266 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32266 a!3488)) (bvslt (size!32266 a!3488) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!32266 a!3488))))))

(assert (=> start!92190 e!594358))

(assert (=> start!92190 true))

(declare-fun array_inv!24351 (array!65981) Bool)

(assert (=> start!92190 (array_inv!24351 a!3488)))

(declare-fun b!1047993 () Bool)

(declare-fun res!697265 () Bool)

(assert (=> b!1047993 (=> (not res!697265) (not e!594358))))

(declare-datatypes ((List!22172 0))(
  ( (Nil!22169) (Cons!22168 (h!23377 (_ BitVec 64)) (t!31486 List!22172)) )
))
(declare-fun noDuplicate!1506 (List!22172) Bool)

(assert (=> b!1047993 (= res!697265 (noDuplicate!1506 Nil!22169))))

(declare-fun b!1047994 () Bool)

(declare-fun e!594357 () Bool)

(assert (=> b!1047994 (= e!594358 e!594357)))

(declare-fun res!697264 () Bool)

(assert (=> b!1047994 (=> res!697264 e!594357)))

(declare-fun contains!6118 (List!22172 (_ BitVec 64)) Bool)

(assert (=> b!1047994 (= res!697264 (contains!6118 Nil!22169 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1047995 () Bool)

(assert (=> b!1047995 (= e!594357 (contains!6118 Nil!22169 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92190 res!697266) b!1047993))

(assert (= (and b!1047993 res!697265) b!1047994))

(assert (= (and b!1047994 (not res!697264)) b!1047995))

(declare-fun m!969165 () Bool)

(assert (=> start!92190 m!969165))

(declare-fun m!969167 () Bool)

(assert (=> b!1047993 m!969167))

(declare-fun m!969169 () Bool)

(assert (=> b!1047994 m!969169))

(declare-fun m!969171 () Bool)

(assert (=> b!1047995 m!969171))

(push 1)

(assert (not b!1047993))

(assert (not b!1047995))

(assert (not start!92190))

(assert (not b!1047994))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127577 () Bool)

(declare-fun res!697305 () Bool)

(declare-fun e!594398 () Bool)

(assert (=> d!127577 (=> res!697305 e!594398)))

(assert (=> d!127577 (= res!697305 (is-Nil!22169 Nil!22169))))

(assert (=> d!127577 (= (noDuplicate!1506 Nil!22169) e!594398)))

(declare-fun b!1048034 () Bool)

(declare-fun e!594399 () Bool)

(assert (=> b!1048034 (= e!594398 e!594399)))

(declare-fun res!697306 () Bool)

(assert (=> b!1048034 (=> (not res!697306) (not e!594399))))

(assert (=> b!1048034 (= res!697306 (not (contains!6118 (t!31486 Nil!22169) (h!23377 Nil!22169))))))

(declare-fun b!1048035 () Bool)

(assert (=> b!1048035 (= e!594399 (noDuplicate!1506 (t!31486 Nil!22169)))))

(assert (= (and d!127577 (not res!697305)) b!1048034))

(assert (= (and b!1048034 res!697306) b!1048035))

(declare-fun m!969199 () Bool)

(assert (=> b!1048034 m!969199))

(declare-fun m!969201 () Bool)

(assert (=> b!1048035 m!969201))

(assert (=> b!1047993 d!127577))

(declare-fun d!127581 () Bool)

(declare-fun lt!463085 () Bool)

(declare-fun content!532 (List!22172) (Set (_ BitVec 64)))

(assert (=> d!127581 (= lt!463085 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!532 Nil!22169)))))

(declare-fun e!594415 () Bool)

(assert (=> d!127581 (= lt!463085 e!594415)))

(declare-fun res!697321 () Bool)

(assert (=> d!127581 (=> (not res!697321) (not e!594415))))

(assert (=> d!127581 (= res!697321 (is-Cons!22168 Nil!22169))))

(assert (=> d!127581 (= (contains!6118 Nil!22169 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463085)))

(declare-fun b!1048050 () Bool)

(declare-fun e!594414 () Bool)

(assert (=> b!1048050 (= e!594415 e!594414)))

(declare-fun res!697322 () Bool)

(assert (=> b!1048050 (=> res!697322 e!594414)))

(assert (=> b!1048050 (= res!697322 (= (h!23377 Nil!22169) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1048051 () Bool)

(assert (=> b!1048051 (= e!594414 (contains!6118 (t!31486 Nil!22169) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!127581 res!697321) b!1048050))

(assert (= (and b!1048050 (not res!697322)) b!1048051))

(declare-fun m!969217 () Bool)

(assert (=> d!127581 m!969217))

(declare-fun m!969219 () Bool)

(assert (=> d!127581 m!969219))

(declare-fun m!969225 () Bool)

(assert (=> b!1048051 m!969225))

(assert (=> b!1047995 d!127581))

(declare-fun d!127591 () Bool)

(assert (=> d!127591 (= (array_inv!24351 a!3488) (bvsge (size!32266 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92190 d!127591))

(declare-fun d!127593 () Bool)

(declare-fun lt!463087 () Bool)

