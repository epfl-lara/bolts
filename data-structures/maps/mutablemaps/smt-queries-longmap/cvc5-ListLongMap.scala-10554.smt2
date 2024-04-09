; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124504 () Bool)

(assert start!124504)

(declare-fun b!1439981 () Bool)

(declare-fun e!812051 () Bool)

(declare-fun e!812049 () Bool)

(assert (=> b!1439981 (= e!812051 e!812049)))

(declare-fun res!972518 () Bool)

(assert (=> b!1439981 (=> (not res!972518) (not e!812049))))

(declare-datatypes ((array!97869 0))(
  ( (array!97870 (arr!47218 (Array (_ BitVec 32) (_ BitVec 64))) (size!47769 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97869)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11493 0))(
  ( (MissingZero!11493 (index!48363 (_ BitVec 32))) (Found!11493 (index!48364 (_ BitVec 32))) (Intermediate!11493 (undefined!12305 Bool) (index!48365 (_ BitVec 32)) (x!130097 (_ BitVec 32))) (Undefined!11493) (MissingVacant!11493 (index!48366 (_ BitVec 32))) )
))
(declare-fun lt!632848 () SeekEntryResult!11493)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97869 (_ BitVec 32)) SeekEntryResult!11493)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439981 (= res!972518 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47218 a!2862) j!93) mask!2687) (select (arr!47218 a!2862) j!93) a!2862 mask!2687) lt!632848))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439981 (= lt!632848 (Intermediate!11493 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439982 () Bool)

(assert (=> b!1439982 (= e!812049 false)))

(declare-fun lt!632847 () SeekEntryResult!11493)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439982 (= lt!632847 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47218 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47218 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97870 (store (arr!47218 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47769 a!2862)) mask!2687))))

(declare-fun res!972520 () Bool)

(assert (=> start!124504 (=> (not res!972520) (not e!812051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124504 (= res!972520 (validMask!0 mask!2687))))

(assert (=> start!124504 e!812051))

(assert (=> start!124504 true))

(declare-fun array_inv!36163 (array!97869) Bool)

(assert (=> start!124504 (array_inv!36163 a!2862)))

(declare-fun b!1439983 () Bool)

(declare-fun res!972519 () Bool)

(assert (=> b!1439983 (=> (not res!972519) (not e!812051))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439983 (= res!972519 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47769 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47769 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47769 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47218 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439984 () Bool)

(declare-fun res!972523 () Bool)

(assert (=> b!1439984 (=> (not res!972523) (not e!812051))))

(assert (=> b!1439984 (= res!972523 (and (= (size!47769 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47769 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47769 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439985 () Bool)

(declare-fun res!972525 () Bool)

(assert (=> b!1439985 (=> (not res!972525) (not e!812049))))

(assert (=> b!1439985 (= res!972525 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47218 a!2862) j!93) a!2862 mask!2687) lt!632848))))

(declare-fun b!1439986 () Bool)

(declare-fun res!972524 () Bool)

(assert (=> b!1439986 (=> (not res!972524) (not e!812051))))

(declare-datatypes ((List!33899 0))(
  ( (Nil!33896) (Cons!33895 (h!35245 (_ BitVec 64)) (t!48600 List!33899)) )
))
(declare-fun arrayNoDuplicates!0 (array!97869 (_ BitVec 32) List!33899) Bool)

(assert (=> b!1439986 (= res!972524 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33896))))

(declare-fun b!1439987 () Bool)

(declare-fun res!972517 () Bool)

(assert (=> b!1439987 (=> (not res!972517) (not e!812051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439987 (= res!972517 (validKeyInArray!0 (select (arr!47218 a!2862) i!1006)))))

(declare-fun b!1439988 () Bool)

(declare-fun res!972522 () Bool)

(assert (=> b!1439988 (=> (not res!972522) (not e!812051))))

(assert (=> b!1439988 (= res!972522 (validKeyInArray!0 (select (arr!47218 a!2862) j!93)))))

(declare-fun b!1439989 () Bool)

(declare-fun res!972521 () Bool)

(assert (=> b!1439989 (=> (not res!972521) (not e!812051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97869 (_ BitVec 32)) Bool)

(assert (=> b!1439989 (= res!972521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124504 res!972520) b!1439984))

(assert (= (and b!1439984 res!972523) b!1439987))

(assert (= (and b!1439987 res!972517) b!1439988))

(assert (= (and b!1439988 res!972522) b!1439989))

(assert (= (and b!1439989 res!972521) b!1439986))

(assert (= (and b!1439986 res!972524) b!1439983))

(assert (= (and b!1439983 res!972519) b!1439981))

(assert (= (and b!1439981 res!972518) b!1439985))

(assert (= (and b!1439985 res!972525) b!1439982))

(declare-fun m!1329183 () Bool)

(assert (=> b!1439981 m!1329183))

(assert (=> b!1439981 m!1329183))

(declare-fun m!1329185 () Bool)

(assert (=> b!1439981 m!1329185))

(assert (=> b!1439981 m!1329185))

(assert (=> b!1439981 m!1329183))

(declare-fun m!1329187 () Bool)

(assert (=> b!1439981 m!1329187))

(declare-fun m!1329189 () Bool)

(assert (=> b!1439989 m!1329189))

(assert (=> b!1439985 m!1329183))

(assert (=> b!1439985 m!1329183))

(declare-fun m!1329191 () Bool)

(assert (=> b!1439985 m!1329191))

(assert (=> b!1439988 m!1329183))

(assert (=> b!1439988 m!1329183))

(declare-fun m!1329193 () Bool)

(assert (=> b!1439988 m!1329193))

(declare-fun m!1329195 () Bool)

(assert (=> b!1439982 m!1329195))

(declare-fun m!1329197 () Bool)

(assert (=> b!1439982 m!1329197))

(assert (=> b!1439982 m!1329197))

(declare-fun m!1329199 () Bool)

(assert (=> b!1439982 m!1329199))

(assert (=> b!1439982 m!1329199))

(assert (=> b!1439982 m!1329197))

(declare-fun m!1329201 () Bool)

(assert (=> b!1439982 m!1329201))

(declare-fun m!1329203 () Bool)

(assert (=> start!124504 m!1329203))

(declare-fun m!1329205 () Bool)

(assert (=> start!124504 m!1329205))

(declare-fun m!1329207 () Bool)

(assert (=> b!1439986 m!1329207))

(assert (=> b!1439983 m!1329195))

(declare-fun m!1329209 () Bool)

(assert (=> b!1439983 m!1329209))

(declare-fun m!1329211 () Bool)

(assert (=> b!1439987 m!1329211))

(assert (=> b!1439987 m!1329211))

(declare-fun m!1329213 () Bool)

(assert (=> b!1439987 m!1329213))

(push 1)

