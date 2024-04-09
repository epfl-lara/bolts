; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122718 () Bool)

(assert start!122718)

(declare-fun b!1421058 () Bool)

(declare-fun res!956603 () Bool)

(declare-fun e!803618 () Bool)

(assert (=> b!1421058 (=> (not res!956603) (not e!803618))))

(declare-datatypes ((array!97001 0))(
  ( (array!97002 (arr!46814 (Array (_ BitVec 32) (_ BitVec 64))) (size!47365 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97001)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97001 (_ BitVec 32)) Bool)

(assert (=> b!1421058 (= res!956603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421059 () Bool)

(declare-fun res!956606 () Bool)

(declare-fun e!803619 () Bool)

(assert (=> b!1421059 (=> (not res!956606) (not e!803619))))

(declare-datatypes ((SeekEntryResult!11121 0))(
  ( (MissingZero!11121 (index!46875 (_ BitVec 32))) (Found!11121 (index!46876 (_ BitVec 32))) (Intermediate!11121 (undefined!11933 Bool) (index!46877 (_ BitVec 32)) (x!128534 (_ BitVec 32))) (Undefined!11121) (MissingVacant!11121 (index!46878 (_ BitVec 32))) )
))
(declare-fun lt!626082 () SeekEntryResult!11121)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97001 (_ BitVec 32)) SeekEntryResult!11121)

(assert (=> b!1421059 (= res!956606 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46814 a!2831) j!81) a!2831 mask!2608) lt!626082))))

(declare-fun b!1421060 () Bool)

(declare-fun e!803620 () Bool)

(assert (=> b!1421060 (= e!803618 e!803620)))

(declare-fun res!956609 () Bool)

(assert (=> b!1421060 (=> (not res!956609) (not e!803620))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421060 (= res!956609 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46814 a!2831) j!81) mask!2608) (select (arr!46814 a!2831) j!81) a!2831 mask!2608) lt!626082))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421060 (= lt!626082 (Intermediate!11121 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421061 () Bool)

(assert (=> b!1421061 (= e!803620 e!803619)))

(declare-fun res!956602 () Bool)

(assert (=> b!1421061 (=> (not res!956602) (not e!803619))))

(declare-fun lt!626080 () (_ BitVec 64))

(declare-fun lt!626079 () SeekEntryResult!11121)

(declare-fun lt!626081 () array!97001)

(assert (=> b!1421061 (= res!956602 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626080 mask!2608) lt!626080 lt!626081 mask!2608) lt!626079))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421061 (= lt!626079 (Intermediate!11121 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421061 (= lt!626080 (select (store (arr!46814 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421061 (= lt!626081 (array!97002 (store (arr!46814 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47365 a!2831)))))

(declare-fun b!1421062 () Bool)

(declare-fun res!956601 () Bool)

(assert (=> b!1421062 (=> (not res!956601) (not e!803619))))

(assert (=> b!1421062 (= res!956601 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626080 lt!626081 mask!2608) lt!626079))))

(declare-fun res!956604 () Bool)

(assert (=> start!122718 (=> (not res!956604) (not e!803618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122718 (= res!956604 (validMask!0 mask!2608))))

(assert (=> start!122718 e!803618))

(assert (=> start!122718 true))

(declare-fun array_inv!35759 (array!97001) Bool)

(assert (=> start!122718 (array_inv!35759 a!2831)))

(declare-fun b!1421057 () Bool)

(declare-fun res!956607 () Bool)

(assert (=> b!1421057 (=> (not res!956607) (not e!803618))))

(declare-datatypes ((List!33504 0))(
  ( (Nil!33501) (Cons!33500 (h!34802 (_ BitVec 64)) (t!48205 List!33504)) )
))
(declare-fun arrayNoDuplicates!0 (array!97001 (_ BitVec 32) List!33504) Bool)

(assert (=> b!1421057 (= res!956607 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33501))))

(declare-fun b!1421063 () Bool)

(declare-fun res!956600 () Bool)

(assert (=> b!1421063 (=> (not res!956600) (not e!803618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421063 (= res!956600 (validKeyInArray!0 (select (arr!46814 a!2831) i!982)))))

(declare-fun b!1421064 () Bool)

(declare-fun res!956605 () Bool)

(assert (=> b!1421064 (=> (not res!956605) (not e!803618))))

(assert (=> b!1421064 (= res!956605 (and (= (size!47365 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47365 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47365 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421065 () Bool)

(assert (=> b!1421065 (= e!803619 (not true))))

(assert (=> b!1421065 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48026 0))(
  ( (Unit!48027) )
))
(declare-fun lt!626083 () Unit!48026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48026)

(assert (=> b!1421065 (= lt!626083 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421066 () Bool)

(declare-fun res!956608 () Bool)

(assert (=> b!1421066 (=> (not res!956608) (not e!803619))))

(assert (=> b!1421066 (= res!956608 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421067 () Bool)

(declare-fun res!956610 () Bool)

(assert (=> b!1421067 (=> (not res!956610) (not e!803618))))

(assert (=> b!1421067 (= res!956610 (validKeyInArray!0 (select (arr!46814 a!2831) j!81)))))

(declare-fun b!1421068 () Bool)

(declare-fun res!956599 () Bool)

(assert (=> b!1421068 (=> (not res!956599) (not e!803618))))

(assert (=> b!1421068 (= res!956599 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47365 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47365 a!2831))))))

(assert (= (and start!122718 res!956604) b!1421064))

(assert (= (and b!1421064 res!956605) b!1421063))

(assert (= (and b!1421063 res!956600) b!1421067))

(assert (= (and b!1421067 res!956610) b!1421058))

(assert (= (and b!1421058 res!956603) b!1421057))

(assert (= (and b!1421057 res!956607) b!1421068))

(assert (= (and b!1421068 res!956599) b!1421060))

(assert (= (and b!1421060 res!956609) b!1421061))

(assert (= (and b!1421061 res!956602) b!1421059))

(assert (= (and b!1421059 res!956606) b!1421062))

(assert (= (and b!1421062 res!956601) b!1421066))

(assert (= (and b!1421066 res!956608) b!1421065))

(declare-fun m!1311659 () Bool)

(assert (=> b!1421059 m!1311659))

(assert (=> b!1421059 m!1311659))

(declare-fun m!1311661 () Bool)

(assert (=> b!1421059 m!1311661))

(declare-fun m!1311663 () Bool)

(assert (=> b!1421062 m!1311663))

(assert (=> b!1421060 m!1311659))

(assert (=> b!1421060 m!1311659))

(declare-fun m!1311665 () Bool)

(assert (=> b!1421060 m!1311665))

(assert (=> b!1421060 m!1311665))

(assert (=> b!1421060 m!1311659))

(declare-fun m!1311667 () Bool)

(assert (=> b!1421060 m!1311667))

(assert (=> b!1421067 m!1311659))

(assert (=> b!1421067 m!1311659))

(declare-fun m!1311669 () Bool)

(assert (=> b!1421067 m!1311669))

(declare-fun m!1311671 () Bool)

(assert (=> b!1421057 m!1311671))

(declare-fun m!1311673 () Bool)

(assert (=> start!122718 m!1311673))

(declare-fun m!1311675 () Bool)

(assert (=> start!122718 m!1311675))

(declare-fun m!1311677 () Bool)

(assert (=> b!1421058 m!1311677))

(declare-fun m!1311679 () Bool)

(assert (=> b!1421061 m!1311679))

(assert (=> b!1421061 m!1311679))

(declare-fun m!1311681 () Bool)

(assert (=> b!1421061 m!1311681))

(declare-fun m!1311683 () Bool)

(assert (=> b!1421061 m!1311683))

(declare-fun m!1311685 () Bool)

(assert (=> b!1421061 m!1311685))

(declare-fun m!1311687 () Bool)

(assert (=> b!1421063 m!1311687))

(assert (=> b!1421063 m!1311687))

(declare-fun m!1311689 () Bool)

(assert (=> b!1421063 m!1311689))

(declare-fun m!1311691 () Bool)

(assert (=> b!1421065 m!1311691))

(declare-fun m!1311693 () Bool)

(assert (=> b!1421065 m!1311693))

(check-sat (not b!1421060) (not b!1421062) (not b!1421065) (not start!122718) (not b!1421061) (not b!1421059) (not b!1421063) (not b!1421057) (not b!1421067) (not b!1421058))
(check-sat)
