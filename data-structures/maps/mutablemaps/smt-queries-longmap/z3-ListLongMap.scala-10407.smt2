; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122646 () Bool)

(assert start!122646)

(declare-fun b!1419993 () Bool)

(declare-fun res!955538 () Bool)

(declare-fun e!803276 () Bool)

(assert (=> b!1419993 (=> (not res!955538) (not e!803276))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96929 0))(
  ( (array!96930 (arr!46778 (Array (_ BitVec 32) (_ BitVec 64))) (size!47329 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96929)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1419993 (= res!955538 (and (= (size!47329 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47329 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47329 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1419994 () Bool)

(declare-fun res!955536 () Bool)

(assert (=> b!1419994 (=> (not res!955536) (not e!803276))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1419994 (= res!955536 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47329 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47329 a!2831))))))

(declare-fun b!1419995 () Bool)

(declare-fun res!955535 () Bool)

(assert (=> b!1419995 (=> (not res!955535) (not e!803276))))

(declare-datatypes ((SeekEntryResult!11085 0))(
  ( (MissingZero!11085 (index!46731 (_ BitVec 32))) (Found!11085 (index!46732 (_ BitVec 32))) (Intermediate!11085 (undefined!11897 Bool) (index!46733 (_ BitVec 32)) (x!128402 (_ BitVec 32))) (Undefined!11085) (MissingVacant!11085 (index!46734 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96929 (_ BitVec 32)) SeekEntryResult!11085)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1419995 (= res!955535 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46778 a!2831) j!81) mask!2608) (select (arr!46778 a!2831) j!81) a!2831 mask!2608) (Intermediate!11085 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1419996 () Bool)

(declare-fun res!955541 () Bool)

(assert (=> b!1419996 (=> (not res!955541) (not e!803276))))

(declare-datatypes ((List!33468 0))(
  ( (Nil!33465) (Cons!33464 (h!34766 (_ BitVec 64)) (t!48169 List!33468)) )
))
(declare-fun arrayNoDuplicates!0 (array!96929 (_ BitVec 32) List!33468) Bool)

(assert (=> b!1419996 (= res!955541 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33465))))

(declare-fun b!1419997 () Bool)

(assert (=> b!1419997 (= e!803276 false)))

(declare-fun lt!625816 () SeekEntryResult!11085)

(assert (=> b!1419997 (= lt!625816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46778 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46778 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96930 (store (arr!46778 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47329 a!2831)) mask!2608))))

(declare-fun b!1419998 () Bool)

(declare-fun res!955540 () Bool)

(assert (=> b!1419998 (=> (not res!955540) (not e!803276))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96929 (_ BitVec 32)) Bool)

(assert (=> b!1419998 (= res!955540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!955539 () Bool)

(assert (=> start!122646 (=> (not res!955539) (not e!803276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122646 (= res!955539 (validMask!0 mask!2608))))

(assert (=> start!122646 e!803276))

(assert (=> start!122646 true))

(declare-fun array_inv!35723 (array!96929) Bool)

(assert (=> start!122646 (array_inv!35723 a!2831)))

(declare-fun b!1419999 () Bool)

(declare-fun res!955537 () Bool)

(assert (=> b!1419999 (=> (not res!955537) (not e!803276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1419999 (= res!955537 (validKeyInArray!0 (select (arr!46778 a!2831) j!81)))))

(declare-fun b!1420000 () Bool)

(declare-fun res!955542 () Bool)

(assert (=> b!1420000 (=> (not res!955542) (not e!803276))))

(assert (=> b!1420000 (= res!955542 (validKeyInArray!0 (select (arr!46778 a!2831) i!982)))))

(assert (= (and start!122646 res!955539) b!1419993))

(assert (= (and b!1419993 res!955538) b!1420000))

(assert (= (and b!1420000 res!955542) b!1419999))

(assert (= (and b!1419999 res!955537) b!1419998))

(assert (= (and b!1419998 res!955540) b!1419996))

(assert (= (and b!1419996 res!955541) b!1419994))

(assert (= (and b!1419994 res!955536) b!1419995))

(assert (= (and b!1419995 res!955535) b!1419997))

(declare-fun m!1310541 () Bool)

(assert (=> b!1420000 m!1310541))

(assert (=> b!1420000 m!1310541))

(declare-fun m!1310543 () Bool)

(assert (=> b!1420000 m!1310543))

(declare-fun m!1310545 () Bool)

(assert (=> b!1419999 m!1310545))

(assert (=> b!1419999 m!1310545))

(declare-fun m!1310547 () Bool)

(assert (=> b!1419999 m!1310547))

(declare-fun m!1310549 () Bool)

(assert (=> start!122646 m!1310549))

(declare-fun m!1310551 () Bool)

(assert (=> start!122646 m!1310551))

(declare-fun m!1310553 () Bool)

(assert (=> b!1419996 m!1310553))

(assert (=> b!1419995 m!1310545))

(assert (=> b!1419995 m!1310545))

(declare-fun m!1310555 () Bool)

(assert (=> b!1419995 m!1310555))

(assert (=> b!1419995 m!1310555))

(assert (=> b!1419995 m!1310545))

(declare-fun m!1310557 () Bool)

(assert (=> b!1419995 m!1310557))

(declare-fun m!1310559 () Bool)

(assert (=> b!1419997 m!1310559))

(declare-fun m!1310561 () Bool)

(assert (=> b!1419997 m!1310561))

(assert (=> b!1419997 m!1310561))

(declare-fun m!1310563 () Bool)

(assert (=> b!1419997 m!1310563))

(assert (=> b!1419997 m!1310563))

(assert (=> b!1419997 m!1310561))

(declare-fun m!1310565 () Bool)

(assert (=> b!1419997 m!1310565))

(declare-fun m!1310567 () Bool)

(assert (=> b!1419998 m!1310567))

(check-sat (not b!1419997) (not b!1419999) (not start!122646) (not b!1420000) (not b!1419996) (not b!1419995) (not b!1419998))
