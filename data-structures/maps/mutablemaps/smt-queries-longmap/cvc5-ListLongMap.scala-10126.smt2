; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119398 () Bool)

(assert start!119398)

(declare-fun b!1391371 () Bool)

(declare-fun res!931351 () Bool)

(declare-fun e!787930 () Bool)

(assert (=> b!1391371 (=> (not res!931351) (not e!787930))))

(declare-datatypes ((array!95151 0))(
  ( (array!95152 (arr!45934 (Array (_ BitVec 32) (_ BitVec 64))) (size!46485 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95151)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95151 (_ BitVec 32)) Bool)

(assert (=> b!1391371 (= res!931351 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391372 () Bool)

(declare-fun res!931350 () Bool)

(assert (=> b!1391372 (=> (not res!931350) (not e!787930))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391372 (= res!931350 (validKeyInArray!0 (select (arr!45934 a!2901) j!112)))))

(declare-fun res!931348 () Bool)

(assert (=> start!119398 (=> (not res!931348) (not e!787930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119398 (= res!931348 (validMask!0 mask!2840))))

(assert (=> start!119398 e!787930))

(assert (=> start!119398 true))

(declare-fun array_inv!34879 (array!95151) Bool)

(assert (=> start!119398 (array_inv!34879 a!2901)))

(declare-fun b!1391373 () Bool)

(declare-datatypes ((SeekEntryResult!10273 0))(
  ( (MissingZero!10273 (index!43462 (_ BitVec 32))) (Found!10273 (index!43463 (_ BitVec 32))) (Intermediate!10273 (undefined!11085 Bool) (index!43464 (_ BitVec 32)) (x!125150 (_ BitVec 32))) (Undefined!10273) (MissingVacant!10273 (index!43465 (_ BitVec 32))) )
))
(declare-fun lt!611149 () SeekEntryResult!10273)

(assert (=> b!1391373 (= e!787930 (not (or (not (is-Intermediate!10273 lt!611149)) (undefined!11085 lt!611149) (bvsge mask!2840 #b00000000000000000000000000000000))))))

(declare-fun e!787929 () Bool)

(assert (=> b!1391373 e!787929))

(declare-fun res!931352 () Bool)

(assert (=> b!1391373 (=> (not res!931352) (not e!787929))))

(assert (=> b!1391373 (= res!931352 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46500 0))(
  ( (Unit!46501) )
))
(declare-fun lt!611148 () Unit!46500)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95151 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46500)

(assert (=> b!1391373 (= lt!611148 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95151 (_ BitVec 32)) SeekEntryResult!10273)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391373 (= lt!611149 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45934 a!2901) j!112) mask!2840) (select (arr!45934 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391374 () Bool)

(declare-fun res!931347 () Bool)

(assert (=> b!1391374 (=> (not res!931347) (not e!787930))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391374 (= res!931347 (and (= (size!46485 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46485 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46485 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391375 () Bool)

(declare-fun res!931349 () Bool)

(assert (=> b!1391375 (=> (not res!931349) (not e!787930))))

(declare-datatypes ((List!32633 0))(
  ( (Nil!32630) (Cons!32629 (h!33853 (_ BitVec 64)) (t!47334 List!32633)) )
))
(declare-fun arrayNoDuplicates!0 (array!95151 (_ BitVec 32) List!32633) Bool)

(assert (=> b!1391375 (= res!931349 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32630))))

(declare-fun b!1391376 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95151 (_ BitVec 32)) SeekEntryResult!10273)

(assert (=> b!1391376 (= e!787929 (= (seekEntryOrOpen!0 (select (arr!45934 a!2901) j!112) a!2901 mask!2840) (Found!10273 j!112)))))

(declare-fun b!1391377 () Bool)

(declare-fun res!931353 () Bool)

(assert (=> b!1391377 (=> (not res!931353) (not e!787930))))

(assert (=> b!1391377 (= res!931353 (validKeyInArray!0 (select (arr!45934 a!2901) i!1037)))))

(assert (= (and start!119398 res!931348) b!1391374))

(assert (= (and b!1391374 res!931347) b!1391377))

(assert (= (and b!1391377 res!931353) b!1391372))

(assert (= (and b!1391372 res!931350) b!1391371))

(assert (= (and b!1391371 res!931351) b!1391375))

(assert (= (and b!1391375 res!931349) b!1391373))

(assert (= (and b!1391373 res!931352) b!1391376))

(declare-fun m!1277213 () Bool)

(assert (=> b!1391372 m!1277213))

(assert (=> b!1391372 m!1277213))

(declare-fun m!1277215 () Bool)

(assert (=> b!1391372 m!1277215))

(assert (=> b!1391373 m!1277213))

(declare-fun m!1277217 () Bool)

(assert (=> b!1391373 m!1277217))

(assert (=> b!1391373 m!1277213))

(declare-fun m!1277219 () Bool)

(assert (=> b!1391373 m!1277219))

(assert (=> b!1391373 m!1277217))

(assert (=> b!1391373 m!1277213))

(declare-fun m!1277221 () Bool)

(assert (=> b!1391373 m!1277221))

(declare-fun m!1277223 () Bool)

(assert (=> b!1391373 m!1277223))

(declare-fun m!1277225 () Bool)

(assert (=> b!1391371 m!1277225))

(assert (=> b!1391376 m!1277213))

(assert (=> b!1391376 m!1277213))

(declare-fun m!1277227 () Bool)

(assert (=> b!1391376 m!1277227))

(declare-fun m!1277229 () Bool)

(assert (=> b!1391375 m!1277229))

(declare-fun m!1277231 () Bool)

(assert (=> b!1391377 m!1277231))

(assert (=> b!1391377 m!1277231))

(declare-fun m!1277233 () Bool)

(assert (=> b!1391377 m!1277233))

(declare-fun m!1277235 () Bool)

(assert (=> start!119398 m!1277235))

(declare-fun m!1277237 () Bool)

(assert (=> start!119398 m!1277237))

(push 1)

