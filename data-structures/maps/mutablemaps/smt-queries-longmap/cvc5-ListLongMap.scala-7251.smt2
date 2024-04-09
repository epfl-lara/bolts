; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92604 () Bool)

(assert start!92604)

(declare-fun res!702081 () Bool)

(declare-fun e!597871 () Bool)

(assert (=> start!92604 (=> (not res!702081) (not e!597871))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66353 0))(
  ( (array!66354 (arr!31912 (Array (_ BitVec 32) (_ BitVec 64))) (size!32449 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66353)

(assert (=> start!92604 (= res!702081 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32449 a!3488)) (bvslt (size!32449 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92604 e!597871))

(assert (=> start!92604 true))

(declare-fun array_inv!24534 (array!66353) Bool)

(assert (=> start!92604 (array_inv!24534 a!3488)))

(declare-fun b!1052846 () Bool)

(assert (=> b!1052846 (= e!597871 false)))

(declare-fun lt!464980 () Bool)

(declare-datatypes ((List!22355 0))(
  ( (Nil!22352) (Cons!22351 (h!23560 (_ BitVec 64)) (t!31669 List!22355)) )
))
(declare-fun arrayNoDuplicates!0 (array!66353 (_ BitVec 32) List!22355) Bool)

(assert (=> b!1052846 (= lt!464980 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22352))))

(assert (= (and start!92604 res!702081) b!1052846))

(declare-fun m!973389 () Bool)

(assert (=> start!92604 m!973389))

(declare-fun m!973391 () Bool)

(assert (=> b!1052846 m!973391))

(push 1)

(assert (not start!92604))

(assert (not b!1052846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

