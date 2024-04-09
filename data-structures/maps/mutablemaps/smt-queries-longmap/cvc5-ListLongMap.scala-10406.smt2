; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122638 () Bool)

(assert start!122638)

(declare-fun b!1419898 () Bool)

(declare-fun res!955443 () Bool)

(declare-fun e!803251 () Bool)

(assert (=> b!1419898 (=> (not res!955443) (not e!803251))))

(declare-datatypes ((array!96921 0))(
  ( (array!96922 (arr!46774 (Array (_ BitVec 32) (_ BitVec 64))) (size!47325 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96921)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419898 (= res!955443 (validKeyInArray!0 (select (arr!46774 a!2831) j!81)))))

(declare-fun b!1419899 () Bool)

(declare-fun res!955444 () Bool)

(assert (=> b!1419899 (=> (not res!955444) (not e!803251))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419899 (= res!955444 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47325 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47325 a!2831))))))

(declare-fun b!1419900 () Bool)

(declare-fun res!955441 () Bool)

(assert (=> b!1419900 (=> (not res!955441) (not e!803251))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11081 0))(
  ( (MissingZero!11081 (index!46715 (_ BitVec 32))) (Found!11081 (index!46716 (_ BitVec 32))) (Intermediate!11081 (undefined!11893 Bool) (index!46717 (_ BitVec 32)) (x!128390 (_ BitVec 32))) (Undefined!11081) (MissingVacant!11081 (index!46718 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96921 (_ BitVec 32)) SeekEntryResult!11081)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419900 (= res!955441 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46774 a!2831) j!81) mask!2608) (select (arr!46774 a!2831) j!81) a!2831 mask!2608) (Intermediate!11081 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419901 () Bool)

(assert (=> b!1419901 (= e!803251 false)))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun lt!625804 () SeekEntryResult!11081)

(assert (=> b!1419901 (= lt!625804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46774 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46774 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96922 (store (arr!46774 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47325 a!2831)) mask!2608))))

(declare-fun b!1419902 () Bool)

(declare-fun res!955439 () Bool)

(assert (=> b!1419902 (=> (not res!955439) (not e!803251))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96921 (_ BitVec 32)) Bool)

(assert (=> b!1419902 (= res!955439 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1419903 () Bool)

(declare-fun res!955440 () Bool)

(assert (=> b!1419903 (=> (not res!955440) (not e!803251))))

(declare-datatypes ((List!33464 0))(
  ( (Nil!33461) (Cons!33460 (h!34762 (_ BitVec 64)) (t!48165 List!33464)) )
))
(declare-fun arrayNoDuplicates!0 (array!96921 (_ BitVec 32) List!33464) Bool)

(assert (=> b!1419903 (= res!955440 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33461))))

(declare-fun b!1419904 () Bool)

(declare-fun res!955442 () Bool)

(assert (=> b!1419904 (=> (not res!955442) (not e!803251))))

(assert (=> b!1419904 (= res!955442 (and (= (size!47325 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47325 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47325 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419897 () Bool)

(declare-fun res!955446 () Bool)

(assert (=> b!1419897 (=> (not res!955446) (not e!803251))))

(assert (=> b!1419897 (= res!955446 (validKeyInArray!0 (select (arr!46774 a!2831) i!982)))))

(declare-fun res!955445 () Bool)

(assert (=> start!122638 (=> (not res!955445) (not e!803251))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122638 (= res!955445 (validMask!0 mask!2608))))

(assert (=> start!122638 e!803251))

(assert (=> start!122638 true))

(declare-fun array_inv!35719 (array!96921) Bool)

(assert (=> start!122638 (array_inv!35719 a!2831)))

(assert (= (and start!122638 res!955445) b!1419904))

(assert (= (and b!1419904 res!955442) b!1419897))

(assert (= (and b!1419897 res!955446) b!1419898))

(assert (= (and b!1419898 res!955443) b!1419902))

(assert (= (and b!1419902 res!955439) b!1419903))

(assert (= (and b!1419903 res!955440) b!1419899))

(assert (= (and b!1419899 res!955444) b!1419900))

(assert (= (and b!1419900 res!955441) b!1419901))

(declare-fun m!1310429 () Bool)

(assert (=> b!1419902 m!1310429))

(declare-fun m!1310431 () Bool)

(assert (=> b!1419898 m!1310431))

(assert (=> b!1419898 m!1310431))

(declare-fun m!1310433 () Bool)

(assert (=> b!1419898 m!1310433))

(declare-fun m!1310435 () Bool)

(assert (=> start!122638 m!1310435))

(declare-fun m!1310437 () Bool)

(assert (=> start!122638 m!1310437))

(declare-fun m!1310439 () Bool)

(assert (=> b!1419901 m!1310439))

(declare-fun m!1310441 () Bool)

(assert (=> b!1419901 m!1310441))

(assert (=> b!1419901 m!1310441))

(declare-fun m!1310443 () Bool)

(assert (=> b!1419901 m!1310443))

(assert (=> b!1419901 m!1310443))

(assert (=> b!1419901 m!1310441))

(declare-fun m!1310445 () Bool)

(assert (=> b!1419901 m!1310445))

(assert (=> b!1419900 m!1310431))

(assert (=> b!1419900 m!1310431))

(declare-fun m!1310447 () Bool)

(assert (=> b!1419900 m!1310447))

(assert (=> b!1419900 m!1310447))

(assert (=> b!1419900 m!1310431))

(declare-fun m!1310449 () Bool)

(assert (=> b!1419900 m!1310449))

(declare-fun m!1310451 () Bool)

(assert (=> b!1419897 m!1310451))

(assert (=> b!1419897 m!1310451))

(declare-fun m!1310453 () Bool)

(assert (=> b!1419897 m!1310453))

(declare-fun m!1310455 () Bool)

(assert (=> b!1419903 m!1310455))

(push 1)

(assert (not b!1419902))

(assert (not b!1419901))

(assert (not start!122638))

(assert (not b!1419903))

(assert (not b!1419898))

(assert (not b!1419897))

(assert (not b!1419900))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

