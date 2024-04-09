; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120028 () Bool)

(assert start!120028)

(declare-fun b!1396712 () Bool)

(declare-fun e!790757 () Bool)

(declare-fun e!790758 () Bool)

(assert (=> b!1396712 (= e!790757 (not e!790758))))

(declare-fun res!935736 () Bool)

(assert (=> b!1396712 (=> res!935736 e!790758)))

(declare-datatypes ((SeekEntryResult!10426 0))(
  ( (MissingZero!10426 (index!44074 (_ BitVec 32))) (Found!10426 (index!44075 (_ BitVec 32))) (Intermediate!10426 (undefined!11238 Bool) (index!44076 (_ BitVec 32)) (x!125747 (_ BitVec 32))) (Undefined!10426) (MissingVacant!10426 (index!44077 (_ BitVec 32))) )
))
(declare-fun lt!613647 () SeekEntryResult!10426)

(assert (=> b!1396712 (= res!935736 (or (not (is-Intermediate!10426 lt!613647)) (undefined!11238 lt!613647)))))

(declare-fun e!790760 () Bool)

(assert (=> b!1396712 e!790760))

(declare-fun res!935737 () Bool)

(assert (=> b!1396712 (=> (not res!935737) (not e!790760))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95475 0))(
  ( (array!95476 (arr!46087 (Array (_ BitVec 32) (_ BitVec 64))) (size!46638 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95475)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95475 (_ BitVec 32)) Bool)

(assert (=> b!1396712 (= res!935737 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46806 0))(
  ( (Unit!46807) )
))
(declare-fun lt!613643 () Unit!46806)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95475 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46806)

(assert (=> b!1396712 (= lt!613643 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613644 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95475 (_ BitVec 32)) SeekEntryResult!10426)

(assert (=> b!1396712 (= lt!613647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613644 (select (arr!46087 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396712 (= lt!613644 (toIndex!0 (select (arr!46087 a!2901) j!112) mask!2840))))

(declare-fun b!1396713 () Bool)

(declare-fun res!935738 () Bool)

(assert (=> b!1396713 (=> (not res!935738) (not e!790757))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396713 (= res!935738 (validKeyInArray!0 (select (arr!46087 a!2901) j!112)))))

(declare-fun b!1396714 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95475 (_ BitVec 32)) SeekEntryResult!10426)

(assert (=> b!1396714 (= e!790760 (= (seekEntryOrOpen!0 (select (arr!46087 a!2901) j!112) a!2901 mask!2840) (Found!10426 j!112)))))

(declare-fun b!1396715 () Bool)

(declare-fun res!935734 () Bool)

(assert (=> b!1396715 (=> (not res!935734) (not e!790757))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396715 (= res!935734 (validKeyInArray!0 (select (arr!46087 a!2901) i!1037)))))

(declare-fun b!1396716 () Bool)

(declare-fun res!935741 () Bool)

(assert (=> b!1396716 (=> (not res!935741) (not e!790757))))

(assert (=> b!1396716 (= res!935741 (and (= (size!46638 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46638 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46638 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396717 () Bool)

(declare-fun res!935742 () Bool)

(assert (=> b!1396717 (=> (not res!935742) (not e!790757))))

(declare-datatypes ((List!32786 0))(
  ( (Nil!32783) (Cons!32782 (h!34024 (_ BitVec 64)) (t!47487 List!32786)) )
))
(declare-fun arrayNoDuplicates!0 (array!95475 (_ BitVec 32) List!32786) Bool)

(assert (=> b!1396717 (= res!935742 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32783))))

(declare-fun b!1396718 () Bool)

(declare-fun e!790756 () Bool)

(assert (=> b!1396718 (= e!790756 true)))

(declare-fun lt!613648 () (_ BitVec 64))

(declare-fun lt!613646 () SeekEntryResult!10426)

(declare-fun lt!613645 () array!95475)

(assert (=> b!1396718 (= lt!613646 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613644 lt!613648 lt!613645 mask!2840))))

(declare-fun b!1396719 () Bool)

(assert (=> b!1396719 (= e!790758 e!790756)))

(declare-fun res!935740 () Bool)

(assert (=> b!1396719 (=> res!935740 e!790756)))

(declare-fun lt!613642 () SeekEntryResult!10426)

(assert (=> b!1396719 (= res!935740 (or (= lt!613647 lt!613642) (not (is-Intermediate!10426 lt!613642)) (bvslt (x!125747 lt!613647) #b00000000000000000000000000000000) (bvsgt (x!125747 lt!613647) #b01111111111111111111111111111110) (bvslt lt!613644 #b00000000000000000000000000000000) (bvsge lt!613644 (size!46638 a!2901)) (bvslt (index!44076 lt!613647) #b00000000000000000000000000000000) (bvsge (index!44076 lt!613647) (size!46638 a!2901)) (not (= lt!613647 (Intermediate!10426 false (index!44076 lt!613647) (x!125747 lt!613647)))) (not (= lt!613642 (Intermediate!10426 (undefined!11238 lt!613642) (index!44076 lt!613642) (x!125747 lt!613642))))))))

(assert (=> b!1396719 (= lt!613642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613648 mask!2840) lt!613648 lt!613645 mask!2840))))

(assert (=> b!1396719 (= lt!613648 (select (store (arr!46087 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396719 (= lt!613645 (array!95476 (store (arr!46087 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46638 a!2901)))))

(declare-fun b!1396720 () Bool)

(declare-fun res!935735 () Bool)

(assert (=> b!1396720 (=> (not res!935735) (not e!790757))))

(assert (=> b!1396720 (= res!935735 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!935739 () Bool)

(assert (=> start!120028 (=> (not res!935739) (not e!790757))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120028 (= res!935739 (validMask!0 mask!2840))))

(assert (=> start!120028 e!790757))

(assert (=> start!120028 true))

(declare-fun array_inv!35032 (array!95475) Bool)

(assert (=> start!120028 (array_inv!35032 a!2901)))

(assert (= (and start!120028 res!935739) b!1396716))

(assert (= (and b!1396716 res!935741) b!1396715))

(assert (= (and b!1396715 res!935734) b!1396713))

(assert (= (and b!1396713 res!935738) b!1396720))

(assert (= (and b!1396720 res!935735) b!1396717))

(assert (= (and b!1396717 res!935742) b!1396712))

(assert (= (and b!1396712 res!935737) b!1396714))

(assert (= (and b!1396712 (not res!935736)) b!1396719))

(assert (= (and b!1396719 (not res!935740)) b!1396718))

(declare-fun m!1283327 () Bool)

(assert (=> b!1396720 m!1283327))

(declare-fun m!1283329 () Bool)

(assert (=> b!1396712 m!1283329))

(declare-fun m!1283331 () Bool)

(assert (=> b!1396712 m!1283331))

(assert (=> b!1396712 m!1283329))

(declare-fun m!1283333 () Bool)

(assert (=> b!1396712 m!1283333))

(assert (=> b!1396712 m!1283329))

(declare-fun m!1283335 () Bool)

(assert (=> b!1396712 m!1283335))

(declare-fun m!1283337 () Bool)

(assert (=> b!1396712 m!1283337))

(declare-fun m!1283339 () Bool)

(assert (=> b!1396717 m!1283339))

(declare-fun m!1283341 () Bool)

(assert (=> b!1396715 m!1283341))

(assert (=> b!1396715 m!1283341))

(declare-fun m!1283343 () Bool)

(assert (=> b!1396715 m!1283343))

(declare-fun m!1283345 () Bool)

(assert (=> b!1396719 m!1283345))

(assert (=> b!1396719 m!1283345))

(declare-fun m!1283347 () Bool)

(assert (=> b!1396719 m!1283347))

(declare-fun m!1283349 () Bool)

(assert (=> b!1396719 m!1283349))

(declare-fun m!1283351 () Bool)

(assert (=> b!1396719 m!1283351))

(declare-fun m!1283353 () Bool)

(assert (=> start!120028 m!1283353))

(declare-fun m!1283355 () Bool)

(assert (=> start!120028 m!1283355))

(assert (=> b!1396713 m!1283329))

(assert (=> b!1396713 m!1283329))

(declare-fun m!1283357 () Bool)

(assert (=> b!1396713 m!1283357))

(assert (=> b!1396714 m!1283329))

(assert (=> b!1396714 m!1283329))

(declare-fun m!1283359 () Bool)

(assert (=> b!1396714 m!1283359))

(declare-fun m!1283361 () Bool)

(assert (=> b!1396718 m!1283361))

(push 1)

