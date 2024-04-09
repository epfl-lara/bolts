; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128894 () Bool)

(assert start!128894)

(declare-fun b!1509942 () Bool)

(declare-fun e!843299 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100663 0))(
  ( (array!100664 (arr!48564 (Array (_ BitVec 32) (_ BitVec 64))) (size!49115 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100663)

(declare-datatypes ((SeekEntryResult!12756 0))(
  ( (MissingZero!12756 (index!53418 (_ BitVec 32))) (Found!12756 (index!53419 (_ BitVec 32))) (Intermediate!12756 (undefined!13568 Bool) (index!53420 (_ BitVec 32)) (x!135175 (_ BitVec 32))) (Undefined!12756) (MissingVacant!12756 (index!53421 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100663 (_ BitVec 32)) SeekEntryResult!12756)

(assert (=> b!1509942 (= e!843299 (= (seekEntry!0 (select (arr!48564 a!2804) j!70) a!2804 mask!2512) (Found!12756 j!70)))))

(declare-fun b!1509943 () Bool)

(declare-fun res!1029926 () Bool)

(declare-fun e!843296 () Bool)

(assert (=> b!1509943 (=> (not res!1029926) (not e!843296))))

(declare-datatypes ((List!35227 0))(
  ( (Nil!35224) (Cons!35223 (h!36636 (_ BitVec 64)) (t!49928 List!35227)) )
))
(declare-fun arrayNoDuplicates!0 (array!100663 (_ BitVec 32) List!35227) Bool)

(assert (=> b!1509943 (= res!1029926 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35224))))

(declare-fun res!1029923 () Bool)

(assert (=> start!128894 (=> (not res!1029923) (not e!843296))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128894 (= res!1029923 (validMask!0 mask!2512))))

(assert (=> start!128894 e!843296))

(assert (=> start!128894 true))

(declare-fun array_inv!37509 (array!100663) Bool)

(assert (=> start!128894 (array_inv!37509 a!2804)))

(declare-fun b!1509944 () Bool)

(declare-fun res!1029927 () Bool)

(assert (=> b!1509944 (=> (not res!1029927) (not e!843296))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509944 (= res!1029927 (validKeyInArray!0 (select (arr!48564 a!2804) j!70)))))

(declare-fun b!1509945 () Bool)

(declare-fun e!843298 () Bool)

(assert (=> b!1509945 (= e!843298 (not true))))

(assert (=> b!1509945 e!843299))

(declare-fun res!1029921 () Bool)

(assert (=> b!1509945 (=> (not res!1029921) (not e!843299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100663 (_ BitVec 32)) Bool)

(assert (=> b!1509945 (= res!1029921 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50336 0))(
  ( (Unit!50337) )
))
(declare-fun lt!655008 () Unit!50336)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100663 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50336)

(assert (=> b!1509945 (= lt!655008 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509946 () Bool)

(declare-fun res!1029918 () Bool)

(assert (=> b!1509946 (=> (not res!1029918) (not e!843296))))

(assert (=> b!1509946 (= res!1029918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509947 () Bool)

(assert (=> b!1509947 (= e!843296 e!843298)))

(declare-fun res!1029924 () Bool)

(assert (=> b!1509947 (=> (not res!1029924) (not e!843298))))

(declare-fun lt!655009 () SeekEntryResult!12756)

(declare-fun lt!655007 () SeekEntryResult!12756)

(assert (=> b!1509947 (= res!1029924 (= lt!655009 lt!655007))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1509947 (= lt!655007 (Intermediate!12756 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100663 (_ BitVec 32)) SeekEntryResult!12756)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509947 (= lt!655009 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48564 a!2804) j!70) mask!2512) (select (arr!48564 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509948 () Bool)

(declare-fun res!1029925 () Bool)

(assert (=> b!1509948 (=> (not res!1029925) (not e!843298))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1509948 (= res!1029925 (= lt!655009 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48564 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48564 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100664 (store (arr!48564 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49115 a!2804)) mask!2512)))))

(declare-fun b!1509949 () Bool)

(declare-fun res!1029917 () Bool)

(assert (=> b!1509949 (=> (not res!1029917) (not e!843296))))

(assert (=> b!1509949 (= res!1029917 (and (= (size!49115 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49115 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49115 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509950 () Bool)

(declare-fun res!1029920 () Bool)

(assert (=> b!1509950 (=> (not res!1029920) (not e!843298))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1509950 (= res!1029920 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48564 a!2804) j!70) a!2804 mask!2512) lt!655007))))

(declare-fun b!1509951 () Bool)

(declare-fun res!1029922 () Bool)

(assert (=> b!1509951 (=> (not res!1029922) (not e!843296))))

(assert (=> b!1509951 (= res!1029922 (validKeyInArray!0 (select (arr!48564 a!2804) i!961)))))

(declare-fun b!1509952 () Bool)

(declare-fun res!1029919 () Bool)

(assert (=> b!1509952 (=> (not res!1029919) (not e!843296))))

(assert (=> b!1509952 (= res!1029919 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49115 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49115 a!2804))))))

(assert (= (and start!128894 res!1029923) b!1509949))

(assert (= (and b!1509949 res!1029917) b!1509951))

(assert (= (and b!1509951 res!1029922) b!1509944))

(assert (= (and b!1509944 res!1029927) b!1509946))

(assert (= (and b!1509946 res!1029918) b!1509943))

(assert (= (and b!1509943 res!1029926) b!1509952))

(assert (= (and b!1509952 res!1029919) b!1509947))

(assert (= (and b!1509947 res!1029924) b!1509950))

(assert (= (and b!1509950 res!1029920) b!1509948))

(assert (= (and b!1509948 res!1029925) b!1509945))

(assert (= (and b!1509945 res!1029921) b!1509942))

(declare-fun m!1392537 () Bool)

(assert (=> b!1509947 m!1392537))

(assert (=> b!1509947 m!1392537))

(declare-fun m!1392539 () Bool)

(assert (=> b!1509947 m!1392539))

(assert (=> b!1509947 m!1392539))

(assert (=> b!1509947 m!1392537))

(declare-fun m!1392541 () Bool)

(assert (=> b!1509947 m!1392541))

(assert (=> b!1509942 m!1392537))

(assert (=> b!1509942 m!1392537))

(declare-fun m!1392543 () Bool)

(assert (=> b!1509942 m!1392543))

(declare-fun m!1392545 () Bool)

(assert (=> start!128894 m!1392545))

(declare-fun m!1392547 () Bool)

(assert (=> start!128894 m!1392547))

(declare-fun m!1392549 () Bool)

(assert (=> b!1509945 m!1392549))

(declare-fun m!1392551 () Bool)

(assert (=> b!1509945 m!1392551))

(declare-fun m!1392553 () Bool)

(assert (=> b!1509948 m!1392553))

(declare-fun m!1392555 () Bool)

(assert (=> b!1509948 m!1392555))

(assert (=> b!1509948 m!1392555))

(declare-fun m!1392557 () Bool)

(assert (=> b!1509948 m!1392557))

(assert (=> b!1509948 m!1392557))

(assert (=> b!1509948 m!1392555))

(declare-fun m!1392559 () Bool)

(assert (=> b!1509948 m!1392559))

(assert (=> b!1509950 m!1392537))

(assert (=> b!1509950 m!1392537))

(declare-fun m!1392561 () Bool)

(assert (=> b!1509950 m!1392561))

(assert (=> b!1509944 m!1392537))

(assert (=> b!1509944 m!1392537))

(declare-fun m!1392563 () Bool)

(assert (=> b!1509944 m!1392563))

(declare-fun m!1392565 () Bool)

(assert (=> b!1509946 m!1392565))

(declare-fun m!1392567 () Bool)

(assert (=> b!1509943 m!1392567))

(declare-fun m!1392569 () Bool)

(assert (=> b!1509951 m!1392569))

(assert (=> b!1509951 m!1392569))

(declare-fun m!1392571 () Bool)

(assert (=> b!1509951 m!1392571))

(push 1)

