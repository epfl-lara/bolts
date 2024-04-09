; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120896 () Bool)

(assert start!120896)

(declare-fun b!1406130 () Bool)

(declare-fun res!944457 () Bool)

(declare-fun e!795911 () Bool)

(assert (=> b!1406130 (=> (not res!944457) (not e!795911))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96121 0))(
  ( (array!96122 (arr!46404 (Array (_ BitVec 32) (_ BitVec 64))) (size!46955 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96121)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1406130 (= res!944457 (and (= (size!46955 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46955 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46955 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1406131 () Bool)

(declare-fun res!944461 () Bool)

(assert (=> b!1406131 (=> (not res!944461) (not e!795911))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96121 (_ BitVec 32)) Bool)

(assert (=> b!1406131 (= res!944461 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406132 () Bool)

(declare-fun res!944460 () Bool)

(assert (=> b!1406132 (=> (not res!944460) (not e!795911))))

(declare-datatypes ((List!33103 0))(
  ( (Nil!33100) (Cons!33099 (h!34353 (_ BitVec 64)) (t!47804 List!33103)) )
))
(declare-fun arrayNoDuplicates!0 (array!96121 (_ BitVec 32) List!33103) Bool)

(assert (=> b!1406132 (= res!944460 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33100))))

(declare-fun b!1406133 () Bool)

(declare-fun e!795913 () Bool)

(assert (=> b!1406133 (= e!795913 true)))

(declare-datatypes ((SeekEntryResult!10737 0))(
  ( (MissingZero!10737 (index!45324 (_ BitVec 32))) (Found!10737 (index!45325 (_ BitVec 32))) (Intermediate!10737 (undefined!11549 Bool) (index!45326 (_ BitVec 32)) (x!126931 (_ BitVec 32))) (Undefined!10737) (MissingVacant!10737 (index!45327 (_ BitVec 32))) )
))
(declare-fun lt!619239 () SeekEntryResult!10737)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96121 (_ BitVec 32)) SeekEntryResult!10737)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406133 (= lt!619239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46404 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46404 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96122 (store (arr!46404 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46955 a!2901)) mask!2840))))

(declare-fun b!1406134 () Bool)

(declare-fun res!944458 () Bool)

(assert (=> b!1406134 (=> (not res!944458) (not e!795911))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406134 (= res!944458 (validKeyInArray!0 (select (arr!46404 a!2901) j!112)))))

(declare-fun b!1406135 () Bool)

(declare-fun res!944462 () Bool)

(assert (=> b!1406135 (=> (not res!944462) (not e!795911))))

(assert (=> b!1406135 (= res!944462 (validKeyInArray!0 (select (arr!46404 a!2901) i!1037)))))

(declare-fun res!944456 () Bool)

(assert (=> start!120896 (=> (not res!944456) (not e!795911))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120896 (= res!944456 (validMask!0 mask!2840))))

(assert (=> start!120896 e!795911))

(assert (=> start!120896 true))

(declare-fun array_inv!35349 (array!96121) Bool)

(assert (=> start!120896 (array_inv!35349 a!2901)))

(declare-fun b!1406136 () Bool)

(assert (=> b!1406136 (= e!795911 (not e!795913))))

(declare-fun res!944459 () Bool)

(assert (=> b!1406136 (=> res!944459 e!795913)))

(declare-fun lt!619238 () SeekEntryResult!10737)

(assert (=> b!1406136 (= res!944459 (or (not (is-Intermediate!10737 lt!619238)) (undefined!11549 lt!619238)))))

(declare-fun e!795914 () Bool)

(assert (=> b!1406136 e!795914))

(declare-fun res!944463 () Bool)

(assert (=> b!1406136 (=> (not res!944463) (not e!795914))))

(assert (=> b!1406136 (= res!944463 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47398 0))(
  ( (Unit!47399) )
))
(declare-fun lt!619240 () Unit!47398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96121 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47398)

(assert (=> b!1406136 (= lt!619240 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1406136 (= lt!619238 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46404 a!2901) j!112) mask!2840) (select (arr!46404 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1406137 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96121 (_ BitVec 32)) SeekEntryResult!10737)

(assert (=> b!1406137 (= e!795914 (= (seekEntryOrOpen!0 (select (arr!46404 a!2901) j!112) a!2901 mask!2840) (Found!10737 j!112)))))

(assert (= (and start!120896 res!944456) b!1406130))

(assert (= (and b!1406130 res!944457) b!1406135))

(assert (= (and b!1406135 res!944462) b!1406134))

(assert (= (and b!1406134 res!944458) b!1406131))

(assert (= (and b!1406131 res!944461) b!1406132))

(assert (= (and b!1406132 res!944460) b!1406136))

(assert (= (and b!1406136 res!944463) b!1406137))

(assert (= (and b!1406136 (not res!944459)) b!1406133))

(declare-fun m!1295239 () Bool)

(assert (=> b!1406136 m!1295239))

(declare-fun m!1295241 () Bool)

(assert (=> b!1406136 m!1295241))

(assert (=> b!1406136 m!1295239))

(declare-fun m!1295243 () Bool)

(assert (=> b!1406136 m!1295243))

(assert (=> b!1406136 m!1295241))

(assert (=> b!1406136 m!1295239))

(declare-fun m!1295245 () Bool)

(assert (=> b!1406136 m!1295245))

(declare-fun m!1295247 () Bool)

(assert (=> b!1406136 m!1295247))

(assert (=> b!1406137 m!1295239))

(assert (=> b!1406137 m!1295239))

(declare-fun m!1295249 () Bool)

(assert (=> b!1406137 m!1295249))

(declare-fun m!1295251 () Bool)

(assert (=> start!120896 m!1295251))

(declare-fun m!1295253 () Bool)

(assert (=> start!120896 m!1295253))

(declare-fun m!1295255 () Bool)

(assert (=> b!1406135 m!1295255))

(assert (=> b!1406135 m!1295255))

(declare-fun m!1295257 () Bool)

(assert (=> b!1406135 m!1295257))

(declare-fun m!1295259 () Bool)

(assert (=> b!1406132 m!1295259))

(declare-fun m!1295261 () Bool)

(assert (=> b!1406131 m!1295261))

(assert (=> b!1406134 m!1295239))

(assert (=> b!1406134 m!1295239))

(declare-fun m!1295263 () Bool)

(assert (=> b!1406134 m!1295263))

(declare-fun m!1295265 () Bool)

(assert (=> b!1406133 m!1295265))

(declare-fun m!1295267 () Bool)

(assert (=> b!1406133 m!1295267))

(assert (=> b!1406133 m!1295267))

(declare-fun m!1295269 () Bool)

(assert (=> b!1406133 m!1295269))

(assert (=> b!1406133 m!1295269))

(assert (=> b!1406133 m!1295267))

(declare-fun m!1295271 () Bool)

(assert (=> b!1406133 m!1295271))

(push 1)

(assert (not b!1406133))

(assert (not b!1406132))

(assert (not b!1406131))

(assert (not b!1406134))

(assert (not b!1406137))

(assert (not start!120896))

(assert (not b!1406135))

(assert (not b!1406136))

(check-sat)

