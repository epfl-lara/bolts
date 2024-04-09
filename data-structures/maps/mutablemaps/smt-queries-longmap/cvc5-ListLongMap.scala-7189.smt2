; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92172 () Bool)

(assert start!92172)

(declare-fun res!697233 () Bool)

(declare-fun e!594319 () Bool)

(assert (=> start!92172 (=> (not res!697233) (not e!594319))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65972 0))(
  ( (array!65973 (arr!31726 (Array (_ BitVec 32) (_ BitVec 64))) (size!32263 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65972)

(assert (=> start!92172 (= res!697233 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32263 a!3488)) (bvslt (size!32263 a!3488) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!32263 a!3488))))))

(assert (=> start!92172 e!594319))

(assert (=> start!92172 true))

(declare-fun array_inv!24348 (array!65972) Bool)

(assert (=> start!92172 (array_inv!24348 a!3488)))

(declare-fun b!1047962 () Bool)

(declare-datatypes ((List!22169 0))(
  ( (Nil!22166) (Cons!22165 (h!23374 (_ BitVec 64)) (t!31483 List!22169)) )
))
(declare-fun noDuplicate!1503 (List!22169) Bool)

(assert (=> b!1047962 (= e!594319 (not (noDuplicate!1503 Nil!22166)))))

(assert (= (and start!92172 res!697233) b!1047962))

(declare-fun m!969141 () Bool)

(assert (=> start!92172 m!969141))

(declare-fun m!969143 () Bool)

(assert (=> b!1047962 m!969143))

(push 1)

(assert (not b!1047962))

(assert (not start!92172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127561 () Bool)

(declare-fun res!697248 () Bool)

(declare-fun e!594341 () Bool)

(assert (=> d!127561 (=> res!697248 e!594341)))

(assert (=> d!127561 (= res!697248 (is-Nil!22166 Nil!22166))))

(assert (=> d!127561 (= (noDuplicate!1503 Nil!22166) e!594341)))

(declare-fun b!1047977 () Bool)

(declare-fun e!594342 () Bool)

(assert (=> b!1047977 (= e!594341 e!594342)))

(declare-fun res!697249 () Bool)

(assert (=> b!1047977 (=> (not res!697249) (not e!594342))))

(declare-fun contains!6115 (List!22169 (_ BitVec 64)) Bool)

(assert (=> b!1047977 (= res!697249 (not (contains!6115 (t!31483 Nil!22166) (h!23374 Nil!22166))))))

(declare-fun b!1047978 () Bool)

(assert (=> b!1047978 (= e!594342 (noDuplicate!1503 (t!31483 Nil!22166)))))

(assert (= (and d!127561 (not res!697248)) b!1047977))

(assert (= (and b!1047977 res!697249) b!1047978))

(declare-fun m!969155 () Bool)

(assert (=> b!1047977 m!969155))

(declare-fun m!969159 () Bool)

(assert (=> b!1047978 m!969159))

(assert (=> b!1047962 d!127561))

(declare-fun d!127565 () Bool)

(assert (=> d!127565 (= (array_inv!24348 a!3488) (bvsge (size!32263 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92172 d!127565))

(push 1)

