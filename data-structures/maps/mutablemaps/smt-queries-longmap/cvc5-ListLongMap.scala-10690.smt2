; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125320 () Bool)

(assert start!125320)

(declare-fun b!1462561 () Bool)

(declare-fun res!992077 () Bool)

(declare-fun e!822149 () Bool)

(assert (=> b!1462561 (=> (not res!992077) (not e!822149))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11901 0))(
  ( (MissingZero!11901 (index!49995 (_ BitVec 32))) (Found!11901 (index!49996 (_ BitVec 32))) (Intermediate!11901 (undefined!12713 Bool) (index!49997 (_ BitVec 32)) (x!131593 (_ BitVec 32))) (Undefined!11901) (MissingVacant!11901 (index!49998 (_ BitVec 32))) )
))
(declare-fun lt!640453 () SeekEntryResult!11901)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98685 0))(
  ( (array!98686 (arr!47626 (Array (_ BitVec 32) (_ BitVec 64))) (size!48177 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98685)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98685 (_ BitVec 32)) SeekEntryResult!11901)

(assert (=> b!1462561 (= res!992077 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47626 a!2862) j!93) a!2862 mask!2687) lt!640453))))

(declare-fun b!1462562 () Bool)

(declare-fun res!992078 () Bool)

(declare-fun e!822150 () Bool)

(assert (=> b!1462562 (=> (not res!992078) (not e!822150))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1462562 (= res!992078 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462563 () Bool)

(declare-fun res!992080 () Bool)

(declare-fun e!822148 () Bool)

(assert (=> b!1462563 (=> (not res!992080) (not e!822148))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98685 (_ BitVec 32)) SeekEntryResult!11901)

(assert (=> b!1462563 (= res!992080 (= (seekEntryOrOpen!0 (select (arr!47626 a!2862) j!93) a!2862 mask!2687) (Found!11901 j!93)))))

(declare-fun b!1462564 () Bool)

(declare-fun e!822151 () Bool)

(declare-fun e!822143 () Bool)

(assert (=> b!1462564 (= e!822151 e!822143)))

(declare-fun res!992071 () Bool)

(assert (=> b!1462564 (=> res!992071 e!822143)))

(declare-fun lt!640454 () (_ BitVec 32))

(assert (=> b!1462564 (= res!992071 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640454 #b00000000000000000000000000000000) (bvsge lt!640454 (size!48177 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462564 (= lt!640454 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462565 () Bool)

(assert (=> b!1462565 (= e!822150 (not e!822151))))

(declare-fun res!992070 () Bool)

(assert (=> b!1462565 (=> res!992070 e!822151)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462565 (= res!992070 (or (and (= (select (arr!47626 a!2862) index!646) (select (store (arr!47626 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47626 a!2862) index!646) (select (arr!47626 a!2862) j!93))) (= (select (arr!47626 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462565 e!822148))

(declare-fun res!992075 () Bool)

(assert (=> b!1462565 (=> (not res!992075) (not e!822148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98685 (_ BitVec 32)) Bool)

(assert (=> b!1462565 (= res!992075 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49246 0))(
  ( (Unit!49247) )
))
(declare-fun lt!640456 () Unit!49246)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98685 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49246)

(assert (=> b!1462565 (= lt!640456 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462566 () Bool)

(declare-fun res!992074 () Bool)

(declare-fun e!822146 () Bool)

(assert (=> b!1462566 (=> (not res!992074) (not e!822146))))

(declare-datatypes ((List!34307 0))(
  ( (Nil!34304) (Cons!34303 (h!35653 (_ BitVec 64)) (t!49008 List!34307)) )
))
(declare-fun arrayNoDuplicates!0 (array!98685 (_ BitVec 32) List!34307) Bool)

(assert (=> b!1462566 (= res!992074 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34304))))

(declare-fun b!1462567 () Bool)

(assert (=> b!1462567 (= e!822143 true)))

(declare-fun lt!640455 () Bool)

(declare-fun e!822152 () Bool)

(assert (=> b!1462567 (= lt!640455 e!822152)))

(declare-fun c!134761 () Bool)

(assert (=> b!1462567 (= c!134761 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462568 () Bool)

(declare-fun res!992073 () Bool)

(assert (=> b!1462568 (=> (not res!992073) (not e!822146))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1462568 (= res!992073 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48177 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48177 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48177 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462569 () Bool)

(declare-fun res!992069 () Bool)

(assert (=> b!1462569 (=> res!992069 e!822143)))

(assert (=> b!1462569 (= res!992069 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640454 (select (arr!47626 a!2862) j!93) a!2862 mask!2687) lt!640453)))))

(declare-fun b!1462570 () Bool)

(declare-fun res!992072 () Bool)

(assert (=> b!1462570 (=> (not res!992072) (not e!822146))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462570 (= res!992072 (validKeyInArray!0 (select (arr!47626 a!2862) i!1006)))))

(declare-fun res!992081 () Bool)

(assert (=> start!125320 (=> (not res!992081) (not e!822146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125320 (= res!992081 (validMask!0 mask!2687))))

(assert (=> start!125320 e!822146))

(assert (=> start!125320 true))

(declare-fun array_inv!36571 (array!98685) Bool)

(assert (=> start!125320 (array_inv!36571 a!2862)))

(declare-fun b!1462571 () Bool)

(declare-fun res!992065 () Bool)

(assert (=> b!1462571 (=> (not res!992065) (not e!822150))))

(declare-fun e!822147 () Bool)

(assert (=> b!1462571 (= res!992065 e!822147)))

(declare-fun c!134762 () Bool)

(assert (=> b!1462571 (= c!134762 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462572 () Bool)

(declare-fun e!822144 () Bool)

(assert (=> b!1462572 (= e!822146 e!822144)))

(declare-fun res!992068 () Bool)

(assert (=> b!1462572 (=> (not res!992068) (not e!822144))))

(assert (=> b!1462572 (= res!992068 (= (select (store (arr!47626 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640459 () array!98685)

(assert (=> b!1462572 (= lt!640459 (array!98686 (store (arr!47626 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48177 a!2862)))))

(declare-fun lt!640457 () (_ BitVec 64))

(declare-fun b!1462573 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98685 (_ BitVec 32)) SeekEntryResult!11901)

(assert (=> b!1462573 (= e!822152 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640454 intermediateAfterIndex!19 lt!640457 lt!640459 mask!2687) (seekEntryOrOpen!0 lt!640457 lt!640459 mask!2687))))))

(declare-fun b!1462574 () Bool)

(declare-fun res!992079 () Bool)

(assert (=> b!1462574 (=> (not res!992079) (not e!822146))))

(assert (=> b!1462574 (= res!992079 (validKeyInArray!0 (select (arr!47626 a!2862) j!93)))))

(declare-fun b!1462575 () Bool)

(declare-fun res!992076 () Bool)

(assert (=> b!1462575 (=> (not res!992076) (not e!822146))))

(assert (=> b!1462575 (= res!992076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462576 () Bool)

(declare-fun lt!640458 () SeekEntryResult!11901)

(assert (=> b!1462576 (= e!822152 (not (= lt!640458 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640454 lt!640457 lt!640459 mask!2687))))))

(declare-fun b!1462577 () Bool)

(assert (=> b!1462577 (= e!822144 e!822149)))

(declare-fun res!992067 () Bool)

(assert (=> b!1462577 (=> (not res!992067) (not e!822149))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462577 (= res!992067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47626 a!2862) j!93) mask!2687) (select (arr!47626 a!2862) j!93) a!2862 mask!2687) lt!640453))))

(assert (=> b!1462577 (= lt!640453 (Intermediate!11901 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462578 () Bool)

(assert (=> b!1462578 (= e!822149 e!822150)))

(declare-fun res!992082 () Bool)

(assert (=> b!1462578 (=> (not res!992082) (not e!822150))))

(assert (=> b!1462578 (= res!992082 (= lt!640458 (Intermediate!11901 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1462578 (= lt!640458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640457 mask!2687) lt!640457 lt!640459 mask!2687))))

(assert (=> b!1462578 (= lt!640457 (select (store (arr!47626 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462579 () Bool)

(assert (=> b!1462579 (= e!822147 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640457 lt!640459 mask!2687) (seekEntryOrOpen!0 lt!640457 lt!640459 mask!2687)))))

(declare-fun b!1462580 () Bool)

(assert (=> b!1462580 (= e!822147 (= lt!640458 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640457 lt!640459 mask!2687)))))

(declare-fun b!1462581 () Bool)

(assert (=> b!1462581 (= e!822148 (or (= (select (arr!47626 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47626 a!2862) intermediateBeforeIndex!19) (select (arr!47626 a!2862) j!93))))))

(declare-fun b!1462582 () Bool)

(declare-fun res!992066 () Bool)

(assert (=> b!1462582 (=> (not res!992066) (not e!822146))))

(assert (=> b!1462582 (= res!992066 (and (= (size!48177 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48177 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48177 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125320 res!992081) b!1462582))

(assert (= (and b!1462582 res!992066) b!1462570))

(assert (= (and b!1462570 res!992072) b!1462574))

(assert (= (and b!1462574 res!992079) b!1462575))

(assert (= (and b!1462575 res!992076) b!1462566))

(assert (= (and b!1462566 res!992074) b!1462568))

(assert (= (and b!1462568 res!992073) b!1462572))

(assert (= (and b!1462572 res!992068) b!1462577))

(assert (= (and b!1462577 res!992067) b!1462561))

(assert (= (and b!1462561 res!992077) b!1462578))

(assert (= (and b!1462578 res!992082) b!1462571))

(assert (= (and b!1462571 c!134762) b!1462580))

(assert (= (and b!1462571 (not c!134762)) b!1462579))

(assert (= (and b!1462571 res!992065) b!1462562))

(assert (= (and b!1462562 res!992078) b!1462565))

(assert (= (and b!1462565 res!992075) b!1462563))

(assert (= (and b!1462563 res!992080) b!1462581))

(assert (= (and b!1462565 (not res!992070)) b!1462564))

(assert (= (and b!1462564 (not res!992071)) b!1462569))

(assert (= (and b!1462569 (not res!992069)) b!1462567))

(assert (= (and b!1462567 c!134761) b!1462576))

(assert (= (and b!1462567 (not c!134761)) b!1462573))

(declare-fun m!1350051 () Bool)

(assert (=> b!1462577 m!1350051))

(assert (=> b!1462577 m!1350051))

(declare-fun m!1350053 () Bool)

(assert (=> b!1462577 m!1350053))

(assert (=> b!1462577 m!1350053))

(assert (=> b!1462577 m!1350051))

(declare-fun m!1350055 () Bool)

(assert (=> b!1462577 m!1350055))

(declare-fun m!1350057 () Bool)

(assert (=> b!1462580 m!1350057))

(declare-fun m!1350059 () Bool)

(assert (=> b!1462579 m!1350059))

(declare-fun m!1350061 () Bool)

(assert (=> b!1462579 m!1350061))

(assert (=> b!1462569 m!1350051))

(assert (=> b!1462569 m!1350051))

(declare-fun m!1350063 () Bool)

(assert (=> b!1462569 m!1350063))

(declare-fun m!1350065 () Bool)

(assert (=> b!1462581 m!1350065))

(assert (=> b!1462581 m!1350051))

(declare-fun m!1350067 () Bool)

(assert (=> b!1462576 m!1350067))

(assert (=> b!1462563 m!1350051))

(assert (=> b!1462563 m!1350051))

(declare-fun m!1350069 () Bool)

(assert (=> b!1462563 m!1350069))

(assert (=> b!1462574 m!1350051))

(assert (=> b!1462574 m!1350051))

(declare-fun m!1350071 () Bool)

(assert (=> b!1462574 m!1350071))

(declare-fun m!1350073 () Bool)

(assert (=> b!1462572 m!1350073))

(declare-fun m!1350075 () Bool)

(assert (=> b!1462572 m!1350075))

(declare-fun m!1350077 () Bool)

(assert (=> b!1462565 m!1350077))

(assert (=> b!1462565 m!1350073))

(declare-fun m!1350079 () Bool)

(assert (=> b!1462565 m!1350079))

(declare-fun m!1350081 () Bool)

(assert (=> b!1462565 m!1350081))

(declare-fun m!1350083 () Bool)

(assert (=> b!1462565 m!1350083))

(assert (=> b!1462565 m!1350051))

(declare-fun m!1350085 () Bool)

(assert (=> b!1462566 m!1350085))

(declare-fun m!1350087 () Bool)

(assert (=> b!1462570 m!1350087))

(assert (=> b!1462570 m!1350087))

(declare-fun m!1350089 () Bool)

(assert (=> b!1462570 m!1350089))

(declare-fun m!1350091 () Bool)

(assert (=> b!1462564 m!1350091))

(declare-fun m!1350093 () Bool)

(assert (=> b!1462573 m!1350093))

(assert (=> b!1462573 m!1350061))

(declare-fun m!1350095 () Bool)

(assert (=> b!1462575 m!1350095))

(declare-fun m!1350097 () Bool)

(assert (=> b!1462578 m!1350097))

(assert (=> b!1462578 m!1350097))

(declare-fun m!1350099 () Bool)

(assert (=> b!1462578 m!1350099))

(assert (=> b!1462578 m!1350073))

(declare-fun m!1350101 () Bool)

(assert (=> b!1462578 m!1350101))

(declare-fun m!1350103 () Bool)

(assert (=> start!125320 m!1350103))

(declare-fun m!1350105 () Bool)

(assert (=> start!125320 m!1350105))

(assert (=> b!1462561 m!1350051))

(assert (=> b!1462561 m!1350051))

(declare-fun m!1350107 () Bool)

(assert (=> b!1462561 m!1350107))

(push 1)

