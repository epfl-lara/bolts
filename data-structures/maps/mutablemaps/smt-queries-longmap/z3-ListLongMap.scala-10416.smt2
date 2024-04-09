; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122700 () Bool)

(assert start!122700)

(declare-fun b!1420777 () Bool)

(declare-fun e!803510 () Bool)

(declare-fun e!803512 () Bool)

(assert (=> b!1420777 (= e!803510 e!803512)))

(declare-fun res!956322 () Bool)

(assert (=> b!1420777 (=> (not res!956322) (not e!803512))))

(declare-datatypes ((SeekEntryResult!11112 0))(
  ( (MissingZero!11112 (index!46839 (_ BitVec 32))) (Found!11112 (index!46840 (_ BitVec 32))) (Intermediate!11112 (undefined!11924 Bool) (index!46841 (_ BitVec 32)) (x!128501 (_ BitVec 32))) (Undefined!11112) (MissingVacant!11112 (index!46842 (_ BitVec 32))) )
))
(declare-fun lt!625966 () SeekEntryResult!11112)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96983 0))(
  ( (array!96984 (arr!46805 (Array (_ BitVec 32) (_ BitVec 64))) (size!47356 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96983)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96983 (_ BitVec 32)) SeekEntryResult!11112)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420777 (= res!956322 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46805 a!2831) j!81) mask!2608) (select (arr!46805 a!2831) j!81) a!2831 mask!2608) lt!625966))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420777 (= lt!625966 (Intermediate!11112 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420778 () Bool)

(declare-fun res!956324 () Bool)

(assert (=> b!1420778 (=> (not res!956324) (not e!803510))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1420778 (= res!956324 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47356 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47356 a!2831))))))

(declare-fun b!1420779 () Bool)

(declare-fun res!956326 () Bool)

(assert (=> b!1420779 (=> (not res!956326) (not e!803510))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420779 (= res!956326 (validKeyInArray!0 (select (arr!46805 a!2831) i!982)))))

(declare-fun b!1420780 () Bool)

(declare-fun res!956319 () Bool)

(assert (=> b!1420780 (=> (not res!956319) (not e!803510))))

(assert (=> b!1420780 (= res!956319 (validKeyInArray!0 (select (arr!46805 a!2831) j!81)))))

(declare-fun b!1420781 () Bool)

(declare-fun e!803513 () Bool)

(assert (=> b!1420781 (= e!803512 e!803513)))

(declare-fun res!956328 () Bool)

(assert (=> b!1420781 (=> (not res!956328) (not e!803513))))

(declare-fun lt!625967 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun lt!625969 () array!96983)

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1420781 (= res!956328 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625967 mask!2608) lt!625967 lt!625969 mask!2608) (Intermediate!11112 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420781 (= lt!625967 (select (store (arr!46805 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420781 (= lt!625969 (array!96984 (store (arr!46805 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47356 a!2831)))))

(declare-fun b!1420782 () Bool)

(declare-fun res!956325 () Bool)

(assert (=> b!1420782 (=> (not res!956325) (not e!803510))))

(declare-datatypes ((List!33495 0))(
  ( (Nil!33492) (Cons!33491 (h!34793 (_ BitVec 64)) (t!48196 List!33495)) )
))
(declare-fun arrayNoDuplicates!0 (array!96983 (_ BitVec 32) List!33495) Bool)

(assert (=> b!1420782 (= res!956325 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33492))))

(declare-fun b!1420783 () Bool)

(assert (=> b!1420783 (= e!803513 false)))

(declare-fun lt!625968 () SeekEntryResult!11112)

(assert (=> b!1420783 (= lt!625968 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625967 lt!625969 mask!2608))))

(declare-fun b!1420784 () Bool)

(declare-fun res!956323 () Bool)

(assert (=> b!1420784 (=> (not res!956323) (not e!803513))))

(assert (=> b!1420784 (= res!956323 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46805 a!2831) j!81) a!2831 mask!2608) lt!625966))))

(declare-fun b!1420785 () Bool)

(declare-fun res!956327 () Bool)

(assert (=> b!1420785 (=> (not res!956327) (not e!803510))))

(assert (=> b!1420785 (= res!956327 (and (= (size!47356 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47356 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47356 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420786 () Bool)

(declare-fun res!956321 () Bool)

(assert (=> b!1420786 (=> (not res!956321) (not e!803510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96983 (_ BitVec 32)) Bool)

(assert (=> b!1420786 (= res!956321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!956320 () Bool)

(assert (=> start!122700 (=> (not res!956320) (not e!803510))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122700 (= res!956320 (validMask!0 mask!2608))))

(assert (=> start!122700 e!803510))

(assert (=> start!122700 true))

(declare-fun array_inv!35750 (array!96983) Bool)

(assert (=> start!122700 (array_inv!35750 a!2831)))

(assert (= (and start!122700 res!956320) b!1420785))

(assert (= (and b!1420785 res!956327) b!1420779))

(assert (= (and b!1420779 res!956326) b!1420780))

(assert (= (and b!1420780 res!956319) b!1420786))

(assert (= (and b!1420786 res!956321) b!1420782))

(assert (= (and b!1420782 res!956325) b!1420778))

(assert (= (and b!1420778 res!956324) b!1420777))

(assert (= (and b!1420777 res!956322) b!1420781))

(assert (= (and b!1420781 res!956328) b!1420784))

(assert (= (and b!1420784 res!956323) b!1420783))

(declare-fun m!1311367 () Bool)

(assert (=> start!122700 m!1311367))

(declare-fun m!1311369 () Bool)

(assert (=> start!122700 m!1311369))

(declare-fun m!1311371 () Bool)

(assert (=> b!1420783 m!1311371))

(declare-fun m!1311373 () Bool)

(assert (=> b!1420781 m!1311373))

(assert (=> b!1420781 m!1311373))

(declare-fun m!1311375 () Bool)

(assert (=> b!1420781 m!1311375))

(declare-fun m!1311377 () Bool)

(assert (=> b!1420781 m!1311377))

(declare-fun m!1311379 () Bool)

(assert (=> b!1420781 m!1311379))

(declare-fun m!1311381 () Bool)

(assert (=> b!1420784 m!1311381))

(assert (=> b!1420784 m!1311381))

(declare-fun m!1311383 () Bool)

(assert (=> b!1420784 m!1311383))

(assert (=> b!1420780 m!1311381))

(assert (=> b!1420780 m!1311381))

(declare-fun m!1311385 () Bool)

(assert (=> b!1420780 m!1311385))

(declare-fun m!1311387 () Bool)

(assert (=> b!1420782 m!1311387))

(assert (=> b!1420777 m!1311381))

(assert (=> b!1420777 m!1311381))

(declare-fun m!1311389 () Bool)

(assert (=> b!1420777 m!1311389))

(assert (=> b!1420777 m!1311389))

(assert (=> b!1420777 m!1311381))

(declare-fun m!1311391 () Bool)

(assert (=> b!1420777 m!1311391))

(declare-fun m!1311393 () Bool)

(assert (=> b!1420786 m!1311393))

(declare-fun m!1311395 () Bool)

(assert (=> b!1420779 m!1311395))

(assert (=> b!1420779 m!1311395))

(declare-fun m!1311397 () Bool)

(assert (=> b!1420779 m!1311397))

(check-sat (not b!1420786) (not b!1420777) (not b!1420781) (not b!1420782) (not b!1420779) (not start!122700) (not b!1420784) (not b!1420783) (not b!1420780))
(check-sat)
