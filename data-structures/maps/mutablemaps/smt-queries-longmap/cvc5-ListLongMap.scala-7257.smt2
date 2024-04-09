; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92670 () Bool)

(assert start!92670)

(declare-fun res!702252 () Bool)

(declare-fun e!598051 () Bool)

(assert (=> start!92670 (=> (not res!702252) (not e!598051))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66392 0))(
  ( (array!66393 (arr!31930 (Array (_ BitVec 32) (_ BitVec 64))) (size!32467 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66392)

(assert (=> start!92670 (= res!702252 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32467 a!3488)) (bvslt (size!32467 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92670 e!598051))

(assert (=> start!92670 true))

(declare-fun array_inv!24552 (array!66392) Bool)

(assert (=> start!92670 (array_inv!24552 a!3488)))

(declare-fun b!1053053 () Bool)

(assert (=> b!1053053 (= e!598051 false)))

(declare-fun lt!465034 () Bool)

(declare-datatypes ((List!22373 0))(
  ( (Nil!22370) (Cons!22369 (h!23578 (_ BitVec 64)) (t!31687 List!22373)) )
))
(declare-fun arrayNoDuplicates!0 (array!66392 (_ BitVec 32) List!22373) Bool)

(assert (=> b!1053053 (= lt!465034 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22370))))

(assert (= (and start!92670 res!702252) b!1053053))

(declare-fun m!973563 () Bool)

(assert (=> start!92670 m!973563))

(declare-fun m!973565 () Bool)

(assert (=> b!1053053 m!973565))

(push 1)

(assert (not b!1053053))

(assert (not start!92670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

