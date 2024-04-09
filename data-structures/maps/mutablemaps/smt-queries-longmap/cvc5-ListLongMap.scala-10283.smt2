; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120898 () Bool)

(assert start!120898)

(declare-fun b!1406154 () Bool)

(declare-fun res!944485 () Bool)

(declare-fun e!795923 () Bool)

(assert (=> b!1406154 (=> (not res!944485) (not e!795923))))

(declare-datatypes ((array!96123 0))(
  ( (array!96124 (arr!46405 (Array (_ BitVec 32) (_ BitVec 64))) (size!46956 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96123)

(declare-datatypes ((List!33104 0))(
  ( (Nil!33101) (Cons!33100 (h!34354 (_ BitVec 64)) (t!47805 List!33104)) )
))
(declare-fun arrayNoDuplicates!0 (array!96123 (_ BitVec 32) List!33104) Bool)

(assert (=> b!1406154 (= res!944485 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33101))))

(declare-fun b!1406155 () Bool)

(declare-fun res!944480 () Bool)

(assert (=> b!1406155 (=> (not res!944480) (not e!795923))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406155 (= res!944480 (and (= (size!46956 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46956 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46956 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406156 () Bool)

(declare-fun e!795926 () Bool)

(assert (=> b!1406156 (= e!795926 true)))

(declare-datatypes ((SeekEntryResult!10738 0))(
  ( (MissingZero!10738 (index!45328 (_ BitVec 32))) (Found!10738 (index!45329 (_ BitVec 32))) (Intermediate!10738 (undefined!11550 Bool) (index!45330 (_ BitVec 32)) (x!126940 (_ BitVec 32))) (Undefined!10738) (MissingVacant!10738 (index!45331 (_ BitVec 32))) )
))
(declare-fun lt!619247 () SeekEntryResult!10738)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96123 (_ BitVec 32)) SeekEntryResult!10738)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406156 (= lt!619247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46405 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46405 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96124 (store (arr!46405 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46956 a!2901)) mask!2840))))

(declare-fun b!1406157 () Bool)

(declare-fun res!944486 () Bool)

(assert (=> b!1406157 (=> (not res!944486) (not e!795923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406157 (= res!944486 (validKeyInArray!0 (select (arr!46405 a!2901) i!1037)))))

(declare-fun res!944487 () Bool)

(assert (=> start!120898 (=> (not res!944487) (not e!795923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120898 (= res!944487 (validMask!0 mask!2840))))

(assert (=> start!120898 e!795923))

(assert (=> start!120898 true))

(declare-fun array_inv!35350 (array!96123) Bool)

(assert (=> start!120898 (array_inv!35350 a!2901)))

(declare-fun b!1406158 () Bool)

(declare-fun res!944481 () Bool)

(assert (=> b!1406158 (=> (not res!944481) (not e!795923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96123 (_ BitVec 32)) Bool)

(assert (=> b!1406158 (= res!944481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406159 () Bool)

(declare-fun res!944482 () Bool)

(assert (=> b!1406159 (=> (not res!944482) (not e!795923))))

(assert (=> b!1406159 (= res!944482 (validKeyInArray!0 (select (arr!46405 a!2901) j!112)))))

(declare-fun b!1406160 () Bool)

(assert (=> b!1406160 (= e!795923 (not e!795926))))

(declare-fun res!944484 () Bool)

(assert (=> b!1406160 (=> res!944484 e!795926)))

(declare-fun lt!619249 () SeekEntryResult!10738)

(assert (=> b!1406160 (= res!944484 (or (not (is-Intermediate!10738 lt!619249)) (undefined!11550 lt!619249)))))

(declare-fun e!795925 () Bool)

(assert (=> b!1406160 e!795925))

(declare-fun res!944483 () Bool)

(assert (=> b!1406160 (=> (not res!944483) (not e!795925))))

(assert (=> b!1406160 (= res!944483 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47400 0))(
  ( (Unit!47401) )
))
(declare-fun lt!619248 () Unit!47400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96123 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47400)

(assert (=> b!1406160 (= lt!619248 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406160 (= lt!619249 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46405 a!2901) j!112) mask!2840) (select (arr!46405 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406161 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96123 (_ BitVec 32)) SeekEntryResult!10738)

(assert (=> b!1406161 (= e!795925 (= (seekEntryOrOpen!0 (select (arr!46405 a!2901) j!112) a!2901 mask!2840) (Found!10738 j!112)))))

(assert (= (and start!120898 res!944487) b!1406155))

(assert (= (and b!1406155 res!944480) b!1406157))

(assert (= (and b!1406157 res!944486) b!1406159))

(assert (= (and b!1406159 res!944482) b!1406158))

(assert (= (and b!1406158 res!944481) b!1406154))

(assert (= (and b!1406154 res!944485) b!1406160))

(assert (= (and b!1406160 res!944483) b!1406161))

(assert (= (and b!1406160 (not res!944484)) b!1406156))

(declare-fun m!1295273 () Bool)

(assert (=> b!1406156 m!1295273))

(declare-fun m!1295275 () Bool)

(assert (=> b!1406156 m!1295275))

(assert (=> b!1406156 m!1295275))

(declare-fun m!1295277 () Bool)

(assert (=> b!1406156 m!1295277))

(assert (=> b!1406156 m!1295277))

(assert (=> b!1406156 m!1295275))

(declare-fun m!1295279 () Bool)

(assert (=> b!1406156 m!1295279))

(declare-fun m!1295281 () Bool)

(assert (=> start!120898 m!1295281))

(declare-fun m!1295283 () Bool)

(assert (=> start!120898 m!1295283))

(declare-fun m!1295285 () Bool)

(assert (=> b!1406154 m!1295285))

(declare-fun m!1295287 () Bool)

(assert (=> b!1406159 m!1295287))

(assert (=> b!1406159 m!1295287))

(declare-fun m!1295289 () Bool)

(assert (=> b!1406159 m!1295289))

(assert (=> b!1406160 m!1295287))

(declare-fun m!1295291 () Bool)

(assert (=> b!1406160 m!1295291))

(assert (=> b!1406160 m!1295287))

(declare-fun m!1295293 () Bool)

(assert (=> b!1406160 m!1295293))

(assert (=> b!1406160 m!1295291))

(assert (=> b!1406160 m!1295287))

(declare-fun m!1295295 () Bool)

(assert (=> b!1406160 m!1295295))

(declare-fun m!1295297 () Bool)

(assert (=> b!1406160 m!1295297))

(declare-fun m!1295299 () Bool)

(assert (=> b!1406158 m!1295299))

(declare-fun m!1295301 () Bool)

(assert (=> b!1406157 m!1295301))

(assert (=> b!1406157 m!1295301))

(declare-fun m!1295303 () Bool)

(assert (=> b!1406157 m!1295303))

(assert (=> b!1406161 m!1295287))

(assert (=> b!1406161 m!1295287))

(declare-fun m!1295305 () Bool)

(assert (=> b!1406161 m!1295305))

(push 1)

(assert (not b!1406158))

(assert (not b!1406159))

(assert (not start!120898))

(assert (not b!1406160))

(assert (not b!1406154))

(assert (not b!1406161))

(assert (not b!1406156))

(assert (not b!1406157))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

