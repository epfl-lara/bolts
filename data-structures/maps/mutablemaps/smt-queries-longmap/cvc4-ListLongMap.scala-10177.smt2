; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120032 () Bool)

(assert start!120032)

(declare-fun b!1396766 () Bool)

(declare-fun res!935791 () Bool)

(declare-fun e!790789 () Bool)

(assert (=> b!1396766 (=> (not res!935791) (not e!790789))))

(declare-datatypes ((array!95479 0))(
  ( (array!95480 (arr!46089 (Array (_ BitVec 32) (_ BitVec 64))) (size!46640 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95479)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396766 (= res!935791 (validKeyInArray!0 (select (arr!46089 a!2901) i!1037)))))

(declare-fun b!1396767 () Bool)

(declare-fun res!935788 () Bool)

(assert (=> b!1396767 (=> (not res!935788) (not e!790789))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1396767 (= res!935788 (validKeyInArray!0 (select (arr!46089 a!2901) j!112)))))

(declare-fun b!1396768 () Bool)

(declare-fun res!935794 () Bool)

(assert (=> b!1396768 (=> (not res!935794) (not e!790789))))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1396768 (= res!935794 (and (= (size!46640 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46640 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46640 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396769 () Bool)

(declare-fun e!790790 () Bool)

(declare-fun e!790786 () Bool)

(assert (=> b!1396769 (= e!790790 e!790786)))

(declare-fun res!935789 () Bool)

(assert (=> b!1396769 (=> res!935789 e!790786)))

(declare-datatypes ((SeekEntryResult!10428 0))(
  ( (MissingZero!10428 (index!44082 (_ BitVec 32))) (Found!10428 (index!44083 (_ BitVec 32))) (Intermediate!10428 (undefined!11240 Bool) (index!44084 (_ BitVec 32)) (x!125749 (_ BitVec 32))) (Undefined!10428) (MissingVacant!10428 (index!44085 (_ BitVec 32))) )
))
(declare-fun lt!613689 () SeekEntryResult!10428)

(declare-fun lt!613688 () (_ BitVec 32))

(declare-fun lt!613685 () SeekEntryResult!10428)

(assert (=> b!1396769 (= res!935789 (or (= lt!613685 lt!613689) (not (is-Intermediate!10428 lt!613689)) (bvslt (x!125749 lt!613685) #b00000000000000000000000000000000) (bvsgt (x!125749 lt!613685) #b01111111111111111111111111111110) (bvslt lt!613688 #b00000000000000000000000000000000) (bvsge lt!613688 (size!46640 a!2901)) (bvslt (index!44084 lt!613685) #b00000000000000000000000000000000) (bvsge (index!44084 lt!613685) (size!46640 a!2901)) (not (= lt!613685 (Intermediate!10428 false (index!44084 lt!613685) (x!125749 lt!613685)))) (not (= lt!613689 (Intermediate!10428 (undefined!11240 lt!613689) (index!44084 lt!613689) (x!125749 lt!613689))))))))

(declare-fun lt!613690 () array!95479)

(declare-fun lt!613687 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95479 (_ BitVec 32)) SeekEntryResult!10428)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396769 (= lt!613689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613687 mask!2840) lt!613687 lt!613690 mask!2840))))

(assert (=> b!1396769 (= lt!613687 (select (store (arr!46089 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396769 (= lt!613690 (array!95480 (store (arr!46089 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46640 a!2901)))))

(declare-fun b!1396770 () Bool)

(assert (=> b!1396770 (= e!790789 (not e!790790))))

(declare-fun res!935790 () Bool)

(assert (=> b!1396770 (=> res!935790 e!790790)))

(assert (=> b!1396770 (= res!935790 (or (not (is-Intermediate!10428 lt!613685)) (undefined!11240 lt!613685)))))

(declare-fun e!790787 () Bool)

(assert (=> b!1396770 e!790787))

(declare-fun res!935796 () Bool)

(assert (=> b!1396770 (=> (not res!935796) (not e!790787))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95479 (_ BitVec 32)) Bool)

(assert (=> b!1396770 (= res!935796 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46810 0))(
  ( (Unit!46811) )
))
(declare-fun lt!613686 () Unit!46810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95479 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46810)

(assert (=> b!1396770 (= lt!613686 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396770 (= lt!613685 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613688 (select (arr!46089 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396770 (= lt!613688 (toIndex!0 (select (arr!46089 a!2901) j!112) mask!2840))))

(declare-fun b!1396771 () Bool)

(declare-fun res!935792 () Bool)

(assert (=> b!1396771 (=> (not res!935792) (not e!790789))))

(assert (=> b!1396771 (= res!935792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396772 () Bool)

(declare-fun res!935793 () Bool)

(assert (=> b!1396772 (=> (not res!935793) (not e!790789))))

(declare-datatypes ((List!32788 0))(
  ( (Nil!32785) (Cons!32784 (h!34026 (_ BitVec 64)) (t!47489 List!32788)) )
))
(declare-fun arrayNoDuplicates!0 (array!95479 (_ BitVec 32) List!32788) Bool)

(assert (=> b!1396772 (= res!935793 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32785))))

(declare-fun b!1396773 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95479 (_ BitVec 32)) SeekEntryResult!10428)

(assert (=> b!1396773 (= e!790787 (= (seekEntryOrOpen!0 (select (arr!46089 a!2901) j!112) a!2901 mask!2840) (Found!10428 j!112)))))

(declare-fun res!935795 () Bool)

(assert (=> start!120032 (=> (not res!935795) (not e!790789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120032 (= res!935795 (validMask!0 mask!2840))))

(assert (=> start!120032 e!790789))

(assert (=> start!120032 true))

(declare-fun array_inv!35034 (array!95479) Bool)

(assert (=> start!120032 (array_inv!35034 a!2901)))

(declare-fun b!1396774 () Bool)

(assert (=> b!1396774 (= e!790786 true)))

(declare-fun lt!613684 () SeekEntryResult!10428)

(assert (=> b!1396774 (= lt!613684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613688 lt!613687 lt!613690 mask!2840))))

(assert (= (and start!120032 res!935795) b!1396768))

(assert (= (and b!1396768 res!935794) b!1396766))

(assert (= (and b!1396766 res!935791) b!1396767))

(assert (= (and b!1396767 res!935788) b!1396771))

(assert (= (and b!1396771 res!935792) b!1396772))

(assert (= (and b!1396772 res!935793) b!1396770))

(assert (= (and b!1396770 res!935796) b!1396773))

(assert (= (and b!1396770 (not res!935790)) b!1396769))

(assert (= (and b!1396769 (not res!935789)) b!1396774))

(declare-fun m!1283399 () Bool)

(assert (=> b!1396774 m!1283399))

(declare-fun m!1283401 () Bool)

(assert (=> b!1396773 m!1283401))

(assert (=> b!1396773 m!1283401))

(declare-fun m!1283403 () Bool)

(assert (=> b!1396773 m!1283403))

(assert (=> b!1396770 m!1283401))

(declare-fun m!1283405 () Bool)

(assert (=> b!1396770 m!1283405))

(assert (=> b!1396770 m!1283401))

(assert (=> b!1396770 m!1283401))

(declare-fun m!1283407 () Bool)

(assert (=> b!1396770 m!1283407))

(declare-fun m!1283409 () Bool)

(assert (=> b!1396770 m!1283409))

(declare-fun m!1283411 () Bool)

(assert (=> b!1396770 m!1283411))

(declare-fun m!1283413 () Bool)

(assert (=> b!1396772 m!1283413))

(assert (=> b!1396767 m!1283401))

(assert (=> b!1396767 m!1283401))

(declare-fun m!1283415 () Bool)

(assert (=> b!1396767 m!1283415))

(declare-fun m!1283417 () Bool)

(assert (=> b!1396771 m!1283417))

(declare-fun m!1283419 () Bool)

(assert (=> start!120032 m!1283419))

(declare-fun m!1283421 () Bool)

(assert (=> start!120032 m!1283421))

(declare-fun m!1283423 () Bool)

(assert (=> b!1396766 m!1283423))

(assert (=> b!1396766 m!1283423))

(declare-fun m!1283425 () Bool)

(assert (=> b!1396766 m!1283425))

(declare-fun m!1283427 () Bool)

(assert (=> b!1396769 m!1283427))

(assert (=> b!1396769 m!1283427))

(declare-fun m!1283429 () Bool)

(assert (=> b!1396769 m!1283429))

(declare-fun m!1283431 () Bool)

(assert (=> b!1396769 m!1283431))

(declare-fun m!1283433 () Bool)

(assert (=> b!1396769 m!1283433))

(push 1)

