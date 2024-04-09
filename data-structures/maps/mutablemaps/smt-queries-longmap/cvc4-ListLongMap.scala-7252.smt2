; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92614 () Bool)

(assert start!92614)

(declare-fun b!1052893 () Bool)

(declare-fun res!702130 () Bool)

(declare-fun e!597901 () Bool)

(assert (=> b!1052893 (=> (not res!702130) (not e!597901))))

(declare-datatypes ((array!66363 0))(
  ( (array!66364 (arr!31917 (Array (_ BitVec 32) (_ BitVec 64))) (size!32454 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66363)

(declare-datatypes ((List!22360 0))(
  ( (Nil!22357) (Cons!22356 (h!23565 (_ BitVec 64)) (t!31674 List!22360)) )
))
(declare-fun arrayNoDuplicates!0 (array!66363 (_ BitVec 32) List!22360) Bool)

(assert (=> b!1052893 (= res!702130 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22357))))

(declare-fun b!1052894 () Bool)

(declare-fun res!702128 () Bool)

(assert (=> b!1052894 (=> (not res!702128) (not e!597901))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052894 (= res!702128 (validKeyInArray!0 k!2747))))

(declare-fun res!702132 () Bool)

(assert (=> start!92614 (=> (not res!702132) (not e!597901))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92614 (= res!702132 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32454 a!3488)) (bvslt (size!32454 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92614 e!597901))

(assert (=> start!92614 true))

(declare-fun array_inv!24539 (array!66363) Bool)

(assert (=> start!92614 (array_inv!24539 a!3488)))

(declare-fun b!1052895 () Bool)

(declare-fun res!702129 () Bool)

(assert (=> b!1052895 (=> (not res!702129) (not e!597901))))

(assert (=> b!1052895 (= res!702129 (= (select (arr!31917 a!3488) i!1381) k!2747))))

(declare-fun b!1052896 () Bool)

(declare-fun res!702131 () Bool)

(assert (=> b!1052896 (=> (not res!702131) (not e!597901))))

(declare-fun arrayContainsKey!0 (array!66363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052896 (= res!702131 (not (arrayContainsKey!0 (array!66364 (store (arr!31917 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32454 a!3488)) k!2747 #b00000000000000000000000000000000)))))

(declare-fun b!1052897 () Bool)

(assert (=> b!1052897 (= e!597901 (bvsge #b00000000000000000000000000000000 (size!32454 a!3488)))))

(assert (= (and start!92614 res!702132) b!1052893))

(assert (= (and b!1052893 res!702130) b!1052894))

(assert (= (and b!1052894 res!702128) b!1052895))

(assert (= (and b!1052895 res!702129) b!1052896))

(assert (= (and b!1052896 res!702131) b!1052897))

(declare-fun m!973425 () Bool)

(assert (=> b!1052894 m!973425))

(declare-fun m!973427 () Bool)

(assert (=> start!92614 m!973427))

(declare-fun m!973429 () Bool)

(assert (=> b!1052895 m!973429))

(declare-fun m!973431 () Bool)

(assert (=> b!1052896 m!973431))

(declare-fun m!973433 () Bool)

(assert (=> b!1052896 m!973433))

(declare-fun m!973435 () Bool)

(assert (=> b!1052893 m!973435))

(push 1)

(assert (not b!1052896))

(assert (not b!1052894))

(assert (not b!1052893))

(assert (not start!92614))

(check-sat)

(pop 1)

(push 1)

(check-sat)

