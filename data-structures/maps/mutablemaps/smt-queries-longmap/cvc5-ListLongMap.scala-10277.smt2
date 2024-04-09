; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120862 () Bool)

(assert start!120862)

(declare-fun res!944051 () Bool)

(declare-fun e!795709 () Bool)

(assert (=> start!120862 (=> (not res!944051) (not e!795709))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120862 (= res!944051 (validMask!0 mask!2840))))

(assert (=> start!120862 e!795709))

(assert (=> start!120862 true))

(declare-datatypes ((array!96087 0))(
  ( (array!96088 (arr!46387 (Array (_ BitVec 32) (_ BitVec 64))) (size!46938 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96087)

(declare-fun array_inv!35332 (array!96087) Bool)

(assert (=> start!120862 (array_inv!35332 a!2901)))

(declare-fun b!1405722 () Bool)

(declare-fun e!795707 () Bool)

(assert (=> b!1405722 (= e!795709 (not e!795707))))

(declare-fun res!944055 () Bool)

(assert (=> b!1405722 (=> res!944055 e!795707)))

(declare-datatypes ((SeekEntryResult!10720 0))(
  ( (MissingZero!10720 (index!45256 (_ BitVec 32))) (Found!10720 (index!45257 (_ BitVec 32))) (Intermediate!10720 (undefined!11532 Bool) (index!45258 (_ BitVec 32)) (x!126874 (_ BitVec 32))) (Undefined!10720) (MissingVacant!10720 (index!45259 (_ BitVec 32))) )
))
(declare-fun lt!619086 () SeekEntryResult!10720)

(assert (=> b!1405722 (= res!944055 (or (not (is-Intermediate!10720 lt!619086)) (undefined!11532 lt!619086)))))

(declare-fun e!795710 () Bool)

(assert (=> b!1405722 e!795710))

(declare-fun res!944050 () Bool)

(assert (=> b!1405722 (=> (not res!944050) (not e!795710))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96087 (_ BitVec 32)) Bool)

(assert (=> b!1405722 (= res!944050 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47364 0))(
  ( (Unit!47365) )
))
(declare-fun lt!619087 () Unit!47364)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47364)

(assert (=> b!1405722 (= lt!619087 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96087 (_ BitVec 32)) SeekEntryResult!10720)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405722 (= lt!619086 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46387 a!2901) j!112) mask!2840) (select (arr!46387 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405723 () Bool)

(declare-fun res!944048 () Bool)

(assert (=> b!1405723 (=> (not res!944048) (not e!795709))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1405723 (= res!944048 (and (= (size!46938 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46938 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46938 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405724 () Bool)

(declare-fun res!944053 () Bool)

(assert (=> b!1405724 (=> (not res!944053) (not e!795709))))

(assert (=> b!1405724 (= res!944053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405725 () Bool)

(assert (=> b!1405725 (= e!795707 true)))

(declare-fun lt!619085 () SeekEntryResult!10720)

(assert (=> b!1405725 (= lt!619085 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46387 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46387 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96088 (store (arr!46387 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46938 a!2901)) mask!2840))))

(declare-fun b!1405726 () Bool)

(declare-fun res!944052 () Bool)

(assert (=> b!1405726 (=> (not res!944052) (not e!795709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405726 (= res!944052 (validKeyInArray!0 (select (arr!46387 a!2901) i!1037)))))

(declare-fun b!1405727 () Bool)

(declare-fun res!944049 () Bool)

(assert (=> b!1405727 (=> (not res!944049) (not e!795709))))

(assert (=> b!1405727 (= res!944049 (validKeyInArray!0 (select (arr!46387 a!2901) j!112)))))

(declare-fun b!1405728 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96087 (_ BitVec 32)) SeekEntryResult!10720)

(assert (=> b!1405728 (= e!795710 (= (seekEntryOrOpen!0 (select (arr!46387 a!2901) j!112) a!2901 mask!2840) (Found!10720 j!112)))))

(declare-fun b!1405729 () Bool)

(declare-fun res!944054 () Bool)

(assert (=> b!1405729 (=> (not res!944054) (not e!795709))))

(declare-datatypes ((List!33086 0))(
  ( (Nil!33083) (Cons!33082 (h!34336 (_ BitVec 64)) (t!47787 List!33086)) )
))
(declare-fun arrayNoDuplicates!0 (array!96087 (_ BitVec 32) List!33086) Bool)

(assert (=> b!1405729 (= res!944054 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33083))))

(assert (= (and start!120862 res!944051) b!1405723))

(assert (= (and b!1405723 res!944048) b!1405726))

(assert (= (and b!1405726 res!944052) b!1405727))

(assert (= (and b!1405727 res!944049) b!1405724))

(assert (= (and b!1405724 res!944053) b!1405729))

(assert (= (and b!1405729 res!944054) b!1405722))

(assert (= (and b!1405722 res!944050) b!1405728))

(assert (= (and b!1405722 (not res!944055)) b!1405725))

(declare-fun m!1294661 () Bool)

(assert (=> b!1405729 m!1294661))

(declare-fun m!1294663 () Bool)

(assert (=> b!1405724 m!1294663))

(declare-fun m!1294665 () Bool)

(assert (=> start!120862 m!1294665))

(declare-fun m!1294667 () Bool)

(assert (=> start!120862 m!1294667))

(declare-fun m!1294669 () Bool)

(assert (=> b!1405728 m!1294669))

(assert (=> b!1405728 m!1294669))

(declare-fun m!1294671 () Bool)

(assert (=> b!1405728 m!1294671))

(declare-fun m!1294673 () Bool)

(assert (=> b!1405726 m!1294673))

(assert (=> b!1405726 m!1294673))

(declare-fun m!1294675 () Bool)

(assert (=> b!1405726 m!1294675))

(assert (=> b!1405722 m!1294669))

(declare-fun m!1294677 () Bool)

(assert (=> b!1405722 m!1294677))

(assert (=> b!1405722 m!1294669))

(declare-fun m!1294679 () Bool)

(assert (=> b!1405722 m!1294679))

(assert (=> b!1405722 m!1294677))

(assert (=> b!1405722 m!1294669))

(declare-fun m!1294681 () Bool)

(assert (=> b!1405722 m!1294681))

(declare-fun m!1294683 () Bool)

(assert (=> b!1405722 m!1294683))

(declare-fun m!1294685 () Bool)

(assert (=> b!1405725 m!1294685))

(declare-fun m!1294687 () Bool)

(assert (=> b!1405725 m!1294687))

(assert (=> b!1405725 m!1294687))

(declare-fun m!1294689 () Bool)

(assert (=> b!1405725 m!1294689))

(assert (=> b!1405725 m!1294689))

(assert (=> b!1405725 m!1294687))

(declare-fun m!1294691 () Bool)

(assert (=> b!1405725 m!1294691))

(assert (=> b!1405727 m!1294669))

(assert (=> b!1405727 m!1294669))

(declare-fun m!1294693 () Bool)

(assert (=> b!1405727 m!1294693))

(push 1)

(assert (not b!1405722))

(assert (not b!1405725))

(assert (not b!1405724))

(assert (not b!1405727))

(assert (not b!1405728))

(assert (not b!1405726))

(assert (not start!120862))

(assert (not b!1405729))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

