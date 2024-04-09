; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122714 () Bool)

(assert start!122714)

(declare-fun b!1420987 () Bool)

(declare-fun res!956537 () Bool)

(declare-fun e!803597 () Bool)

(assert (=> b!1420987 (=> (not res!956537) (not e!803597))))

(declare-datatypes ((array!96997 0))(
  ( (array!96998 (arr!46812 (Array (_ BitVec 32) (_ BitVec 64))) (size!47363 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96997)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420987 (= res!956537 (validKeyInArray!0 (select (arr!46812 a!2831) i!982)))))

(declare-fun b!1420988 () Bool)

(declare-fun res!956534 () Bool)

(assert (=> b!1420988 (=> (not res!956534) (not e!803597))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96997 (_ BitVec 32)) Bool)

(assert (=> b!1420988 (= res!956534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420989 () Bool)

(declare-fun e!803594 () Bool)

(assert (=> b!1420989 (= e!803597 e!803594)))

(declare-fun res!956533 () Bool)

(assert (=> b!1420989 (=> (not res!956533) (not e!803594))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11119 0))(
  ( (MissingZero!11119 (index!46867 (_ BitVec 32))) (Found!11119 (index!46868 (_ BitVec 32))) (Intermediate!11119 (undefined!11931 Bool) (index!46869 (_ BitVec 32)) (x!128524 (_ BitVec 32))) (Undefined!11119) (MissingVacant!11119 (index!46870 (_ BitVec 32))) )
))
(declare-fun lt!626053 () SeekEntryResult!11119)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96997 (_ BitVec 32)) SeekEntryResult!11119)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420989 (= res!956533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46812 a!2831) j!81) mask!2608) (select (arr!46812 a!2831) j!81) a!2831 mask!2608) lt!626053))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420989 (= lt!626053 (Intermediate!11119 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!956538 () Bool)

(assert (=> start!122714 (=> (not res!956538) (not e!803597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122714 (= res!956538 (validMask!0 mask!2608))))

(assert (=> start!122714 e!803597))

(assert (=> start!122714 true))

(declare-fun array_inv!35757 (array!96997) Bool)

(assert (=> start!122714 (array_inv!35757 a!2831)))

(declare-fun b!1420990 () Bool)

(declare-fun res!956535 () Bool)

(assert (=> b!1420990 (=> (not res!956535) (not e!803597))))

(assert (=> b!1420990 (= res!956535 (and (= (size!47363 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47363 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47363 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420991 () Bool)

(declare-fun res!956529 () Bool)

(assert (=> b!1420991 (=> (not res!956529) (not e!803597))))

(declare-datatypes ((List!33502 0))(
  ( (Nil!33499) (Cons!33498 (h!34800 (_ BitVec 64)) (t!48203 List!33502)) )
))
(declare-fun arrayNoDuplicates!0 (array!96997 (_ BitVec 32) List!33502) Bool)

(assert (=> b!1420991 (= res!956529 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33499))))

(declare-fun b!1420992 () Bool)

(declare-fun res!956531 () Bool)

(assert (=> b!1420992 (=> (not res!956531) (not e!803597))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420992 (= res!956531 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47363 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47363 a!2831))))))

(declare-fun b!1420993 () Bool)

(declare-fun e!803595 () Bool)

(assert (=> b!1420993 (= e!803594 e!803595)))

(declare-fun res!956530 () Bool)

(assert (=> b!1420993 (=> (not res!956530) (not e!803595))))

(declare-fun lt!626051 () array!96997)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!626052 () (_ BitVec 64))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420993 (= res!956530 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626052 mask!2608) lt!626052 lt!626051 mask!2608) (Intermediate!11119 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420993 (= lt!626052 (select (store (arr!46812 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420993 (= lt!626051 (array!96998 (store (arr!46812 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47363 a!2831)))))

(declare-fun b!1420994 () Bool)

(declare-fun res!956536 () Bool)

(assert (=> b!1420994 (=> (not res!956536) (not e!803595))))

(assert (=> b!1420994 (= res!956536 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46812 a!2831) j!81) a!2831 mask!2608) lt!626053))))

(declare-fun b!1420995 () Bool)

(assert (=> b!1420995 (= e!803595 false)))

(declare-fun lt!626050 () SeekEntryResult!11119)

(assert (=> b!1420995 (= lt!626050 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626052 lt!626051 mask!2608))))

(declare-fun b!1420996 () Bool)

(declare-fun res!956532 () Bool)

(assert (=> b!1420996 (=> (not res!956532) (not e!803597))))

(assert (=> b!1420996 (= res!956532 (validKeyInArray!0 (select (arr!46812 a!2831) j!81)))))

(assert (= (and start!122714 res!956538) b!1420990))

(assert (= (and b!1420990 res!956535) b!1420987))

(assert (= (and b!1420987 res!956537) b!1420996))

(assert (= (and b!1420996 res!956532) b!1420988))

(assert (= (and b!1420988 res!956534) b!1420991))

(assert (= (and b!1420991 res!956529) b!1420992))

(assert (= (and b!1420992 res!956531) b!1420989))

(assert (= (and b!1420989 res!956533) b!1420993))

(assert (= (and b!1420993 res!956530) b!1420994))

(assert (= (and b!1420994 res!956536) b!1420995))

(declare-fun m!1311591 () Bool)

(assert (=> b!1420988 m!1311591))

(declare-fun m!1311593 () Bool)

(assert (=> b!1420993 m!1311593))

(assert (=> b!1420993 m!1311593))

(declare-fun m!1311595 () Bool)

(assert (=> b!1420993 m!1311595))

(declare-fun m!1311597 () Bool)

(assert (=> b!1420993 m!1311597))

(declare-fun m!1311599 () Bool)

(assert (=> b!1420993 m!1311599))

(declare-fun m!1311601 () Bool)

(assert (=> start!122714 m!1311601))

(declare-fun m!1311603 () Bool)

(assert (=> start!122714 m!1311603))

(declare-fun m!1311605 () Bool)

(assert (=> b!1420994 m!1311605))

(assert (=> b!1420994 m!1311605))

(declare-fun m!1311607 () Bool)

(assert (=> b!1420994 m!1311607))

(assert (=> b!1420989 m!1311605))

(assert (=> b!1420989 m!1311605))

(declare-fun m!1311609 () Bool)

(assert (=> b!1420989 m!1311609))

(assert (=> b!1420989 m!1311609))

(assert (=> b!1420989 m!1311605))

(declare-fun m!1311611 () Bool)

(assert (=> b!1420989 m!1311611))

(declare-fun m!1311613 () Bool)

(assert (=> b!1420995 m!1311613))

(declare-fun m!1311615 () Bool)

(assert (=> b!1420987 m!1311615))

(assert (=> b!1420987 m!1311615))

(declare-fun m!1311617 () Bool)

(assert (=> b!1420987 m!1311617))

(assert (=> b!1420996 m!1311605))

(assert (=> b!1420996 m!1311605))

(declare-fun m!1311619 () Bool)

(assert (=> b!1420996 m!1311619))

(declare-fun m!1311621 () Bool)

(assert (=> b!1420991 m!1311621))

(push 1)

(assert (not b!1420993))

(assert (not start!122714))

(assert (not b!1420994))

(assert (not b!1420987))

