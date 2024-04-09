; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92242 () Bool)

(assert start!92242)

(declare-fun res!697425 () Bool)

(declare-fun e!594508 () Bool)

(assert (=> start!92242 (=> (not res!697425) (not e!594508))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66018 0))(
  ( (array!66019 (arr!31746 (Array (_ BitVec 32) (_ BitVec 64))) (size!32283 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66018)

(assert (=> start!92242 (= res!697425 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32283 a!3488)) (bvslt (size!32283 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92242 e!594508))

(assert (=> start!92242 true))

(declare-fun array_inv!24368 (array!66018) Bool)

(assert (=> start!92242 (array_inv!24368 a!3488)))

(declare-fun b!1048154 () Bool)

(assert (=> b!1048154 (= e!594508 false)))

(declare-fun lt!463114 () Bool)

(declare-datatypes ((List!22189 0))(
  ( (Nil!22186) (Cons!22185 (h!23394 (_ BitVec 64)) (t!31503 List!22189)) )
))
(declare-fun arrayNoDuplicates!0 (array!66018 (_ BitVec 32) List!22189) Bool)

(assert (=> b!1048154 (= lt!463114 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22186))))

(assert (= (and start!92242 res!697425) b!1048154))

(declare-fun m!969323 () Bool)

(assert (=> start!92242 m!969323))

(declare-fun m!969325 () Bool)

(assert (=> b!1048154 m!969325))

(push 1)

(assert (not b!1048154))

(assert (not start!92242))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

