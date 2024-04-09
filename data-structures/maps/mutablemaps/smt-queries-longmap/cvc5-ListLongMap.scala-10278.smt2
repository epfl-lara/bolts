; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120868 () Bool)

(assert start!120868)

(declare-fun res!944126 () Bool)

(declare-fun e!795743 () Bool)

(assert (=> start!120868 (=> (not res!944126) (not e!795743))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120868 (= res!944126 (validMask!0 mask!2840))))

(assert (=> start!120868 e!795743))

(assert (=> start!120868 true))

(declare-datatypes ((array!96093 0))(
  ( (array!96094 (arr!46390 (Array (_ BitVec 32) (_ BitVec 64))) (size!46941 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96093)

(declare-fun array_inv!35335 (array!96093) Bool)

(assert (=> start!120868 (array_inv!35335 a!2901)))

(declare-fun b!1405794 () Bool)

(declare-fun e!795746 () Bool)

(assert (=> b!1405794 (= e!795746 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10723 0))(
  ( (MissingZero!10723 (index!45268 (_ BitVec 32))) (Found!10723 (index!45269 (_ BitVec 32))) (Intermediate!10723 (undefined!11535 Bool) (index!45270 (_ BitVec 32)) (x!126885 (_ BitVec 32))) (Undefined!10723) (MissingVacant!10723 (index!45271 (_ BitVec 32))) )
))
(declare-fun lt!619114 () SeekEntryResult!10723)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96093 (_ BitVec 32)) SeekEntryResult!10723)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405794 (= lt!619114 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46390 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46390 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96094 (store (arr!46390 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46941 a!2901)) mask!2840))))

(declare-fun b!1405795 () Bool)

(declare-fun res!944125 () Bool)

(assert (=> b!1405795 (=> (not res!944125) (not e!795743))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96093 (_ BitVec 32)) Bool)

(assert (=> b!1405795 (= res!944125 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405796 () Bool)

(declare-fun res!944122 () Bool)

(assert (=> b!1405796 (=> (not res!944122) (not e!795743))))

(assert (=> b!1405796 (= res!944122 (and (= (size!46941 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46941 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46941 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405797 () Bool)

(declare-fun res!944120 () Bool)

(assert (=> b!1405797 (=> (not res!944120) (not e!795743))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405797 (= res!944120 (validKeyInArray!0 (select (arr!46390 a!2901) i!1037)))))

(declare-fun b!1405798 () Bool)

(declare-fun e!795745 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96093 (_ BitVec 32)) SeekEntryResult!10723)

(assert (=> b!1405798 (= e!795745 (= (seekEntryOrOpen!0 (select (arr!46390 a!2901) j!112) a!2901 mask!2840) (Found!10723 j!112)))))

(declare-fun b!1405799 () Bool)

(declare-fun res!944121 () Bool)

(assert (=> b!1405799 (=> (not res!944121) (not e!795743))))

(declare-datatypes ((List!33089 0))(
  ( (Nil!33086) (Cons!33085 (h!34339 (_ BitVec 64)) (t!47790 List!33089)) )
))
(declare-fun arrayNoDuplicates!0 (array!96093 (_ BitVec 32) List!33089) Bool)

(assert (=> b!1405799 (= res!944121 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33086))))

(declare-fun b!1405800 () Bool)

(declare-fun res!944124 () Bool)

(assert (=> b!1405800 (=> (not res!944124) (not e!795743))))

(assert (=> b!1405800 (= res!944124 (validKeyInArray!0 (select (arr!46390 a!2901) j!112)))))

(declare-fun b!1405801 () Bool)

(assert (=> b!1405801 (= e!795743 (not e!795746))))

(declare-fun res!944127 () Bool)

(assert (=> b!1405801 (=> res!944127 e!795746)))

(declare-fun lt!619112 () SeekEntryResult!10723)

(assert (=> b!1405801 (= res!944127 (or (not (is-Intermediate!10723 lt!619112)) (undefined!11535 lt!619112)))))

(assert (=> b!1405801 e!795745))

(declare-fun res!944123 () Bool)

(assert (=> b!1405801 (=> (not res!944123) (not e!795745))))

(assert (=> b!1405801 (= res!944123 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47370 0))(
  ( (Unit!47371) )
))
(declare-fun lt!619113 () Unit!47370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96093 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47370)

(assert (=> b!1405801 (= lt!619113 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1405801 (= lt!619112 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46390 a!2901) j!112) mask!2840) (select (arr!46390 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120868 res!944126) b!1405796))

(assert (= (and b!1405796 res!944122) b!1405797))

(assert (= (and b!1405797 res!944120) b!1405800))

(assert (= (and b!1405800 res!944124) b!1405795))

(assert (= (and b!1405795 res!944125) b!1405799))

(assert (= (and b!1405799 res!944121) b!1405801))

(assert (= (and b!1405801 res!944123) b!1405798))

(assert (= (and b!1405801 (not res!944127)) b!1405794))

(declare-fun m!1294763 () Bool)

(assert (=> start!120868 m!1294763))

(declare-fun m!1294765 () Bool)

(assert (=> start!120868 m!1294765))

(declare-fun m!1294767 () Bool)

(assert (=> b!1405797 m!1294767))

(assert (=> b!1405797 m!1294767))

(declare-fun m!1294769 () Bool)

(assert (=> b!1405797 m!1294769))

(declare-fun m!1294771 () Bool)

(assert (=> b!1405798 m!1294771))

(assert (=> b!1405798 m!1294771))

(declare-fun m!1294773 () Bool)

(assert (=> b!1405798 m!1294773))

(assert (=> b!1405800 m!1294771))

(assert (=> b!1405800 m!1294771))

(declare-fun m!1294775 () Bool)

(assert (=> b!1405800 m!1294775))

(declare-fun m!1294777 () Bool)

(assert (=> b!1405799 m!1294777))

(assert (=> b!1405801 m!1294771))

(declare-fun m!1294779 () Bool)

(assert (=> b!1405801 m!1294779))

(assert (=> b!1405801 m!1294771))

(declare-fun m!1294781 () Bool)

(assert (=> b!1405801 m!1294781))

(assert (=> b!1405801 m!1294779))

(assert (=> b!1405801 m!1294771))

(declare-fun m!1294783 () Bool)

(assert (=> b!1405801 m!1294783))

(declare-fun m!1294785 () Bool)

(assert (=> b!1405801 m!1294785))

(declare-fun m!1294787 () Bool)

(assert (=> b!1405795 m!1294787))

(declare-fun m!1294789 () Bool)

(assert (=> b!1405794 m!1294789))

(declare-fun m!1294791 () Bool)

(assert (=> b!1405794 m!1294791))

(assert (=> b!1405794 m!1294791))

(declare-fun m!1294793 () Bool)

(assert (=> b!1405794 m!1294793))

(assert (=> b!1405794 m!1294793))

(assert (=> b!1405794 m!1294791))

(declare-fun m!1294795 () Bool)

(assert (=> b!1405794 m!1294795))

(push 1)

(assert (not b!1405795))

(assert (not b!1405794))

(assert (not b!1405798))

(assert (not b!1405801))

(assert (not b!1405797))

(assert (not b!1405799))

(assert (not start!120868))

(assert (not b!1405800))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

