; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119234 () Bool)

(assert start!119234)

(declare-fun b!1390327 () Bool)

(declare-fun res!930601 () Bool)

(declare-fun e!787390 () Bool)

(assert (=> b!1390327 (=> (not res!930601) (not e!787390))))

(declare-datatypes ((array!95089 0))(
  ( (array!95090 (arr!45906 (Array (_ BitVec 32) (_ BitVec 64))) (size!46457 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95089)

(declare-datatypes ((List!32605 0))(
  ( (Nil!32602) (Cons!32601 (h!33819 (_ BitVec 64)) (t!47306 List!32605)) )
))
(declare-fun arrayNoDuplicates!0 (array!95089 (_ BitVec 32) List!32605) Bool)

(assert (=> b!1390327 (= res!930601 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32602))))

(declare-fun b!1390328 () Bool)

(declare-fun res!930597 () Bool)

(assert (=> b!1390328 (=> (not res!930597) (not e!787390))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95089 (_ BitVec 32)) Bool)

(assert (=> b!1390328 (= res!930597 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun e!787391 () Bool)

(declare-fun b!1390329 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10245 0))(
  ( (MissingZero!10245 (index!43350 (_ BitVec 32))) (Found!10245 (index!43351 (_ BitVec 32))) (Intermediate!10245 (undefined!11057 Bool) (index!43352 (_ BitVec 32)) (x!125030 (_ BitVec 32))) (Undefined!10245) (MissingVacant!10245 (index!43353 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95089 (_ BitVec 32)) SeekEntryResult!10245)

(assert (=> b!1390329 (= e!787391 (= (seekEntryOrOpen!0 (select (arr!45906 a!2901) j!112) a!2901 mask!2840) (Found!10245 j!112)))))

(declare-fun b!1390331 () Bool)

(declare-fun res!930603 () Bool)

(assert (=> b!1390331 (=> (not res!930603) (not e!787390))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1390331 (= res!930603 (and (= (size!46457 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46457 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46457 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390332 () Bool)

(declare-fun res!930599 () Bool)

(assert (=> b!1390332 (=> (not res!930599) (not e!787390))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390332 (= res!930599 (validKeyInArray!0 (select (arr!45906 a!2901) j!112)))))

(declare-fun b!1390333 () Bool)

(declare-fun res!930598 () Bool)

(assert (=> b!1390333 (=> (not res!930598) (not e!787390))))

(assert (=> b!1390333 (= res!930598 (validKeyInArray!0 (select (arr!45906 a!2901) i!1037)))))

(declare-fun b!1390330 () Bool)

(assert (=> b!1390330 (= e!787390 (not true))))

(assert (=> b!1390330 e!787391))

(declare-fun res!930602 () Bool)

(assert (=> b!1390330 (=> (not res!930602) (not e!787391))))

(assert (=> b!1390330 (= res!930602 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46444 0))(
  ( (Unit!46445) )
))
(declare-fun lt!610756 () Unit!46444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46444)

(assert (=> b!1390330 (= lt!610756 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!610755 () SeekEntryResult!10245)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95089 (_ BitVec 32)) SeekEntryResult!10245)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390330 (= lt!610755 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45906 a!2901) j!112) mask!2840) (select (arr!45906 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!930600 () Bool)

(assert (=> start!119234 (=> (not res!930600) (not e!787390))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119234 (= res!930600 (validMask!0 mask!2840))))

(assert (=> start!119234 e!787390))

(assert (=> start!119234 true))

(declare-fun array_inv!34851 (array!95089) Bool)

(assert (=> start!119234 (array_inv!34851 a!2901)))

(assert (= (and start!119234 res!930600) b!1390331))

(assert (= (and b!1390331 res!930603) b!1390333))

(assert (= (and b!1390333 res!930598) b!1390332))

(assert (= (and b!1390332 res!930599) b!1390328))

(assert (= (and b!1390328 res!930597) b!1390327))

(assert (= (and b!1390327 res!930601) b!1390330))

(assert (= (and b!1390330 res!930602) b!1390329))

(declare-fun m!1276227 () Bool)

(assert (=> b!1390328 m!1276227))

(declare-fun m!1276229 () Bool)

(assert (=> start!119234 m!1276229))

(declare-fun m!1276231 () Bool)

(assert (=> start!119234 m!1276231))

(declare-fun m!1276233 () Bool)

(assert (=> b!1390332 m!1276233))

(assert (=> b!1390332 m!1276233))

(declare-fun m!1276235 () Bool)

(assert (=> b!1390332 m!1276235))

(declare-fun m!1276237 () Bool)

(assert (=> b!1390333 m!1276237))

(assert (=> b!1390333 m!1276237))

(declare-fun m!1276239 () Bool)

(assert (=> b!1390333 m!1276239))

(declare-fun m!1276241 () Bool)

(assert (=> b!1390327 m!1276241))

(assert (=> b!1390330 m!1276233))

(declare-fun m!1276243 () Bool)

(assert (=> b!1390330 m!1276243))

(assert (=> b!1390330 m!1276233))

(declare-fun m!1276245 () Bool)

(assert (=> b!1390330 m!1276245))

(assert (=> b!1390330 m!1276243))

(assert (=> b!1390330 m!1276233))

(declare-fun m!1276247 () Bool)

(assert (=> b!1390330 m!1276247))

(declare-fun m!1276249 () Bool)

(assert (=> b!1390330 m!1276249))

(assert (=> b!1390329 m!1276233))

(assert (=> b!1390329 m!1276233))

(declare-fun m!1276251 () Bool)

(assert (=> b!1390329 m!1276251))

(push 1)

(assert (not b!1390330))

(assert (not b!1390328))

(assert (not b!1390329))

(assert (not b!1390333))

(assert (not start!119234))

(assert (not b!1390332))

(assert (not b!1390327))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

