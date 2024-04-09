; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120860 () Bool)

(assert start!120860)

(declare-fun b!1405698 () Bool)

(declare-fun res!944025 () Bool)

(declare-fun e!795695 () Bool)

(assert (=> b!1405698 (=> (not res!944025) (not e!795695))))

(declare-datatypes ((array!96085 0))(
  ( (array!96086 (arr!46386 (Array (_ BitVec 32) (_ BitVec 64))) (size!46937 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96085)

(declare-datatypes ((List!33085 0))(
  ( (Nil!33082) (Cons!33081 (h!34335 (_ BitVec 64)) (t!47786 List!33085)) )
))
(declare-fun arrayNoDuplicates!0 (array!96085 (_ BitVec 32) List!33085) Bool)

(assert (=> b!1405698 (= res!944025 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33082))))

(declare-fun b!1405699 () Bool)

(declare-fun e!795697 () Bool)

(assert (=> b!1405699 (= e!795695 (not e!795697))))

(declare-fun res!944026 () Bool)

(assert (=> b!1405699 (=> res!944026 e!795697)))

(declare-datatypes ((SeekEntryResult!10719 0))(
  ( (MissingZero!10719 (index!45252 (_ BitVec 32))) (Found!10719 (index!45253 (_ BitVec 32))) (Intermediate!10719 (undefined!11531 Bool) (index!45254 (_ BitVec 32)) (x!126865 (_ BitVec 32))) (Undefined!10719) (MissingVacant!10719 (index!45255 (_ BitVec 32))) )
))
(declare-fun lt!619077 () SeekEntryResult!10719)

(assert (=> b!1405699 (= res!944026 (or (not (is-Intermediate!10719 lt!619077)) (undefined!11531 lt!619077)))))

(declare-fun e!795698 () Bool)

(assert (=> b!1405699 e!795698))

(declare-fun res!944029 () Bool)

(assert (=> b!1405699 (=> (not res!944029) (not e!795698))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96085 (_ BitVec 32)) Bool)

(assert (=> b!1405699 (= res!944029 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47362 0))(
  ( (Unit!47363) )
))
(declare-fun lt!619078 () Unit!47362)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96085 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47362)

(assert (=> b!1405699 (= lt!619078 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96085 (_ BitVec 32)) SeekEntryResult!10719)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405699 (= lt!619077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46386 a!2901) j!112) mask!2840) (select (arr!46386 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405700 () Bool)

(declare-fun res!944028 () Bool)

(assert (=> b!1405700 (=> (not res!944028) (not e!795695))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405700 (= res!944028 (validKeyInArray!0 (select (arr!46386 a!2901) i!1037)))))

(declare-fun b!1405701 () Bool)

(declare-fun res!944031 () Bool)

(assert (=> b!1405701 (=> (not res!944031) (not e!795695))))

(assert (=> b!1405701 (= res!944031 (and (= (size!46937 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46937 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46937 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405702 () Bool)

(declare-fun res!944030 () Bool)

(assert (=> b!1405702 (=> (not res!944030) (not e!795695))))

(assert (=> b!1405702 (= res!944030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405703 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96085 (_ BitVec 32)) SeekEntryResult!10719)

(assert (=> b!1405703 (= e!795698 (= (seekEntryOrOpen!0 (select (arr!46386 a!2901) j!112) a!2901 mask!2840) (Found!10719 j!112)))))

(declare-fun res!944027 () Bool)

(assert (=> start!120860 (=> (not res!944027) (not e!795695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120860 (= res!944027 (validMask!0 mask!2840))))

(assert (=> start!120860 e!795695))

(assert (=> start!120860 true))

(declare-fun array_inv!35331 (array!96085) Bool)

(assert (=> start!120860 (array_inv!35331 a!2901)))

(declare-fun b!1405704 () Bool)

(declare-fun res!944024 () Bool)

(assert (=> b!1405704 (=> (not res!944024) (not e!795695))))

(assert (=> b!1405704 (= res!944024 (validKeyInArray!0 (select (arr!46386 a!2901) j!112)))))

(declare-fun b!1405705 () Bool)

(assert (=> b!1405705 (= e!795697 true)))

(declare-fun lt!619076 () (_ BitVec 32))

(assert (=> b!1405705 (= lt!619076 (toIndex!0 (select (store (arr!46386 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(assert (= (and start!120860 res!944027) b!1405701))

(assert (= (and b!1405701 res!944031) b!1405700))

(assert (= (and b!1405700 res!944028) b!1405704))

(assert (= (and b!1405704 res!944024) b!1405702))

(assert (= (and b!1405702 res!944030) b!1405698))

(assert (= (and b!1405698 res!944025) b!1405699))

(assert (= (and b!1405699 res!944029) b!1405703))

(assert (= (and b!1405699 (not res!944026)) b!1405705))

(declare-fun m!1294629 () Bool)

(assert (=> start!120860 m!1294629))

(declare-fun m!1294631 () Bool)

(assert (=> start!120860 m!1294631))

(declare-fun m!1294633 () Bool)

(assert (=> b!1405705 m!1294633))

(declare-fun m!1294635 () Bool)

(assert (=> b!1405705 m!1294635))

(assert (=> b!1405705 m!1294635))

(declare-fun m!1294637 () Bool)

(assert (=> b!1405705 m!1294637))

(declare-fun m!1294639 () Bool)

(assert (=> b!1405704 m!1294639))

(assert (=> b!1405704 m!1294639))

(declare-fun m!1294641 () Bool)

(assert (=> b!1405704 m!1294641))

(declare-fun m!1294643 () Bool)

(assert (=> b!1405702 m!1294643))

(declare-fun m!1294645 () Bool)

(assert (=> b!1405698 m!1294645))

(assert (=> b!1405703 m!1294639))

(assert (=> b!1405703 m!1294639))

(declare-fun m!1294647 () Bool)

(assert (=> b!1405703 m!1294647))

(declare-fun m!1294649 () Bool)

(assert (=> b!1405700 m!1294649))

(assert (=> b!1405700 m!1294649))

(declare-fun m!1294651 () Bool)

(assert (=> b!1405700 m!1294651))

(assert (=> b!1405699 m!1294639))

(declare-fun m!1294653 () Bool)

(assert (=> b!1405699 m!1294653))

(assert (=> b!1405699 m!1294639))

(declare-fun m!1294655 () Bool)

(assert (=> b!1405699 m!1294655))

(assert (=> b!1405699 m!1294653))

(assert (=> b!1405699 m!1294639))

(declare-fun m!1294657 () Bool)

(assert (=> b!1405699 m!1294657))

(declare-fun m!1294659 () Bool)

(assert (=> b!1405699 m!1294659))

(push 1)

(assert (not b!1405704))

(assert (not b!1405702))

(assert (not b!1405700))

(assert (not b!1405699))

(assert (not b!1405705))

(assert (not start!120860))

