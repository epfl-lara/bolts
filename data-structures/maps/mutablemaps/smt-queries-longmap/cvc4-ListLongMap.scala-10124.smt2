; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119390 () Bool)

(assert start!119390)

(declare-fun b!1391287 () Bool)

(declare-fun e!787895 () Bool)

(assert (=> b!1391287 (= e!787895 (not true))))

(declare-fun e!787893 () Bool)

(assert (=> b!1391287 e!787893))

(declare-fun res!931263 () Bool)

(assert (=> b!1391287 (=> (not res!931263) (not e!787893))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95143 0))(
  ( (array!95144 (arr!45930 (Array (_ BitVec 32) (_ BitVec 64))) (size!46481 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95143)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95143 (_ BitVec 32)) Bool)

(assert (=> b!1391287 (= res!931263 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46492 0))(
  ( (Unit!46493) )
))
(declare-fun lt!611125 () Unit!46492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46492)

(assert (=> b!1391287 (= lt!611125 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10269 0))(
  ( (MissingZero!10269 (index!43446 (_ BitVec 32))) (Found!10269 (index!43447 (_ BitVec 32))) (Intermediate!10269 (undefined!11081 Bool) (index!43448 (_ BitVec 32)) (x!125130 (_ BitVec 32))) (Undefined!10269) (MissingVacant!10269 (index!43449 (_ BitVec 32))) )
))
(declare-fun lt!611124 () SeekEntryResult!10269)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95143 (_ BitVec 32)) SeekEntryResult!10269)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391287 (= lt!611124 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45930 a!2901) j!112) mask!2840) (select (arr!45930 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391289 () Bool)

(declare-fun res!931265 () Bool)

(assert (=> b!1391289 (=> (not res!931265) (not e!787895))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391289 (= res!931265 (and (= (size!46481 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46481 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46481 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391290 () Bool)

(declare-fun res!931264 () Bool)

(assert (=> b!1391290 (=> (not res!931264) (not e!787895))))

(declare-datatypes ((List!32629 0))(
  ( (Nil!32626) (Cons!32625 (h!33849 (_ BitVec 64)) (t!47330 List!32629)) )
))
(declare-fun arrayNoDuplicates!0 (array!95143 (_ BitVec 32) List!32629) Bool)

(assert (=> b!1391290 (= res!931264 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32626))))

(declare-fun b!1391291 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95143 (_ BitVec 32)) SeekEntryResult!10269)

(assert (=> b!1391291 (= e!787893 (= (seekEntryOrOpen!0 (select (arr!45930 a!2901) j!112) a!2901 mask!2840) (Found!10269 j!112)))))

(declare-fun b!1391292 () Bool)

(declare-fun res!931269 () Bool)

(assert (=> b!1391292 (=> (not res!931269) (not e!787895))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391292 (= res!931269 (validKeyInArray!0 (select (arr!45930 a!2901) j!112)))))

(declare-fun b!1391293 () Bool)

(declare-fun res!931266 () Bool)

(assert (=> b!1391293 (=> (not res!931266) (not e!787895))))

(assert (=> b!1391293 (= res!931266 (validKeyInArray!0 (select (arr!45930 a!2901) i!1037)))))

(declare-fun b!1391288 () Bool)

(declare-fun res!931267 () Bool)

(assert (=> b!1391288 (=> (not res!931267) (not e!787895))))

(assert (=> b!1391288 (= res!931267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!931268 () Bool)

(assert (=> start!119390 (=> (not res!931268) (not e!787895))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119390 (= res!931268 (validMask!0 mask!2840))))

(assert (=> start!119390 e!787895))

(assert (=> start!119390 true))

(declare-fun array_inv!34875 (array!95143) Bool)

(assert (=> start!119390 (array_inv!34875 a!2901)))

(assert (= (and start!119390 res!931268) b!1391289))

(assert (= (and b!1391289 res!931265) b!1391293))

(assert (= (and b!1391293 res!931266) b!1391292))

(assert (= (and b!1391292 res!931269) b!1391288))

(assert (= (and b!1391288 res!931267) b!1391290))

(assert (= (and b!1391290 res!931264) b!1391287))

(assert (= (and b!1391287 res!931263) b!1391291))

(declare-fun m!1277109 () Bool)

(assert (=> b!1391288 m!1277109))

(declare-fun m!1277111 () Bool)

(assert (=> b!1391292 m!1277111))

(assert (=> b!1391292 m!1277111))

(declare-fun m!1277113 () Bool)

(assert (=> b!1391292 m!1277113))

(assert (=> b!1391291 m!1277111))

(assert (=> b!1391291 m!1277111))

(declare-fun m!1277115 () Bool)

(assert (=> b!1391291 m!1277115))

(declare-fun m!1277117 () Bool)

(assert (=> b!1391293 m!1277117))

(assert (=> b!1391293 m!1277117))

(declare-fun m!1277119 () Bool)

(assert (=> b!1391293 m!1277119))

(declare-fun m!1277121 () Bool)

(assert (=> b!1391290 m!1277121))

(declare-fun m!1277123 () Bool)

(assert (=> start!119390 m!1277123))

(declare-fun m!1277125 () Bool)

(assert (=> start!119390 m!1277125))

(assert (=> b!1391287 m!1277111))

(declare-fun m!1277127 () Bool)

(assert (=> b!1391287 m!1277127))

(assert (=> b!1391287 m!1277111))

(declare-fun m!1277129 () Bool)

(assert (=> b!1391287 m!1277129))

(assert (=> b!1391287 m!1277127))

(assert (=> b!1391287 m!1277111))

(declare-fun m!1277131 () Bool)

(assert (=> b!1391287 m!1277131))

(declare-fun m!1277133 () Bool)

(assert (=> b!1391287 m!1277133))

(push 1)

(assert (not b!1391288))

(assert (not b!1391290))

(assert (not start!119390))

(assert (not b!1391287))

(assert (not b!1391293))

(assert (not b!1391292))

(assert (not b!1391291))

(check-sat)

(pop 1)

