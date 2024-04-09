; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125150 () Bool)

(assert start!125150)

(declare-fun b!1457122 () Bool)

(declare-fun res!987587 () Bool)

(declare-fun e!819770 () Bool)

(assert (=> b!1457122 (=> (not res!987587) (not e!819770))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1457122 (= res!987587 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457123 () Bool)

(declare-fun res!987591 () Bool)

(declare-fun e!819766 () Bool)

(assert (=> b!1457123 (=> (not res!987591) (not e!819766))))

(declare-datatypes ((array!98515 0))(
  ( (array!98516 (arr!47541 (Array (_ BitVec 32) (_ BitVec 64))) (size!48092 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98515)

(declare-datatypes ((List!34222 0))(
  ( (Nil!34219) (Cons!34218 (h!35568 (_ BitVec 64)) (t!48923 List!34222)) )
))
(declare-fun arrayNoDuplicates!0 (array!98515 (_ BitVec 32) List!34222) Bool)

(assert (=> b!1457123 (= res!987591 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34219))))

(declare-fun e!819772 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1457124 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1457124 (= e!819772 (and (or (= (select (arr!47541 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47541 a!2862) intermediateBeforeIndex!19) (select (arr!47541 a!2862) j!93))) (let ((bdg!53311 (select (store (arr!47541 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47541 a!2862) index!646) bdg!53311) (= (select (arr!47541 a!2862) index!646) (select (arr!47541 a!2862) j!93))) (= (select (arr!47541 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53311 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!638534 () array!98515)

(declare-fun e!819767 () Bool)

(declare-fun b!1457125 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!638539 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11816 0))(
  ( (MissingZero!11816 (index!49655 (_ BitVec 32))) (Found!11816 (index!49656 (_ BitVec 32))) (Intermediate!11816 (undefined!12628 Bool) (index!49657 (_ BitVec 32)) (x!131276 (_ BitVec 32))) (Undefined!11816) (MissingVacant!11816 (index!49658 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98515 (_ BitVec 32)) SeekEntryResult!11816)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98515 (_ BitVec 32)) SeekEntryResult!11816)

(assert (=> b!1457125 (= e!819767 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638539 lt!638534 mask!2687) (seekEntryOrOpen!0 lt!638539 lt!638534 mask!2687)))))

(declare-fun b!1457126 () Bool)

(declare-fun e!819771 () Bool)

(declare-fun lt!638535 () SeekEntryResult!11816)

(declare-fun lt!638533 () (_ BitVec 32))

(assert (=> b!1457126 (= e!819771 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638533 intermediateAfterIndex!19 lt!638539 lt!638534 mask!2687) lt!638535)))))

(declare-fun b!1457127 () Bool)

(declare-fun e!819773 () Bool)

(assert (=> b!1457127 (= e!819770 (not e!819773))))

(declare-fun res!987581 () Bool)

(assert (=> b!1457127 (=> res!987581 e!819773)))

(assert (=> b!1457127 (= res!987581 (or (and (= (select (arr!47541 a!2862) index!646) (select (store (arr!47541 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47541 a!2862) index!646) (select (arr!47541 a!2862) j!93))) (= (select (arr!47541 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457127 e!819772))

(declare-fun res!987578 () Bool)

(assert (=> b!1457127 (=> (not res!987578) (not e!819772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98515 (_ BitVec 32)) Bool)

(assert (=> b!1457127 (= res!987578 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49076 0))(
  ( (Unit!49077) )
))
(declare-fun lt!638537 () Unit!49076)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98515 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49076)

(assert (=> b!1457127 (= lt!638537 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457128 () Bool)

(declare-fun res!987586 () Bool)

(assert (=> b!1457128 (=> (not res!987586) (not e!819766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457128 (= res!987586 (validKeyInArray!0 (select (arr!47541 a!2862) j!93)))))

(declare-fun lt!638536 () SeekEntryResult!11816)

(declare-fun b!1457129 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98515 (_ BitVec 32)) SeekEntryResult!11816)

(assert (=> b!1457129 (= e!819771 (not (= lt!638536 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638533 lt!638539 lt!638534 mask!2687))))))

(declare-fun b!1457130 () Bool)

(declare-fun e!819764 () Bool)

(assert (=> b!1457130 (= e!819766 e!819764)))

(declare-fun res!987583 () Bool)

(assert (=> b!1457130 (=> (not res!987583) (not e!819764))))

(assert (=> b!1457130 (= res!987583 (= (select (store (arr!47541 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457130 (= lt!638534 (array!98516 (store (arr!47541 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48092 a!2862)))))

(declare-fun b!1457131 () Bool)

(declare-fun res!987580 () Bool)

(assert (=> b!1457131 (=> (not res!987580) (not e!819766))))

(assert (=> b!1457131 (= res!987580 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48092 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48092 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48092 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457132 () Bool)

(declare-fun e!819765 () Bool)

(assert (=> b!1457132 (= e!819773 e!819765)))

(declare-fun res!987588 () Bool)

(assert (=> b!1457132 (=> res!987588 e!819765)))

(assert (=> b!1457132 (= res!987588 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638533 #b00000000000000000000000000000000) (bvsge lt!638533 (size!48092 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457132 (= lt!638533 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1457132 (= lt!638535 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638539 lt!638534 mask!2687))))

(assert (=> b!1457132 (= lt!638535 (seekEntryOrOpen!0 lt!638539 lt!638534 mask!2687))))

(declare-fun b!1457133 () Bool)

(assert (=> b!1457133 (= e!819767 (= lt!638536 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638539 lt!638534 mask!2687)))))

(declare-fun b!1457134 () Bool)

(declare-fun e!819769 () Bool)

(assert (=> b!1457134 (= e!819769 e!819770)))

(declare-fun res!987582 () Bool)

(assert (=> b!1457134 (=> (not res!987582) (not e!819770))))

(assert (=> b!1457134 (= res!987582 (= lt!638536 (Intermediate!11816 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457134 (= lt!638536 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638539 mask!2687) lt!638539 lt!638534 mask!2687))))

(assert (=> b!1457134 (= lt!638539 (select (store (arr!47541 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457135 () Bool)

(declare-fun res!987590 () Bool)

(assert (=> b!1457135 (=> (not res!987590) (not e!819772))))

(assert (=> b!1457135 (= res!987590 (= (seekEntryOrOpen!0 (select (arr!47541 a!2862) j!93) a!2862 mask!2687) (Found!11816 j!93)))))

(declare-fun b!1457136 () Bool)

(declare-fun res!987579 () Bool)

(assert (=> b!1457136 (=> (not res!987579) (not e!819766))))

(assert (=> b!1457136 (= res!987579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457137 () Bool)

(assert (=> b!1457137 (= e!819765 true)))

(declare-fun lt!638538 () Bool)

(assert (=> b!1457137 (= lt!638538 e!819771)))

(declare-fun c!134288 () Bool)

(assert (=> b!1457137 (= c!134288 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457138 () Bool)

(declare-fun res!987589 () Bool)

(assert (=> b!1457138 (=> res!987589 e!819765)))

(declare-fun lt!638532 () SeekEntryResult!11816)

(assert (=> b!1457138 (= res!987589 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638533 (select (arr!47541 a!2862) j!93) a!2862 mask!2687) lt!638532)))))

(declare-fun b!1457139 () Bool)

(assert (=> b!1457139 (= e!819764 e!819769)))

(declare-fun res!987584 () Bool)

(assert (=> b!1457139 (=> (not res!987584) (not e!819769))))

(assert (=> b!1457139 (= res!987584 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47541 a!2862) j!93) mask!2687) (select (arr!47541 a!2862) j!93) a!2862 mask!2687) lt!638532))))

(assert (=> b!1457139 (= lt!638532 (Intermediate!11816 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457140 () Bool)

(declare-fun res!987585 () Bool)

(assert (=> b!1457140 (=> (not res!987585) (not e!819769))))

(assert (=> b!1457140 (= res!987585 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47541 a!2862) j!93) a!2862 mask!2687) lt!638532))))

(declare-fun b!1457141 () Bool)

(declare-fun res!987575 () Bool)

(assert (=> b!1457141 (=> (not res!987575) (not e!819770))))

(assert (=> b!1457141 (= res!987575 e!819767)))

(declare-fun c!134287 () Bool)

(assert (=> b!1457141 (= c!134287 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457142 () Bool)

(declare-fun res!987574 () Bool)

(assert (=> b!1457142 (=> (not res!987574) (not e!819766))))

(assert (=> b!1457142 (= res!987574 (validKeyInArray!0 (select (arr!47541 a!2862) i!1006)))))

(declare-fun res!987576 () Bool)

(assert (=> start!125150 (=> (not res!987576) (not e!819766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125150 (= res!987576 (validMask!0 mask!2687))))

(assert (=> start!125150 e!819766))

(assert (=> start!125150 true))

(declare-fun array_inv!36486 (array!98515) Bool)

(assert (=> start!125150 (array_inv!36486 a!2862)))

(declare-fun b!1457143 () Bool)

(declare-fun res!987577 () Bool)

(assert (=> b!1457143 (=> (not res!987577) (not e!819766))))

(assert (=> b!1457143 (= res!987577 (and (= (size!48092 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48092 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48092 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125150 res!987576) b!1457143))

(assert (= (and b!1457143 res!987577) b!1457142))

(assert (= (and b!1457142 res!987574) b!1457128))

(assert (= (and b!1457128 res!987586) b!1457136))

(assert (= (and b!1457136 res!987579) b!1457123))

(assert (= (and b!1457123 res!987591) b!1457131))

(assert (= (and b!1457131 res!987580) b!1457130))

(assert (= (and b!1457130 res!987583) b!1457139))

(assert (= (and b!1457139 res!987584) b!1457140))

(assert (= (and b!1457140 res!987585) b!1457134))

(assert (= (and b!1457134 res!987582) b!1457141))

(assert (= (and b!1457141 c!134287) b!1457133))

(assert (= (and b!1457141 (not c!134287)) b!1457125))

(assert (= (and b!1457141 res!987575) b!1457122))

(assert (= (and b!1457122 res!987587) b!1457127))

(assert (= (and b!1457127 res!987578) b!1457135))

(assert (= (and b!1457135 res!987590) b!1457124))

(assert (= (and b!1457127 (not res!987581)) b!1457132))

(assert (= (and b!1457132 (not res!987588)) b!1457138))

(assert (= (and b!1457138 (not res!987589)) b!1457137))

(assert (= (and b!1457137 c!134288) b!1457129))

(assert (= (and b!1457137 (not c!134288)) b!1457126))

(declare-fun m!1345187 () Bool)

(assert (=> b!1457133 m!1345187))

(declare-fun m!1345189 () Bool)

(assert (=> b!1457125 m!1345189))

(declare-fun m!1345191 () Bool)

(assert (=> b!1457125 m!1345191))

(declare-fun m!1345193 () Bool)

(assert (=> b!1457127 m!1345193))

(declare-fun m!1345195 () Bool)

(assert (=> b!1457127 m!1345195))

(declare-fun m!1345197 () Bool)

(assert (=> b!1457127 m!1345197))

(declare-fun m!1345199 () Bool)

(assert (=> b!1457127 m!1345199))

(declare-fun m!1345201 () Bool)

(assert (=> b!1457127 m!1345201))

(declare-fun m!1345203 () Bool)

(assert (=> b!1457127 m!1345203))

(declare-fun m!1345205 () Bool)

(assert (=> b!1457142 m!1345205))

(assert (=> b!1457142 m!1345205))

(declare-fun m!1345207 () Bool)

(assert (=> b!1457142 m!1345207))

(assert (=> b!1457140 m!1345203))

(assert (=> b!1457140 m!1345203))

(declare-fun m!1345209 () Bool)

(assert (=> b!1457140 m!1345209))

(declare-fun m!1345211 () Bool)

(assert (=> b!1457134 m!1345211))

(assert (=> b!1457134 m!1345211))

(declare-fun m!1345213 () Bool)

(assert (=> b!1457134 m!1345213))

(assert (=> b!1457134 m!1345195))

(declare-fun m!1345215 () Bool)

(assert (=> b!1457134 m!1345215))

(assert (=> b!1457139 m!1345203))

(assert (=> b!1457139 m!1345203))

(declare-fun m!1345217 () Bool)

(assert (=> b!1457139 m!1345217))

(assert (=> b!1457139 m!1345217))

(assert (=> b!1457139 m!1345203))

(declare-fun m!1345219 () Bool)

(assert (=> b!1457139 m!1345219))

(declare-fun m!1345221 () Bool)

(assert (=> start!125150 m!1345221))

(declare-fun m!1345223 () Bool)

(assert (=> start!125150 m!1345223))

(assert (=> b!1457124 m!1345195))

(declare-fun m!1345225 () Bool)

(assert (=> b!1457124 m!1345225))

(assert (=> b!1457124 m!1345197))

(assert (=> b!1457124 m!1345199))

(assert (=> b!1457124 m!1345203))

(declare-fun m!1345227 () Bool)

(assert (=> b!1457132 m!1345227))

(assert (=> b!1457132 m!1345189))

(assert (=> b!1457132 m!1345191))

(assert (=> b!1457138 m!1345203))

(assert (=> b!1457138 m!1345203))

(declare-fun m!1345229 () Bool)

(assert (=> b!1457138 m!1345229))

(assert (=> b!1457135 m!1345203))

(assert (=> b!1457135 m!1345203))

(declare-fun m!1345231 () Bool)

(assert (=> b!1457135 m!1345231))

(assert (=> b!1457128 m!1345203))

(assert (=> b!1457128 m!1345203))

(declare-fun m!1345233 () Bool)

(assert (=> b!1457128 m!1345233))

(declare-fun m!1345235 () Bool)

(assert (=> b!1457136 m!1345235))

(assert (=> b!1457130 m!1345195))

(declare-fun m!1345237 () Bool)

(assert (=> b!1457130 m!1345237))

(declare-fun m!1345239 () Bool)

(assert (=> b!1457126 m!1345239))

(declare-fun m!1345241 () Bool)

(assert (=> b!1457129 m!1345241))

(declare-fun m!1345243 () Bool)

(assert (=> b!1457123 m!1345243))

(push 1)

