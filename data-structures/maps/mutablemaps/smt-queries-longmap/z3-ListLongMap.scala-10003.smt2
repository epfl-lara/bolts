; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118098 () Bool)

(assert start!118098)

(declare-fun b!1382317 () Bool)

(declare-fun e!783535 () Bool)

(assert (=> b!1382317 (= e!783535 false)))

(declare-fun lt!608356 () Bool)

(declare-datatypes ((array!94378 0))(
  ( (array!94379 (arr!45566 (Array (_ BitVec 32) (_ BitVec 64))) (size!46117 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94378)

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94378 (_ BitVec 32)) Bool)

(assert (=> b!1382317 (= lt!608356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382315 () Bool)

(declare-fun res!924017 () Bool)

(assert (=> b!1382315 (=> (not res!924017) (not e!783535))))

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382315 (= res!924017 (validKeyInArray!0 (select (arr!45566 a!2971) i!1094)))))

(declare-fun res!924018 () Bool)

(assert (=> start!118098 (=> (not res!924018) (not e!783535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118098 (= res!924018 (validMask!0 mask!3034))))

(assert (=> start!118098 e!783535))

(assert (=> start!118098 true))

(declare-fun array_inv!34511 (array!94378) Bool)

(assert (=> start!118098 (array_inv!34511 a!2971)))

(declare-fun b!1382316 () Bool)

(declare-fun res!924015 () Bool)

(assert (=> b!1382316 (=> (not res!924015) (not e!783535))))

(declare-datatypes ((List!32280 0))(
  ( (Nil!32277) (Cons!32276 (h!33485 (_ BitVec 64)) (t!46981 List!32280)) )
))
(declare-fun arrayNoDuplicates!0 (array!94378 (_ BitVec 32) List!32280) Bool)

(assert (=> b!1382316 (= res!924015 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32277))))

(declare-fun b!1382314 () Bool)

(declare-fun res!924016 () Bool)

(assert (=> b!1382314 (=> (not res!924016) (not e!783535))))

(assert (=> b!1382314 (= res!924016 (and (= (size!46117 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46117 a!2971))))))

(assert (= (and start!118098 res!924018) b!1382314))

(assert (= (and b!1382314 res!924016) b!1382315))

(assert (= (and b!1382315 res!924017) b!1382316))

(assert (= (and b!1382316 res!924015) b!1382317))

(declare-fun m!1267515 () Bool)

(assert (=> b!1382317 m!1267515))

(declare-fun m!1267517 () Bool)

(assert (=> b!1382315 m!1267517))

(assert (=> b!1382315 m!1267517))

(declare-fun m!1267519 () Bool)

(assert (=> b!1382315 m!1267519))

(declare-fun m!1267521 () Bool)

(assert (=> start!118098 m!1267521))

(declare-fun m!1267523 () Bool)

(assert (=> start!118098 m!1267523))

(declare-fun m!1267525 () Bool)

(assert (=> b!1382316 m!1267525))

(check-sat (not b!1382315) (not b!1382317) (not start!118098) (not b!1382316))
