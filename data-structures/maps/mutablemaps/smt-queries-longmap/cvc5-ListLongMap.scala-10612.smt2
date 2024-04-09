; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124852 () Bool)

(assert start!124852)

(declare-fun b!1448227 () Bool)

(declare-fun res!979904 () Bool)

(declare-fun e!815628 () Bool)

(assert (=> b!1448227 (=> (not res!979904) (not e!815628))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448227 (= res!979904 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448228 () Bool)

(declare-fun res!979903 () Bool)

(declare-fun e!815630 () Bool)

(assert (=> b!1448228 (=> (not res!979903) (not e!815630))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98217 0))(
  ( (array!98218 (arr!47392 (Array (_ BitVec 32) (_ BitVec 64))) (size!47943 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98217)

(assert (=> b!1448228 (= res!979903 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47943 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47943 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47943 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448229 () Bool)

(declare-fun e!815635 () Bool)

(assert (=> b!1448229 (= e!815628 (not e!815635))))

(declare-fun res!979902 () Bool)

(assert (=> b!1448229 (=> res!979902 e!815635)))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1448229 (= res!979902 (or (and (= (select (arr!47392 a!2862) index!646) (select (store (arr!47392 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47392 a!2862) index!646) (select (arr!47392 a!2862) j!93))) (not (= (select (arr!47392 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47392 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815629 () Bool)

(assert (=> b!1448229 e!815629))

(declare-fun res!979900 () Bool)

(assert (=> b!1448229 (=> (not res!979900) (not e!815629))))

(declare-datatypes ((SeekEntryResult!11667 0))(
  ( (MissingZero!11667 (index!49059 (_ BitVec 32))) (Found!11667 (index!49060 (_ BitVec 32))) (Intermediate!11667 (undefined!12479 Bool) (index!49061 (_ BitVec 32)) (x!130735 (_ BitVec 32))) (Undefined!11667) (MissingVacant!11667 (index!49062 (_ BitVec 32))) )
))
(declare-fun lt!635428 () SeekEntryResult!11667)

(assert (=> b!1448229 (= res!979900 (and (= lt!635428 (Found!11667 j!93)) (or (= (select (arr!47392 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47392 a!2862) intermediateBeforeIndex!19) (select (arr!47392 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98217 (_ BitVec 32)) SeekEntryResult!11667)

(assert (=> b!1448229 (= lt!635428 (seekEntryOrOpen!0 (select (arr!47392 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98217 (_ BitVec 32)) Bool)

(assert (=> b!1448229 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48778 0))(
  ( (Unit!48779) )
))
(declare-fun lt!635427 () Unit!48778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98217 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48778)

(assert (=> b!1448229 (= lt!635427 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!815634 () Bool)

(declare-fun lt!635424 () SeekEntryResult!11667)

(declare-fun b!1448230 () Bool)

(declare-fun lt!635425 () array!98217)

(declare-fun lt!635426 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98217 (_ BitVec 32)) SeekEntryResult!11667)

(assert (=> b!1448230 (= e!815634 (= lt!635424 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635426 lt!635425 mask!2687)))))

(declare-fun b!1448231 () Bool)

(declare-fun res!979901 () Bool)

(assert (=> b!1448231 (=> (not res!979901) (not e!815630))))

(assert (=> b!1448231 (= res!979901 (and (= (size!47943 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47943 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47943 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448232 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98217 (_ BitVec 32)) SeekEntryResult!11667)

(assert (=> b!1448232 (= e!815634 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635426 lt!635425 mask!2687) (seekEntryOrOpen!0 lt!635426 lt!635425 mask!2687)))))

(declare-fun b!1448233 () Bool)

(declare-fun e!815632 () Bool)

(assert (=> b!1448233 (= e!815629 e!815632)))

(declare-fun res!979899 () Bool)

(assert (=> b!1448233 (=> res!979899 e!815632)))

(assert (=> b!1448233 (= res!979899 (or (and (= (select (arr!47392 a!2862) index!646) (select (store (arr!47392 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47392 a!2862) index!646) (select (arr!47392 a!2862) j!93))) (not (= (select (arr!47392 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448234 () Bool)

(assert (=> b!1448234 (= e!815635 true)))

(declare-fun lt!635423 () SeekEntryResult!11667)

(assert (=> b!1448234 (= lt!635423 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47392 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448235 () Bool)

(declare-fun e!815636 () Bool)

(assert (=> b!1448235 (= e!815632 e!815636)))

(declare-fun res!979910 () Bool)

(assert (=> b!1448235 (=> (not res!979910) (not e!815636))))

(assert (=> b!1448235 (= res!979910 (= lt!635428 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47392 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448236 () Bool)

(declare-fun e!815627 () Bool)

(assert (=> b!1448236 (= e!815627 e!815628)))

(declare-fun res!979895 () Bool)

(assert (=> b!1448236 (=> (not res!979895) (not e!815628))))

(assert (=> b!1448236 (= res!979895 (= lt!635424 (Intermediate!11667 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448236 (= lt!635424 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635426 mask!2687) lt!635426 lt!635425 mask!2687))))

(assert (=> b!1448236 (= lt!635426 (select (store (arr!47392 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448237 () Bool)

(declare-fun res!979898 () Bool)

(assert (=> b!1448237 (=> (not res!979898) (not e!815630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448237 (= res!979898 (validKeyInArray!0 (select (arr!47392 a!2862) j!93)))))

(declare-fun b!1448238 () Bool)

(assert (=> b!1448238 (= e!815636 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448239 () Bool)

(declare-fun res!979908 () Bool)

(assert (=> b!1448239 (=> (not res!979908) (not e!815630))))

(assert (=> b!1448239 (= res!979908 (validKeyInArray!0 (select (arr!47392 a!2862) i!1006)))))

(declare-fun b!1448240 () Bool)

(declare-fun e!815631 () Bool)

(assert (=> b!1448240 (= e!815631 e!815627)))

(declare-fun res!979896 () Bool)

(assert (=> b!1448240 (=> (not res!979896) (not e!815627))))

(declare-fun lt!635422 () SeekEntryResult!11667)

(assert (=> b!1448240 (= res!979896 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47392 a!2862) j!93) mask!2687) (select (arr!47392 a!2862) j!93) a!2862 mask!2687) lt!635422))))

(assert (=> b!1448240 (= lt!635422 (Intermediate!11667 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448242 () Bool)

(declare-fun res!979897 () Bool)

(assert (=> b!1448242 (=> (not res!979897) (not e!815627))))

(assert (=> b!1448242 (= res!979897 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47392 a!2862) j!93) a!2862 mask!2687) lt!635422))))

(declare-fun b!1448243 () Bool)

(declare-fun res!979907 () Bool)

(assert (=> b!1448243 (=> (not res!979907) (not e!815628))))

(assert (=> b!1448243 (= res!979907 e!815634)))

(declare-fun c!133679 () Bool)

(assert (=> b!1448243 (= c!133679 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448244 () Bool)

(declare-fun res!979905 () Bool)

(assert (=> b!1448244 (=> (not res!979905) (not e!815630))))

(declare-datatypes ((List!34073 0))(
  ( (Nil!34070) (Cons!34069 (h!35419 (_ BitVec 64)) (t!48774 List!34073)) )
))
(declare-fun arrayNoDuplicates!0 (array!98217 (_ BitVec 32) List!34073) Bool)

(assert (=> b!1448244 (= res!979905 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34070))))

(declare-fun b!1448245 () Bool)

(declare-fun res!979906 () Bool)

(assert (=> b!1448245 (=> (not res!979906) (not e!815630))))

(assert (=> b!1448245 (= res!979906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448241 () Bool)

(assert (=> b!1448241 (= e!815630 e!815631)))

(declare-fun res!979909 () Bool)

(assert (=> b!1448241 (=> (not res!979909) (not e!815631))))

(assert (=> b!1448241 (= res!979909 (= (select (store (arr!47392 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448241 (= lt!635425 (array!98218 (store (arr!47392 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47943 a!2862)))))

(declare-fun res!979911 () Bool)

(assert (=> start!124852 (=> (not res!979911) (not e!815630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124852 (= res!979911 (validMask!0 mask!2687))))

(assert (=> start!124852 e!815630))

(assert (=> start!124852 true))

(declare-fun array_inv!36337 (array!98217) Bool)

(assert (=> start!124852 (array_inv!36337 a!2862)))

(assert (= (and start!124852 res!979911) b!1448231))

(assert (= (and b!1448231 res!979901) b!1448239))

(assert (= (and b!1448239 res!979908) b!1448237))

(assert (= (and b!1448237 res!979898) b!1448245))

(assert (= (and b!1448245 res!979906) b!1448244))

(assert (= (and b!1448244 res!979905) b!1448228))

(assert (= (and b!1448228 res!979903) b!1448241))

(assert (= (and b!1448241 res!979909) b!1448240))

(assert (= (and b!1448240 res!979896) b!1448242))

(assert (= (and b!1448242 res!979897) b!1448236))

(assert (= (and b!1448236 res!979895) b!1448243))

(assert (= (and b!1448243 c!133679) b!1448230))

(assert (= (and b!1448243 (not c!133679)) b!1448232))

(assert (= (and b!1448243 res!979907) b!1448227))

(assert (= (and b!1448227 res!979904) b!1448229))

(assert (= (and b!1448229 res!979900) b!1448233))

(assert (= (and b!1448233 (not res!979899)) b!1448235))

(assert (= (and b!1448235 res!979910) b!1448238))

(assert (= (and b!1448229 (not res!979902)) b!1448234))

(declare-fun m!1337055 () Bool)

(assert (=> b!1448240 m!1337055))

(assert (=> b!1448240 m!1337055))

(declare-fun m!1337057 () Bool)

(assert (=> b!1448240 m!1337057))

(assert (=> b!1448240 m!1337057))

(assert (=> b!1448240 m!1337055))

(declare-fun m!1337059 () Bool)

(assert (=> b!1448240 m!1337059))

(declare-fun m!1337061 () Bool)

(assert (=> start!124852 m!1337061))

(declare-fun m!1337063 () Bool)

(assert (=> start!124852 m!1337063))

(assert (=> b!1448234 m!1337055))

(assert (=> b!1448234 m!1337055))

(declare-fun m!1337065 () Bool)

(assert (=> b!1448234 m!1337065))

(assert (=> b!1448237 m!1337055))

(assert (=> b!1448237 m!1337055))

(declare-fun m!1337067 () Bool)

(assert (=> b!1448237 m!1337067))

(declare-fun m!1337069 () Bool)

(assert (=> b!1448233 m!1337069))

(declare-fun m!1337071 () Bool)

(assert (=> b!1448233 m!1337071))

(declare-fun m!1337073 () Bool)

(assert (=> b!1448233 m!1337073))

(assert (=> b!1448233 m!1337055))

(declare-fun m!1337075 () Bool)

(assert (=> b!1448230 m!1337075))

(assert (=> b!1448241 m!1337071))

(declare-fun m!1337077 () Bool)

(assert (=> b!1448241 m!1337077))

(declare-fun m!1337079 () Bool)

(assert (=> b!1448239 m!1337079))

(assert (=> b!1448239 m!1337079))

(declare-fun m!1337081 () Bool)

(assert (=> b!1448239 m!1337081))

(declare-fun m!1337083 () Bool)

(assert (=> b!1448236 m!1337083))

(assert (=> b!1448236 m!1337083))

(declare-fun m!1337085 () Bool)

(assert (=> b!1448236 m!1337085))

(assert (=> b!1448236 m!1337071))

(declare-fun m!1337087 () Bool)

(assert (=> b!1448236 m!1337087))

(declare-fun m!1337089 () Bool)

(assert (=> b!1448232 m!1337089))

(declare-fun m!1337091 () Bool)

(assert (=> b!1448232 m!1337091))

(declare-fun m!1337093 () Bool)

(assert (=> b!1448244 m!1337093))

(declare-fun m!1337095 () Bool)

(assert (=> b!1448245 m!1337095))

(assert (=> b!1448235 m!1337055))

(assert (=> b!1448235 m!1337055))

(declare-fun m!1337097 () Bool)

(assert (=> b!1448235 m!1337097))

(assert (=> b!1448242 m!1337055))

(assert (=> b!1448242 m!1337055))

(declare-fun m!1337099 () Bool)

(assert (=> b!1448242 m!1337099))

(declare-fun m!1337101 () Bool)

(assert (=> b!1448229 m!1337101))

(assert (=> b!1448229 m!1337071))

(declare-fun m!1337103 () Bool)

(assert (=> b!1448229 m!1337103))

(assert (=> b!1448229 m!1337073))

(assert (=> b!1448229 m!1337069))

(assert (=> b!1448229 m!1337055))

(declare-fun m!1337105 () Bool)

(assert (=> b!1448229 m!1337105))

(declare-fun m!1337107 () Bool)

(assert (=> b!1448229 m!1337107))

(assert (=> b!1448229 m!1337055))

(push 1)

