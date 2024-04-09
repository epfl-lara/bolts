; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92612 () Bool)

(assert start!92612)

(declare-fun b!1052878 () Bool)

(declare-fun res!702115 () Bool)

(declare-fun e!597895 () Bool)

(assert (=> b!1052878 (=> (not res!702115) (not e!597895))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66361 0))(
  ( (array!66362 (arr!31916 (Array (_ BitVec 32) (_ BitVec 64))) (size!32453 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66361)

(declare-fun arrayContainsKey!0 (array!66361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052878 (= res!702115 (not (arrayContainsKey!0 (array!66362 (store (arr!31916 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32453 a!3488)) k0!2747 #b00000000000000000000000000000000)))))

(declare-fun b!1052879 () Bool)

(declare-fun res!702114 () Bool)

(assert (=> b!1052879 (=> (not res!702114) (not e!597895))))

(assert (=> b!1052879 (= res!702114 (= (select (arr!31916 a!3488) i!1381) k0!2747))))

(declare-fun b!1052880 () Bool)

(declare-fun res!702117 () Bool)

(assert (=> b!1052880 (=> (not res!702117) (not e!597895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052880 (= res!702117 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052881 () Bool)

(assert (=> b!1052881 (= e!597895 (bvsge #b00000000000000000000000000000000 (size!32453 a!3488)))))

(declare-fun b!1052882 () Bool)

(declare-fun res!702113 () Bool)

(assert (=> b!1052882 (=> (not res!702113) (not e!597895))))

(declare-datatypes ((List!22359 0))(
  ( (Nil!22356) (Cons!22355 (h!23564 (_ BitVec 64)) (t!31673 List!22359)) )
))
(declare-fun arrayNoDuplicates!0 (array!66361 (_ BitVec 32) List!22359) Bool)

(assert (=> b!1052882 (= res!702113 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22356))))

(declare-fun res!702116 () Bool)

(assert (=> start!92612 (=> (not res!702116) (not e!597895))))

(assert (=> start!92612 (= res!702116 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32453 a!3488)) (bvslt (size!32453 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92612 e!597895))

(assert (=> start!92612 true))

(declare-fun array_inv!24538 (array!66361) Bool)

(assert (=> start!92612 (array_inv!24538 a!3488)))

(assert (= (and start!92612 res!702116) b!1052882))

(assert (= (and b!1052882 res!702113) b!1052880))

(assert (= (and b!1052880 res!702117) b!1052879))

(assert (= (and b!1052879 res!702114) b!1052878))

(assert (= (and b!1052878 res!702115) b!1052881))

(declare-fun m!973413 () Bool)

(assert (=> b!1052880 m!973413))

(declare-fun m!973415 () Bool)

(assert (=> b!1052878 m!973415))

(declare-fun m!973417 () Bool)

(assert (=> b!1052878 m!973417))

(declare-fun m!973419 () Bool)

(assert (=> b!1052882 m!973419))

(declare-fun m!973421 () Bool)

(assert (=> b!1052879 m!973421))

(declare-fun m!973423 () Bool)

(assert (=> start!92612 m!973423))

(check-sat (not b!1052882) (not b!1052880) (not b!1052878) (not start!92612))
(check-sat)
