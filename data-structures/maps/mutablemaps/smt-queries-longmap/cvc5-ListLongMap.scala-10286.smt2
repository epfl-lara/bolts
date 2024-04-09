; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120916 () Bool)

(assert start!120916)

(declare-fun b!1406370 () Bool)

(declare-fun res!944698 () Bool)

(declare-fun e!796033 () Bool)

(assert (=> b!1406370 (=> (not res!944698) (not e!796033))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!96141 0))(
  ( (array!96142 (arr!46414 (Array (_ BitVec 32) (_ BitVec 64))) (size!46965 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96141)

(assert (=> b!1406370 (= res!944698 (and (= (size!46965 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46965 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46965 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406371 () Bool)

(declare-fun res!944703 () Bool)

(assert (=> b!1406371 (=> (not res!944703) (not e!796033))))

(declare-datatypes ((List!33113 0))(
  ( (Nil!33110) (Cons!33109 (h!34363 (_ BitVec 64)) (t!47814 List!33113)) )
))
(declare-fun arrayNoDuplicates!0 (array!96141 (_ BitVec 32) List!33113) Bool)

(assert (=> b!1406371 (= res!944703 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33110))))

(declare-fun b!1406372 () Bool)

(declare-fun e!796031 () Bool)

(declare-datatypes ((SeekEntryResult!10747 0))(
  ( (MissingZero!10747 (index!45364 (_ BitVec 32))) (Found!10747 (index!45365 (_ BitVec 32))) (Intermediate!10747 (undefined!11559 Bool) (index!45366 (_ BitVec 32)) (x!126973 (_ BitVec 32))) (Undefined!10747) (MissingVacant!10747 (index!45367 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96141 (_ BitVec 32)) SeekEntryResult!10747)

(assert (=> b!1406372 (= e!796031 (= (seekEntryOrOpen!0 (select (arr!46414 a!2901) j!112) a!2901 mask!2840) (Found!10747 j!112)))))

(declare-fun b!1406373 () Bool)

(declare-fun res!944699 () Bool)

(assert (=> b!1406373 (=> (not res!944699) (not e!796033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96141 (_ BitVec 32)) Bool)

(assert (=> b!1406373 (= res!944699 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406374 () Bool)

(declare-fun e!796032 () Bool)

(assert (=> b!1406374 (= e!796033 (not e!796032))))

(declare-fun res!944701 () Bool)

(assert (=> b!1406374 (=> res!944701 e!796032)))

(declare-fun lt!619330 () SeekEntryResult!10747)

(assert (=> b!1406374 (= res!944701 (or (not (is-Intermediate!10747 lt!619330)) (undefined!11559 lt!619330)))))

(assert (=> b!1406374 e!796031))

(declare-fun res!944700 () Bool)

(assert (=> b!1406374 (=> (not res!944700) (not e!796031))))

(assert (=> b!1406374 (= res!944700 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47418 0))(
  ( (Unit!47419) )
))
(declare-fun lt!619329 () Unit!47418)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96141 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47418)

(assert (=> b!1406374 (= lt!619329 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96141 (_ BitVec 32)) SeekEntryResult!10747)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406374 (= lt!619330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46414 a!2901) j!112) mask!2840) (select (arr!46414 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406375 () Bool)

(assert (=> b!1406375 (= e!796032 true)))

(declare-fun lt!619328 () SeekEntryResult!10747)

(assert (=> b!1406375 (= lt!619328 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46414 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46414 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96142 (store (arr!46414 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46965 a!2901)) mask!2840))))

(declare-fun res!944696 () Bool)

(assert (=> start!120916 (=> (not res!944696) (not e!796033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120916 (= res!944696 (validMask!0 mask!2840))))

(assert (=> start!120916 e!796033))

(assert (=> start!120916 true))

(declare-fun array_inv!35359 (array!96141) Bool)

(assert (=> start!120916 (array_inv!35359 a!2901)))

(declare-fun b!1406376 () Bool)

(declare-fun res!944697 () Bool)

(assert (=> b!1406376 (=> (not res!944697) (not e!796033))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406376 (= res!944697 (validKeyInArray!0 (select (arr!46414 a!2901) j!112)))))

(declare-fun b!1406377 () Bool)

(declare-fun res!944702 () Bool)

(assert (=> b!1406377 (=> (not res!944702) (not e!796033))))

(assert (=> b!1406377 (= res!944702 (validKeyInArray!0 (select (arr!46414 a!2901) i!1037)))))

(assert (= (and start!120916 res!944696) b!1406370))

(assert (= (and b!1406370 res!944698) b!1406377))

(assert (= (and b!1406377 res!944702) b!1406376))

(assert (= (and b!1406376 res!944697) b!1406373))

(assert (= (and b!1406373 res!944699) b!1406371))

(assert (= (and b!1406371 res!944703) b!1406374))

(assert (= (and b!1406374 res!944700) b!1406372))

(assert (= (and b!1406374 (not res!944701)) b!1406375))

(declare-fun m!1295579 () Bool)

(assert (=> b!1406376 m!1295579))

(assert (=> b!1406376 m!1295579))

(declare-fun m!1295581 () Bool)

(assert (=> b!1406376 m!1295581))

(declare-fun m!1295583 () Bool)

(assert (=> b!1406373 m!1295583))

(assert (=> b!1406372 m!1295579))

(assert (=> b!1406372 m!1295579))

(declare-fun m!1295585 () Bool)

(assert (=> b!1406372 m!1295585))

(declare-fun m!1295587 () Bool)

(assert (=> start!120916 m!1295587))

(declare-fun m!1295589 () Bool)

(assert (=> start!120916 m!1295589))

(declare-fun m!1295591 () Bool)

(assert (=> b!1406375 m!1295591))

(declare-fun m!1295593 () Bool)

(assert (=> b!1406375 m!1295593))

(assert (=> b!1406375 m!1295593))

(declare-fun m!1295595 () Bool)

(assert (=> b!1406375 m!1295595))

(assert (=> b!1406375 m!1295595))

(assert (=> b!1406375 m!1295593))

(declare-fun m!1295597 () Bool)

(assert (=> b!1406375 m!1295597))

(declare-fun m!1295599 () Bool)

(assert (=> b!1406371 m!1295599))

(assert (=> b!1406374 m!1295579))

(declare-fun m!1295601 () Bool)

(assert (=> b!1406374 m!1295601))

(assert (=> b!1406374 m!1295579))

(declare-fun m!1295603 () Bool)

(assert (=> b!1406374 m!1295603))

(assert (=> b!1406374 m!1295601))

(assert (=> b!1406374 m!1295579))

(declare-fun m!1295605 () Bool)

(assert (=> b!1406374 m!1295605))

(declare-fun m!1295607 () Bool)

(assert (=> b!1406374 m!1295607))

(declare-fun m!1295609 () Bool)

(assert (=> b!1406377 m!1295609))

(assert (=> b!1406377 m!1295609))

(declare-fun m!1295611 () Bool)

(assert (=> b!1406377 m!1295611))

(push 1)

(assert (not b!1406373))

(assert (not b!1406375))

(assert (not b!1406372))

(assert (not b!1406377))

(assert (not b!1406374))

(assert (not b!1406376))

(assert (not start!120916))

(assert (not b!1406371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

