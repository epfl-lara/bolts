; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119638 () Bool)

(assert start!119638)

(declare-fun b!1393029 () Bool)

(declare-fun res!932549 () Bool)

(declare-fun e!788840 () Bool)

(assert (=> b!1393029 (=> (not res!932549) (not e!788840))))

(declare-datatypes ((array!95238 0))(
  ( (array!95239 (arr!45973 (Array (_ BitVec 32) (_ BitVec 64))) (size!46524 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95238)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393029 (= res!932549 (validKeyInArray!0 (select (arr!45973 a!2901) i!1037)))))

(declare-fun b!1393030 () Bool)

(declare-fun res!932552 () Bool)

(assert (=> b!1393030 (=> (not res!932552) (not e!788840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393030 (= res!932552 (validKeyInArray!0 (select (arr!45973 a!2901) j!112)))))

(declare-fun b!1393031 () Bool)

(declare-fun e!788837 () Bool)

(assert (=> b!1393031 (= e!788837 true)))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10312 0))(
  ( (MissingZero!10312 (index!43618 (_ BitVec 32))) (Found!10312 (index!43619 (_ BitVec 32))) (Intermediate!10312 (undefined!11124 Bool) (index!43620 (_ BitVec 32)) (x!125311 (_ BitVec 32))) (Undefined!10312) (MissingVacant!10312 (index!43621 (_ BitVec 32))) )
))
(declare-fun lt!611807 () SeekEntryResult!10312)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95238 (_ BitVec 32)) SeekEntryResult!10312)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393031 (= lt!611807 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45973 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45973 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95239 (store (arr!45973 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46524 a!2901)) mask!2840))))

(declare-fun b!1393033 () Bool)

(assert (=> b!1393033 (= e!788840 (not e!788837))))

(declare-fun res!932547 () Bool)

(assert (=> b!1393033 (=> res!932547 e!788837)))

(declare-fun lt!611808 () SeekEntryResult!10312)

(assert (=> b!1393033 (= res!932547 (or (not (is-Intermediate!10312 lt!611808)) (undefined!11124 lt!611808)))))

(declare-fun e!788838 () Bool)

(assert (=> b!1393033 e!788838))

(declare-fun res!932551 () Bool)

(assert (=> b!1393033 (=> (not res!932551) (not e!788838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95238 (_ BitVec 32)) Bool)

(assert (=> b!1393033 (= res!932551 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46578 0))(
  ( (Unit!46579) )
))
(declare-fun lt!611809 () Unit!46578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95238 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46578)

(assert (=> b!1393033 (= lt!611809 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1393033 (= lt!611808 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45973 a!2901) j!112) mask!2840) (select (arr!45973 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393034 () Bool)

(declare-fun res!932546 () Bool)

(assert (=> b!1393034 (=> (not res!932546) (not e!788840))))

(assert (=> b!1393034 (= res!932546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1393035 () Bool)

(declare-fun res!932548 () Bool)

(assert (=> b!1393035 (=> (not res!932548) (not e!788840))))

(assert (=> b!1393035 (= res!932548 (and (= (size!46524 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46524 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46524 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393036 () Bool)

(declare-fun res!932553 () Bool)

(assert (=> b!1393036 (=> (not res!932553) (not e!788840))))

(declare-datatypes ((List!32672 0))(
  ( (Nil!32669) (Cons!32668 (h!33901 (_ BitVec 64)) (t!47373 List!32672)) )
))
(declare-fun arrayNoDuplicates!0 (array!95238 (_ BitVec 32) List!32672) Bool)

(assert (=> b!1393036 (= res!932553 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32669))))

(declare-fun b!1393032 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95238 (_ BitVec 32)) SeekEntryResult!10312)

(assert (=> b!1393032 (= e!788838 (= (seekEntryOrOpen!0 (select (arr!45973 a!2901) j!112) a!2901 mask!2840) (Found!10312 j!112)))))

(declare-fun res!932550 () Bool)

(assert (=> start!119638 (=> (not res!932550) (not e!788840))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119638 (= res!932550 (validMask!0 mask!2840))))

(assert (=> start!119638 e!788840))

(assert (=> start!119638 true))

(declare-fun array_inv!34918 (array!95238) Bool)

(assert (=> start!119638 (array_inv!34918 a!2901)))

(assert (= (and start!119638 res!932550) b!1393035))

(assert (= (and b!1393035 res!932548) b!1393029))

(assert (= (and b!1393029 res!932549) b!1393030))

(assert (= (and b!1393030 res!932552) b!1393034))

(assert (= (and b!1393034 res!932546) b!1393036))

(assert (= (and b!1393036 res!932553) b!1393033))

(assert (= (and b!1393033 res!932551) b!1393032))

(assert (= (and b!1393033 (not res!932547)) b!1393031))

(declare-fun m!1278863 () Bool)

(assert (=> b!1393032 m!1278863))

(assert (=> b!1393032 m!1278863))

(declare-fun m!1278865 () Bool)

(assert (=> b!1393032 m!1278865))

(declare-fun m!1278867 () Bool)

(assert (=> b!1393029 m!1278867))

(assert (=> b!1393029 m!1278867))

(declare-fun m!1278869 () Bool)

(assert (=> b!1393029 m!1278869))

(declare-fun m!1278871 () Bool)

(assert (=> start!119638 m!1278871))

(declare-fun m!1278873 () Bool)

(assert (=> start!119638 m!1278873))

(declare-fun m!1278875 () Bool)

(assert (=> b!1393036 m!1278875))

(declare-fun m!1278877 () Bool)

(assert (=> b!1393031 m!1278877))

(declare-fun m!1278879 () Bool)

(assert (=> b!1393031 m!1278879))

(assert (=> b!1393031 m!1278879))

(declare-fun m!1278881 () Bool)

(assert (=> b!1393031 m!1278881))

(assert (=> b!1393031 m!1278881))

(assert (=> b!1393031 m!1278879))

(declare-fun m!1278883 () Bool)

(assert (=> b!1393031 m!1278883))

(assert (=> b!1393030 m!1278863))

(assert (=> b!1393030 m!1278863))

(declare-fun m!1278885 () Bool)

(assert (=> b!1393030 m!1278885))

(declare-fun m!1278887 () Bool)

(assert (=> b!1393034 m!1278887))

(assert (=> b!1393033 m!1278863))

(declare-fun m!1278889 () Bool)

(assert (=> b!1393033 m!1278889))

(assert (=> b!1393033 m!1278863))

(declare-fun m!1278891 () Bool)

(assert (=> b!1393033 m!1278891))

(assert (=> b!1393033 m!1278889))

(assert (=> b!1393033 m!1278863))

(declare-fun m!1278893 () Bool)

(assert (=> b!1393033 m!1278893))

(declare-fun m!1278895 () Bool)

(assert (=> b!1393033 m!1278895))

(push 1)

(assert (not b!1393029))

(assert (not b!1393032))

(assert (not b!1393036))

(assert (not b!1393033))

(assert (not start!119638))

(assert (not b!1393030))

(assert (not b!1393034))

(assert (not b!1393031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

