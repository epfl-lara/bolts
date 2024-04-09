; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120242 () Bool)

(assert start!120242)

(declare-fun b!1399055 () Bool)

(declare-fun res!937912 () Bool)

(declare-fun e!792080 () Bool)

(assert (=> b!1399055 (=> (not res!937912) (not e!792080))))

(declare-datatypes ((array!95632 0))(
  ( (array!95633 (arr!46164 (Array (_ BitVec 32) (_ BitVec 64))) (size!46715 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95632)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95632 (_ BitVec 32)) Bool)

(assert (=> b!1399055 (= res!937912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399056 () Bool)

(declare-fun e!792081 () Bool)

(assert (=> b!1399056 (= e!792081 true)))

(declare-datatypes ((SeekEntryResult!10503 0))(
  ( (MissingZero!10503 (index!44385 (_ BitVec 32))) (Found!10503 (index!44386 (_ BitVec 32))) (Intermediate!10503 (undefined!11315 Bool) (index!44387 (_ BitVec 32)) (x!126033 (_ BitVec 32))) (Undefined!10503) (MissingVacant!10503 (index!44388 (_ BitVec 32))) )
))
(declare-fun lt!615295 () SeekEntryResult!10503)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun lt!615292 () SeekEntryResult!10503)

(assert (=> b!1399056 (and (not (undefined!11315 lt!615295)) (= (index!44387 lt!615295) i!1037) (bvslt (x!126033 lt!615295) (x!126033 lt!615292)) (= (select (store (arr!46164 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44387 lt!615295)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!46960 0))(
  ( (Unit!46961) )
))
(declare-fun lt!615291 () Unit!46960)

(declare-fun lt!615293 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46960)

(assert (=> b!1399056 (= lt!615291 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615293 (x!126033 lt!615292) (index!44387 lt!615292) (x!126033 lt!615295) (index!44387 lt!615295) (undefined!11315 lt!615295) mask!2840))))

(declare-fun b!1399057 () Bool)

(declare-fun res!937915 () Bool)

(assert (=> b!1399057 (=> (not res!937915) (not e!792080))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399057 (= res!937915 (validKeyInArray!0 (select (arr!46164 a!2901) j!112)))))

(declare-fun res!937918 () Bool)

(assert (=> start!120242 (=> (not res!937918) (not e!792080))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120242 (= res!937918 (validMask!0 mask!2840))))

(assert (=> start!120242 e!792080))

(assert (=> start!120242 true))

(declare-fun array_inv!35109 (array!95632) Bool)

(assert (=> start!120242 (array_inv!35109 a!2901)))

(declare-fun b!1399058 () Bool)

(declare-fun res!937920 () Bool)

(assert (=> b!1399058 (=> (not res!937920) (not e!792080))))

(declare-datatypes ((List!32863 0))(
  ( (Nil!32860) (Cons!32859 (h!34104 (_ BitVec 64)) (t!47564 List!32863)) )
))
(declare-fun arrayNoDuplicates!0 (array!95632 (_ BitVec 32) List!32863) Bool)

(assert (=> b!1399058 (= res!937920 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32860))))

(declare-fun b!1399059 () Bool)

(declare-fun res!937916 () Bool)

(assert (=> b!1399059 (=> (not res!937916) (not e!792080))))

(assert (=> b!1399059 (= res!937916 (validKeyInArray!0 (select (arr!46164 a!2901) i!1037)))))

(declare-fun b!1399060 () Bool)

(declare-fun res!937914 () Bool)

(assert (=> b!1399060 (=> (not res!937914) (not e!792080))))

(assert (=> b!1399060 (= res!937914 (and (= (size!46715 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46715 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46715 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399061 () Bool)

(declare-fun e!792083 () Bool)

(assert (=> b!1399061 (= e!792083 e!792081)))

(declare-fun res!937919 () Bool)

(assert (=> b!1399061 (=> res!937919 e!792081)))

(assert (=> b!1399061 (= res!937919 (or (= lt!615292 lt!615295) (not (is-Intermediate!10503 lt!615295))))))

(declare-fun lt!615294 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95632 (_ BitVec 32)) SeekEntryResult!10503)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399061 (= lt!615295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615294 mask!2840) lt!615294 (array!95633 (store (arr!46164 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46715 a!2901)) mask!2840))))

(assert (=> b!1399061 (= lt!615294 (select (store (arr!46164 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(declare-fun b!1399062 () Bool)

(assert (=> b!1399062 (= e!792080 (not e!792083))))

(declare-fun res!937917 () Bool)

(assert (=> b!1399062 (=> res!937917 e!792083)))

(assert (=> b!1399062 (= res!937917 (or (not (is-Intermediate!10503 lt!615292)) (undefined!11315 lt!615292)))))

(declare-fun e!792079 () Bool)

(assert (=> b!1399062 e!792079))

(declare-fun res!937913 () Bool)

(assert (=> b!1399062 (=> (not res!937913) (not e!792079))))

(assert (=> b!1399062 (= res!937913 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615290 () Unit!46960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46960)

(assert (=> b!1399062 (= lt!615290 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1399062 (= lt!615292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615293 (select (arr!46164 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1399062 (= lt!615293 (toIndex!0 (select (arr!46164 a!2901) j!112) mask!2840))))

(declare-fun b!1399063 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95632 (_ BitVec 32)) SeekEntryResult!10503)

(assert (=> b!1399063 (= e!792079 (= (seekEntryOrOpen!0 (select (arr!46164 a!2901) j!112) a!2901 mask!2840) (Found!10503 j!112)))))

(assert (= (and start!120242 res!937918) b!1399060))

(assert (= (and b!1399060 res!937914) b!1399059))

(assert (= (and b!1399059 res!937916) b!1399057))

(assert (= (and b!1399057 res!937915) b!1399055))

(assert (= (and b!1399055 res!937912) b!1399058))

(assert (= (and b!1399058 res!937920) b!1399062))

(assert (= (and b!1399062 res!937913) b!1399063))

(assert (= (and b!1399062 (not res!937917)) b!1399061))

(assert (= (and b!1399061 (not res!937919)) b!1399056))

(declare-fun m!1286331 () Bool)

(assert (=> b!1399061 m!1286331))

(declare-fun m!1286333 () Bool)

(assert (=> b!1399061 m!1286333))

(assert (=> b!1399061 m!1286331))

(declare-fun m!1286335 () Bool)

(assert (=> b!1399061 m!1286335))

(declare-fun m!1286337 () Bool)

(assert (=> b!1399061 m!1286337))

(declare-fun m!1286339 () Bool)

(assert (=> b!1399063 m!1286339))

(assert (=> b!1399063 m!1286339))

(declare-fun m!1286341 () Bool)

(assert (=> b!1399063 m!1286341))

(assert (=> b!1399062 m!1286339))

(declare-fun m!1286343 () Bool)

(assert (=> b!1399062 m!1286343))

(assert (=> b!1399062 m!1286339))

(declare-fun m!1286345 () Bool)

(assert (=> b!1399062 m!1286345))

(assert (=> b!1399062 m!1286339))

(declare-fun m!1286347 () Bool)

(assert (=> b!1399062 m!1286347))

(declare-fun m!1286349 () Bool)

(assert (=> b!1399062 m!1286349))

(assert (=> b!1399056 m!1286333))

(declare-fun m!1286351 () Bool)

(assert (=> b!1399056 m!1286351))

(declare-fun m!1286353 () Bool)

(assert (=> b!1399056 m!1286353))

(declare-fun m!1286355 () Bool)

(assert (=> b!1399055 m!1286355))

(assert (=> b!1399057 m!1286339))

(assert (=> b!1399057 m!1286339))

(declare-fun m!1286357 () Bool)

(assert (=> b!1399057 m!1286357))

(declare-fun m!1286359 () Bool)

(assert (=> b!1399058 m!1286359))

(declare-fun m!1286361 () Bool)

(assert (=> start!120242 m!1286361))

(declare-fun m!1286363 () Bool)

(assert (=> start!120242 m!1286363))

(declare-fun m!1286365 () Bool)

(assert (=> b!1399059 m!1286365))

(assert (=> b!1399059 m!1286365))

(declare-fun m!1286367 () Bool)

(assert (=> b!1399059 m!1286367))

(push 1)

