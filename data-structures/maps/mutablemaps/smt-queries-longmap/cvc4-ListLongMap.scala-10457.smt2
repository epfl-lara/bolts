; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122948 () Bool)

(assert start!122948)

(declare-fun b!1425524 () Bool)

(declare-fun res!961073 () Bool)

(declare-fun e!805378 () Bool)

(assert (=> b!1425524 (=> (not res!961073) (not e!805378))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97231 0))(
  ( (array!97232 (arr!46929 (Array (_ BitVec 32) (_ BitVec 64))) (size!47480 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97231)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425524 (= res!961073 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47480 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47480 a!2831))))))

(declare-fun b!1425525 () Bool)

(declare-fun res!961071 () Bool)

(assert (=> b!1425525 (=> (not res!961071) (not e!805378))))

(declare-datatypes ((List!33619 0))(
  ( (Nil!33616) (Cons!33615 (h!34917 (_ BitVec 64)) (t!48320 List!33619)) )
))
(declare-fun arrayNoDuplicates!0 (array!97231 (_ BitVec 32) List!33619) Bool)

(assert (=> b!1425525 (= res!961071 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33616))))

(declare-fun b!1425526 () Bool)

(assert (=> b!1425526 (= e!805378 false)))

(declare-datatypes ((SeekEntryResult!11230 0))(
  ( (MissingZero!11230 (index!47311 (_ BitVec 32))) (Found!11230 (index!47312 (_ BitVec 32))) (Intermediate!11230 (undefined!12042 Bool) (index!47313 (_ BitVec 32)) (x!128947 (_ BitVec 32))) (Undefined!11230) (MissingVacant!11230 (index!47314 (_ BitVec 32))) )
))
(declare-fun lt!627772 () SeekEntryResult!11230)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97231 (_ BitVec 32)) SeekEntryResult!11230)

(assert (=> b!1425526 (= lt!627772 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46929 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425527 () Bool)

(declare-fun res!961070 () Bool)

(assert (=> b!1425527 (=> (not res!961070) (not e!805378))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425527 (= res!961070 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46929 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46929 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97232 (store (arr!46929 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47480 a!2831)) mask!2608) (Intermediate!11230 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1425528 () Bool)

(declare-fun res!961068 () Bool)

(assert (=> b!1425528 (=> (not res!961068) (not e!805378))))

(assert (=> b!1425528 (= res!961068 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46929 a!2831) j!81) mask!2608) (select (arr!46929 a!2831) j!81) a!2831 mask!2608) (Intermediate!11230 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425529 () Bool)

(declare-fun res!961072 () Bool)

(assert (=> b!1425529 (=> (not res!961072) (not e!805378))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425529 (= res!961072 (validKeyInArray!0 (select (arr!46929 a!2831) i!982)))))

(declare-fun b!1425530 () Bool)

(declare-fun res!961067 () Bool)

(assert (=> b!1425530 (=> (not res!961067) (not e!805378))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97231 (_ BitVec 32)) Bool)

(assert (=> b!1425530 (= res!961067 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!961074 () Bool)

(assert (=> start!122948 (=> (not res!961074) (not e!805378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122948 (= res!961074 (validMask!0 mask!2608))))

(assert (=> start!122948 e!805378))

(assert (=> start!122948 true))

(declare-fun array_inv!35874 (array!97231) Bool)

(assert (=> start!122948 (array_inv!35874 a!2831)))

(declare-fun b!1425531 () Bool)

(declare-fun res!961066 () Bool)

(assert (=> b!1425531 (=> (not res!961066) (not e!805378))))

(assert (=> b!1425531 (= res!961066 (validKeyInArray!0 (select (arr!46929 a!2831) j!81)))))

(declare-fun b!1425532 () Bool)

(declare-fun res!961069 () Bool)

(assert (=> b!1425532 (=> (not res!961069) (not e!805378))))

(assert (=> b!1425532 (= res!961069 (and (= (size!47480 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47480 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47480 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122948 res!961074) b!1425532))

(assert (= (and b!1425532 res!961069) b!1425529))

(assert (= (and b!1425529 res!961072) b!1425531))

(assert (= (and b!1425531 res!961066) b!1425530))

(assert (= (and b!1425530 res!961067) b!1425525))

(assert (= (and b!1425525 res!961071) b!1425524))

(assert (= (and b!1425524 res!961073) b!1425528))

(assert (= (and b!1425528 res!961068) b!1425527))

(assert (= (and b!1425527 res!961070) b!1425526))

(declare-fun m!1316177 () Bool)

(assert (=> start!122948 m!1316177))

(declare-fun m!1316179 () Bool)

(assert (=> start!122948 m!1316179))

(declare-fun m!1316181 () Bool)

(assert (=> b!1425525 m!1316181))

(declare-fun m!1316183 () Bool)

(assert (=> b!1425527 m!1316183))

(declare-fun m!1316185 () Bool)

(assert (=> b!1425527 m!1316185))

(assert (=> b!1425527 m!1316185))

(declare-fun m!1316187 () Bool)

(assert (=> b!1425527 m!1316187))

(assert (=> b!1425527 m!1316187))

(assert (=> b!1425527 m!1316185))

(declare-fun m!1316189 () Bool)

(assert (=> b!1425527 m!1316189))

(declare-fun m!1316191 () Bool)

(assert (=> b!1425529 m!1316191))

(assert (=> b!1425529 m!1316191))

(declare-fun m!1316193 () Bool)

(assert (=> b!1425529 m!1316193))

(declare-fun m!1316195 () Bool)

(assert (=> b!1425531 m!1316195))

(assert (=> b!1425531 m!1316195))

(declare-fun m!1316197 () Bool)

(assert (=> b!1425531 m!1316197))

(assert (=> b!1425528 m!1316195))

(assert (=> b!1425528 m!1316195))

(declare-fun m!1316199 () Bool)

(assert (=> b!1425528 m!1316199))

(assert (=> b!1425528 m!1316199))

(assert (=> b!1425528 m!1316195))

(declare-fun m!1316201 () Bool)

(assert (=> b!1425528 m!1316201))

(assert (=> b!1425526 m!1316195))

(assert (=> b!1425526 m!1316195))

(declare-fun m!1316203 () Bool)

(assert (=> b!1425526 m!1316203))

(declare-fun m!1316205 () Bool)

(assert (=> b!1425530 m!1316205))

(push 1)

(assert (not b!1425531))

(assert (not start!122948))

(assert (not b!1425530))

(assert (not b!1425526))

(assert (not b!1425527))

(assert (not b!1425529))

(assert (not b!1425528))

(assert (not b!1425525))

(check-sat)

(pop 1)

