; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119392 () Bool)

(assert start!119392)

(declare-fun b!1391308 () Bool)

(declare-fun res!931286 () Bool)

(declare-fun e!787902 () Bool)

(assert (=> b!1391308 (=> (not res!931286) (not e!787902))))

(declare-datatypes ((array!95145 0))(
  ( (array!95146 (arr!45931 (Array (_ BitVec 32) (_ BitVec 64))) (size!46482 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95145)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391308 (= res!931286 (validKeyInArray!0 (select (arr!45931 a!2901) j!112)))))

(declare-fun b!1391309 () Bool)

(declare-fun res!931288 () Bool)

(assert (=> b!1391309 (=> (not res!931288) (not e!787902))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391309 (= res!931288 (validKeyInArray!0 (select (arr!45931 a!2901) i!1037)))))

(declare-fun b!1391310 () Bool)

(declare-fun res!931287 () Bool)

(assert (=> b!1391310 (=> (not res!931287) (not e!787902))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95145 (_ BitVec 32)) Bool)

(assert (=> b!1391310 (= res!931287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391311 () Bool)

(declare-fun res!931289 () Bool)

(assert (=> b!1391311 (=> (not res!931289) (not e!787902))))

(declare-datatypes ((List!32630 0))(
  ( (Nil!32627) (Cons!32626 (h!33850 (_ BitVec 64)) (t!47331 List!32630)) )
))
(declare-fun arrayNoDuplicates!0 (array!95145 (_ BitVec 32) List!32630) Bool)

(assert (=> b!1391311 (= res!931289 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32627))))

(declare-fun res!931284 () Bool)

(assert (=> start!119392 (=> (not res!931284) (not e!787902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119392 (= res!931284 (validMask!0 mask!2840))))

(assert (=> start!119392 e!787902))

(assert (=> start!119392 true))

(declare-fun array_inv!34876 (array!95145) Bool)

(assert (=> start!119392 (array_inv!34876 a!2901)))

(declare-fun b!1391312 () Bool)

(assert (=> b!1391312 (= e!787902 (not true))))

(declare-fun e!787904 () Bool)

(assert (=> b!1391312 e!787904))

(declare-fun res!931285 () Bool)

(assert (=> b!1391312 (=> (not res!931285) (not e!787904))))

(assert (=> b!1391312 (= res!931285 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46494 0))(
  ( (Unit!46495) )
))
(declare-fun lt!611130 () Unit!46494)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46494)

(assert (=> b!1391312 (= lt!611130 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10270 0))(
  ( (MissingZero!10270 (index!43450 (_ BitVec 32))) (Found!10270 (index!43451 (_ BitVec 32))) (Intermediate!10270 (undefined!11082 Bool) (index!43452 (_ BitVec 32)) (x!125139 (_ BitVec 32))) (Undefined!10270) (MissingVacant!10270 (index!43453 (_ BitVec 32))) )
))
(declare-fun lt!611131 () SeekEntryResult!10270)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95145 (_ BitVec 32)) SeekEntryResult!10270)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391312 (= lt!611131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45931 a!2901) j!112) mask!2840) (select (arr!45931 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391313 () Bool)

(declare-fun res!931290 () Bool)

(assert (=> b!1391313 (=> (not res!931290) (not e!787902))))

(assert (=> b!1391313 (= res!931290 (and (= (size!46482 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46482 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46482 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391314 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95145 (_ BitVec 32)) SeekEntryResult!10270)

(assert (=> b!1391314 (= e!787904 (= (seekEntryOrOpen!0 (select (arr!45931 a!2901) j!112) a!2901 mask!2840) (Found!10270 j!112)))))

(assert (= (and start!119392 res!931284) b!1391313))

(assert (= (and b!1391313 res!931290) b!1391309))

(assert (= (and b!1391309 res!931288) b!1391308))

(assert (= (and b!1391308 res!931286) b!1391310))

(assert (= (and b!1391310 res!931287) b!1391311))

(assert (= (and b!1391311 res!931289) b!1391312))

(assert (= (and b!1391312 res!931285) b!1391314))

(declare-fun m!1277135 () Bool)

(assert (=> start!119392 m!1277135))

(declare-fun m!1277137 () Bool)

(assert (=> start!119392 m!1277137))

(declare-fun m!1277139 () Bool)

(assert (=> b!1391312 m!1277139))

(declare-fun m!1277141 () Bool)

(assert (=> b!1391312 m!1277141))

(assert (=> b!1391312 m!1277139))

(declare-fun m!1277143 () Bool)

(assert (=> b!1391312 m!1277143))

(assert (=> b!1391312 m!1277141))

(assert (=> b!1391312 m!1277139))

(declare-fun m!1277145 () Bool)

(assert (=> b!1391312 m!1277145))

(declare-fun m!1277147 () Bool)

(assert (=> b!1391312 m!1277147))

(declare-fun m!1277149 () Bool)

(assert (=> b!1391311 m!1277149))

(assert (=> b!1391314 m!1277139))

(assert (=> b!1391314 m!1277139))

(declare-fun m!1277151 () Bool)

(assert (=> b!1391314 m!1277151))

(declare-fun m!1277153 () Bool)

(assert (=> b!1391310 m!1277153))

(declare-fun m!1277155 () Bool)

(assert (=> b!1391309 m!1277155))

(assert (=> b!1391309 m!1277155))

(declare-fun m!1277157 () Bool)

(assert (=> b!1391309 m!1277157))

(assert (=> b!1391308 m!1277139))

(assert (=> b!1391308 m!1277139))

(declare-fun m!1277159 () Bool)

(assert (=> b!1391308 m!1277159))

(push 1)

(assert (not b!1391310))

(assert (not b!1391308))

(assert (not start!119392))

(assert (not b!1391309))

(assert (not b!1391311))

(assert (not b!1391312))

(assert (not b!1391314))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

