; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121644 () Bool)

(assert start!121644)

(declare-fun b!1412590 () Bool)

(declare-fun e!799426 () Bool)

(declare-fun e!799425 () Bool)

(assert (=> b!1412590 (= e!799426 e!799425)))

(declare-fun res!949695 () Bool)

(assert (=> b!1412590 (=> res!949695 e!799425)))

(declare-datatypes ((SeekEntryResult!10916 0))(
  ( (MissingZero!10916 (index!46043 (_ BitVec 32))) (Found!10916 (index!46044 (_ BitVec 32))) (Intermediate!10916 (undefined!11728 Bool) (index!46045 (_ BitVec 32)) (x!127638 (_ BitVec 32))) (Undefined!10916) (MissingVacant!10916 (index!46046 (_ BitVec 32))) )
))
(declare-fun lt!622444 () SeekEntryResult!10916)

(declare-fun lt!622440 () SeekEntryResult!10916)

(get-info :version)

(assert (=> b!1412590 (= res!949695 (or (= lt!622444 lt!622440) (not ((_ is Intermediate!10916) lt!622440))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96500 0))(
  ( (array!96501 (arr!46583 (Array (_ BitVec 32) (_ BitVec 64))) (size!47134 (_ BitVec 32))) )
))
(declare-fun lt!622442 () array!96500)

(declare-fun lt!622439 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96500 (_ BitVec 32)) SeekEntryResult!10916)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412590 (= lt!622440 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622439 mask!2840) lt!622439 lt!622442 mask!2840))))

(declare-fun a!2901 () array!96500)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1412590 (= lt!622439 (select (store (arr!46583 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412590 (= lt!622442 (array!96501 (store (arr!46583 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47134 a!2901)))))

(declare-fun b!1412591 () Bool)

(declare-fun res!949692 () Bool)

(declare-fun e!799429 () Bool)

(assert (=> b!1412591 (=> (not res!949692) (not e!799429))))

(declare-datatypes ((List!33282 0))(
  ( (Nil!33279) (Cons!33278 (h!34553 (_ BitVec 64)) (t!47983 List!33282)) )
))
(declare-fun arrayNoDuplicates!0 (array!96500 (_ BitVec 32) List!33282) Bool)

(assert (=> b!1412591 (= res!949692 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33279))))

(declare-fun b!1412592 () Bool)

(assert (=> b!1412592 (= e!799429 (not e!799426))))

(declare-fun res!949691 () Bool)

(assert (=> b!1412592 (=> res!949691 e!799426)))

(assert (=> b!1412592 (= res!949691 (or (not ((_ is Intermediate!10916) lt!622444)) (undefined!11728 lt!622444)))))

(declare-fun e!799430 () Bool)

(assert (=> b!1412592 e!799430))

(declare-fun res!949693 () Bool)

(assert (=> b!1412592 (=> (not res!949693) (not e!799430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96500 (_ BitVec 32)) Bool)

(assert (=> b!1412592 (= res!949693 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47756 0))(
  ( (Unit!47757) )
))
(declare-fun lt!622438 () Unit!47756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47756)

(assert (=> b!1412592 (= lt!622438 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622441 () (_ BitVec 32))

(assert (=> b!1412592 (= lt!622444 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622441 (select (arr!46583 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1412592 (= lt!622441 (toIndex!0 (select (arr!46583 a!2901) j!112) mask!2840))))

(declare-fun b!1412593 () Bool)

(declare-fun res!949697 () Bool)

(assert (=> b!1412593 (=> (not res!949697) (not e!799429))))

(assert (=> b!1412593 (= res!949697 (and (= (size!47134 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47134 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47134 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412594 () Bool)

(declare-fun res!949690 () Bool)

(assert (=> b!1412594 (=> (not res!949690) (not e!799429))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412594 (= res!949690 (validKeyInArray!0 (select (arr!46583 a!2901) i!1037)))))

(declare-fun b!1412595 () Bool)

(declare-fun res!949698 () Bool)

(assert (=> b!1412595 (=> (not res!949698) (not e!799429))))

(assert (=> b!1412595 (= res!949698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!949696 () Bool)

(assert (=> start!121644 (=> (not res!949696) (not e!799429))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121644 (= res!949696 (validMask!0 mask!2840))))

(assert (=> start!121644 e!799429))

(assert (=> start!121644 true))

(declare-fun array_inv!35528 (array!96500) Bool)

(assert (=> start!121644 (array_inv!35528 a!2901)))

(declare-fun b!1412596 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96500 (_ BitVec 32)) SeekEntryResult!10916)

(assert (=> b!1412596 (= e!799430 (= (seekEntryOrOpen!0 (select (arr!46583 a!2901) j!112) a!2901 mask!2840) (Found!10916 j!112)))))

(declare-fun b!1412597 () Bool)

(declare-fun res!949689 () Bool)

(assert (=> b!1412597 (=> (not res!949689) (not e!799429))))

(assert (=> b!1412597 (= res!949689 (validKeyInArray!0 (select (arr!46583 a!2901) j!112)))))

(declare-fun b!1412598 () Bool)

(assert (=> b!1412598 (= e!799425 true)))

(declare-fun e!799427 () Bool)

(assert (=> b!1412598 e!799427))

(declare-fun res!949694 () Bool)

(assert (=> b!1412598 (=> (not res!949694) (not e!799427))))

(assert (=> b!1412598 (= res!949694 (and (not (undefined!11728 lt!622440)) (= (index!46045 lt!622440) i!1037) (bvslt (x!127638 lt!622440) (x!127638 lt!622444)) (= (select (store (arr!46583 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46045 lt!622440)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622443 () Unit!47756)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96500 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47756)

(assert (=> b!1412598 (= lt!622443 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622441 (x!127638 lt!622444) (index!46045 lt!622444) (x!127638 lt!622440) (index!46045 lt!622440) (undefined!11728 lt!622440) mask!2840))))

(declare-fun b!1412599 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96500 (_ BitVec 32)) SeekEntryResult!10916)

(assert (=> b!1412599 (= e!799427 (= (seekEntryOrOpen!0 lt!622439 lt!622442 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127638 lt!622440) (index!46045 lt!622440) (index!46045 lt!622440) (select (arr!46583 a!2901) j!112) lt!622442 mask!2840)))))

(assert (= (and start!121644 res!949696) b!1412593))

(assert (= (and b!1412593 res!949697) b!1412594))

(assert (= (and b!1412594 res!949690) b!1412597))

(assert (= (and b!1412597 res!949689) b!1412595))

(assert (= (and b!1412595 res!949698) b!1412591))

(assert (= (and b!1412591 res!949692) b!1412592))

(assert (= (and b!1412592 res!949693) b!1412596))

(assert (= (and b!1412592 (not res!949691)) b!1412590))

(assert (= (and b!1412590 (not res!949695)) b!1412598))

(assert (= (and b!1412598 res!949694) b!1412599))

(declare-fun m!1302767 () Bool)

(assert (=> b!1412597 m!1302767))

(assert (=> b!1412597 m!1302767))

(declare-fun m!1302769 () Bool)

(assert (=> b!1412597 m!1302769))

(declare-fun m!1302771 () Bool)

(assert (=> b!1412591 m!1302771))

(assert (=> b!1412596 m!1302767))

(assert (=> b!1412596 m!1302767))

(declare-fun m!1302773 () Bool)

(assert (=> b!1412596 m!1302773))

(declare-fun m!1302775 () Bool)

(assert (=> b!1412599 m!1302775))

(assert (=> b!1412599 m!1302767))

(assert (=> b!1412599 m!1302767))

(declare-fun m!1302777 () Bool)

(assert (=> b!1412599 m!1302777))

(declare-fun m!1302779 () Bool)

(assert (=> b!1412590 m!1302779))

(assert (=> b!1412590 m!1302779))

(declare-fun m!1302781 () Bool)

(assert (=> b!1412590 m!1302781))

(declare-fun m!1302783 () Bool)

(assert (=> b!1412590 m!1302783))

(declare-fun m!1302785 () Bool)

(assert (=> b!1412590 m!1302785))

(declare-fun m!1302787 () Bool)

(assert (=> b!1412595 m!1302787))

(assert (=> b!1412592 m!1302767))

(declare-fun m!1302789 () Bool)

(assert (=> b!1412592 m!1302789))

(assert (=> b!1412592 m!1302767))

(assert (=> b!1412592 m!1302767))

(declare-fun m!1302791 () Bool)

(assert (=> b!1412592 m!1302791))

(declare-fun m!1302793 () Bool)

(assert (=> b!1412592 m!1302793))

(declare-fun m!1302795 () Bool)

(assert (=> b!1412592 m!1302795))

(declare-fun m!1302797 () Bool)

(assert (=> start!121644 m!1302797))

(declare-fun m!1302799 () Bool)

(assert (=> start!121644 m!1302799))

(declare-fun m!1302801 () Bool)

(assert (=> b!1412594 m!1302801))

(assert (=> b!1412594 m!1302801))

(declare-fun m!1302803 () Bool)

(assert (=> b!1412594 m!1302803))

(assert (=> b!1412598 m!1302783))

(declare-fun m!1302805 () Bool)

(assert (=> b!1412598 m!1302805))

(declare-fun m!1302807 () Bool)

(assert (=> b!1412598 m!1302807))

(check-sat (not b!1412596) (not b!1412594) (not b!1412590) (not b!1412599) (not b!1412595) (not b!1412597) (not b!1412591) (not start!121644) (not b!1412598) (not b!1412592))
(check-sat)
