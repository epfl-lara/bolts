; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131014 () Bool)

(assert start!131014)

(declare-fun b!1536503 () Bool)

(declare-fun res!1053730 () Bool)

(declare-fun e!855222 () Bool)

(assert (=> b!1536503 (=> (not res!1053730) (not e!855222))))

(declare-datatypes ((array!102039 0))(
  ( (array!102040 (arr!49231 (Array (_ BitVec 32) (_ BitVec 64))) (size!49782 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102039)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102039 (_ BitVec 32)) Bool)

(assert (=> b!1536503 (= res!1053730 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536504 () Bool)

(declare-fun e!855220 () Bool)

(declare-fun e!855219 () Bool)

(assert (=> b!1536504 (= e!855220 (not e!855219))))

(declare-fun res!1053728 () Bool)

(assert (=> b!1536504 (=> res!1053728 e!855219)))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536504 (= res!1053728 (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (not (= (select (store (arr!49231 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664341 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13386 0))(
  ( (MissingZero!13386 (index!55938 (_ BitVec 32))) (Found!13386 (index!55939 (_ BitVec 32))) (Intermediate!13386 (undefined!14198 Bool) (index!55940 (_ BitVec 32)) (x!137679 (_ BitVec 32))) (Undefined!13386) (MissingVacant!13386 (index!55941 (_ BitVec 32))) )
))
(declare-fun lt!664340 () SeekEntryResult!13386)

(declare-fun lt!664339 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102039 (_ BitVec 32)) SeekEntryResult!13386)

(assert (=> b!1536504 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664341 vacantIndex!5 lt!664339 (array!102040 (store (arr!49231 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49782 a!2792)) mask!2480) lt!664340)))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1536504 (= lt!664339 (select (store (arr!49231 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))

(declare-datatypes ((Unit!51296 0))(
  ( (Unit!51297) )
))
(declare-fun lt!664338 () Unit!51296)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102039 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51296)

(assert (=> b!1536504 (= lt!664338 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664341 vacantIndex!5 mask!2480))))

(declare-fun b!1536505 () Bool)

(declare-fun e!855224 () Bool)

(assert (=> b!1536505 (= e!855222 e!855224)))

(declare-fun res!1053733 () Bool)

(assert (=> b!1536505 (=> (not res!1053733) (not e!855224))))

(declare-fun lt!664342 () SeekEntryResult!13386)

(assert (=> b!1536505 (= res!1053733 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49231 a!2792) j!64) a!2792 mask!2480) lt!664342))))

(assert (=> b!1536505 (= lt!664342 (Found!13386 j!64))))

(declare-fun b!1536506 () Bool)

(declare-fun res!1053736 () Bool)

(assert (=> b!1536506 (=> (not res!1053736) (not e!855224))))

(assert (=> b!1536506 (= res!1053736 (not (= (select (arr!49231 a!2792) index!463) (select (arr!49231 a!2792) j!64))))))

(declare-fun b!1536507 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536507 (= e!855219 (validKeyInArray!0 lt!664339))))

(declare-fun b!1536509 () Bool)

(declare-fun e!855221 () Bool)

(assert (=> b!1536509 (= e!855224 e!855221)))

(declare-fun res!1053731 () Bool)

(assert (=> b!1536509 (=> (not res!1053731) (not e!855221))))

(assert (=> b!1536509 (= res!1053731 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664341 #b00000000000000000000000000000000) (bvslt lt!664341 (size!49782 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536509 (= lt!664341 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536510 () Bool)

(declare-fun res!1053727 () Bool)

(assert (=> b!1536510 (=> (not res!1053727) (not e!855222))))

(assert (=> b!1536510 (= res!1053727 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49782 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49782 a!2792)) (= (select (arr!49231 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536511 () Bool)

(declare-fun res!1053737 () Bool)

(assert (=> b!1536511 (=> (not res!1053737) (not e!855222))))

(declare-datatypes ((List!35885 0))(
  ( (Nil!35882) (Cons!35881 (h!37327 (_ BitVec 64)) (t!50586 List!35885)) )
))
(declare-fun arrayNoDuplicates!0 (array!102039 (_ BitVec 32) List!35885) Bool)

(assert (=> b!1536511 (= res!1053737 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35882))))

(declare-fun b!1536512 () Bool)

(declare-fun res!1053732 () Bool)

(assert (=> b!1536512 (=> (not res!1053732) (not e!855222))))

(assert (=> b!1536512 (= res!1053732 (validKeyInArray!0 (select (arr!49231 a!2792) i!951)))))

(declare-fun b!1536513 () Bool)

(assert (=> b!1536513 (= e!855221 e!855220)))

(declare-fun res!1053735 () Bool)

(assert (=> b!1536513 (=> (not res!1053735) (not e!855220))))

(assert (=> b!1536513 (= res!1053735 (= lt!664340 lt!664342))))

(assert (=> b!1536513 (= lt!664340 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664341 vacantIndex!5 (select (arr!49231 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536514 () Bool)

(declare-fun res!1053734 () Bool)

(assert (=> b!1536514 (=> (not res!1053734) (not e!855222))))

(assert (=> b!1536514 (= res!1053734 (and (= (size!49782 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49782 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49782 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1053738 () Bool)

(assert (=> start!131014 (=> (not res!1053738) (not e!855222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131014 (= res!1053738 (validMask!0 mask!2480))))

(assert (=> start!131014 e!855222))

(assert (=> start!131014 true))

(declare-fun array_inv!38176 (array!102039) Bool)

(assert (=> start!131014 (array_inv!38176 a!2792)))

(declare-fun b!1536508 () Bool)

(declare-fun res!1053729 () Bool)

(assert (=> b!1536508 (=> (not res!1053729) (not e!855222))))

(assert (=> b!1536508 (= res!1053729 (validKeyInArray!0 (select (arr!49231 a!2792) j!64)))))

(assert (= (and start!131014 res!1053738) b!1536514))

(assert (= (and b!1536514 res!1053734) b!1536512))

(assert (= (and b!1536512 res!1053732) b!1536508))

(assert (= (and b!1536508 res!1053729) b!1536503))

(assert (= (and b!1536503 res!1053730) b!1536511))

(assert (= (and b!1536511 res!1053737) b!1536510))

(assert (= (and b!1536510 res!1053727) b!1536505))

(assert (= (and b!1536505 res!1053733) b!1536506))

(assert (= (and b!1536506 res!1053736) b!1536509))

(assert (= (and b!1536509 res!1053731) b!1536513))

(assert (= (and b!1536513 res!1053735) b!1536504))

(assert (= (and b!1536504 (not res!1053728)) b!1536507))

(declare-fun m!1419027 () Bool)

(assert (=> b!1536508 m!1419027))

(assert (=> b!1536508 m!1419027))

(declare-fun m!1419029 () Bool)

(assert (=> b!1536508 m!1419029))

(declare-fun m!1419031 () Bool)

(assert (=> b!1536503 m!1419031))

(declare-fun m!1419033 () Bool)

(assert (=> b!1536511 m!1419033))

(assert (=> b!1536513 m!1419027))

(assert (=> b!1536513 m!1419027))

(declare-fun m!1419035 () Bool)

(assert (=> b!1536513 m!1419035))

(declare-fun m!1419037 () Bool)

(assert (=> b!1536512 m!1419037))

(assert (=> b!1536512 m!1419037))

(declare-fun m!1419039 () Bool)

(assert (=> b!1536512 m!1419039))

(declare-fun m!1419041 () Bool)

(assert (=> b!1536507 m!1419041))

(declare-fun m!1419043 () Bool)

(assert (=> b!1536510 m!1419043))

(declare-fun m!1419045 () Bool)

(assert (=> start!131014 m!1419045))

(declare-fun m!1419047 () Bool)

(assert (=> start!131014 m!1419047))

(declare-fun m!1419049 () Bool)

(assert (=> b!1536509 m!1419049))

(declare-fun m!1419051 () Bool)

(assert (=> b!1536506 m!1419051))

(assert (=> b!1536506 m!1419027))

(declare-fun m!1419053 () Bool)

(assert (=> b!1536504 m!1419053))

(declare-fun m!1419055 () Bool)

(assert (=> b!1536504 m!1419055))

(declare-fun m!1419057 () Bool)

(assert (=> b!1536504 m!1419057))

(declare-fun m!1419059 () Bool)

(assert (=> b!1536504 m!1419059))

(declare-fun m!1419061 () Bool)

(assert (=> b!1536504 m!1419061))

(assert (=> b!1536505 m!1419027))

(assert (=> b!1536505 m!1419027))

(declare-fun m!1419063 () Bool)

(assert (=> b!1536505 m!1419063))

(push 1)

