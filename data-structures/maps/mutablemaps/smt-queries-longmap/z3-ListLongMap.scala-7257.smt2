; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92672 () Bool)

(assert start!92672)

(declare-fun res!702255 () Bool)

(declare-fun e!598057 () Bool)

(assert (=> start!92672 (=> (not res!702255) (not e!598057))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66394 0))(
  ( (array!66395 (arr!31931 (Array (_ BitVec 32) (_ BitVec 64))) (size!32468 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66394)

(assert (=> start!92672 (= res!702255 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32468 a!3488)) (bvslt (size!32468 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92672 e!598057))

(assert (=> start!92672 true))

(declare-fun array_inv!24553 (array!66394) Bool)

(assert (=> start!92672 (array_inv!24553 a!3488)))

(declare-fun b!1053056 () Bool)

(assert (=> b!1053056 (= e!598057 false)))

(declare-fun lt!465037 () Bool)

(declare-datatypes ((List!22374 0))(
  ( (Nil!22371) (Cons!22370 (h!23579 (_ BitVec 64)) (t!31688 List!22374)) )
))
(declare-fun arrayNoDuplicates!0 (array!66394 (_ BitVec 32) List!22374) Bool)

(assert (=> b!1053056 (= lt!465037 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22371))))

(assert (= (and start!92672 res!702255) b!1053056))

(declare-fun m!973567 () Bool)

(assert (=> start!92672 m!973567))

(declare-fun m!973569 () Bool)

(assert (=> b!1053056 m!973569))

(check-sat (not start!92672) (not b!1053056))
