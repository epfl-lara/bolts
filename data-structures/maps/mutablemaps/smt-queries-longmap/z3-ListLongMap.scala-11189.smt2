; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130800 () Bool)

(assert start!130800)

(declare-fun b!1533509 () Bool)

(declare-fun res!1050741 () Bool)

(declare-fun e!854236 () Bool)

(assert (=> b!1533509 (=> (not res!1050741) (not e!854236))))

(declare-datatypes ((array!101825 0))(
  ( (array!101826 (arr!49124 (Array (_ BitVec 32) (_ BitVec 64))) (size!49675 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101825)

(declare-datatypes ((List!35778 0))(
  ( (Nil!35775) (Cons!35774 (h!37220 (_ BitVec 64)) (t!50479 List!35778)) )
))
(declare-fun arrayNoDuplicates!0 (array!101825 (_ BitVec 32) List!35778) Bool)

(assert (=> b!1533509 (= res!1050741 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35775))))

(declare-fun b!1533510 () Bool)

(declare-fun res!1050734 () Bool)

(assert (=> b!1533510 (=> (not res!1050734) (not e!854236))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533510 (= res!1050734 (validKeyInArray!0 (select (arr!49124 a!2792) i!951)))))

(declare-fun b!1533511 () Bool)

(declare-fun res!1050737 () Bool)

(assert (=> b!1533511 (=> (not res!1050737) (not e!854236))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533511 (= res!1050737 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49675 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49675 a!2792)) (= (select (arr!49124 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533513 () Bool)

(declare-fun res!1050740 () Bool)

(assert (=> b!1533513 (=> (not res!1050740) (not e!854236))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1533513 (= res!1050740 (and (= (size!49675 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49675 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49675 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533514 () Bool)

(declare-fun res!1050733 () Bool)

(assert (=> b!1533514 (=> (not res!1050733) (not e!854236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101825 (_ BitVec 32)) Bool)

(assert (=> b!1533514 (= res!1050733 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533515 () Bool)

(assert (=> b!1533515 (= e!854236 (not (validKeyInArray!0 (select (store (arr!49124 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))))

(declare-fun b!1533516 () Bool)

(declare-fun res!1050739 () Bool)

(assert (=> b!1533516 (=> (not res!1050739) (not e!854236))))

(declare-datatypes ((SeekEntryResult!13279 0))(
  ( (MissingZero!13279 (index!55510 (_ BitVec 32))) (Found!13279 (index!55511 (_ BitVec 32))) (Intermediate!13279 (undefined!14091 Bool) (index!55512 (_ BitVec 32)) (x!137284 (_ BitVec 32))) (Undefined!13279) (MissingVacant!13279 (index!55513 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101825 (_ BitVec 32)) SeekEntryResult!13279)

(assert (=> b!1533516 (= res!1050739 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49124 a!2792) j!64) a!2792 mask!2480) (Found!13279 j!64)))))

(declare-fun b!1533517 () Bool)

(declare-fun res!1050738 () Bool)

(assert (=> b!1533517 (=> (not res!1050738) (not e!854236))))

(assert (=> b!1533517 (= res!1050738 (validKeyInArray!0 (select (arr!49124 a!2792) j!64)))))

(declare-fun res!1050736 () Bool)

(assert (=> start!130800 (=> (not res!1050736) (not e!854236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130800 (= res!1050736 (validMask!0 mask!2480))))

(assert (=> start!130800 e!854236))

(assert (=> start!130800 true))

(declare-fun array_inv!38069 (array!101825) Bool)

(assert (=> start!130800 (array_inv!38069 a!2792)))

(declare-fun b!1533512 () Bool)

(declare-fun res!1050735 () Bool)

(assert (=> b!1533512 (=> (not res!1050735) (not e!854236))))

(assert (=> b!1533512 (= res!1050735 (and (= (select (arr!49124 a!2792) index!463) (select (arr!49124 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (= (select (store (arr!49124 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130800 res!1050736) b!1533513))

(assert (= (and b!1533513 res!1050740) b!1533510))

(assert (= (and b!1533510 res!1050734) b!1533517))

(assert (= (and b!1533517 res!1050738) b!1533514))

(assert (= (and b!1533514 res!1050733) b!1533509))

(assert (= (and b!1533509 res!1050741) b!1533511))

(assert (= (and b!1533511 res!1050737) b!1533516))

(assert (= (and b!1533516 res!1050739) b!1533512))

(assert (= (and b!1533512 res!1050735) b!1533515))

(declare-fun m!1416249 () Bool)

(assert (=> b!1533509 m!1416249))

(declare-fun m!1416251 () Bool)

(assert (=> b!1533514 m!1416251))

(declare-fun m!1416253 () Bool)

(assert (=> b!1533517 m!1416253))

(assert (=> b!1533517 m!1416253))

(declare-fun m!1416255 () Bool)

(assert (=> b!1533517 m!1416255))

(declare-fun m!1416257 () Bool)

(assert (=> b!1533512 m!1416257))

(assert (=> b!1533512 m!1416253))

(declare-fun m!1416259 () Bool)

(assert (=> b!1533512 m!1416259))

(declare-fun m!1416261 () Bool)

(assert (=> b!1533512 m!1416261))

(declare-fun m!1416263 () Bool)

(assert (=> b!1533510 m!1416263))

(assert (=> b!1533510 m!1416263))

(declare-fun m!1416265 () Bool)

(assert (=> b!1533510 m!1416265))

(assert (=> b!1533516 m!1416253))

(assert (=> b!1533516 m!1416253))

(declare-fun m!1416267 () Bool)

(assert (=> b!1533516 m!1416267))

(declare-fun m!1416269 () Bool)

(assert (=> b!1533511 m!1416269))

(declare-fun m!1416271 () Bool)

(assert (=> start!130800 m!1416271))

(declare-fun m!1416273 () Bool)

(assert (=> start!130800 m!1416273))

(assert (=> b!1533515 m!1416259))

(declare-fun m!1416275 () Bool)

(assert (=> b!1533515 m!1416275))

(assert (=> b!1533515 m!1416275))

(declare-fun m!1416277 () Bool)

(assert (=> b!1533515 m!1416277))

(check-sat (not b!1533514) (not b!1533517) (not b!1533509) (not start!130800) (not b!1533510) (not b!1533516) (not b!1533515))
(check-sat)
