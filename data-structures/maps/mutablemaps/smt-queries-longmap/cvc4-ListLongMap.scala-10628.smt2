; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124952 () Bool)

(assert start!124952)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1451142 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!817113 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98317 0))(
  ( (array!98318 (arr!47442 (Array (_ BitVec 32) (_ BitVec 64))) (size!47993 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98317)

(assert (=> b!1451142 (= e!817113 (and (or (= (select (arr!47442 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47442 a!2862) intermediateBeforeIndex!19) (select (arr!47442 a!2862) j!93))) (or (and (= (select (arr!47442 a!2862) index!646) (select (store (arr!47442 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47442 a!2862) index!646) (select (arr!47442 a!2862) j!93))) (= (select (arr!47442 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47442 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1451143 () Bool)

(declare-fun res!982519 () Bool)

(declare-fun e!817118 () Bool)

(assert (=> b!1451143 (=> (not res!982519) (not e!817118))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98317 (_ BitVec 32)) Bool)

(assert (=> b!1451143 (= res!982519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1451144 () Bool)

(declare-fun res!982515 () Bool)

(declare-fun e!817112 () Bool)

(assert (=> b!1451144 (=> (not res!982515) (not e!817112))))

(declare-fun e!817116 () Bool)

(assert (=> b!1451144 (= res!982515 e!817116)))

(declare-fun c!133829 () Bool)

(assert (=> b!1451144 (= c!133829 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1451145 () Bool)

(declare-fun res!982510 () Bool)

(assert (=> b!1451145 (=> (not res!982510) (not e!817118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1451145 (= res!982510 (validKeyInArray!0 (select (arr!47442 a!2862) i!1006)))))

(declare-fun b!1451146 () Bool)

(assert (=> b!1451146 (= e!817112 (not true))))

(assert (=> b!1451146 e!817113))

(declare-fun res!982518 () Bool)

(assert (=> b!1451146 (=> (not res!982518) (not e!817113))))

(assert (=> b!1451146 (= res!982518 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48878 0))(
  ( (Unit!48879) )
))
(declare-fun lt!636532 () Unit!48878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98317 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48878)

(assert (=> b!1451146 (= lt!636532 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1451147 () Bool)

(declare-fun res!982523 () Bool)

(assert (=> b!1451147 (=> (not res!982523) (not e!817112))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1451147 (= res!982523 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1451148 () Bool)

(declare-fun res!982513 () Bool)

(assert (=> b!1451148 (=> (not res!982513) (not e!817118))))

(declare-datatypes ((List!34123 0))(
  ( (Nil!34120) (Cons!34119 (h!35469 (_ BitVec 64)) (t!48824 List!34123)) )
))
(declare-fun arrayNoDuplicates!0 (array!98317 (_ BitVec 32) List!34123) Bool)

(assert (=> b!1451148 (= res!982513 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34120))))

(declare-fun b!1451149 () Bool)

(declare-fun res!982524 () Bool)

(declare-fun e!817114 () Bool)

(assert (=> b!1451149 (=> (not res!982524) (not e!817114))))

(declare-datatypes ((SeekEntryResult!11717 0))(
  ( (MissingZero!11717 (index!49259 (_ BitVec 32))) (Found!11717 (index!49260 (_ BitVec 32))) (Intermediate!11717 (undefined!12529 Bool) (index!49261 (_ BitVec 32)) (x!130913 (_ BitVec 32))) (Undefined!11717) (MissingVacant!11717 (index!49262 (_ BitVec 32))) )
))
(declare-fun lt!636528 () SeekEntryResult!11717)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98317 (_ BitVec 32)) SeekEntryResult!11717)

(assert (=> b!1451149 (= res!982524 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47442 a!2862) j!93) a!2862 mask!2687) lt!636528))))

(declare-fun b!1451150 () Bool)

(declare-fun res!982511 () Bool)

(assert (=> b!1451150 (=> (not res!982511) (not e!817118))))

(assert (=> b!1451150 (= res!982511 (validKeyInArray!0 (select (arr!47442 a!2862) j!93)))))

(declare-fun b!1451151 () Bool)

(declare-fun res!982516 () Bool)

(assert (=> b!1451151 (=> (not res!982516) (not e!817118))))

(assert (=> b!1451151 (= res!982516 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47993 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47993 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47993 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1451152 () Bool)

(declare-fun res!982520 () Bool)

(assert (=> b!1451152 (=> (not res!982520) (not e!817118))))

(assert (=> b!1451152 (= res!982520 (and (= (size!47993 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47993 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47993 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!636531 () (_ BitVec 64))

(declare-fun b!1451154 () Bool)

(declare-fun lt!636530 () array!98317)

(declare-fun lt!636529 () SeekEntryResult!11717)

(assert (=> b!1451154 (= e!817116 (= lt!636529 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636531 lt!636530 mask!2687)))))

(declare-fun b!1451155 () Bool)

(assert (=> b!1451155 (= e!817114 e!817112)))

(declare-fun res!982514 () Bool)

(assert (=> b!1451155 (=> (not res!982514) (not e!817112))))

(assert (=> b!1451155 (= res!982514 (= lt!636529 (Intermediate!11717 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1451155 (= lt!636529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636531 mask!2687) lt!636531 lt!636530 mask!2687))))

(assert (=> b!1451155 (= lt!636531 (select (store (arr!47442 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1451156 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98317 (_ BitVec 32)) SeekEntryResult!11717)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98317 (_ BitVec 32)) SeekEntryResult!11717)

(assert (=> b!1451156 (= e!817116 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636531 lt!636530 mask!2687) (seekEntryOrOpen!0 lt!636531 lt!636530 mask!2687)))))

(declare-fun b!1451157 () Bool)

(declare-fun res!982521 () Bool)

(assert (=> b!1451157 (=> (not res!982521) (not e!817113))))

(assert (=> b!1451157 (= res!982521 (= (seekEntryOrOpen!0 (select (arr!47442 a!2862) j!93) a!2862 mask!2687) (Found!11717 j!93)))))

(declare-fun b!1451158 () Bool)

(declare-fun e!817117 () Bool)

(assert (=> b!1451158 (= e!817117 e!817114)))

(declare-fun res!982517 () Bool)

(assert (=> b!1451158 (=> (not res!982517) (not e!817114))))

(assert (=> b!1451158 (= res!982517 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47442 a!2862) j!93) mask!2687) (select (arr!47442 a!2862) j!93) a!2862 mask!2687) lt!636528))))

(assert (=> b!1451158 (= lt!636528 (Intermediate!11717 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1451153 () Bool)

(assert (=> b!1451153 (= e!817118 e!817117)))

(declare-fun res!982512 () Bool)

(assert (=> b!1451153 (=> (not res!982512) (not e!817117))))

(assert (=> b!1451153 (= res!982512 (= (select (store (arr!47442 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1451153 (= lt!636530 (array!98318 (store (arr!47442 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47993 a!2862)))))

(declare-fun res!982522 () Bool)

(assert (=> start!124952 (=> (not res!982522) (not e!817118))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124952 (= res!982522 (validMask!0 mask!2687))))

(assert (=> start!124952 e!817118))

(assert (=> start!124952 true))

(declare-fun array_inv!36387 (array!98317) Bool)

(assert (=> start!124952 (array_inv!36387 a!2862)))

(assert (= (and start!124952 res!982522) b!1451152))

(assert (= (and b!1451152 res!982520) b!1451145))

(assert (= (and b!1451145 res!982510) b!1451150))

(assert (= (and b!1451150 res!982511) b!1451143))

(assert (= (and b!1451143 res!982519) b!1451148))

(assert (= (and b!1451148 res!982513) b!1451151))

(assert (= (and b!1451151 res!982516) b!1451153))

(assert (= (and b!1451153 res!982512) b!1451158))

(assert (= (and b!1451158 res!982517) b!1451149))

(assert (= (and b!1451149 res!982524) b!1451155))

(assert (= (and b!1451155 res!982514) b!1451144))

(assert (= (and b!1451144 c!133829) b!1451154))

(assert (= (and b!1451144 (not c!133829)) b!1451156))

(assert (= (and b!1451144 res!982515) b!1451147))

(assert (= (and b!1451147 res!982523) b!1451146))

(assert (= (and b!1451146 res!982518) b!1451157))

(assert (= (and b!1451157 res!982521) b!1451142))

(declare-fun m!1339801 () Bool)

(assert (=> b!1451148 m!1339801))

(declare-fun m!1339803 () Bool)

(assert (=> b!1451145 m!1339803))

(assert (=> b!1451145 m!1339803))

(declare-fun m!1339805 () Bool)

(assert (=> b!1451145 m!1339805))

(declare-fun m!1339807 () Bool)

(assert (=> b!1451153 m!1339807))

(declare-fun m!1339809 () Bool)

(assert (=> b!1451153 m!1339809))

(declare-fun m!1339811 () Bool)

(assert (=> b!1451146 m!1339811))

(declare-fun m!1339813 () Bool)

(assert (=> b!1451146 m!1339813))

(declare-fun m!1339815 () Bool)

(assert (=> start!124952 m!1339815))

(declare-fun m!1339817 () Bool)

(assert (=> start!124952 m!1339817))

(declare-fun m!1339819 () Bool)

(assert (=> b!1451154 m!1339819))

(declare-fun m!1339821 () Bool)

(assert (=> b!1451143 m!1339821))

(declare-fun m!1339823 () Bool)

(assert (=> b!1451156 m!1339823))

(declare-fun m!1339825 () Bool)

(assert (=> b!1451156 m!1339825))

(assert (=> b!1451142 m!1339807))

(declare-fun m!1339827 () Bool)

(assert (=> b!1451142 m!1339827))

(declare-fun m!1339829 () Bool)

(assert (=> b!1451142 m!1339829))

(declare-fun m!1339831 () Bool)

(assert (=> b!1451142 m!1339831))

(declare-fun m!1339833 () Bool)

(assert (=> b!1451142 m!1339833))

(assert (=> b!1451158 m!1339833))

(assert (=> b!1451158 m!1339833))

(declare-fun m!1339835 () Bool)

(assert (=> b!1451158 m!1339835))

(assert (=> b!1451158 m!1339835))

(assert (=> b!1451158 m!1339833))

(declare-fun m!1339837 () Bool)

(assert (=> b!1451158 m!1339837))

(assert (=> b!1451157 m!1339833))

(assert (=> b!1451157 m!1339833))

(declare-fun m!1339839 () Bool)

(assert (=> b!1451157 m!1339839))

(assert (=> b!1451149 m!1339833))

(assert (=> b!1451149 m!1339833))

(declare-fun m!1339841 () Bool)

(assert (=> b!1451149 m!1339841))

(declare-fun m!1339843 () Bool)

(assert (=> b!1451155 m!1339843))

(assert (=> b!1451155 m!1339843))

(declare-fun m!1339845 () Bool)

(assert (=> b!1451155 m!1339845))

(assert (=> b!1451155 m!1339807))

(declare-fun m!1339847 () Bool)

(assert (=> b!1451155 m!1339847))

(assert (=> b!1451150 m!1339833))

(assert (=> b!1451150 m!1339833))

(declare-fun m!1339849 () Bool)

(assert (=> b!1451150 m!1339849))

(push 1)

