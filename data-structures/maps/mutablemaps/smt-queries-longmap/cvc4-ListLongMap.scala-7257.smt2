; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92674 () Bool)

(assert start!92674)

(declare-fun res!702258 () Bool)

(declare-fun e!598063 () Bool)

(assert (=> start!92674 (=> (not res!702258) (not e!598063))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66396 0))(
  ( (array!66397 (arr!31932 (Array (_ BitVec 32) (_ BitVec 64))) (size!32469 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66396)

(assert (=> start!92674 (= res!702258 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32469 a!3488)) (bvslt (size!32469 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92674 e!598063))

(assert (=> start!92674 true))

(declare-fun array_inv!24554 (array!66396) Bool)

(assert (=> start!92674 (array_inv!24554 a!3488)))

(declare-fun b!1053059 () Bool)

(assert (=> b!1053059 (= e!598063 false)))

(declare-fun lt!465040 () Bool)

(declare-datatypes ((List!22375 0))(
  ( (Nil!22372) (Cons!22371 (h!23580 (_ BitVec 64)) (t!31689 List!22375)) )
))
(declare-fun arrayNoDuplicates!0 (array!66396 (_ BitVec 32) List!22375) Bool)

(assert (=> b!1053059 (= lt!465040 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22372))))

(assert (= (and start!92674 res!702258) b!1053059))

(declare-fun m!973571 () Bool)

(assert (=> start!92674 m!973571))

(declare-fun m!973573 () Bool)

(assert (=> b!1053059 m!973573))

(push 1)

(assert (not b!1053059))

(assert (not start!92674))

(check-sat)

(pop 1)

