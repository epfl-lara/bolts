; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121256 () Bool)

(assert start!121256)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96328 0))(
  ( (array!96329 (arr!46503 (Array (_ BitVec 32) (_ BitVec 64))) (size!47054 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96328)

(declare-fun b!1409352 () Bool)

(declare-fun e!797577 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10836 0))(
  ( (MissingZero!10836 (index!45720 (_ BitVec 32))) (Found!10836 (index!45721 (_ BitVec 32))) (Intermediate!10836 (undefined!11648 Bool) (index!45722 (_ BitVec 32)) (x!127312 (_ BitVec 32))) (Undefined!10836) (MissingVacant!10836 (index!45723 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96328 (_ BitVec 32)) SeekEntryResult!10836)

(assert (=> b!1409352 (= e!797577 (= (seekEntryOrOpen!0 (select (arr!46503 a!2901) j!112) a!2901 mask!2840) (Found!10836 j!112)))))

(declare-fun res!947189 () Bool)

(declare-fun e!797579 () Bool)

(assert (=> start!121256 (=> (not res!947189) (not e!797579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121256 (= res!947189 (validMask!0 mask!2840))))

(assert (=> start!121256 e!797579))

(assert (=> start!121256 true))

(declare-fun array_inv!35448 (array!96328) Bool)

(assert (=> start!121256 (array_inv!35448 a!2901)))

(declare-fun b!1409353 () Bool)

(declare-fun e!797578 () Bool)

(assert (=> b!1409353 (= e!797578 true)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!620662 () SeekEntryResult!10836)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96328 (_ BitVec 32)) SeekEntryResult!10836)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409353 (= lt!620662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46503 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46503 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96329 (store (arr!46503 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47054 a!2901)) mask!2840))))

(declare-fun b!1409354 () Bool)

(declare-fun res!947188 () Bool)

(assert (=> b!1409354 (=> (not res!947188) (not e!797579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409354 (= res!947188 (validKeyInArray!0 (select (arr!46503 a!2901) i!1037)))))

(declare-fun b!1409355 () Bool)

(declare-fun res!947190 () Bool)

(assert (=> b!1409355 (=> (not res!947190) (not e!797579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96328 (_ BitVec 32)) Bool)

(assert (=> b!1409355 (= res!947190 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409356 () Bool)

(declare-fun res!947184 () Bool)

(assert (=> b!1409356 (=> (not res!947184) (not e!797579))))

(declare-datatypes ((List!33202 0))(
  ( (Nil!33199) (Cons!33198 (h!34461 (_ BitVec 64)) (t!47903 List!33202)) )
))
(declare-fun arrayNoDuplicates!0 (array!96328 (_ BitVec 32) List!33202) Bool)

(assert (=> b!1409356 (= res!947184 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33199))))

(declare-fun b!1409357 () Bool)

(declare-fun res!947187 () Bool)

(assert (=> b!1409357 (=> (not res!947187) (not e!797579))))

(assert (=> b!1409357 (= res!947187 (and (= (size!47054 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47054 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47054 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409358 () Bool)

(declare-fun res!947186 () Bool)

(assert (=> b!1409358 (=> (not res!947186) (not e!797579))))

(assert (=> b!1409358 (= res!947186 (validKeyInArray!0 (select (arr!46503 a!2901) j!112)))))

(declare-fun b!1409359 () Bool)

(assert (=> b!1409359 (= e!797579 (not e!797578))))

(declare-fun res!947185 () Bool)

(assert (=> b!1409359 (=> res!947185 e!797578)))

(declare-fun lt!620660 () SeekEntryResult!10836)

(assert (=> b!1409359 (= res!947185 (or (not (is-Intermediate!10836 lt!620660)) (undefined!11648 lt!620660)))))

(assert (=> b!1409359 e!797577))

(declare-fun res!947183 () Bool)

(assert (=> b!1409359 (=> (not res!947183) (not e!797577))))

(assert (=> b!1409359 (= res!947183 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47596 0))(
  ( (Unit!47597) )
))
(declare-fun lt!620661 () Unit!47596)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96328 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47596)

(assert (=> b!1409359 (= lt!620661 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1409359 (= lt!620660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46503 a!2901) j!112) mask!2840) (select (arr!46503 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!121256 res!947189) b!1409357))

(assert (= (and b!1409357 res!947187) b!1409354))

(assert (= (and b!1409354 res!947188) b!1409358))

(assert (= (and b!1409358 res!947186) b!1409355))

(assert (= (and b!1409355 res!947190) b!1409356))

(assert (= (and b!1409356 res!947184) b!1409359))

(assert (= (and b!1409359 res!947183) b!1409352))

(assert (= (and b!1409359 (not res!947185)) b!1409353))

(declare-fun m!1299127 () Bool)

(assert (=> b!1409359 m!1299127))

(declare-fun m!1299129 () Bool)

(assert (=> b!1409359 m!1299129))

(assert (=> b!1409359 m!1299127))

(declare-fun m!1299131 () Bool)

(assert (=> b!1409359 m!1299131))

(assert (=> b!1409359 m!1299129))

(assert (=> b!1409359 m!1299127))

(declare-fun m!1299133 () Bool)

(assert (=> b!1409359 m!1299133))

(declare-fun m!1299135 () Bool)

(assert (=> b!1409359 m!1299135))

(declare-fun m!1299137 () Bool)

(assert (=> b!1409354 m!1299137))

(assert (=> b!1409354 m!1299137))

(declare-fun m!1299139 () Bool)

(assert (=> b!1409354 m!1299139))

(declare-fun m!1299141 () Bool)

(assert (=> b!1409353 m!1299141))

(declare-fun m!1299143 () Bool)

(assert (=> b!1409353 m!1299143))

(assert (=> b!1409353 m!1299143))

(declare-fun m!1299145 () Bool)

(assert (=> b!1409353 m!1299145))

(assert (=> b!1409353 m!1299145))

(assert (=> b!1409353 m!1299143))

(declare-fun m!1299147 () Bool)

(assert (=> b!1409353 m!1299147))

(assert (=> b!1409352 m!1299127))

(assert (=> b!1409352 m!1299127))

(declare-fun m!1299149 () Bool)

(assert (=> b!1409352 m!1299149))

(assert (=> b!1409358 m!1299127))

(assert (=> b!1409358 m!1299127))

(declare-fun m!1299151 () Bool)

(assert (=> b!1409358 m!1299151))

(declare-fun m!1299153 () Bool)

(assert (=> b!1409355 m!1299153))

(declare-fun m!1299155 () Bool)

(assert (=> start!121256 m!1299155))

(declare-fun m!1299157 () Bool)

(assert (=> start!121256 m!1299157))

(declare-fun m!1299159 () Bool)

(assert (=> b!1409356 m!1299159))

(push 1)

(assert (not b!1409355))

(assert (not b!1409359))

(assert (not b!1409356))

(assert (not b!1409352))

(assert (not start!121256))

(assert (not b!1409358))

(assert (not b!1409353))

(assert (not b!1409354))

(check-sat)

