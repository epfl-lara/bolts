; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120820 () Bool)

(assert start!120820)

(declare-fun b!1405261 () Bool)

(declare-fun res!943593 () Bool)

(declare-fun e!795499 () Bool)

(assert (=> b!1405261 (=> (not res!943593) (not e!795499))))

(declare-datatypes ((array!96045 0))(
  ( (array!96046 (arr!46366 (Array (_ BitVec 32) (_ BitVec 64))) (size!46917 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96045)

(declare-datatypes ((List!33065 0))(
  ( (Nil!33062) (Cons!33061 (h!34315 (_ BitVec 64)) (t!47766 List!33065)) )
))
(declare-fun arrayNoDuplicates!0 (array!96045 (_ BitVec 32) List!33065) Bool)

(assert (=> b!1405261 (= res!943593 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33062))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun b!1405262 () Bool)

(declare-fun e!795498 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10699 0))(
  ( (MissingZero!10699 (index!45172 (_ BitVec 32))) (Found!10699 (index!45173 (_ BitVec 32))) (Intermediate!10699 (undefined!11511 Bool) (index!45174 (_ BitVec 32)) (x!126797 (_ BitVec 32))) (Undefined!10699) (MissingVacant!10699 (index!45175 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96045 (_ BitVec 32)) SeekEntryResult!10699)

(assert (=> b!1405262 (= e!795498 (= (seekEntryOrOpen!0 (select (arr!46366 a!2901) j!112) a!2901 mask!2840) (Found!10699 j!112)))))

(declare-fun b!1405263 () Bool)

(declare-fun res!943591 () Bool)

(assert (=> b!1405263 (=> (not res!943591) (not e!795499))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1405263 (= res!943591 (validKeyInArray!0 (select (arr!46366 a!2901) i!1037)))))

(declare-fun b!1405264 () Bool)

(declare-fun res!943590 () Bool)

(assert (=> b!1405264 (=> (not res!943590) (not e!795499))))

(assert (=> b!1405264 (= res!943590 (validKeyInArray!0 (select (arr!46366 a!2901) j!112)))))

(declare-fun b!1405265 () Bool)

(declare-fun res!943587 () Bool)

(assert (=> b!1405265 (=> (not res!943587) (not e!795499))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96045 (_ BitVec 32)) Bool)

(assert (=> b!1405265 (= res!943587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!943592 () Bool)

(assert (=> start!120820 (=> (not res!943592) (not e!795499))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120820 (= res!943592 (validMask!0 mask!2840))))

(assert (=> start!120820 e!795499))

(assert (=> start!120820 true))

(declare-fun array_inv!35311 (array!96045) Bool)

(assert (=> start!120820 (array_inv!35311 a!2901)))

(declare-fun b!1405266 () Bool)

(declare-fun res!943589 () Bool)

(assert (=> b!1405266 (=> (not res!943589) (not e!795499))))

(assert (=> b!1405266 (= res!943589 (and (= (size!46917 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46917 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46917 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1405267 () Bool)

(assert (=> b!1405267 (= e!795499 (not true))))

(assert (=> b!1405267 e!795498))

(declare-fun res!943588 () Bool)

(assert (=> b!1405267 (=> (not res!943588) (not e!795498))))

(assert (=> b!1405267 (= res!943588 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47322 0))(
  ( (Unit!47323) )
))
(declare-fun lt!618939 () Unit!47322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47322)

(assert (=> b!1405267 (= lt!618939 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618940 () SeekEntryResult!10699)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96045 (_ BitVec 32)) SeekEntryResult!10699)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1405267 (= lt!618940 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46366 a!2901) j!112) mask!2840) (select (arr!46366 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and start!120820 res!943592) b!1405266))

(assert (= (and b!1405266 res!943589) b!1405263))

(assert (= (and b!1405263 res!943591) b!1405264))

(assert (= (and b!1405264 res!943590) b!1405265))

(assert (= (and b!1405265 res!943587) b!1405261))

(assert (= (and b!1405261 res!943593) b!1405267))

(assert (= (and b!1405267 res!943588) b!1405262))

(declare-fun m!1294079 () Bool)

(assert (=> start!120820 m!1294079))

(declare-fun m!1294081 () Bool)

(assert (=> start!120820 m!1294081))

(declare-fun m!1294083 () Bool)

(assert (=> b!1405263 m!1294083))

(assert (=> b!1405263 m!1294083))

(declare-fun m!1294085 () Bool)

(assert (=> b!1405263 m!1294085))

(declare-fun m!1294087 () Bool)

(assert (=> b!1405262 m!1294087))

(assert (=> b!1405262 m!1294087))

(declare-fun m!1294089 () Bool)

(assert (=> b!1405262 m!1294089))

(assert (=> b!1405264 m!1294087))

(assert (=> b!1405264 m!1294087))

(declare-fun m!1294091 () Bool)

(assert (=> b!1405264 m!1294091))

(declare-fun m!1294093 () Bool)

(assert (=> b!1405265 m!1294093))

(declare-fun m!1294095 () Bool)

(assert (=> b!1405261 m!1294095))

(assert (=> b!1405267 m!1294087))

(declare-fun m!1294097 () Bool)

(assert (=> b!1405267 m!1294097))

(assert (=> b!1405267 m!1294087))

(declare-fun m!1294099 () Bool)

(assert (=> b!1405267 m!1294099))

(assert (=> b!1405267 m!1294097))

(assert (=> b!1405267 m!1294087))

(declare-fun m!1294101 () Bool)

(assert (=> b!1405267 m!1294101))

(declare-fun m!1294103 () Bool)

(assert (=> b!1405267 m!1294103))

(push 1)

(assert (not b!1405265))

(assert (not b!1405267))

(assert (not b!1405263))

(assert (not b!1405264))

(assert (not b!1405262))

(assert (not b!1405261))

(assert (not start!120820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

