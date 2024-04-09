; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121272 () Bool)

(assert start!121272)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96344 0))(
  ( (array!96345 (arr!46511 (Array (_ BitVec 32) (_ BitVec 64))) (size!47062 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96344)

(declare-fun e!797675 () Bool)

(declare-fun b!1409544 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10844 0))(
  ( (MissingZero!10844 (index!45752 (_ BitVec 32))) (Found!10844 (index!45753 (_ BitVec 32))) (Intermediate!10844 (undefined!11656 Bool) (index!45754 (_ BitVec 32)) (x!127344 (_ BitVec 32))) (Undefined!10844) (MissingVacant!10844 (index!45755 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96344 (_ BitVec 32)) SeekEntryResult!10844)

(assert (=> b!1409544 (= e!797675 (= (seekEntryOrOpen!0 (select (arr!46511 a!2901) j!112) a!2901 mask!2840) (Found!10844 j!112)))))

(declare-fun b!1409545 () Bool)

(declare-fun res!947376 () Bool)

(declare-fun e!797674 () Bool)

(assert (=> b!1409545 (=> (not res!947376) (not e!797674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96344 (_ BitVec 32)) Bool)

(assert (=> b!1409545 (= res!947376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409546 () Bool)

(declare-fun res!947380 () Bool)

(assert (=> b!1409546 (=> (not res!947380) (not e!797674))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409546 (= res!947380 (validKeyInArray!0 (select (arr!46511 a!2901) i!1037)))))

(declare-fun b!1409547 () Bool)

(declare-fun e!797672 () Bool)

(assert (=> b!1409547 (= e!797672 true)))

(declare-fun lt!620734 () SeekEntryResult!10844)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96344 (_ BitVec 32)) SeekEntryResult!10844)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409547 (= lt!620734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46511 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46511 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96345 (store (arr!46511 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47062 a!2901)) mask!2840))))

(declare-fun b!1409548 () Bool)

(declare-fun res!947382 () Bool)

(assert (=> b!1409548 (=> (not res!947382) (not e!797674))))

(declare-datatypes ((List!33210 0))(
  ( (Nil!33207) (Cons!33206 (h!34469 (_ BitVec 64)) (t!47911 List!33210)) )
))
(declare-fun arrayNoDuplicates!0 (array!96344 (_ BitVec 32) List!33210) Bool)

(assert (=> b!1409548 (= res!947382 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33207))))

(declare-fun res!947378 () Bool)

(assert (=> start!121272 (=> (not res!947378) (not e!797674))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121272 (= res!947378 (validMask!0 mask!2840))))

(assert (=> start!121272 e!797674))

(assert (=> start!121272 true))

(declare-fun array_inv!35456 (array!96344) Bool)

(assert (=> start!121272 (array_inv!35456 a!2901)))

(declare-fun b!1409549 () Bool)

(assert (=> b!1409549 (= e!797674 (not e!797672))))

(declare-fun res!947375 () Bool)

(assert (=> b!1409549 (=> res!947375 e!797672)))

(declare-fun lt!620732 () SeekEntryResult!10844)

(get-info :version)

(assert (=> b!1409549 (= res!947375 (or (not ((_ is Intermediate!10844) lt!620732)) (undefined!11656 lt!620732)))))

(assert (=> b!1409549 e!797675))

(declare-fun res!947379 () Bool)

(assert (=> b!1409549 (=> (not res!947379) (not e!797675))))

(assert (=> b!1409549 (= res!947379 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47612 0))(
  ( (Unit!47613) )
))
(declare-fun lt!620733 () Unit!47612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96344 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47612)

(assert (=> b!1409549 (= lt!620733 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409549 (= lt!620732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46511 a!2901) j!112) mask!2840) (select (arr!46511 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409550 () Bool)

(declare-fun res!947381 () Bool)

(assert (=> b!1409550 (=> (not res!947381) (not e!797674))))

(assert (=> b!1409550 (= res!947381 (and (= (size!47062 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47062 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47062 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409551 () Bool)

(declare-fun res!947377 () Bool)

(assert (=> b!1409551 (=> (not res!947377) (not e!797674))))

(assert (=> b!1409551 (= res!947377 (validKeyInArray!0 (select (arr!46511 a!2901) j!112)))))

(assert (= (and start!121272 res!947378) b!1409550))

(assert (= (and b!1409550 res!947381) b!1409546))

(assert (= (and b!1409546 res!947380) b!1409551))

(assert (= (and b!1409551 res!947377) b!1409545))

(assert (= (and b!1409545 res!947376) b!1409548))

(assert (= (and b!1409548 res!947382) b!1409549))

(assert (= (and b!1409549 res!947379) b!1409544))

(assert (= (and b!1409549 (not res!947375)) b!1409547))

(declare-fun m!1299399 () Bool)

(assert (=> b!1409547 m!1299399))

(declare-fun m!1299401 () Bool)

(assert (=> b!1409547 m!1299401))

(assert (=> b!1409547 m!1299401))

(declare-fun m!1299403 () Bool)

(assert (=> b!1409547 m!1299403))

(assert (=> b!1409547 m!1299403))

(assert (=> b!1409547 m!1299401))

(declare-fun m!1299405 () Bool)

(assert (=> b!1409547 m!1299405))

(declare-fun m!1299407 () Bool)

(assert (=> start!121272 m!1299407))

(declare-fun m!1299409 () Bool)

(assert (=> start!121272 m!1299409))

(declare-fun m!1299411 () Bool)

(assert (=> b!1409548 m!1299411))

(declare-fun m!1299413 () Bool)

(assert (=> b!1409544 m!1299413))

(assert (=> b!1409544 m!1299413))

(declare-fun m!1299415 () Bool)

(assert (=> b!1409544 m!1299415))

(declare-fun m!1299417 () Bool)

(assert (=> b!1409545 m!1299417))

(assert (=> b!1409549 m!1299413))

(declare-fun m!1299419 () Bool)

(assert (=> b!1409549 m!1299419))

(assert (=> b!1409549 m!1299413))

(declare-fun m!1299421 () Bool)

(assert (=> b!1409549 m!1299421))

(assert (=> b!1409549 m!1299419))

(assert (=> b!1409549 m!1299413))

(declare-fun m!1299423 () Bool)

(assert (=> b!1409549 m!1299423))

(declare-fun m!1299425 () Bool)

(assert (=> b!1409549 m!1299425))

(declare-fun m!1299427 () Bool)

(assert (=> b!1409546 m!1299427))

(assert (=> b!1409546 m!1299427))

(declare-fun m!1299429 () Bool)

(assert (=> b!1409546 m!1299429))

(assert (=> b!1409551 m!1299413))

(assert (=> b!1409551 m!1299413))

(declare-fun m!1299431 () Bool)

(assert (=> b!1409551 m!1299431))

(check-sat (not b!1409547) (not b!1409548) (not b!1409551) (not b!1409549) (not b!1409546) (not b!1409545) (not start!121272) (not b!1409544))
