; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122234 () Bool)

(assert start!122234)

(declare-fun b!1417465 () Bool)

(declare-fun res!953310 () Bool)

(declare-fun e!802239 () Bool)

(assert (=> b!1417465 (=> (not res!953310) (not e!802239))))

(declare-datatypes ((array!96736 0))(
  ( (array!96737 (arr!46692 (Array (_ BitVec 32) (_ BitVec 64))) (size!47243 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96736)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417465 (= res!953310 (validKeyInArray!0 (select (arr!46692 a!2901) i!1037)))))

(declare-fun b!1417466 () Bool)

(assert (=> b!1417466 (= e!802239 (not true))))

(declare-fun e!802241 () Bool)

(assert (=> b!1417466 e!802241))

(declare-fun res!953304 () Bool)

(assert (=> b!1417466 (=> (not res!953304) (not e!802241))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96736 (_ BitVec 32)) Bool)

(assert (=> b!1417466 (= res!953304 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47974 0))(
  ( (Unit!47975) )
))
(declare-fun lt!625341 () Unit!47974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96736 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47974)

(assert (=> b!1417466 (= lt!625341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11025 0))(
  ( (MissingZero!11025 (index!46491 (_ BitVec 32))) (Found!11025 (index!46492 (_ BitVec 32))) (Intermediate!11025 (undefined!11837 Bool) (index!46493 (_ BitVec 32)) (x!128095 (_ BitVec 32))) (Undefined!11025) (MissingVacant!11025 (index!46494 (_ BitVec 32))) )
))
(declare-fun lt!625342 () SeekEntryResult!11025)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96736 (_ BitVec 32)) SeekEntryResult!11025)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417466 (= lt!625342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46692 a!2901) j!112) mask!2840) (select (arr!46692 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417467 () Bool)

(declare-fun res!953306 () Bool)

(assert (=> b!1417467 (=> (not res!953306) (not e!802239))))

(assert (=> b!1417467 (= res!953306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417468 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96736 (_ BitVec 32)) SeekEntryResult!11025)

(assert (=> b!1417468 (= e!802241 (= (seekEntryOrOpen!0 (select (arr!46692 a!2901) j!112) a!2901 mask!2840) (Found!11025 j!112)))))

(declare-fun b!1417469 () Bool)

(declare-fun res!953309 () Bool)

(assert (=> b!1417469 (=> (not res!953309) (not e!802239))))

(declare-datatypes ((List!33391 0))(
  ( (Nil!33388) (Cons!33387 (h!34680 (_ BitVec 64)) (t!48092 List!33391)) )
))
(declare-fun arrayNoDuplicates!0 (array!96736 (_ BitVec 32) List!33391) Bool)

(assert (=> b!1417469 (= res!953309 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33388))))

(declare-fun b!1417470 () Bool)

(declare-fun res!953308 () Bool)

(assert (=> b!1417470 (=> (not res!953308) (not e!802239))))

(assert (=> b!1417470 (= res!953308 (and (= (size!47243 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47243 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47243 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!953305 () Bool)

(assert (=> start!122234 (=> (not res!953305) (not e!802239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122234 (= res!953305 (validMask!0 mask!2840))))

(assert (=> start!122234 e!802239))

(assert (=> start!122234 true))

(declare-fun array_inv!35637 (array!96736) Bool)

(assert (=> start!122234 (array_inv!35637 a!2901)))

(declare-fun b!1417471 () Bool)

(declare-fun res!953307 () Bool)

(assert (=> b!1417471 (=> (not res!953307) (not e!802239))))

(assert (=> b!1417471 (= res!953307 (validKeyInArray!0 (select (arr!46692 a!2901) j!112)))))

(assert (= (and start!122234 res!953305) b!1417470))

(assert (= (and b!1417470 res!953308) b!1417465))

(assert (= (and b!1417465 res!953310) b!1417471))

(assert (= (and b!1417471 res!953307) b!1417467))

(assert (= (and b!1417467 res!953306) b!1417469))

(assert (= (and b!1417469 res!953309) b!1417466))

(assert (= (and b!1417466 res!953304) b!1417468))

(declare-fun m!1308267 () Bool)

(assert (=> b!1417466 m!1308267))

(declare-fun m!1308269 () Bool)

(assert (=> b!1417466 m!1308269))

(assert (=> b!1417466 m!1308267))

(declare-fun m!1308271 () Bool)

(assert (=> b!1417466 m!1308271))

(assert (=> b!1417466 m!1308269))

(assert (=> b!1417466 m!1308267))

(declare-fun m!1308273 () Bool)

(assert (=> b!1417466 m!1308273))

(declare-fun m!1308275 () Bool)

(assert (=> b!1417466 m!1308275))

(declare-fun m!1308277 () Bool)

(assert (=> start!122234 m!1308277))

(declare-fun m!1308279 () Bool)

(assert (=> start!122234 m!1308279))

(declare-fun m!1308281 () Bool)

(assert (=> b!1417465 m!1308281))

(assert (=> b!1417465 m!1308281))

(declare-fun m!1308283 () Bool)

(assert (=> b!1417465 m!1308283))

(assert (=> b!1417468 m!1308267))

(assert (=> b!1417468 m!1308267))

(declare-fun m!1308285 () Bool)

(assert (=> b!1417468 m!1308285))

(assert (=> b!1417471 m!1308267))

(assert (=> b!1417471 m!1308267))

(declare-fun m!1308287 () Bool)

(assert (=> b!1417471 m!1308287))

(declare-fun m!1308289 () Bool)

(assert (=> b!1417469 m!1308289))

(declare-fun m!1308291 () Bool)

(assert (=> b!1417467 m!1308291))

(push 1)

(assert (not start!122234))

(assert (not b!1417471))

(assert (not b!1417468))

(assert (not b!1417465))

(assert (not b!1417469))

(assert (not b!1417466))

(assert (not b!1417467))

