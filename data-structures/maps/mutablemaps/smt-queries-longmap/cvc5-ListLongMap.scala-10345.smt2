; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121660 () Bool)

(assert start!121660)

(declare-fun b!1412830 () Bool)

(declare-fun res!949930 () Bool)

(declare-fun e!799573 () Bool)

(assert (=> b!1412830 (=> (not res!949930) (not e!799573))))

(declare-datatypes ((array!96516 0))(
  ( (array!96517 (arr!46591 (Array (_ BitVec 32) (_ BitVec 64))) (size!47142 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96516)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1412830 (= res!949930 (validKeyInArray!0 (select (arr!46591 a!2901) j!112)))))

(declare-fun lt!622612 () (_ BitVec 64))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10924 0))(
  ( (MissingZero!10924 (index!46075 (_ BitVec 32))) (Found!10924 (index!46076 (_ BitVec 32))) (Intermediate!10924 (undefined!11736 Bool) (index!46077 (_ BitVec 32)) (x!127670 (_ BitVec 32))) (Undefined!10924) (MissingVacant!10924 (index!46078 (_ BitVec 32))) )
))
(declare-fun lt!622611 () SeekEntryResult!10924)

(declare-fun e!799574 () Bool)

(declare-fun lt!622606 () array!96516)

(declare-fun b!1412831 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96516 (_ BitVec 32)) SeekEntryResult!10924)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96516 (_ BitVec 32)) SeekEntryResult!10924)

(assert (=> b!1412831 (= e!799574 (= (seekEntryOrOpen!0 lt!622612 lt!622606 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!127670 lt!622611) (index!46077 lt!622611) (index!46077 lt!622611) (select (arr!46591 a!2901) j!112) lt!622606 mask!2840)))))

(declare-fun b!1412832 () Bool)

(declare-fun res!949934 () Bool)

(assert (=> b!1412832 (=> (not res!949934) (not e!799573))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1412832 (= res!949934 (validKeyInArray!0 (select (arr!46591 a!2901) i!1037)))))

(declare-fun b!1412833 () Bool)

(declare-fun res!949932 () Bool)

(assert (=> b!1412833 (=> (not res!949932) (not e!799573))))

(declare-datatypes ((List!33290 0))(
  ( (Nil!33287) (Cons!33286 (h!34561 (_ BitVec 64)) (t!47991 List!33290)) )
))
(declare-fun arrayNoDuplicates!0 (array!96516 (_ BitVec 32) List!33290) Bool)

(assert (=> b!1412833 (= res!949932 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33287))))

(declare-fun b!1412834 () Bool)

(declare-fun e!799572 () Bool)

(assert (=> b!1412834 (= e!799573 (not e!799572))))

(declare-fun res!949936 () Bool)

(assert (=> b!1412834 (=> res!949936 e!799572)))

(declare-fun lt!622610 () SeekEntryResult!10924)

(assert (=> b!1412834 (= res!949936 (or (not (is-Intermediate!10924 lt!622610)) (undefined!11736 lt!622610)))))

(declare-fun e!799570 () Bool)

(assert (=> b!1412834 e!799570))

(declare-fun res!949938 () Bool)

(assert (=> b!1412834 (=> (not res!949938) (not e!799570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96516 (_ BitVec 32)) Bool)

(assert (=> b!1412834 (= res!949938 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47772 0))(
  ( (Unit!47773) )
))
(declare-fun lt!622608 () Unit!47772)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47772)

(assert (=> b!1412834 (= lt!622608 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!622607 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96516 (_ BitVec 32)) SeekEntryResult!10924)

(assert (=> b!1412834 (= lt!622610 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!622607 (select (arr!46591 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1412834 (= lt!622607 (toIndex!0 (select (arr!46591 a!2901) j!112) mask!2840))))

(declare-fun b!1412835 () Bool)

(assert (=> b!1412835 (= e!799570 (= (seekEntryOrOpen!0 (select (arr!46591 a!2901) j!112) a!2901 mask!2840) (Found!10924 j!112)))))

(declare-fun b!1412836 () Bool)

(declare-fun e!799569 () Bool)

(assert (=> b!1412836 (= e!799569 true)))

(assert (=> b!1412836 e!799574))

(declare-fun res!949937 () Bool)

(assert (=> b!1412836 (=> (not res!949937) (not e!799574))))

(assert (=> b!1412836 (= res!949937 (and (not (undefined!11736 lt!622611)) (= (index!46077 lt!622611) i!1037) (bvslt (x!127670 lt!622611) (x!127670 lt!622610)) (= (select (store (arr!46591 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46077 lt!622611)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!622609 () Unit!47772)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96516 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47772)

(assert (=> b!1412836 (= lt!622609 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!622607 (x!127670 lt!622610) (index!46077 lt!622610) (x!127670 lt!622611) (index!46077 lt!622611) (undefined!11736 lt!622611) mask!2840))))

(declare-fun res!949935 () Bool)

(assert (=> start!121660 (=> (not res!949935) (not e!799573))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121660 (= res!949935 (validMask!0 mask!2840))))

(assert (=> start!121660 e!799573))

(assert (=> start!121660 true))

(declare-fun array_inv!35536 (array!96516) Bool)

(assert (=> start!121660 (array_inv!35536 a!2901)))

(declare-fun b!1412837 () Bool)

(declare-fun res!949929 () Bool)

(assert (=> b!1412837 (=> (not res!949929) (not e!799573))))

(assert (=> b!1412837 (= res!949929 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1412838 () Bool)

(declare-fun res!949931 () Bool)

(assert (=> b!1412838 (=> (not res!949931) (not e!799573))))

(assert (=> b!1412838 (= res!949931 (and (= (size!47142 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47142 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47142 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1412839 () Bool)

(assert (=> b!1412839 (= e!799572 e!799569)))

(declare-fun res!949933 () Bool)

(assert (=> b!1412839 (=> res!949933 e!799569)))

(assert (=> b!1412839 (= res!949933 (or (= lt!622610 lt!622611) (not (is-Intermediate!10924 lt!622611))))))

(assert (=> b!1412839 (= lt!622611 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!622612 mask!2840) lt!622612 lt!622606 mask!2840))))

(assert (=> b!1412839 (= lt!622612 (select (store (arr!46591 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1412839 (= lt!622606 (array!96517 (store (arr!46591 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47142 a!2901)))))

(assert (= (and start!121660 res!949935) b!1412838))

(assert (= (and b!1412838 res!949931) b!1412832))

(assert (= (and b!1412832 res!949934) b!1412830))

(assert (= (and b!1412830 res!949930) b!1412837))

(assert (= (and b!1412837 res!949929) b!1412833))

(assert (= (and b!1412833 res!949932) b!1412834))

(assert (= (and b!1412834 res!949938) b!1412835))

(assert (= (and b!1412834 (not res!949936)) b!1412839))

(assert (= (and b!1412839 (not res!949933)) b!1412836))

(assert (= (and b!1412836 res!949937) b!1412831))

(declare-fun m!1303103 () Bool)

(assert (=> b!1412835 m!1303103))

(assert (=> b!1412835 m!1303103))

(declare-fun m!1303105 () Bool)

(assert (=> b!1412835 m!1303105))

(declare-fun m!1303107 () Bool)

(assert (=> b!1412839 m!1303107))

(assert (=> b!1412839 m!1303107))

(declare-fun m!1303109 () Bool)

(assert (=> b!1412839 m!1303109))

(declare-fun m!1303111 () Bool)

(assert (=> b!1412839 m!1303111))

(declare-fun m!1303113 () Bool)

(assert (=> b!1412839 m!1303113))

(declare-fun m!1303115 () Bool)

(assert (=> b!1412833 m!1303115))

(declare-fun m!1303117 () Bool)

(assert (=> b!1412832 m!1303117))

(assert (=> b!1412832 m!1303117))

(declare-fun m!1303119 () Bool)

(assert (=> b!1412832 m!1303119))

(assert (=> b!1412836 m!1303111))

(declare-fun m!1303121 () Bool)

(assert (=> b!1412836 m!1303121))

(declare-fun m!1303123 () Bool)

(assert (=> b!1412836 m!1303123))

(assert (=> b!1412830 m!1303103))

(assert (=> b!1412830 m!1303103))

(declare-fun m!1303125 () Bool)

(assert (=> b!1412830 m!1303125))

(assert (=> b!1412834 m!1303103))

(declare-fun m!1303127 () Bool)

(assert (=> b!1412834 m!1303127))

(declare-fun m!1303129 () Bool)

(assert (=> b!1412834 m!1303129))

(declare-fun m!1303131 () Bool)

(assert (=> b!1412834 m!1303131))

(assert (=> b!1412834 m!1303103))

(declare-fun m!1303133 () Bool)

(assert (=> b!1412834 m!1303133))

(assert (=> b!1412834 m!1303103))

(declare-fun m!1303135 () Bool)

(assert (=> b!1412837 m!1303135))

(declare-fun m!1303137 () Bool)

(assert (=> b!1412831 m!1303137))

(assert (=> b!1412831 m!1303103))

(assert (=> b!1412831 m!1303103))

(declare-fun m!1303139 () Bool)

(assert (=> b!1412831 m!1303139))

(declare-fun m!1303141 () Bool)

(assert (=> start!121660 m!1303141))

(declare-fun m!1303143 () Bool)

(assert (=> start!121660 m!1303143))

(push 1)

