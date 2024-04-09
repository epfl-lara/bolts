; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121120 () Bool)

(assert start!121120)

(declare-fun b!1407668 () Bool)

(declare-fun res!945504 () Bool)

(declare-fun e!796761 () Bool)

(assert (=> b!1407668 (=> (not res!945504) (not e!796761))))

(declare-datatypes ((array!96192 0))(
  ( (array!96193 (arr!46435 (Array (_ BitVec 32) (_ BitVec 64))) (size!46986 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96192)

(declare-datatypes ((List!33134 0))(
  ( (Nil!33131) (Cons!33130 (h!34393 (_ BitVec 64)) (t!47835 List!33134)) )
))
(declare-fun arrayNoDuplicates!0 (array!96192 (_ BitVec 32) List!33134) Bool)

(assert (=> b!1407668 (= res!945504 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33131))))

(declare-fun b!1407669 () Bool)

(declare-fun res!945503 () Bool)

(assert (=> b!1407669 (=> (not res!945503) (not e!796761))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96192 (_ BitVec 32)) Bool)

(assert (=> b!1407669 (= res!945503 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407670 () Bool)

(declare-fun res!945499 () Bool)

(assert (=> b!1407670 (=> (not res!945499) (not e!796761))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407670 (= res!945499 (validKeyInArray!0 (select (arr!46435 a!2901) j!112)))))

(declare-fun b!1407671 () Bool)

(declare-fun e!796762 () Bool)

(declare-datatypes ((SeekEntryResult!10768 0))(
  ( (MissingZero!10768 (index!45448 (_ BitVec 32))) (Found!10768 (index!45449 (_ BitVec 32))) (Intermediate!10768 (undefined!11580 Bool) (index!45450 (_ BitVec 32)) (x!127068 (_ BitVec 32))) (Undefined!10768) (MissingVacant!10768 (index!45451 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96192 (_ BitVec 32)) SeekEntryResult!10768)

(assert (=> b!1407671 (= e!796762 (= (seekEntryOrOpen!0 (select (arr!46435 a!2901) j!112) a!2901 mask!2840) (Found!10768 j!112)))))

(declare-fun b!1407672 () Bool)

(declare-fun res!945500 () Bool)

(declare-fun e!796763 () Bool)

(assert (=> b!1407672 (=> res!945500 e!796763)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!619869 () SeekEntryResult!10768)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96192 (_ BitVec 32)) SeekEntryResult!10768)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407672 (= res!945500 (not (= lt!619869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46435 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46435 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96193 (store (arr!46435 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46986 a!2901)) mask!2840))))))

(declare-fun b!1407673 () Bool)

(declare-fun res!945501 () Bool)

(assert (=> b!1407673 (=> (not res!945501) (not e!796761))))

(assert (=> b!1407673 (= res!945501 (validKeyInArray!0 (select (arr!46435 a!2901) i!1037)))))

(declare-fun b!1407675 () Bool)

(declare-fun res!945507 () Bool)

(assert (=> b!1407675 (=> (not res!945507) (not e!796761))))

(assert (=> b!1407675 (= res!945507 (and (= (size!46986 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46986 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46986 a!2901)) (not (= i!1037 j!112))))))

(declare-fun lt!619868 () (_ BitVec 32))

(declare-fun b!1407676 () Bool)

(assert (=> b!1407676 (= e!796763 (or (bvslt (x!127068 lt!619869) #b00000000000000000000000000000000) (bvsgt (x!127068 lt!619869) #b01111111111111111111111111111110) (bvslt lt!619868 #b00000000000000000000000000000000) (bvsge lt!619868 (size!46986 a!2901)) (bvslt (index!45450 lt!619869) #b00000000000000000000000000000000) (bvsge (index!45450 lt!619869) (size!46986 a!2901)) (= lt!619869 (Intermediate!10768 false (index!45450 lt!619869) (x!127068 lt!619869)))))))

(declare-fun b!1407674 () Bool)

(assert (=> b!1407674 (= e!796761 (not e!796763))))

(declare-fun res!945502 () Bool)

(assert (=> b!1407674 (=> res!945502 e!796763)))

(assert (=> b!1407674 (= res!945502 (or (not (is-Intermediate!10768 lt!619869)) (undefined!11580 lt!619869)))))

(assert (=> b!1407674 e!796762))

(declare-fun res!945505 () Bool)

(assert (=> b!1407674 (=> (not res!945505) (not e!796762))))

(assert (=> b!1407674 (= res!945505 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47460 0))(
  ( (Unit!47461) )
))
(declare-fun lt!619870 () Unit!47460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96192 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47460)

(assert (=> b!1407674 (= lt!619870 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407674 (= lt!619869 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619868 (select (arr!46435 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407674 (= lt!619868 (toIndex!0 (select (arr!46435 a!2901) j!112) mask!2840))))

(declare-fun res!945506 () Bool)

(assert (=> start!121120 (=> (not res!945506) (not e!796761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121120 (= res!945506 (validMask!0 mask!2840))))

(assert (=> start!121120 e!796761))

(assert (=> start!121120 true))

(declare-fun array_inv!35380 (array!96192) Bool)

(assert (=> start!121120 (array_inv!35380 a!2901)))

(assert (= (and start!121120 res!945506) b!1407675))

(assert (= (and b!1407675 res!945507) b!1407673))

(assert (= (and b!1407673 res!945501) b!1407670))

(assert (= (and b!1407670 res!945499) b!1407669))

(assert (= (and b!1407669 res!945503) b!1407668))

(assert (= (and b!1407668 res!945504) b!1407674))

(assert (= (and b!1407674 res!945505) b!1407671))

(assert (= (and b!1407674 (not res!945502)) b!1407672))

(assert (= (and b!1407672 (not res!945500)) b!1407676))

(declare-fun m!1296755 () Bool)

(assert (=> b!1407673 m!1296755))

(assert (=> b!1407673 m!1296755))

(declare-fun m!1296757 () Bool)

(assert (=> b!1407673 m!1296757))

(declare-fun m!1296759 () Bool)

(assert (=> b!1407672 m!1296759))

(declare-fun m!1296761 () Bool)

(assert (=> b!1407672 m!1296761))

(assert (=> b!1407672 m!1296761))

(declare-fun m!1296763 () Bool)

(assert (=> b!1407672 m!1296763))

(assert (=> b!1407672 m!1296763))

(assert (=> b!1407672 m!1296761))

(declare-fun m!1296765 () Bool)

(assert (=> b!1407672 m!1296765))

(declare-fun m!1296767 () Bool)

(assert (=> start!121120 m!1296767))

(declare-fun m!1296769 () Bool)

(assert (=> start!121120 m!1296769))

(declare-fun m!1296771 () Bool)

(assert (=> b!1407674 m!1296771))

(declare-fun m!1296773 () Bool)

(assert (=> b!1407674 m!1296773))

(assert (=> b!1407674 m!1296771))

(declare-fun m!1296775 () Bool)

(assert (=> b!1407674 m!1296775))

(assert (=> b!1407674 m!1296771))

(declare-fun m!1296777 () Bool)

(assert (=> b!1407674 m!1296777))

(declare-fun m!1296779 () Bool)

(assert (=> b!1407674 m!1296779))

(declare-fun m!1296781 () Bool)

(assert (=> b!1407668 m!1296781))

(assert (=> b!1407670 m!1296771))

(assert (=> b!1407670 m!1296771))

(declare-fun m!1296783 () Bool)

(assert (=> b!1407670 m!1296783))

(declare-fun m!1296785 () Bool)

(assert (=> b!1407669 m!1296785))

(assert (=> b!1407671 m!1296771))

(assert (=> b!1407671 m!1296771))

(declare-fun m!1296787 () Bool)

(assert (=> b!1407671 m!1296787))

(push 1)

