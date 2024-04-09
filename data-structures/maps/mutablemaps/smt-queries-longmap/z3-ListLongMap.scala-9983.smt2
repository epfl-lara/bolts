; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117948 () Bool)

(assert start!117948)

(declare-fun b!1381435 () Bool)

(declare-fun e!783112 () Bool)

(declare-datatypes ((array!94255 0))(
  ( (array!94256 (arr!45506 (Array (_ BitVec 32) (_ BitVec 64))) (size!46057 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94255)

(assert (=> b!1381435 (= e!783112 (bvsgt #b00000000000000000000000000000000 (size!46057 a!2971)))))

(declare-fun b!1381433 () Bool)

(declare-fun res!923171 () Bool)

(assert (=> b!1381433 (=> (not res!923171) (not e!783112))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381433 (= res!923171 (validKeyInArray!0 (select (arr!45506 a!2971) i!1094)))))

(declare-fun b!1381432 () Bool)

(declare-fun res!923170 () Bool)

(assert (=> b!1381432 (=> (not res!923170) (not e!783112))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381432 (= res!923170 (and (= (size!46057 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46057 a!2971))))))

(declare-fun b!1381434 () Bool)

(declare-fun res!923172 () Bool)

(assert (=> b!1381434 (=> (not res!923172) (not e!783112))))

(declare-datatypes ((List!32220 0))(
  ( (Nil!32217) (Cons!32216 (h!33425 (_ BitVec 64)) (t!46921 List!32220)) )
))
(declare-fun arrayNoDuplicates!0 (array!94255 (_ BitVec 32) List!32220) Bool)

(assert (=> b!1381434 (= res!923172 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32217))))

(declare-fun res!923169 () Bool)

(assert (=> start!117948 (=> (not res!923169) (not e!783112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!117948 (= res!923169 (validMask!0 mask!3034))))

(assert (=> start!117948 e!783112))

(assert (=> start!117948 true))

(declare-fun array_inv!34451 (array!94255) Bool)

(assert (=> start!117948 (array_inv!34451 a!2971)))

(assert (= (and start!117948 res!923169) b!1381432))

(assert (= (and b!1381432 res!923170) b!1381433))

(assert (= (and b!1381433 res!923171) b!1381434))

(assert (= (and b!1381434 res!923172) b!1381435))

(declare-fun m!1266679 () Bool)

(assert (=> b!1381433 m!1266679))

(assert (=> b!1381433 m!1266679))

(declare-fun m!1266681 () Bool)

(assert (=> b!1381433 m!1266681))

(declare-fun m!1266683 () Bool)

(assert (=> b!1381434 m!1266683))

(declare-fun m!1266685 () Bool)

(assert (=> start!117948 m!1266685))

(declare-fun m!1266687 () Bool)

(assert (=> start!117948 m!1266687))

(check-sat (not start!117948) (not b!1381434) (not b!1381433))
(check-sat)
