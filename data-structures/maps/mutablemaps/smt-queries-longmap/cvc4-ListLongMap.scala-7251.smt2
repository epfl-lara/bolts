; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92608 () Bool)

(assert start!92608)

(declare-fun res!702087 () Bool)

(declare-fun e!597883 () Bool)

(assert (=> start!92608 (=> (not res!702087) (not e!597883))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66357 0))(
  ( (array!66358 (arr!31914 (Array (_ BitVec 32) (_ BitVec 64))) (size!32451 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66357)

(assert (=> start!92608 (= res!702087 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32451 a!3488)) (bvslt (size!32451 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92608 e!597883))

(assert (=> start!92608 true))

(declare-fun array_inv!24536 (array!66357) Bool)

(assert (=> start!92608 (array_inv!24536 a!3488)))

(declare-fun b!1052852 () Bool)

(assert (=> b!1052852 (= e!597883 false)))

(declare-fun lt!464986 () Bool)

(declare-datatypes ((List!22357 0))(
  ( (Nil!22354) (Cons!22353 (h!23562 (_ BitVec 64)) (t!31671 List!22357)) )
))
(declare-fun arrayNoDuplicates!0 (array!66357 (_ BitVec 32) List!22357) Bool)

(assert (=> b!1052852 (= lt!464986 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22354))))

(assert (= (and start!92608 res!702087) b!1052852))

(declare-fun m!973397 () Bool)

(assert (=> start!92608 m!973397))

(declare-fun m!973399 () Bool)

(assert (=> b!1052852 m!973399))

(push 1)

(assert (not b!1052852))

(assert (not start!92608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

