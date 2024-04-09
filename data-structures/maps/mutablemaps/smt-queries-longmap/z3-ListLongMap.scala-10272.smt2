; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120834 () Bool)

(assert start!120834)

(declare-fun b!1405408 () Bool)

(declare-fun e!795561 () Bool)

(assert (=> b!1405408 (= e!795561 (not true))))

(declare-fun e!795563 () Bool)

(assert (=> b!1405408 e!795563))

(declare-fun res!943734 () Bool)

(assert (=> b!1405408 (=> (not res!943734) (not e!795563))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96059 0))(
  ( (array!96060 (arr!46373 (Array (_ BitVec 32) (_ BitVec 64))) (size!46924 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96059)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96059 (_ BitVec 32)) Bool)

(assert (=> b!1405408 (= res!943734 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47336 0))(
  ( (Unit!47337) )
))
(declare-fun lt!618981 () Unit!47336)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96059 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47336)

(assert (=> b!1405408 (= lt!618981 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!10706 0))(
  ( (MissingZero!10706 (index!45200 (_ BitVec 32))) (Found!10706 (index!45201 (_ BitVec 32))) (Intermediate!10706 (undefined!11518 Bool) (index!45202 (_ BitVec 32)) (x!126820 (_ BitVec 32))) (Undefined!10706) (MissingVacant!10706 (index!45203 (_ BitVec 32))) )
))
(declare-fun lt!618982 () SeekEntryResult!10706)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96059 (_ BitVec 32)) SeekEntryResult!10706)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405408 (= lt!618982 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46373 a!2901) j!112) mask!2840) (select (arr!46373 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1405409 () Bool)

(declare-fun res!943740 () Bool)

(assert (=> b!1405409 (=> (not res!943740) (not e!795561))))

(declare-datatypes ((List!33072 0))(
  ( (Nil!33069) (Cons!33068 (h!34322 (_ BitVec 64)) (t!47773 List!33072)) )
))
(declare-fun arrayNoDuplicates!0 (array!96059 (_ BitVec 32) List!33072) Bool)

(assert (=> b!1405409 (= res!943740 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33069))))

(declare-fun b!1405410 () Bool)

(declare-fun res!943739 () Bool)

(assert (=> b!1405410 (=> (not res!943739) (not e!795561))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405410 (= res!943739 (validKeyInArray!0 (select (arr!46373 a!2901) i!1037)))))

(declare-fun res!943736 () Bool)

(assert (=> start!120834 (=> (not res!943736) (not e!795561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120834 (= res!943736 (validMask!0 mask!2840))))

(assert (=> start!120834 e!795561))

(assert (=> start!120834 true))

(declare-fun array_inv!35318 (array!96059) Bool)

(assert (=> start!120834 (array_inv!35318 a!2901)))

(declare-fun b!1405411 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96059 (_ BitVec 32)) SeekEntryResult!10706)

(assert (=> b!1405411 (= e!795563 (= (seekEntryOrOpen!0 (select (arr!46373 a!2901) j!112) a!2901 mask!2840) (Found!10706 j!112)))))

(declare-fun b!1405412 () Bool)

(declare-fun res!943738 () Bool)

(assert (=> b!1405412 (=> (not res!943738) (not e!795561))))

(assert (=> b!1405412 (= res!943738 (and (= (size!46924 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46924 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46924 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405413 () Bool)

(declare-fun res!943735 () Bool)

(assert (=> b!1405413 (=> (not res!943735) (not e!795561))))

(assert (=> b!1405413 (= res!943735 (validKeyInArray!0 (select (arr!46373 a!2901) j!112)))))

(declare-fun b!1405414 () Bool)

(declare-fun res!943737 () Bool)

(assert (=> b!1405414 (=> (not res!943737) (not e!795561))))

(assert (=> b!1405414 (= res!943737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120834 res!943736) b!1405412))

(assert (= (and b!1405412 res!943738) b!1405410))

(assert (= (and b!1405410 res!943739) b!1405413))

(assert (= (and b!1405413 res!943735) b!1405414))

(assert (= (and b!1405414 res!943737) b!1405409))

(assert (= (and b!1405409 res!943740) b!1405408))

(assert (= (and b!1405408 res!943734) b!1405411))

(declare-fun m!1294261 () Bool)

(assert (=> start!120834 m!1294261))

(declare-fun m!1294263 () Bool)

(assert (=> start!120834 m!1294263))

(declare-fun m!1294265 () Bool)

(assert (=> b!1405411 m!1294265))

(assert (=> b!1405411 m!1294265))

(declare-fun m!1294267 () Bool)

(assert (=> b!1405411 m!1294267))

(declare-fun m!1294269 () Bool)

(assert (=> b!1405410 m!1294269))

(assert (=> b!1405410 m!1294269))

(declare-fun m!1294271 () Bool)

(assert (=> b!1405410 m!1294271))

(assert (=> b!1405408 m!1294265))

(declare-fun m!1294273 () Bool)

(assert (=> b!1405408 m!1294273))

(assert (=> b!1405408 m!1294265))

(declare-fun m!1294275 () Bool)

(assert (=> b!1405408 m!1294275))

(assert (=> b!1405408 m!1294273))

(assert (=> b!1405408 m!1294265))

(declare-fun m!1294277 () Bool)

(assert (=> b!1405408 m!1294277))

(declare-fun m!1294279 () Bool)

(assert (=> b!1405408 m!1294279))

(declare-fun m!1294281 () Bool)

(assert (=> b!1405414 m!1294281))

(declare-fun m!1294283 () Bool)

(assert (=> b!1405409 m!1294283))

(assert (=> b!1405413 m!1294265))

(assert (=> b!1405413 m!1294265))

(declare-fun m!1294285 () Bool)

(assert (=> b!1405413 m!1294285))

(check-sat (not b!1405408) (not b!1405409) (not b!1405413) (not b!1405411) (not b!1405414) (not start!120834) (not b!1405410))
(check-sat)
