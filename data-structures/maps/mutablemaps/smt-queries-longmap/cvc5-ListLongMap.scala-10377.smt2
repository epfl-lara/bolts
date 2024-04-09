; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122224 () Bool)

(assert start!122224)

(declare-fun b!1417360 () Bool)

(declare-fun e!802195 () Bool)

(assert (=> b!1417360 (= e!802195 (not true))))

(declare-fun e!802194 () Bool)

(assert (=> b!1417360 e!802194))

(declare-fun res!953204 () Bool)

(assert (=> b!1417360 (=> (not res!953204) (not e!802194))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96726 0))(
  ( (array!96727 (arr!46687 (Array (_ BitVec 32) (_ BitVec 64))) (size!47238 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96726)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96726 (_ BitVec 32)) Bool)

(assert (=> b!1417360 (= res!953204 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47964 0))(
  ( (Unit!47965) )
))
(declare-fun lt!625312 () Unit!47964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47964)

(assert (=> b!1417360 (= lt!625312 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-datatypes ((SeekEntryResult!11020 0))(
  ( (MissingZero!11020 (index!46471 (_ BitVec 32))) (Found!11020 (index!46472 (_ BitVec 32))) (Intermediate!11020 (undefined!11832 Bool) (index!46473 (_ BitVec 32)) (x!128082 (_ BitVec 32))) (Undefined!11020) (MissingVacant!11020 (index!46474 (_ BitVec 32))) )
))
(declare-fun lt!625311 () SeekEntryResult!11020)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96726 (_ BitVec 32)) SeekEntryResult!11020)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1417360 (= lt!625311 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46687 a!2901) j!112) mask!2840) (select (arr!46687 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1417361 () Bool)

(declare-fun res!953203 () Bool)

(assert (=> b!1417361 (=> (not res!953203) (not e!802195))))

(declare-datatypes ((List!33386 0))(
  ( (Nil!33383) (Cons!33382 (h!34675 (_ BitVec 64)) (t!48087 List!33386)) )
))
(declare-fun arrayNoDuplicates!0 (array!96726 (_ BitVec 32) List!33386) Bool)

(assert (=> b!1417361 (= res!953203 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33383))))

(declare-fun res!953201 () Bool)

(assert (=> start!122224 (=> (not res!953201) (not e!802195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122224 (= res!953201 (validMask!0 mask!2840))))

(assert (=> start!122224 e!802195))

(assert (=> start!122224 true))

(declare-fun array_inv!35632 (array!96726) Bool)

(assert (=> start!122224 (array_inv!35632 a!2901)))

(declare-fun b!1417362 () Bool)

(declare-fun res!953202 () Bool)

(assert (=> b!1417362 (=> (not res!953202) (not e!802195))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1417362 (= res!953202 (validKeyInArray!0 (select (arr!46687 a!2901) i!1037)))))

(declare-fun b!1417363 () Bool)

(declare-fun res!953199 () Bool)

(assert (=> b!1417363 (=> (not res!953199) (not e!802195))))

(assert (=> b!1417363 (= res!953199 (and (= (size!47238 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47238 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47238 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1417364 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96726 (_ BitVec 32)) SeekEntryResult!11020)

(assert (=> b!1417364 (= e!802194 (= (seekEntryOrOpen!0 (select (arr!46687 a!2901) j!112) a!2901 mask!2840) (Found!11020 j!112)))))

(declare-fun b!1417365 () Bool)

(declare-fun res!953205 () Bool)

(assert (=> b!1417365 (=> (not res!953205) (not e!802195))))

(assert (=> b!1417365 (= res!953205 (validKeyInArray!0 (select (arr!46687 a!2901) j!112)))))

(declare-fun b!1417366 () Bool)

(declare-fun res!953200 () Bool)

(assert (=> b!1417366 (=> (not res!953200) (not e!802195))))

(assert (=> b!1417366 (= res!953200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!122224 res!953201) b!1417363))

(assert (= (and b!1417363 res!953199) b!1417362))

(assert (= (and b!1417362 res!953202) b!1417365))

(assert (= (and b!1417365 res!953205) b!1417366))

(assert (= (and b!1417366 res!953200) b!1417361))

(assert (= (and b!1417361 res!953203) b!1417360))

(assert (= (and b!1417360 res!953204) b!1417364))

(declare-fun m!1308137 () Bool)

(assert (=> b!1417366 m!1308137))

(declare-fun m!1308139 () Bool)

(assert (=> b!1417362 m!1308139))

(assert (=> b!1417362 m!1308139))

(declare-fun m!1308141 () Bool)

(assert (=> b!1417362 m!1308141))

(declare-fun m!1308143 () Bool)

(assert (=> start!122224 m!1308143))

(declare-fun m!1308145 () Bool)

(assert (=> start!122224 m!1308145))

(declare-fun m!1308147 () Bool)

(assert (=> b!1417365 m!1308147))

(assert (=> b!1417365 m!1308147))

(declare-fun m!1308149 () Bool)

(assert (=> b!1417365 m!1308149))

(assert (=> b!1417360 m!1308147))

(declare-fun m!1308151 () Bool)

(assert (=> b!1417360 m!1308151))

(assert (=> b!1417360 m!1308147))

(declare-fun m!1308153 () Bool)

(assert (=> b!1417360 m!1308153))

(assert (=> b!1417360 m!1308151))

(assert (=> b!1417360 m!1308147))

(declare-fun m!1308155 () Bool)

(assert (=> b!1417360 m!1308155))

(declare-fun m!1308157 () Bool)

(assert (=> b!1417360 m!1308157))

(assert (=> b!1417364 m!1308147))

(assert (=> b!1417364 m!1308147))

(declare-fun m!1308159 () Bool)

(assert (=> b!1417364 m!1308159))

(declare-fun m!1308161 () Bool)

(assert (=> b!1417361 m!1308161))

(push 1)

(assert (not start!122224))

(assert (not b!1417361))

(assert (not b!1417365))

(assert (not b!1417366))

(assert (not b!1417362))

(assert (not b!1417364))

(assert (not b!1417360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

