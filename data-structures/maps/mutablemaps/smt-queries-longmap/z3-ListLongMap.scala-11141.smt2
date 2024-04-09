; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130242 () Bool)

(assert start!130242)

(declare-fun b!1528186 () Bool)

(declare-fun e!851770 () Bool)

(declare-fun e!851768 () Bool)

(assert (=> b!1528186 (= e!851770 e!851768)))

(declare-fun res!1046041 () Bool)

(assert (=> b!1528186 (=> res!1046041 e!851768)))

(declare-datatypes ((SeekEntryResult!13166 0))(
  ( (MissingZero!13166 (index!55058 (_ BitVec 32))) (Found!13166 (index!55059 (_ BitVec 32))) (Intermediate!13166 (undefined!13978 Bool) (index!55060 (_ BitVec 32)) (x!136760 (_ BitVec 32))) (Undefined!13166) (MissingVacant!13166 (index!55061 (_ BitVec 32))) )
))
(declare-fun lt!661813 () SeekEntryResult!13166)

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1528186 (= res!1046041 (not (= lt!661813 (Found!13166 j!70))))))

(declare-fun lt!661804 () SeekEntryResult!13166)

(declare-fun lt!661811 () SeekEntryResult!13166)

(assert (=> b!1528186 (= lt!661804 lt!661811)))

(declare-fun lt!661809 () (_ BitVec 64))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((array!101519 0))(
  ( (array!101520 (arr!48980 (Array (_ BitVec 32) (_ BitVec 64))) (size!49531 (_ BitVec 32))) )
))
(declare-fun lt!661812 () array!101519)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101519 (_ BitVec 32)) SeekEntryResult!13166)

(assert (=> b!1528186 (= lt!661811 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661809 lt!661812 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101519 (_ BitVec 32)) SeekEntryResult!13166)

(assert (=> b!1528186 (= lt!661804 (seekEntryOrOpen!0 lt!661809 lt!661812 mask!2512))))

(declare-fun lt!661810 () SeekEntryResult!13166)

(assert (=> b!1528186 (= lt!661810 lt!661813)))

(declare-fun a!2804 () array!101519)

(assert (=> b!1528186 (= lt!661813 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48980 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528186 (= lt!661810 (seekEntryOrOpen!0 (select (arr!48980 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528188 () Bool)

(declare-fun res!1046035 () Bool)

(declare-fun e!851766 () Bool)

(assert (=> b!1528188 (=> (not res!1046035) (not e!851766))))

(declare-fun lt!661807 () SeekEntryResult!13166)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101519 (_ BitVec 32)) SeekEntryResult!13166)

(assert (=> b!1528188 (= res!1046035 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48980 a!2804) j!70) a!2804 mask!2512) lt!661807))))

(declare-fun b!1528189 () Bool)

(declare-fun res!1046034 () Bool)

(declare-fun e!851769 () Bool)

(assert (=> b!1528189 (=> (not res!1046034) (not e!851769))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528189 (= res!1046034 (validKeyInArray!0 (select (arr!48980 a!2804) j!70)))))

(declare-fun b!1528190 () Bool)

(assert (=> b!1528190 (= e!851768 true)))

(assert (=> b!1528190 (= lt!661811 lt!661813)))

(declare-datatypes ((Unit!51072 0))(
  ( (Unit!51073) )
))
(declare-fun lt!661808 () Unit!51072)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51072)

(assert (=> b!1528190 (= lt!661808 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528191 () Bool)

(assert (=> b!1528191 (= e!851769 e!851766)))

(declare-fun res!1046038 () Bool)

(assert (=> b!1528191 (=> (not res!1046038) (not e!851766))))

(declare-fun lt!661805 () SeekEntryResult!13166)

(assert (=> b!1528191 (= res!1046038 (= lt!661805 lt!661807))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1528191 (= lt!661807 (Intermediate!13166 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528191 (= lt!661805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48980 a!2804) j!70) mask!2512) (select (arr!48980 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528192 () Bool)

(declare-fun res!1046037 () Bool)

(assert (=> b!1528192 (=> (not res!1046037) (not e!851769))))

(assert (=> b!1528192 (= res!1046037 (and (= (size!49531 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49531 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49531 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528193 () Bool)

(declare-fun res!1046040 () Bool)

(assert (=> b!1528193 (=> (not res!1046040) (not e!851769))))

(assert (=> b!1528193 (= res!1046040 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49531 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49531 a!2804))))))

(declare-fun b!1528194 () Bool)

(declare-fun res!1046042 () Bool)

(assert (=> b!1528194 (=> (not res!1046042) (not e!851769))))

(declare-datatypes ((List!35643 0))(
  ( (Nil!35640) (Cons!35639 (h!37076 (_ BitVec 64)) (t!50344 List!35643)) )
))
(declare-fun arrayNoDuplicates!0 (array!101519 (_ BitVec 32) List!35643) Bool)

(assert (=> b!1528194 (= res!1046042 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35640))))

(declare-fun b!1528187 () Bool)

(declare-fun res!1046033 () Bool)

(assert (=> b!1528187 (=> (not res!1046033) (not e!851769))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101519 (_ BitVec 32)) Bool)

(assert (=> b!1528187 (= res!1046033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1046043 () Bool)

(assert (=> start!130242 (=> (not res!1046043) (not e!851769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130242 (= res!1046043 (validMask!0 mask!2512))))

(assert (=> start!130242 e!851769))

(assert (=> start!130242 true))

(declare-fun array_inv!37925 (array!101519) Bool)

(assert (=> start!130242 (array_inv!37925 a!2804)))

(declare-fun b!1528195 () Bool)

(declare-fun e!851765 () Bool)

(assert (=> b!1528195 (= e!851766 e!851765)))

(declare-fun res!1046039 () Bool)

(assert (=> b!1528195 (=> (not res!1046039) (not e!851765))))

(assert (=> b!1528195 (= res!1046039 (= lt!661805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661809 mask!2512) lt!661809 lt!661812 mask!2512)))))

(assert (=> b!1528195 (= lt!661809 (select (store (arr!48980 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528195 (= lt!661812 (array!101520 (store (arr!48980 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49531 a!2804)))))

(declare-fun b!1528196 () Bool)

(declare-fun e!851767 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101519 (_ BitVec 32)) SeekEntryResult!13166)

(assert (=> b!1528196 (= e!851767 (= (seekEntry!0 (select (arr!48980 a!2804) j!70) a!2804 mask!2512) (Found!13166 j!70)))))

(declare-fun b!1528197 () Bool)

(declare-fun res!1046036 () Bool)

(assert (=> b!1528197 (=> (not res!1046036) (not e!851769))))

(assert (=> b!1528197 (= res!1046036 (validKeyInArray!0 (select (arr!48980 a!2804) i!961)))))

(declare-fun b!1528198 () Bool)

(assert (=> b!1528198 (= e!851765 (not e!851770))))

(declare-fun res!1046031 () Bool)

(assert (=> b!1528198 (=> res!1046031 e!851770)))

(assert (=> b!1528198 (= res!1046031 (or (not (= (select (arr!48980 a!2804) j!70) lt!661809)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48980 a!2804) index!487) (select (arr!48980 a!2804) j!70)) (not (= (select (arr!48980 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1528198 e!851767))

(declare-fun res!1046032 () Bool)

(assert (=> b!1528198 (=> (not res!1046032) (not e!851767))))

(assert (=> b!1528198 (= res!1046032 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!661806 () Unit!51072)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101519 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51072)

(assert (=> b!1528198 (= lt!661806 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130242 res!1046043) b!1528192))

(assert (= (and b!1528192 res!1046037) b!1528197))

(assert (= (and b!1528197 res!1046036) b!1528189))

(assert (= (and b!1528189 res!1046034) b!1528187))

(assert (= (and b!1528187 res!1046033) b!1528194))

(assert (= (and b!1528194 res!1046042) b!1528193))

(assert (= (and b!1528193 res!1046040) b!1528191))

(assert (= (and b!1528191 res!1046038) b!1528188))

(assert (= (and b!1528188 res!1046035) b!1528195))

(assert (= (and b!1528195 res!1046039) b!1528198))

(assert (= (and b!1528198 res!1046032) b!1528196))

(assert (= (and b!1528198 (not res!1046031)) b!1528186))

(assert (= (and b!1528186 (not res!1046041)) b!1528190))

(declare-fun m!1411041 () Bool)

(assert (=> b!1528196 m!1411041))

(assert (=> b!1528196 m!1411041))

(declare-fun m!1411043 () Bool)

(assert (=> b!1528196 m!1411043))

(declare-fun m!1411045 () Bool)

(assert (=> b!1528187 m!1411045))

(declare-fun m!1411047 () Bool)

(assert (=> b!1528194 m!1411047))

(declare-fun m!1411049 () Bool)

(assert (=> b!1528197 m!1411049))

(assert (=> b!1528197 m!1411049))

(declare-fun m!1411051 () Bool)

(assert (=> b!1528197 m!1411051))

(declare-fun m!1411053 () Bool)

(assert (=> start!130242 m!1411053))

(declare-fun m!1411055 () Bool)

(assert (=> start!130242 m!1411055))

(assert (=> b!1528198 m!1411041))

(declare-fun m!1411057 () Bool)

(assert (=> b!1528198 m!1411057))

(declare-fun m!1411059 () Bool)

(assert (=> b!1528198 m!1411059))

(declare-fun m!1411061 () Bool)

(assert (=> b!1528198 m!1411061))

(assert (=> b!1528188 m!1411041))

(assert (=> b!1528188 m!1411041))

(declare-fun m!1411063 () Bool)

(assert (=> b!1528188 m!1411063))

(assert (=> b!1528186 m!1411041))

(declare-fun m!1411065 () Bool)

(assert (=> b!1528186 m!1411065))

(assert (=> b!1528186 m!1411041))

(declare-fun m!1411067 () Bool)

(assert (=> b!1528186 m!1411067))

(declare-fun m!1411069 () Bool)

(assert (=> b!1528186 m!1411069))

(assert (=> b!1528186 m!1411041))

(declare-fun m!1411071 () Bool)

(assert (=> b!1528186 m!1411071))

(assert (=> b!1528191 m!1411041))

(assert (=> b!1528191 m!1411041))

(declare-fun m!1411073 () Bool)

(assert (=> b!1528191 m!1411073))

(assert (=> b!1528191 m!1411073))

(assert (=> b!1528191 m!1411041))

(declare-fun m!1411075 () Bool)

(assert (=> b!1528191 m!1411075))

(declare-fun m!1411077 () Bool)

(assert (=> b!1528190 m!1411077))

(declare-fun m!1411079 () Bool)

(assert (=> b!1528195 m!1411079))

(assert (=> b!1528195 m!1411079))

(declare-fun m!1411081 () Bool)

(assert (=> b!1528195 m!1411081))

(declare-fun m!1411083 () Bool)

(assert (=> b!1528195 m!1411083))

(declare-fun m!1411085 () Bool)

(assert (=> b!1528195 m!1411085))

(assert (=> b!1528189 m!1411041))

(assert (=> b!1528189 m!1411041))

(declare-fun m!1411087 () Bool)

(assert (=> b!1528189 m!1411087))

(check-sat (not b!1528197) (not b!1528188) (not start!130242) (not b!1528195) (not b!1528198) (not b!1528187) (not b!1528191) (not b!1528189) (not b!1528186) (not b!1528190) (not b!1528194) (not b!1528196))
(check-sat)
