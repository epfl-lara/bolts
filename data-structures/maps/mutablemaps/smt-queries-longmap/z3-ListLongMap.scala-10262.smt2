; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120666 () Bool)

(assert start!120666)

(declare-fun b!1404335 () Bool)

(declare-fun res!942955 () Bool)

(declare-fun e!795016 () Bool)

(assert (=> b!1404335 (=> (not res!942955) (not e!795016))))

(declare-datatypes ((array!95993 0))(
  ( (array!95994 (arr!46343 (Array (_ BitVec 32) (_ BitVec 64))) (size!46894 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95993)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95993 (_ BitVec 32)) Bool)

(assert (=> b!1404335 (= res!942955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!942957 () Bool)

(assert (=> start!120666 (=> (not res!942957) (not e!795016))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120666 (= res!942957 (validMask!0 mask!2840))))

(assert (=> start!120666 e!795016))

(assert (=> start!120666 true))

(declare-fun array_inv!35288 (array!95993) Bool)

(assert (=> start!120666 (array_inv!35288 a!2901)))

(declare-fun b!1404336 () Bool)

(assert (=> b!1404336 (= e!795016 (not true))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1404336 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47276 0))(
  ( (Unit!47277) )
))
(declare-fun lt!618585 () Unit!47276)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95993 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47276)

(assert (=> b!1404336 (= lt!618585 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10676 0))(
  ( (MissingZero!10676 (index!45080 (_ BitVec 32))) (Found!10676 (index!45081 (_ BitVec 32))) (Intermediate!10676 (undefined!11488 Bool) (index!45082 (_ BitVec 32)) (x!126698 (_ BitVec 32))) (Undefined!10676) (MissingVacant!10676 (index!45083 (_ BitVec 32))) )
))
(declare-fun lt!618586 () SeekEntryResult!10676)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95993 (_ BitVec 32)) SeekEntryResult!10676)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404336 (= lt!618586 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46343 a!2901) j!112) mask!2840) (select (arr!46343 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404337 () Bool)

(declare-fun res!942958 () Bool)

(assert (=> b!1404337 (=> (not res!942958) (not e!795016))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1404337 (= res!942958 (and (= (size!46894 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46894 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46894 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404338 () Bool)

(declare-fun res!942959 () Bool)

(assert (=> b!1404338 (=> (not res!942959) (not e!795016))))

(declare-datatypes ((List!33042 0))(
  ( (Nil!33039) (Cons!33038 (h!34286 (_ BitVec 64)) (t!47743 List!33042)) )
))
(declare-fun arrayNoDuplicates!0 (array!95993 (_ BitVec 32) List!33042) Bool)

(assert (=> b!1404338 (= res!942959 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33039))))

(declare-fun b!1404339 () Bool)

(declare-fun res!942960 () Bool)

(assert (=> b!1404339 (=> (not res!942960) (not e!795016))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404339 (= res!942960 (validKeyInArray!0 (select (arr!46343 a!2901) j!112)))))

(declare-fun b!1404340 () Bool)

(declare-fun res!942956 () Bool)

(assert (=> b!1404340 (=> (not res!942956) (not e!795016))))

(assert (=> b!1404340 (= res!942956 (validKeyInArray!0 (select (arr!46343 a!2901) i!1037)))))

(assert (= (and start!120666 res!942957) b!1404337))

(assert (= (and b!1404337 res!942958) b!1404340))

(assert (= (and b!1404340 res!942956) b!1404339))

(assert (= (and b!1404339 res!942960) b!1404335))

(assert (= (and b!1404335 res!942955) b!1404338))

(assert (= (and b!1404338 res!942959) b!1404336))

(declare-fun m!1293233 () Bool)

(assert (=> b!1404335 m!1293233))

(declare-fun m!1293235 () Bool)

(assert (=> b!1404338 m!1293235))

(declare-fun m!1293237 () Bool)

(assert (=> start!120666 m!1293237))

(declare-fun m!1293239 () Bool)

(assert (=> start!120666 m!1293239))

(declare-fun m!1293241 () Bool)

(assert (=> b!1404339 m!1293241))

(assert (=> b!1404339 m!1293241))

(declare-fun m!1293243 () Bool)

(assert (=> b!1404339 m!1293243))

(assert (=> b!1404336 m!1293241))

(declare-fun m!1293245 () Bool)

(assert (=> b!1404336 m!1293245))

(assert (=> b!1404336 m!1293241))

(declare-fun m!1293247 () Bool)

(assert (=> b!1404336 m!1293247))

(assert (=> b!1404336 m!1293245))

(assert (=> b!1404336 m!1293241))

(declare-fun m!1293249 () Bool)

(assert (=> b!1404336 m!1293249))

(declare-fun m!1293251 () Bool)

(assert (=> b!1404336 m!1293251))

(declare-fun m!1293253 () Bool)

(assert (=> b!1404340 m!1293253))

(assert (=> b!1404340 m!1293253))

(declare-fun m!1293255 () Bool)

(assert (=> b!1404340 m!1293255))

(check-sat (not b!1404336) (not start!120666) (not b!1404339) (not b!1404335) (not b!1404338) (not b!1404340))
(check-sat)
