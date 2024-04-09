; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119920 () Bool)

(assert start!119920)

(declare-fun b!1395744 () Bool)

(declare-fun res!934937 () Bool)

(declare-fun e!790218 () Bool)

(assert (=> b!1395744 (=> (not res!934937) (not e!790218))))

(declare-datatypes ((array!95418 0))(
  ( (array!95419 (arr!46060 (Array (_ BitVec 32) (_ BitVec 64))) (size!46611 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95418)

(declare-datatypes ((List!32759 0))(
  ( (Nil!32756) (Cons!32755 (h!33994 (_ BitVec 64)) (t!47460 List!32759)) )
))
(declare-fun arrayNoDuplicates!0 (array!95418 (_ BitVec 32) List!32759) Bool)

(assert (=> b!1395744 (= res!934937 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32756))))

(declare-fun res!934932 () Bool)

(assert (=> start!119920 (=> (not res!934932) (not e!790218))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119920 (= res!934932 (validMask!0 mask!2840))))

(assert (=> start!119920 e!790218))

(assert (=> start!119920 true))

(declare-fun array_inv!35005 (array!95418) Bool)

(assert (=> start!119920 (array_inv!35005 a!2901)))

(declare-fun b!1395745 () Bool)

(declare-fun e!790217 () Bool)

(assert (=> b!1395745 (= e!790217 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10399 0))(
  ( (MissingZero!10399 (index!43966 (_ BitVec 32))) (Found!10399 (index!43967 (_ BitVec 32))) (Intermediate!10399 (undefined!11211 Bool) (index!43968 (_ BitVec 32)) (x!125642 (_ BitVec 32))) (Undefined!10399) (MissingVacant!10399 (index!43969 (_ BitVec 32))) )
))
(declare-fun lt!613091 () SeekEntryResult!10399)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95418 (_ BitVec 32)) SeekEntryResult!10399)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1395745 (= lt!613091 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46060 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46060 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95419 (store (arr!46060 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46611 a!2901)) mask!2840))))

(declare-fun b!1395746 () Bool)

(declare-fun res!934938 () Bool)

(assert (=> b!1395746 (=> (not res!934938) (not e!790218))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1395746 (= res!934938 (validKeyInArray!0 (select (arr!46060 a!2901) i!1037)))))

(declare-fun b!1395747 () Bool)

(assert (=> b!1395747 (= e!790218 (not e!790217))))

(declare-fun res!934935 () Bool)

(assert (=> b!1395747 (=> res!934935 e!790217)))

(declare-fun lt!613093 () SeekEntryResult!10399)

(assert (=> b!1395747 (= res!934935 (or (not (is-Intermediate!10399 lt!613093)) (undefined!11211 lt!613093)))))

(declare-fun e!790220 () Bool)

(assert (=> b!1395747 e!790220))

(declare-fun res!934933 () Bool)

(assert (=> b!1395747 (=> (not res!934933) (not e!790220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95418 (_ BitVec 32)) Bool)

(assert (=> b!1395747 (= res!934933 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46752 0))(
  ( (Unit!46753) )
))
(declare-fun lt!613092 () Unit!46752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95418 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46752)

(assert (=> b!1395747 (= lt!613092 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1395747 (= lt!613093 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46060 a!2901) j!112) mask!2840) (select (arr!46060 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1395748 () Bool)

(declare-fun res!934934 () Bool)

(assert (=> b!1395748 (=> (not res!934934) (not e!790218))))

(assert (=> b!1395748 (= res!934934 (and (= (size!46611 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46611 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46611 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1395749 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95418 (_ BitVec 32)) SeekEntryResult!10399)

(assert (=> b!1395749 (= e!790220 (= (seekEntryOrOpen!0 (select (arr!46060 a!2901) j!112) a!2901 mask!2840) (Found!10399 j!112)))))

(declare-fun b!1395750 () Bool)

(declare-fun res!934936 () Bool)

(assert (=> b!1395750 (=> (not res!934936) (not e!790218))))

(assert (=> b!1395750 (= res!934936 (validKeyInArray!0 (select (arr!46060 a!2901) j!112)))))

(declare-fun b!1395751 () Bool)

(declare-fun res!934931 () Bool)

(assert (=> b!1395751 (=> (not res!934931) (not e!790218))))

(assert (=> b!1395751 (= res!934931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119920 res!934932) b!1395748))

(assert (= (and b!1395748 res!934934) b!1395746))

(assert (= (and b!1395746 res!934938) b!1395750))

(assert (= (and b!1395750 res!934936) b!1395751))

(assert (= (and b!1395751 res!934931) b!1395744))

(assert (= (and b!1395744 res!934937) b!1395747))

(assert (= (and b!1395747 res!934933) b!1395749))

(assert (= (and b!1395747 (not res!934935)) b!1395745))

(declare-fun m!1282223 () Bool)

(assert (=> b!1395750 m!1282223))

(assert (=> b!1395750 m!1282223))

(declare-fun m!1282225 () Bool)

(assert (=> b!1395750 m!1282225))

(declare-fun m!1282227 () Bool)

(assert (=> b!1395745 m!1282227))

(declare-fun m!1282229 () Bool)

(assert (=> b!1395745 m!1282229))

(assert (=> b!1395745 m!1282229))

(declare-fun m!1282231 () Bool)

(assert (=> b!1395745 m!1282231))

(assert (=> b!1395745 m!1282231))

(assert (=> b!1395745 m!1282229))

(declare-fun m!1282233 () Bool)

(assert (=> b!1395745 m!1282233))

(declare-fun m!1282235 () Bool)

(assert (=> start!119920 m!1282235))

(declare-fun m!1282237 () Bool)

(assert (=> start!119920 m!1282237))

(declare-fun m!1282239 () Bool)

(assert (=> b!1395746 m!1282239))

(assert (=> b!1395746 m!1282239))

(declare-fun m!1282241 () Bool)

(assert (=> b!1395746 m!1282241))

(assert (=> b!1395749 m!1282223))

(assert (=> b!1395749 m!1282223))

(declare-fun m!1282243 () Bool)

(assert (=> b!1395749 m!1282243))

(assert (=> b!1395747 m!1282223))

(declare-fun m!1282245 () Bool)

(assert (=> b!1395747 m!1282245))

(assert (=> b!1395747 m!1282223))

(declare-fun m!1282247 () Bool)

(assert (=> b!1395747 m!1282247))

(assert (=> b!1395747 m!1282245))

(assert (=> b!1395747 m!1282223))

(declare-fun m!1282249 () Bool)

(assert (=> b!1395747 m!1282249))

(declare-fun m!1282251 () Bool)

(assert (=> b!1395747 m!1282251))

(declare-fun m!1282253 () Bool)

(assert (=> b!1395751 m!1282253))

(declare-fun m!1282255 () Bool)

(assert (=> b!1395744 m!1282255))

(push 1)

(assert (not b!1395749))

(assert (not b!1395750))

(assert (not b!1395751))

(assert (not b!1395745))

(assert (not b!1395747))

(assert (not b!1395746))

(assert (not start!119920))

(assert (not b!1395744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

