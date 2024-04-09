; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122706 () Bool)

(assert start!122706)

(declare-fun b!1420867 () Bool)

(declare-fun res!956417 () Bool)

(declare-fun e!803549 () Bool)

(assert (=> b!1420867 (=> (not res!956417) (not e!803549))))

(declare-datatypes ((array!96989 0))(
  ( (array!96990 (arr!46808 (Array (_ BitVec 32) (_ BitVec 64))) (size!47359 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96989)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420867 (= res!956417 (validKeyInArray!0 (select (arr!46808 a!2831) j!81)))))

(declare-fun b!1420868 () Bool)

(declare-fun e!803548 () Bool)

(declare-fun e!803547 () Bool)

(assert (=> b!1420868 (= e!803548 e!803547)))

(declare-fun res!956416 () Bool)

(assert (=> b!1420868 (=> (not res!956416) (not e!803547))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun lt!626003 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun lt!626004 () array!96989)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11115 0))(
  ( (MissingZero!11115 (index!46851 (_ BitVec 32))) (Found!11115 (index!46852 (_ BitVec 32))) (Intermediate!11115 (undefined!11927 Bool) (index!46853 (_ BitVec 32)) (x!128512 (_ BitVec 32))) (Undefined!11115) (MissingVacant!11115 (index!46854 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96989 (_ BitVec 32)) SeekEntryResult!11115)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420868 (= res!956416 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626003 mask!2608) lt!626003 lt!626004 mask!2608) (Intermediate!11115 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420868 (= lt!626003 (select (store (arr!46808 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420868 (= lt!626004 (array!96990 (store (arr!46808 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47359 a!2831)))))

(declare-fun b!1420869 () Bool)

(declare-fun res!956411 () Bool)

(assert (=> b!1420869 (=> (not res!956411) (not e!803549))))

(assert (=> b!1420869 (= res!956411 (validKeyInArray!0 (select (arr!46808 a!2831) i!982)))))

(declare-fun b!1420870 () Bool)

(declare-fun res!956418 () Bool)

(assert (=> b!1420870 (=> (not res!956418) (not e!803549))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420870 (= res!956418 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47359 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47359 a!2831))))))

(declare-fun res!956414 () Bool)

(assert (=> start!122706 (=> (not res!956414) (not e!803549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122706 (= res!956414 (validMask!0 mask!2608))))

(assert (=> start!122706 e!803549))

(assert (=> start!122706 true))

(declare-fun array_inv!35753 (array!96989) Bool)

(assert (=> start!122706 (array_inv!35753 a!2831)))

(declare-fun b!1420871 () Bool)

(declare-fun res!956410 () Bool)

(assert (=> b!1420871 (=> (not res!956410) (not e!803549))))

(assert (=> b!1420871 (= res!956410 (and (= (size!47359 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47359 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47359 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420872 () Bool)

(assert (=> b!1420872 (= e!803549 e!803548)))

(declare-fun res!956409 () Bool)

(assert (=> b!1420872 (=> (not res!956409) (not e!803548))))

(declare-fun lt!626002 () SeekEntryResult!11115)

(assert (=> b!1420872 (= res!956409 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46808 a!2831) j!81) mask!2608) (select (arr!46808 a!2831) j!81) a!2831 mask!2608) lt!626002))))

(assert (=> b!1420872 (= lt!626002 (Intermediate!11115 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420873 () Bool)

(declare-fun res!956415 () Bool)

(assert (=> b!1420873 (=> (not res!956415) (not e!803547))))

(assert (=> b!1420873 (= res!956415 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46808 a!2831) j!81) a!2831 mask!2608) lt!626002))))

(declare-fun b!1420874 () Bool)

(declare-fun res!956413 () Bool)

(assert (=> b!1420874 (=> (not res!956413) (not e!803549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96989 (_ BitVec 32)) Bool)

(assert (=> b!1420874 (= res!956413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420875 () Bool)

(assert (=> b!1420875 (= e!803547 false)))

(declare-fun lt!626005 () SeekEntryResult!11115)

(assert (=> b!1420875 (= lt!626005 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626003 lt!626004 mask!2608))))

(declare-fun b!1420876 () Bool)

(declare-fun res!956412 () Bool)

(assert (=> b!1420876 (=> (not res!956412) (not e!803549))))

(declare-datatypes ((List!33498 0))(
  ( (Nil!33495) (Cons!33494 (h!34796 (_ BitVec 64)) (t!48199 List!33498)) )
))
(declare-fun arrayNoDuplicates!0 (array!96989 (_ BitVec 32) List!33498) Bool)

(assert (=> b!1420876 (= res!956412 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33495))))

(assert (= (and start!122706 res!956414) b!1420871))

(assert (= (and b!1420871 res!956410) b!1420869))

(assert (= (and b!1420869 res!956411) b!1420867))

(assert (= (and b!1420867 res!956417) b!1420874))

(assert (= (and b!1420874 res!956413) b!1420876))

(assert (= (and b!1420876 res!956412) b!1420870))

(assert (= (and b!1420870 res!956418) b!1420872))

(assert (= (and b!1420872 res!956409) b!1420868))

(assert (= (and b!1420868 res!956416) b!1420873))

(assert (= (and b!1420873 res!956415) b!1420875))

(declare-fun m!1311463 () Bool)

(assert (=> b!1420867 m!1311463))

(assert (=> b!1420867 m!1311463))

(declare-fun m!1311465 () Bool)

(assert (=> b!1420867 m!1311465))

(declare-fun m!1311467 () Bool)

(assert (=> b!1420876 m!1311467))

(declare-fun m!1311469 () Bool)

(assert (=> b!1420868 m!1311469))

(assert (=> b!1420868 m!1311469))

(declare-fun m!1311471 () Bool)

(assert (=> b!1420868 m!1311471))

(declare-fun m!1311473 () Bool)

(assert (=> b!1420868 m!1311473))

(declare-fun m!1311475 () Bool)

(assert (=> b!1420868 m!1311475))

(assert (=> b!1420873 m!1311463))

(assert (=> b!1420873 m!1311463))

(declare-fun m!1311477 () Bool)

(assert (=> b!1420873 m!1311477))

(assert (=> b!1420872 m!1311463))

(assert (=> b!1420872 m!1311463))

(declare-fun m!1311479 () Bool)

(assert (=> b!1420872 m!1311479))

(assert (=> b!1420872 m!1311479))

(assert (=> b!1420872 m!1311463))

(declare-fun m!1311481 () Bool)

(assert (=> b!1420872 m!1311481))

(declare-fun m!1311483 () Bool)

(assert (=> start!122706 m!1311483))

(declare-fun m!1311485 () Bool)

(assert (=> start!122706 m!1311485))

(declare-fun m!1311487 () Bool)

(assert (=> b!1420875 m!1311487))

(declare-fun m!1311489 () Bool)

(assert (=> b!1420874 m!1311489))

(declare-fun m!1311491 () Bool)

(assert (=> b!1420869 m!1311491))

(assert (=> b!1420869 m!1311491))

(declare-fun m!1311493 () Bool)

(assert (=> b!1420869 m!1311493))

(check-sat (not b!1420869) (not start!122706) (not b!1420873) (not b!1420867) (not b!1420872) (not b!1420868) (not b!1420876) (not b!1420875) (not b!1420874))
(check-sat)
