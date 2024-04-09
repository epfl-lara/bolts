; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119716 () Bool)

(assert start!119716)

(declare-fun res!933489 () Bool)

(declare-fun e!789306 () Bool)

(assert (=> start!119716 (=> (not res!933489) (not e!789306))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119716 (= res!933489 (validMask!0 mask!2840))))

(assert (=> start!119716 e!789306))

(assert (=> start!119716 true))

(declare-datatypes ((array!95316 0))(
  ( (array!95317 (arr!46012 (Array (_ BitVec 32) (_ BitVec 64))) (size!46563 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95316)

(declare-fun array_inv!34957 (array!95316) Bool)

(assert (=> start!119716 (array_inv!34957 a!2901)))

(declare-fun b!1393965 () Bool)

(declare-fun res!933487 () Bool)

(assert (=> b!1393965 (=> (not res!933487) (not e!789306))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1393965 (= res!933487 (validKeyInArray!0 (select (arr!46012 a!2901) i!1037)))))

(declare-fun b!1393966 () Bool)

(declare-fun res!933482 () Bool)

(assert (=> b!1393966 (=> (not res!933482) (not e!789306))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1393966 (= res!933482 (validKeyInArray!0 (select (arr!46012 a!2901) j!112)))))

(declare-fun b!1393967 () Bool)

(declare-fun res!933484 () Bool)

(assert (=> b!1393967 (=> (not res!933484) (not e!789306))))

(declare-datatypes ((List!32711 0))(
  ( (Nil!32708) (Cons!32707 (h!33940 (_ BitVec 64)) (t!47412 List!32711)) )
))
(declare-fun arrayNoDuplicates!0 (array!95316 (_ BitVec 32) List!32711) Bool)

(assert (=> b!1393967 (= res!933484 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32708))))

(declare-fun e!789308 () Bool)

(declare-fun b!1393968 () Bool)

(declare-datatypes ((SeekEntryResult!10351 0))(
  ( (MissingZero!10351 (index!43774 (_ BitVec 32))) (Found!10351 (index!43775 (_ BitVec 32))) (Intermediate!10351 (undefined!11163 Bool) (index!43776 (_ BitVec 32)) (x!125454 (_ BitVec 32))) (Undefined!10351) (MissingVacant!10351 (index!43777 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95316 (_ BitVec 32)) SeekEntryResult!10351)

(assert (=> b!1393968 (= e!789308 (= (seekEntryOrOpen!0 (select (arr!46012 a!2901) j!112) a!2901 mask!2840) (Found!10351 j!112)))))

(declare-fun b!1393969 () Bool)

(declare-fun e!789305 () Bool)

(assert (=> b!1393969 (= e!789306 (not e!789305))))

(declare-fun res!933488 () Bool)

(assert (=> b!1393969 (=> res!933488 e!789305)))

(declare-fun lt!612160 () SeekEntryResult!10351)

(assert (=> b!1393969 (= res!933488 (or (not (is-Intermediate!10351 lt!612160)) (undefined!11163 lt!612160)))))

(assert (=> b!1393969 e!789308))

(declare-fun res!933483 () Bool)

(assert (=> b!1393969 (=> (not res!933483) (not e!789308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95316 (_ BitVec 32)) Bool)

(assert (=> b!1393969 (= res!933483 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46656 0))(
  ( (Unit!46657) )
))
(declare-fun lt!612158 () Unit!46656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95316 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46656)

(assert (=> b!1393969 (= lt!612158 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95316 (_ BitVec 32)) SeekEntryResult!10351)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1393969 (= lt!612160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46012 a!2901) j!112) mask!2840) (select (arr!46012 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1393970 () Bool)

(declare-fun res!933485 () Bool)

(assert (=> b!1393970 (=> (not res!933485) (not e!789306))))

(assert (=> b!1393970 (= res!933485 (and (= (size!46563 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46563 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46563 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1393971 () Bool)

(assert (=> b!1393971 (= e!789305 true)))

(declare-fun lt!612159 () SeekEntryResult!10351)

(assert (=> b!1393971 (= lt!612159 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46012 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46012 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95317 (store (arr!46012 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46563 a!2901)) mask!2840))))

(declare-fun b!1393972 () Bool)

(declare-fun res!933486 () Bool)

(assert (=> b!1393972 (=> (not res!933486) (not e!789306))))

(assert (=> b!1393972 (= res!933486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!119716 res!933489) b!1393970))

(assert (= (and b!1393970 res!933485) b!1393965))

(assert (= (and b!1393965 res!933487) b!1393966))

(assert (= (and b!1393966 res!933482) b!1393972))

(assert (= (and b!1393972 res!933486) b!1393967))

(assert (= (and b!1393967 res!933484) b!1393969))

(assert (= (and b!1393969 res!933483) b!1393968))

(assert (= (and b!1393969 (not res!933488)) b!1393971))

(declare-fun m!1280189 () Bool)

(assert (=> b!1393969 m!1280189))

(declare-fun m!1280191 () Bool)

(assert (=> b!1393969 m!1280191))

(assert (=> b!1393969 m!1280189))

(declare-fun m!1280193 () Bool)

(assert (=> b!1393969 m!1280193))

(assert (=> b!1393969 m!1280191))

(assert (=> b!1393969 m!1280189))

(declare-fun m!1280195 () Bool)

(assert (=> b!1393969 m!1280195))

(declare-fun m!1280197 () Bool)

(assert (=> b!1393969 m!1280197))

(declare-fun m!1280199 () Bool)

(assert (=> b!1393967 m!1280199))

(declare-fun m!1280201 () Bool)

(assert (=> b!1393972 m!1280201))

(declare-fun m!1280203 () Bool)

(assert (=> b!1393965 m!1280203))

(assert (=> b!1393965 m!1280203))

(declare-fun m!1280205 () Bool)

(assert (=> b!1393965 m!1280205))

(assert (=> b!1393966 m!1280189))

(assert (=> b!1393966 m!1280189))

(declare-fun m!1280207 () Bool)

(assert (=> b!1393966 m!1280207))

(declare-fun m!1280209 () Bool)

(assert (=> start!119716 m!1280209))

(declare-fun m!1280211 () Bool)

(assert (=> start!119716 m!1280211))

(assert (=> b!1393968 m!1280189))

(assert (=> b!1393968 m!1280189))

(declare-fun m!1280213 () Bool)

(assert (=> b!1393968 m!1280213))

(declare-fun m!1280215 () Bool)

(assert (=> b!1393971 m!1280215))

(declare-fun m!1280217 () Bool)

(assert (=> b!1393971 m!1280217))

(assert (=> b!1393971 m!1280217))

(declare-fun m!1280219 () Bool)

(assert (=> b!1393971 m!1280219))

(assert (=> b!1393971 m!1280219))

(assert (=> b!1393971 m!1280217))

(declare-fun m!1280221 () Bool)

(assert (=> b!1393971 m!1280221))

(push 1)

(assert (not b!1393969))

(assert (not b!1393967))

(assert (not b!1393966))

(assert (not b!1393968))

(assert (not start!119716))

(assert (not b!1393971))

(assert (not b!1393965))

(assert (not b!1393972))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

