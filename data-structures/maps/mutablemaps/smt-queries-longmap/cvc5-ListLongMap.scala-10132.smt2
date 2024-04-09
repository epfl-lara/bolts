; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119542 () Bool)

(assert start!119542)

(declare-fun res!931925 () Bool)

(declare-fun e!788417 () Bool)

(assert (=> start!119542 (=> (not res!931925) (not e!788417))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119542 (= res!931925 (validMask!0 mask!2840))))

(assert (=> start!119542 e!788417))

(assert (=> start!119542 true))

(declare-datatypes ((array!95193 0))(
  ( (array!95194 (arr!45952 (Array (_ BitVec 32) (_ BitVec 64))) (size!46503 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95193)

(declare-fun array_inv!34897 (array!95193) Bool)

(assert (=> start!119542 (array_inv!34897 a!2901)))

(declare-fun b!1392243 () Bool)

(declare-fun res!931928 () Bool)

(assert (=> b!1392243 (=> (not res!931928) (not e!788417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95193 (_ BitVec 32)) Bool)

(assert (=> b!1392243 (= res!931928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392244 () Bool)

(declare-fun res!931930 () Bool)

(assert (=> b!1392244 (=> (not res!931930) (not e!788417))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392244 (= res!931930 (validKeyInArray!0 (select (arr!45952 a!2901) i!1037)))))

(declare-fun b!1392245 () Bool)

(declare-fun res!931927 () Bool)

(assert (=> b!1392245 (=> (not res!931927) (not e!788417))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1392245 (= res!931927 (and (= (size!46503 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46503 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46503 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392246 () Bool)

(declare-fun res!931931 () Bool)

(assert (=> b!1392246 (=> (not res!931931) (not e!788417))))

(assert (=> b!1392246 (= res!931931 (validKeyInArray!0 (select (arr!45952 a!2901) j!112)))))

(declare-fun b!1392247 () Bool)

(declare-fun e!788420 () Bool)

(assert (=> b!1392247 (= e!788420 true)))

(declare-fun lt!611517 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392247 (= lt!611517 (toIndex!0 (select (store (arr!45952 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun e!788419 () Bool)

(declare-fun b!1392248 () Bool)

(declare-datatypes ((SeekEntryResult!10291 0))(
  ( (MissingZero!10291 (index!43534 (_ BitVec 32))) (Found!10291 (index!43535 (_ BitVec 32))) (Intermediate!10291 (undefined!11103 Bool) (index!43536 (_ BitVec 32)) (x!125228 (_ BitVec 32))) (Undefined!10291) (MissingVacant!10291 (index!43537 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95193 (_ BitVec 32)) SeekEntryResult!10291)

(assert (=> b!1392248 (= e!788419 (= (seekEntryOrOpen!0 (select (arr!45952 a!2901) j!112) a!2901 mask!2840) (Found!10291 j!112)))))

(declare-fun b!1392249 () Bool)

(assert (=> b!1392249 (= e!788417 (not e!788420))))

(declare-fun res!931932 () Bool)

(assert (=> b!1392249 (=> res!931932 e!788420)))

(declare-fun lt!611516 () SeekEntryResult!10291)

(assert (=> b!1392249 (= res!931932 (or (not (is-Intermediate!10291 lt!611516)) (undefined!11103 lt!611516)))))

(assert (=> b!1392249 e!788419))

(declare-fun res!931929 () Bool)

(assert (=> b!1392249 (=> (not res!931929) (not e!788419))))

(assert (=> b!1392249 (= res!931929 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46536 0))(
  ( (Unit!46537) )
))
(declare-fun lt!611518 () Unit!46536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95193 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46536)

(assert (=> b!1392249 (= lt!611518 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95193 (_ BitVec 32)) SeekEntryResult!10291)

(assert (=> b!1392249 (= lt!611516 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45952 a!2901) j!112) mask!2840) (select (arr!45952 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392250 () Bool)

(declare-fun res!931926 () Bool)

(assert (=> b!1392250 (=> (not res!931926) (not e!788417))))

(declare-datatypes ((List!32651 0))(
  ( (Nil!32648) (Cons!32647 (h!33877 (_ BitVec 64)) (t!47352 List!32651)) )
))
(declare-fun arrayNoDuplicates!0 (array!95193 (_ BitVec 32) List!32651) Bool)

(assert (=> b!1392250 (= res!931926 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32648))))

(assert (= (and start!119542 res!931925) b!1392245))

(assert (= (and b!1392245 res!931927) b!1392244))

(assert (= (and b!1392244 res!931930) b!1392246))

(assert (= (and b!1392246 res!931931) b!1392243))

(assert (= (and b!1392243 res!931928) b!1392250))

(assert (= (and b!1392250 res!931926) b!1392249))

(assert (= (and b!1392249 res!931929) b!1392248))

(assert (= (and b!1392249 (not res!931932)) b!1392247))

(declare-fun m!1278005 () Bool)

(assert (=> b!1392247 m!1278005))

(declare-fun m!1278007 () Bool)

(assert (=> b!1392247 m!1278007))

(assert (=> b!1392247 m!1278007))

(declare-fun m!1278009 () Bool)

(assert (=> b!1392247 m!1278009))

(declare-fun m!1278011 () Bool)

(assert (=> start!119542 m!1278011))

(declare-fun m!1278013 () Bool)

(assert (=> start!119542 m!1278013))

(declare-fun m!1278015 () Bool)

(assert (=> b!1392248 m!1278015))

(assert (=> b!1392248 m!1278015))

(declare-fun m!1278017 () Bool)

(assert (=> b!1392248 m!1278017))

(declare-fun m!1278019 () Bool)

(assert (=> b!1392243 m!1278019))

(declare-fun m!1278021 () Bool)

(assert (=> b!1392250 m!1278021))

(assert (=> b!1392246 m!1278015))

(assert (=> b!1392246 m!1278015))

(declare-fun m!1278023 () Bool)

(assert (=> b!1392246 m!1278023))

(assert (=> b!1392249 m!1278015))

(declare-fun m!1278025 () Bool)

(assert (=> b!1392249 m!1278025))

(assert (=> b!1392249 m!1278015))

(declare-fun m!1278027 () Bool)

(assert (=> b!1392249 m!1278027))

(assert (=> b!1392249 m!1278025))

(assert (=> b!1392249 m!1278015))

(declare-fun m!1278029 () Bool)

(assert (=> b!1392249 m!1278029))

(declare-fun m!1278031 () Bool)

(assert (=> b!1392249 m!1278031))

(declare-fun m!1278033 () Bool)

(assert (=> b!1392244 m!1278033))

(assert (=> b!1392244 m!1278033))

(declare-fun m!1278035 () Bool)

(assert (=> b!1392244 m!1278035))

(push 1)

(assert (not start!119542))

(assert (not b!1392243))

(assert (not b!1392247))

(assert (not b!1392244))

(assert (not b!1392248))

(assert (not b!1392250))

(assert (not b!1392249))

(assert (not b!1392246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

