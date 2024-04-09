; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122608 () Bool)

(assert start!122608)

(declare-fun b!1419512 () Bool)

(declare-fun res!955059 () Bool)

(declare-fun e!803155 () Bool)

(assert (=> b!1419512 (=> (not res!955059) (not e!803155))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96891 0))(
  ( (array!96892 (arr!46759 (Array (_ BitVec 32) (_ BitVec 64))) (size!47310 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96891)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419512 (= res!955059 (and (= (size!47310 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47310 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47310 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419513 () Bool)

(declare-fun res!955062 () Bool)

(assert (=> b!1419513 (=> (not res!955062) (not e!803155))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419513 (= res!955062 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47310 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47310 a!2831))))))

(declare-fun b!1419514 () Bool)

(declare-fun e!803156 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419514 (= e!803156 (not (validKeyInArray!0 (select (store (arr!46759 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))))

(declare-fun b!1419515 () Bool)

(assert (=> b!1419515 (= e!803155 e!803156)))

(declare-fun res!955056 () Bool)

(assert (=> b!1419515 (=> (not res!955056) (not e!803156))))

(declare-fun lt!625777 () (_ BitVec 32))

(assert (=> b!1419515 (= res!955056 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvsge lt!625777 #b00000000000000000000000000000000) (bvslt lt!625777 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419515 (= lt!625777 (toIndex!0 (select (store (arr!46759 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608))))

(declare-fun b!1419516 () Bool)

(declare-fun res!955058 () Bool)

(assert (=> b!1419516 (=> (not res!955058) (not e!803155))))

(assert (=> b!1419516 (= res!955058 (validKeyInArray!0 (select (arr!46759 a!2831) i!982)))))

(declare-fun b!1419517 () Bool)

(declare-fun res!955055 () Bool)

(assert (=> b!1419517 (=> (not res!955055) (not e!803155))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96891 (_ BitVec 32)) Bool)

(assert (=> b!1419517 (= res!955055 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419518 () Bool)

(declare-fun res!955057 () Bool)

(assert (=> b!1419518 (=> (not res!955057) (not e!803155))))

(assert (=> b!1419518 (= res!955057 (validKeyInArray!0 (select (arr!46759 a!2831) j!81)))))

(declare-fun b!1419519 () Bool)

(declare-fun res!955054 () Bool)

(assert (=> b!1419519 (=> (not res!955054) (not e!803155))))

(declare-datatypes ((SeekEntryResult!11066 0))(
  ( (MissingZero!11066 (index!46655 (_ BitVec 32))) (Found!11066 (index!46656 (_ BitVec 32))) (Intermediate!11066 (undefined!11878 Bool) (index!46657 (_ BitVec 32)) (x!128335 (_ BitVec 32))) (Undefined!11066) (MissingVacant!11066 (index!46658 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96891 (_ BitVec 32)) SeekEntryResult!11066)

(assert (=> b!1419519 (= res!955054 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46759 a!2831) j!81) mask!2608) (select (arr!46759 a!2831) j!81) a!2831 mask!2608) (Intermediate!11066 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419520 () Bool)

(declare-fun res!955060 () Bool)

(assert (=> b!1419520 (=> (not res!955060) (not e!803155))))

(declare-datatypes ((List!33449 0))(
  ( (Nil!33446) (Cons!33445 (h!34747 (_ BitVec 64)) (t!48150 List!33449)) )
))
(declare-fun arrayNoDuplicates!0 (array!96891 (_ BitVec 32) List!33449) Bool)

(assert (=> b!1419520 (= res!955060 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33446))))

(declare-fun res!955061 () Bool)

(assert (=> start!122608 (=> (not res!955061) (not e!803155))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122608 (= res!955061 (validMask!0 mask!2608))))

(assert (=> start!122608 e!803155))

(assert (=> start!122608 true))

(declare-fun array_inv!35704 (array!96891) Bool)

(assert (=> start!122608 (array_inv!35704 a!2831)))

(assert (= (and start!122608 res!955061) b!1419512))

(assert (= (and b!1419512 res!955059) b!1419516))

(assert (= (and b!1419516 res!955058) b!1419518))

(assert (= (and b!1419518 res!955057) b!1419517))

(assert (= (and b!1419517 res!955055) b!1419520))

(assert (= (and b!1419520 res!955060) b!1419513))

(assert (= (and b!1419513 res!955062) b!1419519))

(assert (= (and b!1419519 res!955054) b!1419515))

(assert (= (and b!1419515 res!955056) b!1419514))

(declare-fun m!1310009 () Bool)

(assert (=> start!122608 m!1310009))

(declare-fun m!1310011 () Bool)

(assert (=> start!122608 m!1310011))

(declare-fun m!1310013 () Bool)

(assert (=> b!1419518 m!1310013))

(assert (=> b!1419518 m!1310013))

(declare-fun m!1310015 () Bool)

(assert (=> b!1419518 m!1310015))

(declare-fun m!1310017 () Bool)

(assert (=> b!1419514 m!1310017))

(declare-fun m!1310019 () Bool)

(assert (=> b!1419514 m!1310019))

(assert (=> b!1419514 m!1310019))

(declare-fun m!1310021 () Bool)

(assert (=> b!1419514 m!1310021))

(declare-fun m!1310023 () Bool)

(assert (=> b!1419520 m!1310023))

(declare-fun m!1310025 () Bool)

(assert (=> b!1419516 m!1310025))

(assert (=> b!1419516 m!1310025))

(declare-fun m!1310027 () Bool)

(assert (=> b!1419516 m!1310027))

(assert (=> b!1419519 m!1310013))

(assert (=> b!1419519 m!1310013))

(declare-fun m!1310029 () Bool)

(assert (=> b!1419519 m!1310029))

(assert (=> b!1419519 m!1310029))

(assert (=> b!1419519 m!1310013))

(declare-fun m!1310031 () Bool)

(assert (=> b!1419519 m!1310031))

(declare-fun m!1310033 () Bool)

(assert (=> b!1419517 m!1310033))

(assert (=> b!1419515 m!1310017))

(assert (=> b!1419515 m!1310019))

(assert (=> b!1419515 m!1310019))

(declare-fun m!1310035 () Bool)

(assert (=> b!1419515 m!1310035))

(push 1)

(assert (not b!1419519))

(assert (not b!1419517))

(assert (not b!1419516))

(assert (not b!1419518))

(assert (not b!1419515))

(assert (not b!1419514))

(assert (not b!1419520))

(assert (not start!122608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

