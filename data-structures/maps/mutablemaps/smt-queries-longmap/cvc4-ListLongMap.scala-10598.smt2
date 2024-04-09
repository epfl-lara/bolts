; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124772 () Bool)

(assert start!124772)

(declare-fun b!1445985 () Bool)

(declare-fun res!977901 () Bool)

(declare-fun e!814484 () Bool)

(assert (=> b!1445985 (=> (not res!977901) (not e!814484))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98137 0))(
  ( (array!98138 (arr!47352 (Array (_ BitVec 32) (_ BitVec 64))) (size!47903 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98137)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1445985 (= res!977901 (and (= (size!47903 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47903 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47903 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445986 () Bool)

(declare-fun res!977900 () Bool)

(declare-fun e!814485 () Bool)

(assert (=> b!1445986 (=> (not res!977900) (not e!814485))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445986 (= res!977900 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445987 () Bool)

(declare-fun e!814487 () Bool)

(declare-fun e!814488 () Bool)

(assert (=> b!1445987 (= e!814487 e!814488)))

(declare-fun res!977894 () Bool)

(assert (=> b!1445987 (=> (not res!977894) (not e!814488))))

(declare-datatypes ((SeekEntryResult!11627 0))(
  ( (MissingZero!11627 (index!48899 (_ BitVec 32))) (Found!11627 (index!48900 (_ BitVec 32))) (Intermediate!11627 (undefined!12439 Bool) (index!48901 (_ BitVec 32)) (x!130583 (_ BitVec 32))) (Undefined!11627) (MissingVacant!11627 (index!48902 (_ BitVec 32))) )
))
(declare-fun lt!634620 () SeekEntryResult!11627)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98137 (_ BitVec 32)) SeekEntryResult!11627)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445987 (= res!977894 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47352 a!2862) j!93) mask!2687) (select (arr!47352 a!2862) j!93) a!2862 mask!2687) lt!634620))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1445987 (= lt!634620 (Intermediate!11627 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!634621 () array!98137)

(declare-fun b!1445988 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634624 () (_ BitVec 64))

(declare-fun e!814489 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98137 (_ BitVec 32)) SeekEntryResult!11627)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98137 (_ BitVec 32)) SeekEntryResult!11627)

(assert (=> b!1445988 (= e!814489 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634624 lt!634621 mask!2687) (seekEntryOrOpen!0 lt!634624 lt!634621 mask!2687)))))

(declare-fun b!1445989 () Bool)

(declare-fun res!977899 () Bool)

(assert (=> b!1445989 (=> (not res!977899) (not e!814484))))

(declare-datatypes ((List!34033 0))(
  ( (Nil!34030) (Cons!34029 (h!35379 (_ BitVec 64)) (t!48734 List!34033)) )
))
(declare-fun arrayNoDuplicates!0 (array!98137 (_ BitVec 32) List!34033) Bool)

(assert (=> b!1445989 (= res!977899 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34030))))

(declare-fun b!1445990 () Bool)

(declare-fun res!977904 () Bool)

(assert (=> b!1445990 (=> (not res!977904) (not e!814484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445990 (= res!977904 (validKeyInArray!0 (select (arr!47352 a!2862) i!1006)))))

(declare-fun b!1445991 () Bool)

(assert (=> b!1445991 (= e!814488 e!814485)))

(declare-fun res!977893 () Bool)

(assert (=> b!1445991 (=> (not res!977893) (not e!814485))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!634622 () SeekEntryResult!11627)

(assert (=> b!1445991 (= res!977893 (= lt!634622 (Intermediate!11627 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1445991 (= lt!634622 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634624 mask!2687) lt!634624 lt!634621 mask!2687))))

(assert (=> b!1445991 (= lt!634624 (select (store (arr!47352 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445992 () Bool)

(declare-fun res!977905 () Bool)

(assert (=> b!1445992 (=> (not res!977905) (not e!814484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98137 (_ BitVec 32)) Bool)

(assert (=> b!1445992 (= res!977905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!977897 () Bool)

(assert (=> start!124772 (=> (not res!977897) (not e!814484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124772 (= res!977897 (validMask!0 mask!2687))))

(assert (=> start!124772 e!814484))

(assert (=> start!124772 true))

(declare-fun array_inv!36297 (array!98137) Bool)

(assert (=> start!124772 (array_inv!36297 a!2862)))

(declare-fun b!1445993 () Bool)

(declare-fun res!977906 () Bool)

(assert (=> b!1445993 (=> (not res!977906) (not e!814484))))

(assert (=> b!1445993 (= res!977906 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47903 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47903 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47903 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445994 () Bool)

(declare-fun res!977895 () Bool)

(assert (=> b!1445994 (=> (not res!977895) (not e!814485))))

(assert (=> b!1445994 (= res!977895 e!814489)))

(declare-fun c!133559 () Bool)

(assert (=> b!1445994 (= c!133559 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445995 () Bool)

(assert (=> b!1445995 (= e!814484 e!814487)))

(declare-fun res!977898 () Bool)

(assert (=> b!1445995 (=> (not res!977898) (not e!814487))))

(assert (=> b!1445995 (= res!977898 (= (select (store (arr!47352 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445995 (= lt!634621 (array!98138 (store (arr!47352 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47903 a!2862)))))

(declare-fun b!1445996 () Bool)

(declare-fun e!814486 () Bool)

(assert (=> b!1445996 (= e!814486 (or (= (select (arr!47352 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47352 a!2862) intermediateBeforeIndex!19) (select (arr!47352 a!2862) j!93))))))

(declare-fun b!1445997 () Bool)

(declare-fun res!977903 () Bool)

(assert (=> b!1445997 (=> (not res!977903) (not e!814486))))

(assert (=> b!1445997 (= res!977903 (= (seekEntryOrOpen!0 (select (arr!47352 a!2862) j!93) a!2862 mask!2687) (Found!11627 j!93)))))

(declare-fun b!1445998 () Bool)

(assert (=> b!1445998 (= e!814489 (= lt!634622 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634624 lt!634621 mask!2687)))))

(declare-fun b!1445999 () Bool)

(assert (=> b!1445999 (= e!814485 (not true))))

(assert (=> b!1445999 e!814486))

(declare-fun res!977907 () Bool)

(assert (=> b!1445999 (=> (not res!977907) (not e!814486))))

(assert (=> b!1445999 (= res!977907 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48698 0))(
  ( (Unit!48699) )
))
(declare-fun lt!634623 () Unit!48698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98137 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48698)

(assert (=> b!1445999 (= lt!634623 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446000 () Bool)

(declare-fun res!977896 () Bool)

(assert (=> b!1446000 (=> (not res!977896) (not e!814488))))

(assert (=> b!1446000 (= res!977896 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47352 a!2862) j!93) a!2862 mask!2687) lt!634620))))

(declare-fun b!1446001 () Bool)

(declare-fun res!977902 () Bool)

(assert (=> b!1446001 (=> (not res!977902) (not e!814484))))

(assert (=> b!1446001 (= res!977902 (validKeyInArray!0 (select (arr!47352 a!2862) j!93)))))

(assert (= (and start!124772 res!977897) b!1445985))

(assert (= (and b!1445985 res!977901) b!1445990))

(assert (= (and b!1445990 res!977904) b!1446001))

(assert (= (and b!1446001 res!977902) b!1445992))

(assert (= (and b!1445992 res!977905) b!1445989))

(assert (= (and b!1445989 res!977899) b!1445993))

(assert (= (and b!1445993 res!977906) b!1445995))

(assert (= (and b!1445995 res!977898) b!1445987))

(assert (= (and b!1445987 res!977894) b!1446000))

(assert (= (and b!1446000 res!977896) b!1445991))

(assert (= (and b!1445991 res!977893) b!1445994))

(assert (= (and b!1445994 c!133559) b!1445998))

(assert (= (and b!1445994 (not c!133559)) b!1445988))

(assert (= (and b!1445994 res!977895) b!1445986))

(assert (= (and b!1445986 res!977900) b!1445999))

(assert (= (and b!1445999 res!977907) b!1445997))

(assert (= (and b!1445997 res!977903) b!1445996))

(declare-fun m!1334951 () Bool)

(assert (=> b!1445999 m!1334951))

(declare-fun m!1334953 () Bool)

(assert (=> b!1445999 m!1334953))

(declare-fun m!1334955 () Bool)

(assert (=> b!1445987 m!1334955))

(assert (=> b!1445987 m!1334955))

(declare-fun m!1334957 () Bool)

(assert (=> b!1445987 m!1334957))

(assert (=> b!1445987 m!1334957))

(assert (=> b!1445987 m!1334955))

(declare-fun m!1334959 () Bool)

(assert (=> b!1445987 m!1334959))

(declare-fun m!1334961 () Bool)

(assert (=> b!1445988 m!1334961))

(declare-fun m!1334963 () Bool)

(assert (=> b!1445988 m!1334963))

(declare-fun m!1334965 () Bool)

(assert (=> b!1445989 m!1334965))

(declare-fun m!1334967 () Bool)

(assert (=> start!124772 m!1334967))

(declare-fun m!1334969 () Bool)

(assert (=> start!124772 m!1334969))

(assert (=> b!1446000 m!1334955))

(assert (=> b!1446000 m!1334955))

(declare-fun m!1334971 () Bool)

(assert (=> b!1446000 m!1334971))

(declare-fun m!1334973 () Bool)

(assert (=> b!1445995 m!1334973))

(declare-fun m!1334975 () Bool)

(assert (=> b!1445995 m!1334975))

(declare-fun m!1334977 () Bool)

(assert (=> b!1445991 m!1334977))

(assert (=> b!1445991 m!1334977))

(declare-fun m!1334979 () Bool)

(assert (=> b!1445991 m!1334979))

(assert (=> b!1445991 m!1334973))

(declare-fun m!1334981 () Bool)

(assert (=> b!1445991 m!1334981))

(declare-fun m!1334983 () Bool)

(assert (=> b!1445996 m!1334983))

(assert (=> b!1445996 m!1334955))

(assert (=> b!1445997 m!1334955))

(assert (=> b!1445997 m!1334955))

(declare-fun m!1334985 () Bool)

(assert (=> b!1445997 m!1334985))

(declare-fun m!1334987 () Bool)

(assert (=> b!1445998 m!1334987))

(declare-fun m!1334989 () Bool)

(assert (=> b!1445990 m!1334989))

(assert (=> b!1445990 m!1334989))

(declare-fun m!1334991 () Bool)

(assert (=> b!1445990 m!1334991))

(declare-fun m!1334993 () Bool)

(assert (=> b!1445992 m!1334993))

(assert (=> b!1446001 m!1334955))

(assert (=> b!1446001 m!1334955))

(declare-fun m!1334995 () Bool)

(assert (=> b!1446001 m!1334995))

(push 1)

(assert (not b!1445992))

(assert (not start!124772))

(assert (not b!1445991))

(assert (not b!1445998))

(assert (not b!1445988))

(assert (not b!1445999))

(assert (not b!1446001))

(assert (not b!1445990))

(assert (not b!1445987))

(assert (not b!1445989))

(assert (not b!1445997))

(assert (not b!1446000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

