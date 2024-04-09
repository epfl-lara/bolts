; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119558 () Bool)

(assert start!119558)

(declare-fun res!932139 () Bool)

(declare-fun e!788522 () Bool)

(assert (=> start!119558 (=> (not res!932139) (not e!788522))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119558 (= res!932139 (validMask!0 mask!2840))))

(assert (=> start!119558 e!788522))

(assert (=> start!119558 true))

(declare-datatypes ((array!95209 0))(
  ( (array!95210 (arr!45960 (Array (_ BitVec 32) (_ BitVec 64))) (size!46511 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95209)

(declare-fun array_inv!34905 (array!95209) Bool)

(assert (=> start!119558 (array_inv!34905 a!2901)))

(declare-fun b!1392452 () Bool)

(declare-fun res!932135 () Bool)

(assert (=> b!1392452 (=> (not res!932135) (not e!788522))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392452 (= res!932135 (validKeyInArray!0 (select (arr!45960 a!2901) j!112)))))

(declare-fun b!1392453 () Bool)

(declare-fun res!932141 () Bool)

(assert (=> b!1392453 (=> (not res!932141) (not e!788522))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95209 (_ BitVec 32)) Bool)

(assert (=> b!1392453 (= res!932141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392454 () Bool)

(declare-fun e!788524 () Bool)

(assert (=> b!1392454 (= e!788522 (not e!788524))))

(declare-fun res!932138 () Bool)

(assert (=> b!1392454 (=> res!932138 e!788524)))

(declare-datatypes ((SeekEntryResult!10299 0))(
  ( (MissingZero!10299 (index!43566 (_ BitVec 32))) (Found!10299 (index!43567 (_ BitVec 32))) (Intermediate!10299 (undefined!11111 Bool) (index!43568 (_ BitVec 32)) (x!125252 (_ BitVec 32))) (Undefined!10299) (MissingVacant!10299 (index!43569 (_ BitVec 32))) )
))
(declare-fun lt!611580 () SeekEntryResult!10299)

(assert (=> b!1392454 (= res!932138 (or (not (is-Intermediate!10299 lt!611580)) (undefined!11111 lt!611580)))))

(declare-fun e!788523 () Bool)

(assert (=> b!1392454 e!788523))

(declare-fun res!932142 () Bool)

(assert (=> b!1392454 (=> (not res!932142) (not e!788523))))

(assert (=> b!1392454 (= res!932142 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46552 0))(
  ( (Unit!46553) )
))
(declare-fun lt!611581 () Unit!46552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46552)

(assert (=> b!1392454 (= lt!611581 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95209 (_ BitVec 32)) SeekEntryResult!10299)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392454 (= lt!611580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45960 a!2901) j!112) mask!2840) (select (arr!45960 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392455 () Bool)

(declare-fun res!932137 () Bool)

(assert (=> b!1392455 (=> (not res!932137) (not e!788522))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1392455 (= res!932137 (and (= (size!46511 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46511 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46511 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392456 () Bool)

(declare-fun res!932140 () Bool)

(assert (=> b!1392456 (=> res!932140 e!788524)))

(assert (=> b!1392456 (= res!932140 (not (= lt!611580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45960 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45960 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95210 (store (arr!45960 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46511 a!2901)) mask!2840))))))

(declare-fun b!1392457 () Bool)

(declare-fun res!932134 () Bool)

(assert (=> b!1392457 (=> (not res!932134) (not e!788522))))

(declare-datatypes ((List!32659 0))(
  ( (Nil!32656) (Cons!32655 (h!33885 (_ BitVec 64)) (t!47360 List!32659)) )
))
(declare-fun arrayNoDuplicates!0 (array!95209 (_ BitVec 32) List!32659) Bool)

(assert (=> b!1392457 (= res!932134 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32656))))

(declare-fun b!1392458 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95209 (_ BitVec 32)) SeekEntryResult!10299)

(assert (=> b!1392458 (= e!788523 (= (seekEntryOrOpen!0 (select (arr!45960 a!2901) j!112) a!2901 mask!2840) (Found!10299 j!112)))))

(declare-fun b!1392459 () Bool)

(assert (=> b!1392459 (= e!788524 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1392460 () Bool)

(declare-fun res!932136 () Bool)

(assert (=> b!1392460 (=> (not res!932136) (not e!788522))))

(assert (=> b!1392460 (= res!932136 (validKeyInArray!0 (select (arr!45960 a!2901) i!1037)))))

(assert (= (and start!119558 res!932139) b!1392455))

(assert (= (and b!1392455 res!932137) b!1392460))

(assert (= (and b!1392460 res!932136) b!1392452))

(assert (= (and b!1392452 res!932135) b!1392453))

(assert (= (and b!1392453 res!932141) b!1392457))

(assert (= (and b!1392457 res!932134) b!1392454))

(assert (= (and b!1392454 res!932142) b!1392458))

(assert (= (and b!1392454 (not res!932138)) b!1392456))

(assert (= (and b!1392456 (not res!932140)) b!1392459))

(declare-fun m!1278271 () Bool)

(assert (=> b!1392452 m!1278271))

(assert (=> b!1392452 m!1278271))

(declare-fun m!1278273 () Bool)

(assert (=> b!1392452 m!1278273))

(assert (=> b!1392458 m!1278271))

(assert (=> b!1392458 m!1278271))

(declare-fun m!1278275 () Bool)

(assert (=> b!1392458 m!1278275))

(declare-fun m!1278277 () Bool)

(assert (=> b!1392457 m!1278277))

(declare-fun m!1278279 () Bool)

(assert (=> b!1392456 m!1278279))

(declare-fun m!1278281 () Bool)

(assert (=> b!1392456 m!1278281))

(assert (=> b!1392456 m!1278281))

(declare-fun m!1278283 () Bool)

(assert (=> b!1392456 m!1278283))

(assert (=> b!1392456 m!1278283))

(assert (=> b!1392456 m!1278281))

(declare-fun m!1278285 () Bool)

(assert (=> b!1392456 m!1278285))

(assert (=> b!1392454 m!1278271))

(declare-fun m!1278287 () Bool)

(assert (=> b!1392454 m!1278287))

(assert (=> b!1392454 m!1278271))

(declare-fun m!1278289 () Bool)

(assert (=> b!1392454 m!1278289))

(assert (=> b!1392454 m!1278287))

(assert (=> b!1392454 m!1278271))

(declare-fun m!1278291 () Bool)

(assert (=> b!1392454 m!1278291))

(declare-fun m!1278293 () Bool)

(assert (=> b!1392454 m!1278293))

(declare-fun m!1278295 () Bool)

(assert (=> b!1392453 m!1278295))

(declare-fun m!1278297 () Bool)

(assert (=> start!119558 m!1278297))

(declare-fun m!1278299 () Bool)

(assert (=> start!119558 m!1278299))

(declare-fun m!1278301 () Bool)

(assert (=> b!1392460 m!1278301))

(assert (=> b!1392460 m!1278301))

(declare-fun m!1278303 () Bool)

(assert (=> b!1392460 m!1278303))

(push 1)

(assert (not b!1392457))

(assert (not start!119558))

(assert (not b!1392456))

(assert (not b!1392453))

(assert (not b!1392452))

(assert (not b!1392454))

