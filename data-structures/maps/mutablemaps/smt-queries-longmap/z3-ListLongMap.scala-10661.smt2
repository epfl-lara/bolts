; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125148 () Bool)

(assert start!125148)

(declare-fun b!1457056 () Bool)

(declare-fun e!819737 () Bool)

(assert (=> b!1457056 (= e!819737 true)))

(declare-fun lt!638510 () Bool)

(declare-fun e!819742 () Bool)

(assert (=> b!1457056 (= lt!638510 e!819742)))

(declare-fun c!134281 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1457056 (= c!134281 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1457057 () Bool)

(declare-fun res!987534 () Bool)

(declare-fun e!819743 () Bool)

(assert (=> b!1457057 (=> (not res!987534) (not e!819743))))

(declare-datatypes ((array!98513 0))(
  ( (array!98514 (arr!47540 (Array (_ BitVec 32) (_ BitVec 64))) (size!48091 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98513)

(declare-datatypes ((List!34221 0))(
  ( (Nil!34218) (Cons!34217 (h!35567 (_ BitVec 64)) (t!48922 List!34221)) )
))
(declare-fun arrayNoDuplicates!0 (array!98513 (_ BitVec 32) List!34221) Bool)

(assert (=> b!1457057 (= res!987534 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34218))))

(declare-fun b!1457058 () Bool)

(declare-fun res!987533 () Bool)

(declare-fun e!819739 () Bool)

(assert (=> b!1457058 (=> (not res!987533) (not e!819739))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11815 0))(
  ( (MissingZero!11815 (index!49651 (_ BitVec 32))) (Found!11815 (index!49652 (_ BitVec 32))) (Intermediate!11815 (undefined!12627 Bool) (index!49653 (_ BitVec 32)) (x!131275 (_ BitVec 32))) (Undefined!11815) (MissingVacant!11815 (index!49654 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98513 (_ BitVec 32)) SeekEntryResult!11815)

(assert (=> b!1457058 (= res!987533 (= (seekEntryOrOpen!0 (select (arr!47540 a!2862) j!93) a!2862 mask!2687) (Found!11815 j!93)))))

(declare-fun b!1457059 () Bool)

(declare-fun e!819740 () Bool)

(assert (=> b!1457059 (= e!819740 e!819737)))

(declare-fun res!987520 () Bool)

(assert (=> b!1457059 (=> res!987520 e!819737)))

(declare-fun lt!638511 () (_ BitVec 32))

(assert (=> b!1457059 (= res!987520 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638511 #b00000000000000000000000000000000) (bvsge lt!638511 (size!48091 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457059 (= lt!638511 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!638515 () SeekEntryResult!11815)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!638512 () (_ BitVec 64))

(declare-fun lt!638509 () array!98513)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98513 (_ BitVec 32)) SeekEntryResult!11815)

(assert (=> b!1457059 (= lt!638515 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638512 lt!638509 mask!2687))))

(assert (=> b!1457059 (= lt!638515 (seekEntryOrOpen!0 lt!638512 lt!638509 mask!2687))))

(declare-fun b!1457060 () Bool)

(declare-fun res!987537 () Bool)

(assert (=> b!1457060 (=> (not res!987537) (not e!819743))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1457060 (= res!987537 (and (= (size!48091 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48091 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48091 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!987522 () Bool)

(assert (=> start!125148 (=> (not res!987522) (not e!819743))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125148 (= res!987522 (validMask!0 mask!2687))))

(assert (=> start!125148 e!819743))

(assert (=> start!125148 true))

(declare-fun array_inv!36485 (array!98513) Bool)

(assert (=> start!125148 (array_inv!36485 a!2862)))

(declare-fun b!1457061 () Bool)

(declare-fun e!819741 () Bool)

(assert (=> b!1457061 (= e!819743 e!819741)))

(declare-fun res!987536 () Bool)

(assert (=> b!1457061 (=> (not res!987536) (not e!819741))))

(assert (=> b!1457061 (= res!987536 (= (select (store (arr!47540 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1457061 (= lt!638509 (array!98514 (store (arr!47540 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48091 a!2862)))))

(declare-fun b!1457062 () Bool)

(declare-fun e!819736 () Bool)

(assert (=> b!1457062 (= e!819736 (not e!819740))))

(declare-fun res!987532 () Bool)

(assert (=> b!1457062 (=> res!987532 e!819740)))

(assert (=> b!1457062 (= res!987532 (or (and (= (select (arr!47540 a!2862) index!646) (select (store (arr!47540 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47540 a!2862) index!646) (select (arr!47540 a!2862) j!93))) (= (select (arr!47540 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1457062 e!819739))

(declare-fun res!987521 () Bool)

(assert (=> b!1457062 (=> (not res!987521) (not e!819739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98513 (_ BitVec 32)) Bool)

(assert (=> b!1457062 (= res!987521 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49074 0))(
  ( (Unit!49075) )
))
(declare-fun lt!638513 () Unit!49074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98513 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49074)

(assert (=> b!1457062 (= lt!638513 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1457063 () Bool)

(declare-fun res!987525 () Bool)

(assert (=> b!1457063 (=> (not res!987525) (not e!819743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1457063 (= res!987525 (validKeyInArray!0 (select (arr!47540 a!2862) j!93)))))

(declare-fun b!1457064 () Bool)

(declare-fun e!819734 () Bool)

(assert (=> b!1457064 (= e!819734 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638512 lt!638509 mask!2687) (seekEntryOrOpen!0 lt!638512 lt!638509 mask!2687)))))

(declare-fun b!1457065 () Bool)

(declare-fun e!819738 () Bool)

(assert (=> b!1457065 (= e!819741 e!819738)))

(declare-fun res!987523 () Bool)

(assert (=> b!1457065 (=> (not res!987523) (not e!819738))))

(declare-fun lt!638514 () SeekEntryResult!11815)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98513 (_ BitVec 32)) SeekEntryResult!11815)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1457065 (= res!987523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47540 a!2862) j!93) mask!2687) (select (arr!47540 a!2862) j!93) a!2862 mask!2687) lt!638514))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1457065 (= lt!638514 (Intermediate!11815 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1457066 () Bool)

(declare-fun res!987529 () Bool)

(assert (=> b!1457066 (=> (not res!987529) (not e!819743))))

(assert (=> b!1457066 (= res!987529 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48091 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48091 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48091 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1457067 () Bool)

(declare-fun res!987524 () Bool)

(assert (=> b!1457067 (=> (not res!987524) (not e!819736))))

(assert (=> b!1457067 (= res!987524 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1457068 () Bool)

(assert (=> b!1457068 (= e!819739 (and (or (= (select (arr!47540 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47540 a!2862) intermediateBeforeIndex!19) (select (arr!47540 a!2862) j!93))) (let ((bdg!53308 (select (store (arr!47540 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47540 a!2862) index!646) bdg!53308) (= (select (arr!47540 a!2862) index!646) (select (arr!47540 a!2862) j!93))) (= (select (arr!47540 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53308 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1457069 () Bool)

(declare-fun res!987530 () Bool)

(assert (=> b!1457069 (=> (not res!987530) (not e!819743))))

(assert (=> b!1457069 (= res!987530 (validKeyInArray!0 (select (arr!47540 a!2862) i!1006)))))

(declare-fun b!1457070 () Bool)

(declare-fun lt!638508 () SeekEntryResult!11815)

(assert (=> b!1457070 (= e!819742 (not (= lt!638508 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638511 lt!638512 lt!638509 mask!2687))))))

(declare-fun b!1457071 () Bool)

(assert (=> b!1457071 (= e!819742 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638511 intermediateAfterIndex!19 lt!638512 lt!638509 mask!2687) lt!638515)))))

(declare-fun b!1457072 () Bool)

(assert (=> b!1457072 (= e!819734 (= lt!638508 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638512 lt!638509 mask!2687)))))

(declare-fun b!1457073 () Bool)

(declare-fun res!987527 () Bool)

(assert (=> b!1457073 (=> (not res!987527) (not e!819743))))

(assert (=> b!1457073 (= res!987527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1457074 () Bool)

(assert (=> b!1457074 (= e!819738 e!819736)))

(declare-fun res!987528 () Bool)

(assert (=> b!1457074 (=> (not res!987528) (not e!819736))))

(assert (=> b!1457074 (= res!987528 (= lt!638508 (Intermediate!11815 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1457074 (= lt!638508 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638512 mask!2687) lt!638512 lt!638509 mask!2687))))

(assert (=> b!1457074 (= lt!638512 (select (store (arr!47540 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1457075 () Bool)

(declare-fun res!987531 () Bool)

(assert (=> b!1457075 (=> (not res!987531) (not e!819738))))

(assert (=> b!1457075 (= res!987531 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47540 a!2862) j!93) a!2862 mask!2687) lt!638514))))

(declare-fun b!1457076 () Bool)

(declare-fun res!987526 () Bool)

(assert (=> b!1457076 (=> (not res!987526) (not e!819736))))

(assert (=> b!1457076 (= res!987526 e!819734)))

(declare-fun c!134282 () Bool)

(assert (=> b!1457076 (= c!134282 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1457077 () Bool)

(declare-fun res!987535 () Bool)

(assert (=> b!1457077 (=> res!987535 e!819737)))

(assert (=> b!1457077 (= res!987535 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638511 (select (arr!47540 a!2862) j!93) a!2862 mask!2687) lt!638514)))))

(assert (= (and start!125148 res!987522) b!1457060))

(assert (= (and b!1457060 res!987537) b!1457069))

(assert (= (and b!1457069 res!987530) b!1457063))

(assert (= (and b!1457063 res!987525) b!1457073))

(assert (= (and b!1457073 res!987527) b!1457057))

(assert (= (and b!1457057 res!987534) b!1457066))

(assert (= (and b!1457066 res!987529) b!1457061))

(assert (= (and b!1457061 res!987536) b!1457065))

(assert (= (and b!1457065 res!987523) b!1457075))

(assert (= (and b!1457075 res!987531) b!1457074))

(assert (= (and b!1457074 res!987528) b!1457076))

(assert (= (and b!1457076 c!134282) b!1457072))

(assert (= (and b!1457076 (not c!134282)) b!1457064))

(assert (= (and b!1457076 res!987526) b!1457067))

(assert (= (and b!1457067 res!987524) b!1457062))

(assert (= (and b!1457062 res!987521) b!1457058))

(assert (= (and b!1457058 res!987533) b!1457068))

(assert (= (and b!1457062 (not res!987532)) b!1457059))

(assert (= (and b!1457059 (not res!987520)) b!1457077))

(assert (= (and b!1457077 (not res!987535)) b!1457056))

(assert (= (and b!1457056 c!134281) b!1457070))

(assert (= (and b!1457056 (not c!134281)) b!1457071))

(declare-fun m!1345129 () Bool)

(assert (=> b!1457074 m!1345129))

(assert (=> b!1457074 m!1345129))

(declare-fun m!1345131 () Bool)

(assert (=> b!1457074 m!1345131))

(declare-fun m!1345133 () Bool)

(assert (=> b!1457074 m!1345133))

(declare-fun m!1345135 () Bool)

(assert (=> b!1457074 m!1345135))

(declare-fun m!1345137 () Bool)

(assert (=> b!1457062 m!1345137))

(assert (=> b!1457062 m!1345133))

(declare-fun m!1345139 () Bool)

(assert (=> b!1457062 m!1345139))

(declare-fun m!1345141 () Bool)

(assert (=> b!1457062 m!1345141))

(declare-fun m!1345143 () Bool)

(assert (=> b!1457062 m!1345143))

(declare-fun m!1345145 () Bool)

(assert (=> b!1457062 m!1345145))

(assert (=> b!1457061 m!1345133))

(declare-fun m!1345147 () Bool)

(assert (=> b!1457061 m!1345147))

(assert (=> b!1457058 m!1345145))

(assert (=> b!1457058 m!1345145))

(declare-fun m!1345149 () Bool)

(assert (=> b!1457058 m!1345149))

(assert (=> b!1457063 m!1345145))

(assert (=> b!1457063 m!1345145))

(declare-fun m!1345151 () Bool)

(assert (=> b!1457063 m!1345151))

(assert (=> b!1457065 m!1345145))

(assert (=> b!1457065 m!1345145))

(declare-fun m!1345153 () Bool)

(assert (=> b!1457065 m!1345153))

(assert (=> b!1457065 m!1345153))

(assert (=> b!1457065 m!1345145))

(declare-fun m!1345155 () Bool)

(assert (=> b!1457065 m!1345155))

(declare-fun m!1345157 () Bool)

(assert (=> b!1457073 m!1345157))

(declare-fun m!1345159 () Bool)

(assert (=> b!1457072 m!1345159))

(declare-fun m!1345161 () Bool)

(assert (=> start!125148 m!1345161))

(declare-fun m!1345163 () Bool)

(assert (=> start!125148 m!1345163))

(declare-fun m!1345165 () Bool)

(assert (=> b!1457057 m!1345165))

(declare-fun m!1345167 () Bool)

(assert (=> b!1457064 m!1345167))

(declare-fun m!1345169 () Bool)

(assert (=> b!1457064 m!1345169))

(assert (=> b!1457068 m!1345133))

(declare-fun m!1345171 () Bool)

(assert (=> b!1457068 m!1345171))

(assert (=> b!1457068 m!1345139))

(assert (=> b!1457068 m!1345141))

(assert (=> b!1457068 m!1345145))

(declare-fun m!1345173 () Bool)

(assert (=> b!1457070 m!1345173))

(declare-fun m!1345175 () Bool)

(assert (=> b!1457059 m!1345175))

(assert (=> b!1457059 m!1345167))

(assert (=> b!1457059 m!1345169))

(declare-fun m!1345177 () Bool)

(assert (=> b!1457069 m!1345177))

(assert (=> b!1457069 m!1345177))

(declare-fun m!1345179 () Bool)

(assert (=> b!1457069 m!1345179))

(assert (=> b!1457075 m!1345145))

(assert (=> b!1457075 m!1345145))

(declare-fun m!1345181 () Bool)

(assert (=> b!1457075 m!1345181))

(declare-fun m!1345183 () Bool)

(assert (=> b!1457071 m!1345183))

(assert (=> b!1457077 m!1345145))

(assert (=> b!1457077 m!1345145))

(declare-fun m!1345185 () Bool)

(assert (=> b!1457077 m!1345185))

(check-sat (not b!1457058) (not b!1457065) (not b!1457075) (not start!125148) (not b!1457072) (not b!1457071) (not b!1457063) (not b!1457073) (not b!1457070) (not b!1457057) (not b!1457074) (not b!1457064) (not b!1457059) (not b!1457069) (not b!1457077) (not b!1457062))
(check-sat)
