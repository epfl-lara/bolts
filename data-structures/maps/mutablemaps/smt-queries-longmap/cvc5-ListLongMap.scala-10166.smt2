; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119854 () Bool)

(assert start!119854)

(declare-fun b!1395336 () Bool)

(declare-fun res!934693 () Bool)

(declare-fun e!789978 () Bool)

(assert (=> b!1395336 (=> (not res!934693) (not e!789978))))

(declare-datatypes ((array!95403 0))(
  ( (array!95404 (arr!46054 (Array (_ BitVec 32) (_ BitVec 64))) (size!46605 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95403)

(declare-datatypes ((List!32753 0))(
  ( (Nil!32750) (Cons!32749 (h!33985 (_ BitVec 64)) (t!47454 List!32753)) )
))
(declare-fun arrayNoDuplicates!0 (array!95403 (_ BitVec 32) List!32753) Bool)

(assert (=> b!1395336 (= res!934693 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32750))))

(declare-fun b!1395337 () Bool)

(declare-fun e!789979 () Bool)

(assert (=> b!1395337 (= e!789979 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10393 0))(
  ( (MissingZero!10393 (index!43942 (_ BitVec 32))) (Found!10393 (index!43943 (_ BitVec 32))) (Intermediate!10393 (undefined!11205 Bool) (index!43944 (_ BitVec 32)) (x!125614 (_ BitVec 32))) (Undefined!10393) (MissingVacant!10393 (index!43945 (_ BitVec 32))) )
))
(declare-fun lt!612917 () SeekEntryResult!10393)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95403 (_ BitVec 32)) SeekEntryResult!10393)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395337 (= lt!612917 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46054 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46054 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95404 (store (arr!46054 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46605 a!2901)) mask!2840))))

(declare-fun b!1395338 () Bool)

(declare-fun res!934695 () Bool)

(assert (=> b!1395338 (=> (not res!934695) (not e!789978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95403 (_ BitVec 32)) Bool)

(assert (=> b!1395338 (= res!934695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!934690 () Bool)

(assert (=> start!119854 (=> (not res!934690) (not e!789978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119854 (= res!934690 (validMask!0 mask!2840))))

(assert (=> start!119854 e!789978))

(assert (=> start!119854 true))

(declare-fun array_inv!34999 (array!95403) Bool)

(assert (=> start!119854 (array_inv!34999 a!2901)))

(declare-fun b!1395339 () Bool)

(assert (=> b!1395339 (= e!789978 (not e!789979))))

(declare-fun res!934688 () Bool)

(assert (=> b!1395339 (=> res!934688 e!789979)))

(declare-fun lt!612918 () SeekEntryResult!10393)

(assert (=> b!1395339 (= res!934688 (or (not (is-Intermediate!10393 lt!612918)) (undefined!11205 lt!612918)))))

(declare-fun e!789980 () Bool)

(assert (=> b!1395339 e!789980))

(declare-fun res!934692 () Bool)

(assert (=> b!1395339 (=> (not res!934692) (not e!789980))))

(assert (=> b!1395339 (= res!934692 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46740 0))(
  ( (Unit!46741) )
))
(declare-fun lt!612919 () Unit!46740)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46740)

(assert (=> b!1395339 (= lt!612919 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395339 (= lt!612918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46054 a!2901) j!112) mask!2840) (select (arr!46054 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395340 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95403 (_ BitVec 32)) SeekEntryResult!10393)

(assert (=> b!1395340 (= e!789980 (= (seekEntryOrOpen!0 (select (arr!46054 a!2901) j!112) a!2901 mask!2840) (Found!10393 j!112)))))

(declare-fun b!1395341 () Bool)

(declare-fun res!934694 () Bool)

(assert (=> b!1395341 (=> (not res!934694) (not e!789978))))

(assert (=> b!1395341 (= res!934694 (and (= (size!46605 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46605 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46605 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395342 () Bool)

(declare-fun res!934691 () Bool)

(assert (=> b!1395342 (=> (not res!934691) (not e!789978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395342 (= res!934691 (validKeyInArray!0 (select (arr!46054 a!2901) i!1037)))))

(declare-fun b!1395343 () Bool)

(declare-fun res!934689 () Bool)

(assert (=> b!1395343 (=> (not res!934689) (not e!789978))))

(assert (=> b!1395343 (= res!934689 (validKeyInArray!0 (select (arr!46054 a!2901) j!112)))))

(assert (= (and start!119854 res!934690) b!1395341))

(assert (= (and b!1395341 res!934694) b!1395342))

(assert (= (and b!1395342 res!934691) b!1395343))

(assert (= (and b!1395343 res!934689) b!1395338))

(assert (= (and b!1395338 res!934695) b!1395336))

(assert (= (and b!1395336 res!934693) b!1395339))

(assert (= (and b!1395339 res!934692) b!1395340))

(assert (= (and b!1395339 (not res!934688)) b!1395337))

(declare-fun m!1281869 () Bool)

(assert (=> b!1395342 m!1281869))

(assert (=> b!1395342 m!1281869))

(declare-fun m!1281871 () Bool)

(assert (=> b!1395342 m!1281871))

(declare-fun m!1281873 () Bool)

(assert (=> b!1395338 m!1281873))

(declare-fun m!1281875 () Bool)

(assert (=> start!119854 m!1281875))

(declare-fun m!1281877 () Bool)

(assert (=> start!119854 m!1281877))

(declare-fun m!1281879 () Bool)

(assert (=> b!1395336 m!1281879))

(declare-fun m!1281881 () Bool)

(assert (=> b!1395337 m!1281881))

(declare-fun m!1281883 () Bool)

(assert (=> b!1395337 m!1281883))

(assert (=> b!1395337 m!1281883))

(declare-fun m!1281885 () Bool)

(assert (=> b!1395337 m!1281885))

(assert (=> b!1395337 m!1281885))

(assert (=> b!1395337 m!1281883))

(declare-fun m!1281887 () Bool)

(assert (=> b!1395337 m!1281887))

(declare-fun m!1281889 () Bool)

(assert (=> b!1395339 m!1281889))

(declare-fun m!1281891 () Bool)

(assert (=> b!1395339 m!1281891))

(assert (=> b!1395339 m!1281889))

(declare-fun m!1281893 () Bool)

(assert (=> b!1395339 m!1281893))

(assert (=> b!1395339 m!1281891))

(assert (=> b!1395339 m!1281889))

(declare-fun m!1281895 () Bool)

(assert (=> b!1395339 m!1281895))

(declare-fun m!1281897 () Bool)

(assert (=> b!1395339 m!1281897))

(assert (=> b!1395340 m!1281889))

(assert (=> b!1395340 m!1281889))

(declare-fun m!1281899 () Bool)

(assert (=> b!1395340 m!1281899))

(assert (=> b!1395343 m!1281889))

(assert (=> b!1395343 m!1281889))

(declare-fun m!1281901 () Bool)

(assert (=> b!1395343 m!1281901))

(push 1)

(assert (not b!1395337))

(assert (not b!1395339))

(assert (not b!1395336))

(assert (not b!1395343))

(assert (not start!119854))

(assert (not b!1395342))

(assert (not b!1395338))

(assert (not b!1395340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

