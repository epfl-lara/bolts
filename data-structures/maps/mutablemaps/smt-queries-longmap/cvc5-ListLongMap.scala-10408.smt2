; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122650 () Bool)

(assert start!122650)

(declare-fun b!1420043 () Bool)

(declare-fun res!955586 () Bool)

(declare-fun e!803288 () Bool)

(assert (=> b!1420043 (=> (not res!955586) (not e!803288))))

(declare-datatypes ((array!96933 0))(
  ( (array!96934 (arr!46780 (Array (_ BitVec 32) (_ BitVec 64))) (size!47331 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96933)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96933 (_ BitVec 32)) Bool)

(assert (=> b!1420043 (= res!955586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!955590 () Bool)

(assert (=> start!122650 (=> (not res!955590) (not e!803288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122650 (= res!955590 (validMask!0 mask!2608))))

(assert (=> start!122650 e!803288))

(assert (=> start!122650 true))

(declare-fun array_inv!35725 (array!96933) Bool)

(assert (=> start!122650 (array_inv!35725 a!2831)))

(declare-fun b!1420044 () Bool)

(declare-fun res!955589 () Bool)

(assert (=> b!1420044 (=> (not res!955589) (not e!803288))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420044 (= res!955589 (validKeyInArray!0 (select (arr!46780 a!2831) i!982)))))

(declare-fun b!1420045 () Bool)

(declare-fun res!955592 () Bool)

(assert (=> b!1420045 (=> (not res!955592) (not e!803288))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11087 0))(
  ( (MissingZero!11087 (index!46739 (_ BitVec 32))) (Found!11087 (index!46740 (_ BitVec 32))) (Intermediate!11087 (undefined!11899 Bool) (index!46741 (_ BitVec 32)) (x!128412 (_ BitVec 32))) (Undefined!11087) (MissingVacant!11087 (index!46742 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96933 (_ BitVec 32)) SeekEntryResult!11087)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420045 (= res!955592 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46780 a!2831) j!81) mask!2608) (select (arr!46780 a!2831) j!81) a!2831 mask!2608) (Intermediate!11087 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1420046 () Bool)

(declare-fun res!955587 () Bool)

(assert (=> b!1420046 (=> (not res!955587) (not e!803288))))

(assert (=> b!1420046 (= res!955587 (and (= (size!47331 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47331 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47331 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420047 () Bool)

(declare-fun res!955585 () Bool)

(assert (=> b!1420047 (=> (not res!955585) (not e!803288))))

(assert (=> b!1420047 (= res!955585 (validKeyInArray!0 (select (arr!46780 a!2831) j!81)))))

(declare-fun b!1420048 () Bool)

(assert (=> b!1420048 (= e!803288 false)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!625822 () SeekEntryResult!11087)

(assert (=> b!1420048 (= lt!625822 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46780 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1420049 () Bool)

(declare-fun res!955591 () Bool)

(assert (=> b!1420049 (=> (not res!955591) (not e!803288))))

(declare-datatypes ((List!33470 0))(
  ( (Nil!33467) (Cons!33466 (h!34768 (_ BitVec 64)) (t!48171 List!33470)) )
))
(declare-fun arrayNoDuplicates!0 (array!96933 (_ BitVec 32) List!33470) Bool)

(assert (=> b!1420049 (= res!955591 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33467))))

(declare-fun b!1420050 () Bool)

(declare-fun res!955588 () Bool)

(assert (=> b!1420050 (=> (not res!955588) (not e!803288))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420050 (= res!955588 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46780 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46780 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96934 (store (arr!46780 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47331 a!2831)) mask!2608) (Intermediate!11087 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420051 () Bool)

(declare-fun res!955593 () Bool)

(assert (=> b!1420051 (=> (not res!955593) (not e!803288))))

(assert (=> b!1420051 (= res!955593 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47331 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47331 a!2831))))))

(assert (= (and start!122650 res!955590) b!1420046))

(assert (= (and b!1420046 res!955587) b!1420044))

(assert (= (and b!1420044 res!955589) b!1420047))

(assert (= (and b!1420047 res!955585) b!1420043))

(assert (= (and b!1420043 res!955586) b!1420049))

(assert (= (and b!1420049 res!955591) b!1420051))

(assert (= (and b!1420051 res!955593) b!1420045))

(assert (= (and b!1420045 res!955592) b!1420050))

(assert (= (and b!1420050 res!955588) b!1420048))

(declare-fun m!1310597 () Bool)

(assert (=> b!1420049 m!1310597))

(declare-fun m!1310599 () Bool)

(assert (=> b!1420047 m!1310599))

(assert (=> b!1420047 m!1310599))

(declare-fun m!1310601 () Bool)

(assert (=> b!1420047 m!1310601))

(assert (=> b!1420048 m!1310599))

(assert (=> b!1420048 m!1310599))

(declare-fun m!1310603 () Bool)

(assert (=> b!1420048 m!1310603))

(declare-fun m!1310605 () Bool)

(assert (=> b!1420044 m!1310605))

(assert (=> b!1420044 m!1310605))

(declare-fun m!1310607 () Bool)

(assert (=> b!1420044 m!1310607))

(declare-fun m!1310609 () Bool)

(assert (=> b!1420050 m!1310609))

(declare-fun m!1310611 () Bool)

(assert (=> b!1420050 m!1310611))

(assert (=> b!1420050 m!1310611))

(declare-fun m!1310613 () Bool)

(assert (=> b!1420050 m!1310613))

(assert (=> b!1420050 m!1310613))

(assert (=> b!1420050 m!1310611))

(declare-fun m!1310615 () Bool)

(assert (=> b!1420050 m!1310615))

(declare-fun m!1310617 () Bool)

(assert (=> start!122650 m!1310617))

(declare-fun m!1310619 () Bool)

(assert (=> start!122650 m!1310619))

(assert (=> b!1420045 m!1310599))

(assert (=> b!1420045 m!1310599))

(declare-fun m!1310621 () Bool)

(assert (=> b!1420045 m!1310621))

(assert (=> b!1420045 m!1310621))

(assert (=> b!1420045 m!1310599))

(declare-fun m!1310623 () Bool)

(assert (=> b!1420045 m!1310623))

(declare-fun m!1310625 () Bool)

(assert (=> b!1420043 m!1310625))

(push 1)

(assert (not b!1420047))

(assert (not b!1420049))

(assert (not b!1420050))

(assert (not b!1420048))

(assert (not b!1420044))

(assert (not b!1420043))

(assert (not b!1420045))

(assert (not start!122650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

