; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120074 () Bool)

(assert start!120074)

(declare-fun b!1397333 () Bool)

(declare-fun res!936356 () Bool)

(declare-fun e!791105 () Bool)

(assert (=> b!1397333 (=> (not res!936356) (not e!791105))))

(declare-datatypes ((array!95521 0))(
  ( (array!95522 (arr!46110 (Array (_ BitVec 32) (_ BitVec 64))) (size!46661 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95521)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397333 (= res!936356 (validKeyInArray!0 (select (arr!46110 a!2901) i!1037)))))

(declare-fun b!1397334 () Bool)

(declare-fun res!936361 () Bool)

(assert (=> b!1397334 (=> (not res!936361) (not e!791105))))

(declare-datatypes ((List!32809 0))(
  ( (Nil!32806) (Cons!32805 (h!34047 (_ BitVec 64)) (t!47510 List!32809)) )
))
(declare-fun arrayNoDuplicates!0 (array!95521 (_ BitVec 32) List!32809) Bool)

(assert (=> b!1397334 (= res!936361 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32806))))

(declare-fun res!936358 () Bool)

(assert (=> start!120074 (=> (not res!936358) (not e!791105))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120074 (= res!936358 (validMask!0 mask!2840))))

(assert (=> start!120074 e!791105))

(assert (=> start!120074 true))

(declare-fun array_inv!35055 (array!95521) Bool)

(assert (=> start!120074 (array_inv!35055 a!2901)))

(declare-fun b!1397335 () Bool)

(declare-fun res!936360 () Bool)

(assert (=> b!1397335 (=> (not res!936360) (not e!791105))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1397335 (= res!936360 (and (= (size!46661 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46661 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46661 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397336 () Bool)

(declare-fun e!791101 () Bool)

(assert (=> b!1397336 (= e!791101 true)))

(declare-datatypes ((SeekEntryResult!10449 0))(
  ( (MissingZero!10449 (index!44166 (_ BitVec 32))) (Found!10449 (index!44167 (_ BitVec 32))) (Intermediate!10449 (undefined!11261 Bool) (index!44168 (_ BitVec 32)) (x!125826 (_ BitVec 32))) (Undefined!10449) (MissingVacant!10449 (index!44169 (_ BitVec 32))) )
))
(declare-fun lt!614131 () SeekEntryResult!10449)

(declare-fun lt!614127 () (_ BitVec 32))

(declare-fun lt!614129 () (_ BitVec 64))

(declare-fun lt!614126 () array!95521)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95521 (_ BitVec 32)) SeekEntryResult!10449)

(assert (=> b!1397336 (= lt!614131 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614127 lt!614129 lt!614126 mask!2840))))

(declare-fun e!791102 () Bool)

(declare-fun b!1397337 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95521 (_ BitVec 32)) SeekEntryResult!10449)

(assert (=> b!1397337 (= e!791102 (= (seekEntryOrOpen!0 (select (arr!46110 a!2901) j!112) a!2901 mask!2840) (Found!10449 j!112)))))

(declare-fun b!1397338 () Bool)

(declare-fun res!936355 () Bool)

(assert (=> b!1397338 (=> (not res!936355) (not e!791105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95521 (_ BitVec 32)) Bool)

(assert (=> b!1397338 (= res!936355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397339 () Bool)

(declare-fun res!936359 () Bool)

(assert (=> b!1397339 (=> (not res!936359) (not e!791105))))

(assert (=> b!1397339 (= res!936359 (validKeyInArray!0 (select (arr!46110 a!2901) j!112)))))

(declare-fun b!1397340 () Bool)

(declare-fun e!791104 () Bool)

(assert (=> b!1397340 (= e!791105 (not e!791104))))

(declare-fun res!936357 () Bool)

(assert (=> b!1397340 (=> res!936357 e!791104)))

(declare-fun lt!614125 () SeekEntryResult!10449)

(assert (=> b!1397340 (= res!936357 (or (not (is-Intermediate!10449 lt!614125)) (undefined!11261 lt!614125)))))

(assert (=> b!1397340 e!791102))

(declare-fun res!936362 () Bool)

(assert (=> b!1397340 (=> (not res!936362) (not e!791102))))

(assert (=> b!1397340 (= res!936362 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46852 0))(
  ( (Unit!46853) )
))
(declare-fun lt!614128 () Unit!46852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95521 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46852)

(assert (=> b!1397340 (= lt!614128 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1397340 (= lt!614125 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614127 (select (arr!46110 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397340 (= lt!614127 (toIndex!0 (select (arr!46110 a!2901) j!112) mask!2840))))

(declare-fun b!1397341 () Bool)

(assert (=> b!1397341 (= e!791104 e!791101)))

(declare-fun res!936363 () Bool)

(assert (=> b!1397341 (=> res!936363 e!791101)))

(declare-fun lt!614130 () SeekEntryResult!10449)

(assert (=> b!1397341 (= res!936363 (or (= lt!614125 lt!614130) (not (is-Intermediate!10449 lt!614130)) (bvslt (x!125826 lt!614125) #b00000000000000000000000000000000) (bvsgt (x!125826 lt!614125) #b01111111111111111111111111111110) (bvslt lt!614127 #b00000000000000000000000000000000) (bvsge lt!614127 (size!46661 a!2901)) (bvslt (index!44168 lt!614125) #b00000000000000000000000000000000) (bvsge (index!44168 lt!614125) (size!46661 a!2901)) (not (= lt!614125 (Intermediate!10449 false (index!44168 lt!614125) (x!125826 lt!614125)))) (not (= lt!614130 (Intermediate!10449 (undefined!11261 lt!614130) (index!44168 lt!614130) (x!125826 lt!614130))))))))

(assert (=> b!1397341 (= lt!614130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614129 mask!2840) lt!614129 lt!614126 mask!2840))))

(assert (=> b!1397341 (= lt!614129 (select (store (arr!46110 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397341 (= lt!614126 (array!95522 (store (arr!46110 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46661 a!2901)))))

(assert (= (and start!120074 res!936358) b!1397335))

(assert (= (and b!1397335 res!936360) b!1397333))

(assert (= (and b!1397333 res!936356) b!1397339))

(assert (= (and b!1397339 res!936359) b!1397338))

(assert (= (and b!1397338 res!936355) b!1397334))

(assert (= (and b!1397334 res!936361) b!1397340))

(assert (= (and b!1397340 res!936362) b!1397337))

(assert (= (and b!1397340 (not res!936357)) b!1397341))

(assert (= (and b!1397341 (not res!936363)) b!1397336))

(declare-fun m!1284155 () Bool)

(assert (=> start!120074 m!1284155))

(declare-fun m!1284157 () Bool)

(assert (=> start!120074 m!1284157))

(declare-fun m!1284159 () Bool)

(assert (=> b!1397334 m!1284159))

(declare-fun m!1284161 () Bool)

(assert (=> b!1397340 m!1284161))

(declare-fun m!1284163 () Bool)

(assert (=> b!1397340 m!1284163))

(declare-fun m!1284165 () Bool)

(assert (=> b!1397340 m!1284165))

(assert (=> b!1397340 m!1284161))

(declare-fun m!1284167 () Bool)

(assert (=> b!1397340 m!1284167))

(assert (=> b!1397340 m!1284161))

(declare-fun m!1284169 () Bool)

(assert (=> b!1397340 m!1284169))

(declare-fun m!1284171 () Bool)

(assert (=> b!1397341 m!1284171))

(assert (=> b!1397341 m!1284171))

(declare-fun m!1284173 () Bool)

(assert (=> b!1397341 m!1284173))

(declare-fun m!1284175 () Bool)

(assert (=> b!1397341 m!1284175))

(declare-fun m!1284177 () Bool)

(assert (=> b!1397341 m!1284177))

(assert (=> b!1397339 m!1284161))

(assert (=> b!1397339 m!1284161))

(declare-fun m!1284179 () Bool)

(assert (=> b!1397339 m!1284179))

(declare-fun m!1284181 () Bool)

(assert (=> b!1397338 m!1284181))

(declare-fun m!1284183 () Bool)

(assert (=> b!1397336 m!1284183))

(assert (=> b!1397337 m!1284161))

(assert (=> b!1397337 m!1284161))

(declare-fun m!1284185 () Bool)

(assert (=> b!1397337 m!1284185))

(declare-fun m!1284187 () Bool)

(assert (=> b!1397333 m!1284187))

(assert (=> b!1397333 m!1284187))

(declare-fun m!1284189 () Bool)

(assert (=> b!1397333 m!1284189))

(push 1)

