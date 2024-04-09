; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120156 () Bool)

(assert start!120156)

(declare-fun b!1398450 () Bool)

(declare-fun res!937477 () Bool)

(declare-fun e!791726 () Bool)

(assert (=> b!1398450 (=> (not res!937477) (not e!791726))))

(declare-datatypes ((array!95603 0))(
  ( (array!95604 (arr!46151 (Array (_ BitVec 32) (_ BitVec 64))) (size!46702 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95603)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1398450 (= res!937477 (validKeyInArray!0 (select (arr!46151 a!2901) j!112)))))

(declare-fun b!1398451 () Bool)

(declare-fun res!937474 () Bool)

(assert (=> b!1398451 (=> (not res!937474) (not e!791726))))

(declare-datatypes ((List!32850 0))(
  ( (Nil!32847) (Cons!32846 (h!34088 (_ BitVec 64)) (t!47551 List!32850)) )
))
(declare-fun arrayNoDuplicates!0 (array!95603 (_ BitVec 32) List!32850) Bool)

(assert (=> b!1398451 (= res!937474 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32847))))

(declare-fun b!1398452 () Bool)

(declare-fun e!791728 () Bool)

(assert (=> b!1398452 (= e!791726 (not e!791728))))

(declare-fun res!937478 () Bool)

(assert (=> b!1398452 (=> res!937478 e!791728)))

(declare-datatypes ((SeekEntryResult!10490 0))(
  ( (MissingZero!10490 (index!44330 (_ BitVec 32))) (Found!10490 (index!44331 (_ BitVec 32))) (Intermediate!10490 (undefined!11302 Bool) (index!44332 (_ BitVec 32)) (x!125979 (_ BitVec 32))) (Undefined!10490) (MissingVacant!10490 (index!44333 (_ BitVec 32))) )
))
(declare-fun lt!614929 () SeekEntryResult!10490)

(get-info :version)

(assert (=> b!1398452 (= res!937478 (or (not ((_ is Intermediate!10490) lt!614929)) (undefined!11302 lt!614929)))))

(declare-fun e!791727 () Bool)

(assert (=> b!1398452 e!791727))

(declare-fun res!937471 () Bool)

(assert (=> b!1398452 (=> (not res!937471) (not e!791727))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95603 (_ BitVec 32)) Bool)

(assert (=> b!1398452 (= res!937471 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46934 0))(
  ( (Unit!46935) )
))
(declare-fun lt!614927 () Unit!46934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95603 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46934)

(assert (=> b!1398452 (= lt!614927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614930 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95603 (_ BitVec 32)) SeekEntryResult!10490)

(assert (=> b!1398452 (= lt!614929 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614930 (select (arr!46151 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1398452 (= lt!614930 (toIndex!0 (select (arr!46151 a!2901) j!112) mask!2840))))

(declare-fun b!1398453 () Bool)

(declare-fun e!791725 () Bool)

(assert (=> b!1398453 (= e!791728 e!791725)))

(declare-fun res!937476 () Bool)

(assert (=> b!1398453 (=> res!937476 e!791725)))

(declare-fun lt!614932 () SeekEntryResult!10490)

(assert (=> b!1398453 (= res!937476 (or (= lt!614929 lt!614932) (not ((_ is Intermediate!10490) lt!614932))))))

(declare-fun lt!614928 () (_ BitVec 64))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1398453 (= lt!614932 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614928 mask!2840) lt!614928 (array!95604 (store (arr!46151 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46702 a!2901)) mask!2840))))

(assert (=> b!1398453 (= lt!614928 (select (store (arr!46151 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1398454 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95603 (_ BitVec 32)) SeekEntryResult!10490)

(assert (=> b!1398454 (= e!791727 (= (seekEntryOrOpen!0 (select (arr!46151 a!2901) j!112) a!2901 mask!2840) (Found!10490 j!112)))))

(declare-fun b!1398455 () Bool)

(declare-fun res!937475 () Bool)

(assert (=> b!1398455 (=> (not res!937475) (not e!791726))))

(assert (=> b!1398455 (= res!937475 (validKeyInArray!0 (select (arr!46151 a!2901) i!1037)))))

(declare-fun b!1398456 () Bool)

(assert (=> b!1398456 (= e!791725 true)))

(assert (=> b!1398456 (and (not (undefined!11302 lt!614932)) (= (index!44332 lt!614932) i!1037) (bvslt (x!125979 lt!614932) (x!125979 lt!614929)) (= (select (store (arr!46151 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44332 lt!614932)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!614931 () Unit!46934)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95603 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46934)

(assert (=> b!1398456 (= lt!614931 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!614930 (x!125979 lt!614929) (index!44332 lt!614929) (x!125979 lt!614932) (index!44332 lt!614932) (undefined!11302 lt!614932) mask!2840))))

(declare-fun b!1398457 () Bool)

(declare-fun res!937472 () Bool)

(assert (=> b!1398457 (=> (not res!937472) (not e!791726))))

(assert (=> b!1398457 (= res!937472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!937479 () Bool)

(assert (=> start!120156 (=> (not res!937479) (not e!791726))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120156 (= res!937479 (validMask!0 mask!2840))))

(assert (=> start!120156 e!791726))

(assert (=> start!120156 true))

(declare-fun array_inv!35096 (array!95603) Bool)

(assert (=> start!120156 (array_inv!35096 a!2901)))

(declare-fun b!1398449 () Bool)

(declare-fun res!937473 () Bool)

(assert (=> b!1398449 (=> (not res!937473) (not e!791726))))

(assert (=> b!1398449 (= res!937473 (and (= (size!46702 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46702 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46702 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!120156 res!937479) b!1398449))

(assert (= (and b!1398449 res!937473) b!1398455))

(assert (= (and b!1398455 res!937475) b!1398450))

(assert (= (and b!1398450 res!937477) b!1398457))

(assert (= (and b!1398457 res!937472) b!1398451))

(assert (= (and b!1398451 res!937474) b!1398452))

(assert (= (and b!1398452 res!937471) b!1398454))

(assert (= (and b!1398452 (not res!937478)) b!1398453))

(assert (= (and b!1398453 (not res!937476)) b!1398456))

(declare-fun m!1285675 () Bool)

(assert (=> b!1398452 m!1285675))

(declare-fun m!1285677 () Bool)

(assert (=> b!1398452 m!1285677))

(assert (=> b!1398452 m!1285675))

(assert (=> b!1398452 m!1285675))

(declare-fun m!1285679 () Bool)

(assert (=> b!1398452 m!1285679))

(declare-fun m!1285681 () Bool)

(assert (=> b!1398452 m!1285681))

(declare-fun m!1285683 () Bool)

(assert (=> b!1398452 m!1285683))

(declare-fun m!1285685 () Bool)

(assert (=> b!1398457 m!1285685))

(assert (=> b!1398450 m!1285675))

(assert (=> b!1398450 m!1285675))

(declare-fun m!1285687 () Bool)

(assert (=> b!1398450 m!1285687))

(declare-fun m!1285689 () Bool)

(assert (=> b!1398453 m!1285689))

(declare-fun m!1285691 () Bool)

(assert (=> b!1398453 m!1285691))

(assert (=> b!1398453 m!1285689))

(declare-fun m!1285693 () Bool)

(assert (=> b!1398453 m!1285693))

(declare-fun m!1285695 () Bool)

(assert (=> b!1398453 m!1285695))

(declare-fun m!1285697 () Bool)

(assert (=> b!1398451 m!1285697))

(assert (=> b!1398456 m!1285691))

(declare-fun m!1285699 () Bool)

(assert (=> b!1398456 m!1285699))

(declare-fun m!1285701 () Bool)

(assert (=> b!1398456 m!1285701))

(assert (=> b!1398454 m!1285675))

(assert (=> b!1398454 m!1285675))

(declare-fun m!1285703 () Bool)

(assert (=> b!1398454 m!1285703))

(declare-fun m!1285705 () Bool)

(assert (=> start!120156 m!1285705))

(declare-fun m!1285707 () Bool)

(assert (=> start!120156 m!1285707))

(declare-fun m!1285709 () Bool)

(assert (=> b!1398455 m!1285709))

(assert (=> b!1398455 m!1285709))

(declare-fun m!1285711 () Bool)

(assert (=> b!1398455 m!1285711))

(check-sat (not b!1398456) (not b!1398457) (not b!1398455) (not b!1398452) (not b!1398451) (not b!1398453) (not b!1398450) (not start!120156) (not b!1398454))
(check-sat)
