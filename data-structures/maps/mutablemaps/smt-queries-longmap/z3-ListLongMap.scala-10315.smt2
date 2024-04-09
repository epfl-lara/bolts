; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121254 () Bool)

(assert start!121254)

(declare-fun b!1409328 () Bool)

(declare-fun res!947160 () Bool)

(declare-fun e!797567 () Bool)

(assert (=> b!1409328 (=> (not res!947160) (not e!797567))))

(declare-datatypes ((array!96326 0))(
  ( (array!96327 (arr!46502 (Array (_ BitVec 32) (_ BitVec 64))) (size!47053 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96326)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1409328 (= res!947160 (validKeyInArray!0 (select (arr!46502 a!2901) i!1037)))))

(declare-fun res!947159 () Bool)

(assert (=> start!121254 (=> (not res!947159) (not e!797567))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121254 (= res!947159 (validMask!0 mask!2840))))

(assert (=> start!121254 e!797567))

(assert (=> start!121254 true))

(declare-fun array_inv!35447 (array!96326) Bool)

(assert (=> start!121254 (array_inv!35447 a!2901)))

(declare-fun b!1409329 () Bool)

(declare-fun res!947164 () Bool)

(assert (=> b!1409329 (=> (not res!947164) (not e!797567))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96326 (_ BitVec 32)) Bool)

(assert (=> b!1409329 (= res!947164 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1409330 () Bool)

(declare-fun res!947166 () Bool)

(assert (=> b!1409330 (=> (not res!947166) (not e!797567))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1409330 (= res!947166 (and (= (size!47053 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47053 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47053 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1409331 () Bool)

(declare-fun res!947162 () Bool)

(assert (=> b!1409331 (=> (not res!947162) (not e!797567))))

(assert (=> b!1409331 (= res!947162 (validKeyInArray!0 (select (arr!46502 a!2901) j!112)))))

(declare-fun b!1409332 () Bool)

(declare-fun res!947165 () Bool)

(assert (=> b!1409332 (=> (not res!947165) (not e!797567))))

(declare-datatypes ((List!33201 0))(
  ( (Nil!33198) (Cons!33197 (h!34460 (_ BitVec 64)) (t!47902 List!33201)) )
))
(declare-fun arrayNoDuplicates!0 (array!96326 (_ BitVec 32) List!33201) Bool)

(assert (=> b!1409332 (= res!947165 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33198))))

(declare-fun b!1409333 () Bool)

(declare-fun e!797564 () Bool)

(declare-datatypes ((SeekEntryResult!10835 0))(
  ( (MissingZero!10835 (index!45716 (_ BitVec 32))) (Found!10835 (index!45717 (_ BitVec 32))) (Intermediate!10835 (undefined!11647 Bool) (index!45718 (_ BitVec 32)) (x!127311 (_ BitVec 32))) (Undefined!10835) (MissingVacant!10835 (index!45719 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96326 (_ BitVec 32)) SeekEntryResult!10835)

(assert (=> b!1409333 (= e!797564 (= (seekEntryOrOpen!0 (select (arr!46502 a!2901) j!112) a!2901 mask!2840) (Found!10835 j!112)))))

(declare-fun b!1409334 () Bool)

(declare-fun e!797565 () Bool)

(assert (=> b!1409334 (= e!797567 (not e!797565))))

(declare-fun res!947161 () Bool)

(assert (=> b!1409334 (=> res!947161 e!797565)))

(declare-fun lt!620651 () SeekEntryResult!10835)

(get-info :version)

(assert (=> b!1409334 (= res!947161 (or (not ((_ is Intermediate!10835) lt!620651)) (undefined!11647 lt!620651)))))

(assert (=> b!1409334 e!797564))

(declare-fun res!947163 () Bool)

(assert (=> b!1409334 (=> (not res!947163) (not e!797564))))

(assert (=> b!1409334 (= res!947163 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47594 0))(
  ( (Unit!47595) )
))
(declare-fun lt!620652 () Unit!47594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96326 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47594)

(assert (=> b!1409334 (= lt!620652 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96326 (_ BitVec 32)) SeekEntryResult!10835)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1409334 (= lt!620651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46502 a!2901) j!112) mask!2840) (select (arr!46502 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1409335 () Bool)

(assert (=> b!1409335 (= e!797565 true)))

(declare-fun lt!620653 () SeekEntryResult!10835)

(assert (=> b!1409335 (= lt!620653 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46502 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46502 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96327 (store (arr!46502 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47053 a!2901)) mask!2840))))

(assert (= (and start!121254 res!947159) b!1409330))

(assert (= (and b!1409330 res!947166) b!1409328))

(assert (= (and b!1409328 res!947160) b!1409331))

(assert (= (and b!1409331 res!947162) b!1409329))

(assert (= (and b!1409329 res!947164) b!1409332))

(assert (= (and b!1409332 res!947165) b!1409334))

(assert (= (and b!1409334 res!947163) b!1409333))

(assert (= (and b!1409334 (not res!947161)) b!1409335))

(declare-fun m!1299093 () Bool)

(assert (=> start!121254 m!1299093))

(declare-fun m!1299095 () Bool)

(assert (=> start!121254 m!1299095))

(declare-fun m!1299097 () Bool)

(assert (=> b!1409333 m!1299097))

(assert (=> b!1409333 m!1299097))

(declare-fun m!1299099 () Bool)

(assert (=> b!1409333 m!1299099))

(assert (=> b!1409334 m!1299097))

(declare-fun m!1299101 () Bool)

(assert (=> b!1409334 m!1299101))

(assert (=> b!1409334 m!1299097))

(declare-fun m!1299103 () Bool)

(assert (=> b!1409334 m!1299103))

(assert (=> b!1409334 m!1299101))

(assert (=> b!1409334 m!1299097))

(declare-fun m!1299105 () Bool)

(assert (=> b!1409334 m!1299105))

(declare-fun m!1299107 () Bool)

(assert (=> b!1409334 m!1299107))

(declare-fun m!1299109 () Bool)

(assert (=> b!1409328 m!1299109))

(assert (=> b!1409328 m!1299109))

(declare-fun m!1299111 () Bool)

(assert (=> b!1409328 m!1299111))

(declare-fun m!1299113 () Bool)

(assert (=> b!1409329 m!1299113))

(declare-fun m!1299115 () Bool)

(assert (=> b!1409335 m!1299115))

(declare-fun m!1299117 () Bool)

(assert (=> b!1409335 m!1299117))

(assert (=> b!1409335 m!1299117))

(declare-fun m!1299119 () Bool)

(assert (=> b!1409335 m!1299119))

(assert (=> b!1409335 m!1299119))

(assert (=> b!1409335 m!1299117))

(declare-fun m!1299121 () Bool)

(assert (=> b!1409335 m!1299121))

(declare-fun m!1299123 () Bool)

(assert (=> b!1409332 m!1299123))

(assert (=> b!1409331 m!1299097))

(assert (=> b!1409331 m!1299097))

(declare-fun m!1299125 () Bool)

(assert (=> b!1409331 m!1299125))

(check-sat (not b!1409328) (not b!1409332) (not b!1409335) (not b!1409329) (not b!1409331) (not start!121254) (not b!1409333) (not b!1409334))
