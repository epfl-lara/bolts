; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92616 () Bool)

(assert start!92616)

(declare-fun res!702135 () Bool)

(declare-fun e!597907 () Bool)

(assert (=> start!92616 (=> (not res!702135) (not e!597907))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66365 0))(
  ( (array!66366 (arr!31918 (Array (_ BitVec 32) (_ BitVec 64))) (size!32455 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66365)

(assert (=> start!92616 (= res!702135 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32455 a!3488)) (bvslt (size!32455 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92616 e!597907))

(assert (=> start!92616 true))

(declare-fun array_inv!24540 (array!66365) Bool)

(assert (=> start!92616 (array_inv!24540 a!3488)))

(declare-fun b!1052900 () Bool)

(assert (=> b!1052900 (= e!597907 false)))

(declare-fun lt!464989 () Bool)

(declare-datatypes ((List!22361 0))(
  ( (Nil!22358) (Cons!22357 (h!23566 (_ BitVec 64)) (t!31675 List!22361)) )
))
(declare-fun arrayNoDuplicates!0 (array!66365 (_ BitVec 32) List!22361) Bool)

(assert (=> b!1052900 (= lt!464989 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22358))))

(assert (= (and start!92616 res!702135) b!1052900))

(declare-fun m!973437 () Bool)

(assert (=> start!92616 m!973437))

(declare-fun m!973439 () Bool)

(assert (=> b!1052900 m!973439))

(push 1)

(assert (not start!92616))

(assert (not b!1052900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

