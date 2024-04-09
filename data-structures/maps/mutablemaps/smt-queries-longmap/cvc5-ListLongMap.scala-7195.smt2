; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92238 () Bool)

(assert start!92238)

(declare-fun res!697419 () Bool)

(declare-fun e!594496 () Bool)

(assert (=> start!92238 (=> (not res!697419) (not e!594496))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66014 0))(
  ( (array!66015 (arr!31744 (Array (_ BitVec 32) (_ BitVec 64))) (size!32281 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66014)

(assert (=> start!92238 (= res!697419 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32281 a!3488)) (bvslt (size!32281 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92238 e!594496))

(assert (=> start!92238 true))

(declare-fun array_inv!24366 (array!66014) Bool)

(assert (=> start!92238 (array_inv!24366 a!3488)))

(declare-fun b!1048148 () Bool)

(assert (=> b!1048148 (= e!594496 false)))

(declare-fun lt!463108 () Bool)

(declare-datatypes ((List!22187 0))(
  ( (Nil!22184) (Cons!22183 (h!23392 (_ BitVec 64)) (t!31501 List!22187)) )
))
(declare-fun arrayNoDuplicates!0 (array!66014 (_ BitVec 32) List!22187) Bool)

(assert (=> b!1048148 (= lt!463108 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22184))))

(assert (= (and start!92238 res!697419) b!1048148))

(declare-fun m!969315 () Bool)

(assert (=> start!92238 m!969315))

(declare-fun m!969317 () Bool)

(assert (=> b!1048148 m!969317))

(push 1)

(assert (not start!92238))

(assert (not b!1048148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

