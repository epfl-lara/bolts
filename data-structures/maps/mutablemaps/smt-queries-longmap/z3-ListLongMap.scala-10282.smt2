; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120894 () Bool)

(assert start!120894)

(declare-fun b!1406106 () Bool)

(declare-fun res!944433 () Bool)

(declare-fun e!795899 () Bool)

(assert (=> b!1406106 (=> (not res!944433) (not e!795899))))

(declare-datatypes ((array!96119 0))(
  ( (array!96120 (arr!46403 (Array (_ BitVec 32) (_ BitVec 64))) (size!46954 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96119)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96119 (_ BitVec 32)) Bool)

(assert (=> b!1406106 (= res!944433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406107 () Bool)

(declare-fun e!795900 () Bool)

(assert (=> b!1406107 (= e!795899 (not e!795900))))

(declare-fun res!944438 () Bool)

(assert (=> b!1406107 (=> res!944438 e!795900)))

(declare-datatypes ((SeekEntryResult!10736 0))(
  ( (MissingZero!10736 (index!45320 (_ BitVec 32))) (Found!10736 (index!45321 (_ BitVec 32))) (Intermediate!10736 (undefined!11548 Bool) (index!45322 (_ BitVec 32)) (x!126930 (_ BitVec 32))) (Undefined!10736) (MissingVacant!10736 (index!45323 (_ BitVec 32))) )
))
(declare-fun lt!619230 () SeekEntryResult!10736)

(get-info :version)

(assert (=> b!1406107 (= res!944438 (or (not ((_ is Intermediate!10736) lt!619230)) (undefined!11548 lt!619230)))))

(declare-fun e!795902 () Bool)

(assert (=> b!1406107 e!795902))

(declare-fun res!944436 () Bool)

(assert (=> b!1406107 (=> (not res!944436) (not e!795902))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406107 (= res!944436 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47396 0))(
  ( (Unit!47397) )
))
(declare-fun lt!619231 () Unit!47396)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47396)

(assert (=> b!1406107 (= lt!619231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96119 (_ BitVec 32)) SeekEntryResult!10736)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406107 (= lt!619230 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46403 a!2901) j!112) mask!2840) (select (arr!46403 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406108 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96119 (_ BitVec 32)) SeekEntryResult!10736)

(assert (=> b!1406108 (= e!795902 (= (seekEntryOrOpen!0 (select (arr!46403 a!2901) j!112) a!2901 mask!2840) (Found!10736 j!112)))))

(declare-fun b!1406109 () Bool)

(assert (=> b!1406109 (= e!795900 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!619229 () SeekEntryResult!10736)

(assert (=> b!1406109 (= lt!619229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46403 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46403 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96120 (store (arr!46403 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46954 a!2901)) mask!2840))))

(declare-fun b!1406110 () Bool)

(declare-fun res!944435 () Bool)

(assert (=> b!1406110 (=> (not res!944435) (not e!795899))))

(assert (=> b!1406110 (= res!944435 (and (= (size!46954 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46954 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46954 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!944439 () Bool)

(assert (=> start!120894 (=> (not res!944439) (not e!795899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120894 (= res!944439 (validMask!0 mask!2840))))

(assert (=> start!120894 e!795899))

(assert (=> start!120894 true))

(declare-fun array_inv!35348 (array!96119) Bool)

(assert (=> start!120894 (array_inv!35348 a!2901)))

(declare-fun b!1406111 () Bool)

(declare-fun res!944434 () Bool)

(assert (=> b!1406111 (=> (not res!944434) (not e!795899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406111 (= res!944434 (validKeyInArray!0 (select (arr!46403 a!2901) i!1037)))))

(declare-fun b!1406112 () Bool)

(declare-fun res!944437 () Bool)

(assert (=> b!1406112 (=> (not res!944437) (not e!795899))))

(declare-datatypes ((List!33102 0))(
  ( (Nil!33099) (Cons!33098 (h!34352 (_ BitVec 64)) (t!47803 List!33102)) )
))
(declare-fun arrayNoDuplicates!0 (array!96119 (_ BitVec 32) List!33102) Bool)

(assert (=> b!1406112 (= res!944437 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33099))))

(declare-fun b!1406113 () Bool)

(declare-fun res!944432 () Bool)

(assert (=> b!1406113 (=> (not res!944432) (not e!795899))))

(assert (=> b!1406113 (= res!944432 (validKeyInArray!0 (select (arr!46403 a!2901) j!112)))))

(assert (= (and start!120894 res!944439) b!1406110))

(assert (= (and b!1406110 res!944435) b!1406111))

(assert (= (and b!1406111 res!944434) b!1406113))

(assert (= (and b!1406113 res!944432) b!1406106))

(assert (= (and b!1406106 res!944433) b!1406112))

(assert (= (and b!1406112 res!944437) b!1406107))

(assert (= (and b!1406107 res!944436) b!1406108))

(assert (= (and b!1406107 (not res!944438)) b!1406109))

(declare-fun m!1295205 () Bool)

(assert (=> b!1406109 m!1295205))

(declare-fun m!1295207 () Bool)

(assert (=> b!1406109 m!1295207))

(assert (=> b!1406109 m!1295207))

(declare-fun m!1295209 () Bool)

(assert (=> b!1406109 m!1295209))

(assert (=> b!1406109 m!1295209))

(assert (=> b!1406109 m!1295207))

(declare-fun m!1295211 () Bool)

(assert (=> b!1406109 m!1295211))

(declare-fun m!1295213 () Bool)

(assert (=> b!1406108 m!1295213))

(assert (=> b!1406108 m!1295213))

(declare-fun m!1295215 () Bool)

(assert (=> b!1406108 m!1295215))

(assert (=> b!1406113 m!1295213))

(assert (=> b!1406113 m!1295213))

(declare-fun m!1295217 () Bool)

(assert (=> b!1406113 m!1295217))

(declare-fun m!1295219 () Bool)

(assert (=> b!1406112 m!1295219))

(declare-fun m!1295221 () Bool)

(assert (=> b!1406111 m!1295221))

(assert (=> b!1406111 m!1295221))

(declare-fun m!1295223 () Bool)

(assert (=> b!1406111 m!1295223))

(declare-fun m!1295225 () Bool)

(assert (=> b!1406106 m!1295225))

(assert (=> b!1406107 m!1295213))

(declare-fun m!1295227 () Bool)

(assert (=> b!1406107 m!1295227))

(assert (=> b!1406107 m!1295213))

(declare-fun m!1295229 () Bool)

(assert (=> b!1406107 m!1295229))

(assert (=> b!1406107 m!1295227))

(assert (=> b!1406107 m!1295213))

(declare-fun m!1295231 () Bool)

(assert (=> b!1406107 m!1295231))

(declare-fun m!1295233 () Bool)

(assert (=> b!1406107 m!1295233))

(declare-fun m!1295235 () Bool)

(assert (=> start!120894 m!1295235))

(declare-fun m!1295237 () Bool)

(assert (=> start!120894 m!1295237))

(check-sat (not b!1406107) (not start!120894) (not b!1406106) (not b!1406108) (not b!1406111) (not b!1406109) (not b!1406113) (not b!1406112))
