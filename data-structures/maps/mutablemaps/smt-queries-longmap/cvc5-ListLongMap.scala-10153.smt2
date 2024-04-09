; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119722 () Bool)

(assert start!119722)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95322 0))(
  ( (array!95323 (arr!46015 (Array (_ BitVec 32) (_ BitVec 64))) (size!46566 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95322)

(declare-fun b!1394037 () Bool)

(declare-fun e!789341 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10354 0))(
  ( (MissingZero!10354 (index!43786 (_ BitVec 32))) (Found!10354 (index!43787 (_ BitVec 32))) (Intermediate!10354 (undefined!11166 Bool) (index!43788 (_ BitVec 32)) (x!125465 (_ BitVec 32))) (Undefined!10354) (MissingVacant!10354 (index!43789 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95322 (_ BitVec 32)) SeekEntryResult!10354)

(assert (=> b!1394037 (= e!789341 (= (seekEntryOrOpen!0 (select (arr!46015 a!2901) j!112) a!2901 mask!2840) (Found!10354 j!112)))))

(declare-fun res!933557 () Bool)

(declare-fun e!789343 () Bool)

(assert (=> start!119722 (=> (not res!933557) (not e!789343))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119722 (= res!933557 (validMask!0 mask!2840))))

(assert (=> start!119722 e!789343))

(assert (=> start!119722 true))

(declare-fun array_inv!34960 (array!95322) Bool)

(assert (=> start!119722 (array_inv!34960 a!2901)))

(declare-fun b!1394038 () Bool)

(declare-fun res!933559 () Bool)

(assert (=> b!1394038 (=> (not res!933559) (not e!789343))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394038 (= res!933559 (validKeyInArray!0 (select (arr!46015 a!2901) j!112)))))

(declare-fun b!1394039 () Bool)

(declare-fun res!933555 () Bool)

(assert (=> b!1394039 (=> (not res!933555) (not e!789343))))

(declare-datatypes ((List!32714 0))(
  ( (Nil!32711) (Cons!32710 (h!33943 (_ BitVec 64)) (t!47415 List!32714)) )
))
(declare-fun arrayNoDuplicates!0 (array!95322 (_ BitVec 32) List!32714) Bool)

(assert (=> b!1394039 (= res!933555 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32711))))

(declare-fun b!1394040 () Bool)

(declare-fun e!789342 () Bool)

(assert (=> b!1394040 (= e!789342 true)))

(declare-fun lt!612185 () SeekEntryResult!10354)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95322 (_ BitVec 32)) SeekEntryResult!10354)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394040 (= lt!612185 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46015 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46015 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95323 (store (arr!46015 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46566 a!2901)) mask!2840))))

(declare-fun b!1394041 () Bool)

(declare-fun res!933556 () Bool)

(assert (=> b!1394041 (=> (not res!933556) (not e!789343))))

(assert (=> b!1394041 (= res!933556 (validKeyInArray!0 (select (arr!46015 a!2901) i!1037)))))

(declare-fun b!1394042 () Bool)

(declare-fun res!933554 () Bool)

(assert (=> b!1394042 (=> (not res!933554) (not e!789343))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95322 (_ BitVec 32)) Bool)

(assert (=> b!1394042 (= res!933554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394043 () Bool)

(declare-fun res!933561 () Bool)

(assert (=> b!1394043 (=> (not res!933561) (not e!789343))))

(assert (=> b!1394043 (= res!933561 (and (= (size!46566 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46566 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46566 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394044 () Bool)

(assert (=> b!1394044 (= e!789343 (not e!789342))))

(declare-fun res!933560 () Bool)

(assert (=> b!1394044 (=> res!933560 e!789342)))

(declare-fun lt!612187 () SeekEntryResult!10354)

(assert (=> b!1394044 (= res!933560 (or (not (is-Intermediate!10354 lt!612187)) (undefined!11166 lt!612187)))))

(assert (=> b!1394044 e!789341))

(declare-fun res!933558 () Bool)

(assert (=> b!1394044 (=> (not res!933558) (not e!789341))))

(assert (=> b!1394044 (= res!933558 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46662 0))(
  ( (Unit!46663) )
))
(declare-fun lt!612186 () Unit!46662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95322 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46662)

(assert (=> b!1394044 (= lt!612186 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1394044 (= lt!612187 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46015 a!2901) j!112) mask!2840) (select (arr!46015 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!119722 res!933557) b!1394043))

(assert (= (and b!1394043 res!933561) b!1394041))

(assert (= (and b!1394041 res!933556) b!1394038))

(assert (= (and b!1394038 res!933559) b!1394042))

(assert (= (and b!1394042 res!933554) b!1394039))

(assert (= (and b!1394039 res!933555) b!1394044))

(assert (= (and b!1394044 res!933558) b!1394037))

(assert (= (and b!1394044 (not res!933560)) b!1394040))

(declare-fun m!1280291 () Bool)

(assert (=> b!1394044 m!1280291))

(declare-fun m!1280293 () Bool)

(assert (=> b!1394044 m!1280293))

(assert (=> b!1394044 m!1280291))

(declare-fun m!1280295 () Bool)

(assert (=> b!1394044 m!1280295))

(assert (=> b!1394044 m!1280293))

(assert (=> b!1394044 m!1280291))

(declare-fun m!1280297 () Bool)

(assert (=> b!1394044 m!1280297))

(declare-fun m!1280299 () Bool)

(assert (=> b!1394044 m!1280299))

(declare-fun m!1280301 () Bool)

(assert (=> start!119722 m!1280301))

(declare-fun m!1280303 () Bool)

(assert (=> start!119722 m!1280303))

(declare-fun m!1280305 () Bool)

(assert (=> b!1394041 m!1280305))

(assert (=> b!1394041 m!1280305))

(declare-fun m!1280307 () Bool)

(assert (=> b!1394041 m!1280307))

(declare-fun m!1280309 () Bool)

(assert (=> b!1394039 m!1280309))

(assert (=> b!1394038 m!1280291))

(assert (=> b!1394038 m!1280291))

(declare-fun m!1280311 () Bool)

(assert (=> b!1394038 m!1280311))

(declare-fun m!1280313 () Bool)

(assert (=> b!1394040 m!1280313))

(declare-fun m!1280315 () Bool)

(assert (=> b!1394040 m!1280315))

(assert (=> b!1394040 m!1280315))

(declare-fun m!1280317 () Bool)

(assert (=> b!1394040 m!1280317))

(assert (=> b!1394040 m!1280317))

(assert (=> b!1394040 m!1280315))

(declare-fun m!1280319 () Bool)

(assert (=> b!1394040 m!1280319))

(assert (=> b!1394037 m!1280291))

(assert (=> b!1394037 m!1280291))

(declare-fun m!1280321 () Bool)

(assert (=> b!1394037 m!1280321))

(declare-fun m!1280323 () Bool)

(assert (=> b!1394042 m!1280323))

(push 1)

(assert (not b!1394040))

(assert (not b!1394041))

(assert (not b!1394038))

(assert (not b!1394044))

(assert (not start!119722))

(assert (not b!1394039))

(assert (not b!1394042))

(assert (not b!1394037))

(check-sat)

(pop 1)

