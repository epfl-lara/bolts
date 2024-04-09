; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120106 () Bool)

(assert start!120106)

(declare-fun b!1397765 () Bool)

(declare-fun res!936788 () Bool)

(declare-fun e!791345 () Bool)

(assert (=> b!1397765 (=> (not res!936788) (not e!791345))))

(declare-datatypes ((array!95553 0))(
  ( (array!95554 (arr!46126 (Array (_ BitVec 32) (_ BitVec 64))) (size!46677 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95553)

(declare-datatypes ((List!32825 0))(
  ( (Nil!32822) (Cons!32821 (h!34063 (_ BitVec 64)) (t!47526 List!32825)) )
))
(declare-fun arrayNoDuplicates!0 (array!95553 (_ BitVec 32) List!32825) Bool)

(assert (=> b!1397765 (= res!936788 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32822))))

(declare-fun b!1397766 () Bool)

(declare-fun res!936790 () Bool)

(assert (=> b!1397766 (=> (not res!936790) (not e!791345))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397766 (= res!936790 (and (= (size!46677 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46677 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46677 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397767 () Bool)

(declare-fun res!936795 () Bool)

(assert (=> b!1397767 (=> (not res!936795) (not e!791345))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397767 (= res!936795 (validKeyInArray!0 (select (arr!46126 a!2901) j!112)))))

(declare-fun res!936787 () Bool)

(assert (=> start!120106 (=> (not res!936787) (not e!791345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120106 (= res!936787 (validMask!0 mask!2840))))

(assert (=> start!120106 e!791345))

(assert (=> start!120106 true))

(declare-fun array_inv!35071 (array!95553) Bool)

(assert (=> start!120106 (array_inv!35071 a!2901)))

(declare-fun b!1397768 () Bool)

(declare-fun e!791342 () Bool)

(assert (=> b!1397768 (= e!791342 true)))

(declare-fun lt!614463 () array!95553)

(declare-datatypes ((SeekEntryResult!10465 0))(
  ( (MissingZero!10465 (index!44230 (_ BitVec 32))) (Found!10465 (index!44231 (_ BitVec 32))) (Intermediate!10465 (undefined!11277 Bool) (index!44232 (_ BitVec 32)) (x!125890 (_ BitVec 32))) (Undefined!10465) (MissingVacant!10465 (index!44233 (_ BitVec 32))) )
))
(declare-fun lt!614462 () SeekEntryResult!10465)

(declare-fun lt!614461 () (_ BitVec 32))

(declare-fun lt!614467 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95553 (_ BitVec 32)) SeekEntryResult!10465)

(assert (=> b!1397768 (= lt!614462 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614461 lt!614467 lt!614463 mask!2840))))

(declare-fun b!1397769 () Bool)

(declare-fun e!791343 () Bool)

(assert (=> b!1397769 (= e!791343 e!791342)))

(declare-fun res!936791 () Bool)

(assert (=> b!1397769 (=> res!936791 e!791342)))

(declare-fun lt!614466 () SeekEntryResult!10465)

(declare-fun lt!614465 () SeekEntryResult!10465)

(assert (=> b!1397769 (= res!936791 (or (= lt!614466 lt!614465) (not (is-Intermediate!10465 lt!614465)) (bvslt (x!125890 lt!614466) #b00000000000000000000000000000000) (bvsgt (x!125890 lt!614466) #b01111111111111111111111111111110) (bvslt lt!614461 #b00000000000000000000000000000000) (bvsge lt!614461 (size!46677 a!2901)) (bvslt (index!44232 lt!614466) #b00000000000000000000000000000000) (bvsge (index!44232 lt!614466) (size!46677 a!2901)) (not (= lt!614466 (Intermediate!10465 false (index!44232 lt!614466) (x!125890 lt!614466)))) (not (= lt!614465 (Intermediate!10465 (undefined!11277 lt!614465) (index!44232 lt!614465) (x!125890 lt!614465))))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397769 (= lt!614465 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614467 mask!2840) lt!614467 lt!614463 mask!2840))))

(assert (=> b!1397769 (= lt!614467 (select (store (arr!46126 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397769 (= lt!614463 (array!95554 (store (arr!46126 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46677 a!2901)))))

(declare-fun b!1397770 () Bool)

(declare-fun res!936792 () Bool)

(assert (=> b!1397770 (=> (not res!936792) (not e!791345))))

(assert (=> b!1397770 (= res!936792 (validKeyInArray!0 (select (arr!46126 a!2901) i!1037)))))

(declare-fun b!1397771 () Bool)

(assert (=> b!1397771 (= e!791345 (not e!791343))))

(declare-fun res!936794 () Bool)

(assert (=> b!1397771 (=> res!936794 e!791343)))

(assert (=> b!1397771 (= res!936794 (or (not (is-Intermediate!10465 lt!614466)) (undefined!11277 lt!614466)))))

(declare-fun e!791344 () Bool)

(assert (=> b!1397771 e!791344))

(declare-fun res!936793 () Bool)

(assert (=> b!1397771 (=> (not res!936793) (not e!791344))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95553 (_ BitVec 32)) Bool)

(assert (=> b!1397771 (= res!936793 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46884 0))(
  ( (Unit!46885) )
))
(declare-fun lt!614464 () Unit!46884)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95553 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46884)

(assert (=> b!1397771 (= lt!614464 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397771 (= lt!614466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614461 (select (arr!46126 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1397771 (= lt!614461 (toIndex!0 (select (arr!46126 a!2901) j!112) mask!2840))))

(declare-fun b!1397772 () Bool)

(declare-fun res!936789 () Bool)

(assert (=> b!1397772 (=> (not res!936789) (not e!791345))))

(assert (=> b!1397772 (= res!936789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397773 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95553 (_ BitVec 32)) SeekEntryResult!10465)

(assert (=> b!1397773 (= e!791344 (= (seekEntryOrOpen!0 (select (arr!46126 a!2901) j!112) a!2901 mask!2840) (Found!10465 j!112)))))

(assert (= (and start!120106 res!936787) b!1397766))

(assert (= (and b!1397766 res!936790) b!1397770))

(assert (= (and b!1397770 res!936792) b!1397767))

(assert (= (and b!1397767 res!936795) b!1397772))

(assert (= (and b!1397772 res!936789) b!1397765))

(assert (= (and b!1397765 res!936788) b!1397771))

(assert (= (and b!1397771 res!936793) b!1397773))

(assert (= (and b!1397771 (not res!936794)) b!1397769))

(assert (= (and b!1397769 (not res!936791)) b!1397768))

(declare-fun m!1284731 () Bool)

(assert (=> b!1397771 m!1284731))

(declare-fun m!1284733 () Bool)

(assert (=> b!1397771 m!1284733))

(assert (=> b!1397771 m!1284731))

(assert (=> b!1397771 m!1284731))

(declare-fun m!1284735 () Bool)

(assert (=> b!1397771 m!1284735))

(declare-fun m!1284737 () Bool)

(assert (=> b!1397771 m!1284737))

(declare-fun m!1284739 () Bool)

(assert (=> b!1397771 m!1284739))

(declare-fun m!1284741 () Bool)

(assert (=> b!1397765 m!1284741))

(declare-fun m!1284743 () Bool)

(assert (=> b!1397770 m!1284743))

(assert (=> b!1397770 m!1284743))

(declare-fun m!1284745 () Bool)

(assert (=> b!1397770 m!1284745))

(declare-fun m!1284747 () Bool)

(assert (=> b!1397768 m!1284747))

(assert (=> b!1397767 m!1284731))

(assert (=> b!1397767 m!1284731))

(declare-fun m!1284749 () Bool)

(assert (=> b!1397767 m!1284749))

(declare-fun m!1284751 () Bool)

(assert (=> b!1397772 m!1284751))

(declare-fun m!1284753 () Bool)

(assert (=> b!1397769 m!1284753))

(assert (=> b!1397769 m!1284753))

(declare-fun m!1284755 () Bool)

(assert (=> b!1397769 m!1284755))

(declare-fun m!1284757 () Bool)

(assert (=> b!1397769 m!1284757))

(declare-fun m!1284759 () Bool)

(assert (=> b!1397769 m!1284759))

(declare-fun m!1284761 () Bool)

(assert (=> start!120106 m!1284761))

(declare-fun m!1284763 () Bool)

(assert (=> start!120106 m!1284763))

(assert (=> b!1397773 m!1284731))

(assert (=> b!1397773 m!1284731))

(declare-fun m!1284765 () Bool)

(assert (=> b!1397773 m!1284765))

(push 1)

