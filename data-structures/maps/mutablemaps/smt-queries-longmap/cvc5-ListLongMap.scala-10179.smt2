; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120040 () Bool)

(assert start!120040)

(declare-fun res!935896 () Bool)

(declare-fun e!790850 () Bool)

(assert (=> start!120040 (=> (not res!935896) (not e!790850))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120040 (= res!935896 (validMask!0 mask!2840))))

(assert (=> start!120040 e!790850))

(assert (=> start!120040 true))

(declare-datatypes ((array!95487 0))(
  ( (array!95488 (arr!46093 (Array (_ BitVec 32) (_ BitVec 64))) (size!46644 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95487)

(declare-fun array_inv!35038 (array!95487) Bool)

(assert (=> start!120040 (array_inv!35038 a!2901)))

(declare-fun b!1396874 () Bool)

(declare-fun res!935902 () Bool)

(assert (=> b!1396874 (=> (not res!935902) (not e!790850))))

(declare-datatypes ((List!32792 0))(
  ( (Nil!32789) (Cons!32788 (h!34030 (_ BitVec 64)) (t!47493 List!32792)) )
))
(declare-fun arrayNoDuplicates!0 (array!95487 (_ BitVec 32) List!32792) Bool)

(assert (=> b!1396874 (= res!935902 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32789))))

(declare-fun b!1396875 () Bool)

(declare-fun e!790847 () Bool)

(assert (=> b!1396875 (= e!790850 (not e!790847))))

(declare-fun res!935904 () Bool)

(assert (=> b!1396875 (=> res!935904 e!790847)))

(declare-datatypes ((SeekEntryResult!10432 0))(
  ( (MissingZero!10432 (index!44098 (_ BitVec 32))) (Found!10432 (index!44099 (_ BitVec 32))) (Intermediate!10432 (undefined!11244 Bool) (index!44100 (_ BitVec 32)) (x!125769 (_ BitVec 32))) (Undefined!10432) (MissingVacant!10432 (index!44101 (_ BitVec 32))) )
))
(declare-fun lt!613768 () SeekEntryResult!10432)

(assert (=> b!1396875 (= res!935904 (or (not (is-Intermediate!10432 lt!613768)) (undefined!11244 lt!613768)))))

(declare-fun e!790846 () Bool)

(assert (=> b!1396875 e!790846))

(declare-fun res!935899 () Bool)

(assert (=> b!1396875 (=> (not res!935899) (not e!790846))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95487 (_ BitVec 32)) Bool)

(assert (=> b!1396875 (= res!935899 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46818 0))(
  ( (Unit!46819) )
))
(declare-fun lt!613773 () Unit!46818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95487 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46818)

(assert (=> b!1396875 (= lt!613773 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!613770 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95487 (_ BitVec 32)) SeekEntryResult!10432)

(assert (=> b!1396875 (= lt!613768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613770 (select (arr!46093 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396875 (= lt!613770 (toIndex!0 (select (arr!46093 a!2901) j!112) mask!2840))))

(declare-fun b!1396876 () Bool)

(declare-fun e!790849 () Bool)

(assert (=> b!1396876 (= e!790847 e!790849)))

(declare-fun res!935903 () Bool)

(assert (=> b!1396876 (=> res!935903 e!790849)))

(declare-fun lt!613774 () SeekEntryResult!10432)

(assert (=> b!1396876 (= res!935903 (or (= lt!613768 lt!613774) (not (is-Intermediate!10432 lt!613774)) (bvslt (x!125769 lt!613768) #b00000000000000000000000000000000) (bvsgt (x!125769 lt!613768) #b01111111111111111111111111111110) (bvslt lt!613770 #b00000000000000000000000000000000) (bvsge lt!613770 (size!46644 a!2901)) (bvslt (index!44100 lt!613768) #b00000000000000000000000000000000) (bvsge (index!44100 lt!613768) (size!46644 a!2901)) (not (= lt!613768 (Intermediate!10432 false (index!44100 lt!613768) (x!125769 lt!613768)))) (not (= lt!613774 (Intermediate!10432 (undefined!11244 lt!613774) (index!44100 lt!613774) (x!125769 lt!613774))))))))

(declare-fun lt!613769 () (_ BitVec 64))

(declare-fun lt!613771 () array!95487)

(assert (=> b!1396876 (= lt!613774 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613769 mask!2840) lt!613769 lt!613771 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396876 (= lt!613769 (select (store (arr!46093 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396876 (= lt!613771 (array!95488 (store (arr!46093 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46644 a!2901)))))

(declare-fun b!1396877 () Bool)

(assert (=> b!1396877 (= e!790849 true)))

(declare-fun lt!613772 () SeekEntryResult!10432)

(assert (=> b!1396877 (= lt!613772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613770 lt!613769 lt!613771 mask!2840))))

(declare-fun b!1396878 () Bool)

(declare-fun res!935900 () Bool)

(assert (=> b!1396878 (=> (not res!935900) (not e!790850))))

(assert (=> b!1396878 (= res!935900 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1396879 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95487 (_ BitVec 32)) SeekEntryResult!10432)

(assert (=> b!1396879 (= e!790846 (= (seekEntryOrOpen!0 (select (arr!46093 a!2901) j!112) a!2901 mask!2840) (Found!10432 j!112)))))

(declare-fun b!1396880 () Bool)

(declare-fun res!935898 () Bool)

(assert (=> b!1396880 (=> (not res!935898) (not e!790850))))

(assert (=> b!1396880 (= res!935898 (and (= (size!46644 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46644 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46644 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396881 () Bool)

(declare-fun res!935901 () Bool)

(assert (=> b!1396881 (=> (not res!935901) (not e!790850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396881 (= res!935901 (validKeyInArray!0 (select (arr!46093 a!2901) i!1037)))))

(declare-fun b!1396882 () Bool)

(declare-fun res!935897 () Bool)

(assert (=> b!1396882 (=> (not res!935897) (not e!790850))))

(assert (=> b!1396882 (= res!935897 (validKeyInArray!0 (select (arr!46093 a!2901) j!112)))))

(assert (= (and start!120040 res!935896) b!1396880))

(assert (= (and b!1396880 res!935898) b!1396881))

(assert (= (and b!1396881 res!935901) b!1396882))

(assert (= (and b!1396882 res!935897) b!1396878))

(assert (= (and b!1396878 res!935900) b!1396874))

(assert (= (and b!1396874 res!935902) b!1396875))

(assert (= (and b!1396875 res!935899) b!1396879))

(assert (= (and b!1396875 (not res!935904)) b!1396876))

(assert (= (and b!1396876 (not res!935903)) b!1396877))

(declare-fun m!1283543 () Bool)

(assert (=> b!1396881 m!1283543))

(assert (=> b!1396881 m!1283543))

(declare-fun m!1283545 () Bool)

(assert (=> b!1396881 m!1283545))

(declare-fun m!1283547 () Bool)

(assert (=> b!1396876 m!1283547))

(assert (=> b!1396876 m!1283547))

(declare-fun m!1283549 () Bool)

(assert (=> b!1396876 m!1283549))

(declare-fun m!1283551 () Bool)

(assert (=> b!1396876 m!1283551))

(declare-fun m!1283553 () Bool)

(assert (=> b!1396876 m!1283553))

(declare-fun m!1283555 () Bool)

(assert (=> b!1396874 m!1283555))

(declare-fun m!1283557 () Bool)

(assert (=> start!120040 m!1283557))

(declare-fun m!1283559 () Bool)

(assert (=> start!120040 m!1283559))

(declare-fun m!1283561 () Bool)

(assert (=> b!1396879 m!1283561))

(assert (=> b!1396879 m!1283561))

(declare-fun m!1283563 () Bool)

(assert (=> b!1396879 m!1283563))

(assert (=> b!1396882 m!1283561))

(assert (=> b!1396882 m!1283561))

(declare-fun m!1283565 () Bool)

(assert (=> b!1396882 m!1283565))

(declare-fun m!1283567 () Bool)

(assert (=> b!1396878 m!1283567))

(assert (=> b!1396875 m!1283561))

(declare-fun m!1283569 () Bool)

(assert (=> b!1396875 m!1283569))

(assert (=> b!1396875 m!1283561))

(declare-fun m!1283571 () Bool)

(assert (=> b!1396875 m!1283571))

(declare-fun m!1283573 () Bool)

(assert (=> b!1396875 m!1283573))

(assert (=> b!1396875 m!1283561))

(declare-fun m!1283575 () Bool)

(assert (=> b!1396875 m!1283575))

(declare-fun m!1283577 () Bool)

(assert (=> b!1396877 m!1283577))

(push 1)

