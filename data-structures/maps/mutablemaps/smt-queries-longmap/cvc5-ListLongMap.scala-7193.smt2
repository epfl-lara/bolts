; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92226 () Bool)

(assert start!92226)

(declare-fun res!697365 () Bool)

(declare-fun e!594460 () Bool)

(assert (=> start!92226 (=> (not res!697365) (not e!594460))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66002 0))(
  ( (array!66003 (arr!31738 (Array (_ BitVec 32) (_ BitVec 64))) (size!32275 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66002)

(assert (=> start!92226 (= res!697365 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32275 a!3488)) (bvslt (size!32275 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92226 e!594460))

(assert (=> start!92226 true))

(declare-fun array_inv!24360 (array!66002) Bool)

(assert (=> start!92226 (array_inv!24360 a!3488)))

(declare-fun b!1048094 () Bool)

(assert (=> b!1048094 (= e!594460 false)))

(declare-fun lt!463099 () Bool)

(declare-datatypes ((List!22181 0))(
  ( (Nil!22178) (Cons!22177 (h!23386 (_ BitVec 64)) (t!31495 List!22181)) )
))
(declare-fun arrayNoDuplicates!0 (array!66002 (_ BitVec 32) List!22181) Bool)

(assert (=> b!1048094 (= lt!463099 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22178))))

(assert (= (and start!92226 res!697365) b!1048094))

(declare-fun m!969267 () Bool)

(assert (=> start!92226 m!969267))

(declare-fun m!969269 () Bool)

(assert (=> b!1048094 m!969269))

(push 1)

(assert (not b!1048094))

(assert (not start!92226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

