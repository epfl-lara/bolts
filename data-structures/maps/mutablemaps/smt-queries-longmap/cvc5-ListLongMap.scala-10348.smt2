; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121678 () Bool)

(assert start!121678)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96534 0))(
  ( (array!96535 (arr!46600 (Array (_ BitVec 32) (_ BitVec 64))) (size!47151 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96534)

(declare-fun e!799733 () Bool)

(declare-fun b!1413100 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10933 0))(
  ( (MissingZero!10933 (index!46111 (_ BitVec 32))) (Found!10933 (index!46112 (_ BitVec 32))) (Intermediate!10933 (undefined!11745 Bool) (index!46113 (_ BitVec 32)) (x!127703 (_ BitVec 32))) (Undefined!10933) (MissingVacant!10933 (index!46114 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96534 (_ BitVec 32)) SeekEntryResult!10933)

(assert (=> b!1413100 (= e!799733 (= (seekEntryOrOpen!0 (select (arr!46600 a!2901) j!112) a!2901 mask!2840) (Found!10933 j!112)))))

(declare-fun b!1413101 () Bool)

(declare-fun e!799732 () Bool)

(declare-fun e!799731 () Bool)

(assert (=> b!1413101 (= e!799732 (not e!799731))))

(declare-fun res!950206 () Bool)

(assert (=> b!1413101 (=> res!950206 e!799731)))

(declare-fun lt!622795 () SeekEntryResult!10933)

(assert (=> b!1413101 (= res!950206 (or (not (is-Intermediate!10933 lt!622795)) (undefined!11745 lt!622795)))))

(assert (=> b!1413101 e!799733))

(declare-fun res!950200 () Bool)

(assert (=> b!1413101 (=> (not res!950200) (not e!799733))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96534 (_ BitVec 32)) Bool)

(assert (=> b!1413101 (= res!950200 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47790 0))(
  ( (Unit!47791) )
))
(declare-fun lt!622796 () Unit!47790)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47790)

(assert (=> b!1413101 (= lt!622796 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622798 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96534 (_ BitVec 32)) SeekEntryResult!10933)

(assert (=> b!1413101 (= lt!622795 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622798 (select (arr!46600 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413101 (= lt!622798 (toIndex!0 (select (arr!46600 a!2901) j!112) mask!2840))))

(declare-fun b!1413102 () Bool)

(declare-fun res!950202 () Bool)

(assert (=> b!1413102 (=> (not res!950202) (not e!799732))))

(declare-datatypes ((List!33299 0))(
  ( (Nil!33296) (Cons!33295 (h!34570 (_ BitVec 64)) (t!48000 List!33299)) )
))
(declare-fun arrayNoDuplicates!0 (array!96534 (_ BitVec 32) List!33299) Bool)

(assert (=> b!1413102 (= res!950202 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33296))))

(declare-fun res!950205 () Bool)

(assert (=> start!121678 (=> (not res!950205) (not e!799732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121678 (= res!950205 (validMask!0 mask!2840))))

(assert (=> start!121678 e!799732))

(assert (=> start!121678 true))

(declare-fun array_inv!35545 (array!96534) Bool)

(assert (=> start!121678 (array_inv!35545 a!2901)))

(declare-fun b!1413103 () Bool)

(declare-fun res!950203 () Bool)

(assert (=> b!1413103 (=> (not res!950203) (not e!799732))))

(assert (=> b!1413103 (= res!950203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1413104 () Bool)

(declare-fun e!799734 () Bool)

(assert (=> b!1413104 (= e!799734 true)))

(declare-fun e!799736 () Bool)

(assert (=> b!1413104 e!799736))

(declare-fun res!950201 () Bool)

(assert (=> b!1413104 (=> (not res!950201) (not e!799736))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!622800 () SeekEntryResult!10933)

(assert (=> b!1413104 (= res!950201 (and (not (undefined!11745 lt!622800)) (= (index!46113 lt!622800) i!1037) (bvslt (x!127703 lt!622800) (x!127703 lt!622795)) (= (select (store (arr!46600 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46113 lt!622800)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622799 () Unit!47790)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96534 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47790)

(assert (=> b!1413104 (= lt!622799 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622798 (x!127703 lt!622795) (index!46113 lt!622795) (x!127703 lt!622800) (index!46113 lt!622800) (undefined!11745 lt!622800) mask!2840))))

(declare-fun b!1413105 () Bool)

(declare-fun res!950208 () Bool)

(assert (=> b!1413105 (=> (not res!950208) (not e!799732))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413105 (= res!950208 (validKeyInArray!0 (select (arr!46600 a!2901) j!112)))))

(declare-fun b!1413106 () Bool)

(declare-fun res!950199 () Bool)

(assert (=> b!1413106 (=> (not res!950199) (not e!799732))))

(assert (=> b!1413106 (= res!950199 (validKeyInArray!0 (select (arr!46600 a!2901) i!1037)))))

(declare-fun b!1413107 () Bool)

(declare-fun res!950207 () Bool)

(assert (=> b!1413107 (=> (not res!950207) (not e!799732))))

(assert (=> b!1413107 (= res!950207 (and (= (size!47151 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47151 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47151 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413108 () Bool)

(assert (=> b!1413108 (= e!799731 e!799734)))

(declare-fun res!950204 () Bool)

(assert (=> b!1413108 (=> res!950204 e!799734)))

(assert (=> b!1413108 (= res!950204 (or (= lt!622795 lt!622800) (not (is-Intermediate!10933 lt!622800))))))

(declare-fun lt!622797 () array!96534)

(declare-fun lt!622801 () (_ BitVec 64))

(assert (=> b!1413108 (= lt!622800 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622801 mask!2840) lt!622801 lt!622797 mask!2840))))

(assert (=> b!1413108 (= lt!622801 (select (store (arr!46600 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413108 (= lt!622797 (array!96535 (store (arr!46600 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47151 a!2901)))))

(declare-fun b!1413109 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96534 (_ BitVec 32)) SeekEntryResult!10933)

(assert (=> b!1413109 (= e!799736 (= (seekEntryOrOpen!0 lt!622801 lt!622797 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127703 lt!622800) (index!46113 lt!622800) (index!46113 lt!622800) (select (arr!46600 a!2901) j!112) lt!622797 mask!2840)))))

(assert (= (and start!121678 res!950205) b!1413107))

(assert (= (and b!1413107 res!950207) b!1413106))

(assert (= (and b!1413106 res!950199) b!1413105))

(assert (= (and b!1413105 res!950208) b!1413103))

(assert (= (and b!1413103 res!950203) b!1413102))

(assert (= (and b!1413102 res!950202) b!1413101))

(assert (= (and b!1413101 res!950200) b!1413100))

(assert (= (and b!1413101 (not res!950206)) b!1413108))

(assert (= (and b!1413108 (not res!950204)) b!1413104))

(assert (= (and b!1413104 res!950201) b!1413109))

(declare-fun m!1303481 () Bool)

(assert (=> b!1413100 m!1303481))

(assert (=> b!1413100 m!1303481))

(declare-fun m!1303483 () Bool)

(assert (=> b!1413100 m!1303483))

(assert (=> b!1413105 m!1303481))

(assert (=> b!1413105 m!1303481))

(declare-fun m!1303485 () Bool)

(assert (=> b!1413105 m!1303485))

(declare-fun m!1303487 () Bool)

(assert (=> b!1413108 m!1303487))

(assert (=> b!1413108 m!1303487))

(declare-fun m!1303489 () Bool)

(assert (=> b!1413108 m!1303489))

(declare-fun m!1303491 () Bool)

(assert (=> b!1413108 m!1303491))

(declare-fun m!1303493 () Bool)

(assert (=> b!1413108 m!1303493))

(assert (=> b!1413101 m!1303481))

(declare-fun m!1303495 () Bool)

(assert (=> b!1413101 m!1303495))

(assert (=> b!1413101 m!1303481))

(assert (=> b!1413101 m!1303481))

(declare-fun m!1303497 () Bool)

(assert (=> b!1413101 m!1303497))

(declare-fun m!1303499 () Bool)

(assert (=> b!1413101 m!1303499))

(declare-fun m!1303501 () Bool)

(assert (=> b!1413101 m!1303501))

(declare-fun m!1303503 () Bool)

(assert (=> start!121678 m!1303503))

(declare-fun m!1303505 () Bool)

(assert (=> start!121678 m!1303505))

(declare-fun m!1303507 () Bool)

(assert (=> b!1413106 m!1303507))

(assert (=> b!1413106 m!1303507))

(declare-fun m!1303509 () Bool)

(assert (=> b!1413106 m!1303509))

(declare-fun m!1303511 () Bool)

(assert (=> b!1413103 m!1303511))

(declare-fun m!1303513 () Bool)

(assert (=> b!1413102 m!1303513))

(declare-fun m!1303515 () Bool)

(assert (=> b!1413109 m!1303515))

(assert (=> b!1413109 m!1303481))

(assert (=> b!1413109 m!1303481))

(declare-fun m!1303517 () Bool)

(assert (=> b!1413109 m!1303517))

(assert (=> b!1413104 m!1303491))

(declare-fun m!1303519 () Bool)

(assert (=> b!1413104 m!1303519))

(declare-fun m!1303521 () Bool)

(assert (=> b!1413104 m!1303521))

(push 1)

