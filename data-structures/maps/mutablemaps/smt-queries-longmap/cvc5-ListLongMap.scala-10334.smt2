; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121528 () Bool)

(assert start!121528)

(declare-fun b!1411547 () Bool)

(declare-fun e!798816 () Bool)

(declare-fun e!798815 () Bool)

(assert (=> b!1411547 (= e!798816 e!798815)))

(declare-fun res!948885 () Bool)

(assert (=> b!1411547 (=> res!948885 e!798815)))

(declare-datatypes ((SeekEntryResult!10891 0))(
  ( (MissingZero!10891 (index!45940 (_ BitVec 32))) (Found!10891 (index!45941 (_ BitVec 32))) (Intermediate!10891 (undefined!11703 Bool) (index!45942 (_ BitVec 32)) (x!127537 (_ BitVec 32))) (Undefined!10891) (MissingVacant!10891 (index!45943 (_ BitVec 32))) )
))
(declare-fun lt!621786 () SeekEntryResult!10891)

(declare-fun lt!621782 () SeekEntryResult!10891)

(assert (=> b!1411547 (= res!948885 (or (= lt!621786 lt!621782) (not (is-Intermediate!10891 lt!621782))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!621784 () (_ BitVec 64))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((array!96447 0))(
  ( (array!96448 (arr!46558 (Array (_ BitVec 32) (_ BitVec 64))) (size!47109 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96447)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96447 (_ BitVec 32)) SeekEntryResult!10891)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1411547 (= lt!621782 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!621784 mask!2840) lt!621784 (array!96448 (store (arr!46558 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47109 a!2901)) mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1411547 (= lt!621784 (select (store (arr!46558 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1411548 () Bool)

(declare-fun res!948884 () Bool)

(declare-fun e!798818 () Bool)

(assert (=> b!1411548 (=> (not res!948884) (not e!798818))))

(declare-datatypes ((List!33257 0))(
  ( (Nil!33254) (Cons!33253 (h!34525 (_ BitVec 64)) (t!47958 List!33257)) )
))
(declare-fun arrayNoDuplicates!0 (array!96447 (_ BitVec 32) List!33257) Bool)

(assert (=> b!1411548 (= res!948884 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33254))))

(declare-fun res!948888 () Bool)

(assert (=> start!121528 (=> (not res!948888) (not e!798818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121528 (= res!948888 (validMask!0 mask!2840))))

(assert (=> start!121528 e!798818))

(assert (=> start!121528 true))

(declare-fun array_inv!35503 (array!96447) Bool)

(assert (=> start!121528 (array_inv!35503 a!2901)))

(declare-fun b!1411549 () Bool)

(assert (=> b!1411549 (= e!798815 true)))

(assert (=> b!1411549 (and (not (undefined!11703 lt!621782)) (= (index!45942 lt!621782) i!1037) (bvslt (x!127537 lt!621782) (x!127537 lt!621786)) (= (select (store (arr!46558 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!45942 lt!621782)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47706 0))(
  ( (Unit!47707) )
))
(declare-fun lt!621783 () Unit!47706)

(declare-fun lt!621787 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96447 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47706)

(assert (=> b!1411549 (= lt!621783 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!621787 (x!127537 lt!621786) (index!45942 lt!621786) (x!127537 lt!621782) (index!45942 lt!621782) (undefined!11703 lt!621782) mask!2840))))

(declare-fun b!1411550 () Bool)

(declare-fun e!798817 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96447 (_ BitVec 32)) SeekEntryResult!10891)

(assert (=> b!1411550 (= e!798817 (= (seekEntryOrOpen!0 (select (arr!46558 a!2901) j!112) a!2901 mask!2840) (Found!10891 j!112)))))

(declare-fun b!1411551 () Bool)

(declare-fun res!948883 () Bool)

(assert (=> b!1411551 (=> (not res!948883) (not e!798818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1411551 (= res!948883 (validKeyInArray!0 (select (arr!46558 a!2901) i!1037)))))

(declare-fun b!1411552 () Bool)

(assert (=> b!1411552 (= e!798818 (not e!798816))))

(declare-fun res!948889 () Bool)

(assert (=> b!1411552 (=> res!948889 e!798816)))

(assert (=> b!1411552 (= res!948889 (or (not (is-Intermediate!10891 lt!621786)) (undefined!11703 lt!621786)))))

(assert (=> b!1411552 e!798817))

(declare-fun res!948887 () Bool)

(assert (=> b!1411552 (=> (not res!948887) (not e!798817))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96447 (_ BitVec 32)) Bool)

(assert (=> b!1411552 (= res!948887 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!621785 () Unit!47706)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96447 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47706)

(assert (=> b!1411552 (= lt!621785 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1411552 (= lt!621786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!621787 (select (arr!46558 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1411552 (= lt!621787 (toIndex!0 (select (arr!46558 a!2901) j!112) mask!2840))))

(declare-fun b!1411553 () Bool)

(declare-fun res!948891 () Bool)

(assert (=> b!1411553 (=> (not res!948891) (not e!798818))))

(assert (=> b!1411553 (= res!948891 (and (= (size!47109 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47109 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47109 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1411554 () Bool)

(declare-fun res!948890 () Bool)

(assert (=> b!1411554 (=> (not res!948890) (not e!798818))))

(assert (=> b!1411554 (= res!948890 (validKeyInArray!0 (select (arr!46558 a!2901) j!112)))))

(declare-fun b!1411555 () Bool)

(declare-fun res!948886 () Bool)

(assert (=> b!1411555 (=> (not res!948886) (not e!798818))))

(assert (=> b!1411555 (= res!948886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121528 res!948888) b!1411553))

(assert (= (and b!1411553 res!948891) b!1411551))

(assert (= (and b!1411551 res!948883) b!1411554))

(assert (= (and b!1411554 res!948890) b!1411555))

(assert (= (and b!1411555 res!948886) b!1411548))

(assert (= (and b!1411548 res!948884) b!1411552))

(assert (= (and b!1411552 res!948887) b!1411550))

(assert (= (and b!1411552 (not res!948889)) b!1411547))

(assert (= (and b!1411547 (not res!948885)) b!1411549))

(declare-fun m!1301531 () Bool)

(assert (=> b!1411548 m!1301531))

(declare-fun m!1301533 () Bool)

(assert (=> b!1411550 m!1301533))

(assert (=> b!1411550 m!1301533))

(declare-fun m!1301535 () Bool)

(assert (=> b!1411550 m!1301535))

(declare-fun m!1301537 () Bool)

(assert (=> b!1411551 m!1301537))

(assert (=> b!1411551 m!1301537))

(declare-fun m!1301539 () Bool)

(assert (=> b!1411551 m!1301539))

(assert (=> b!1411554 m!1301533))

(assert (=> b!1411554 m!1301533))

(declare-fun m!1301541 () Bool)

(assert (=> b!1411554 m!1301541))

(declare-fun m!1301543 () Bool)

(assert (=> start!121528 m!1301543))

(declare-fun m!1301545 () Bool)

(assert (=> start!121528 m!1301545))

(declare-fun m!1301547 () Bool)

(assert (=> b!1411555 m!1301547))

(declare-fun m!1301549 () Bool)

(assert (=> b!1411547 m!1301549))

(declare-fun m!1301551 () Bool)

(assert (=> b!1411547 m!1301551))

(assert (=> b!1411547 m!1301549))

(declare-fun m!1301553 () Bool)

(assert (=> b!1411547 m!1301553))

(declare-fun m!1301555 () Bool)

(assert (=> b!1411547 m!1301555))

(assert (=> b!1411549 m!1301551))

(declare-fun m!1301557 () Bool)

(assert (=> b!1411549 m!1301557))

(declare-fun m!1301559 () Bool)

(assert (=> b!1411549 m!1301559))

(assert (=> b!1411552 m!1301533))

(declare-fun m!1301561 () Bool)

(assert (=> b!1411552 m!1301561))

(assert (=> b!1411552 m!1301533))

(assert (=> b!1411552 m!1301533))

(declare-fun m!1301563 () Bool)

(assert (=> b!1411552 m!1301563))

(declare-fun m!1301565 () Bool)

(assert (=> b!1411552 m!1301565))

(declare-fun m!1301567 () Bool)

(assert (=> b!1411552 m!1301567))

(push 1)

