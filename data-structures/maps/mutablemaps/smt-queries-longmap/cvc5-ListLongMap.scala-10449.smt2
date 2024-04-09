; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122896 () Bool)

(assert start!122896)

(declare-fun b!1424899 () Bool)

(declare-fun res!960441 () Bool)

(declare-fun e!805223 () Bool)

(assert (=> b!1424899 (=> (not res!960441) (not e!805223))))

(declare-datatypes ((array!97179 0))(
  ( (array!97180 (arr!46903 (Array (_ BitVec 32) (_ BitVec 64))) (size!47454 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97179)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97179 (_ BitVec 32)) Bool)

(assert (=> b!1424899 (= res!960441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424900 () Bool)

(declare-fun res!960445 () Bool)

(assert (=> b!1424900 (=> (not res!960445) (not e!805223))))

(declare-datatypes ((List!33593 0))(
  ( (Nil!33590) (Cons!33589 (h!34891 (_ BitVec 64)) (t!48294 List!33593)) )
))
(declare-fun arrayNoDuplicates!0 (array!97179 (_ BitVec 32) List!33593) Bool)

(assert (=> b!1424900 (= res!960445 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33590))))

(declare-fun b!1424901 () Bool)

(declare-fun res!960443 () Bool)

(assert (=> b!1424901 (=> (not res!960443) (not e!805223))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424901 (= res!960443 (and (= (size!47454 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47454 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47454 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424902 () Bool)

(declare-fun res!960447 () Bool)

(assert (=> b!1424902 (=> (not res!960447) (not e!805223))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424902 (= res!960447 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47454 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47454 a!2831))))))

(declare-fun b!1424903 () Bool)

(declare-fun res!960442 () Bool)

(assert (=> b!1424903 (=> (not res!960442) (not e!805223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424903 (= res!960442 (validKeyInArray!0 (select (arr!46903 a!2831) i!982)))))

(declare-fun b!1424904 () Bool)

(declare-fun res!960446 () Bool)

(assert (=> b!1424904 (=> (not res!960446) (not e!805223))))

(assert (=> b!1424904 (= res!960446 (validKeyInArray!0 (select (arr!46903 a!2831) j!81)))))

(declare-fun res!960444 () Bool)

(assert (=> start!122896 (=> (not res!960444) (not e!805223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122896 (= res!960444 (validMask!0 mask!2608))))

(assert (=> start!122896 e!805223))

(assert (=> start!122896 true))

(declare-fun array_inv!35848 (array!97179) Bool)

(assert (=> start!122896 (array_inv!35848 a!2831)))

(declare-fun b!1424905 () Bool)

(assert (=> b!1424905 (= e!805223 false)))

(declare-datatypes ((SeekEntryResult!11204 0))(
  ( (MissingZero!11204 (index!47207 (_ BitVec 32))) (Found!11204 (index!47208 (_ BitVec 32))) (Intermediate!11204 (undefined!12016 Bool) (index!47209 (_ BitVec 32)) (x!128857 (_ BitVec 32))) (Undefined!11204) (MissingVacant!11204 (index!47210 (_ BitVec 32))) )
))
(declare-fun lt!627694 () SeekEntryResult!11204)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97179 (_ BitVec 32)) SeekEntryResult!11204)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424905 (= lt!627694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46903 a!2831) j!81) mask!2608) (select (arr!46903 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and start!122896 res!960444) b!1424901))

(assert (= (and b!1424901 res!960443) b!1424903))

(assert (= (and b!1424903 res!960442) b!1424904))

(assert (= (and b!1424904 res!960446) b!1424899))

(assert (= (and b!1424899 res!960441) b!1424900))

(assert (= (and b!1424900 res!960445) b!1424902))

(assert (= (and b!1424902 res!960447) b!1424905))

(declare-fun m!1315517 () Bool)

(assert (=> b!1424900 m!1315517))

(declare-fun m!1315519 () Bool)

(assert (=> b!1424905 m!1315519))

(assert (=> b!1424905 m!1315519))

(declare-fun m!1315521 () Bool)

(assert (=> b!1424905 m!1315521))

(assert (=> b!1424905 m!1315521))

(assert (=> b!1424905 m!1315519))

(declare-fun m!1315523 () Bool)

(assert (=> b!1424905 m!1315523))

(assert (=> b!1424904 m!1315519))

(assert (=> b!1424904 m!1315519))

(declare-fun m!1315525 () Bool)

(assert (=> b!1424904 m!1315525))

(declare-fun m!1315527 () Bool)

(assert (=> start!122896 m!1315527))

(declare-fun m!1315529 () Bool)

(assert (=> start!122896 m!1315529))

(declare-fun m!1315531 () Bool)

(assert (=> b!1424899 m!1315531))

(declare-fun m!1315533 () Bool)

(assert (=> b!1424903 m!1315533))

(assert (=> b!1424903 m!1315533))

(declare-fun m!1315535 () Bool)

(assert (=> b!1424903 m!1315535))

(push 1)

(assert (not start!122896))

(assert (not b!1424899))

(assert (not b!1424903))

(assert (not b!1424905))

(assert (not b!1424904))

(assert (not b!1424900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

