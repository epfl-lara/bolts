; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120246 () Bool)

(assert start!120246)

(declare-fun res!937972 () Bool)

(declare-fun e!792113 () Bool)

(assert (=> start!120246 (=> (not res!937972) (not e!792113))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120246 (= res!937972 (validMask!0 mask!2840))))

(assert (=> start!120246 e!792113))

(assert (=> start!120246 true))

(declare-datatypes ((array!95636 0))(
  ( (array!95637 (arr!46166 (Array (_ BitVec 32) (_ BitVec 64))) (size!46717 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95636)

(declare-fun array_inv!35111 (array!95636) Bool)

(assert (=> start!120246 (array_inv!35111 a!2901)))

(declare-fun b!1399109 () Bool)

(declare-fun e!792111 () Bool)

(declare-fun e!792112 () Bool)

(assert (=> b!1399109 (= e!792111 e!792112)))

(declare-fun res!937973 () Bool)

(assert (=> b!1399109 (=> res!937973 e!792112)))

(declare-datatypes ((SeekEntryResult!10505 0))(
  ( (MissingZero!10505 (index!44393 (_ BitVec 32))) (Found!10505 (index!44394 (_ BitVec 32))) (Intermediate!10505 (undefined!11317 Bool) (index!44395 (_ BitVec 32)) (x!126043 (_ BitVec 32))) (Undefined!10505) (MissingVacant!10505 (index!44396 (_ BitVec 32))) )
))
(declare-fun lt!615331 () SeekEntryResult!10505)

(declare-fun lt!615330 () SeekEntryResult!10505)

(get-info :version)

(assert (=> b!1399109 (= res!937973 (or (= lt!615331 lt!615330) (not ((_ is Intermediate!10505) lt!615330))))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!615327 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95636 (_ BitVec 32)) SeekEntryResult!10505)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399109 (= lt!615330 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615327 mask!2840) lt!615327 (array!95637 (store (arr!46166 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46717 a!2901)) mask!2840))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1399109 (= lt!615327 (select (store (arr!46166 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1399110 () Bool)

(assert (=> b!1399110 (= e!792112 true)))

(assert (=> b!1399110 (and (not (undefined!11317 lt!615330)) (= (index!44395 lt!615330) i!1037) (bvslt (x!126043 lt!615330) (x!126043 lt!615331)) (= (select (store (arr!46166 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44395 lt!615330)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!615329 () (_ BitVec 32))

(declare-datatypes ((Unit!46964 0))(
  ( (Unit!46965) )
))
(declare-fun lt!615328 () Unit!46964)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46964)

(assert (=> b!1399110 (= lt!615328 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615329 (x!126043 lt!615331) (index!44395 lt!615331) (x!126043 lt!615330) (index!44395 lt!615330) (undefined!11317 lt!615330) mask!2840))))

(declare-fun b!1399111 () Bool)

(declare-fun res!937969 () Bool)

(assert (=> b!1399111 (=> (not res!937969) (not e!792113))))

(assert (=> b!1399111 (= res!937969 (and (= (size!46717 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46717 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46717 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399112 () Bool)

(declare-fun res!937967 () Bool)

(assert (=> b!1399112 (=> (not res!937967) (not e!792113))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399112 (= res!937967 (validKeyInArray!0 (select (arr!46166 a!2901) i!1037)))))

(declare-fun b!1399113 () Bool)

(declare-fun res!937974 () Bool)

(assert (=> b!1399113 (=> (not res!937974) (not e!792113))))

(declare-datatypes ((List!32865 0))(
  ( (Nil!32862) (Cons!32861 (h!34106 (_ BitVec 64)) (t!47566 List!32865)) )
))
(declare-fun arrayNoDuplicates!0 (array!95636 (_ BitVec 32) List!32865) Bool)

(assert (=> b!1399113 (= res!937974 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32862))))

(declare-fun e!792109 () Bool)

(declare-fun b!1399114 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95636 (_ BitVec 32)) SeekEntryResult!10505)

(assert (=> b!1399114 (= e!792109 (= (seekEntryOrOpen!0 (select (arr!46166 a!2901) j!112) a!2901 mask!2840) (Found!10505 j!112)))))

(declare-fun b!1399115 () Bool)

(assert (=> b!1399115 (= e!792113 (not e!792111))))

(declare-fun res!937966 () Bool)

(assert (=> b!1399115 (=> res!937966 e!792111)))

(assert (=> b!1399115 (= res!937966 (or (not ((_ is Intermediate!10505) lt!615331)) (undefined!11317 lt!615331)))))

(assert (=> b!1399115 e!792109))

(declare-fun res!937971 () Bool)

(assert (=> b!1399115 (=> (not res!937971) (not e!792109))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95636 (_ BitVec 32)) Bool)

(assert (=> b!1399115 (= res!937971 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615326 () Unit!46964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95636 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46964)

(assert (=> b!1399115 (= lt!615326 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399115 (= lt!615331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615329 (select (arr!46166 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399115 (= lt!615329 (toIndex!0 (select (arr!46166 a!2901) j!112) mask!2840))))

(declare-fun b!1399116 () Bool)

(declare-fun res!937968 () Bool)

(assert (=> b!1399116 (=> (not res!937968) (not e!792113))))

(assert (=> b!1399116 (= res!937968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399117 () Bool)

(declare-fun res!937970 () Bool)

(assert (=> b!1399117 (=> (not res!937970) (not e!792113))))

(assert (=> b!1399117 (= res!937970 (validKeyInArray!0 (select (arr!46166 a!2901) j!112)))))

(assert (= (and start!120246 res!937972) b!1399111))

(assert (= (and b!1399111 res!937969) b!1399112))

(assert (= (and b!1399112 res!937967) b!1399117))

(assert (= (and b!1399117 res!937970) b!1399116))

(assert (= (and b!1399116 res!937968) b!1399113))

(assert (= (and b!1399113 res!937974) b!1399115))

(assert (= (and b!1399115 res!937971) b!1399114))

(assert (= (and b!1399115 (not res!937966)) b!1399109))

(assert (= (and b!1399109 (not res!937973)) b!1399110))

(declare-fun m!1286407 () Bool)

(assert (=> start!120246 m!1286407))

(declare-fun m!1286409 () Bool)

(assert (=> start!120246 m!1286409))

(declare-fun m!1286411 () Bool)

(assert (=> b!1399117 m!1286411))

(assert (=> b!1399117 m!1286411))

(declare-fun m!1286413 () Bool)

(assert (=> b!1399117 m!1286413))

(declare-fun m!1286415 () Bool)

(assert (=> b!1399112 m!1286415))

(assert (=> b!1399112 m!1286415))

(declare-fun m!1286417 () Bool)

(assert (=> b!1399112 m!1286417))

(assert (=> b!1399115 m!1286411))

(declare-fun m!1286419 () Bool)

(assert (=> b!1399115 m!1286419))

(assert (=> b!1399115 m!1286411))

(declare-fun m!1286421 () Bool)

(assert (=> b!1399115 m!1286421))

(assert (=> b!1399115 m!1286411))

(declare-fun m!1286423 () Bool)

(assert (=> b!1399115 m!1286423))

(declare-fun m!1286425 () Bool)

(assert (=> b!1399115 m!1286425))

(declare-fun m!1286427 () Bool)

(assert (=> b!1399110 m!1286427))

(declare-fun m!1286429 () Bool)

(assert (=> b!1399110 m!1286429))

(declare-fun m!1286431 () Bool)

(assert (=> b!1399110 m!1286431))

(declare-fun m!1286433 () Bool)

(assert (=> b!1399109 m!1286433))

(assert (=> b!1399109 m!1286427))

(assert (=> b!1399109 m!1286433))

(declare-fun m!1286435 () Bool)

(assert (=> b!1399109 m!1286435))

(declare-fun m!1286437 () Bool)

(assert (=> b!1399109 m!1286437))

(declare-fun m!1286439 () Bool)

(assert (=> b!1399113 m!1286439))

(assert (=> b!1399114 m!1286411))

(assert (=> b!1399114 m!1286411))

(declare-fun m!1286441 () Bool)

(assert (=> b!1399114 m!1286441))

(declare-fun m!1286443 () Bool)

(assert (=> b!1399116 m!1286443))

(check-sat (not b!1399114) (not b!1399116) (not b!1399113) (not start!120246) (not b!1399112) (not b!1399109) (not b!1399110) (not b!1399117) (not b!1399115))
(check-sat)
