; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119858 () Bool)

(assert start!119858)

(declare-fun b!1395384 () Bool)

(declare-fun res!934743 () Bool)

(declare-fun e!790003 () Bool)

(assert (=> b!1395384 (=> (not res!934743) (not e!790003))))

(declare-datatypes ((array!95407 0))(
  ( (array!95408 (arr!46056 (Array (_ BitVec 32) (_ BitVec 64))) (size!46607 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95407)

(declare-datatypes ((List!32755 0))(
  ( (Nil!32752) (Cons!32751 (h!33987 (_ BitVec 64)) (t!47456 List!32755)) )
))
(declare-fun arrayNoDuplicates!0 (array!95407 (_ BitVec 32) List!32755) Bool)

(assert (=> b!1395384 (= res!934743 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32752))))

(declare-fun b!1395385 () Bool)

(declare-fun res!934739 () Bool)

(assert (=> b!1395385 (=> (not res!934739) (not e!790003))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395385 (= res!934739 (validKeyInArray!0 (select (arr!46056 a!2901) i!1037)))))

(declare-fun b!1395386 () Bool)

(declare-fun res!934742 () Bool)

(assert (=> b!1395386 (=> (not res!934742) (not e!790003))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1395386 (= res!934742 (validKeyInArray!0 (select (arr!46056 a!2901) j!112)))))

(declare-fun b!1395387 () Bool)

(declare-fun e!790001 () Bool)

(assert (=> b!1395387 (= e!790001 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10395 0))(
  ( (MissingZero!10395 (index!43950 (_ BitVec 32))) (Found!10395 (index!43951 (_ BitVec 32))) (Intermediate!10395 (undefined!11207 Bool) (index!43952 (_ BitVec 32)) (x!125616 (_ BitVec 32))) (Undefined!10395) (MissingVacant!10395 (index!43953 (_ BitVec 32))) )
))
(declare-fun lt!612935 () SeekEntryResult!10395)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95407 (_ BitVec 32)) SeekEntryResult!10395)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395387 (= lt!612935 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46056 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46056 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95408 (store (arr!46056 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46607 a!2901)) mask!2840))))

(declare-fun b!1395388 () Bool)

(declare-fun res!934737 () Bool)

(assert (=> b!1395388 (=> (not res!934737) (not e!790003))))

(assert (=> b!1395388 (= res!934737 (and (= (size!46607 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46607 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46607 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!934740 () Bool)

(assert (=> start!119858 (=> (not res!934740) (not e!790003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119858 (= res!934740 (validMask!0 mask!2840))))

(assert (=> start!119858 e!790003))

(assert (=> start!119858 true))

(declare-fun array_inv!35001 (array!95407) Bool)

(assert (=> start!119858 (array_inv!35001 a!2901)))

(declare-fun b!1395389 () Bool)

(declare-fun res!934741 () Bool)

(assert (=> b!1395389 (=> (not res!934741) (not e!790003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95407 (_ BitVec 32)) Bool)

(assert (=> b!1395389 (= res!934741 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395390 () Bool)

(declare-fun e!790002 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95407 (_ BitVec 32)) SeekEntryResult!10395)

(assert (=> b!1395390 (= e!790002 (= (seekEntryOrOpen!0 (select (arr!46056 a!2901) j!112) a!2901 mask!2840) (Found!10395 j!112)))))

(declare-fun b!1395391 () Bool)

(assert (=> b!1395391 (= e!790003 (not e!790001))))

(declare-fun res!934738 () Bool)

(assert (=> b!1395391 (=> res!934738 e!790001)))

(declare-fun lt!612936 () SeekEntryResult!10395)

(assert (=> b!1395391 (= res!934738 (or (not (is-Intermediate!10395 lt!612936)) (undefined!11207 lt!612936)))))

(assert (=> b!1395391 e!790002))

(declare-fun res!934736 () Bool)

(assert (=> b!1395391 (=> (not res!934736) (not e!790002))))

(assert (=> b!1395391 (= res!934736 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46744 0))(
  ( (Unit!46745) )
))
(declare-fun lt!612937 () Unit!46744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95407 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46744)

(assert (=> b!1395391 (= lt!612937 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395391 (= lt!612936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46056 a!2901) j!112) mask!2840) (select (arr!46056 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119858 res!934740) b!1395388))

(assert (= (and b!1395388 res!934737) b!1395385))

(assert (= (and b!1395385 res!934739) b!1395386))

(assert (= (and b!1395386 res!934742) b!1395389))

(assert (= (and b!1395389 res!934741) b!1395384))

(assert (= (and b!1395384 res!934743) b!1395391))

(assert (= (and b!1395391 res!934736) b!1395390))

(assert (= (and b!1395391 (not res!934738)) b!1395387))

(declare-fun m!1281937 () Bool)

(assert (=> b!1395386 m!1281937))

(assert (=> b!1395386 m!1281937))

(declare-fun m!1281939 () Bool)

(assert (=> b!1395386 m!1281939))

(assert (=> b!1395391 m!1281937))

(declare-fun m!1281941 () Bool)

(assert (=> b!1395391 m!1281941))

(assert (=> b!1395391 m!1281937))

(declare-fun m!1281943 () Bool)

(assert (=> b!1395391 m!1281943))

(assert (=> b!1395391 m!1281941))

(assert (=> b!1395391 m!1281937))

(declare-fun m!1281945 () Bool)

(assert (=> b!1395391 m!1281945))

(declare-fun m!1281947 () Bool)

(assert (=> b!1395391 m!1281947))

(declare-fun m!1281949 () Bool)

(assert (=> b!1395384 m!1281949))

(declare-fun m!1281951 () Bool)

(assert (=> b!1395389 m!1281951))

(assert (=> b!1395390 m!1281937))

(assert (=> b!1395390 m!1281937))

(declare-fun m!1281953 () Bool)

(assert (=> b!1395390 m!1281953))

(declare-fun m!1281955 () Bool)

(assert (=> start!119858 m!1281955))

(declare-fun m!1281957 () Bool)

(assert (=> start!119858 m!1281957))

(declare-fun m!1281959 () Bool)

(assert (=> b!1395385 m!1281959))

(assert (=> b!1395385 m!1281959))

(declare-fun m!1281961 () Bool)

(assert (=> b!1395385 m!1281961))

(declare-fun m!1281963 () Bool)

(assert (=> b!1395387 m!1281963))

(declare-fun m!1281965 () Bool)

(assert (=> b!1395387 m!1281965))

(assert (=> b!1395387 m!1281965))

(declare-fun m!1281967 () Bool)

(assert (=> b!1395387 m!1281967))

(assert (=> b!1395387 m!1281967))

(assert (=> b!1395387 m!1281965))

(declare-fun m!1281969 () Bool)

(assert (=> b!1395387 m!1281969))

(push 1)

(assert (not b!1395384))

(assert (not b!1395386))

(assert (not b!1395389))

(assert (not start!119858))

(assert (not b!1395390))

(assert (not b!1395391))

(assert (not b!1395387))

(assert (not b!1395385))

(check-sat)

