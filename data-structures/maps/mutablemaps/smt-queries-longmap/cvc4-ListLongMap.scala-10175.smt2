; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120020 () Bool)

(assert start!120020)

(declare-fun res!935628 () Bool)

(declare-fun e!790696 () Bool)

(assert (=> start!120020 (=> (not res!935628) (not e!790696))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120020 (= res!935628 (validMask!0 mask!2840))))

(assert (=> start!120020 e!790696))

(assert (=> start!120020 true))

(declare-datatypes ((array!95467 0))(
  ( (array!95468 (arr!46083 (Array (_ BitVec 32) (_ BitVec 64))) (size!46634 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95467)

(declare-fun array_inv!35028 (array!95467) Bool)

(assert (=> start!120020 (array_inv!35028 a!2901)))

(declare-fun b!1396604 () Bool)

(declare-fun res!935629 () Bool)

(assert (=> b!1396604 (=> (not res!935629) (not e!790696))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95467 (_ BitVec 32)) Bool)

(assert (=> b!1396604 (= res!935629 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396605 () Bool)

(declare-fun res!935633 () Bool)

(assert (=> b!1396605 (=> (not res!935633) (not e!790696))))

(declare-datatypes ((List!32782 0))(
  ( (Nil!32779) (Cons!32778 (h!34020 (_ BitVec 64)) (t!47483 List!32782)) )
))
(declare-fun arrayNoDuplicates!0 (array!95467 (_ BitVec 32) List!32782) Bool)

(assert (=> b!1396605 (= res!935633 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32779))))

(declare-fun b!1396606 () Bool)

(declare-fun e!790698 () Bool)

(declare-fun e!790699 () Bool)

(assert (=> b!1396606 (= e!790698 e!790699)))

(declare-fun res!935631 () Bool)

(assert (=> b!1396606 (=> res!935631 e!790699)))

(declare-fun lt!613564 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10422 0))(
  ( (MissingZero!10422 (index!44058 (_ BitVec 32))) (Found!10422 (index!44059 (_ BitVec 32))) (Intermediate!10422 (undefined!11234 Bool) (index!44060 (_ BitVec 32)) (x!125727 (_ BitVec 32))) (Undefined!10422) (MissingVacant!10422 (index!44061 (_ BitVec 32))) )
))
(declare-fun lt!613560 () SeekEntryResult!10422)

(declare-fun lt!613559 () SeekEntryResult!10422)

(assert (=> b!1396606 (= res!935631 (or (= lt!613559 lt!613560) (not (is-Intermediate!10422 lt!613560)) (bvslt (x!125727 lt!613559) #b00000000000000000000000000000000) (bvsgt (x!125727 lt!613559) #b01111111111111111111111111111110) (bvslt lt!613564 #b00000000000000000000000000000000) (bvsge lt!613564 (size!46634 a!2901)) (bvslt (index!44060 lt!613559) #b00000000000000000000000000000000) (bvsge (index!44060 lt!613559) (size!46634 a!2901)) (not (= lt!613559 (Intermediate!10422 false (index!44060 lt!613559) (x!125727 lt!613559)))) (not (= lt!613560 (Intermediate!10422 (undefined!11234 lt!613560) (index!44060 lt!613560) (x!125727 lt!613560))))))))

(declare-fun lt!613558 () (_ BitVec 64))

(declare-fun lt!613563 () array!95467)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95467 (_ BitVec 32)) SeekEntryResult!10422)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396606 (= lt!613560 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613558 mask!2840) lt!613558 lt!613563 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1396606 (= lt!613558 (select (store (arr!46083 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396606 (= lt!613563 (array!95468 (store (arr!46083 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46634 a!2901)))))

(declare-fun b!1396607 () Bool)

(declare-fun res!935626 () Bool)

(assert (=> b!1396607 (=> (not res!935626) (not e!790696))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396607 (= res!935626 (validKeyInArray!0 (select (arr!46083 a!2901) j!112)))))

(declare-fun b!1396608 () Bool)

(declare-fun res!935627 () Bool)

(assert (=> b!1396608 (=> (not res!935627) (not e!790696))))

(assert (=> b!1396608 (= res!935627 (validKeyInArray!0 (select (arr!46083 a!2901) i!1037)))))

(declare-fun b!1396609 () Bool)

(declare-fun res!935630 () Bool)

(assert (=> b!1396609 (=> (not res!935630) (not e!790696))))

(assert (=> b!1396609 (= res!935630 (and (= (size!46634 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46634 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46634 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396610 () Bool)

(assert (=> b!1396610 (= e!790696 (not e!790698))))

(declare-fun res!935634 () Bool)

(assert (=> b!1396610 (=> res!935634 e!790698)))

(assert (=> b!1396610 (= res!935634 (or (not (is-Intermediate!10422 lt!613559)) (undefined!11234 lt!613559)))))

(declare-fun e!790700 () Bool)

(assert (=> b!1396610 e!790700))

(declare-fun res!935632 () Bool)

(assert (=> b!1396610 (=> (not res!935632) (not e!790700))))

(assert (=> b!1396610 (= res!935632 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46798 0))(
  ( (Unit!46799) )
))
(declare-fun lt!613561 () Unit!46798)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46798)

(assert (=> b!1396610 (= lt!613561 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396610 (= lt!613559 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613564 (select (arr!46083 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396610 (= lt!613564 (toIndex!0 (select (arr!46083 a!2901) j!112) mask!2840))))

(declare-fun b!1396611 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95467 (_ BitVec 32)) SeekEntryResult!10422)

(assert (=> b!1396611 (= e!790700 (= (seekEntryOrOpen!0 (select (arr!46083 a!2901) j!112) a!2901 mask!2840) (Found!10422 j!112)))))

(declare-fun b!1396612 () Bool)

(assert (=> b!1396612 (= e!790699 true)))

(declare-fun lt!613562 () SeekEntryResult!10422)

(assert (=> b!1396612 (= lt!613562 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613564 lt!613558 lt!613563 mask!2840))))

(assert (= (and start!120020 res!935628) b!1396609))

(assert (= (and b!1396609 res!935630) b!1396608))

(assert (= (and b!1396608 res!935627) b!1396607))

(assert (= (and b!1396607 res!935626) b!1396604))

(assert (= (and b!1396604 res!935629) b!1396605))

(assert (= (and b!1396605 res!935633) b!1396610))

(assert (= (and b!1396610 res!935632) b!1396611))

(assert (= (and b!1396610 (not res!935634)) b!1396606))

(assert (= (and b!1396606 (not res!935631)) b!1396612))

(declare-fun m!1283183 () Bool)

(assert (=> b!1396604 m!1283183))

(declare-fun m!1283185 () Bool)

(assert (=> b!1396606 m!1283185))

(assert (=> b!1396606 m!1283185))

(declare-fun m!1283187 () Bool)

(assert (=> b!1396606 m!1283187))

(declare-fun m!1283189 () Bool)

(assert (=> b!1396606 m!1283189))

(declare-fun m!1283191 () Bool)

(assert (=> b!1396606 m!1283191))

(declare-fun m!1283193 () Bool)

(assert (=> b!1396610 m!1283193))

(declare-fun m!1283195 () Bool)

(assert (=> b!1396610 m!1283195))

(assert (=> b!1396610 m!1283193))

(declare-fun m!1283197 () Bool)

(assert (=> b!1396610 m!1283197))

(assert (=> b!1396610 m!1283193))

(declare-fun m!1283199 () Bool)

(assert (=> b!1396610 m!1283199))

(declare-fun m!1283201 () Bool)

(assert (=> b!1396610 m!1283201))

(assert (=> b!1396611 m!1283193))

(assert (=> b!1396611 m!1283193))

(declare-fun m!1283203 () Bool)

(assert (=> b!1396611 m!1283203))

(declare-fun m!1283205 () Bool)

(assert (=> b!1396605 m!1283205))

(declare-fun m!1283207 () Bool)

(assert (=> b!1396612 m!1283207))

(declare-fun m!1283209 () Bool)

(assert (=> start!120020 m!1283209))

(declare-fun m!1283211 () Bool)

(assert (=> start!120020 m!1283211))

(assert (=> b!1396607 m!1283193))

(assert (=> b!1396607 m!1283193))

(declare-fun m!1283213 () Bool)

(assert (=> b!1396607 m!1283213))

(declare-fun m!1283215 () Bool)

(assert (=> b!1396608 m!1283215))

(assert (=> b!1396608 m!1283215))

(declare-fun m!1283217 () Bool)

(assert (=> b!1396608 m!1283217))

(push 1)

