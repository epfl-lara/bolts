; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119852 () Bool)

(assert start!119852)

(declare-fun b!1395311 () Bool)

(declare-fun res!934671 () Bool)

(declare-fun e!789967 () Bool)

(assert (=> b!1395311 (=> (not res!934671) (not e!789967))))

(declare-datatypes ((array!95401 0))(
  ( (array!95402 (arr!46053 (Array (_ BitVec 32) (_ BitVec 64))) (size!46604 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95401)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395311 (= res!934671 (validKeyInArray!0 (select (arr!46053 a!2901) i!1037)))))

(declare-fun b!1395312 () Bool)

(declare-fun res!934664 () Bool)

(assert (=> b!1395312 (=> (not res!934664) (not e!789967))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95401 (_ BitVec 32)) Bool)

(assert (=> b!1395312 (= res!934664 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1395313 () Bool)

(declare-fun e!789968 () Bool)

(assert (=> b!1395313 (= e!789967 (not e!789968))))

(declare-fun res!934669 () Bool)

(assert (=> b!1395313 (=> res!934669 e!789968)))

(declare-datatypes ((SeekEntryResult!10392 0))(
  ( (MissingZero!10392 (index!43938 (_ BitVec 32))) (Found!10392 (index!43939 (_ BitVec 32))) (Intermediate!10392 (undefined!11204 Bool) (index!43940 (_ BitVec 32)) (x!125605 (_ BitVec 32))) (Undefined!10392) (MissingVacant!10392 (index!43941 (_ BitVec 32))) )
))
(declare-fun lt!612910 () SeekEntryResult!10392)

(assert (=> b!1395313 (= res!934669 (or (not (is-Intermediate!10392 lt!612910)) (undefined!11204 lt!612910)))))

(declare-fun e!789966 () Bool)

(assert (=> b!1395313 e!789966))

(declare-fun res!934665 () Bool)

(assert (=> b!1395313 (=> (not res!934665) (not e!789966))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1395313 (= res!934665 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46738 0))(
  ( (Unit!46739) )
))
(declare-fun lt!612909 () Unit!46738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95401 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46738)

(assert (=> b!1395313 (= lt!612909 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95401 (_ BitVec 32)) SeekEntryResult!10392)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395313 (= lt!612910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46053 a!2901) j!112) mask!2840) (select (arr!46053 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395314 () Bool)

(declare-fun res!934667 () Bool)

(assert (=> b!1395314 (=> (not res!934667) (not e!789967))))

(assert (=> b!1395314 (= res!934667 (validKeyInArray!0 (select (arr!46053 a!2901) j!112)))))

(declare-fun b!1395315 () Bool)

(assert (=> b!1395315 (= e!789968 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun b!1395316 () Bool)

(declare-fun res!934663 () Bool)

(assert (=> b!1395316 (=> (not res!934663) (not e!789967))))

(declare-datatypes ((List!32752 0))(
  ( (Nil!32749) (Cons!32748 (h!33984 (_ BitVec 64)) (t!47453 List!32752)) )
))
(declare-fun arrayNoDuplicates!0 (array!95401 (_ BitVec 32) List!32752) Bool)

(assert (=> b!1395316 (= res!934663 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32749))))

(declare-fun res!934668 () Bool)

(assert (=> start!119852 (=> (not res!934668) (not e!789967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119852 (= res!934668 (validMask!0 mask!2840))))

(assert (=> start!119852 e!789967))

(assert (=> start!119852 true))

(declare-fun array_inv!34998 (array!95401) Bool)

(assert (=> start!119852 (array_inv!34998 a!2901)))

(declare-fun b!1395317 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95401 (_ BitVec 32)) SeekEntryResult!10392)

(assert (=> b!1395317 (= e!789966 (= (seekEntryOrOpen!0 (select (arr!46053 a!2901) j!112) a!2901 mask!2840) (Found!10392 j!112)))))

(declare-fun b!1395318 () Bool)

(declare-fun res!934670 () Bool)

(assert (=> b!1395318 (=> res!934670 e!789968)))

(assert (=> b!1395318 (= res!934670 (= lt!612910 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46053 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46053 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95402 (store (arr!46053 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46604 a!2901)) mask!2840)))))

(declare-fun b!1395319 () Bool)

(declare-fun res!934666 () Bool)

(assert (=> b!1395319 (=> (not res!934666) (not e!789967))))

(assert (=> b!1395319 (= res!934666 (and (= (size!46604 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46604 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46604 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!119852 res!934668) b!1395319))

(assert (= (and b!1395319 res!934666) b!1395311))

(assert (= (and b!1395311 res!934671) b!1395314))

(assert (= (and b!1395314 res!934667) b!1395312))

(assert (= (and b!1395312 res!934664) b!1395316))

(assert (= (and b!1395316 res!934663) b!1395313))

(assert (= (and b!1395313 res!934665) b!1395317))

(assert (= (and b!1395313 (not res!934669)) b!1395318))

(assert (= (and b!1395318 (not res!934670)) b!1395315))

(declare-fun m!1281835 () Bool)

(assert (=> b!1395311 m!1281835))

(assert (=> b!1395311 m!1281835))

(declare-fun m!1281837 () Bool)

(assert (=> b!1395311 m!1281837))

(declare-fun m!1281839 () Bool)

(assert (=> b!1395313 m!1281839))

(declare-fun m!1281841 () Bool)

(assert (=> b!1395313 m!1281841))

(assert (=> b!1395313 m!1281839))

(declare-fun m!1281843 () Bool)

(assert (=> b!1395313 m!1281843))

(assert (=> b!1395313 m!1281841))

(assert (=> b!1395313 m!1281839))

(declare-fun m!1281845 () Bool)

(assert (=> b!1395313 m!1281845))

(declare-fun m!1281847 () Bool)

(assert (=> b!1395313 m!1281847))

(assert (=> b!1395317 m!1281839))

(assert (=> b!1395317 m!1281839))

(declare-fun m!1281849 () Bool)

(assert (=> b!1395317 m!1281849))

(declare-fun m!1281851 () Bool)

(assert (=> start!119852 m!1281851))

(declare-fun m!1281853 () Bool)

(assert (=> start!119852 m!1281853))

(declare-fun m!1281855 () Bool)

(assert (=> b!1395318 m!1281855))

(declare-fun m!1281857 () Bool)

(assert (=> b!1395318 m!1281857))

(assert (=> b!1395318 m!1281857))

(declare-fun m!1281859 () Bool)

(assert (=> b!1395318 m!1281859))

(assert (=> b!1395318 m!1281859))

(assert (=> b!1395318 m!1281857))

(declare-fun m!1281861 () Bool)

(assert (=> b!1395318 m!1281861))

(declare-fun m!1281863 () Bool)

(assert (=> b!1395312 m!1281863))

(declare-fun m!1281865 () Bool)

(assert (=> b!1395316 m!1281865))

(assert (=> b!1395314 m!1281839))

(assert (=> b!1395314 m!1281839))

(declare-fun m!1281867 () Bool)

(assert (=> b!1395314 m!1281867))

(push 1)

(assert (not b!1395316))

(assert (not b!1395318))

(assert (not b!1395317))

(assert (not b!1395313))

(assert (not start!119852))

(assert (not b!1395314))

(assert (not b!1395311))

(assert (not b!1395312))

(check-sat)

(pop 1)

(push 1)

(check-sat)

