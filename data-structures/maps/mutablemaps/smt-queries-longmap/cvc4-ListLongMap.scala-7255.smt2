; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92662 () Bool)

(assert start!92662)

(declare-fun res!702240 () Bool)

(declare-fun e!598027 () Bool)

(assert (=> start!92662 (=> (not res!702240) (not e!598027))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66384 0))(
  ( (array!66385 (arr!31926 (Array (_ BitVec 32) (_ BitVec 64))) (size!32463 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66384)

(assert (=> start!92662 (= res!702240 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32463 a!3488)) (bvslt (size!32463 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92662 e!598027))

(assert (=> start!92662 true))

(declare-fun array_inv!24548 (array!66384) Bool)

(assert (=> start!92662 (array_inv!24548 a!3488)))

(declare-fun b!1053041 () Bool)

(assert (=> b!1053041 (= e!598027 false)))

(declare-fun lt!465022 () Bool)

(declare-datatypes ((List!22369 0))(
  ( (Nil!22366) (Cons!22365 (h!23574 (_ BitVec 64)) (t!31683 List!22369)) )
))
(declare-fun arrayNoDuplicates!0 (array!66384 (_ BitVec 32) List!22369) Bool)

(assert (=> b!1053041 (= lt!465022 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22366))))

(assert (= (and start!92662 res!702240) b!1053041))

(declare-fun m!973547 () Bool)

(assert (=> start!92662 m!973547))

(declare-fun m!973549 () Bool)

(assert (=> b!1053041 m!973549))

(push 1)

(assert (not b!1053041))

(assert (not start!92662))

(check-sat)

(pop 1)

