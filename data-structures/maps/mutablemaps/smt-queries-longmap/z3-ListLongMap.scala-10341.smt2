; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121638 () Bool)

(assert start!121638)

(declare-fun b!1412500 () Bool)

(declare-fun e!799374 () Bool)

(assert (=> b!1412500 (= e!799374 true)))

(declare-fun e!799372 () Bool)

(assert (=> b!1412500 e!799372))

(declare-fun res!949602 () Bool)

(assert (=> b!1412500 (=> (not res!949602) (not e!799372))))

(declare-datatypes ((SeekEntryResult!10913 0))(
  ( (MissingZero!10913 (index!46031 (_ BitVec 32))) (Found!10913 (index!46032 (_ BitVec 32))) (Intermediate!10913 (undefined!11725 Bool) (index!46033 (_ BitVec 32)) (x!127627 (_ BitVec 32))) (Undefined!10913) (MissingVacant!10913 (index!46034 (_ BitVec 32))) )
))
(declare-fun lt!622378 () SeekEntryResult!10913)

(declare-datatypes ((array!96494 0))(
  ( (array!96495 (arr!46580 (Array (_ BitVec 32) (_ BitVec 64))) (size!47131 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96494)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!622380 () SeekEntryResult!10913)

(assert (=> b!1412500 (= res!949602 (and (not (undefined!11725 lt!622378)) (= (index!46033 lt!622378) i!1037) (bvslt (x!127627 lt!622378) (x!127627 lt!622380)) (= (select (store (arr!46580 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46033 lt!622378)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((Unit!47750 0))(
  ( (Unit!47751) )
))
(declare-fun lt!622379 () Unit!47750)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lt!622376 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47750)

(assert (=> b!1412500 (= lt!622379 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622376 (x!127627 lt!622380) (index!46033 lt!622380) (x!127627 lt!622378) (index!46033 lt!622378) (undefined!11725 lt!622378) mask!2840))))

(declare-fun b!1412501 () Bool)

(declare-fun res!949607 () Bool)

(declare-fun e!799375 () Bool)

(assert (=> b!1412501 (=> (not res!949607) (not e!799375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412501 (= res!949607 (validKeyInArray!0 (select (arr!46580 a!2901) i!1037)))))

(declare-fun b!1412502 () Bool)

(declare-fun res!949603 () Bool)

(assert (=> b!1412502 (=> (not res!949603) (not e!799375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96494 (_ BitVec 32)) Bool)

(assert (=> b!1412502 (= res!949603 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun lt!622381 () array!96494)

(declare-fun lt!622375 () (_ BitVec 64))

(declare-fun b!1412503 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96494 (_ BitVec 32)) SeekEntryResult!10913)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96494 (_ BitVec 32)) SeekEntryResult!10913)

(assert (=> b!1412503 (= e!799372 (= (seekEntryOrOpen!0 lt!622375 lt!622381 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127627 lt!622378) (index!46033 lt!622378) (index!46033 lt!622378) (select (arr!46580 a!2901) j!112) lt!622381 mask!2840)))))

(declare-fun res!949601 () Bool)

(assert (=> start!121638 (=> (not res!949601) (not e!799375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121638 (= res!949601 (validMask!0 mask!2840))))

(assert (=> start!121638 e!799375))

(assert (=> start!121638 true))

(declare-fun array_inv!35525 (array!96494) Bool)

(assert (=> start!121638 (array_inv!35525 a!2901)))

(declare-fun b!1412504 () Bool)

(declare-fun e!799373 () Bool)

(assert (=> b!1412504 (= e!799373 e!799374)))

(declare-fun res!949600 () Bool)

(assert (=> b!1412504 (=> res!949600 e!799374)))

(get-info :version)

(assert (=> b!1412504 (= res!949600 (or (= lt!622380 lt!622378) (not ((_ is Intermediate!10913) lt!622378))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96494 (_ BitVec 32)) SeekEntryResult!10913)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412504 (= lt!622378 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622375 mask!2840) lt!622375 lt!622381 mask!2840))))

(assert (=> b!1412504 (= lt!622375 (select (store (arr!46580 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412504 (= lt!622381 (array!96495 (store (arr!46580 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47131 a!2901)))))

(declare-fun b!1412505 () Bool)

(assert (=> b!1412505 (= e!799375 (not e!799373))))

(declare-fun res!949606 () Bool)

(assert (=> b!1412505 (=> res!949606 e!799373)))

(assert (=> b!1412505 (= res!949606 (or (not ((_ is Intermediate!10913) lt!622380)) (undefined!11725 lt!622380)))))

(declare-fun e!799371 () Bool)

(assert (=> b!1412505 e!799371))

(declare-fun res!949599 () Bool)

(assert (=> b!1412505 (=> (not res!949599) (not e!799371))))

(assert (=> b!1412505 (= res!949599 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622377 () Unit!47750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96494 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47750)

(assert (=> b!1412505 (= lt!622377 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1412505 (= lt!622380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622376 (select (arr!46580 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412505 (= lt!622376 (toIndex!0 (select (arr!46580 a!2901) j!112) mask!2840))))

(declare-fun b!1412506 () Bool)

(declare-fun res!949605 () Bool)

(assert (=> b!1412506 (=> (not res!949605) (not e!799375))))

(assert (=> b!1412506 (= res!949605 (and (= (size!47131 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47131 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47131 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412507 () Bool)

(declare-fun res!949608 () Bool)

(assert (=> b!1412507 (=> (not res!949608) (not e!799375))))

(declare-datatypes ((List!33279 0))(
  ( (Nil!33276) (Cons!33275 (h!34550 (_ BitVec 64)) (t!47980 List!33279)) )
))
(declare-fun arrayNoDuplicates!0 (array!96494 (_ BitVec 32) List!33279) Bool)

(assert (=> b!1412507 (= res!949608 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33276))))

(declare-fun b!1412508 () Bool)

(assert (=> b!1412508 (= e!799371 (= (seekEntryOrOpen!0 (select (arr!46580 a!2901) j!112) a!2901 mask!2840) (Found!10913 j!112)))))

(declare-fun b!1412509 () Bool)

(declare-fun res!949604 () Bool)

(assert (=> b!1412509 (=> (not res!949604) (not e!799375))))

(assert (=> b!1412509 (= res!949604 (validKeyInArray!0 (select (arr!46580 a!2901) j!112)))))

(assert (= (and start!121638 res!949601) b!1412506))

(assert (= (and b!1412506 res!949605) b!1412501))

(assert (= (and b!1412501 res!949607) b!1412509))

(assert (= (and b!1412509 res!949604) b!1412502))

(assert (= (and b!1412502 res!949603) b!1412507))

(assert (= (and b!1412507 res!949608) b!1412505))

(assert (= (and b!1412505 res!949599) b!1412508))

(assert (= (and b!1412505 (not res!949606)) b!1412504))

(assert (= (and b!1412504 (not res!949600)) b!1412500))

(assert (= (and b!1412500 res!949602) b!1412503))

(declare-fun m!1302641 () Bool)

(assert (=> b!1412505 m!1302641))

(declare-fun m!1302643 () Bool)

(assert (=> b!1412505 m!1302643))

(assert (=> b!1412505 m!1302641))

(assert (=> b!1412505 m!1302641))

(declare-fun m!1302645 () Bool)

(assert (=> b!1412505 m!1302645))

(declare-fun m!1302647 () Bool)

(assert (=> b!1412505 m!1302647))

(declare-fun m!1302649 () Bool)

(assert (=> b!1412505 m!1302649))

(declare-fun m!1302651 () Bool)

(assert (=> b!1412500 m!1302651))

(declare-fun m!1302653 () Bool)

(assert (=> b!1412500 m!1302653))

(declare-fun m!1302655 () Bool)

(assert (=> b!1412500 m!1302655))

(assert (=> b!1412508 m!1302641))

(assert (=> b!1412508 m!1302641))

(declare-fun m!1302657 () Bool)

(assert (=> b!1412508 m!1302657))

(declare-fun m!1302659 () Bool)

(assert (=> b!1412502 m!1302659))

(declare-fun m!1302661 () Bool)

(assert (=> b!1412503 m!1302661))

(assert (=> b!1412503 m!1302641))

(assert (=> b!1412503 m!1302641))

(declare-fun m!1302663 () Bool)

(assert (=> b!1412503 m!1302663))

(declare-fun m!1302665 () Bool)

(assert (=> b!1412504 m!1302665))

(assert (=> b!1412504 m!1302665))

(declare-fun m!1302667 () Bool)

(assert (=> b!1412504 m!1302667))

(assert (=> b!1412504 m!1302651))

(declare-fun m!1302669 () Bool)

(assert (=> b!1412504 m!1302669))

(assert (=> b!1412509 m!1302641))

(assert (=> b!1412509 m!1302641))

(declare-fun m!1302671 () Bool)

(assert (=> b!1412509 m!1302671))

(declare-fun m!1302673 () Bool)

(assert (=> b!1412501 m!1302673))

(assert (=> b!1412501 m!1302673))

(declare-fun m!1302675 () Bool)

(assert (=> b!1412501 m!1302675))

(declare-fun m!1302677 () Bool)

(assert (=> start!121638 m!1302677))

(declare-fun m!1302679 () Bool)

(assert (=> start!121638 m!1302679))

(declare-fun m!1302681 () Bool)

(assert (=> b!1412507 m!1302681))

(check-sat (not b!1412505) (not b!1412508) (not b!1412501) (not b!1412503) (not b!1412507) (not b!1412509) (not b!1412504) (not start!121638) (not b!1412500) (not b!1412502))
(check-sat)
