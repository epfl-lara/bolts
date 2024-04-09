; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121166 () Bool)

(assert start!121166)

(declare-fun b!1408271 () Bool)

(declare-fun res!946110 () Bool)

(declare-fun e!797037 () Bool)

(assert (=> b!1408271 (=> res!946110 e!797037)))

(declare-datatypes ((SeekEntryResult!10791 0))(
  ( (MissingZero!10791 (index!45540 (_ BitVec 32))) (Found!10791 (index!45541 (_ BitVec 32))) (Intermediate!10791 (undefined!11603 Bool) (index!45542 (_ BitVec 32)) (x!127147 (_ BitVec 32))) (Undefined!10791) (MissingVacant!10791 (index!45543 (_ BitVec 32))) )
))
(declare-fun lt!620253 () SeekEntryResult!10791)

(declare-datatypes ((array!96238 0))(
  ( (array!96239 (arr!46458 (Array (_ BitVec 32) (_ BitVec 64))) (size!47009 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96238)

(declare-fun lt!620255 () (_ BitVec 32))

(assert (=> b!1408271 (= res!946110 (or (bvslt (x!127147 lt!620253) #b00000000000000000000000000000000) (bvsgt (x!127147 lt!620253) #b01111111111111111111111111111110) (bvslt lt!620255 #b00000000000000000000000000000000) (bvsge lt!620255 (size!47009 a!2901)) (bvslt (index!45542 lt!620253) #b00000000000000000000000000000000) (bvsge (index!45542 lt!620253) (size!47009 a!2901)) (not (= lt!620253 (Intermediate!10791 false (index!45542 lt!620253) (x!127147 lt!620253))))))))

(declare-fun b!1408272 () Bool)

(declare-fun e!797039 () Bool)

(declare-fun e!797036 () Bool)

(assert (=> b!1408272 (= e!797039 (not e!797036))))

(declare-fun res!946103 () Bool)

(assert (=> b!1408272 (=> res!946103 e!797036)))

(assert (=> b!1408272 (= res!946103 (or (not (is-Intermediate!10791 lt!620253)) (undefined!11603 lt!620253)))))

(declare-fun lt!620254 () SeekEntryResult!10791)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1408272 (= lt!620254 (Found!10791 j!112))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96238 (_ BitVec 32)) SeekEntryResult!10791)

(assert (=> b!1408272 (= lt!620254 (seekEntryOrOpen!0 (select (arr!46458 a!2901) j!112) a!2901 mask!2840))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96238 (_ BitVec 32)) Bool)

(assert (=> b!1408272 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47506 0))(
  ( (Unit!47507) )
))
(declare-fun lt!620257 () Unit!47506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96238 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47506)

(assert (=> b!1408272 (= lt!620257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96238 (_ BitVec 32)) SeekEntryResult!10791)

(assert (=> b!1408272 (= lt!620253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!620255 (select (arr!46458 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1408272 (= lt!620255 (toIndex!0 (select (arr!46458 a!2901) j!112) mask!2840))))

(declare-fun b!1408273 () Bool)

(declare-fun res!946106 () Bool)

(assert (=> b!1408273 (=> (not res!946106) (not e!797039))))

(assert (=> b!1408273 (= res!946106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1408274 () Bool)

(declare-fun res!946104 () Bool)

(assert (=> b!1408274 (=> (not res!946104) (not e!797039))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1408274 (= res!946104 (and (= (size!47009 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47009 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47009 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!946109 () Bool)

(assert (=> start!121166 (=> (not res!946109) (not e!797039))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121166 (= res!946109 (validMask!0 mask!2840))))

(assert (=> start!121166 e!797039))

(assert (=> start!121166 true))

(declare-fun array_inv!35403 (array!96238) Bool)

(assert (=> start!121166 (array_inv!35403 a!2901)))

(declare-fun b!1408275 () Bool)

(declare-fun res!946107 () Bool)

(assert (=> b!1408275 (=> (not res!946107) (not e!797039))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1408275 (= res!946107 (validKeyInArray!0 (select (arr!46458 a!2901) i!1037)))))

(declare-fun b!1408276 () Bool)

(assert (=> b!1408276 (= e!797036 e!797037)))

(declare-fun res!946108 () Bool)

(assert (=> b!1408276 (=> res!946108 e!797037)))

(declare-fun lt!620252 () array!96238)

(declare-fun lt!620251 () (_ BitVec 64))

(assert (=> b!1408276 (= res!946108 (not (= lt!620253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!620251 mask!2840) lt!620251 lt!620252 mask!2840))))))

(assert (=> b!1408276 (= lt!620251 (select (store (arr!46458 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1408276 (= lt!620252 (array!96239 (store (arr!46458 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47009 a!2901)))))

(declare-fun b!1408277 () Bool)

(declare-fun res!946105 () Bool)

(assert (=> b!1408277 (=> (not res!946105) (not e!797039))))

(declare-datatypes ((List!33157 0))(
  ( (Nil!33154) (Cons!33153 (h!34416 (_ BitVec 64)) (t!47858 List!33157)) )
))
(declare-fun arrayNoDuplicates!0 (array!96238 (_ BitVec 32) List!33157) Bool)

(assert (=> b!1408277 (= res!946105 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33154))))

(declare-fun b!1408278 () Bool)

(declare-fun res!946102 () Bool)

(assert (=> b!1408278 (=> (not res!946102) (not e!797039))))

(assert (=> b!1408278 (= res!946102 (validKeyInArray!0 (select (arr!46458 a!2901) j!112)))))

(declare-fun b!1408279 () Bool)

(assert (=> b!1408279 (= e!797037 true)))

(assert (=> b!1408279 (= lt!620254 (seekEntryOrOpen!0 lt!620251 lt!620252 mask!2840))))

(declare-fun lt!620256 () Unit!47506)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!96238 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47506)

(assert (=> b!1408279 (= lt!620256 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!620255 (x!127147 lt!620253) (index!45542 lt!620253) mask!2840))))

(assert (= (and start!121166 res!946109) b!1408274))

(assert (= (and b!1408274 res!946104) b!1408275))

(assert (= (and b!1408275 res!946107) b!1408278))

(assert (= (and b!1408278 res!946102) b!1408273))

(assert (= (and b!1408273 res!946106) b!1408277))

(assert (= (and b!1408277 res!946105) b!1408272))

(assert (= (and b!1408272 (not res!946103)) b!1408276))

(assert (= (and b!1408276 (not res!946108)) b!1408271))

(assert (= (and b!1408271 (not res!946110)) b!1408279))

(declare-fun m!1297593 () Bool)

(assert (=> b!1408278 m!1297593))

(assert (=> b!1408278 m!1297593))

(declare-fun m!1297595 () Bool)

(assert (=> b!1408278 m!1297595))

(declare-fun m!1297597 () Bool)

(assert (=> b!1408277 m!1297597))

(declare-fun m!1297599 () Bool)

(assert (=> b!1408279 m!1297599))

(declare-fun m!1297601 () Bool)

(assert (=> b!1408279 m!1297601))

(declare-fun m!1297603 () Bool)

(assert (=> b!1408275 m!1297603))

(assert (=> b!1408275 m!1297603))

(declare-fun m!1297605 () Bool)

(assert (=> b!1408275 m!1297605))

(declare-fun m!1297607 () Bool)

(assert (=> b!1408273 m!1297607))

(declare-fun m!1297609 () Bool)

(assert (=> b!1408276 m!1297609))

(assert (=> b!1408276 m!1297609))

(declare-fun m!1297611 () Bool)

(assert (=> b!1408276 m!1297611))

(declare-fun m!1297613 () Bool)

(assert (=> b!1408276 m!1297613))

(declare-fun m!1297615 () Bool)

(assert (=> b!1408276 m!1297615))

(assert (=> b!1408272 m!1297593))

(declare-fun m!1297617 () Bool)

(assert (=> b!1408272 m!1297617))

(assert (=> b!1408272 m!1297593))

(declare-fun m!1297619 () Bool)

(assert (=> b!1408272 m!1297619))

(assert (=> b!1408272 m!1297593))

(declare-fun m!1297621 () Bool)

(assert (=> b!1408272 m!1297621))

(assert (=> b!1408272 m!1297593))

(declare-fun m!1297623 () Bool)

(assert (=> b!1408272 m!1297623))

(declare-fun m!1297625 () Bool)

(assert (=> b!1408272 m!1297625))

(declare-fun m!1297627 () Bool)

(assert (=> start!121166 m!1297627))

(declare-fun m!1297629 () Bool)

(assert (=> start!121166 m!1297629))

(push 1)

