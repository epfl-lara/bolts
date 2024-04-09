; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122620 () Bool)

(assert start!122620)

(declare-fun b!1419665 () Bool)

(declare-fun res!955215 () Bool)

(declare-fun e!803198 () Bool)

(assert (=> b!1419665 (=> (not res!955215) (not e!803198))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!96903 0))(
  ( (array!96904 (arr!46765 (Array (_ BitVec 32) (_ BitVec 64))) (size!47316 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96903)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-datatypes ((SeekEntryResult!11072 0))(
  ( (MissingZero!11072 (index!46679 (_ BitVec 32))) (Found!11072 (index!46680 (_ BitVec 32))) (Intermediate!11072 (undefined!11884 Bool) (index!46681 (_ BitVec 32)) (x!128357 (_ BitVec 32))) (Undefined!11072) (MissingVacant!11072 (index!46682 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96903 (_ BitVec 32)) SeekEntryResult!11072)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419665 (= res!955215 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46765 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46765 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96904 (store (arr!46765 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47316 a!2831)) mask!2608) (Intermediate!11072 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1419666 () Bool)

(declare-fun res!955213 () Bool)

(assert (=> b!1419666 (=> (not res!955213) (not e!803198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419666 (= res!955213 (validKeyInArray!0 (select (arr!46765 a!2831) i!982)))))

(declare-fun b!1419668 () Bool)

(declare-fun res!955208 () Bool)

(assert (=> b!1419668 (=> (not res!955208) (not e!803198))))

(assert (=> b!1419668 (= res!955208 (and (= (size!47316 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47316 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47316 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419669 () Bool)

(declare-fun res!955210 () Bool)

(assert (=> b!1419669 (=> (not res!955210) (not e!803198))))

(assert (=> b!1419669 (= res!955210 (validKeyInArray!0 (select (arr!46765 a!2831) j!81)))))

(declare-fun b!1419670 () Bool)

(declare-fun res!955211 () Bool)

(assert (=> b!1419670 (=> (not res!955211) (not e!803198))))

(declare-datatypes ((List!33455 0))(
  ( (Nil!33452) (Cons!33451 (h!34753 (_ BitVec 64)) (t!48156 List!33455)) )
))
(declare-fun arrayNoDuplicates!0 (array!96903 (_ BitVec 32) List!33455) Bool)

(assert (=> b!1419670 (= res!955211 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33452))))

(declare-fun b!1419671 () Bool)

(declare-fun res!955212 () Bool)

(assert (=> b!1419671 (=> (not res!955212) (not e!803198))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419671 (= res!955212 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47316 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47316 a!2831))))))

(declare-fun b!1419667 () Bool)

(assert (=> b!1419667 (= e!803198 (bvslt mask!2608 #b00000000000000000000000000000000))))

(declare-fun res!955209 () Bool)

(assert (=> start!122620 (=> (not res!955209) (not e!803198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122620 (= res!955209 (validMask!0 mask!2608))))

(assert (=> start!122620 e!803198))

(assert (=> start!122620 true))

(declare-fun array_inv!35710 (array!96903) Bool)

(assert (=> start!122620 (array_inv!35710 a!2831)))

(declare-fun b!1419672 () Bool)

(declare-fun res!955214 () Bool)

(assert (=> b!1419672 (=> (not res!955214) (not e!803198))))

(assert (=> b!1419672 (= res!955214 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46765 a!2831) j!81) mask!2608) (select (arr!46765 a!2831) j!81) a!2831 mask!2608) (Intermediate!11072 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419673 () Bool)

(declare-fun res!955207 () Bool)

(assert (=> b!1419673 (=> (not res!955207) (not e!803198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96903 (_ BitVec 32)) Bool)

(assert (=> b!1419673 (= res!955207 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122620 res!955209) b!1419668))

(assert (= (and b!1419668 res!955208) b!1419666))

(assert (= (and b!1419666 res!955213) b!1419669))

(assert (= (and b!1419669 res!955210) b!1419673))

(assert (= (and b!1419673 res!955207) b!1419670))

(assert (= (and b!1419670 res!955211) b!1419671))

(assert (= (and b!1419671 res!955212) b!1419672))

(assert (= (and b!1419672 res!955214) b!1419665))

(assert (= (and b!1419665 res!955215) b!1419667))

(declare-fun m!1310177 () Bool)

(assert (=> b!1419670 m!1310177))

(declare-fun m!1310179 () Bool)

(assert (=> start!122620 m!1310179))

(declare-fun m!1310181 () Bool)

(assert (=> start!122620 m!1310181))

(declare-fun m!1310183 () Bool)

(assert (=> b!1419665 m!1310183))

(declare-fun m!1310185 () Bool)

(assert (=> b!1419665 m!1310185))

(assert (=> b!1419665 m!1310185))

(declare-fun m!1310187 () Bool)

(assert (=> b!1419665 m!1310187))

(assert (=> b!1419665 m!1310187))

(assert (=> b!1419665 m!1310185))

(declare-fun m!1310189 () Bool)

(assert (=> b!1419665 m!1310189))

(declare-fun m!1310191 () Bool)

(assert (=> b!1419669 m!1310191))

(assert (=> b!1419669 m!1310191))

(declare-fun m!1310193 () Bool)

(assert (=> b!1419669 m!1310193))

(declare-fun m!1310195 () Bool)

(assert (=> b!1419673 m!1310195))

(declare-fun m!1310197 () Bool)

(assert (=> b!1419666 m!1310197))

(assert (=> b!1419666 m!1310197))

(declare-fun m!1310199 () Bool)

(assert (=> b!1419666 m!1310199))

(assert (=> b!1419672 m!1310191))

(assert (=> b!1419672 m!1310191))

(declare-fun m!1310201 () Bool)

(assert (=> b!1419672 m!1310201))

(assert (=> b!1419672 m!1310201))

(assert (=> b!1419672 m!1310191))

(declare-fun m!1310203 () Bool)

(assert (=> b!1419672 m!1310203))

(push 1)

(assert (not start!122620))

(assert (not b!1419673))

(assert (not b!1419669))

(assert (not b!1419672))

(assert (not b!1419666))

(assert (not b!1419665))

(assert (not b!1419670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

