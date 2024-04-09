; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120904 () Bool)

(assert start!120904)

(declare-fun b!1406226 () Bool)

(declare-fun res!944557 () Bool)

(declare-fun e!795960 () Bool)

(assert (=> b!1406226 (=> (not res!944557) (not e!795960))))

(declare-datatypes ((array!96129 0))(
  ( (array!96130 (arr!46408 (Array (_ BitVec 32) (_ BitVec 64))) (size!46959 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96129)

(declare-datatypes ((List!33107 0))(
  ( (Nil!33104) (Cons!33103 (h!34357 (_ BitVec 64)) (t!47808 List!33107)) )
))
(declare-fun arrayNoDuplicates!0 (array!96129 (_ BitVec 32) List!33107) Bool)

(assert (=> b!1406226 (= res!944557 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33104))))

(declare-fun b!1406227 () Bool)

(declare-fun res!944552 () Bool)

(assert (=> b!1406227 (=> (not res!944552) (not e!795960))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406227 (= res!944552 (and (= (size!46959 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46959 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46959 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406228 () Bool)

(declare-fun res!944553 () Bool)

(assert (=> b!1406228 (=> (not res!944553) (not e!795960))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96129 (_ BitVec 32)) Bool)

(assert (=> b!1406228 (= res!944553 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406229 () Bool)

(declare-fun e!795959 () Bool)

(assert (=> b!1406229 (= e!795959 true)))

(declare-datatypes ((SeekEntryResult!10741 0))(
  ( (MissingZero!10741 (index!45340 (_ BitVec 32))) (Found!10741 (index!45341 (_ BitVec 32))) (Intermediate!10741 (undefined!11553 Bool) (index!45342 (_ BitVec 32)) (x!126951 (_ BitVec 32))) (Undefined!10741) (MissingVacant!10741 (index!45343 (_ BitVec 32))) )
))
(declare-fun lt!619276 () SeekEntryResult!10741)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96129 (_ BitVec 32)) SeekEntryResult!10741)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406229 (= lt!619276 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46408 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46408 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96130 (store (arr!46408 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46959 a!2901)) mask!2840))))

(declare-fun e!795962 () Bool)

(declare-fun b!1406230 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96129 (_ BitVec 32)) SeekEntryResult!10741)

(assert (=> b!1406230 (= e!795962 (= (seekEntryOrOpen!0 (select (arr!46408 a!2901) j!112) a!2901 mask!2840) (Found!10741 j!112)))))

(declare-fun b!1406231 () Bool)

(assert (=> b!1406231 (= e!795960 (not e!795959))))

(declare-fun res!944558 () Bool)

(assert (=> b!1406231 (=> res!944558 e!795959)))

(declare-fun lt!619275 () SeekEntryResult!10741)

(assert (=> b!1406231 (= res!944558 (or (not (is-Intermediate!10741 lt!619275)) (undefined!11553 lt!619275)))))

(assert (=> b!1406231 e!795962))

(declare-fun res!944555 () Bool)

(assert (=> b!1406231 (=> (not res!944555) (not e!795962))))

(assert (=> b!1406231 (= res!944555 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47406 0))(
  ( (Unit!47407) )
))
(declare-fun lt!619274 () Unit!47406)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96129 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47406)

(assert (=> b!1406231 (= lt!619274 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406231 (= lt!619275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46408 a!2901) j!112) mask!2840) (select (arr!46408 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!944554 () Bool)

(assert (=> start!120904 (=> (not res!944554) (not e!795960))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120904 (= res!944554 (validMask!0 mask!2840))))

(assert (=> start!120904 e!795960))

(assert (=> start!120904 true))

(declare-fun array_inv!35353 (array!96129) Bool)

(assert (=> start!120904 (array_inv!35353 a!2901)))

(declare-fun b!1406232 () Bool)

(declare-fun res!944556 () Bool)

(assert (=> b!1406232 (=> (not res!944556) (not e!795960))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406232 (= res!944556 (validKeyInArray!0 (select (arr!46408 a!2901) j!112)))))

(declare-fun b!1406233 () Bool)

(declare-fun res!944559 () Bool)

(assert (=> b!1406233 (=> (not res!944559) (not e!795960))))

(assert (=> b!1406233 (= res!944559 (validKeyInArray!0 (select (arr!46408 a!2901) i!1037)))))

(assert (= (and start!120904 res!944554) b!1406227))

(assert (= (and b!1406227 res!944552) b!1406233))

(assert (= (and b!1406233 res!944559) b!1406232))

(assert (= (and b!1406232 res!944556) b!1406228))

(assert (= (and b!1406228 res!944553) b!1406226))

(assert (= (and b!1406226 res!944557) b!1406231))

(assert (= (and b!1406231 res!944555) b!1406230))

(assert (= (and b!1406231 (not res!944558)) b!1406229))

(declare-fun m!1295375 () Bool)

(assert (=> b!1406228 m!1295375))

(declare-fun m!1295377 () Bool)

(assert (=> b!1406226 m!1295377))

(declare-fun m!1295379 () Bool)

(assert (=> start!120904 m!1295379))

(declare-fun m!1295381 () Bool)

(assert (=> start!120904 m!1295381))

(declare-fun m!1295383 () Bool)

(assert (=> b!1406233 m!1295383))

(assert (=> b!1406233 m!1295383))

(declare-fun m!1295385 () Bool)

(assert (=> b!1406233 m!1295385))

(declare-fun m!1295387 () Bool)

(assert (=> b!1406229 m!1295387))

(declare-fun m!1295389 () Bool)

(assert (=> b!1406229 m!1295389))

(assert (=> b!1406229 m!1295389))

(declare-fun m!1295391 () Bool)

(assert (=> b!1406229 m!1295391))

(assert (=> b!1406229 m!1295391))

(assert (=> b!1406229 m!1295389))

(declare-fun m!1295393 () Bool)

(assert (=> b!1406229 m!1295393))

(declare-fun m!1295395 () Bool)

(assert (=> b!1406231 m!1295395))

(declare-fun m!1295397 () Bool)

(assert (=> b!1406231 m!1295397))

(assert (=> b!1406231 m!1295395))

(declare-fun m!1295399 () Bool)

(assert (=> b!1406231 m!1295399))

(assert (=> b!1406231 m!1295397))

(assert (=> b!1406231 m!1295395))

(declare-fun m!1295401 () Bool)

(assert (=> b!1406231 m!1295401))

(declare-fun m!1295403 () Bool)

(assert (=> b!1406231 m!1295403))

(assert (=> b!1406230 m!1295395))

(assert (=> b!1406230 m!1295395))

(declare-fun m!1295405 () Bool)

(assert (=> b!1406230 m!1295405))

(assert (=> b!1406232 m!1295395))

(assert (=> b!1406232 m!1295395))

(declare-fun m!1295407 () Bool)

(assert (=> b!1406232 m!1295407))

(push 1)

(assert (not b!1406229))

(assert (not b!1406226))

(assert (not b!1406230))

(assert (not b!1406231))

(assert (not b!1406232))

(assert (not start!120904))

(assert (not b!1406233))

(assert (not b!1406228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

