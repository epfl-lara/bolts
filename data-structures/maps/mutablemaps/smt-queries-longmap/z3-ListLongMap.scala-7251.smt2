; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92606 () Bool)

(assert start!92606)

(declare-fun res!702084 () Bool)

(declare-fun e!597877 () Bool)

(assert (=> start!92606 (=> (not res!702084) (not e!597877))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66355 0))(
  ( (array!66356 (arr!31913 (Array (_ BitVec 32) (_ BitVec 64))) (size!32450 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66355)

(assert (=> start!92606 (= res!702084 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32450 a!3488)) (bvslt (size!32450 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92606 e!597877))

(assert (=> start!92606 true))

(declare-fun array_inv!24535 (array!66355) Bool)

(assert (=> start!92606 (array_inv!24535 a!3488)))

(declare-fun b!1052849 () Bool)

(assert (=> b!1052849 (= e!597877 false)))

(declare-fun lt!464983 () Bool)

(declare-datatypes ((List!22356 0))(
  ( (Nil!22353) (Cons!22352 (h!23561 (_ BitVec 64)) (t!31670 List!22356)) )
))
(declare-fun arrayNoDuplicates!0 (array!66355 (_ BitVec 32) List!22356) Bool)

(assert (=> b!1052849 (= lt!464983 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22353))))

(assert (= (and start!92606 res!702084) b!1052849))

(declare-fun m!973393 () Bool)

(assert (=> start!92606 m!973393))

(declare-fun m!973395 () Bool)

(assert (=> b!1052849 m!973395))

(check-sat (not start!92606) (not b!1052849))
(check-sat)
