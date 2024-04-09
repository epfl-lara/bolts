; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124894 () Bool)

(assert start!124894)

(declare-fun b!1449424 () Bool)

(declare-fun res!980967 () Bool)

(declare-fun e!816266 () Bool)

(assert (=> b!1449424 (=> (not res!980967) (not e!816266))))

(declare-datatypes ((array!98259 0))(
  ( (array!98260 (arr!47413 (Array (_ BitVec 32) (_ BitVec 64))) (size!47964 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98259)

(declare-datatypes ((List!34094 0))(
  ( (Nil!34091) (Cons!34090 (h!35440 (_ BitVec 64)) (t!48795 List!34094)) )
))
(declare-fun arrayNoDuplicates!0 (array!98259 (_ BitVec 32) List!34094) Bool)

(assert (=> b!1449424 (= res!980967 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34091))))

(declare-fun b!1449425 () Bool)

(declare-fun e!816265 () Bool)

(declare-fun e!816257 () Bool)

(assert (=> b!1449425 (= e!816265 e!816257)))

(declare-fun res!980982 () Bool)

(assert (=> b!1449425 (=> (not res!980982) (not e!816257))))

(declare-datatypes ((SeekEntryResult!11688 0))(
  ( (MissingZero!11688 (index!49143 (_ BitVec 32))) (Found!11688 (index!49144 (_ BitVec 32))) (Intermediate!11688 (undefined!12500 Bool) (index!49145 (_ BitVec 32)) (x!130812 (_ BitVec 32))) (Undefined!11688) (MissingVacant!11688 (index!49146 (_ BitVec 32))) )
))
(declare-fun lt!635865 () SeekEntryResult!11688)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1449425 (= res!980982 (= lt!635865 (Intermediate!11688 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635864 () (_ BitVec 64))

(declare-fun lt!635868 () array!98259)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98259 (_ BitVec 32)) SeekEntryResult!11688)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449425 (= lt!635865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635864 mask!2687) lt!635864 lt!635868 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449425 (= lt!635864 (select (store (arr!47413 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1449427 () Bool)

(declare-fun res!980978 () Bool)

(assert (=> b!1449427 (=> (not res!980978) (not e!816266))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1449427 (= res!980978 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47964 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47964 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47964 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449428 () Bool)

(declare-fun e!816264 () Bool)

(assert (=> b!1449428 (= e!816257 (not e!816264))))

(declare-fun res!980969 () Bool)

(assert (=> b!1449428 (=> res!980969 e!816264)))

(assert (=> b!1449428 (= res!980969 (or (and (= (select (arr!47413 a!2862) index!646) (select (store (arr!47413 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47413 a!2862) index!646) (select (arr!47413 a!2862) j!93))) (not (= (select (arr!47413 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47413 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816258 () Bool)

(assert (=> b!1449428 e!816258))

(declare-fun res!980974 () Bool)

(assert (=> b!1449428 (=> (not res!980974) (not e!816258))))

(declare-fun lt!635869 () SeekEntryResult!11688)

(assert (=> b!1449428 (= res!980974 (and (= lt!635869 (Found!11688 j!93)) (or (= (select (arr!47413 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47413 a!2862) intermediateBeforeIndex!19) (select (arr!47413 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98259 (_ BitVec 32)) SeekEntryResult!11688)

(assert (=> b!1449428 (= lt!635869 (seekEntryOrOpen!0 (select (arr!47413 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98259 (_ BitVec 32)) Bool)

(assert (=> b!1449428 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48820 0))(
  ( (Unit!48821) )
))
(declare-fun lt!635867 () Unit!48820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98259 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48820)

(assert (=> b!1449428 (= lt!635867 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1449429 () Bool)

(declare-fun e!816261 () Bool)

(assert (=> b!1449429 (= e!816261 e!816265)))

(declare-fun res!980976 () Bool)

(assert (=> b!1449429 (=> (not res!980976) (not e!816265))))

(declare-fun lt!635863 () SeekEntryResult!11688)

(assert (=> b!1449429 (= res!980976 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47413 a!2862) j!93) mask!2687) (select (arr!47413 a!2862) j!93) a!2862 mask!2687) lt!635863))))

(assert (=> b!1449429 (= lt!635863 (Intermediate!11688 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449430 () Bool)

(declare-fun res!980980 () Bool)

(assert (=> b!1449430 (=> (not res!980980) (not e!816257))))

(declare-fun e!816260 () Bool)

(assert (=> b!1449430 (= res!980980 e!816260)))

(declare-fun c!133742 () Bool)

(assert (=> b!1449430 (= c!133742 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449431 () Bool)

(declare-fun res!980971 () Bool)

(assert (=> b!1449431 (=> (not res!980971) (not e!816257))))

(assert (=> b!1449431 (= res!980971 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449432 () Bool)

(declare-fun e!816262 () Bool)

(declare-fun e!816259 () Bool)

(assert (=> b!1449432 (= e!816262 e!816259)))

(declare-fun res!980966 () Bool)

(assert (=> b!1449432 (=> (not res!980966) (not e!816259))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98259 (_ BitVec 32)) SeekEntryResult!11688)

(assert (=> b!1449432 (= res!980966 (= lt!635869 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47413 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1449426 () Bool)

(declare-fun res!980981 () Bool)

(assert (=> b!1449426 (=> (not res!980981) (not e!816266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449426 (= res!980981 (validKeyInArray!0 (select (arr!47413 a!2862) i!1006)))))

(declare-fun res!980973 () Bool)

(assert (=> start!124894 (=> (not res!980973) (not e!816266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124894 (= res!980973 (validMask!0 mask!2687))))

(assert (=> start!124894 e!816266))

(assert (=> start!124894 true))

(declare-fun array_inv!36358 (array!98259) Bool)

(assert (=> start!124894 (array_inv!36358 a!2862)))

(declare-fun b!1449433 () Bool)

(assert (=> b!1449433 (= e!816260 (= lt!635865 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635864 lt!635868 mask!2687)))))

(declare-fun b!1449434 () Bool)

(declare-fun res!980972 () Bool)

(assert (=> b!1449434 (=> (not res!980972) (not e!816266))))

(assert (=> b!1449434 (= res!980972 (and (= (size!47964 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47964 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47964 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449435 () Bool)

(declare-fun res!980979 () Bool)

(assert (=> b!1449435 (=> (not res!980979) (not e!816266))))

(assert (=> b!1449435 (= res!980979 (validKeyInArray!0 (select (arr!47413 a!2862) j!93)))))

(declare-fun b!1449436 () Bool)

(assert (=> b!1449436 (= e!816260 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635864 lt!635868 mask!2687) (seekEntryOrOpen!0 lt!635864 lt!635868 mask!2687)))))

(declare-fun b!1449437 () Bool)

(assert (=> b!1449437 (= e!816258 e!816262)))

(declare-fun res!980977 () Bool)

(assert (=> b!1449437 (=> res!980977 e!816262)))

(assert (=> b!1449437 (= res!980977 (or (and (= (select (arr!47413 a!2862) index!646) (select (store (arr!47413 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47413 a!2862) index!646) (select (arr!47413 a!2862) j!93))) (not (= (select (arr!47413 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1449438 () Bool)

(declare-fun res!980968 () Bool)

(assert (=> b!1449438 (=> (not res!980968) (not e!816266))))

(assert (=> b!1449438 (= res!980968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449439 () Bool)

(assert (=> b!1449439 (= e!816264 true)))

(declare-fun lt!635866 () SeekEntryResult!11688)

(assert (=> b!1449439 (= lt!635866 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47413 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1449440 () Bool)

(assert (=> b!1449440 (= e!816259 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449441 () Bool)

(assert (=> b!1449441 (= e!816266 e!816261)))

(declare-fun res!980975 () Bool)

(assert (=> b!1449441 (=> (not res!980975) (not e!816261))))

(assert (=> b!1449441 (= res!980975 (= (select (store (arr!47413 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449441 (= lt!635868 (array!98260 (store (arr!47413 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47964 a!2862)))))

(declare-fun b!1449442 () Bool)

(declare-fun res!980970 () Bool)

(assert (=> b!1449442 (=> (not res!980970) (not e!816265))))

(assert (=> b!1449442 (= res!980970 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47413 a!2862) j!93) a!2862 mask!2687) lt!635863))))

(assert (= (and start!124894 res!980973) b!1449434))

(assert (= (and b!1449434 res!980972) b!1449426))

(assert (= (and b!1449426 res!980981) b!1449435))

(assert (= (and b!1449435 res!980979) b!1449438))

(assert (= (and b!1449438 res!980968) b!1449424))

(assert (= (and b!1449424 res!980967) b!1449427))

(assert (= (and b!1449427 res!980978) b!1449441))

(assert (= (and b!1449441 res!980975) b!1449429))

(assert (= (and b!1449429 res!980976) b!1449442))

(assert (= (and b!1449442 res!980970) b!1449425))

(assert (= (and b!1449425 res!980982) b!1449430))

(assert (= (and b!1449430 c!133742) b!1449433))

(assert (= (and b!1449430 (not c!133742)) b!1449436))

(assert (= (and b!1449430 res!980980) b!1449431))

(assert (= (and b!1449431 res!980971) b!1449428))

(assert (= (and b!1449428 res!980974) b!1449437))

(assert (= (and b!1449437 (not res!980977)) b!1449432))

(assert (= (and b!1449432 res!980966) b!1449440))

(assert (= (and b!1449428 (not res!980969)) b!1449439))

(declare-fun m!1338189 () Bool)

(assert (=> start!124894 m!1338189))

(declare-fun m!1338191 () Bool)

(assert (=> start!124894 m!1338191))

(declare-fun m!1338193 () Bool)

(assert (=> b!1449433 m!1338193))

(declare-fun m!1338195 () Bool)

(assert (=> b!1449426 m!1338195))

(assert (=> b!1449426 m!1338195))

(declare-fun m!1338197 () Bool)

(assert (=> b!1449426 m!1338197))

(declare-fun m!1338199 () Bool)

(assert (=> b!1449442 m!1338199))

(assert (=> b!1449442 m!1338199))

(declare-fun m!1338201 () Bool)

(assert (=> b!1449442 m!1338201))

(declare-fun m!1338203 () Bool)

(assert (=> b!1449436 m!1338203))

(declare-fun m!1338205 () Bool)

(assert (=> b!1449436 m!1338205))

(declare-fun m!1338207 () Bool)

(assert (=> b!1449424 m!1338207))

(declare-fun m!1338209 () Bool)

(assert (=> b!1449438 m!1338209))

(assert (=> b!1449432 m!1338199))

(assert (=> b!1449432 m!1338199))

(declare-fun m!1338211 () Bool)

(assert (=> b!1449432 m!1338211))

(declare-fun m!1338213 () Bool)

(assert (=> b!1449441 m!1338213))

(declare-fun m!1338215 () Bool)

(assert (=> b!1449441 m!1338215))

(assert (=> b!1449435 m!1338199))

(assert (=> b!1449435 m!1338199))

(declare-fun m!1338217 () Bool)

(assert (=> b!1449435 m!1338217))

(declare-fun m!1338219 () Bool)

(assert (=> b!1449425 m!1338219))

(assert (=> b!1449425 m!1338219))

(declare-fun m!1338221 () Bool)

(assert (=> b!1449425 m!1338221))

(assert (=> b!1449425 m!1338213))

(declare-fun m!1338223 () Bool)

(assert (=> b!1449425 m!1338223))

(declare-fun m!1338225 () Bool)

(assert (=> b!1449428 m!1338225))

(assert (=> b!1449428 m!1338213))

(declare-fun m!1338227 () Bool)

(assert (=> b!1449428 m!1338227))

(declare-fun m!1338229 () Bool)

(assert (=> b!1449428 m!1338229))

(declare-fun m!1338231 () Bool)

(assert (=> b!1449428 m!1338231))

(assert (=> b!1449428 m!1338199))

(declare-fun m!1338233 () Bool)

(assert (=> b!1449428 m!1338233))

(declare-fun m!1338235 () Bool)

(assert (=> b!1449428 m!1338235))

(assert (=> b!1449428 m!1338199))

(assert (=> b!1449439 m!1338199))

(assert (=> b!1449439 m!1338199))

(declare-fun m!1338237 () Bool)

(assert (=> b!1449439 m!1338237))

(assert (=> b!1449429 m!1338199))

(assert (=> b!1449429 m!1338199))

(declare-fun m!1338239 () Bool)

(assert (=> b!1449429 m!1338239))

(assert (=> b!1449429 m!1338239))

(assert (=> b!1449429 m!1338199))

(declare-fun m!1338241 () Bool)

(assert (=> b!1449429 m!1338241))

(assert (=> b!1449437 m!1338231))

(assert (=> b!1449437 m!1338213))

(assert (=> b!1449437 m!1338229))

(assert (=> b!1449437 m!1338199))

(push 1)

