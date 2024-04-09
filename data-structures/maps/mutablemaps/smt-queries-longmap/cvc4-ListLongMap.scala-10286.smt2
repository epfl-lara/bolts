; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120920 () Bool)

(assert start!120920)

(declare-fun b!1406418 () Bool)

(declare-fun res!944745 () Bool)

(declare-fun e!796055 () Bool)

(assert (=> b!1406418 (=> (not res!944745) (not e!796055))))

(declare-datatypes ((array!96145 0))(
  ( (array!96146 (arr!46416 (Array (_ BitVec 32) (_ BitVec 64))) (size!46967 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96145)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406418 (= res!944745 (validKeyInArray!0 (select (arr!46416 a!2901) i!1037)))))

(declare-fun res!944749 () Bool)

(assert (=> start!120920 (=> (not res!944749) (not e!796055))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120920 (= res!944749 (validMask!0 mask!2840))))

(assert (=> start!120920 e!796055))

(assert (=> start!120920 true))

(declare-fun array_inv!35361 (array!96145) Bool)

(assert (=> start!120920 (array_inv!35361 a!2901)))

(declare-fun e!796058 () Bool)

(declare-fun b!1406419 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10749 0))(
  ( (MissingZero!10749 (index!45372 (_ BitVec 32))) (Found!10749 (index!45373 (_ BitVec 32))) (Intermediate!10749 (undefined!11561 Bool) (index!45374 (_ BitVec 32)) (x!126975 (_ BitVec 32))) (Undefined!10749) (MissingVacant!10749 (index!45375 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96145 (_ BitVec 32)) SeekEntryResult!10749)

(assert (=> b!1406419 (= e!796058 (= (seekEntryOrOpen!0 (select (arr!46416 a!2901) j!112) a!2901 mask!2840) (Found!10749 j!112)))))

(declare-fun b!1406420 () Bool)

(declare-fun e!796056 () Bool)

(assert (=> b!1406420 (= e!796056 true)))

(declare-fun lt!619346 () SeekEntryResult!10749)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96145 (_ BitVec 32)) SeekEntryResult!10749)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406420 (= lt!619346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46416 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46416 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96146 (store (arr!46416 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46967 a!2901)) mask!2840))))

(declare-fun b!1406421 () Bool)

(declare-fun res!944751 () Bool)

(assert (=> b!1406421 (=> (not res!944751) (not e!796055))))

(assert (=> b!1406421 (= res!944751 (and (= (size!46967 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46967 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46967 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406422 () Bool)

(declare-fun res!944744 () Bool)

(assert (=> b!1406422 (=> (not res!944744) (not e!796055))))

(assert (=> b!1406422 (= res!944744 (validKeyInArray!0 (select (arr!46416 a!2901) j!112)))))

(declare-fun b!1406423 () Bool)

(declare-fun res!944750 () Bool)

(assert (=> b!1406423 (=> (not res!944750) (not e!796055))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96145 (_ BitVec 32)) Bool)

(assert (=> b!1406423 (= res!944750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406424 () Bool)

(assert (=> b!1406424 (= e!796055 (not e!796056))))

(declare-fun res!944748 () Bool)

(assert (=> b!1406424 (=> res!944748 e!796056)))

(declare-fun lt!619348 () SeekEntryResult!10749)

(assert (=> b!1406424 (= res!944748 (or (not (is-Intermediate!10749 lt!619348)) (undefined!11561 lt!619348)))))

(assert (=> b!1406424 e!796058))

(declare-fun res!944746 () Bool)

(assert (=> b!1406424 (=> (not res!944746) (not e!796058))))

(assert (=> b!1406424 (= res!944746 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47422 0))(
  ( (Unit!47423) )
))
(declare-fun lt!619347 () Unit!47422)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47422)

(assert (=> b!1406424 (= lt!619347 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406424 (= lt!619348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46416 a!2901) j!112) mask!2840) (select (arr!46416 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406425 () Bool)

(declare-fun res!944747 () Bool)

(assert (=> b!1406425 (=> (not res!944747) (not e!796055))))

(declare-datatypes ((List!33115 0))(
  ( (Nil!33112) (Cons!33111 (h!34365 (_ BitVec 64)) (t!47816 List!33115)) )
))
(declare-fun arrayNoDuplicates!0 (array!96145 (_ BitVec 32) List!33115) Bool)

(assert (=> b!1406425 (= res!944747 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33112))))

(assert (= (and start!120920 res!944749) b!1406421))

(assert (= (and b!1406421 res!944751) b!1406418))

(assert (= (and b!1406418 res!944745) b!1406422))

(assert (= (and b!1406422 res!944744) b!1406423))

(assert (= (and b!1406423 res!944750) b!1406425))

(assert (= (and b!1406425 res!944747) b!1406424))

(assert (= (and b!1406424 res!944746) b!1406419))

(assert (= (and b!1406424 (not res!944748)) b!1406420))

(declare-fun m!1295647 () Bool)

(assert (=> b!1406424 m!1295647))

(declare-fun m!1295649 () Bool)

(assert (=> b!1406424 m!1295649))

(assert (=> b!1406424 m!1295647))

(declare-fun m!1295651 () Bool)

(assert (=> b!1406424 m!1295651))

(assert (=> b!1406424 m!1295649))

(assert (=> b!1406424 m!1295647))

(declare-fun m!1295653 () Bool)

(assert (=> b!1406424 m!1295653))

(declare-fun m!1295655 () Bool)

(assert (=> b!1406424 m!1295655))

(declare-fun m!1295657 () Bool)

(assert (=> start!120920 m!1295657))

(declare-fun m!1295659 () Bool)

(assert (=> start!120920 m!1295659))

(assert (=> b!1406419 m!1295647))

(assert (=> b!1406419 m!1295647))

(declare-fun m!1295661 () Bool)

(assert (=> b!1406419 m!1295661))

(assert (=> b!1406422 m!1295647))

(assert (=> b!1406422 m!1295647))

(declare-fun m!1295663 () Bool)

(assert (=> b!1406422 m!1295663))

(declare-fun m!1295665 () Bool)

(assert (=> b!1406418 m!1295665))

(assert (=> b!1406418 m!1295665))

(declare-fun m!1295667 () Bool)

(assert (=> b!1406418 m!1295667))

(declare-fun m!1295669 () Bool)

(assert (=> b!1406425 m!1295669))

(declare-fun m!1295671 () Bool)

(assert (=> b!1406420 m!1295671))

(declare-fun m!1295673 () Bool)

(assert (=> b!1406420 m!1295673))

(assert (=> b!1406420 m!1295673))

(declare-fun m!1295675 () Bool)

(assert (=> b!1406420 m!1295675))

(assert (=> b!1406420 m!1295675))

(assert (=> b!1406420 m!1295673))

(declare-fun m!1295677 () Bool)

(assert (=> b!1406420 m!1295677))

(declare-fun m!1295679 () Bool)

(assert (=> b!1406423 m!1295679))

(push 1)

(assert (not b!1406424))

(assert (not start!120920))

(assert (not b!1406422))

(assert (not b!1406418))

(assert (not b!1406420))

(assert (not b!1406419))

(assert (not b!1406425))

(assert (not b!1406423))

(check-sat)

