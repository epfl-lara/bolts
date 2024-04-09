; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119726 () Bool)

(assert start!119726)

(declare-fun b!1394085 () Bool)

(declare-fun res!933603 () Bool)

(declare-fun e!789367 () Bool)

(assert (=> b!1394085 (=> (not res!933603) (not e!789367))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95326 0))(
  ( (array!95327 (arr!46017 (Array (_ BitVec 32) (_ BitVec 64))) (size!46568 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95326)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1394085 (= res!933603 (and (= (size!46568 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46568 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46568 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1394086 () Bool)

(declare-fun e!789366 () Bool)

(declare-datatypes ((SeekEntryResult!10356 0))(
  ( (MissingZero!10356 (index!43794 (_ BitVec 32))) (Found!10356 (index!43795 (_ BitVec 32))) (Intermediate!10356 (undefined!11168 Bool) (index!43796 (_ BitVec 32)) (x!125467 (_ BitVec 32))) (Undefined!10356) (MissingVacant!10356 (index!43797 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95326 (_ BitVec 32)) SeekEntryResult!10356)

(assert (=> b!1394086 (= e!789366 (= (seekEntryOrOpen!0 (select (arr!46017 a!2901) j!112) a!2901 mask!2840) (Found!10356 j!112)))))

(declare-fun res!933608 () Bool)

(assert (=> start!119726 (=> (not res!933608) (not e!789367))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119726 (= res!933608 (validMask!0 mask!2840))))

(assert (=> start!119726 e!789367))

(assert (=> start!119726 true))

(declare-fun array_inv!34962 (array!95326) Bool)

(assert (=> start!119726 (array_inv!34962 a!2901)))

(declare-fun b!1394087 () Bool)

(declare-fun e!789368 () Bool)

(assert (=> b!1394087 (= e!789367 (not e!789368))))

(declare-fun res!933602 () Bool)

(assert (=> b!1394087 (=> res!933602 e!789368)))

(declare-fun lt!612203 () SeekEntryResult!10356)

(assert (=> b!1394087 (= res!933602 (or (not (is-Intermediate!10356 lt!612203)) (undefined!11168 lt!612203)))))

(assert (=> b!1394087 e!789366))

(declare-fun res!933606 () Bool)

(assert (=> b!1394087 (=> (not res!933606) (not e!789366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95326 (_ BitVec 32)) Bool)

(assert (=> b!1394087 (= res!933606 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46666 0))(
  ( (Unit!46667) )
))
(declare-fun lt!612204 () Unit!46666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95326 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46666)

(assert (=> b!1394087 (= lt!612204 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95326 (_ BitVec 32)) SeekEntryResult!10356)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1394087 (= lt!612203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46017 a!2901) j!112) mask!2840) (select (arr!46017 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1394088 () Bool)

(declare-fun res!933607 () Bool)

(assert (=> b!1394088 (=> (not res!933607) (not e!789367))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1394088 (= res!933607 (validKeyInArray!0 (select (arr!46017 a!2901) i!1037)))))

(declare-fun b!1394089 () Bool)

(declare-fun res!933605 () Bool)

(assert (=> b!1394089 (=> (not res!933605) (not e!789367))))

(declare-datatypes ((List!32716 0))(
  ( (Nil!32713) (Cons!32712 (h!33945 (_ BitVec 64)) (t!47417 List!32716)) )
))
(declare-fun arrayNoDuplicates!0 (array!95326 (_ BitVec 32) List!32716) Bool)

(assert (=> b!1394089 (= res!933605 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32713))))

(declare-fun b!1394090 () Bool)

(declare-fun res!933609 () Bool)

(assert (=> b!1394090 (=> (not res!933609) (not e!789367))))

(assert (=> b!1394090 (= res!933609 (validKeyInArray!0 (select (arr!46017 a!2901) j!112)))))

(declare-fun b!1394091 () Bool)

(declare-fun res!933604 () Bool)

(assert (=> b!1394091 (=> (not res!933604) (not e!789367))))

(assert (=> b!1394091 (= res!933604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1394092 () Bool)

(assert (=> b!1394092 (= e!789368 true)))

(declare-fun lt!612205 () SeekEntryResult!10356)

(assert (=> b!1394092 (= lt!612205 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46017 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46017 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95327 (store (arr!46017 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46568 a!2901)) mask!2840))))

(assert (= (and start!119726 res!933608) b!1394085))

(assert (= (and b!1394085 res!933603) b!1394088))

(assert (= (and b!1394088 res!933607) b!1394090))

(assert (= (and b!1394090 res!933609) b!1394091))

(assert (= (and b!1394091 res!933604) b!1394089))

(assert (= (and b!1394089 res!933605) b!1394087))

(assert (= (and b!1394087 res!933606) b!1394086))

(assert (= (and b!1394087 (not res!933602)) b!1394092))

(declare-fun m!1280359 () Bool)

(assert (=> b!1394091 m!1280359))

(declare-fun m!1280361 () Bool)

(assert (=> b!1394087 m!1280361))

(declare-fun m!1280363 () Bool)

(assert (=> b!1394087 m!1280363))

(assert (=> b!1394087 m!1280361))

(declare-fun m!1280365 () Bool)

(assert (=> b!1394087 m!1280365))

(assert (=> b!1394087 m!1280363))

(assert (=> b!1394087 m!1280361))

(declare-fun m!1280367 () Bool)

(assert (=> b!1394087 m!1280367))

(declare-fun m!1280369 () Bool)

(assert (=> b!1394087 m!1280369))

(declare-fun m!1280371 () Bool)

(assert (=> b!1394089 m!1280371))

(declare-fun m!1280373 () Bool)

(assert (=> b!1394088 m!1280373))

(assert (=> b!1394088 m!1280373))

(declare-fun m!1280375 () Bool)

(assert (=> b!1394088 m!1280375))

(assert (=> b!1394090 m!1280361))

(assert (=> b!1394090 m!1280361))

(declare-fun m!1280377 () Bool)

(assert (=> b!1394090 m!1280377))

(declare-fun m!1280379 () Bool)

(assert (=> b!1394092 m!1280379))

(declare-fun m!1280381 () Bool)

(assert (=> b!1394092 m!1280381))

(assert (=> b!1394092 m!1280381))

(declare-fun m!1280383 () Bool)

(assert (=> b!1394092 m!1280383))

(assert (=> b!1394092 m!1280383))

(assert (=> b!1394092 m!1280381))

(declare-fun m!1280385 () Bool)

(assert (=> b!1394092 m!1280385))

(assert (=> b!1394086 m!1280361))

(assert (=> b!1394086 m!1280361))

(declare-fun m!1280387 () Bool)

(assert (=> b!1394086 m!1280387))

(declare-fun m!1280389 () Bool)

(assert (=> start!119726 m!1280389))

(declare-fun m!1280391 () Bool)

(assert (=> start!119726 m!1280391))

(push 1)

(assert (not start!119726))

(assert (not b!1394091))

(assert (not b!1394090))

(assert (not b!1394092))

(assert (not b!1394087))

(assert (not b!1394086))

(assert (not b!1394089))

(assert (not b!1394088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

