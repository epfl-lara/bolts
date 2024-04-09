; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122936 () Bool)

(assert start!122936)

(declare-fun b!1425362 () Bool)

(declare-fun res!960912 () Bool)

(declare-fun e!805342 () Bool)

(assert (=> b!1425362 (=> (not res!960912) (not e!805342))))

(declare-datatypes ((array!97219 0))(
  ( (array!97220 (arr!46923 (Array (_ BitVec 32) (_ BitVec 64))) (size!47474 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97219)

(declare-datatypes ((List!33613 0))(
  ( (Nil!33610) (Cons!33609 (h!34911 (_ BitVec 64)) (t!48314 List!33613)) )
))
(declare-fun arrayNoDuplicates!0 (array!97219 (_ BitVec 32) List!33613) Bool)

(assert (=> b!1425362 (= res!960912 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33610))))

(declare-fun b!1425363 () Bool)

(declare-fun res!960905 () Bool)

(assert (=> b!1425363 (=> (not res!960905) (not e!805342))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425363 (= res!960905 (validKeyInArray!0 (select (arr!46923 a!2831) i!982)))))

(declare-fun b!1425364 () Bool)

(declare-fun res!960910 () Bool)

(assert (=> b!1425364 (=> (not res!960910) (not e!805342))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11224 0))(
  ( (MissingZero!11224 (index!47287 (_ BitVec 32))) (Found!11224 (index!47288 (_ BitVec 32))) (Intermediate!11224 (undefined!12036 Bool) (index!47289 (_ BitVec 32)) (x!128925 (_ BitVec 32))) (Undefined!11224) (MissingVacant!11224 (index!47290 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97219 (_ BitVec 32)) SeekEntryResult!11224)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425364 (= res!960910 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46923 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46923 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97220 (store (arr!46923 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47474 a!2831)) mask!2608) (Intermediate!11224 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1425365 () Bool)

(declare-fun res!960907 () Bool)

(assert (=> b!1425365 (=> (not res!960907) (not e!805342))))

(assert (=> b!1425365 (= res!960907 (and (= (size!47474 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47474 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47474 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!960908 () Bool)

(assert (=> start!122936 (=> (not res!960908) (not e!805342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122936 (= res!960908 (validMask!0 mask!2608))))

(assert (=> start!122936 e!805342))

(assert (=> start!122936 true))

(declare-fun array_inv!35868 (array!97219) Bool)

(assert (=> start!122936 (array_inv!35868 a!2831)))

(declare-fun b!1425366 () Bool)

(assert (=> b!1425366 (= e!805342 false)))

(declare-fun lt!627754 () SeekEntryResult!11224)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425366 (= lt!627754 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46923 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425367 () Bool)

(declare-fun res!960911 () Bool)

(assert (=> b!1425367 (=> (not res!960911) (not e!805342))))

(assert (=> b!1425367 (= res!960911 (validKeyInArray!0 (select (arr!46923 a!2831) j!81)))))

(declare-fun b!1425368 () Bool)

(declare-fun res!960909 () Bool)

(assert (=> b!1425368 (=> (not res!960909) (not e!805342))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1425368 (= res!960909 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47474 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47474 a!2831))))))

(declare-fun b!1425369 () Bool)

(declare-fun res!960906 () Bool)

(assert (=> b!1425369 (=> (not res!960906) (not e!805342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97219 (_ BitVec 32)) Bool)

(assert (=> b!1425369 (= res!960906 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425370 () Bool)

(declare-fun res!960904 () Bool)

(assert (=> b!1425370 (=> (not res!960904) (not e!805342))))

(assert (=> b!1425370 (= res!960904 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46923 a!2831) j!81) mask!2608) (select (arr!46923 a!2831) j!81) a!2831 mask!2608) (Intermediate!11224 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(assert (= (and start!122936 res!960908) b!1425365))

(assert (= (and b!1425365 res!960907) b!1425363))

(assert (= (and b!1425363 res!960905) b!1425367))

(assert (= (and b!1425367 res!960911) b!1425369))

(assert (= (and b!1425369 res!960906) b!1425362))

(assert (= (and b!1425362 res!960912) b!1425368))

(assert (= (and b!1425368 res!960909) b!1425370))

(assert (= (and b!1425370 res!960904) b!1425364))

(assert (= (and b!1425364 res!960910) b!1425366))

(declare-fun m!1315997 () Bool)

(assert (=> b!1425366 m!1315997))

(assert (=> b!1425366 m!1315997))

(declare-fun m!1315999 () Bool)

(assert (=> b!1425366 m!1315999))

(assert (=> b!1425370 m!1315997))

(assert (=> b!1425370 m!1315997))

(declare-fun m!1316001 () Bool)

(assert (=> b!1425370 m!1316001))

(assert (=> b!1425370 m!1316001))

(assert (=> b!1425370 m!1315997))

(declare-fun m!1316003 () Bool)

(assert (=> b!1425370 m!1316003))

(assert (=> b!1425367 m!1315997))

(assert (=> b!1425367 m!1315997))

(declare-fun m!1316005 () Bool)

(assert (=> b!1425367 m!1316005))

(declare-fun m!1316007 () Bool)

(assert (=> start!122936 m!1316007))

(declare-fun m!1316009 () Bool)

(assert (=> start!122936 m!1316009))

(declare-fun m!1316011 () Bool)

(assert (=> b!1425369 m!1316011))

(declare-fun m!1316013 () Bool)

(assert (=> b!1425362 m!1316013))

(declare-fun m!1316015 () Bool)

(assert (=> b!1425363 m!1316015))

(assert (=> b!1425363 m!1316015))

(declare-fun m!1316017 () Bool)

(assert (=> b!1425363 m!1316017))

(declare-fun m!1316019 () Bool)

(assert (=> b!1425364 m!1316019))

(declare-fun m!1316021 () Bool)

(assert (=> b!1425364 m!1316021))

(assert (=> b!1425364 m!1316021))

(declare-fun m!1316023 () Bool)

(assert (=> b!1425364 m!1316023))

(assert (=> b!1425364 m!1316023))

(assert (=> b!1425364 m!1316021))

(declare-fun m!1316025 () Bool)

(assert (=> b!1425364 m!1316025))

(push 1)

(assert (not b!1425364))

(assert (not b!1425363))

(assert (not b!1425370))

(assert (not b!1425369))

(assert (not b!1425362))

(assert (not b!1425367))

(assert (not b!1425366))

(assert (not start!122936))

(check-sat)

(pop 1)

