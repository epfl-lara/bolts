; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92620 () Bool)

(assert start!92620)

(declare-fun res!702141 () Bool)

(declare-fun e!597919 () Bool)

(assert (=> start!92620 (=> (not res!702141) (not e!597919))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66369 0))(
  ( (array!66370 (arr!31920 (Array (_ BitVec 32) (_ BitVec 64))) (size!32457 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66369)

(assert (=> start!92620 (= res!702141 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32457 a!3488)) (bvslt (size!32457 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92620 e!597919))

(assert (=> start!92620 true))

(declare-fun array_inv!24542 (array!66369) Bool)

(assert (=> start!92620 (array_inv!24542 a!3488)))

(declare-fun b!1052906 () Bool)

(assert (=> b!1052906 (= e!597919 false)))

(declare-fun lt!464995 () Bool)

(declare-datatypes ((List!22363 0))(
  ( (Nil!22360) (Cons!22359 (h!23568 (_ BitVec 64)) (t!31677 List!22363)) )
))
(declare-fun arrayNoDuplicates!0 (array!66369 (_ BitVec 32) List!22363) Bool)

(assert (=> b!1052906 (= lt!464995 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22360))))

(assert (= (and start!92620 res!702141) b!1052906))

(declare-fun m!973445 () Bool)

(assert (=> start!92620 m!973445))

(declare-fun m!973447 () Bool)

(assert (=> b!1052906 m!973447))

(push 1)

(assert (not start!92620))

(assert (not b!1052906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

