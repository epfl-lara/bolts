; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121650 () Bool)

(assert start!121650)

(declare-fun b!1412680 () Bool)

(declare-fun e!799479 () Bool)

(declare-fun e!799484 () Bool)

(assert (=> b!1412680 (= e!799479 (not e!799484))))

(declare-fun res!949785 () Bool)

(assert (=> b!1412680 (=> res!949785 e!799484)))

(declare-datatypes ((SeekEntryResult!10919 0))(
  ( (MissingZero!10919 (index!46055 (_ BitVec 32))) (Found!10919 (index!46056 (_ BitVec 32))) (Intermediate!10919 (undefined!11731 Bool) (index!46057 (_ BitVec 32)) (x!127649 (_ BitVec 32))) (Undefined!10919) (MissingVacant!10919 (index!46058 (_ BitVec 32))) )
))
(declare-fun lt!622503 () SeekEntryResult!10919)

(get-info :version)

(assert (=> b!1412680 (= res!949785 (or (not ((_ is Intermediate!10919) lt!622503)) (undefined!11731 lt!622503)))))

(declare-fun e!799480 () Bool)

(assert (=> b!1412680 e!799480))

(declare-fun res!949787 () Bool)

(assert (=> b!1412680 (=> (not res!949787) (not e!799480))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96506 0))(
  ( (array!96507 (arr!46586 (Array (_ BitVec 32) (_ BitVec 64))) (size!47137 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96506)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96506 (_ BitVec 32)) Bool)

(assert (=> b!1412680 (= res!949787 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47762 0))(
  ( (Unit!47763) )
))
(declare-fun lt!622501 () Unit!47762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47762)

(assert (=> b!1412680 (= lt!622501 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622502 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96506 (_ BitVec 32)) SeekEntryResult!10919)

(assert (=> b!1412680 (= lt!622503 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622502 (select (arr!46586 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412680 (= lt!622502 (toIndex!0 (select (arr!46586 a!2901) j!112) mask!2840))))

(declare-fun b!1412681 () Bool)

(declare-fun res!949782 () Bool)

(assert (=> b!1412681 (=> (not res!949782) (not e!799479))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412681 (= res!949782 (and (= (size!47137 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47137 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47137 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!799481 () Bool)

(declare-fun b!1412682 () Bool)

(declare-fun lt!622506 () array!96506)

(declare-fun lt!622507 () SeekEntryResult!10919)

(declare-fun lt!622504 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96506 (_ BitVec 32)) SeekEntryResult!10919)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96506 (_ BitVec 32)) SeekEntryResult!10919)

(assert (=> b!1412682 (= e!799481 (= (seekEntryOrOpen!0 lt!622504 lt!622506 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127649 lt!622507) (index!46057 lt!622507) (index!46057 lt!622507) (select (arr!46586 a!2901) j!112) lt!622506 mask!2840)))))

(declare-fun b!1412684 () Bool)

(declare-fun res!949780 () Bool)

(assert (=> b!1412684 (=> (not res!949780) (not e!799479))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412684 (= res!949780 (validKeyInArray!0 (select (arr!46586 a!2901) j!112)))))

(declare-fun b!1412685 () Bool)

(declare-fun res!949784 () Bool)

(assert (=> b!1412685 (=> (not res!949784) (not e!799479))))

(assert (=> b!1412685 (= res!949784 (validKeyInArray!0 (select (arr!46586 a!2901) i!1037)))))

(declare-fun b!1412686 () Bool)

(declare-fun res!949788 () Bool)

(assert (=> b!1412686 (=> (not res!949788) (not e!799479))))

(declare-datatypes ((List!33285 0))(
  ( (Nil!33282) (Cons!33281 (h!34556 (_ BitVec 64)) (t!47986 List!33285)) )
))
(declare-fun arrayNoDuplicates!0 (array!96506 (_ BitVec 32) List!33285) Bool)

(assert (=> b!1412686 (= res!949788 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33282))))

(declare-fun b!1412687 () Bool)

(declare-fun res!949781 () Bool)

(assert (=> b!1412687 (=> (not res!949781) (not e!799479))))

(assert (=> b!1412687 (= res!949781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412688 () Bool)

(declare-fun e!799482 () Bool)

(assert (=> b!1412688 (= e!799482 true)))

(assert (=> b!1412688 e!799481))

(declare-fun res!949783 () Bool)

(assert (=> b!1412688 (=> (not res!949783) (not e!799481))))

(assert (=> b!1412688 (= res!949783 (and (not (undefined!11731 lt!622507)) (= (index!46057 lt!622507) i!1037) (bvslt (x!127649 lt!622507) (x!127649 lt!622503)) (= (select (store (arr!46586 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46057 lt!622507)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622505 () Unit!47762)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96506 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47762)

(assert (=> b!1412688 (= lt!622505 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622502 (x!127649 lt!622503) (index!46057 lt!622503) (x!127649 lt!622507) (index!46057 lt!622507) (undefined!11731 lt!622507) mask!2840))))

(declare-fun b!1412689 () Bool)

(assert (=> b!1412689 (= e!799480 (= (seekEntryOrOpen!0 (select (arr!46586 a!2901) j!112) a!2901 mask!2840) (Found!10919 j!112)))))

(declare-fun res!949779 () Bool)

(assert (=> start!121650 (=> (not res!949779) (not e!799479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121650 (= res!949779 (validMask!0 mask!2840))))

(assert (=> start!121650 e!799479))

(assert (=> start!121650 true))

(declare-fun array_inv!35531 (array!96506) Bool)

(assert (=> start!121650 (array_inv!35531 a!2901)))

(declare-fun b!1412683 () Bool)

(assert (=> b!1412683 (= e!799484 e!799482)))

(declare-fun res!949786 () Bool)

(assert (=> b!1412683 (=> res!949786 e!799482)))

(assert (=> b!1412683 (= res!949786 (or (= lt!622503 lt!622507) (not ((_ is Intermediate!10919) lt!622507))))))

(assert (=> b!1412683 (= lt!622507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622504 mask!2840) lt!622504 lt!622506 mask!2840))))

(assert (=> b!1412683 (= lt!622504 (select (store (arr!46586 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412683 (= lt!622506 (array!96507 (store (arr!46586 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47137 a!2901)))))

(assert (= (and start!121650 res!949779) b!1412681))

(assert (= (and b!1412681 res!949782) b!1412685))

(assert (= (and b!1412685 res!949784) b!1412684))

(assert (= (and b!1412684 res!949780) b!1412687))

(assert (= (and b!1412687 res!949781) b!1412686))

(assert (= (and b!1412686 res!949788) b!1412680))

(assert (= (and b!1412680 res!949787) b!1412689))

(assert (= (and b!1412680 (not res!949785)) b!1412683))

(assert (= (and b!1412683 (not res!949786)) b!1412688))

(assert (= (and b!1412688 res!949783) b!1412682))

(declare-fun m!1302893 () Bool)

(assert (=> start!121650 m!1302893))

(declare-fun m!1302895 () Bool)

(assert (=> start!121650 m!1302895))

(declare-fun m!1302897 () Bool)

(assert (=> b!1412689 m!1302897))

(assert (=> b!1412689 m!1302897))

(declare-fun m!1302899 () Bool)

(assert (=> b!1412689 m!1302899))

(declare-fun m!1302901 () Bool)

(assert (=> b!1412686 m!1302901))

(assert (=> b!1412684 m!1302897))

(assert (=> b!1412684 m!1302897))

(declare-fun m!1302903 () Bool)

(assert (=> b!1412684 m!1302903))

(declare-fun m!1302905 () Bool)

(assert (=> b!1412688 m!1302905))

(declare-fun m!1302907 () Bool)

(assert (=> b!1412688 m!1302907))

(declare-fun m!1302909 () Bool)

(assert (=> b!1412688 m!1302909))

(declare-fun m!1302911 () Bool)

(assert (=> b!1412687 m!1302911))

(declare-fun m!1302913 () Bool)

(assert (=> b!1412683 m!1302913))

(assert (=> b!1412683 m!1302913))

(declare-fun m!1302915 () Bool)

(assert (=> b!1412683 m!1302915))

(assert (=> b!1412683 m!1302905))

(declare-fun m!1302917 () Bool)

(assert (=> b!1412683 m!1302917))

(declare-fun m!1302919 () Bool)

(assert (=> b!1412682 m!1302919))

(assert (=> b!1412682 m!1302897))

(assert (=> b!1412682 m!1302897))

(declare-fun m!1302921 () Bool)

(assert (=> b!1412682 m!1302921))

(assert (=> b!1412680 m!1302897))

(declare-fun m!1302923 () Bool)

(assert (=> b!1412680 m!1302923))

(assert (=> b!1412680 m!1302897))

(declare-fun m!1302925 () Bool)

(assert (=> b!1412680 m!1302925))

(assert (=> b!1412680 m!1302897))

(declare-fun m!1302927 () Bool)

(assert (=> b!1412680 m!1302927))

(declare-fun m!1302929 () Bool)

(assert (=> b!1412680 m!1302929))

(declare-fun m!1302931 () Bool)

(assert (=> b!1412685 m!1302931))

(assert (=> b!1412685 m!1302931))

(declare-fun m!1302933 () Bool)

(assert (=> b!1412685 m!1302933))

(check-sat (not start!121650) (not b!1412689) (not b!1412685) (not b!1412683) (not b!1412684) (not b!1412686) (not b!1412688) (not b!1412682) (not b!1412687) (not b!1412680))
(check-sat)
