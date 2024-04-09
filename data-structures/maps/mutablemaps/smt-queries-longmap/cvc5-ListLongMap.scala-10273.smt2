; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120838 () Bool)

(assert start!120838)

(declare-fun b!1405450 () Bool)

(declare-fun e!795581 () Bool)

(assert (=> b!1405450 (= e!795581 (not true))))

(declare-fun e!795579 () Bool)

(assert (=> b!1405450 e!795579))

(declare-fun res!943776 () Bool)

(assert (=> b!1405450 (=> (not res!943776) (not e!795579))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96063 0))(
  ( (array!96064 (arr!46375 (Array (_ BitVec 32) (_ BitVec 64))) (size!46926 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96063)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96063 (_ BitVec 32)) Bool)

(assert (=> b!1405450 (= res!943776 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47340 0))(
  ( (Unit!47341) )
))
(declare-fun lt!618994 () Unit!47340)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47340)

(assert (=> b!1405450 (= lt!618994 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10708 0))(
  ( (MissingZero!10708 (index!45208 (_ BitVec 32))) (Found!10708 (index!45209 (_ BitVec 32))) (Intermediate!10708 (undefined!11520 Bool) (index!45210 (_ BitVec 32)) (x!126830 (_ BitVec 32))) (Undefined!10708) (MissingVacant!10708 (index!45211 (_ BitVec 32))) )
))
(declare-fun lt!618993 () SeekEntryResult!10708)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96063 (_ BitVec 32)) SeekEntryResult!10708)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405450 (= lt!618993 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46375 a!2901) j!112) mask!2840) (select (arr!46375 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405451 () Bool)

(declare-fun res!943779 () Bool)

(assert (=> b!1405451 (=> (not res!943779) (not e!795581))))

(assert (=> b!1405451 (= res!943779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1405452 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96063 (_ BitVec 32)) SeekEntryResult!10708)

(assert (=> b!1405452 (= e!795579 (= (seekEntryOrOpen!0 (select (arr!46375 a!2901) j!112) a!2901 mask!2840) (Found!10708 j!112)))))

(declare-fun res!943782 () Bool)

(assert (=> start!120838 (=> (not res!943782) (not e!795581))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120838 (= res!943782 (validMask!0 mask!2840))))

(assert (=> start!120838 e!795581))

(assert (=> start!120838 true))

(declare-fun array_inv!35320 (array!96063) Bool)

(assert (=> start!120838 (array_inv!35320 a!2901)))

(declare-fun b!1405453 () Bool)

(declare-fun res!943780 () Bool)

(assert (=> b!1405453 (=> (not res!943780) (not e!795581))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405453 (= res!943780 (validKeyInArray!0 (select (arr!46375 a!2901) i!1037)))))

(declare-fun b!1405454 () Bool)

(declare-fun res!943777 () Bool)

(assert (=> b!1405454 (=> (not res!943777) (not e!795581))))

(assert (=> b!1405454 (= res!943777 (validKeyInArray!0 (select (arr!46375 a!2901) j!112)))))

(declare-fun b!1405455 () Bool)

(declare-fun res!943778 () Bool)

(assert (=> b!1405455 (=> (not res!943778) (not e!795581))))

(assert (=> b!1405455 (= res!943778 (and (= (size!46926 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46926 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46926 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405456 () Bool)

(declare-fun res!943781 () Bool)

(assert (=> b!1405456 (=> (not res!943781) (not e!795581))))

(declare-datatypes ((List!33074 0))(
  ( (Nil!33071) (Cons!33070 (h!34324 (_ BitVec 64)) (t!47775 List!33074)) )
))
(declare-fun arrayNoDuplicates!0 (array!96063 (_ BitVec 32) List!33074) Bool)

(assert (=> b!1405456 (= res!943781 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33071))))

(assert (= (and start!120838 res!943782) b!1405455))

(assert (= (and b!1405455 res!943778) b!1405453))

(assert (= (and b!1405453 res!943780) b!1405454))

(assert (= (and b!1405454 res!943777) b!1405451))

(assert (= (and b!1405451 res!943779) b!1405456))

(assert (= (and b!1405456 res!943781) b!1405450))

(assert (= (and b!1405450 res!943776) b!1405452))

(declare-fun m!1294313 () Bool)

(assert (=> b!1405451 m!1294313))

(declare-fun m!1294315 () Bool)

(assert (=> b!1405456 m!1294315))

(declare-fun m!1294317 () Bool)

(assert (=> b!1405450 m!1294317))

(declare-fun m!1294319 () Bool)

(assert (=> b!1405450 m!1294319))

(assert (=> b!1405450 m!1294317))

(declare-fun m!1294321 () Bool)

(assert (=> b!1405450 m!1294321))

(assert (=> b!1405450 m!1294319))

(assert (=> b!1405450 m!1294317))

(declare-fun m!1294323 () Bool)

(assert (=> b!1405450 m!1294323))

(declare-fun m!1294325 () Bool)

(assert (=> b!1405450 m!1294325))

(declare-fun m!1294327 () Bool)

(assert (=> start!120838 m!1294327))

(declare-fun m!1294329 () Bool)

(assert (=> start!120838 m!1294329))

(assert (=> b!1405454 m!1294317))

(assert (=> b!1405454 m!1294317))

(declare-fun m!1294331 () Bool)

(assert (=> b!1405454 m!1294331))

(assert (=> b!1405452 m!1294317))

(assert (=> b!1405452 m!1294317))

(declare-fun m!1294333 () Bool)

(assert (=> b!1405452 m!1294333))

(declare-fun m!1294335 () Bool)

(assert (=> b!1405453 m!1294335))

(assert (=> b!1405453 m!1294335))

(declare-fun m!1294337 () Bool)

(assert (=> b!1405453 m!1294337))

(push 1)

(assert (not b!1405453))

(assert (not b!1405454))

(assert (not start!120838))

(assert (not b!1405452))

(assert (not b!1405450))

(assert (not b!1405451))

(assert (not b!1405456))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

