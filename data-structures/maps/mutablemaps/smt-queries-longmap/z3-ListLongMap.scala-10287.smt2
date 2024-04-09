; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120924 () Bool)

(assert start!120924)

(declare-fun res!944794 () Bool)

(declare-fun e!796079 () Bool)

(assert (=> start!120924 (=> (not res!944794) (not e!796079))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120924 (= res!944794 (validMask!0 mask!2840))))

(assert (=> start!120924 e!796079))

(assert (=> start!120924 true))

(declare-datatypes ((array!96149 0))(
  ( (array!96150 (arr!46418 (Array (_ BitVec 32) (_ BitVec 64))) (size!46969 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96149)

(declare-fun array_inv!35363 (array!96149) Bool)

(assert (=> start!120924 (array_inv!35363 a!2901)))

(declare-fun b!1406466 () Bool)

(declare-fun res!944796 () Bool)

(assert (=> b!1406466 (=> (not res!944796) (not e!796079))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96149 (_ BitVec 32)) Bool)

(assert (=> b!1406466 (= res!944796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406467 () Bool)

(declare-fun e!796080 () Bool)

(assert (=> b!1406467 (= e!796080 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10751 0))(
  ( (MissingZero!10751 (index!45380 (_ BitVec 32))) (Found!10751 (index!45381 (_ BitVec 32))) (Intermediate!10751 (undefined!11563 Bool) (index!45382 (_ BitVec 32)) (x!126985 (_ BitVec 32))) (Undefined!10751) (MissingVacant!10751 (index!45383 (_ BitVec 32))) )
))
(declare-fun lt!619365 () SeekEntryResult!10751)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96149 (_ BitVec 32)) SeekEntryResult!10751)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406467 (= lt!619365 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46418 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46418 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96150 (store (arr!46418 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46969 a!2901)) mask!2840))))

(declare-fun b!1406468 () Bool)

(assert (=> b!1406468 (= e!796079 (not e!796080))))

(declare-fun res!944799 () Bool)

(assert (=> b!1406468 (=> res!944799 e!796080)))

(declare-fun lt!619364 () SeekEntryResult!10751)

(get-info :version)

(assert (=> b!1406468 (= res!944799 (or (not ((_ is Intermediate!10751) lt!619364)) (undefined!11563 lt!619364)))))

(declare-fun e!796081 () Bool)

(assert (=> b!1406468 e!796081))

(declare-fun res!944795 () Bool)

(assert (=> b!1406468 (=> (not res!944795) (not e!796081))))

(assert (=> b!1406468 (= res!944795 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47426 0))(
  ( (Unit!47427) )
))
(declare-fun lt!619366 () Unit!47426)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96149 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47426)

(assert (=> b!1406468 (= lt!619366 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406468 (= lt!619364 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46418 a!2901) j!112) mask!2840) (select (arr!46418 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406469 () Bool)

(declare-fun res!944793 () Bool)

(assert (=> b!1406469 (=> (not res!944793) (not e!796079))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406469 (= res!944793 (validKeyInArray!0 (select (arr!46418 a!2901) i!1037)))))

(declare-fun b!1406470 () Bool)

(declare-fun res!944798 () Bool)

(assert (=> b!1406470 (=> (not res!944798) (not e!796079))))

(assert (=> b!1406470 (= res!944798 (validKeyInArray!0 (select (arr!46418 a!2901) j!112)))))

(declare-fun b!1406471 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96149 (_ BitVec 32)) SeekEntryResult!10751)

(assert (=> b!1406471 (= e!796081 (= (seekEntryOrOpen!0 (select (arr!46418 a!2901) j!112) a!2901 mask!2840) (Found!10751 j!112)))))

(declare-fun b!1406472 () Bool)

(declare-fun res!944797 () Bool)

(assert (=> b!1406472 (=> (not res!944797) (not e!796079))))

(declare-datatypes ((List!33117 0))(
  ( (Nil!33114) (Cons!33113 (h!34367 (_ BitVec 64)) (t!47818 List!33117)) )
))
(declare-fun arrayNoDuplicates!0 (array!96149 (_ BitVec 32) List!33117) Bool)

(assert (=> b!1406472 (= res!944797 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33114))))

(declare-fun b!1406473 () Bool)

(declare-fun res!944792 () Bool)

(assert (=> b!1406473 (=> (not res!944792) (not e!796079))))

(assert (=> b!1406473 (= res!944792 (and (= (size!46969 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46969 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46969 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120924 res!944794) b!1406473))

(assert (= (and b!1406473 res!944792) b!1406469))

(assert (= (and b!1406469 res!944793) b!1406470))

(assert (= (and b!1406470 res!944798) b!1406466))

(assert (= (and b!1406466 res!944796) b!1406472))

(assert (= (and b!1406472 res!944797) b!1406468))

(assert (= (and b!1406468 res!944795) b!1406471))

(assert (= (and b!1406468 (not res!944799)) b!1406467))

(declare-fun m!1295715 () Bool)

(assert (=> b!1406469 m!1295715))

(assert (=> b!1406469 m!1295715))

(declare-fun m!1295717 () Bool)

(assert (=> b!1406469 m!1295717))

(declare-fun m!1295719 () Bool)

(assert (=> b!1406468 m!1295719))

(declare-fun m!1295721 () Bool)

(assert (=> b!1406468 m!1295721))

(assert (=> b!1406468 m!1295719))

(declare-fun m!1295723 () Bool)

(assert (=> b!1406468 m!1295723))

(assert (=> b!1406468 m!1295721))

(assert (=> b!1406468 m!1295719))

(declare-fun m!1295725 () Bool)

(assert (=> b!1406468 m!1295725))

(declare-fun m!1295727 () Bool)

(assert (=> b!1406468 m!1295727))

(assert (=> b!1406471 m!1295719))

(assert (=> b!1406471 m!1295719))

(declare-fun m!1295729 () Bool)

(assert (=> b!1406471 m!1295729))

(assert (=> b!1406470 m!1295719))

(assert (=> b!1406470 m!1295719))

(declare-fun m!1295731 () Bool)

(assert (=> b!1406470 m!1295731))

(declare-fun m!1295733 () Bool)

(assert (=> b!1406472 m!1295733))

(declare-fun m!1295735 () Bool)

(assert (=> b!1406467 m!1295735))

(declare-fun m!1295737 () Bool)

(assert (=> b!1406467 m!1295737))

(assert (=> b!1406467 m!1295737))

(declare-fun m!1295739 () Bool)

(assert (=> b!1406467 m!1295739))

(assert (=> b!1406467 m!1295739))

(assert (=> b!1406467 m!1295737))

(declare-fun m!1295741 () Bool)

(assert (=> b!1406467 m!1295741))

(declare-fun m!1295743 () Bool)

(assert (=> b!1406466 m!1295743))

(declare-fun m!1295745 () Bool)

(assert (=> start!120924 m!1295745))

(declare-fun m!1295747 () Bool)

(assert (=> start!120924 m!1295747))

(check-sat (not b!1406467) (not b!1406469) (not b!1406466) (not b!1406472) (not start!120924) (not b!1406470) (not b!1406468) (not b!1406471))
