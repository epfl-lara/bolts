; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131022 () Bool)

(assert start!131022)

(declare-fun b!1536642 () Bool)

(declare-fun res!1053876 () Bool)

(declare-fun e!855287 () Bool)

(assert (=> b!1536642 (=> (not res!1053876) (not e!855287))))

(declare-datatypes ((array!102047 0))(
  ( (array!102048 (arr!49235 (Array (_ BitVec 32) (_ BitVec 64))) (size!49786 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102047)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102047 (_ BitVec 32)) Bool)

(assert (=> b!1536642 (= res!1053876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536643 () Bool)

(declare-fun res!1053874 () Bool)

(assert (=> b!1536643 (=> (not res!1053874) (not e!855287))))

(declare-datatypes ((List!35889 0))(
  ( (Nil!35886) (Cons!35885 (h!37331 (_ BitVec 64)) (t!50590 List!35889)) )
))
(declare-fun arrayNoDuplicates!0 (array!102047 (_ BitVec 32) List!35889) Bool)

(assert (=> b!1536643 (= res!1053874 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35886))))

(declare-fun b!1536644 () Bool)

(declare-fun e!855289 () Bool)

(declare-fun e!855288 () Bool)

(assert (=> b!1536644 (= e!855289 e!855288)))

(declare-fun res!1053872 () Bool)

(assert (=> b!1536644 (=> (not res!1053872) (not e!855288))))

(declare-fun lt!664395 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(assert (=> b!1536644 (= res!1053872 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664395 #b00000000000000000000000000000000) (bvslt lt!664395 (size!49786 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536644 (= lt!664395 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536645 () Bool)

(declare-fun res!1053875 () Bool)

(assert (=> b!1536645 (=> (not res!1053875) (not e!855289))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1536645 (= res!1053875 (not (= (select (arr!49235 a!2792) index!463) (select (arr!49235 a!2792) j!64))))))

(declare-fun b!1536646 () Bool)

(declare-fun e!855290 () Bool)

(assert (=> b!1536646 (= e!855290 (not true))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13390 0))(
  ( (MissingZero!13390 (index!55954 (_ BitVec 32))) (Found!13390 (index!55955 (_ BitVec 32))) (Intermediate!13390 (undefined!14202 Bool) (index!55956 (_ BitVec 32)) (x!137691 (_ BitVec 32))) (Undefined!13390) (MissingVacant!13390 (index!55957 (_ BitVec 32))) )
))
(declare-fun lt!664394 () SeekEntryResult!13390)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102047 (_ BitVec 32)) SeekEntryResult!13390)

(assert (=> b!1536646 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664395 vacantIndex!5 (select (store (arr!49235 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102048 (store (arr!49235 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49786 a!2792)) mask!2480) lt!664394)))

(declare-datatypes ((Unit!51304 0))(
  ( (Unit!51305) )
))
(declare-fun lt!664393 () Unit!51304)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102047 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51304)

(assert (=> b!1536646 (= lt!664393 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664395 vacantIndex!5 mask!2480))))

(declare-fun b!1536647 () Bool)

(declare-fun res!1053869 () Bool)

(assert (=> b!1536647 (=> (not res!1053869) (not e!855287))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536647 (= res!1053869 (validKeyInArray!0 (select (arr!49235 a!2792) i!951)))))

(declare-fun res!1053868 () Bool)

(assert (=> start!131022 (=> (not res!1053868) (not e!855287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131022 (= res!1053868 (validMask!0 mask!2480))))

(assert (=> start!131022 e!855287))

(assert (=> start!131022 true))

(declare-fun array_inv!38180 (array!102047) Bool)

(assert (=> start!131022 (array_inv!38180 a!2792)))

(declare-fun b!1536648 () Bool)

(declare-fun res!1053871 () Bool)

(assert (=> b!1536648 (=> (not res!1053871) (not e!855287))))

(assert (=> b!1536648 (= res!1053871 (validKeyInArray!0 (select (arr!49235 a!2792) j!64)))))

(declare-fun b!1536649 () Bool)

(assert (=> b!1536649 (= e!855287 e!855289)))

(declare-fun res!1053870 () Bool)

(assert (=> b!1536649 (=> (not res!1053870) (not e!855289))))

(declare-fun lt!664396 () SeekEntryResult!13390)

(assert (=> b!1536649 (= res!1053870 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49235 a!2792) j!64) a!2792 mask!2480) lt!664396))))

(assert (=> b!1536649 (= lt!664396 (Found!13390 j!64))))

(declare-fun b!1536650 () Bool)

(declare-fun res!1053866 () Bool)

(assert (=> b!1536650 (=> (not res!1053866) (not e!855287))))

(assert (=> b!1536650 (= res!1053866 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49786 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49786 a!2792)) (= (select (arr!49235 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536651 () Bool)

(declare-fun res!1053873 () Bool)

(assert (=> b!1536651 (=> (not res!1053873) (not e!855287))))

(assert (=> b!1536651 (= res!1053873 (and (= (size!49786 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49786 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49786 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536652 () Bool)

(assert (=> b!1536652 (= e!855288 e!855290)))

(declare-fun res!1053867 () Bool)

(assert (=> b!1536652 (=> (not res!1053867) (not e!855290))))

(assert (=> b!1536652 (= res!1053867 (= lt!664394 lt!664396))))

(assert (=> b!1536652 (= lt!664394 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664395 vacantIndex!5 (select (arr!49235 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!131022 res!1053868) b!1536651))

(assert (= (and b!1536651 res!1053873) b!1536647))

(assert (= (and b!1536647 res!1053869) b!1536648))

(assert (= (and b!1536648 res!1053871) b!1536642))

(assert (= (and b!1536642 res!1053876) b!1536643))

(assert (= (and b!1536643 res!1053874) b!1536650))

(assert (= (and b!1536650 res!1053866) b!1536649))

(assert (= (and b!1536649 res!1053870) b!1536645))

(assert (= (and b!1536645 res!1053875) b!1536644))

(assert (= (and b!1536644 res!1053872) b!1536652))

(assert (= (and b!1536652 res!1053867) b!1536646))

(declare-fun m!1419175 () Bool)

(assert (=> b!1536644 m!1419175))

(declare-fun m!1419177 () Bool)

(assert (=> b!1536649 m!1419177))

(assert (=> b!1536649 m!1419177))

(declare-fun m!1419179 () Bool)

(assert (=> b!1536649 m!1419179))

(assert (=> b!1536648 m!1419177))

(assert (=> b!1536648 m!1419177))

(declare-fun m!1419181 () Bool)

(assert (=> b!1536648 m!1419181))

(declare-fun m!1419183 () Bool)

(assert (=> b!1536647 m!1419183))

(assert (=> b!1536647 m!1419183))

(declare-fun m!1419185 () Bool)

(assert (=> b!1536647 m!1419185))

(declare-fun m!1419187 () Bool)

(assert (=> b!1536646 m!1419187))

(declare-fun m!1419189 () Bool)

(assert (=> b!1536646 m!1419189))

(assert (=> b!1536646 m!1419189))

(declare-fun m!1419191 () Bool)

(assert (=> b!1536646 m!1419191))

(declare-fun m!1419193 () Bool)

(assert (=> b!1536646 m!1419193))

(assert (=> b!1536652 m!1419177))

(assert (=> b!1536652 m!1419177))

(declare-fun m!1419195 () Bool)

(assert (=> b!1536652 m!1419195))

(declare-fun m!1419197 () Bool)

(assert (=> b!1536642 m!1419197))

(declare-fun m!1419199 () Bool)

(assert (=> b!1536650 m!1419199))

(declare-fun m!1419201 () Bool)

(assert (=> start!131022 m!1419201))

(declare-fun m!1419203 () Bool)

(assert (=> start!131022 m!1419203))

(declare-fun m!1419205 () Bool)

(assert (=> b!1536643 m!1419205))

(declare-fun m!1419207 () Bool)

(assert (=> b!1536645 m!1419207))

(assert (=> b!1536645 m!1419177))

(check-sat (not b!1536648) (not b!1536649) (not start!131022) (not b!1536643) (not b!1536647) (not b!1536642) (not b!1536644) (not b!1536646) (not b!1536652))
(check-sat)
