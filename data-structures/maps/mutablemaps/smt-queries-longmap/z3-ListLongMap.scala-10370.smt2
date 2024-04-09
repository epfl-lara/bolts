; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122130 () Bool)

(assert start!122130)

(declare-fun b!1416672 () Bool)

(declare-fun e!801830 () Bool)

(assert (=> b!1416672 (= e!801830 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11000 0))(
  ( (MissingZero!11000 (index!46391 (_ BitVec 32))) (Found!11000 (index!46392 (_ BitVec 32))) (Intermediate!11000 (undefined!11812 Bool) (index!46393 (_ BitVec 32)) (x!128000 (_ BitVec 32))) (Undefined!11000) (MissingVacant!11000 (index!46394 (_ BitVec 32))) )
))
(declare-fun lt!625045 () SeekEntryResult!11000)

(declare-datatypes ((array!96683 0))(
  ( (array!96684 (arr!46667 (Array (_ BitVec 32) (_ BitVec 64))) (size!47218 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96683)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96683 (_ BitVec 32)) SeekEntryResult!11000)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416672 (= lt!625045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46667 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46667 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96684 (store (arr!46667 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47218 a!2901)) mask!2840))))

(declare-fun res!952658 () Bool)

(declare-fun e!801833 () Bool)

(assert (=> start!122130 (=> (not res!952658) (not e!801833))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122130 (= res!952658 (validMask!0 mask!2840))))

(assert (=> start!122130 e!801833))

(assert (=> start!122130 true))

(declare-fun array_inv!35612 (array!96683) Bool)

(assert (=> start!122130 (array_inv!35612 a!2901)))

(declare-fun b!1416673 () Bool)

(assert (=> b!1416673 (= e!801833 (not e!801830))))

(declare-fun res!952662 () Bool)

(assert (=> b!1416673 (=> res!952662 e!801830)))

(declare-fun lt!625044 () SeekEntryResult!11000)

(get-info :version)

(assert (=> b!1416673 (= res!952662 (or (not ((_ is Intermediate!11000) lt!625044)) (undefined!11812 lt!625044)))))

(declare-fun e!801831 () Bool)

(assert (=> b!1416673 e!801831))

(declare-fun res!952664 () Bool)

(assert (=> b!1416673 (=> (not res!952664) (not e!801831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96683 (_ BitVec 32)) Bool)

(assert (=> b!1416673 (= res!952664 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47924 0))(
  ( (Unit!47925) )
))
(declare-fun lt!625043 () Unit!47924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47924)

(assert (=> b!1416673 (= lt!625043 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416673 (= lt!625044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46667 a!2901) j!112) mask!2840) (select (arr!46667 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416674 () Bool)

(declare-fun res!952665 () Bool)

(assert (=> b!1416674 (=> (not res!952665) (not e!801833))))

(declare-datatypes ((List!33366 0))(
  ( (Nil!33363) (Cons!33362 (h!34652 (_ BitVec 64)) (t!48067 List!33366)) )
))
(declare-fun arrayNoDuplicates!0 (array!96683 (_ BitVec 32) List!33366) Bool)

(assert (=> b!1416674 (= res!952665 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33363))))

(declare-fun b!1416675 () Bool)

(declare-fun res!952660 () Bool)

(assert (=> b!1416675 (=> (not res!952660) (not e!801833))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416675 (= res!952660 (validKeyInArray!0 (select (arr!46667 a!2901) i!1037)))))

(declare-fun b!1416676 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96683 (_ BitVec 32)) SeekEntryResult!11000)

(assert (=> b!1416676 (= e!801831 (= (seekEntryOrOpen!0 (select (arr!46667 a!2901) j!112) a!2901 mask!2840) (Found!11000 j!112)))))

(declare-fun b!1416677 () Bool)

(declare-fun res!952659 () Bool)

(assert (=> b!1416677 (=> (not res!952659) (not e!801833))))

(assert (=> b!1416677 (= res!952659 (validKeyInArray!0 (select (arr!46667 a!2901) j!112)))))

(declare-fun b!1416678 () Bool)

(declare-fun res!952661 () Bool)

(assert (=> b!1416678 (=> (not res!952661) (not e!801833))))

(assert (=> b!1416678 (= res!952661 (and (= (size!47218 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47218 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47218 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416679 () Bool)

(declare-fun res!952663 () Bool)

(assert (=> b!1416679 (=> (not res!952663) (not e!801833))))

(assert (=> b!1416679 (= res!952663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!122130 res!952658) b!1416678))

(assert (= (and b!1416678 res!952661) b!1416675))

(assert (= (and b!1416675 res!952660) b!1416677))

(assert (= (and b!1416677 res!952659) b!1416679))

(assert (= (and b!1416679 res!952663) b!1416674))

(assert (= (and b!1416674 res!952665) b!1416673))

(assert (= (and b!1416673 res!952664) b!1416676))

(assert (= (and b!1416673 (not res!952662)) b!1416672))

(declare-fun m!1307379 () Bool)

(assert (=> b!1416677 m!1307379))

(assert (=> b!1416677 m!1307379))

(declare-fun m!1307381 () Bool)

(assert (=> b!1416677 m!1307381))

(assert (=> b!1416673 m!1307379))

(declare-fun m!1307383 () Bool)

(assert (=> b!1416673 m!1307383))

(assert (=> b!1416673 m!1307379))

(declare-fun m!1307385 () Bool)

(assert (=> b!1416673 m!1307385))

(assert (=> b!1416673 m!1307383))

(assert (=> b!1416673 m!1307379))

(declare-fun m!1307387 () Bool)

(assert (=> b!1416673 m!1307387))

(declare-fun m!1307389 () Bool)

(assert (=> b!1416673 m!1307389))

(declare-fun m!1307391 () Bool)

(assert (=> b!1416675 m!1307391))

(assert (=> b!1416675 m!1307391))

(declare-fun m!1307393 () Bool)

(assert (=> b!1416675 m!1307393))

(declare-fun m!1307395 () Bool)

(assert (=> b!1416674 m!1307395))

(declare-fun m!1307397 () Bool)

(assert (=> b!1416679 m!1307397))

(declare-fun m!1307399 () Bool)

(assert (=> b!1416672 m!1307399))

(declare-fun m!1307401 () Bool)

(assert (=> b!1416672 m!1307401))

(assert (=> b!1416672 m!1307401))

(declare-fun m!1307403 () Bool)

(assert (=> b!1416672 m!1307403))

(assert (=> b!1416672 m!1307403))

(assert (=> b!1416672 m!1307401))

(declare-fun m!1307405 () Bool)

(assert (=> b!1416672 m!1307405))

(assert (=> b!1416676 m!1307379))

(assert (=> b!1416676 m!1307379))

(declare-fun m!1307407 () Bool)

(assert (=> b!1416676 m!1307407))

(declare-fun m!1307409 () Bool)

(assert (=> start!122130 m!1307409))

(declare-fun m!1307411 () Bool)

(assert (=> start!122130 m!1307411))

(check-sat (not start!122130) (not b!1416673) (not b!1416674) (not b!1416677) (not b!1416679) (not b!1416675) (not b!1416676) (not b!1416672))
