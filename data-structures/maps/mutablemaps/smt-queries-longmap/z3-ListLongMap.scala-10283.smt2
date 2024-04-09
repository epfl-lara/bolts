; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120900 () Bool)

(assert start!120900)

(declare-fun b!1406178 () Bool)

(declare-fun res!944505 () Bool)

(declare-fun e!795936 () Bool)

(assert (=> b!1406178 (=> (not res!944505) (not e!795936))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96125 0))(
  ( (array!96126 (arr!46406 (Array (_ BitVec 32) (_ BitVec 64))) (size!46957 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96125)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406178 (= res!944505 (and (= (size!46957 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46957 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46957 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406179 () Bool)

(declare-fun res!944506 () Bool)

(assert (=> b!1406179 (=> (not res!944506) (not e!795936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406179 (= res!944506 (validKeyInArray!0 (select (arr!46406 a!2901) i!1037)))))

(declare-fun b!1406180 () Bool)

(declare-fun e!795935 () Bool)

(assert (=> b!1406180 (= e!795935 true)))

(declare-datatypes ((SeekEntryResult!10739 0))(
  ( (MissingZero!10739 (index!45332 (_ BitVec 32))) (Found!10739 (index!45333 (_ BitVec 32))) (Intermediate!10739 (undefined!11551 Bool) (index!45334 (_ BitVec 32)) (x!126941 (_ BitVec 32))) (Undefined!10739) (MissingVacant!10739 (index!45335 (_ BitVec 32))) )
))
(declare-fun lt!619256 () SeekEntryResult!10739)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96125 (_ BitVec 32)) SeekEntryResult!10739)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406180 (= lt!619256 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46406 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46406 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96126 (store (arr!46406 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46957 a!2901)) mask!2840))))

(declare-fun res!944508 () Bool)

(assert (=> start!120900 (=> (not res!944508) (not e!795936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120900 (= res!944508 (validMask!0 mask!2840))))

(assert (=> start!120900 e!795936))

(assert (=> start!120900 true))

(declare-fun array_inv!35351 (array!96125) Bool)

(assert (=> start!120900 (array_inv!35351 a!2901)))

(declare-fun e!795937 () Bool)

(declare-fun b!1406181 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96125 (_ BitVec 32)) SeekEntryResult!10739)

(assert (=> b!1406181 (= e!795937 (= (seekEntryOrOpen!0 (select (arr!46406 a!2901) j!112) a!2901 mask!2840) (Found!10739 j!112)))))

(declare-fun b!1406182 () Bool)

(declare-fun res!944511 () Bool)

(assert (=> b!1406182 (=> (not res!944511) (not e!795936))))

(declare-datatypes ((List!33105 0))(
  ( (Nil!33102) (Cons!33101 (h!34355 (_ BitVec 64)) (t!47806 List!33105)) )
))
(declare-fun arrayNoDuplicates!0 (array!96125 (_ BitVec 32) List!33105) Bool)

(assert (=> b!1406182 (= res!944511 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33102))))

(declare-fun b!1406183 () Bool)

(assert (=> b!1406183 (= e!795936 (not e!795935))))

(declare-fun res!944504 () Bool)

(assert (=> b!1406183 (=> res!944504 e!795935)))

(declare-fun lt!619258 () SeekEntryResult!10739)

(get-info :version)

(assert (=> b!1406183 (= res!944504 (or (not ((_ is Intermediate!10739) lt!619258)) (undefined!11551 lt!619258)))))

(assert (=> b!1406183 e!795937))

(declare-fun res!944507 () Bool)

(assert (=> b!1406183 (=> (not res!944507) (not e!795937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96125 (_ BitVec 32)) Bool)

(assert (=> b!1406183 (= res!944507 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47402 0))(
  ( (Unit!47403) )
))
(declare-fun lt!619257 () Unit!47402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47402)

(assert (=> b!1406183 (= lt!619257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406183 (= lt!619258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46406 a!2901) j!112) mask!2840) (select (arr!46406 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406184 () Bool)

(declare-fun res!944510 () Bool)

(assert (=> b!1406184 (=> (not res!944510) (not e!795936))))

(assert (=> b!1406184 (= res!944510 (validKeyInArray!0 (select (arr!46406 a!2901) j!112)))))

(declare-fun b!1406185 () Bool)

(declare-fun res!944509 () Bool)

(assert (=> b!1406185 (=> (not res!944509) (not e!795936))))

(assert (=> b!1406185 (= res!944509 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120900 res!944508) b!1406178))

(assert (= (and b!1406178 res!944505) b!1406179))

(assert (= (and b!1406179 res!944506) b!1406184))

(assert (= (and b!1406184 res!944510) b!1406185))

(assert (= (and b!1406185 res!944509) b!1406182))

(assert (= (and b!1406182 res!944511) b!1406183))

(assert (= (and b!1406183 res!944507) b!1406181))

(assert (= (and b!1406183 (not res!944504)) b!1406180))

(declare-fun m!1295307 () Bool)

(assert (=> b!1406180 m!1295307))

(declare-fun m!1295309 () Bool)

(assert (=> b!1406180 m!1295309))

(assert (=> b!1406180 m!1295309))

(declare-fun m!1295311 () Bool)

(assert (=> b!1406180 m!1295311))

(assert (=> b!1406180 m!1295311))

(assert (=> b!1406180 m!1295309))

(declare-fun m!1295313 () Bool)

(assert (=> b!1406180 m!1295313))

(declare-fun m!1295315 () Bool)

(assert (=> b!1406179 m!1295315))

(assert (=> b!1406179 m!1295315))

(declare-fun m!1295317 () Bool)

(assert (=> b!1406179 m!1295317))

(declare-fun m!1295319 () Bool)

(assert (=> start!120900 m!1295319))

(declare-fun m!1295321 () Bool)

(assert (=> start!120900 m!1295321))

(declare-fun m!1295323 () Bool)

(assert (=> b!1406181 m!1295323))

(assert (=> b!1406181 m!1295323))

(declare-fun m!1295325 () Bool)

(assert (=> b!1406181 m!1295325))

(declare-fun m!1295327 () Bool)

(assert (=> b!1406182 m!1295327))

(assert (=> b!1406183 m!1295323))

(declare-fun m!1295329 () Bool)

(assert (=> b!1406183 m!1295329))

(assert (=> b!1406183 m!1295323))

(declare-fun m!1295331 () Bool)

(assert (=> b!1406183 m!1295331))

(assert (=> b!1406183 m!1295329))

(assert (=> b!1406183 m!1295323))

(declare-fun m!1295333 () Bool)

(assert (=> b!1406183 m!1295333))

(declare-fun m!1295335 () Bool)

(assert (=> b!1406183 m!1295335))

(assert (=> b!1406184 m!1295323))

(assert (=> b!1406184 m!1295323))

(declare-fun m!1295337 () Bool)

(assert (=> b!1406184 m!1295337))

(declare-fun m!1295339 () Bool)

(assert (=> b!1406185 m!1295339))

(check-sat (not b!1406183) (not b!1406180) (not b!1406184) (not start!120900) (not b!1406179) (not b!1406181) (not b!1406182) (not b!1406185))
