; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92214 () Bool)

(assert start!92214)

(declare-fun res!697329 () Bool)

(declare-fun e!594424 () Bool)

(assert (=> start!92214 (=> (not res!697329) (not e!594424))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!65990 0))(
  ( (array!65991 (arr!31732 (Array (_ BitVec 32) (_ BitVec 64))) (size!32269 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!65990)

(assert (=> start!92214 (= res!697329 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32269 a!3488)) (bvslt (size!32269 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92214 e!594424))

(assert (=> start!92214 true))

(declare-fun array_inv!24354 (array!65990) Bool)

(assert (=> start!92214 (array_inv!24354 a!3488)))

(declare-fun b!1048058 () Bool)

(assert (=> b!1048058 (= e!594424 false)))

(declare-fun lt!463090 () Bool)

(declare-datatypes ((List!22175 0))(
  ( (Nil!22172) (Cons!22171 (h!23380 (_ BitVec 64)) (t!31489 List!22175)) )
))
(declare-fun arrayNoDuplicates!0 (array!65990 (_ BitVec 32) List!22175) Bool)

(assert (=> b!1048058 (= lt!463090 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22172))))

(assert (= (and start!92214 res!697329) b!1048058))

(declare-fun m!969231 () Bool)

(assert (=> start!92214 m!969231))

(declare-fun m!969233 () Bool)

(assert (=> b!1048058 m!969233))

(push 1)

(assert (not start!92214))

(assert (not b!1048058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

