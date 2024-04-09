; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118068 () Bool)

(assert start!118068)

(declare-fun res!923836 () Bool)

(declare-fun e!783446 () Bool)

(assert (=> start!118068 (=> (not res!923836) (not e!783446))))

(declare-fun mask!3034 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118068 (= res!923836 (validMask!0 mask!3034))))

(assert (=> start!118068 e!783446))

(assert (=> start!118068 true))

(declare-datatypes ((array!94348 0))(
  ( (array!94349 (arr!45551 (Array (_ BitVec 32) (_ BitVec 64))) (size!46102 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94348)

(declare-fun array_inv!34496 (array!94348) Bool)

(assert (=> start!118068 (array_inv!34496 a!2971)))

(declare-fun b!1382134 () Bool)

(declare-fun res!923835 () Bool)

(assert (=> b!1382134 (=> (not res!923835) (not e!783446))))

(declare-fun i!1094 () (_ BitVec 32))

(assert (=> b!1382134 (= res!923835 (and (= (size!46102 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46102 a!2971))))))

(declare-fun b!1382135 () Bool)

(declare-fun res!923837 () Bool)

(assert (=> b!1382135 (=> (not res!923837) (not e!783446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382135 (= res!923837 (validKeyInArray!0 (select (arr!45551 a!2971) i!1094)))))

(declare-fun b!1382137 () Bool)

(assert (=> b!1382137 (= e!783446 false)))

(declare-fun lt!608311 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94348 (_ BitVec 32)) Bool)

(assert (=> b!1382137 (= lt!608311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382136 () Bool)

(declare-fun res!923838 () Bool)

(assert (=> b!1382136 (=> (not res!923838) (not e!783446))))

(declare-datatypes ((List!32265 0))(
  ( (Nil!32262) (Cons!32261 (h!33470 (_ BitVec 64)) (t!46966 List!32265)) )
))
(declare-fun arrayNoDuplicates!0 (array!94348 (_ BitVec 32) List!32265) Bool)

(assert (=> b!1382136 (= res!923838 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32262))))

(assert (= (and start!118068 res!923836) b!1382134))

(assert (= (and b!1382134 res!923835) b!1382135))

(assert (= (and b!1382135 res!923837) b!1382136))

(assert (= (and b!1382136 res!923838) b!1382137))

(declare-fun m!1267335 () Bool)

(assert (=> start!118068 m!1267335))

(declare-fun m!1267337 () Bool)

(assert (=> start!118068 m!1267337))

(declare-fun m!1267339 () Bool)

(assert (=> b!1382135 m!1267339))

(assert (=> b!1382135 m!1267339))

(declare-fun m!1267341 () Bool)

(assert (=> b!1382135 m!1267341))

(declare-fun m!1267343 () Bool)

(assert (=> b!1382137 m!1267343))

(declare-fun m!1267345 () Bool)

(assert (=> b!1382136 m!1267345))

(check-sat (not b!1382135) (not start!118068) (not b!1382136) (not b!1382137))
