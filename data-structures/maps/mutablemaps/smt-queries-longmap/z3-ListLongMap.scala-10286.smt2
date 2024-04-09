; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120918 () Bool)

(assert start!120918)

(declare-fun b!1406394 () Bool)

(declare-fun res!944722 () Bool)

(declare-fun e!796046 () Bool)

(assert (=> b!1406394 (=> (not res!944722) (not e!796046))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96143 0))(
  ( (array!96144 (arr!46415 (Array (_ BitVec 32) (_ BitVec 64))) (size!46966 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96143)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406394 (= res!944722 (and (= (size!46966 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46966 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46966 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406395 () Bool)

(declare-fun res!944725 () Bool)

(assert (=> b!1406395 (=> (not res!944725) (not e!796046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406395 (= res!944725 (validKeyInArray!0 (select (arr!46415 a!2901) j!112)))))

(declare-fun b!1406396 () Bool)

(declare-fun res!944726 () Bool)

(assert (=> b!1406396 (=> (not res!944726) (not e!796046))))

(assert (=> b!1406396 (= res!944726 (validKeyInArray!0 (select (arr!46415 a!2901) i!1037)))))

(declare-fun b!1406397 () Bool)

(declare-fun e!796043 () Bool)

(assert (=> b!1406397 (= e!796043 true)))

(declare-datatypes ((SeekEntryResult!10748 0))(
  ( (MissingZero!10748 (index!45368 (_ BitVec 32))) (Found!10748 (index!45369 (_ BitVec 32))) (Intermediate!10748 (undefined!11560 Bool) (index!45370 (_ BitVec 32)) (x!126974 (_ BitVec 32))) (Undefined!10748) (MissingVacant!10748 (index!45371 (_ BitVec 32))) )
))
(declare-fun lt!619337 () SeekEntryResult!10748)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96143 (_ BitVec 32)) SeekEntryResult!10748)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406397 (= lt!619337 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46415 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46415 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96144 (store (arr!46415 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46966 a!2901)) mask!2840))))

(declare-fun b!1406398 () Bool)

(declare-fun res!944724 () Bool)

(assert (=> b!1406398 (=> (not res!944724) (not e!796046))))

(declare-datatypes ((List!33114 0))(
  ( (Nil!33111) (Cons!33110 (h!34364 (_ BitVec 64)) (t!47815 List!33114)) )
))
(declare-fun arrayNoDuplicates!0 (array!96143 (_ BitVec 32) List!33114) Bool)

(assert (=> b!1406398 (= res!944724 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33111))))

(declare-fun res!944723 () Bool)

(assert (=> start!120918 (=> (not res!944723) (not e!796046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120918 (= res!944723 (validMask!0 mask!2840))))

(assert (=> start!120918 e!796046))

(assert (=> start!120918 true))

(declare-fun array_inv!35360 (array!96143) Bool)

(assert (=> start!120918 (array_inv!35360 a!2901)))

(declare-fun b!1406399 () Bool)

(assert (=> b!1406399 (= e!796046 (not e!796043))))

(declare-fun res!944727 () Bool)

(assert (=> b!1406399 (=> res!944727 e!796043)))

(declare-fun lt!619338 () SeekEntryResult!10748)

(get-info :version)

(assert (=> b!1406399 (= res!944727 (or (not ((_ is Intermediate!10748) lt!619338)) (undefined!11560 lt!619338)))))

(declare-fun e!796044 () Bool)

(assert (=> b!1406399 e!796044))

(declare-fun res!944721 () Bool)

(assert (=> b!1406399 (=> (not res!944721) (not e!796044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96143 (_ BitVec 32)) Bool)

(assert (=> b!1406399 (= res!944721 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47420 0))(
  ( (Unit!47421) )
))
(declare-fun lt!619339 () Unit!47420)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47420)

(assert (=> b!1406399 (= lt!619339 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406399 (= lt!619338 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46415 a!2901) j!112) mask!2840) (select (arr!46415 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406400 () Bool)

(declare-fun res!944720 () Bool)

(assert (=> b!1406400 (=> (not res!944720) (not e!796046))))

(assert (=> b!1406400 (= res!944720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406401 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96143 (_ BitVec 32)) SeekEntryResult!10748)

(assert (=> b!1406401 (= e!796044 (= (seekEntryOrOpen!0 (select (arr!46415 a!2901) j!112) a!2901 mask!2840) (Found!10748 j!112)))))

(assert (= (and start!120918 res!944723) b!1406394))

(assert (= (and b!1406394 res!944722) b!1406396))

(assert (= (and b!1406396 res!944726) b!1406395))

(assert (= (and b!1406395 res!944725) b!1406400))

(assert (= (and b!1406400 res!944720) b!1406398))

(assert (= (and b!1406398 res!944724) b!1406399))

(assert (= (and b!1406399 res!944721) b!1406401))

(assert (= (and b!1406399 (not res!944727)) b!1406397))

(declare-fun m!1295613 () Bool)

(assert (=> b!1406397 m!1295613))

(declare-fun m!1295615 () Bool)

(assert (=> b!1406397 m!1295615))

(assert (=> b!1406397 m!1295615))

(declare-fun m!1295617 () Bool)

(assert (=> b!1406397 m!1295617))

(assert (=> b!1406397 m!1295617))

(assert (=> b!1406397 m!1295615))

(declare-fun m!1295619 () Bool)

(assert (=> b!1406397 m!1295619))

(declare-fun m!1295621 () Bool)

(assert (=> b!1406401 m!1295621))

(assert (=> b!1406401 m!1295621))

(declare-fun m!1295623 () Bool)

(assert (=> b!1406401 m!1295623))

(declare-fun m!1295625 () Bool)

(assert (=> b!1406400 m!1295625))

(declare-fun m!1295627 () Bool)

(assert (=> start!120918 m!1295627))

(declare-fun m!1295629 () Bool)

(assert (=> start!120918 m!1295629))

(assert (=> b!1406399 m!1295621))

(declare-fun m!1295631 () Bool)

(assert (=> b!1406399 m!1295631))

(assert (=> b!1406399 m!1295621))

(declare-fun m!1295633 () Bool)

(assert (=> b!1406399 m!1295633))

(assert (=> b!1406399 m!1295631))

(assert (=> b!1406399 m!1295621))

(declare-fun m!1295635 () Bool)

(assert (=> b!1406399 m!1295635))

(declare-fun m!1295637 () Bool)

(assert (=> b!1406399 m!1295637))

(declare-fun m!1295639 () Bool)

(assert (=> b!1406398 m!1295639))

(declare-fun m!1295641 () Bool)

(assert (=> b!1406396 m!1295641))

(assert (=> b!1406396 m!1295641))

(declare-fun m!1295643 () Bool)

(assert (=> b!1406396 m!1295643))

(assert (=> b!1406395 m!1295621))

(assert (=> b!1406395 m!1295621))

(declare-fun m!1295645 () Bool)

(assert (=> b!1406395 m!1295645))

(check-sat (not b!1406397) (not b!1406401) (not start!120918) (not b!1406400) (not b!1406395) (not b!1406398) (not b!1406399) (not b!1406396))
