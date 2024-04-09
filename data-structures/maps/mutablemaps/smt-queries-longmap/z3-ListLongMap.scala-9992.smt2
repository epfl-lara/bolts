; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118002 () Bool)

(assert start!118002)

(declare-fun b!1381757 () Bool)

(declare-fun res!923493 () Bool)

(declare-fun e!783274 () Bool)

(assert (=> b!1381757 (=> (not res!923493) (not e!783274))))

(declare-datatypes ((array!94309 0))(
  ( (array!94310 (arr!45533 (Array (_ BitVec 32) (_ BitVec 64))) (size!46084 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94309)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1381757 (= res!923493 (validKeyInArray!0 (select (arr!45533 a!2971) i!1094)))))

(declare-fun b!1381756 () Bool)

(declare-fun res!923495 () Bool)

(assert (=> b!1381756 (=> (not res!923495) (not e!783274))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1381756 (= res!923495 (and (= (size!46084 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46084 a!2971))))))

(declare-fun b!1381759 () Bool)

(assert (=> b!1381759 (= e!783274 false)))

(declare-fun lt!608239 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94309 (_ BitVec 32)) Bool)

(assert (=> b!1381759 (= lt!608239 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1381758 () Bool)

(declare-fun res!923496 () Bool)

(assert (=> b!1381758 (=> (not res!923496) (not e!783274))))

(declare-datatypes ((List!32247 0))(
  ( (Nil!32244) (Cons!32243 (h!33452 (_ BitVec 64)) (t!46948 List!32247)) )
))
(declare-fun arrayNoDuplicates!0 (array!94309 (_ BitVec 32) List!32247) Bool)

(assert (=> b!1381758 (= res!923496 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32244))))

(declare-fun res!923494 () Bool)

(assert (=> start!118002 (=> (not res!923494) (not e!783274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118002 (= res!923494 (validMask!0 mask!3034))))

(assert (=> start!118002 e!783274))

(assert (=> start!118002 true))

(declare-fun array_inv!34478 (array!94309) Bool)

(assert (=> start!118002 (array_inv!34478 a!2971)))

(assert (= (and start!118002 res!923494) b!1381756))

(assert (= (and b!1381756 res!923495) b!1381757))

(assert (= (and b!1381757 res!923493) b!1381758))

(assert (= (and b!1381758 res!923496) b!1381759))

(declare-fun m!1266999 () Bool)

(assert (=> b!1381757 m!1266999))

(assert (=> b!1381757 m!1266999))

(declare-fun m!1267001 () Bool)

(assert (=> b!1381757 m!1267001))

(declare-fun m!1267003 () Bool)

(assert (=> b!1381759 m!1267003))

(declare-fun m!1267005 () Bool)

(assert (=> b!1381758 m!1267005))

(declare-fun m!1267007 () Bool)

(assert (=> start!118002 m!1267007))

(declare-fun m!1267009 () Bool)

(assert (=> start!118002 m!1267009))

(check-sat (not start!118002) (not b!1381758) (not b!1381757) (not b!1381759))
