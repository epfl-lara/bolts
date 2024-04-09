; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121200 () Bool)

(assert start!121200)

(declare-fun b!1408681 () Bool)

(declare-fun e!797243 () Bool)

(declare-fun e!797240 () Bool)

(assert (=> b!1408681 (= e!797243 (not e!797240))))

(declare-fun res!946518 () Bool)

(assert (=> b!1408681 (=> res!946518 e!797240)))

(declare-datatypes ((SeekEntryResult!10808 0))(
  ( (MissingZero!10808 (index!45608 (_ BitVec 32))) (Found!10808 (index!45609 (_ BitVec 32))) (Intermediate!10808 (undefined!11620 Bool) (index!45610 (_ BitVec 32)) (x!127212 (_ BitVec 32))) (Undefined!10808) (MissingVacant!10808 (index!45611 (_ BitVec 32))) )
))
(declare-fun lt!620409 () SeekEntryResult!10808)

(get-info :version)

(assert (=> b!1408681 (= res!946518 (or (not ((_ is Intermediate!10808) lt!620409)) (undefined!11620 lt!620409)))))

(declare-fun e!797241 () Bool)

(assert (=> b!1408681 e!797241))

(declare-fun res!946516 () Bool)

(assert (=> b!1408681 (=> (not res!946516) (not e!797241))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96272 0))(
  ( (array!96273 (arr!46475 (Array (_ BitVec 32) (_ BitVec 64))) (size!47026 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96272)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96272 (_ BitVec 32)) Bool)

(assert (=> b!1408681 (= res!946516 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47540 0))(
  ( (Unit!47541) )
))
(declare-fun lt!620410 () Unit!47540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96272 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47540)

(assert (=> b!1408681 (= lt!620410 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96272 (_ BitVec 32)) SeekEntryResult!10808)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408681 (= lt!620409 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46475 a!2901) j!112) mask!2840) (select (arr!46475 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1408682 () Bool)

(assert (=> b!1408682 (= e!797240 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620408 () SeekEntryResult!10808)

(assert (=> b!1408682 (= lt!620408 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46475 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46475 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96273 (store (arr!46475 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47026 a!2901)) mask!2840))))

(declare-fun b!1408683 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96272 (_ BitVec 32)) SeekEntryResult!10808)

(assert (=> b!1408683 (= e!797241 (= (seekEntryOrOpen!0 (select (arr!46475 a!2901) j!112) a!2901 mask!2840) (Found!10808 j!112)))))

(declare-fun b!1408684 () Bool)

(declare-fun res!946511 () Bool)

(assert (=> b!1408684 (=> (not res!946511) (not e!797243))))

(assert (=> b!1408684 (= res!946511 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408685 () Bool)

(declare-fun res!946517 () Bool)

(assert (=> b!1408685 (=> (not res!946517) (not e!797243))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408685 (= res!946517 (validKeyInArray!0 (select (arr!46475 a!2901) i!1037)))))

(declare-fun b!1408686 () Bool)

(declare-fun res!946512 () Bool)

(assert (=> b!1408686 (=> (not res!946512) (not e!797243))))

(declare-datatypes ((List!33174 0))(
  ( (Nil!33171) (Cons!33170 (h!34433 (_ BitVec 64)) (t!47875 List!33174)) )
))
(declare-fun arrayNoDuplicates!0 (array!96272 (_ BitVec 32) List!33174) Bool)

(assert (=> b!1408686 (= res!946512 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33171))))

(declare-fun b!1408687 () Bool)

(declare-fun res!946515 () Bool)

(assert (=> b!1408687 (=> (not res!946515) (not e!797243))))

(assert (=> b!1408687 (= res!946515 (and (= (size!47026 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47026 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47026 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1408680 () Bool)

(declare-fun res!946513 () Bool)

(assert (=> b!1408680 (=> (not res!946513) (not e!797243))))

(assert (=> b!1408680 (= res!946513 (validKeyInArray!0 (select (arr!46475 a!2901) j!112)))))

(declare-fun res!946514 () Bool)

(assert (=> start!121200 (=> (not res!946514) (not e!797243))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121200 (= res!946514 (validMask!0 mask!2840))))

(assert (=> start!121200 e!797243))

(assert (=> start!121200 true))

(declare-fun array_inv!35420 (array!96272) Bool)

(assert (=> start!121200 (array_inv!35420 a!2901)))

(assert (= (and start!121200 res!946514) b!1408687))

(assert (= (and b!1408687 res!946515) b!1408685))

(assert (= (and b!1408685 res!946517) b!1408680))

(assert (= (and b!1408680 res!946513) b!1408684))

(assert (= (and b!1408684 res!946511) b!1408686))

(assert (= (and b!1408686 res!946512) b!1408681))

(assert (= (and b!1408681 res!946516) b!1408683))

(assert (= (and b!1408681 (not res!946518)) b!1408682))

(declare-fun m!1298175 () Bool)

(assert (=> b!1408684 m!1298175))

(declare-fun m!1298177 () Bool)

(assert (=> b!1408680 m!1298177))

(assert (=> b!1408680 m!1298177))

(declare-fun m!1298179 () Bool)

(assert (=> b!1408680 m!1298179))

(assert (=> b!1408681 m!1298177))

(declare-fun m!1298181 () Bool)

(assert (=> b!1408681 m!1298181))

(assert (=> b!1408681 m!1298177))

(declare-fun m!1298183 () Bool)

(assert (=> b!1408681 m!1298183))

(assert (=> b!1408681 m!1298181))

(assert (=> b!1408681 m!1298177))

(declare-fun m!1298185 () Bool)

(assert (=> b!1408681 m!1298185))

(declare-fun m!1298187 () Bool)

(assert (=> b!1408681 m!1298187))

(assert (=> b!1408683 m!1298177))

(assert (=> b!1408683 m!1298177))

(declare-fun m!1298189 () Bool)

(assert (=> b!1408683 m!1298189))

(declare-fun m!1298191 () Bool)

(assert (=> b!1408685 m!1298191))

(assert (=> b!1408685 m!1298191))

(declare-fun m!1298193 () Bool)

(assert (=> b!1408685 m!1298193))

(declare-fun m!1298195 () Bool)

(assert (=> b!1408686 m!1298195))

(declare-fun m!1298197 () Bool)

(assert (=> b!1408682 m!1298197))

(declare-fun m!1298199 () Bool)

(assert (=> b!1408682 m!1298199))

(assert (=> b!1408682 m!1298199))

(declare-fun m!1298201 () Bool)

(assert (=> b!1408682 m!1298201))

(assert (=> b!1408682 m!1298201))

(assert (=> b!1408682 m!1298199))

(declare-fun m!1298203 () Bool)

(assert (=> b!1408682 m!1298203))

(declare-fun m!1298205 () Bool)

(assert (=> start!121200 m!1298205))

(declare-fun m!1298207 () Bool)

(assert (=> start!121200 m!1298207))

(check-sat (not b!1408686) (not b!1408682) (not b!1408680) (not b!1408683) (not b!1408685) (not b!1408684) (not b!1408681) (not start!121200))
