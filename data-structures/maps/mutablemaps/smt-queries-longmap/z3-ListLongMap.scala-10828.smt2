; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126792 () Bool)

(assert start!126792)

(declare-fun b!1487983 () Bool)

(declare-fun e!834088 () Bool)

(declare-fun e!834085 () Bool)

(assert (=> b!1487983 (= e!834088 e!834085)))

(declare-fun c!137507 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1487983 (= c!137507 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1487984 () Bool)

(declare-fun e!834092 () Bool)

(declare-fun e!834090 () Bool)

(assert (=> b!1487984 (= e!834092 e!834090)))

(declare-fun res!1012042 () Bool)

(assert (=> b!1487984 (=> (not res!1012042) (not e!834090))))

(declare-datatypes ((SeekEntryResult!12304 0))(
  ( (MissingZero!12304 (index!51607 (_ BitVec 32))) (Found!12304 (index!51608 (_ BitVec 32))) (Intermediate!12304 (undefined!13116 Bool) (index!51609 (_ BitVec 32)) (x!133199 (_ BitVec 32))) (Undefined!12304) (MissingVacant!12304 (index!51610 (_ BitVec 32))) )
))
(declare-fun lt!648991 () SeekEntryResult!12304)

(declare-datatypes ((array!99545 0))(
  ( (array!99546 (arr!48041 (Array (_ BitVec 32) (_ BitVec 64))) (size!48592 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99545)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99545 (_ BitVec 32)) SeekEntryResult!12304)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487984 (= res!1012042 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48041 a!2862) j!93) mask!2687) (select (arr!48041 a!2862) j!93) a!2862 mask!2687) lt!648991))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1487984 (= lt!648991 (Intermediate!12304 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1487985 () Bool)

(declare-fun res!1012039 () Bool)

(declare-fun e!834083 () Bool)

(assert (=> b!1487985 (=> (not res!1012039) (not e!834083))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1487985 (= res!1012039 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1487986 () Bool)

(declare-fun e!834084 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1487986 (= e!834084 (and (or (= (select (arr!48041 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48041 a!2862) intermediateBeforeIndex!19) (select (arr!48041 a!2862) j!93))) (let ((bdg!54639 (select (store (arr!48041 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48041 a!2862) index!646) bdg!54639) (= (select (arr!48041 a!2862) index!646) (select (arr!48041 a!2862) j!93))) (= (select (arr!48041 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54639 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1487987 () Bool)

(declare-fun res!1012029 () Bool)

(assert (=> b!1487987 (=> (not res!1012029) (not e!834084))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99545 (_ BitVec 32)) SeekEntryResult!12304)

(assert (=> b!1487987 (= res!1012029 (= (seekEntryOrOpen!0 (select (arr!48041 a!2862) j!93) a!2862 mask!2687) (Found!12304 j!93)))))

(declare-fun b!1487988 () Bool)

(declare-fun lt!648994 () array!99545)

(declare-fun lt!648992 () (_ BitVec 64))

(declare-fun e!834086 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99545 (_ BitVec 32)) SeekEntryResult!12304)

(assert (=> b!1487988 (= e!834086 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648992 lt!648994 mask!2687) (seekEntryOrOpen!0 lt!648992 lt!648994 mask!2687)))))

(declare-fun b!1487989 () Bool)

(declare-fun e!834087 () Bool)

(assert (=> b!1487989 (= e!834087 e!834092)))

(declare-fun res!1012041 () Bool)

(assert (=> b!1487989 (=> (not res!1012041) (not e!834092))))

(assert (=> b!1487989 (= res!1012041 (= (select (store (arr!48041 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487989 (= lt!648994 (array!99546 (store (arr!48041 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48592 a!2862)))))

(declare-fun b!1487990 () Bool)

(declare-fun e!834091 () Bool)

(assert (=> b!1487990 (= e!834091 e!834088)))

(declare-fun res!1012033 () Bool)

(assert (=> b!1487990 (=> res!1012033 e!834088)))

(declare-fun lt!648990 () (_ BitVec 32))

(assert (=> b!1487990 (= res!1012033 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!648990 #b00000000000000000000000000000000) (bvsge lt!648990 (size!48592 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487990 (= lt!648990 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!648993 () SeekEntryResult!12304)

(assert (=> b!1487990 (= lt!648993 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648992 lt!648994 mask!2687))))

(assert (=> b!1487990 (= lt!648993 (seekEntryOrOpen!0 lt!648992 lt!648994 mask!2687))))

(declare-fun b!1487991 () Bool)

(assert (=> b!1487991 (= e!834083 (not e!834091))))

(declare-fun res!1012028 () Bool)

(assert (=> b!1487991 (=> res!1012028 e!834091)))

(assert (=> b!1487991 (= res!1012028 (or (and (= (select (arr!48041 a!2862) index!646) (select (store (arr!48041 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48041 a!2862) index!646) (select (arr!48041 a!2862) j!93))) (= (select (arr!48041 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487991 e!834084))

(declare-fun res!1012031 () Bool)

(assert (=> b!1487991 (=> (not res!1012031) (not e!834084))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99545 (_ BitVec 32)) Bool)

(assert (=> b!1487991 (= res!1012031 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49896 0))(
  ( (Unit!49897) )
))
(declare-fun lt!648989 () Unit!49896)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99545 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49896)

(assert (=> b!1487991 (= lt!648989 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487992 () Bool)

(declare-fun res!1012044 () Bool)

(assert (=> b!1487992 (=> (not res!1012044) (not e!834083))))

(assert (=> b!1487992 (= res!1012044 e!834086)))

(declare-fun c!137506 () Bool)

(assert (=> b!1487992 (= c!137506 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1012034 () Bool)

(assert (=> start!126792 (=> (not res!1012034) (not e!834087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126792 (= res!1012034 (validMask!0 mask!2687))))

(assert (=> start!126792 e!834087))

(assert (=> start!126792 true))

(declare-fun array_inv!36986 (array!99545) Bool)

(assert (=> start!126792 (array_inv!36986 a!2862)))

(declare-fun b!1487993 () Bool)

(declare-fun res!1012027 () Bool)

(assert (=> b!1487993 (=> (not res!1012027) (not e!834090))))

(assert (=> b!1487993 (= res!1012027 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48041 a!2862) j!93) a!2862 mask!2687) lt!648991))))

(declare-fun b!1487994 () Bool)

(assert (=> b!1487994 (= e!834090 e!834083)))

(declare-fun res!1012040 () Bool)

(assert (=> b!1487994 (=> (not res!1012040) (not e!834083))))

(declare-fun lt!648988 () SeekEntryResult!12304)

(assert (=> b!1487994 (= res!1012040 (= lt!648988 (Intermediate!12304 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1487994 (= lt!648988 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648992 mask!2687) lt!648992 lt!648994 mask!2687))))

(assert (=> b!1487994 (= lt!648992 (select (store (arr!48041 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1487995 () Bool)

(declare-fun res!1012032 () Bool)

(assert (=> b!1487995 (=> (not res!1012032) (not e!834087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487995 (= res!1012032 (validKeyInArray!0 (select (arr!48041 a!2862) j!93)))))

(declare-fun b!1487996 () Bool)

(declare-fun res!1012030 () Bool)

(assert (=> b!1487996 (=> (not res!1012030) (not e!834087))))

(assert (=> b!1487996 (= res!1012030 (and (= (size!48592 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48592 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48592 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1487997 () Bool)

(declare-fun res!1012038 () Bool)

(assert (=> b!1487997 (=> (not res!1012038) (not e!834087))))

(declare-datatypes ((List!34722 0))(
  ( (Nil!34719) (Cons!34718 (h!36098 (_ BitVec 64)) (t!49423 List!34722)) )
))
(declare-fun arrayNoDuplicates!0 (array!99545 (_ BitVec 32) List!34722) Bool)

(assert (=> b!1487997 (= res!1012038 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34719))))

(declare-fun b!1487998 () Bool)

(declare-fun res!1012035 () Bool)

(assert (=> b!1487998 (=> (not res!1012035) (not e!834087))))

(assert (=> b!1487998 (= res!1012035 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48592 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48592 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48592 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1487999 () Bool)

(assert (=> b!1487999 (= e!834085 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648990 intermediateAfterIndex!19 lt!648992 lt!648994 mask!2687) lt!648993))))

(declare-fun b!1488000 () Bool)

(declare-fun res!1012036 () Bool)

(assert (=> b!1488000 (=> res!1012036 e!834088)))

(assert (=> b!1488000 (= res!1012036 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648990 (select (arr!48041 a!2862) j!93) a!2862 mask!2687) lt!648991)))))

(declare-fun b!1488001 () Bool)

(declare-fun res!1012043 () Bool)

(assert (=> b!1488001 (=> (not res!1012043) (not e!834087))))

(assert (=> b!1488001 (= res!1012043 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1488002 () Bool)

(assert (=> b!1488002 (= e!834086 (= lt!648988 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648992 lt!648994 mask!2687)))))

(declare-fun b!1488003 () Bool)

(assert (=> b!1488003 (= e!834085 (= lt!648988 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648990 lt!648992 lt!648994 mask!2687)))))

(declare-fun b!1488004 () Bool)

(declare-fun res!1012037 () Bool)

(assert (=> b!1488004 (=> (not res!1012037) (not e!834087))))

(assert (=> b!1488004 (= res!1012037 (validKeyInArray!0 (select (arr!48041 a!2862) i!1006)))))

(assert (= (and start!126792 res!1012034) b!1487996))

(assert (= (and b!1487996 res!1012030) b!1488004))

(assert (= (and b!1488004 res!1012037) b!1487995))

(assert (= (and b!1487995 res!1012032) b!1488001))

(assert (= (and b!1488001 res!1012043) b!1487997))

(assert (= (and b!1487997 res!1012038) b!1487998))

(assert (= (and b!1487998 res!1012035) b!1487989))

(assert (= (and b!1487989 res!1012041) b!1487984))

(assert (= (and b!1487984 res!1012042) b!1487993))

(assert (= (and b!1487993 res!1012027) b!1487994))

(assert (= (and b!1487994 res!1012040) b!1487992))

(assert (= (and b!1487992 c!137506) b!1488002))

(assert (= (and b!1487992 (not c!137506)) b!1487988))

(assert (= (and b!1487992 res!1012044) b!1487985))

(assert (= (and b!1487985 res!1012039) b!1487991))

(assert (= (and b!1487991 res!1012031) b!1487987))

(assert (= (and b!1487987 res!1012029) b!1487986))

(assert (= (and b!1487991 (not res!1012028)) b!1487990))

(assert (= (and b!1487990 (not res!1012033)) b!1488000))

(assert (= (and b!1488000 (not res!1012036)) b!1487983))

(assert (= (and b!1487983 c!137507) b!1488003))

(assert (= (and b!1487983 (not c!137507)) b!1487999))

(declare-fun m!1372555 () Bool)

(assert (=> start!126792 m!1372555))

(declare-fun m!1372557 () Bool)

(assert (=> start!126792 m!1372557))

(declare-fun m!1372559 () Bool)

(assert (=> b!1487987 m!1372559))

(assert (=> b!1487987 m!1372559))

(declare-fun m!1372561 () Bool)

(assert (=> b!1487987 m!1372561))

(declare-fun m!1372563 () Bool)

(assert (=> b!1488001 m!1372563))

(declare-fun m!1372565 () Bool)

(assert (=> b!1487988 m!1372565))

(declare-fun m!1372567 () Bool)

(assert (=> b!1487988 m!1372567))

(declare-fun m!1372569 () Bool)

(assert (=> b!1488003 m!1372569))

(declare-fun m!1372571 () Bool)

(assert (=> b!1487991 m!1372571))

(declare-fun m!1372573 () Bool)

(assert (=> b!1487991 m!1372573))

(declare-fun m!1372575 () Bool)

(assert (=> b!1487991 m!1372575))

(declare-fun m!1372577 () Bool)

(assert (=> b!1487991 m!1372577))

(declare-fun m!1372579 () Bool)

(assert (=> b!1487991 m!1372579))

(assert (=> b!1487991 m!1372559))

(declare-fun m!1372581 () Bool)

(assert (=> b!1487999 m!1372581))

(assert (=> b!1487995 m!1372559))

(assert (=> b!1487995 m!1372559))

(declare-fun m!1372583 () Bool)

(assert (=> b!1487995 m!1372583))

(declare-fun m!1372585 () Bool)

(assert (=> b!1488004 m!1372585))

(assert (=> b!1488004 m!1372585))

(declare-fun m!1372587 () Bool)

(assert (=> b!1488004 m!1372587))

(declare-fun m!1372589 () Bool)

(assert (=> b!1488002 m!1372589))

(assert (=> b!1487989 m!1372573))

(declare-fun m!1372591 () Bool)

(assert (=> b!1487989 m!1372591))

(declare-fun m!1372593 () Bool)

(assert (=> b!1487990 m!1372593))

(assert (=> b!1487990 m!1372565))

(assert (=> b!1487990 m!1372567))

(assert (=> b!1488000 m!1372559))

(assert (=> b!1488000 m!1372559))

(declare-fun m!1372595 () Bool)

(assert (=> b!1488000 m!1372595))

(declare-fun m!1372597 () Bool)

(assert (=> b!1487994 m!1372597))

(assert (=> b!1487994 m!1372597))

(declare-fun m!1372599 () Bool)

(assert (=> b!1487994 m!1372599))

(assert (=> b!1487994 m!1372573))

(declare-fun m!1372601 () Bool)

(assert (=> b!1487994 m!1372601))

(declare-fun m!1372603 () Bool)

(assert (=> b!1487997 m!1372603))

(assert (=> b!1487993 m!1372559))

(assert (=> b!1487993 m!1372559))

(declare-fun m!1372605 () Bool)

(assert (=> b!1487993 m!1372605))

(assert (=> b!1487986 m!1372573))

(declare-fun m!1372607 () Bool)

(assert (=> b!1487986 m!1372607))

(assert (=> b!1487986 m!1372575))

(assert (=> b!1487986 m!1372577))

(assert (=> b!1487986 m!1372559))

(assert (=> b!1487984 m!1372559))

(assert (=> b!1487984 m!1372559))

(declare-fun m!1372609 () Bool)

(assert (=> b!1487984 m!1372609))

(assert (=> b!1487984 m!1372609))

(assert (=> b!1487984 m!1372559))

(declare-fun m!1372611 () Bool)

(assert (=> b!1487984 m!1372611))

(check-sat (not b!1487994) (not b!1488001) (not b!1488004) (not b!1487984) (not b!1487987) (not b!1487997) (not b!1487988) (not b!1487991) (not b!1488003) (not b!1488000) (not start!126792) (not b!1488002) (not b!1487993) (not b!1487999) (not b!1487990) (not b!1487995))
(check-sat)
(get-model)

(declare-fun b!1488089 () Bool)

(declare-fun lt!649021 () SeekEntryResult!12304)

(assert (=> b!1488089 (and (bvsge (index!51609 lt!649021) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649021) (size!48592 a!2862)))))

(declare-fun res!1012107 () Bool)

(assert (=> b!1488089 (= res!1012107 (= (select (arr!48041 a!2862) (index!51609 lt!649021)) (select (arr!48041 a!2862) j!93)))))

(declare-fun e!834134 () Bool)

(assert (=> b!1488089 (=> res!1012107 e!834134)))

(declare-fun e!834137 () Bool)

(assert (=> b!1488089 (= e!834137 e!834134)))

(declare-fun b!1488091 () Bool)

(declare-fun e!834135 () Bool)

(assert (=> b!1488091 (= e!834135 (bvsge (x!133199 lt!649021) #b01111111111111111111111111111110))))

(declare-fun b!1488092 () Bool)

(assert (=> b!1488092 (= e!834135 e!834137)))

(declare-fun res!1012105 () Bool)

(get-info :version)

(assert (=> b!1488092 (= res!1012105 (and ((_ is Intermediate!12304) lt!649021) (not (undefined!13116 lt!649021)) (bvslt (x!133199 lt!649021) #b01111111111111111111111111111110) (bvsge (x!133199 lt!649021) #b00000000000000000000000000000000) (bvsge (x!133199 lt!649021) #b00000000000000000000000000000000)))))

(assert (=> b!1488092 (=> (not res!1012105) (not e!834137))))

(declare-fun e!834133 () SeekEntryResult!12304)

(declare-fun b!1488093 () Bool)

(assert (=> b!1488093 (= e!834133 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48041 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48041 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1488094 () Bool)

(assert (=> b!1488094 (and (bvsge (index!51609 lt!649021) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649021) (size!48592 a!2862)))))

(assert (=> b!1488094 (= e!834134 (= (select (arr!48041 a!2862) (index!51609 lt!649021)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488095 () Bool)

(declare-fun e!834136 () SeekEntryResult!12304)

(assert (=> b!1488095 (= e!834136 e!834133)))

(declare-fun c!137520 () Bool)

(declare-fun lt!649020 () (_ BitVec 64))

(assert (=> b!1488095 (= c!137520 (or (= lt!649020 (select (arr!48041 a!2862) j!93)) (= (bvadd lt!649020 lt!649020) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488096 () Bool)

(assert (=> b!1488096 (= e!834133 (Intermediate!12304 false (toIndex!0 (select (arr!48041 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1488097 () Bool)

(assert (=> b!1488097 (= e!834136 (Intermediate!12304 true (toIndex!0 (select (arr!48041 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!156593 () Bool)

(assert (=> d!156593 e!834135))

(declare-fun c!137522 () Bool)

(assert (=> d!156593 (= c!137522 (and ((_ is Intermediate!12304) lt!649021) (undefined!13116 lt!649021)))))

(assert (=> d!156593 (= lt!649021 e!834136)))

(declare-fun c!137521 () Bool)

(assert (=> d!156593 (= c!137521 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156593 (= lt!649020 (select (arr!48041 a!2862) (toIndex!0 (select (arr!48041 a!2862) j!93) mask!2687)))))

(assert (=> d!156593 (validMask!0 mask!2687)))

(assert (=> d!156593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48041 a!2862) j!93) mask!2687) (select (arr!48041 a!2862) j!93) a!2862 mask!2687) lt!649021)))

(declare-fun b!1488090 () Bool)

(assert (=> b!1488090 (and (bvsge (index!51609 lt!649021) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649021) (size!48592 a!2862)))))

(declare-fun res!1012106 () Bool)

(assert (=> b!1488090 (= res!1012106 (= (select (arr!48041 a!2862) (index!51609 lt!649021)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488090 (=> res!1012106 e!834134)))

(assert (= (and d!156593 c!137521) b!1488097))

(assert (= (and d!156593 (not c!137521)) b!1488095))

(assert (= (and b!1488095 c!137520) b!1488096))

(assert (= (and b!1488095 (not c!137520)) b!1488093))

(assert (= (and d!156593 c!137522) b!1488091))

(assert (= (and d!156593 (not c!137522)) b!1488092))

(assert (= (and b!1488092 res!1012105) b!1488089))

(assert (= (and b!1488089 (not res!1012107)) b!1488090))

(assert (= (and b!1488090 (not res!1012106)) b!1488094))

(declare-fun m!1372671 () Bool)

(assert (=> b!1488089 m!1372671))

(assert (=> d!156593 m!1372609))

(declare-fun m!1372673 () Bool)

(assert (=> d!156593 m!1372673))

(assert (=> d!156593 m!1372555))

(assert (=> b!1488090 m!1372671))

(assert (=> b!1488094 m!1372671))

(assert (=> b!1488093 m!1372609))

(declare-fun m!1372675 () Bool)

(assert (=> b!1488093 m!1372675))

(assert (=> b!1488093 m!1372675))

(assert (=> b!1488093 m!1372559))

(declare-fun m!1372677 () Bool)

(assert (=> b!1488093 m!1372677))

(assert (=> b!1487984 d!156593))

(declare-fun d!156595 () Bool)

(declare-fun lt!649027 () (_ BitVec 32))

(declare-fun lt!649026 () (_ BitVec 32))

(assert (=> d!156595 (= lt!649027 (bvmul (bvxor lt!649026 (bvlshr lt!649026 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156595 (= lt!649026 ((_ extract 31 0) (bvand (bvxor (select (arr!48041 a!2862) j!93) (bvlshr (select (arr!48041 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156595 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1012108 (let ((h!36100 ((_ extract 31 0) (bvand (bvxor (select (arr!48041 a!2862) j!93) (bvlshr (select (arr!48041 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133202 (bvmul (bvxor h!36100 (bvlshr h!36100 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133202 (bvlshr x!133202 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1012108 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1012108 #b00000000000000000000000000000000))))))

(assert (=> d!156595 (= (toIndex!0 (select (arr!48041 a!2862) j!93) mask!2687) (bvand (bvxor lt!649027 (bvlshr lt!649027 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487984 d!156595))

(declare-fun b!1488098 () Bool)

(declare-fun lt!649029 () SeekEntryResult!12304)

(assert (=> b!1488098 (and (bvsge (index!51609 lt!649029) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649029) (size!48592 lt!648994)))))

(declare-fun res!1012111 () Bool)

(assert (=> b!1488098 (= res!1012111 (= (select (arr!48041 lt!648994) (index!51609 lt!649029)) lt!648992))))

(declare-fun e!834139 () Bool)

(assert (=> b!1488098 (=> res!1012111 e!834139)))

(declare-fun e!834142 () Bool)

(assert (=> b!1488098 (= e!834142 e!834139)))

(declare-fun b!1488100 () Bool)

(declare-fun e!834140 () Bool)

(assert (=> b!1488100 (= e!834140 (bvsge (x!133199 lt!649029) #b01111111111111111111111111111110))))

(declare-fun b!1488101 () Bool)

(assert (=> b!1488101 (= e!834140 e!834142)))

(declare-fun res!1012109 () Bool)

(assert (=> b!1488101 (= res!1012109 (and ((_ is Intermediate!12304) lt!649029) (not (undefined!13116 lt!649029)) (bvslt (x!133199 lt!649029) #b01111111111111111111111111111110) (bvsge (x!133199 lt!649029) #b00000000000000000000000000000000) (bvsge (x!133199 lt!649029) #b00000000000000000000000000000000)))))

(assert (=> b!1488101 (=> (not res!1012109) (not e!834142))))

(declare-fun e!834138 () SeekEntryResult!12304)

(declare-fun b!1488102 () Bool)

(assert (=> b!1488102 (= e!834138 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!648992 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!648992 lt!648994 mask!2687))))

(declare-fun b!1488103 () Bool)

(assert (=> b!1488103 (and (bvsge (index!51609 lt!649029) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649029) (size!48592 lt!648994)))))

(assert (=> b!1488103 (= e!834139 (= (select (arr!48041 lt!648994) (index!51609 lt!649029)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488104 () Bool)

(declare-fun e!834141 () SeekEntryResult!12304)

(assert (=> b!1488104 (= e!834141 e!834138)))

(declare-fun c!137523 () Bool)

(declare-fun lt!649028 () (_ BitVec 64))

(assert (=> b!1488104 (= c!137523 (or (= lt!649028 lt!648992) (= (bvadd lt!649028 lt!649028) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488105 () Bool)

(assert (=> b!1488105 (= e!834138 (Intermediate!12304 false (toIndex!0 lt!648992 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1488106 () Bool)

(assert (=> b!1488106 (= e!834141 (Intermediate!12304 true (toIndex!0 lt!648992 mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!156597 () Bool)

(assert (=> d!156597 e!834140))

(declare-fun c!137525 () Bool)

(assert (=> d!156597 (= c!137525 (and ((_ is Intermediate!12304) lt!649029) (undefined!13116 lt!649029)))))

(assert (=> d!156597 (= lt!649029 e!834141)))

(declare-fun c!137524 () Bool)

(assert (=> d!156597 (= c!137524 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156597 (= lt!649028 (select (arr!48041 lt!648994) (toIndex!0 lt!648992 mask!2687)))))

(assert (=> d!156597 (validMask!0 mask!2687)))

(assert (=> d!156597 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648992 mask!2687) lt!648992 lt!648994 mask!2687) lt!649029)))

(declare-fun b!1488099 () Bool)

(assert (=> b!1488099 (and (bvsge (index!51609 lt!649029) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649029) (size!48592 lt!648994)))))

(declare-fun res!1012110 () Bool)

(assert (=> b!1488099 (= res!1012110 (= (select (arr!48041 lt!648994) (index!51609 lt!649029)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488099 (=> res!1012110 e!834139)))

(assert (= (and d!156597 c!137524) b!1488106))

(assert (= (and d!156597 (not c!137524)) b!1488104))

(assert (= (and b!1488104 c!137523) b!1488105))

(assert (= (and b!1488104 (not c!137523)) b!1488102))

(assert (= (and d!156597 c!137525) b!1488100))

(assert (= (and d!156597 (not c!137525)) b!1488101))

(assert (= (and b!1488101 res!1012109) b!1488098))

(assert (= (and b!1488098 (not res!1012111)) b!1488099))

(assert (= (and b!1488099 (not res!1012110)) b!1488103))

(declare-fun m!1372679 () Bool)

(assert (=> b!1488098 m!1372679))

(assert (=> d!156597 m!1372597))

(declare-fun m!1372681 () Bool)

(assert (=> d!156597 m!1372681))

(assert (=> d!156597 m!1372555))

(assert (=> b!1488099 m!1372679))

(assert (=> b!1488103 m!1372679))

(assert (=> b!1488102 m!1372597))

(declare-fun m!1372683 () Bool)

(assert (=> b!1488102 m!1372683))

(assert (=> b!1488102 m!1372683))

(declare-fun m!1372685 () Bool)

(assert (=> b!1488102 m!1372685))

(assert (=> b!1487994 d!156597))

(declare-fun d!156599 () Bool)

(declare-fun lt!649031 () (_ BitVec 32))

(declare-fun lt!649030 () (_ BitVec 32))

(assert (=> d!156599 (= lt!649031 (bvmul (bvxor lt!649030 (bvlshr lt!649030 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156599 (= lt!649030 ((_ extract 31 0) (bvand (bvxor lt!648992 (bvlshr lt!648992 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156599 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1012108 (let ((h!36100 ((_ extract 31 0) (bvand (bvxor lt!648992 (bvlshr lt!648992 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133202 (bvmul (bvxor h!36100 (bvlshr h!36100 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133202 (bvlshr x!133202 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1012108 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1012108 #b00000000000000000000000000000000))))))

(assert (=> d!156599 (= (toIndex!0 lt!648992 mask!2687) (bvand (bvxor lt!649031 (bvlshr lt!649031 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487994 d!156599))

(declare-fun d!156601 () Bool)

(assert (=> d!156601 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126792 d!156601))

(declare-fun d!156603 () Bool)

(assert (=> d!156603 (= (array_inv!36986 a!2862) (bvsge (size!48592 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126792 d!156603))

(declare-fun d!156605 () Bool)

(assert (=> d!156605 (= (validKeyInArray!0 (select (arr!48041 a!2862) j!93)) (and (not (= (select (arr!48041 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48041 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1487995 d!156605))

(declare-fun b!1488117 () Bool)

(declare-fun e!834154 () Bool)

(declare-fun call!67917 () Bool)

(assert (=> b!1488117 (= e!834154 call!67917)))

(declare-fun b!1488119 () Bool)

(declare-fun e!834151 () Bool)

(declare-fun e!834153 () Bool)

(assert (=> b!1488119 (= e!834151 e!834153)))

(declare-fun res!1012118 () Bool)

(assert (=> b!1488119 (=> (not res!1012118) (not e!834153))))

(declare-fun e!834152 () Bool)

(assert (=> b!1488119 (= res!1012118 (not e!834152))))

(declare-fun res!1012119 () Bool)

(assert (=> b!1488119 (=> (not res!1012119) (not e!834152))))

(assert (=> b!1488119 (= res!1012119 (validKeyInArray!0 (select (arr!48041 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1488120 () Bool)

(assert (=> b!1488120 (= e!834153 e!834154)))

(declare-fun c!137528 () Bool)

(assert (=> b!1488120 (= c!137528 (validKeyInArray!0 (select (arr!48041 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1488121 () Bool)

(declare-fun contains!9934 (List!34722 (_ BitVec 64)) Bool)

(assert (=> b!1488121 (= e!834152 (contains!9934 Nil!34719 (select (arr!48041 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67914 () Bool)

(assert (=> bm!67914 (= call!67917 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137528 (Cons!34718 (select (arr!48041 a!2862) #b00000000000000000000000000000000) Nil!34719) Nil!34719)))))

(declare-fun b!1488118 () Bool)

(assert (=> b!1488118 (= e!834154 call!67917)))

(declare-fun d!156607 () Bool)

(declare-fun res!1012120 () Bool)

(assert (=> d!156607 (=> res!1012120 e!834151)))

(assert (=> d!156607 (= res!1012120 (bvsge #b00000000000000000000000000000000 (size!48592 a!2862)))))

(assert (=> d!156607 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34719) e!834151)))

(assert (= (and d!156607 (not res!1012120)) b!1488119))

(assert (= (and b!1488119 res!1012119) b!1488121))

(assert (= (and b!1488119 res!1012118) b!1488120))

(assert (= (and b!1488120 c!137528) b!1488117))

(assert (= (and b!1488120 (not c!137528)) b!1488118))

(assert (= (or b!1488117 b!1488118) bm!67914))

(declare-fun m!1372687 () Bool)

(assert (=> b!1488119 m!1372687))

(assert (=> b!1488119 m!1372687))

(declare-fun m!1372689 () Bool)

(assert (=> b!1488119 m!1372689))

(assert (=> b!1488120 m!1372687))

(assert (=> b!1488120 m!1372687))

(assert (=> b!1488120 m!1372689))

(assert (=> b!1488121 m!1372687))

(assert (=> b!1488121 m!1372687))

(declare-fun m!1372691 () Bool)

(assert (=> b!1488121 m!1372691))

(assert (=> bm!67914 m!1372687))

(declare-fun m!1372693 () Bool)

(assert (=> bm!67914 m!1372693))

(assert (=> b!1487997 d!156607))

(declare-fun b!1488134 () Bool)

(declare-fun e!834163 () SeekEntryResult!12304)

(assert (=> b!1488134 (= e!834163 (MissingVacant!12304 intermediateAfterIndex!19))))

(declare-fun b!1488135 () Bool)

(declare-fun e!834162 () SeekEntryResult!12304)

(assert (=> b!1488135 (= e!834162 Undefined!12304)))

(declare-fun b!1488136 () Bool)

(declare-fun e!834161 () SeekEntryResult!12304)

(assert (=> b!1488136 (= e!834162 e!834161)))

(declare-fun c!137536 () Bool)

(declare-fun lt!649036 () (_ BitVec 64))

(assert (=> b!1488136 (= c!137536 (= lt!649036 lt!648992))))

(declare-fun lt!649037 () SeekEntryResult!12304)

(declare-fun d!156609 () Bool)

(assert (=> d!156609 (and (or ((_ is Undefined!12304) lt!649037) (not ((_ is Found!12304) lt!649037)) (and (bvsge (index!51608 lt!649037) #b00000000000000000000000000000000) (bvslt (index!51608 lt!649037) (size!48592 lt!648994)))) (or ((_ is Undefined!12304) lt!649037) ((_ is Found!12304) lt!649037) (not ((_ is MissingVacant!12304) lt!649037)) (not (= (index!51610 lt!649037) intermediateAfterIndex!19)) (and (bvsge (index!51610 lt!649037) #b00000000000000000000000000000000) (bvslt (index!51610 lt!649037) (size!48592 lt!648994)))) (or ((_ is Undefined!12304) lt!649037) (ite ((_ is Found!12304) lt!649037) (= (select (arr!48041 lt!648994) (index!51608 lt!649037)) lt!648992) (and ((_ is MissingVacant!12304) lt!649037) (= (index!51610 lt!649037) intermediateAfterIndex!19) (= (select (arr!48041 lt!648994) (index!51610 lt!649037)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156609 (= lt!649037 e!834162)))

(declare-fun c!137535 () Bool)

(assert (=> d!156609 (= c!137535 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156609 (= lt!649036 (select (arr!48041 lt!648994) index!646))))

(assert (=> d!156609 (validMask!0 mask!2687)))

(assert (=> d!156609 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648992 lt!648994 mask!2687) lt!649037)))

(declare-fun b!1488137 () Bool)

(assert (=> b!1488137 (= e!834163 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!648992 lt!648994 mask!2687))))

(declare-fun b!1488138 () Bool)

(declare-fun c!137537 () Bool)

(assert (=> b!1488138 (= c!137537 (= lt!649036 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488138 (= e!834161 e!834163)))

(declare-fun b!1488139 () Bool)

(assert (=> b!1488139 (= e!834161 (Found!12304 index!646))))

(assert (= (and d!156609 c!137535) b!1488135))

(assert (= (and d!156609 (not c!137535)) b!1488136))

(assert (= (and b!1488136 c!137536) b!1488139))

(assert (= (and b!1488136 (not c!137536)) b!1488138))

(assert (= (and b!1488138 c!137537) b!1488134))

(assert (= (and b!1488138 (not c!137537)) b!1488137))

(declare-fun m!1372695 () Bool)

(assert (=> d!156609 m!1372695))

(declare-fun m!1372697 () Bool)

(assert (=> d!156609 m!1372697))

(declare-fun m!1372699 () Bool)

(assert (=> d!156609 m!1372699))

(assert (=> d!156609 m!1372555))

(assert (=> b!1488137 m!1372593))

(assert (=> b!1488137 m!1372593))

(declare-fun m!1372701 () Bool)

(assert (=> b!1488137 m!1372701))

(assert (=> b!1487988 d!156609))

(declare-fun e!834188 () SeekEntryResult!12304)

(declare-fun lt!649058 () SeekEntryResult!12304)

(declare-fun b!1488188 () Bool)

(assert (=> b!1488188 (= e!834188 (seekKeyOrZeroReturnVacant!0 (x!133199 lt!649058) (index!51609 lt!649058) (index!51609 lt!649058) lt!648992 lt!648994 mask!2687))))

(declare-fun b!1488189 () Bool)

(declare-fun e!834190 () SeekEntryResult!12304)

(assert (=> b!1488189 (= e!834190 Undefined!12304)))

(declare-fun b!1488190 () Bool)

(declare-fun c!137564 () Bool)

(declare-fun lt!649057 () (_ BitVec 64))

(assert (=> b!1488190 (= c!137564 (= lt!649057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!834189 () SeekEntryResult!12304)

(assert (=> b!1488190 (= e!834189 e!834188)))

(declare-fun d!156613 () Bool)

(declare-fun lt!649056 () SeekEntryResult!12304)

(assert (=> d!156613 (and (or ((_ is Undefined!12304) lt!649056) (not ((_ is Found!12304) lt!649056)) (and (bvsge (index!51608 lt!649056) #b00000000000000000000000000000000) (bvslt (index!51608 lt!649056) (size!48592 lt!648994)))) (or ((_ is Undefined!12304) lt!649056) ((_ is Found!12304) lt!649056) (not ((_ is MissingZero!12304) lt!649056)) (and (bvsge (index!51607 lt!649056) #b00000000000000000000000000000000) (bvslt (index!51607 lt!649056) (size!48592 lt!648994)))) (or ((_ is Undefined!12304) lt!649056) ((_ is Found!12304) lt!649056) ((_ is MissingZero!12304) lt!649056) (not ((_ is MissingVacant!12304) lt!649056)) (and (bvsge (index!51610 lt!649056) #b00000000000000000000000000000000) (bvslt (index!51610 lt!649056) (size!48592 lt!648994)))) (or ((_ is Undefined!12304) lt!649056) (ite ((_ is Found!12304) lt!649056) (= (select (arr!48041 lt!648994) (index!51608 lt!649056)) lt!648992) (ite ((_ is MissingZero!12304) lt!649056) (= (select (arr!48041 lt!648994) (index!51607 lt!649056)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12304) lt!649056) (= (select (arr!48041 lt!648994) (index!51610 lt!649056)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156613 (= lt!649056 e!834190)))

(declare-fun c!137562 () Bool)

(assert (=> d!156613 (= c!137562 (and ((_ is Intermediate!12304) lt!649058) (undefined!13116 lt!649058)))))

(assert (=> d!156613 (= lt!649058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648992 mask!2687) lt!648992 lt!648994 mask!2687))))

(assert (=> d!156613 (validMask!0 mask!2687)))

(assert (=> d!156613 (= (seekEntryOrOpen!0 lt!648992 lt!648994 mask!2687) lt!649056)))

(declare-fun b!1488191 () Bool)

(assert (=> b!1488191 (= e!834189 (Found!12304 (index!51609 lt!649058)))))

(declare-fun b!1488192 () Bool)

(assert (=> b!1488192 (= e!834188 (MissingZero!12304 (index!51609 lt!649058)))))

(declare-fun b!1488193 () Bool)

(assert (=> b!1488193 (= e!834190 e!834189)))

(assert (=> b!1488193 (= lt!649057 (select (arr!48041 lt!648994) (index!51609 lt!649058)))))

(declare-fun c!137563 () Bool)

(assert (=> b!1488193 (= c!137563 (= lt!649057 lt!648992))))

(assert (= (and d!156613 c!137562) b!1488189))

(assert (= (and d!156613 (not c!137562)) b!1488193))

(assert (= (and b!1488193 c!137563) b!1488191))

(assert (= (and b!1488193 (not c!137563)) b!1488190))

(assert (= (and b!1488190 c!137564) b!1488192))

(assert (= (and b!1488190 (not c!137564)) b!1488188))

(declare-fun m!1372721 () Bool)

(assert (=> b!1488188 m!1372721))

(declare-fun m!1372723 () Bool)

(assert (=> d!156613 m!1372723))

(declare-fun m!1372725 () Bool)

(assert (=> d!156613 m!1372725))

(assert (=> d!156613 m!1372597))

(assert (=> d!156613 m!1372597))

(assert (=> d!156613 m!1372599))

(assert (=> d!156613 m!1372555))

(declare-fun m!1372727 () Bool)

(assert (=> d!156613 m!1372727))

(declare-fun m!1372729 () Bool)

(assert (=> b!1488193 m!1372729))

(assert (=> b!1487988 d!156613))

(declare-fun b!1488194 () Bool)

(declare-fun lt!649061 () SeekEntryResult!12304)

(declare-fun e!834191 () SeekEntryResult!12304)

(assert (=> b!1488194 (= e!834191 (seekKeyOrZeroReturnVacant!0 (x!133199 lt!649061) (index!51609 lt!649061) (index!51609 lt!649061) (select (arr!48041 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1488195 () Bool)

(declare-fun e!834193 () SeekEntryResult!12304)

(assert (=> b!1488195 (= e!834193 Undefined!12304)))

(declare-fun b!1488196 () Bool)

(declare-fun c!137567 () Bool)

(declare-fun lt!649060 () (_ BitVec 64))

(assert (=> b!1488196 (= c!137567 (= lt!649060 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!834192 () SeekEntryResult!12304)

(assert (=> b!1488196 (= e!834192 e!834191)))

(declare-fun d!156623 () Bool)

(declare-fun lt!649059 () SeekEntryResult!12304)

(assert (=> d!156623 (and (or ((_ is Undefined!12304) lt!649059) (not ((_ is Found!12304) lt!649059)) (and (bvsge (index!51608 lt!649059) #b00000000000000000000000000000000) (bvslt (index!51608 lt!649059) (size!48592 a!2862)))) (or ((_ is Undefined!12304) lt!649059) ((_ is Found!12304) lt!649059) (not ((_ is MissingZero!12304) lt!649059)) (and (bvsge (index!51607 lt!649059) #b00000000000000000000000000000000) (bvslt (index!51607 lt!649059) (size!48592 a!2862)))) (or ((_ is Undefined!12304) lt!649059) ((_ is Found!12304) lt!649059) ((_ is MissingZero!12304) lt!649059) (not ((_ is MissingVacant!12304) lt!649059)) (and (bvsge (index!51610 lt!649059) #b00000000000000000000000000000000) (bvslt (index!51610 lt!649059) (size!48592 a!2862)))) (or ((_ is Undefined!12304) lt!649059) (ite ((_ is Found!12304) lt!649059) (= (select (arr!48041 a!2862) (index!51608 lt!649059)) (select (arr!48041 a!2862) j!93)) (ite ((_ is MissingZero!12304) lt!649059) (= (select (arr!48041 a!2862) (index!51607 lt!649059)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12304) lt!649059) (= (select (arr!48041 a!2862) (index!51610 lt!649059)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156623 (= lt!649059 e!834193)))

(declare-fun c!137565 () Bool)

(assert (=> d!156623 (= c!137565 (and ((_ is Intermediate!12304) lt!649061) (undefined!13116 lt!649061)))))

(assert (=> d!156623 (= lt!649061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48041 a!2862) j!93) mask!2687) (select (arr!48041 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156623 (validMask!0 mask!2687)))

(assert (=> d!156623 (= (seekEntryOrOpen!0 (select (arr!48041 a!2862) j!93) a!2862 mask!2687) lt!649059)))

(declare-fun b!1488197 () Bool)

(assert (=> b!1488197 (= e!834192 (Found!12304 (index!51609 lt!649061)))))

(declare-fun b!1488198 () Bool)

(assert (=> b!1488198 (= e!834191 (MissingZero!12304 (index!51609 lt!649061)))))

(declare-fun b!1488199 () Bool)

(assert (=> b!1488199 (= e!834193 e!834192)))

(assert (=> b!1488199 (= lt!649060 (select (arr!48041 a!2862) (index!51609 lt!649061)))))

(declare-fun c!137566 () Bool)

(assert (=> b!1488199 (= c!137566 (= lt!649060 (select (arr!48041 a!2862) j!93)))))

(assert (= (and d!156623 c!137565) b!1488195))

(assert (= (and d!156623 (not c!137565)) b!1488199))

(assert (= (and b!1488199 c!137566) b!1488197))

(assert (= (and b!1488199 (not c!137566)) b!1488196))

(assert (= (and b!1488196 c!137567) b!1488198))

(assert (= (and b!1488196 (not c!137567)) b!1488194))

(assert (=> b!1488194 m!1372559))

(declare-fun m!1372731 () Bool)

(assert (=> b!1488194 m!1372731))

(declare-fun m!1372733 () Bool)

(assert (=> d!156623 m!1372733))

(declare-fun m!1372735 () Bool)

(assert (=> d!156623 m!1372735))

(assert (=> d!156623 m!1372559))

(assert (=> d!156623 m!1372609))

(assert (=> d!156623 m!1372609))

(assert (=> d!156623 m!1372559))

(assert (=> d!156623 m!1372611))

(assert (=> d!156623 m!1372555))

(declare-fun m!1372737 () Bool)

(assert (=> d!156623 m!1372737))

(declare-fun m!1372739 () Bool)

(assert (=> b!1488199 m!1372739))

(assert (=> b!1487987 d!156623))

(declare-fun b!1488200 () Bool)

(declare-fun lt!649063 () SeekEntryResult!12304)

(assert (=> b!1488200 (and (bvsge (index!51609 lt!649063) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649063) (size!48592 a!2862)))))

(declare-fun res!1012123 () Bool)

(assert (=> b!1488200 (= res!1012123 (= (select (arr!48041 a!2862) (index!51609 lt!649063)) (select (arr!48041 a!2862) j!93)))))

(declare-fun e!834195 () Bool)

(assert (=> b!1488200 (=> res!1012123 e!834195)))

(declare-fun e!834198 () Bool)

(assert (=> b!1488200 (= e!834198 e!834195)))

(declare-fun b!1488202 () Bool)

(declare-fun e!834196 () Bool)

(assert (=> b!1488202 (= e!834196 (bvsge (x!133199 lt!649063) #b01111111111111111111111111111110))))

(declare-fun b!1488203 () Bool)

(assert (=> b!1488203 (= e!834196 e!834198)))

(declare-fun res!1012121 () Bool)

(assert (=> b!1488203 (= res!1012121 (and ((_ is Intermediate!12304) lt!649063) (not (undefined!13116 lt!649063)) (bvslt (x!133199 lt!649063) #b01111111111111111111111111111110) (bvsge (x!133199 lt!649063) #b00000000000000000000000000000000) (bvsge (x!133199 lt!649063) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1488203 (=> (not res!1012121) (not e!834198))))

(declare-fun b!1488204 () Bool)

(declare-fun e!834194 () SeekEntryResult!12304)

(assert (=> b!1488204 (= e!834194 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!648990 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48041 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1488205 () Bool)

(assert (=> b!1488205 (and (bvsge (index!51609 lt!649063) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649063) (size!48592 a!2862)))))

(assert (=> b!1488205 (= e!834195 (= (select (arr!48041 a!2862) (index!51609 lt!649063)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488206 () Bool)

(declare-fun e!834197 () SeekEntryResult!12304)

(assert (=> b!1488206 (= e!834197 e!834194)))

(declare-fun c!137568 () Bool)

(declare-fun lt!649062 () (_ BitVec 64))

(assert (=> b!1488206 (= c!137568 (or (= lt!649062 (select (arr!48041 a!2862) j!93)) (= (bvadd lt!649062 lt!649062) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488207 () Bool)

(assert (=> b!1488207 (= e!834194 (Intermediate!12304 false lt!648990 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1488208 () Bool)

(assert (=> b!1488208 (= e!834197 (Intermediate!12304 true lt!648990 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun d!156625 () Bool)

(assert (=> d!156625 e!834196))

(declare-fun c!137570 () Bool)

(assert (=> d!156625 (= c!137570 (and ((_ is Intermediate!12304) lt!649063) (undefined!13116 lt!649063)))))

(assert (=> d!156625 (= lt!649063 e!834197)))

(declare-fun c!137569 () Bool)

(assert (=> d!156625 (= c!137569 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!156625 (= lt!649062 (select (arr!48041 a!2862) lt!648990))))

(assert (=> d!156625 (validMask!0 mask!2687)))

(assert (=> d!156625 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648990 (select (arr!48041 a!2862) j!93) a!2862 mask!2687) lt!649063)))

(declare-fun b!1488201 () Bool)

(assert (=> b!1488201 (and (bvsge (index!51609 lt!649063) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649063) (size!48592 a!2862)))))

(declare-fun res!1012122 () Bool)

(assert (=> b!1488201 (= res!1012122 (= (select (arr!48041 a!2862) (index!51609 lt!649063)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488201 (=> res!1012122 e!834195)))

(assert (= (and d!156625 c!137569) b!1488208))

(assert (= (and d!156625 (not c!137569)) b!1488206))

(assert (= (and b!1488206 c!137568) b!1488207))

(assert (= (and b!1488206 (not c!137568)) b!1488204))

(assert (= (and d!156625 c!137570) b!1488202))

(assert (= (and d!156625 (not c!137570)) b!1488203))

(assert (= (and b!1488203 res!1012121) b!1488200))

(assert (= (and b!1488200 (not res!1012123)) b!1488201))

(assert (= (and b!1488201 (not res!1012122)) b!1488205))

(declare-fun m!1372741 () Bool)

(assert (=> b!1488200 m!1372741))

(declare-fun m!1372743 () Bool)

(assert (=> d!156625 m!1372743))

(assert (=> d!156625 m!1372555))

(assert (=> b!1488201 m!1372741))

(assert (=> b!1488205 m!1372741))

(declare-fun m!1372745 () Bool)

(assert (=> b!1488204 m!1372745))

(assert (=> b!1488204 m!1372745))

(assert (=> b!1488204 m!1372559))

(declare-fun m!1372747 () Bool)

(assert (=> b!1488204 m!1372747))

(assert (=> b!1488000 d!156625))

(declare-fun b!1488209 () Bool)

(declare-fun e!834201 () SeekEntryResult!12304)

(assert (=> b!1488209 (= e!834201 (MissingVacant!12304 intermediateAfterIndex!19))))

(declare-fun b!1488210 () Bool)

(declare-fun e!834200 () SeekEntryResult!12304)

(assert (=> b!1488210 (= e!834200 Undefined!12304)))

(declare-fun b!1488211 () Bool)

(declare-fun e!834199 () SeekEntryResult!12304)

(assert (=> b!1488211 (= e!834200 e!834199)))

(declare-fun c!137572 () Bool)

(declare-fun lt!649064 () (_ BitVec 64))

(assert (=> b!1488211 (= c!137572 (= lt!649064 lt!648992))))

(declare-fun d!156627 () Bool)

(declare-fun lt!649065 () SeekEntryResult!12304)

(assert (=> d!156627 (and (or ((_ is Undefined!12304) lt!649065) (not ((_ is Found!12304) lt!649065)) (and (bvsge (index!51608 lt!649065) #b00000000000000000000000000000000) (bvslt (index!51608 lt!649065) (size!48592 lt!648994)))) (or ((_ is Undefined!12304) lt!649065) ((_ is Found!12304) lt!649065) (not ((_ is MissingVacant!12304) lt!649065)) (not (= (index!51610 lt!649065) intermediateAfterIndex!19)) (and (bvsge (index!51610 lt!649065) #b00000000000000000000000000000000) (bvslt (index!51610 lt!649065) (size!48592 lt!648994)))) (or ((_ is Undefined!12304) lt!649065) (ite ((_ is Found!12304) lt!649065) (= (select (arr!48041 lt!648994) (index!51608 lt!649065)) lt!648992) (and ((_ is MissingVacant!12304) lt!649065) (= (index!51610 lt!649065) intermediateAfterIndex!19) (= (select (arr!48041 lt!648994) (index!51610 lt!649065)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156627 (= lt!649065 e!834200)))

(declare-fun c!137571 () Bool)

(assert (=> d!156627 (= c!137571 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!156627 (= lt!649064 (select (arr!48041 lt!648994) lt!648990))))

(assert (=> d!156627 (validMask!0 mask!2687)))

(assert (=> d!156627 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648990 intermediateAfterIndex!19 lt!648992 lt!648994 mask!2687) lt!649065)))

(declare-fun b!1488212 () Bool)

(assert (=> b!1488212 (= e!834201 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!648990 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) intermediateAfterIndex!19 lt!648992 lt!648994 mask!2687))))

(declare-fun b!1488213 () Bool)

(declare-fun c!137573 () Bool)

(assert (=> b!1488213 (= c!137573 (= lt!649064 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488213 (= e!834199 e!834201)))

(declare-fun b!1488214 () Bool)

(assert (=> b!1488214 (= e!834199 (Found!12304 lt!648990))))

(assert (= (and d!156627 c!137571) b!1488210))

(assert (= (and d!156627 (not c!137571)) b!1488211))

(assert (= (and b!1488211 c!137572) b!1488214))

(assert (= (and b!1488211 (not c!137572)) b!1488213))

(assert (= (and b!1488213 c!137573) b!1488209))

(assert (= (and b!1488213 (not c!137573)) b!1488212))

(declare-fun m!1372749 () Bool)

(assert (=> d!156627 m!1372749))

(declare-fun m!1372751 () Bool)

(assert (=> d!156627 m!1372751))

(declare-fun m!1372753 () Bool)

(assert (=> d!156627 m!1372753))

(assert (=> d!156627 m!1372555))

(assert (=> b!1488212 m!1372745))

(assert (=> b!1488212 m!1372745))

(declare-fun m!1372755 () Bool)

(assert (=> b!1488212 m!1372755))

(assert (=> b!1487999 d!156627))

(declare-fun b!1488247 () Bool)

(declare-fun e!834225 () Bool)

(declare-fun e!834223 () Bool)

(assert (=> b!1488247 (= e!834225 e!834223)))

(declare-fun lt!649089 () (_ BitVec 64))

(assert (=> b!1488247 (= lt!649089 (select (arr!48041 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!649087 () Unit!49896)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99545 (_ BitVec 64) (_ BitVec 32)) Unit!49896)

(assert (=> b!1488247 (= lt!649087 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!649089 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1488247 (arrayContainsKey!0 a!2862 lt!649089 #b00000000000000000000000000000000)))

(declare-fun lt!649088 () Unit!49896)

(assert (=> b!1488247 (= lt!649088 lt!649087)))

(declare-fun res!1012135 () Bool)

(assert (=> b!1488247 (= res!1012135 (= (seekEntryOrOpen!0 (select (arr!48041 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12304 #b00000000000000000000000000000000)))))

(assert (=> b!1488247 (=> (not res!1012135) (not e!834223))))

(declare-fun b!1488248 () Bool)

(declare-fun e!834224 () Bool)

(assert (=> b!1488248 (= e!834224 e!834225)))

(declare-fun c!137585 () Bool)

(assert (=> b!1488248 (= c!137585 (validKeyInArray!0 (select (arr!48041 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1488249 () Bool)

(declare-fun call!67923 () Bool)

(assert (=> b!1488249 (= e!834225 call!67923)))

(declare-fun b!1488250 () Bool)

(assert (=> b!1488250 (= e!834223 call!67923)))

(declare-fun bm!67920 () Bool)

(assert (=> bm!67920 (= call!67923 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156629 () Bool)

(declare-fun res!1012134 () Bool)

(assert (=> d!156629 (=> res!1012134 e!834224)))

(assert (=> d!156629 (= res!1012134 (bvsge #b00000000000000000000000000000000 (size!48592 a!2862)))))

(assert (=> d!156629 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!834224)))

(assert (= (and d!156629 (not res!1012134)) b!1488248))

(assert (= (and b!1488248 c!137585) b!1488247))

(assert (= (and b!1488248 (not c!137585)) b!1488249))

(assert (= (and b!1488247 res!1012135) b!1488250))

(assert (= (or b!1488250 b!1488249) bm!67920))

(assert (=> b!1488247 m!1372687))

(declare-fun m!1372769 () Bool)

(assert (=> b!1488247 m!1372769))

(declare-fun m!1372771 () Bool)

(assert (=> b!1488247 m!1372771))

(assert (=> b!1488247 m!1372687))

(declare-fun m!1372773 () Bool)

(assert (=> b!1488247 m!1372773))

(assert (=> b!1488248 m!1372687))

(assert (=> b!1488248 m!1372687))

(assert (=> b!1488248 m!1372689))

(declare-fun m!1372775 () Bool)

(assert (=> bm!67920 m!1372775))

(assert (=> b!1488001 d!156629))

(declare-fun d!156633 () Bool)

(declare-fun lt!649095 () (_ BitVec 32))

(assert (=> d!156633 (and (bvsge lt!649095 #b00000000000000000000000000000000) (bvslt lt!649095 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156633 (= lt!649095 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156633 (validMask!0 mask!2687)))

(assert (=> d!156633 (= (nextIndex!0 index!646 x!665 mask!2687) lt!649095)))

(declare-fun bs!42788 () Bool)

(assert (= bs!42788 d!156633))

(declare-fun m!1372777 () Bool)

(assert (=> bs!42788 m!1372777))

(assert (=> bs!42788 m!1372555))

(assert (=> b!1487990 d!156633))

(assert (=> b!1487990 d!156609))

(assert (=> b!1487990 d!156613))

(declare-fun b!1488257 () Bool)

(declare-fun lt!649097 () SeekEntryResult!12304)

(assert (=> b!1488257 (and (bvsge (index!51609 lt!649097) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649097) (size!48592 lt!648994)))))

(declare-fun res!1012138 () Bool)

(assert (=> b!1488257 (= res!1012138 (= (select (arr!48041 lt!648994) (index!51609 lt!649097)) lt!648992))))

(declare-fun e!834230 () Bool)

(assert (=> b!1488257 (=> res!1012138 e!834230)))

(declare-fun e!834233 () Bool)

(assert (=> b!1488257 (= e!834233 e!834230)))

(declare-fun b!1488259 () Bool)

(declare-fun e!834231 () Bool)

(assert (=> b!1488259 (= e!834231 (bvsge (x!133199 lt!649097) #b01111111111111111111111111111110))))

(declare-fun b!1488260 () Bool)

(assert (=> b!1488260 (= e!834231 e!834233)))

(declare-fun res!1012136 () Bool)

(assert (=> b!1488260 (= res!1012136 (and ((_ is Intermediate!12304) lt!649097) (not (undefined!13116 lt!649097)) (bvslt (x!133199 lt!649097) #b01111111111111111111111111111110) (bvsge (x!133199 lt!649097) #b00000000000000000000000000000000) (bvsge (x!133199 lt!649097) x!665)))))

(assert (=> b!1488260 (=> (not res!1012136) (not e!834233))))

(declare-fun b!1488261 () Bool)

(declare-fun e!834229 () SeekEntryResult!12304)

(assert (=> b!1488261 (= e!834229 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!648992 lt!648994 mask!2687))))

(declare-fun b!1488262 () Bool)

(assert (=> b!1488262 (and (bvsge (index!51609 lt!649097) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649097) (size!48592 lt!648994)))))

(assert (=> b!1488262 (= e!834230 (= (select (arr!48041 lt!648994) (index!51609 lt!649097)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488263 () Bool)

(declare-fun e!834232 () SeekEntryResult!12304)

(assert (=> b!1488263 (= e!834232 e!834229)))

(declare-fun c!137589 () Bool)

(declare-fun lt!649096 () (_ BitVec 64))

(assert (=> b!1488263 (= c!137589 (or (= lt!649096 lt!648992) (= (bvadd lt!649096 lt!649096) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488264 () Bool)

(assert (=> b!1488264 (= e!834229 (Intermediate!12304 false index!646 x!665))))

(declare-fun b!1488265 () Bool)

(assert (=> b!1488265 (= e!834232 (Intermediate!12304 true index!646 x!665))))

(declare-fun d!156635 () Bool)

(assert (=> d!156635 e!834231))

(declare-fun c!137591 () Bool)

(assert (=> d!156635 (= c!137591 (and ((_ is Intermediate!12304) lt!649097) (undefined!13116 lt!649097)))))

(assert (=> d!156635 (= lt!649097 e!834232)))

(declare-fun c!137590 () Bool)

(assert (=> d!156635 (= c!137590 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156635 (= lt!649096 (select (arr!48041 lt!648994) index!646))))

(assert (=> d!156635 (validMask!0 mask!2687)))

(assert (=> d!156635 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648992 lt!648994 mask!2687) lt!649097)))

(declare-fun b!1488258 () Bool)

(assert (=> b!1488258 (and (bvsge (index!51609 lt!649097) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649097) (size!48592 lt!648994)))))

(declare-fun res!1012137 () Bool)

(assert (=> b!1488258 (= res!1012137 (= (select (arr!48041 lt!648994) (index!51609 lt!649097)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488258 (=> res!1012137 e!834230)))

(assert (= (and d!156635 c!137590) b!1488265))

(assert (= (and d!156635 (not c!137590)) b!1488263))

(assert (= (and b!1488263 c!137589) b!1488264))

(assert (= (and b!1488263 (not c!137589)) b!1488261))

(assert (= (and d!156635 c!137591) b!1488259))

(assert (= (and d!156635 (not c!137591)) b!1488260))

(assert (= (and b!1488260 res!1012136) b!1488257))

(assert (= (and b!1488257 (not res!1012138)) b!1488258))

(assert (= (and b!1488258 (not res!1012137)) b!1488262))

(declare-fun m!1372789 () Bool)

(assert (=> b!1488257 m!1372789))

(assert (=> d!156635 m!1372699))

(assert (=> d!156635 m!1372555))

(assert (=> b!1488258 m!1372789))

(assert (=> b!1488262 m!1372789))

(assert (=> b!1488261 m!1372593))

(assert (=> b!1488261 m!1372593))

(declare-fun m!1372791 () Bool)

(assert (=> b!1488261 m!1372791))

(assert (=> b!1488002 d!156635))

(declare-fun b!1488266 () Bool)

(declare-fun e!834236 () Bool)

(declare-fun e!834234 () Bool)

(assert (=> b!1488266 (= e!834236 e!834234)))

(declare-fun lt!649100 () (_ BitVec 64))

(assert (=> b!1488266 (= lt!649100 (select (arr!48041 a!2862) j!93))))

(declare-fun lt!649098 () Unit!49896)

(assert (=> b!1488266 (= lt!649098 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!649100 j!93))))

(assert (=> b!1488266 (arrayContainsKey!0 a!2862 lt!649100 #b00000000000000000000000000000000)))

(declare-fun lt!649099 () Unit!49896)

(assert (=> b!1488266 (= lt!649099 lt!649098)))

(declare-fun res!1012140 () Bool)

(assert (=> b!1488266 (= res!1012140 (= (seekEntryOrOpen!0 (select (arr!48041 a!2862) j!93) a!2862 mask!2687) (Found!12304 j!93)))))

(assert (=> b!1488266 (=> (not res!1012140) (not e!834234))))

(declare-fun b!1488267 () Bool)

(declare-fun e!834235 () Bool)

(assert (=> b!1488267 (= e!834235 e!834236)))

(declare-fun c!137592 () Bool)

(assert (=> b!1488267 (= c!137592 (validKeyInArray!0 (select (arr!48041 a!2862) j!93)))))

(declare-fun b!1488268 () Bool)

(declare-fun call!67924 () Bool)

(assert (=> b!1488268 (= e!834236 call!67924)))

(declare-fun b!1488269 () Bool)

(assert (=> b!1488269 (= e!834234 call!67924)))

(declare-fun bm!67921 () Bool)

(assert (=> bm!67921 (= call!67924 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156639 () Bool)

(declare-fun res!1012139 () Bool)

(assert (=> d!156639 (=> res!1012139 e!834235)))

(assert (=> d!156639 (= res!1012139 (bvsge j!93 (size!48592 a!2862)))))

(assert (=> d!156639 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!834235)))

(assert (= (and d!156639 (not res!1012139)) b!1488267))

(assert (= (and b!1488267 c!137592) b!1488266))

(assert (= (and b!1488267 (not c!137592)) b!1488268))

(assert (= (and b!1488266 res!1012140) b!1488269))

(assert (= (or b!1488269 b!1488268) bm!67921))

(assert (=> b!1488266 m!1372559))

(declare-fun m!1372793 () Bool)

(assert (=> b!1488266 m!1372793))

(declare-fun m!1372795 () Bool)

(assert (=> b!1488266 m!1372795))

(assert (=> b!1488266 m!1372559))

(assert (=> b!1488266 m!1372561))

(assert (=> b!1488267 m!1372559))

(assert (=> b!1488267 m!1372559))

(assert (=> b!1488267 m!1372583))

(declare-fun m!1372797 () Bool)

(assert (=> bm!67921 m!1372797))

(assert (=> b!1487991 d!156639))

(declare-fun d!156641 () Bool)

(assert (=> d!156641 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649107 () Unit!49896)

(declare-fun choose!38 (array!99545 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49896)

(assert (=> d!156641 (= lt!649107 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156641 (validMask!0 mask!2687)))

(assert (=> d!156641 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!649107)))

(declare-fun bs!42789 () Bool)

(assert (= bs!42789 d!156641))

(assert (=> bs!42789 m!1372579))

(declare-fun m!1372799 () Bool)

(assert (=> bs!42789 m!1372799))

(assert (=> bs!42789 m!1372555))

(assert (=> b!1487991 d!156641))

(declare-fun d!156643 () Bool)

(assert (=> d!156643 (= (validKeyInArray!0 (select (arr!48041 a!2862) i!1006)) (and (not (= (select (arr!48041 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48041 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1488004 d!156643))

(declare-fun b!1488286 () Bool)

(declare-fun lt!649115 () SeekEntryResult!12304)

(assert (=> b!1488286 (and (bvsge (index!51609 lt!649115) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649115) (size!48592 a!2862)))))

(declare-fun res!1012147 () Bool)

(assert (=> b!1488286 (= res!1012147 (= (select (arr!48041 a!2862) (index!51609 lt!649115)) (select (arr!48041 a!2862) j!93)))))

(declare-fun e!834248 () Bool)

(assert (=> b!1488286 (=> res!1012147 e!834248)))

(declare-fun e!834251 () Bool)

(assert (=> b!1488286 (= e!834251 e!834248)))

(declare-fun b!1488288 () Bool)

(declare-fun e!834249 () Bool)

(assert (=> b!1488288 (= e!834249 (bvsge (x!133199 lt!649115) #b01111111111111111111111111111110))))

(declare-fun b!1488289 () Bool)

(assert (=> b!1488289 (= e!834249 e!834251)))

(declare-fun res!1012145 () Bool)

(assert (=> b!1488289 (= res!1012145 (and ((_ is Intermediate!12304) lt!649115) (not (undefined!13116 lt!649115)) (bvslt (x!133199 lt!649115) #b01111111111111111111111111111110) (bvsge (x!133199 lt!649115) #b00000000000000000000000000000000) (bvsge (x!133199 lt!649115) x!665)))))

(assert (=> b!1488289 (=> (not res!1012145) (not e!834251))))

(declare-fun e!834247 () SeekEntryResult!12304)

(declare-fun b!1488290 () Bool)

(assert (=> b!1488290 (= e!834247 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48041 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1488291 () Bool)

(assert (=> b!1488291 (and (bvsge (index!51609 lt!649115) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649115) (size!48592 a!2862)))))

(assert (=> b!1488291 (= e!834248 (= (select (arr!48041 a!2862) (index!51609 lt!649115)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488292 () Bool)

(declare-fun e!834250 () SeekEntryResult!12304)

(assert (=> b!1488292 (= e!834250 e!834247)))

(declare-fun lt!649114 () (_ BitVec 64))

(declare-fun c!137599 () Bool)

(assert (=> b!1488292 (= c!137599 (or (= lt!649114 (select (arr!48041 a!2862) j!93)) (= (bvadd lt!649114 lt!649114) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488293 () Bool)

(assert (=> b!1488293 (= e!834247 (Intermediate!12304 false index!646 x!665))))

(declare-fun b!1488294 () Bool)

(assert (=> b!1488294 (= e!834250 (Intermediate!12304 true index!646 x!665))))

(declare-fun d!156645 () Bool)

(assert (=> d!156645 e!834249))

(declare-fun c!137601 () Bool)

(assert (=> d!156645 (= c!137601 (and ((_ is Intermediate!12304) lt!649115) (undefined!13116 lt!649115)))))

(assert (=> d!156645 (= lt!649115 e!834250)))

(declare-fun c!137600 () Bool)

(assert (=> d!156645 (= c!137600 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156645 (= lt!649114 (select (arr!48041 a!2862) index!646))))

(assert (=> d!156645 (validMask!0 mask!2687)))

(assert (=> d!156645 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48041 a!2862) j!93) a!2862 mask!2687) lt!649115)))

(declare-fun b!1488287 () Bool)

(assert (=> b!1488287 (and (bvsge (index!51609 lt!649115) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649115) (size!48592 a!2862)))))

(declare-fun res!1012146 () Bool)

(assert (=> b!1488287 (= res!1012146 (= (select (arr!48041 a!2862) (index!51609 lt!649115)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488287 (=> res!1012146 e!834248)))

(assert (= (and d!156645 c!137600) b!1488294))

(assert (= (and d!156645 (not c!137600)) b!1488292))

(assert (= (and b!1488292 c!137599) b!1488293))

(assert (= (and b!1488292 (not c!137599)) b!1488290))

(assert (= (and d!156645 c!137601) b!1488288))

(assert (= (and d!156645 (not c!137601)) b!1488289))

(assert (= (and b!1488289 res!1012145) b!1488286))

(assert (= (and b!1488286 (not res!1012147)) b!1488287))

(assert (= (and b!1488287 (not res!1012146)) b!1488291))

(declare-fun m!1372801 () Bool)

(assert (=> b!1488286 m!1372801))

(assert (=> d!156645 m!1372577))

(assert (=> d!156645 m!1372555))

(assert (=> b!1488287 m!1372801))

(assert (=> b!1488291 m!1372801))

(assert (=> b!1488290 m!1372593))

(assert (=> b!1488290 m!1372593))

(assert (=> b!1488290 m!1372559))

(declare-fun m!1372803 () Bool)

(assert (=> b!1488290 m!1372803))

(assert (=> b!1487993 d!156645))

(declare-fun b!1488305 () Bool)

(declare-fun lt!649117 () SeekEntryResult!12304)

(assert (=> b!1488305 (and (bvsge (index!51609 lt!649117) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649117) (size!48592 lt!648994)))))

(declare-fun res!1012156 () Bool)

(assert (=> b!1488305 (= res!1012156 (= (select (arr!48041 lt!648994) (index!51609 lt!649117)) lt!648992))))

(declare-fun e!834259 () Bool)

(assert (=> b!1488305 (=> res!1012156 e!834259)))

(declare-fun e!834262 () Bool)

(assert (=> b!1488305 (= e!834262 e!834259)))

(declare-fun b!1488307 () Bool)

(declare-fun e!834260 () Bool)

(assert (=> b!1488307 (= e!834260 (bvsge (x!133199 lt!649117) #b01111111111111111111111111111110))))

(declare-fun b!1488308 () Bool)

(assert (=> b!1488308 (= e!834260 e!834262)))

(declare-fun res!1012154 () Bool)

(assert (=> b!1488308 (= res!1012154 (and ((_ is Intermediate!12304) lt!649117) (not (undefined!13116 lt!649117)) (bvslt (x!133199 lt!649117) #b01111111111111111111111111111110) (bvsge (x!133199 lt!649117) #b00000000000000000000000000000000) (bvsge (x!133199 lt!649117) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1488308 (=> (not res!1012154) (not e!834262))))

(declare-fun e!834258 () SeekEntryResult!12304)

(declare-fun b!1488309 () Bool)

(assert (=> b!1488309 (= e!834258 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!648990 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) lt!648992 lt!648994 mask!2687))))

(declare-fun b!1488310 () Bool)

(assert (=> b!1488310 (and (bvsge (index!51609 lt!649117) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649117) (size!48592 lt!648994)))))

(assert (=> b!1488310 (= e!834259 (= (select (arr!48041 lt!648994) (index!51609 lt!649117)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1488311 () Bool)

(declare-fun e!834261 () SeekEntryResult!12304)

(assert (=> b!1488311 (= e!834261 e!834258)))

(declare-fun c!137604 () Bool)

(declare-fun lt!649116 () (_ BitVec 64))

(assert (=> b!1488311 (= c!137604 (or (= lt!649116 lt!648992) (= (bvadd lt!649116 lt!649116) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1488312 () Bool)

(assert (=> b!1488312 (= e!834258 (Intermediate!12304 false lt!648990 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1488313 () Bool)

(assert (=> b!1488313 (= e!834261 (Intermediate!12304 true lt!648990 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun d!156647 () Bool)

(assert (=> d!156647 e!834260))

(declare-fun c!137606 () Bool)

(assert (=> d!156647 (= c!137606 (and ((_ is Intermediate!12304) lt!649117) (undefined!13116 lt!649117)))))

(assert (=> d!156647 (= lt!649117 e!834261)))

(declare-fun c!137605 () Bool)

(assert (=> d!156647 (= c!137605 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!156647 (= lt!649116 (select (arr!48041 lt!648994) lt!648990))))

(assert (=> d!156647 (validMask!0 mask!2687)))

(assert (=> d!156647 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648990 lt!648992 lt!648994 mask!2687) lt!649117)))

(declare-fun b!1488306 () Bool)

(assert (=> b!1488306 (and (bvsge (index!51609 lt!649117) #b00000000000000000000000000000000) (bvslt (index!51609 lt!649117) (size!48592 lt!648994)))))

(declare-fun res!1012155 () Bool)

(assert (=> b!1488306 (= res!1012155 (= (select (arr!48041 lt!648994) (index!51609 lt!649117)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1488306 (=> res!1012155 e!834259)))

(assert (= (and d!156647 c!137605) b!1488313))

(assert (= (and d!156647 (not c!137605)) b!1488311))

(assert (= (and b!1488311 c!137604) b!1488312))

(assert (= (and b!1488311 (not c!137604)) b!1488309))

(assert (= (and d!156647 c!137606) b!1488307))

(assert (= (and d!156647 (not c!137606)) b!1488308))

(assert (= (and b!1488308 res!1012154) b!1488305))

(assert (= (and b!1488305 (not res!1012156)) b!1488306))

(assert (= (and b!1488306 (not res!1012155)) b!1488310))

(declare-fun m!1372805 () Bool)

(assert (=> b!1488305 m!1372805))

(assert (=> d!156647 m!1372753))

(assert (=> d!156647 m!1372555))

(assert (=> b!1488306 m!1372805))

(assert (=> b!1488310 m!1372805))

(assert (=> b!1488309 m!1372745))

(assert (=> b!1488309 m!1372745))

(declare-fun m!1372807 () Bool)

(assert (=> b!1488309 m!1372807))

(assert (=> b!1488003 d!156647))

(check-sat (not d!156623) (not bm!67920) (not b!1488119) (not b!1488204) (not d!156627) (not b!1488247) (not b!1488194) (not d!156647) (not b!1488212) (not b!1488137) (not d!156635) (not b!1488267) (not b!1488120) (not b!1488309) (not b!1488093) (not b!1488266) (not d!156625) (not d!156641) (not d!156633) (not bm!67921) (not b!1488102) (not d!156597) (not d!156613) (not b!1488188) (not b!1488121) (not b!1488261) (not b!1488248) (not d!156645) (not b!1488290) (not bm!67914) (not d!156609) (not d!156593))
(check-sat)
