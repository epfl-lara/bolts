; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122926 () Bool)

(assert start!122926)

(declare-fun b!1425234 () Bool)

(declare-fun res!960776 () Bool)

(declare-fun e!805312 () Bool)

(assert (=> b!1425234 (=> (not res!960776) (not e!805312))))

(declare-datatypes ((array!97209 0))(
  ( (array!97210 (arr!46918 (Array (_ BitVec 32) (_ BitVec 64))) (size!47469 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97209)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97209 (_ BitVec 32)) Bool)

(assert (=> b!1425234 (= res!960776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425235 () Bool)

(declare-fun res!960782 () Bool)

(assert (=> b!1425235 (=> (not res!960782) (not e!805312))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11219 0))(
  ( (MissingZero!11219 (index!47267 (_ BitVec 32))) (Found!11219 (index!47268 (_ BitVec 32))) (Intermediate!11219 (undefined!12031 Bool) (index!47269 (_ BitVec 32)) (x!128912 (_ BitVec 32))) (Undefined!11219) (MissingVacant!11219 (index!47270 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97209 (_ BitVec 32)) SeekEntryResult!11219)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425235 (= res!960782 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46918 a!2831) j!81) mask!2608) (select (arr!46918 a!2831) j!81) a!2831 mask!2608) (Intermediate!11219 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425236 () Bool)

(assert (=> b!1425236 (= e!805312 false)))

(declare-fun lt!627739 () SeekEntryResult!11219)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425236 (= lt!627739 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46918 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46918 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97210 (store (arr!46918 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47469 a!2831)) mask!2608))))

(declare-fun res!960780 () Bool)

(assert (=> start!122926 (=> (not res!960780) (not e!805312))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122926 (= res!960780 (validMask!0 mask!2608))))

(assert (=> start!122926 e!805312))

(assert (=> start!122926 true))

(declare-fun array_inv!35863 (array!97209) Bool)

(assert (=> start!122926 (array_inv!35863 a!2831)))

(declare-fun b!1425237 () Bool)

(declare-fun res!960781 () Bool)

(assert (=> b!1425237 (=> (not res!960781) (not e!805312))))

(declare-datatypes ((List!33608 0))(
  ( (Nil!33605) (Cons!33604 (h!34906 (_ BitVec 64)) (t!48309 List!33608)) )
))
(declare-fun arrayNoDuplicates!0 (array!97209 (_ BitVec 32) List!33608) Bool)

(assert (=> b!1425237 (= res!960781 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33605))))

(declare-fun b!1425238 () Bool)

(declare-fun res!960779 () Bool)

(assert (=> b!1425238 (=> (not res!960779) (not e!805312))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425238 (= res!960779 (validKeyInArray!0 (select (arr!46918 a!2831) i!982)))))

(declare-fun b!1425239 () Bool)

(declare-fun res!960777 () Bool)

(assert (=> b!1425239 (=> (not res!960777) (not e!805312))))

(assert (=> b!1425239 (= res!960777 (and (= (size!47469 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47469 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47469 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425240 () Bool)

(declare-fun res!960778 () Bool)

(assert (=> b!1425240 (=> (not res!960778) (not e!805312))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425240 (= res!960778 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47469 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47469 a!2831))))))

(declare-fun b!1425241 () Bool)

(declare-fun res!960783 () Bool)

(assert (=> b!1425241 (=> (not res!960783) (not e!805312))))

(assert (=> b!1425241 (= res!960783 (validKeyInArray!0 (select (arr!46918 a!2831) j!81)))))

(assert (= (and start!122926 res!960780) b!1425239))

(assert (= (and b!1425239 res!960777) b!1425238))

(assert (= (and b!1425238 res!960779) b!1425241))

(assert (= (and b!1425241 res!960783) b!1425234))

(assert (= (and b!1425234 res!960776) b!1425237))

(assert (= (and b!1425237 res!960781) b!1425240))

(assert (= (and b!1425240 res!960778) b!1425235))

(assert (= (and b!1425235 res!960782) b!1425236))

(declare-fun m!1315853 () Bool)

(assert (=> b!1425234 m!1315853))

(declare-fun m!1315855 () Bool)

(assert (=> b!1425241 m!1315855))

(assert (=> b!1425241 m!1315855))

(declare-fun m!1315857 () Bool)

(assert (=> b!1425241 m!1315857))

(assert (=> b!1425235 m!1315855))

(assert (=> b!1425235 m!1315855))

(declare-fun m!1315859 () Bool)

(assert (=> b!1425235 m!1315859))

(assert (=> b!1425235 m!1315859))

(assert (=> b!1425235 m!1315855))

(declare-fun m!1315861 () Bool)

(assert (=> b!1425235 m!1315861))

(declare-fun m!1315863 () Bool)

(assert (=> b!1425238 m!1315863))

(assert (=> b!1425238 m!1315863))

(declare-fun m!1315865 () Bool)

(assert (=> b!1425238 m!1315865))

(declare-fun m!1315867 () Bool)

(assert (=> b!1425236 m!1315867))

(declare-fun m!1315869 () Bool)

(assert (=> b!1425236 m!1315869))

(assert (=> b!1425236 m!1315869))

(declare-fun m!1315871 () Bool)

(assert (=> b!1425236 m!1315871))

(assert (=> b!1425236 m!1315871))

(assert (=> b!1425236 m!1315869))

(declare-fun m!1315873 () Bool)

(assert (=> b!1425236 m!1315873))

(declare-fun m!1315875 () Bool)

(assert (=> start!122926 m!1315875))

(declare-fun m!1315877 () Bool)

(assert (=> start!122926 m!1315877))

(declare-fun m!1315879 () Bool)

(assert (=> b!1425237 m!1315879))

(push 1)

(assert (not b!1425234))

(assert (not start!122926))

(assert (not b!1425237))

(assert (not b!1425241))

(assert (not b!1425236))

(assert (not b!1425238))

(assert (not b!1425235))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

