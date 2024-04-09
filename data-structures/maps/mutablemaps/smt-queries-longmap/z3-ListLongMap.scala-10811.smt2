; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126558 () Bool)

(assert start!126558)

(declare-fun e!832073 () Bool)

(declare-fun b!1483958 () Bool)

(declare-datatypes ((array!99437 0))(
  ( (array!99438 (arr!47990 (Array (_ BitVec 32) (_ BitVec 64))) (size!48541 (_ BitVec 32))) )
))
(declare-fun lt!647570 () array!99437)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!647571 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12253 0))(
  ( (MissingZero!12253 (index!51403 (_ BitVec 32))) (Found!12253 (index!51404 (_ BitVec 32))) (Intermediate!12253 (undefined!13065 Bool) (index!51405 (_ BitVec 32)) (x!132988 (_ BitVec 32))) (Undefined!12253) (MissingVacant!12253 (index!51406 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99437 (_ BitVec 32)) SeekEntryResult!12253)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99437 (_ BitVec 32)) SeekEntryResult!12253)

(assert (=> b!1483958 (= e!832073 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647571 lt!647570 mask!2687) (seekEntryOrOpen!0 lt!647571 lt!647570 mask!2687)))))

(declare-fun b!1483959 () Bool)

(declare-fun res!1008897 () Bool)

(declare-fun e!832072 () Bool)

(assert (=> b!1483959 (=> (not res!1008897) (not e!832072))))

(assert (=> b!1483959 (= res!1008897 e!832073)))

(declare-fun c!137063 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1483959 (= c!137063 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1483960 () Bool)

(declare-fun e!832077 () Bool)

(declare-fun e!832079 () Bool)

(assert (=> b!1483960 (= e!832077 e!832079)))

(declare-fun res!1008891 () Bool)

(assert (=> b!1483960 (=> (not res!1008891) (not e!832079))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99437)

(assert (=> b!1483960 (= res!1008891 (= (select (store (arr!47990 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1483960 (= lt!647570 (array!99438 (store (arr!47990 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48541 a!2862)))))

(declare-fun b!1483961 () Bool)

(declare-fun res!1008892 () Bool)

(assert (=> b!1483961 (=> (not res!1008892) (not e!832077))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1483961 (= res!1008892 (validKeyInArray!0 (select (arr!47990 a!2862) j!93)))))

(declare-fun b!1483962 () Bool)

(declare-fun e!832070 () Bool)

(declare-fun e!832074 () Bool)

(assert (=> b!1483962 (= e!832070 e!832074)))

(declare-fun res!1008895 () Bool)

(assert (=> b!1483962 (=> (not res!1008895) (not e!832074))))

(declare-fun lt!647567 () (_ BitVec 64))

(assert (=> b!1483962 (= res!1008895 (and (= index!646 intermediateAfterIndex!19) (= lt!647567 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1483963 () Bool)

(declare-fun res!1008885 () Bool)

(declare-fun e!832078 () Bool)

(assert (=> b!1483963 (=> (not res!1008885) (not e!832078))))

(assert (=> b!1483963 (= res!1008885 (= (seekEntryOrOpen!0 (select (arr!47990 a!2862) j!93) a!2862 mask!2687) (Found!12253 j!93)))))

(declare-fun b!1483964 () Bool)

(assert (=> b!1483964 (= e!832078 e!832070)))

(declare-fun res!1008893 () Bool)

(assert (=> b!1483964 (=> res!1008893 e!832070)))

(assert (=> b!1483964 (= res!1008893 (or (and (= (select (arr!47990 a!2862) index!646) lt!647567) (= (select (arr!47990 a!2862) index!646) (select (arr!47990 a!2862) j!93))) (= (select (arr!47990 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483964 (= lt!647567 (select (store (arr!47990 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun res!1008898 () Bool)

(assert (=> start!126558 (=> (not res!1008898) (not e!832077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126558 (= res!1008898 (validMask!0 mask!2687))))

(assert (=> start!126558 e!832077))

(assert (=> start!126558 true))

(declare-fun array_inv!36935 (array!99437) Bool)

(assert (=> start!126558 (array_inv!36935 a!2862)))

(declare-fun b!1483965 () Bool)

(declare-fun lt!647568 () SeekEntryResult!12253)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99437 (_ BitVec 32)) SeekEntryResult!12253)

(assert (=> b!1483965 (= e!832073 (= lt!647568 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647571 lt!647570 mask!2687)))))

(declare-fun b!1483966 () Bool)

(declare-fun e!832075 () Bool)

(assert (=> b!1483966 (= e!832075 true)))

(declare-fun lt!647566 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483966 (= lt!647566 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1483967 () Bool)

(declare-fun res!1008889 () Bool)

(assert (=> b!1483967 (=> (not res!1008889) (not e!832077))))

(declare-datatypes ((List!34671 0))(
  ( (Nil!34668) (Cons!34667 (h!36041 (_ BitVec 64)) (t!49372 List!34671)) )
))
(declare-fun arrayNoDuplicates!0 (array!99437 (_ BitVec 32) List!34671) Bool)

(assert (=> b!1483967 (= res!1008889 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34668))))

(declare-fun b!1483968 () Bool)

(declare-fun res!1008888 () Bool)

(declare-fun e!832076 () Bool)

(assert (=> b!1483968 (=> (not res!1008888) (not e!832076))))

(declare-fun lt!647569 () SeekEntryResult!12253)

(assert (=> b!1483968 (= res!1008888 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47990 a!2862) j!93) a!2862 mask!2687) lt!647569))))

(declare-fun b!1483969 () Bool)

(assert (=> b!1483969 (= e!832074 (= (seekEntryOrOpen!0 lt!647571 lt!647570 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647571 lt!647570 mask!2687)))))

(declare-fun b!1483970 () Bool)

(assert (=> b!1483970 (= e!832072 (not e!832075))))

(declare-fun res!1008884 () Bool)

(assert (=> b!1483970 (=> res!1008884 e!832075)))

(assert (=> b!1483970 (= res!1008884 (or (and (= (select (arr!47990 a!2862) index!646) (select (store (arr!47990 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47990 a!2862) index!646) (select (arr!47990 a!2862) j!93))) (= (select (arr!47990 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1483970 e!832078))

(declare-fun res!1008899 () Bool)

(assert (=> b!1483970 (=> (not res!1008899) (not e!832078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99437 (_ BitVec 32)) Bool)

(assert (=> b!1483970 (= res!1008899 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49794 0))(
  ( (Unit!49795) )
))
(declare-fun lt!647572 () Unit!49794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99437 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49794)

(assert (=> b!1483970 (= lt!647572 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1483971 () Bool)

(assert (=> b!1483971 (= e!832079 e!832076)))

(declare-fun res!1008900 () Bool)

(assert (=> b!1483971 (=> (not res!1008900) (not e!832076))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1483971 (= res!1008900 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47990 a!2862) j!93) mask!2687) (select (arr!47990 a!2862) j!93) a!2862 mask!2687) lt!647569))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1483971 (= lt!647569 (Intermediate!12253 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1483972 () Bool)

(declare-fun res!1008882 () Bool)

(assert (=> b!1483972 (=> (not res!1008882) (not e!832077))))

(assert (=> b!1483972 (= res!1008882 (and (= (size!48541 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48541 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48541 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1483973 () Bool)

(declare-fun res!1008886 () Bool)

(assert (=> b!1483973 (=> (not res!1008886) (not e!832077))))

(assert (=> b!1483973 (= res!1008886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1483974 () Bool)

(declare-fun res!1008890 () Bool)

(assert (=> b!1483974 (=> (not res!1008890) (not e!832077))))

(assert (=> b!1483974 (= res!1008890 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48541 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48541 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48541 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1483975 () Bool)

(declare-fun res!1008896 () Bool)

(assert (=> b!1483975 (=> (not res!1008896) (not e!832078))))

(assert (=> b!1483975 (= res!1008896 (or (= (select (arr!47990 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47990 a!2862) intermediateBeforeIndex!19) (select (arr!47990 a!2862) j!93))))))

(declare-fun b!1483976 () Bool)

(declare-fun res!1008887 () Bool)

(assert (=> b!1483976 (=> (not res!1008887) (not e!832072))))

(assert (=> b!1483976 (= res!1008887 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1483977 () Bool)

(declare-fun res!1008883 () Bool)

(assert (=> b!1483977 (=> (not res!1008883) (not e!832077))))

(assert (=> b!1483977 (= res!1008883 (validKeyInArray!0 (select (arr!47990 a!2862) i!1006)))))

(declare-fun b!1483978 () Bool)

(assert (=> b!1483978 (= e!832076 e!832072)))

(declare-fun res!1008894 () Bool)

(assert (=> b!1483978 (=> (not res!1008894) (not e!832072))))

(assert (=> b!1483978 (= res!1008894 (= lt!647568 (Intermediate!12253 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1483978 (= lt!647568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647571 mask!2687) lt!647571 lt!647570 mask!2687))))

(assert (=> b!1483978 (= lt!647571 (select (store (arr!47990 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!126558 res!1008898) b!1483972))

(assert (= (and b!1483972 res!1008882) b!1483977))

(assert (= (and b!1483977 res!1008883) b!1483961))

(assert (= (and b!1483961 res!1008892) b!1483973))

(assert (= (and b!1483973 res!1008886) b!1483967))

(assert (= (and b!1483967 res!1008889) b!1483974))

(assert (= (and b!1483974 res!1008890) b!1483960))

(assert (= (and b!1483960 res!1008891) b!1483971))

(assert (= (and b!1483971 res!1008900) b!1483968))

(assert (= (and b!1483968 res!1008888) b!1483978))

(assert (= (and b!1483978 res!1008894) b!1483959))

(assert (= (and b!1483959 c!137063) b!1483965))

(assert (= (and b!1483959 (not c!137063)) b!1483958))

(assert (= (and b!1483959 res!1008897) b!1483976))

(assert (= (and b!1483976 res!1008887) b!1483970))

(assert (= (and b!1483970 res!1008899) b!1483963))

(assert (= (and b!1483963 res!1008885) b!1483975))

(assert (= (and b!1483975 res!1008896) b!1483964))

(assert (= (and b!1483964 (not res!1008893)) b!1483962))

(assert (= (and b!1483962 res!1008895) b!1483969))

(assert (= (and b!1483970 (not res!1008884)) b!1483966))

(declare-fun m!1369393 () Bool)

(assert (=> b!1483965 m!1369393))

(declare-fun m!1369395 () Bool)

(assert (=> b!1483970 m!1369395))

(declare-fun m!1369397 () Bool)

(assert (=> b!1483970 m!1369397))

(declare-fun m!1369399 () Bool)

(assert (=> b!1483970 m!1369399))

(declare-fun m!1369401 () Bool)

(assert (=> b!1483970 m!1369401))

(declare-fun m!1369403 () Bool)

(assert (=> b!1483970 m!1369403))

(declare-fun m!1369405 () Bool)

(assert (=> b!1483970 m!1369405))

(assert (=> b!1483961 m!1369405))

(assert (=> b!1483961 m!1369405))

(declare-fun m!1369407 () Bool)

(assert (=> b!1483961 m!1369407))

(declare-fun m!1369409 () Bool)

(assert (=> b!1483973 m!1369409))

(declare-fun m!1369411 () Bool)

(assert (=> b!1483977 m!1369411))

(assert (=> b!1483977 m!1369411))

(declare-fun m!1369413 () Bool)

(assert (=> b!1483977 m!1369413))

(declare-fun m!1369415 () Bool)

(assert (=> b!1483969 m!1369415))

(declare-fun m!1369417 () Bool)

(assert (=> b!1483969 m!1369417))

(declare-fun m!1369419 () Bool)

(assert (=> b!1483975 m!1369419))

(assert (=> b!1483975 m!1369405))

(assert (=> b!1483964 m!1369401))

(assert (=> b!1483964 m!1369405))

(assert (=> b!1483964 m!1369397))

(assert (=> b!1483964 m!1369399))

(assert (=> b!1483958 m!1369417))

(assert (=> b!1483958 m!1369415))

(declare-fun m!1369421 () Bool)

(assert (=> start!126558 m!1369421))

(declare-fun m!1369423 () Bool)

(assert (=> start!126558 m!1369423))

(assert (=> b!1483968 m!1369405))

(assert (=> b!1483968 m!1369405))

(declare-fun m!1369425 () Bool)

(assert (=> b!1483968 m!1369425))

(declare-fun m!1369427 () Bool)

(assert (=> b!1483967 m!1369427))

(assert (=> b!1483971 m!1369405))

(assert (=> b!1483971 m!1369405))

(declare-fun m!1369429 () Bool)

(assert (=> b!1483971 m!1369429))

(assert (=> b!1483971 m!1369429))

(assert (=> b!1483971 m!1369405))

(declare-fun m!1369431 () Bool)

(assert (=> b!1483971 m!1369431))

(assert (=> b!1483963 m!1369405))

(assert (=> b!1483963 m!1369405))

(declare-fun m!1369433 () Bool)

(assert (=> b!1483963 m!1369433))

(declare-fun m!1369435 () Bool)

(assert (=> b!1483978 m!1369435))

(assert (=> b!1483978 m!1369435))

(declare-fun m!1369437 () Bool)

(assert (=> b!1483978 m!1369437))

(assert (=> b!1483978 m!1369397))

(declare-fun m!1369439 () Bool)

(assert (=> b!1483978 m!1369439))

(declare-fun m!1369441 () Bool)

(assert (=> b!1483966 m!1369441))

(assert (=> b!1483960 m!1369397))

(declare-fun m!1369443 () Bool)

(assert (=> b!1483960 m!1369443))

(check-sat (not b!1483967) (not start!126558) (not b!1483968) (not b!1483963) (not b!1483970) (not b!1483978) (not b!1483969) (not b!1483961) (not b!1483966) (not b!1483965) (not b!1483958) (not b!1483971) (not b!1483973) (not b!1483977))
