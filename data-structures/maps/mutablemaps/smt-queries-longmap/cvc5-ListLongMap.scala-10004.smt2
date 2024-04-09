; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!118102 () Bool)

(assert start!118102)

(declare-fun b!1382339 () Bool)

(declare-fun res!924041 () Bool)

(declare-fun e!783547 () Bool)

(assert (=> b!1382339 (=> (not res!924041) (not e!783547))))

(declare-datatypes ((array!94382 0))(
  ( (array!94383 (arr!45568 (Array (_ BitVec 32) (_ BitVec 64))) (size!46119 (_ BitVec 32))) )
))
(declare-fun a!2971 () array!94382)

(declare-fun i!1094 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1382339 (= res!924041 (validKeyInArray!0 (select (arr!45568 a!2971) i!1094)))))

(declare-fun b!1382338 () Bool)

(declare-fun res!924042 () Bool)

(assert (=> b!1382338 (=> (not res!924042) (not e!783547))))

(declare-fun mask!3034 () (_ BitVec 32))

(assert (=> b!1382338 (= res!924042 (and (= (size!46119 a!2971) (bvadd #b00000000000000000000000000000001 mask!3034)) (bvsge i!1094 #b00000000000000000000000000000000) (bvslt i!1094 (size!46119 a!2971))))))

(declare-fun b!1382341 () Bool)

(assert (=> b!1382341 (= e!783547 false)))

(declare-fun lt!608362 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!94382 (_ BitVec 32)) Bool)

(assert (=> b!1382341 (= lt!608362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2971 mask!3034))))

(declare-fun b!1382340 () Bool)

(declare-fun res!924040 () Bool)

(assert (=> b!1382340 (=> (not res!924040) (not e!783547))))

(declare-datatypes ((List!32282 0))(
  ( (Nil!32279) (Cons!32278 (h!33487 (_ BitVec 64)) (t!46983 List!32282)) )
))
(declare-fun arrayNoDuplicates!0 (array!94382 (_ BitVec 32) List!32282) Bool)

(assert (=> b!1382340 (= res!924040 (arrayNoDuplicates!0 a!2971 #b00000000000000000000000000000000 Nil!32279))))

(declare-fun res!924039 () Bool)

(assert (=> start!118102 (=> (not res!924039) (not e!783547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!118102 (= res!924039 (validMask!0 mask!3034))))

(assert (=> start!118102 e!783547))

(assert (=> start!118102 true))

(declare-fun array_inv!34513 (array!94382) Bool)

(assert (=> start!118102 (array_inv!34513 a!2971)))

(assert (= (and start!118102 res!924039) b!1382338))

(assert (= (and b!1382338 res!924042) b!1382339))

(assert (= (and b!1382339 res!924041) b!1382340))

(assert (= (and b!1382340 res!924040) b!1382341))

(declare-fun m!1267539 () Bool)

(assert (=> b!1382339 m!1267539))

(assert (=> b!1382339 m!1267539))

(declare-fun m!1267541 () Bool)

(assert (=> b!1382339 m!1267541))

(declare-fun m!1267543 () Bool)

(assert (=> b!1382341 m!1267543))

(declare-fun m!1267545 () Bool)

(assert (=> b!1382340 m!1267545))

(declare-fun m!1267547 () Bool)

(assert (=> start!118102 m!1267547))

(declare-fun m!1267549 () Bool)

(assert (=> start!118102 m!1267549))

(push 1)

(assert (not b!1382341))

(assert (not start!118102))

(assert (not b!1382340))

(assert (not b!1382339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

