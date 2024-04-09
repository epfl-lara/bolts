; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122230 () Bool)

(assert start!122230)

(declare-fun b!1417423 () Bool)

(declare-fun res!953264 () Bool)

(declare-fun e!802221 () Bool)

(assert (=> b!1417423 (=> (not res!953264) (not e!802221))))

(declare-datatypes ((array!96732 0))(
  ( (array!96733 (arr!46690 (Array (_ BitVec 32) (_ BitVec 64))) (size!47241 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96732)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417423 (= res!953264 (validKeyInArray!0 (select (arr!46690 a!2901) i!1037)))))

(declare-fun b!1417424 () Bool)

(declare-fun res!953268 () Bool)

(assert (=> b!1417424 (=> (not res!953268) (not e!802221))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1417424 (= res!953268 (and (= (size!47241 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47241 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47241 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417425 () Bool)

(declare-fun e!802223 () Bool)

(declare-datatypes ((SeekEntryResult!11023 0))(
  ( (MissingZero!11023 (index!46483 (_ BitVec 32))) (Found!11023 (index!46484 (_ BitVec 32))) (Intermediate!11023 (undefined!11835 Bool) (index!46485 (_ BitVec 32)) (x!128093 (_ BitVec 32))) (Undefined!11023) (MissingVacant!11023 (index!46486 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96732 (_ BitVec 32)) SeekEntryResult!11023)

(assert (=> b!1417425 (= e!802223 (= (seekEntryOrOpen!0 (select (arr!46690 a!2901) j!112) a!2901 mask!2840) (Found!11023 j!112)))))

(declare-fun res!953266 () Bool)

(assert (=> start!122230 (=> (not res!953266) (not e!802221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122230 (= res!953266 (validMask!0 mask!2840))))

(assert (=> start!122230 e!802221))

(assert (=> start!122230 true))

(declare-fun array_inv!35635 (array!96732) Bool)

(assert (=> start!122230 (array_inv!35635 a!2901)))

(declare-fun b!1417426 () Bool)

(declare-fun res!953263 () Bool)

(assert (=> b!1417426 (=> (not res!953263) (not e!802221))))

(declare-datatypes ((List!33389 0))(
  ( (Nil!33386) (Cons!33385 (h!34678 (_ BitVec 64)) (t!48090 List!33389)) )
))
(declare-fun arrayNoDuplicates!0 (array!96732 (_ BitVec 32) List!33389) Bool)

(assert (=> b!1417426 (= res!953263 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33386))))

(declare-fun b!1417427 () Bool)

(declare-fun res!953267 () Bool)

(assert (=> b!1417427 (=> (not res!953267) (not e!802221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96732 (_ BitVec 32)) Bool)

(assert (=> b!1417427 (= res!953267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1417428 () Bool)

(declare-fun res!953262 () Bool)

(assert (=> b!1417428 (=> (not res!953262) (not e!802221))))

(assert (=> b!1417428 (= res!953262 (validKeyInArray!0 (select (arr!46690 a!2901) j!112)))))

(declare-fun b!1417429 () Bool)

(assert (=> b!1417429 (= e!802221 (not true))))

(assert (=> b!1417429 e!802223))

(declare-fun res!953265 () Bool)

(assert (=> b!1417429 (=> (not res!953265) (not e!802223))))

(assert (=> b!1417429 (= res!953265 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47970 0))(
  ( (Unit!47971) )
))
(declare-fun lt!625330 () Unit!47970)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96732 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47970)

(assert (=> b!1417429 (= lt!625330 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!625329 () SeekEntryResult!11023)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96732 (_ BitVec 32)) SeekEntryResult!11023)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417429 (= lt!625329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46690 a!2901) j!112) mask!2840) (select (arr!46690 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!122230 res!953266) b!1417424))

(assert (= (and b!1417424 res!953268) b!1417423))

(assert (= (and b!1417423 res!953264) b!1417428))

(assert (= (and b!1417428 res!953262) b!1417427))

(assert (= (and b!1417427 res!953267) b!1417426))

(assert (= (and b!1417426 res!953263) b!1417429))

(assert (= (and b!1417429 res!953265) b!1417425))

(declare-fun m!1308215 () Bool)

(assert (=> b!1417425 m!1308215))

(assert (=> b!1417425 m!1308215))

(declare-fun m!1308217 () Bool)

(assert (=> b!1417425 m!1308217))

(declare-fun m!1308219 () Bool)

(assert (=> b!1417423 m!1308219))

(assert (=> b!1417423 m!1308219))

(declare-fun m!1308221 () Bool)

(assert (=> b!1417423 m!1308221))

(declare-fun m!1308223 () Bool)

(assert (=> start!122230 m!1308223))

(declare-fun m!1308225 () Bool)

(assert (=> start!122230 m!1308225))

(declare-fun m!1308227 () Bool)

(assert (=> b!1417427 m!1308227))

(assert (=> b!1417429 m!1308215))

(declare-fun m!1308229 () Bool)

(assert (=> b!1417429 m!1308229))

(assert (=> b!1417429 m!1308215))

(declare-fun m!1308231 () Bool)

(assert (=> b!1417429 m!1308231))

(assert (=> b!1417429 m!1308229))

(assert (=> b!1417429 m!1308215))

(declare-fun m!1308233 () Bool)

(assert (=> b!1417429 m!1308233))

(declare-fun m!1308235 () Bool)

(assert (=> b!1417429 m!1308235))

(declare-fun m!1308237 () Bool)

(assert (=> b!1417426 m!1308237))

(assert (=> b!1417428 m!1308215))

(assert (=> b!1417428 m!1308215))

(declare-fun m!1308239 () Bool)

(assert (=> b!1417428 m!1308239))

(push 1)

(assert (not b!1417423))

(assert (not b!1417426))

(assert (not b!1417429))

(assert (not b!1417425))

(assert (not b!1417428))

(assert (not b!1417427))

(assert (not start!122230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

