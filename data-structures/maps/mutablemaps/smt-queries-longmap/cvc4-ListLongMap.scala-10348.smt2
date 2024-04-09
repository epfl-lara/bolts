; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121682 () Bool)

(assert start!121682)

(declare-fun b!1413160 () Bool)

(declare-fun res!950265 () Bool)

(declare-fun e!799770 () Bool)

(assert (=> b!1413160 (=> (not res!950265) (not e!799770))))

(declare-datatypes ((array!96538 0))(
  ( (array!96539 (arr!46602 (Array (_ BitVec 32) (_ BitVec 64))) (size!47153 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96538)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1413160 (= res!950265 (validKeyInArray!0 (select (arr!46602 a!2901) j!112)))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun e!799767 () Bool)

(declare-fun b!1413161 () Bool)

(declare-datatypes ((SeekEntryResult!10935 0))(
  ( (MissingZero!10935 (index!46119 (_ BitVec 32))) (Found!10935 (index!46120 (_ BitVec 32))) (Intermediate!10935 (undefined!11747 Bool) (index!46121 (_ BitVec 32)) (x!127705 (_ BitVec 32))) (Undefined!10935) (MissingVacant!10935 (index!46122 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96538 (_ BitVec 32)) SeekEntryResult!10935)

(assert (=> b!1413161 (= e!799767 (= (seekEntryOrOpen!0 (select (arr!46602 a!2901) j!112) a!2901 mask!2840) (Found!10935 j!112)))))

(declare-fun res!950268 () Bool)

(assert (=> start!121682 (=> (not res!950268) (not e!799770))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121682 (= res!950268 (validMask!0 mask!2840))))

(assert (=> start!121682 e!799770))

(assert (=> start!121682 true))

(declare-fun array_inv!35547 (array!96538) Bool)

(assert (=> start!121682 (array_inv!35547 a!2901)))

(declare-fun b!1413162 () Bool)

(declare-fun res!950264 () Bool)

(assert (=> b!1413162 (=> (not res!950264) (not e!799770))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1413162 (= res!950264 (validKeyInArray!0 (select (arr!46602 a!2901) i!1037)))))

(declare-fun b!1413163 () Bool)

(declare-fun e!799771 () Bool)

(assert (=> b!1413163 (= e!799771 true)))

(declare-fun e!799769 () Bool)

(assert (=> b!1413163 e!799769))

(declare-fun res!950267 () Bool)

(assert (=> b!1413163 (=> (not res!950267) (not e!799769))))

(declare-fun lt!622842 () SeekEntryResult!10935)

(declare-fun lt!622840 () SeekEntryResult!10935)

(assert (=> b!1413163 (= res!950267 (and (not (undefined!11747 lt!622842)) (= (index!46121 lt!622842) i!1037) (bvslt (x!127705 lt!622842) (x!127705 lt!622840)) (= (select (store (arr!46602 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46121 lt!622842)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622837 () (_ BitVec 32))

(declare-datatypes ((Unit!47794 0))(
  ( (Unit!47795) )
))
(declare-fun lt!622843 () Unit!47794)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47794)

(assert (=> b!1413163 (= lt!622843 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622837 (x!127705 lt!622840) (index!46121 lt!622840) (x!127705 lt!622842) (index!46121 lt!622842) (undefined!11747 lt!622842) mask!2840))))

(declare-fun b!1413164 () Bool)

(declare-fun res!950261 () Bool)

(assert (=> b!1413164 (=> (not res!950261) (not e!799770))))

(assert (=> b!1413164 (= res!950261 (and (= (size!47153 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47153 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47153 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1413165 () Bool)

(declare-fun e!799772 () Bool)

(assert (=> b!1413165 (= e!799770 (not e!799772))))

(declare-fun res!950260 () Bool)

(assert (=> b!1413165 (=> res!950260 e!799772)))

(assert (=> b!1413165 (= res!950260 (or (not (is-Intermediate!10935 lt!622840)) (undefined!11747 lt!622840)))))

(assert (=> b!1413165 e!799767))

(declare-fun res!950262 () Bool)

(assert (=> b!1413165 (=> (not res!950262) (not e!799767))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96538 (_ BitVec 32)) Bool)

(assert (=> b!1413165 (= res!950262 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!622841 () Unit!47794)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47794)

(assert (=> b!1413165 (= lt!622841 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96538 (_ BitVec 32)) SeekEntryResult!10935)

(assert (=> b!1413165 (= lt!622840 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622837 (select (arr!46602 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1413165 (= lt!622837 (toIndex!0 (select (arr!46602 a!2901) j!112) mask!2840))))

(declare-fun lt!622839 () array!96538)

(declare-fun b!1413166 () Bool)

(declare-fun lt!622838 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96538 (_ BitVec 32)) SeekEntryResult!10935)

(assert (=> b!1413166 (= e!799769 (= (seekEntryOrOpen!0 lt!622838 lt!622839 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127705 lt!622842) (index!46121 lt!622842) (index!46121 lt!622842) (select (arr!46602 a!2901) j!112) lt!622839 mask!2840)))))

(declare-fun b!1413167 () Bool)

(declare-fun res!950263 () Bool)

(assert (=> b!1413167 (=> (not res!950263) (not e!799770))))

(declare-datatypes ((List!33301 0))(
  ( (Nil!33298) (Cons!33297 (h!34572 (_ BitVec 64)) (t!48002 List!33301)) )
))
(declare-fun arrayNoDuplicates!0 (array!96538 (_ BitVec 32) List!33301) Bool)

(assert (=> b!1413167 (= res!950263 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33298))))

(declare-fun b!1413168 () Bool)

(assert (=> b!1413168 (= e!799772 e!799771)))

(declare-fun res!950259 () Bool)

(assert (=> b!1413168 (=> res!950259 e!799771)))

(assert (=> b!1413168 (= res!950259 (or (= lt!622840 lt!622842) (not (is-Intermediate!10935 lt!622842))))))

(assert (=> b!1413168 (= lt!622842 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622838 mask!2840) lt!622838 lt!622839 mask!2840))))

(assert (=> b!1413168 (= lt!622838 (select (store (arr!46602 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1413168 (= lt!622839 (array!96539 (store (arr!46602 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47153 a!2901)))))

(declare-fun b!1413169 () Bool)

(declare-fun res!950266 () Bool)

(assert (=> b!1413169 (=> (not res!950266) (not e!799770))))

(assert (=> b!1413169 (= res!950266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121682 res!950268) b!1413164))

(assert (= (and b!1413164 res!950261) b!1413162))

(assert (= (and b!1413162 res!950264) b!1413160))

(assert (= (and b!1413160 res!950265) b!1413169))

(assert (= (and b!1413169 res!950266) b!1413167))

(assert (= (and b!1413167 res!950263) b!1413165))

(assert (= (and b!1413165 res!950262) b!1413161))

(assert (= (and b!1413165 (not res!950260)) b!1413168))

(assert (= (and b!1413168 (not res!950259)) b!1413163))

(assert (= (and b!1413163 res!950267) b!1413166))

(declare-fun m!1303565 () Bool)

(assert (=> b!1413167 m!1303565))

(declare-fun m!1303567 () Bool)

(assert (=> b!1413161 m!1303567))

(assert (=> b!1413161 m!1303567))

(declare-fun m!1303569 () Bool)

(assert (=> b!1413161 m!1303569))

(assert (=> b!1413165 m!1303567))

(declare-fun m!1303571 () Bool)

(assert (=> b!1413165 m!1303571))

(assert (=> b!1413165 m!1303567))

(declare-fun m!1303573 () Bool)

(assert (=> b!1413165 m!1303573))

(assert (=> b!1413165 m!1303567))

(declare-fun m!1303575 () Bool)

(assert (=> b!1413165 m!1303575))

(declare-fun m!1303577 () Bool)

(assert (=> b!1413165 m!1303577))

(declare-fun m!1303579 () Bool)

(assert (=> b!1413168 m!1303579))

(assert (=> b!1413168 m!1303579))

(declare-fun m!1303581 () Bool)

(assert (=> b!1413168 m!1303581))

(declare-fun m!1303583 () Bool)

(assert (=> b!1413168 m!1303583))

(declare-fun m!1303585 () Bool)

(assert (=> b!1413168 m!1303585))

(declare-fun m!1303587 () Bool)

(assert (=> b!1413162 m!1303587))

(assert (=> b!1413162 m!1303587))

(declare-fun m!1303589 () Bool)

(assert (=> b!1413162 m!1303589))

(declare-fun m!1303591 () Bool)

(assert (=> b!1413166 m!1303591))

(assert (=> b!1413166 m!1303567))

(assert (=> b!1413166 m!1303567))

(declare-fun m!1303593 () Bool)

(assert (=> b!1413166 m!1303593))

(declare-fun m!1303595 () Bool)

(assert (=> b!1413169 m!1303595))

(declare-fun m!1303597 () Bool)

(assert (=> start!121682 m!1303597))

(declare-fun m!1303599 () Bool)

(assert (=> start!121682 m!1303599))

(assert (=> b!1413160 m!1303567))

(assert (=> b!1413160 m!1303567))

(declare-fun m!1303601 () Bool)

(assert (=> b!1413160 m!1303601))

(assert (=> b!1413163 m!1303583))

(declare-fun m!1303603 () Bool)

(assert (=> b!1413163 m!1303603))

(declare-fun m!1303605 () Bool)

(assert (=> b!1413163 m!1303605))

(push 1)

