; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119556 () Bool)

(assert start!119556)

(declare-fun b!1392425 () Bool)

(declare-fun res!932110 () Bool)

(declare-fun e!788512 () Bool)

(assert (=> b!1392425 (=> (not res!932110) (not e!788512))))

(declare-datatypes ((array!95207 0))(
  ( (array!95208 (arr!45959 (Array (_ BitVec 32) (_ BitVec 64))) (size!46510 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95207)

(declare-datatypes ((List!32658 0))(
  ( (Nil!32655) (Cons!32654 (h!33884 (_ BitVec 64)) (t!47359 List!32658)) )
))
(declare-fun arrayNoDuplicates!0 (array!95207 (_ BitVec 32) List!32658) Bool)

(assert (=> b!1392425 (= res!932110 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32655))))

(declare-fun res!932109 () Bool)

(assert (=> start!119556 (=> (not res!932109) (not e!788512))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119556 (= res!932109 (validMask!0 mask!2840))))

(assert (=> start!119556 e!788512))

(assert (=> start!119556 true))

(declare-fun array_inv!34904 (array!95207) Bool)

(assert (=> start!119556 (array_inv!34904 a!2901)))

(declare-fun b!1392426 () Bool)

(declare-fun res!932113 () Bool)

(assert (=> b!1392426 (=> (not res!932113) (not e!788512))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1392426 (= res!932113 (and (= (size!46510 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46510 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46510 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392427 () Bool)

(declare-fun res!932108 () Bool)

(assert (=> b!1392427 (=> (not res!932108) (not e!788512))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392427 (= res!932108 (validKeyInArray!0 (select (arr!45959 a!2901) j!112)))))

(declare-fun b!1392428 () Bool)

(declare-fun e!788511 () Bool)

(assert (=> b!1392428 (= e!788512 (not e!788511))))

(declare-fun res!932112 () Bool)

(assert (=> b!1392428 (=> res!932112 e!788511)))

(declare-datatypes ((SeekEntryResult!10298 0))(
  ( (MissingZero!10298 (index!43562 (_ BitVec 32))) (Found!10298 (index!43563 (_ BitVec 32))) (Intermediate!10298 (undefined!11110 Bool) (index!43564 (_ BitVec 32)) (x!125251 (_ BitVec 32))) (Undefined!10298) (MissingVacant!10298 (index!43565 (_ BitVec 32))) )
))
(declare-fun lt!611574 () SeekEntryResult!10298)

(get-info :version)

(assert (=> b!1392428 (= res!932112 (or (not ((_ is Intermediate!10298) lt!611574)) (undefined!11110 lt!611574)))))

(declare-fun e!788510 () Bool)

(assert (=> b!1392428 e!788510))

(declare-fun res!932115 () Bool)

(assert (=> b!1392428 (=> (not res!932115) (not e!788510))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95207 (_ BitVec 32)) Bool)

(assert (=> b!1392428 (= res!932115 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46550 0))(
  ( (Unit!46551) )
))
(declare-fun lt!611575 () Unit!46550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95207 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46550)

(assert (=> b!1392428 (= lt!611575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95207 (_ BitVec 32)) SeekEntryResult!10298)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392428 (= lt!611574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45959 a!2901) j!112) mask!2840) (select (arr!45959 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392429 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95207 (_ BitVec 32)) SeekEntryResult!10298)

(assert (=> b!1392429 (= e!788510 (= (seekEntryOrOpen!0 (select (arr!45959 a!2901) j!112) a!2901 mask!2840) (Found!10298 j!112)))))

(declare-fun b!1392430 () Bool)

(declare-fun res!932107 () Bool)

(assert (=> b!1392430 (=> (not res!932107) (not e!788512))))

(assert (=> b!1392430 (= res!932107 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392431 () Bool)

(declare-fun res!932114 () Bool)

(assert (=> b!1392431 (=> (not res!932114) (not e!788512))))

(assert (=> b!1392431 (= res!932114 (validKeyInArray!0 (select (arr!45959 a!2901) i!1037)))))

(declare-fun b!1392432 () Bool)

(assert (=> b!1392432 (= e!788511 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1392433 () Bool)

(declare-fun res!932111 () Bool)

(assert (=> b!1392433 (=> res!932111 e!788511)))

(assert (=> b!1392433 (= res!932111 (not (= lt!611574 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45959 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45959 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95208 (store (arr!45959 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46510 a!2901)) mask!2840))))))

(assert (= (and start!119556 res!932109) b!1392426))

(assert (= (and b!1392426 res!932113) b!1392431))

(assert (= (and b!1392431 res!932114) b!1392427))

(assert (= (and b!1392427 res!932108) b!1392430))

(assert (= (and b!1392430 res!932107) b!1392425))

(assert (= (and b!1392425 res!932110) b!1392428))

(assert (= (and b!1392428 res!932115) b!1392429))

(assert (= (and b!1392428 (not res!932112)) b!1392433))

(assert (= (and b!1392433 (not res!932111)) b!1392432))

(declare-fun m!1278237 () Bool)

(assert (=> b!1392427 m!1278237))

(assert (=> b!1392427 m!1278237))

(declare-fun m!1278239 () Bool)

(assert (=> b!1392427 m!1278239))

(assert (=> b!1392429 m!1278237))

(assert (=> b!1392429 m!1278237))

(declare-fun m!1278241 () Bool)

(assert (=> b!1392429 m!1278241))

(declare-fun m!1278243 () Bool)

(assert (=> start!119556 m!1278243))

(declare-fun m!1278245 () Bool)

(assert (=> start!119556 m!1278245))

(declare-fun m!1278247 () Bool)

(assert (=> b!1392430 m!1278247))

(declare-fun m!1278249 () Bool)

(assert (=> b!1392433 m!1278249))

(declare-fun m!1278251 () Bool)

(assert (=> b!1392433 m!1278251))

(assert (=> b!1392433 m!1278251))

(declare-fun m!1278253 () Bool)

(assert (=> b!1392433 m!1278253))

(assert (=> b!1392433 m!1278253))

(assert (=> b!1392433 m!1278251))

(declare-fun m!1278255 () Bool)

(assert (=> b!1392433 m!1278255))

(declare-fun m!1278257 () Bool)

(assert (=> b!1392431 m!1278257))

(assert (=> b!1392431 m!1278257))

(declare-fun m!1278259 () Bool)

(assert (=> b!1392431 m!1278259))

(declare-fun m!1278261 () Bool)

(assert (=> b!1392425 m!1278261))

(assert (=> b!1392428 m!1278237))

(declare-fun m!1278263 () Bool)

(assert (=> b!1392428 m!1278263))

(assert (=> b!1392428 m!1278237))

(declare-fun m!1278265 () Bool)

(assert (=> b!1392428 m!1278265))

(assert (=> b!1392428 m!1278263))

(assert (=> b!1392428 m!1278237))

(declare-fun m!1278267 () Bool)

(assert (=> b!1392428 m!1278267))

(declare-fun m!1278269 () Bool)

(assert (=> b!1392428 m!1278269))

(check-sat (not b!1392431) (not b!1392427) (not b!1392425) (not b!1392428) (not b!1392433) (not b!1392429) (not b!1392430) (not start!119556))
(check-sat)
