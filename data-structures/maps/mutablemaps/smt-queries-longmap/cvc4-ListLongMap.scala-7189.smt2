; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92176 () Bool)

(assert start!92176)

(declare-fun res!697239 () Bool)

(declare-fun e!594331 () Bool)

(assert (=> start!92176 (=> (not res!697239) (not e!594331))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65976 0))(
  ( (array!65977 (arr!31728 (Array (_ BitVec 32) (_ BitVec 64))) (size!32265 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65976)

(assert (=> start!92176 (= res!697239 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32265 a!3488)) (bvslt (size!32265 a!3488) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!32265 a!3488))))))

(assert (=> start!92176 e!594331))

(assert (=> start!92176 true))

(declare-fun array_inv!24350 (array!65976) Bool)

(assert (=> start!92176 (array_inv!24350 a!3488)))

(declare-fun b!1047968 () Bool)

(declare-datatypes ((List!22171 0))(
  ( (Nil!22168) (Cons!22167 (h!23376 (_ BitVec 64)) (t!31485 List!22171)) )
))
(declare-fun noDuplicate!1505 (List!22171) Bool)

(assert (=> b!1047968 (= e!594331 (not (noDuplicate!1505 Nil!22168)))))

(assert (= (and start!92176 res!697239) b!1047968))

(declare-fun m!969149 () Bool)

(assert (=> start!92176 m!969149))

(declare-fun m!969151 () Bool)

(assert (=> b!1047968 m!969151))

(push 1)

(assert (not b!1047968))

(assert (not start!92176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127563 () Bool)

(declare-fun res!697256 () Bool)

(declare-fun e!594349 () Bool)

(assert (=> d!127563 (=> res!697256 e!594349)))

(assert (=> d!127563 (= res!697256 (is-Nil!22168 Nil!22168))))

(assert (=> d!127563 (= (noDuplicate!1505 Nil!22168) e!594349)))

(declare-fun b!1047985 () Bool)

(declare-fun e!594350 () Bool)

(assert (=> b!1047985 (= e!594349 e!594350)))

(declare-fun res!697257 () Bool)

(assert (=> b!1047985 (=> (not res!697257) (not e!594350))))

