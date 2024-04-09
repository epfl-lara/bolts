; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125316 () Bool)

(assert start!125316)

(declare-fun b!1462429 () Bool)

(declare-fun res!991967 () Bool)

(declare-fun e!822087 () Bool)

(assert (=> b!1462429 (=> (not res!991967) (not e!822087))))

(declare-datatypes ((array!98681 0))(
  ( (array!98682 (arr!47624 (Array (_ BitVec 32) (_ BitVec 64))) (size!48175 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98681)

(declare-datatypes ((List!34305 0))(
  ( (Nil!34302) (Cons!34301 (h!35651 (_ BitVec 64)) (t!49006 List!34305)) )
))
(declare-fun arrayNoDuplicates!0 (array!98681 (_ BitVec 32) List!34305) Bool)

(assert (=> b!1462429 (= res!991967 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34302))))

(declare-fun lt!640413 () array!98681)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!822090 () Bool)

(declare-fun lt!640416 () (_ BitVec 64))

(declare-fun b!1462430 () Bool)

(declare-datatypes ((SeekEntryResult!11899 0))(
  ( (MissingZero!11899 (index!49987 (_ BitVec 32))) (Found!11899 (index!49988 (_ BitVec 32))) (Intermediate!11899 (undefined!12711 Bool) (index!49989 (_ BitVec 32)) (x!131583 (_ BitVec 32))) (Undefined!11899) (MissingVacant!11899 (index!49990 (_ BitVec 32))) )
))
(declare-fun lt!640415 () SeekEntryResult!11899)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98681 (_ BitVec 32)) SeekEntryResult!11899)

(assert (=> b!1462430 (= e!822090 (= lt!640415 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640416 lt!640413 mask!2687)))))

(declare-fun b!1462431 () Bool)

(declare-fun e!822085 () Bool)

(assert (=> b!1462431 (= e!822085 true)))

(declare-fun lt!640417 () Bool)

(declare-fun e!822086 () Bool)

(assert (=> b!1462431 (= lt!640417 e!822086)))

(declare-fun c!134750 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462431 (= c!134750 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462432 () Bool)

(declare-fun e!822083 () Bool)

(declare-fun e!822091 () Bool)

(assert (=> b!1462432 (= e!822083 e!822091)))

(declare-fun res!991958 () Bool)

(assert (=> b!1462432 (=> (not res!991958) (not e!822091))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!640412 () SeekEntryResult!11899)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462432 (= res!991958 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47624 a!2862) j!93) mask!2687) (select (arr!47624 a!2862) j!93) a!2862 mask!2687) lt!640412))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462432 (= lt!640412 (Intermediate!11899 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462433 () Bool)

(declare-fun res!991963 () Bool)

(assert (=> b!1462433 (=> (not res!991963) (not e!822087))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462433 (= res!991963 (and (= (size!48175 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48175 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48175 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462434 () Bool)

(declare-fun lt!640411 () (_ BitVec 32))

(assert (=> b!1462434 (= e!822086 (not (= lt!640415 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640411 lt!640416 lt!640413 mask!2687))))))

(declare-fun b!1462435 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98681 (_ BitVec 32)) SeekEntryResult!11899)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98681 (_ BitVec 32)) SeekEntryResult!11899)

(assert (=> b!1462435 (= e!822086 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640411 intermediateAfterIndex!19 lt!640416 lt!640413 mask!2687) (seekEntryOrOpen!0 lt!640416 lt!640413 mask!2687))))))

(declare-fun b!1462436 () Bool)

(declare-fun res!991959 () Bool)

(assert (=> b!1462436 (=> (not res!991959) (not e!822091))))

(assert (=> b!1462436 (= res!991959 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47624 a!2862) j!93) a!2862 mask!2687) lt!640412))))

(declare-fun b!1462437 () Bool)

(declare-fun res!991962 () Bool)

(assert (=> b!1462437 (=> (not res!991962) (not e!822087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462437 (= res!991962 (validKeyInArray!0 (select (arr!47624 a!2862) i!1006)))))

(declare-fun b!1462438 () Bool)

(declare-fun res!991973 () Bool)

(assert (=> b!1462438 (=> (not res!991973) (not e!822087))))

(assert (=> b!1462438 (= res!991973 (validKeyInArray!0 (select (arr!47624 a!2862) j!93)))))

(declare-fun b!1462439 () Bool)

(assert (=> b!1462439 (= e!822090 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640416 lt!640413 mask!2687) (seekEntryOrOpen!0 lt!640416 lt!640413 mask!2687)))))

(declare-fun res!991965 () Bool)

(assert (=> start!125316 (=> (not res!991965) (not e!822087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125316 (= res!991965 (validMask!0 mask!2687))))

(assert (=> start!125316 e!822087))

(assert (=> start!125316 true))

(declare-fun array_inv!36569 (array!98681) Bool)

(assert (=> start!125316 (array_inv!36569 a!2862)))

(declare-fun b!1462440 () Bool)

(declare-fun res!991966 () Bool)

(assert (=> b!1462440 (=> (not res!991966) (not e!822087))))

(assert (=> b!1462440 (= res!991966 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48175 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48175 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48175 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1462441 () Bool)

(declare-fun e!822088 () Bool)

(assert (=> b!1462441 (= e!822091 e!822088)))

(declare-fun res!991971 () Bool)

(assert (=> b!1462441 (=> (not res!991971) (not e!822088))))

(assert (=> b!1462441 (= res!991971 (= lt!640415 (Intermediate!11899 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1462441 (= lt!640415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640416 mask!2687) lt!640416 lt!640413 mask!2687))))

(assert (=> b!1462441 (= lt!640416 (select (store (arr!47624 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462442 () Bool)

(declare-fun res!991957 () Bool)

(assert (=> b!1462442 (=> (not res!991957) (not e!822088))))

(assert (=> b!1462442 (= res!991957 e!822090)))

(declare-fun c!134749 () Bool)

(assert (=> b!1462442 (= c!134749 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462443 () Bool)

(declare-fun e!822084 () Bool)

(assert (=> b!1462443 (= e!822088 (not e!822084))))

(declare-fun res!991968 () Bool)

(assert (=> b!1462443 (=> res!991968 e!822084)))

(assert (=> b!1462443 (= res!991968 (or (and (= (select (arr!47624 a!2862) index!646) (select (store (arr!47624 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47624 a!2862) index!646) (select (arr!47624 a!2862) j!93))) (= (select (arr!47624 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822089 () Bool)

(assert (=> b!1462443 e!822089))

(declare-fun res!991974 () Bool)

(assert (=> b!1462443 (=> (not res!991974) (not e!822089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98681 (_ BitVec 32)) Bool)

(assert (=> b!1462443 (= res!991974 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49242 0))(
  ( (Unit!49243) )
))
(declare-fun lt!640414 () Unit!49242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49242)

(assert (=> b!1462443 (= lt!640414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462444 () Bool)

(declare-fun res!991969 () Bool)

(assert (=> b!1462444 (=> (not res!991969) (not e!822087))))

(assert (=> b!1462444 (= res!991969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462445 () Bool)

(declare-fun res!991960 () Bool)

(assert (=> b!1462445 (=> (not res!991960) (not e!822088))))

(assert (=> b!1462445 (= res!991960 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462446 () Bool)

(assert (=> b!1462446 (= e!822087 e!822083)))

(declare-fun res!991961 () Bool)

(assert (=> b!1462446 (=> (not res!991961) (not e!822083))))

(assert (=> b!1462446 (= res!991961 (= (select (store (arr!47624 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462446 (= lt!640413 (array!98682 (store (arr!47624 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48175 a!2862)))))

(declare-fun b!1462447 () Bool)

(declare-fun res!991964 () Bool)

(assert (=> b!1462447 (=> (not res!991964) (not e!822089))))

(assert (=> b!1462447 (= res!991964 (= (seekEntryOrOpen!0 (select (arr!47624 a!2862) j!93) a!2862 mask!2687) (Found!11899 j!93)))))

(declare-fun b!1462448 () Bool)

(assert (=> b!1462448 (= e!822084 e!822085)))

(declare-fun res!991970 () Bool)

(assert (=> b!1462448 (=> res!991970 e!822085)))

(assert (=> b!1462448 (= res!991970 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640411 #b00000000000000000000000000000000) (bvsge lt!640411 (size!48175 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462448 (= lt!640411 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462449 () Bool)

(assert (=> b!1462449 (= e!822089 (or (= (select (arr!47624 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47624 a!2862) intermediateBeforeIndex!19) (select (arr!47624 a!2862) j!93))))))

(declare-fun b!1462450 () Bool)

(declare-fun res!991972 () Bool)

(assert (=> b!1462450 (=> res!991972 e!822085)))

(assert (=> b!1462450 (= res!991972 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640411 (select (arr!47624 a!2862) j!93) a!2862 mask!2687) lt!640412)))))

(assert (= (and start!125316 res!991965) b!1462433))

(assert (= (and b!1462433 res!991963) b!1462437))

(assert (= (and b!1462437 res!991962) b!1462438))

(assert (= (and b!1462438 res!991973) b!1462444))

(assert (= (and b!1462444 res!991969) b!1462429))

(assert (= (and b!1462429 res!991967) b!1462440))

(assert (= (and b!1462440 res!991966) b!1462446))

(assert (= (and b!1462446 res!991961) b!1462432))

(assert (= (and b!1462432 res!991958) b!1462436))

(assert (= (and b!1462436 res!991959) b!1462441))

(assert (= (and b!1462441 res!991971) b!1462442))

(assert (= (and b!1462442 c!134749) b!1462430))

(assert (= (and b!1462442 (not c!134749)) b!1462439))

(assert (= (and b!1462442 res!991957) b!1462445))

(assert (= (and b!1462445 res!991960) b!1462443))

(assert (= (and b!1462443 res!991974) b!1462447))

(assert (= (and b!1462447 res!991964) b!1462449))

(assert (= (and b!1462443 (not res!991968)) b!1462448))

(assert (= (and b!1462448 (not res!991970)) b!1462450))

(assert (= (and b!1462450 (not res!991972)) b!1462431))

(assert (= (and b!1462431 c!134750) b!1462434))

(assert (= (and b!1462431 (not c!134750)) b!1462435))

(declare-fun m!1349935 () Bool)

(assert (=> b!1462438 m!1349935))

(assert (=> b!1462438 m!1349935))

(declare-fun m!1349937 () Bool)

(assert (=> b!1462438 m!1349937))

(declare-fun m!1349939 () Bool)

(assert (=> b!1462429 m!1349939))

(declare-fun m!1349941 () Bool)

(assert (=> b!1462435 m!1349941))

(declare-fun m!1349943 () Bool)

(assert (=> b!1462435 m!1349943))

(assert (=> b!1462432 m!1349935))

(assert (=> b!1462432 m!1349935))

(declare-fun m!1349945 () Bool)

(assert (=> b!1462432 m!1349945))

(assert (=> b!1462432 m!1349945))

(assert (=> b!1462432 m!1349935))

(declare-fun m!1349947 () Bool)

(assert (=> b!1462432 m!1349947))

(assert (=> b!1462436 m!1349935))

(assert (=> b!1462436 m!1349935))

(declare-fun m!1349949 () Bool)

(assert (=> b!1462436 m!1349949))

(declare-fun m!1349951 () Bool)

(assert (=> b!1462449 m!1349951))

(assert (=> b!1462449 m!1349935))

(declare-fun m!1349953 () Bool)

(assert (=> b!1462437 m!1349953))

(assert (=> b!1462437 m!1349953))

(declare-fun m!1349955 () Bool)

(assert (=> b!1462437 m!1349955))

(declare-fun m!1349957 () Bool)

(assert (=> b!1462430 m!1349957))

(declare-fun m!1349959 () Bool)

(assert (=> b!1462446 m!1349959))

(declare-fun m!1349961 () Bool)

(assert (=> b!1462446 m!1349961))

(declare-fun m!1349963 () Bool)

(assert (=> b!1462439 m!1349963))

(assert (=> b!1462439 m!1349943))

(assert (=> b!1462447 m!1349935))

(assert (=> b!1462447 m!1349935))

(declare-fun m!1349965 () Bool)

(assert (=> b!1462447 m!1349965))

(assert (=> b!1462450 m!1349935))

(assert (=> b!1462450 m!1349935))

(declare-fun m!1349967 () Bool)

(assert (=> b!1462450 m!1349967))

(declare-fun m!1349969 () Bool)

(assert (=> start!125316 m!1349969))

(declare-fun m!1349971 () Bool)

(assert (=> start!125316 m!1349971))

(declare-fun m!1349973 () Bool)

(assert (=> b!1462441 m!1349973))

(assert (=> b!1462441 m!1349973))

(declare-fun m!1349975 () Bool)

(assert (=> b!1462441 m!1349975))

(assert (=> b!1462441 m!1349959))

(declare-fun m!1349977 () Bool)

(assert (=> b!1462441 m!1349977))

(declare-fun m!1349979 () Bool)

(assert (=> b!1462434 m!1349979))

(declare-fun m!1349981 () Bool)

(assert (=> b!1462444 m!1349981))

(declare-fun m!1349983 () Bool)

(assert (=> b!1462443 m!1349983))

(assert (=> b!1462443 m!1349959))

(declare-fun m!1349985 () Bool)

(assert (=> b!1462443 m!1349985))

(declare-fun m!1349987 () Bool)

(assert (=> b!1462443 m!1349987))

(declare-fun m!1349989 () Bool)

(assert (=> b!1462443 m!1349989))

(assert (=> b!1462443 m!1349935))

(declare-fun m!1349991 () Bool)

(assert (=> b!1462448 m!1349991))

(check-sat (not b!1462439) (not b!1462432) (not b!1462443) (not b!1462437) (not b!1462448) (not b!1462441) (not b!1462435) (not b!1462447) (not b!1462434) (not b!1462430) (not b!1462429) (not b!1462438) (not b!1462450) (not b!1462444) (not b!1462436) (not start!125316))
(check-sat)
