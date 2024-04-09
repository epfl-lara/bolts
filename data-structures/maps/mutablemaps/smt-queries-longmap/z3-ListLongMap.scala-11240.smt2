; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131106 () Bool)

(assert start!131106)

(declare-fun b!1537756 () Bool)

(declare-fun res!1054982 () Bool)

(declare-fun e!855740 () Bool)

(assert (=> b!1537756 (=> (not res!1054982) (not e!855740))))

(declare-datatypes ((array!102131 0))(
  ( (array!102132 (arr!49277 (Array (_ BitVec 32) (_ BitVec 64))) (size!49828 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102131)

(declare-datatypes ((List!35931 0))(
  ( (Nil!35928) (Cons!35927 (h!37373 (_ BitVec 64)) (t!50632 List!35931)) )
))
(declare-fun arrayNoDuplicates!0 (array!102131 (_ BitVec 32) List!35931) Bool)

(assert (=> b!1537756 (= res!1054982 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35928))))

(declare-fun b!1537757 () Bool)

(declare-fun res!1054984 () Bool)

(assert (=> b!1537757 (=> (not res!1054984) (not e!855740))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102131 (_ BitVec 32)) Bool)

(assert (=> b!1537757 (= res!1054984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537758 () Bool)

(declare-fun res!1054985 () Bool)

(assert (=> b!1537758 (=> (not res!1054985) (not e!855740))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537758 (= res!1054985 (validKeyInArray!0 (select (arr!49277 a!2792) i!951)))))

(declare-fun b!1537759 () Bool)

(declare-fun res!1054981 () Bool)

(assert (=> b!1537759 (=> (not res!1054981) (not e!855740))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1537759 (= res!1054981 (and (= (size!49828 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49828 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49828 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537760 () Bool)

(declare-fun res!1054980 () Bool)

(assert (=> b!1537760 (=> (not res!1054980) (not e!855740))))

(assert (=> b!1537760 (= res!1054980 (validKeyInArray!0 (select (arr!49277 a!2792) j!64)))))

(declare-fun res!1054986 () Bool)

(assert (=> start!131106 (=> (not res!1054986) (not e!855740))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131106 (= res!1054986 (validMask!0 mask!2480))))

(assert (=> start!131106 e!855740))

(assert (=> start!131106 true))

(declare-fun array_inv!38222 (array!102131) Bool)

(assert (=> start!131106 (array_inv!38222 a!2792)))

(declare-fun b!1537761 () Bool)

(declare-fun res!1054983 () Bool)

(assert (=> b!1537761 (=> (not res!1054983) (not e!855740))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1537761 (= res!1054983 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49828 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49828 a!2792)) (= (select (arr!49277 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537762 () Bool)

(assert (=> b!1537762 (= e!855740 false)))

(declare-datatypes ((SeekEntryResult!13426 0))(
  ( (MissingZero!13426 (index!56098 (_ BitVec 32))) (Found!13426 (index!56099 (_ BitVec 32))) (Intermediate!13426 (undefined!14238 Bool) (index!56100 (_ BitVec 32)) (x!137839 (_ BitVec 32))) (Undefined!13426) (MissingVacant!13426 (index!56101 (_ BitVec 32))) )
))
(declare-fun lt!664720 () SeekEntryResult!13426)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102131 (_ BitVec 32)) SeekEntryResult!13426)

(assert (=> b!1537762 (= lt!664720 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49277 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!131106 res!1054986) b!1537759))

(assert (= (and b!1537759 res!1054981) b!1537758))

(assert (= (and b!1537758 res!1054985) b!1537760))

(assert (= (and b!1537760 res!1054980) b!1537757))

(assert (= (and b!1537757 res!1054984) b!1537756))

(assert (= (and b!1537756 res!1054982) b!1537761))

(assert (= (and b!1537761 res!1054983) b!1537762))

(declare-fun m!1420313 () Bool)

(assert (=> b!1537756 m!1420313))

(declare-fun m!1420315 () Bool)

(assert (=> b!1537760 m!1420315))

(assert (=> b!1537760 m!1420315))

(declare-fun m!1420317 () Bool)

(assert (=> b!1537760 m!1420317))

(assert (=> b!1537762 m!1420315))

(assert (=> b!1537762 m!1420315))

(declare-fun m!1420319 () Bool)

(assert (=> b!1537762 m!1420319))

(declare-fun m!1420321 () Bool)

(assert (=> start!131106 m!1420321))

(declare-fun m!1420323 () Bool)

(assert (=> start!131106 m!1420323))

(declare-fun m!1420325 () Bool)

(assert (=> b!1537761 m!1420325))

(declare-fun m!1420327 () Bool)

(assert (=> b!1537758 m!1420327))

(assert (=> b!1537758 m!1420327))

(declare-fun m!1420329 () Bool)

(assert (=> b!1537758 m!1420329))

(declare-fun m!1420331 () Bool)

(assert (=> b!1537757 m!1420331))

(check-sat (not b!1537757) (not b!1537756) (not b!1537762) (not b!1537760) (not start!131106) (not b!1537758))
