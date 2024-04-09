; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129818 () Bool)

(assert start!129818)

(declare-fun b!1523319 () Bool)

(declare-fun res!1042367 () Bool)

(declare-fun e!849295 () Bool)

(assert (=> b!1523319 (=> (not res!1042367) (not e!849295))))

(declare-datatypes ((array!101341 0))(
  ( (array!101342 (arr!48897 (Array (_ BitVec 32) (_ BitVec 64))) (size!49448 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101341)

(declare-datatypes ((List!35560 0))(
  ( (Nil!35557) (Cons!35556 (h!36981 (_ BitVec 64)) (t!50261 List!35560)) )
))
(declare-fun arrayNoDuplicates!0 (array!101341 (_ BitVec 32) List!35560) Bool)

(assert (=> b!1523319 (= res!1042367 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35557))))

(declare-fun b!1523320 () Bool)

(declare-fun res!1042368 () Bool)

(declare-fun e!849294 () Bool)

(assert (=> b!1523320 (=> (not res!1042368) (not e!849294))))

(declare-datatypes ((SeekEntryResult!13083 0))(
  ( (MissingZero!13083 (index!54726 (_ BitVec 32))) (Found!13083 (index!54727 (_ BitVec 32))) (Intermediate!13083 (undefined!13895 Bool) (index!54728 (_ BitVec 32)) (x!136420 (_ BitVec 32))) (Undefined!13083) (MissingVacant!13083 (index!54729 (_ BitVec 32))) )
))
(declare-fun lt!659878 () SeekEntryResult!13083)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101341 (_ BitVec 32)) SeekEntryResult!13083)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523320 (= res!1042368 (= lt!659878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48897 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48897 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101342 (store (arr!48897 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49448 a!2804)) mask!2512)))))

(declare-fun b!1523322 () Bool)

(declare-fun res!1042374 () Bool)

(assert (=> b!1523322 (=> (not res!1042374) (not e!849295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101341 (_ BitVec 32)) Bool)

(assert (=> b!1523322 (= res!1042374 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523323 () Bool)

(declare-fun res!1042371 () Bool)

(assert (=> b!1523323 (=> (not res!1042371) (not e!849295))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523323 (= res!1042371 (validKeyInArray!0 (select (arr!48897 a!2804) i!961)))))

(declare-fun b!1523324 () Bool)

(assert (=> b!1523324 (= e!849295 e!849294)))

(declare-fun res!1042366 () Bool)

(assert (=> b!1523324 (=> (not res!1042366) (not e!849294))))

(declare-fun lt!659876 () SeekEntryResult!13083)

(assert (=> b!1523324 (= res!1042366 (= lt!659878 lt!659876))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523324 (= lt!659876 (Intermediate!13083 false resIndex!21 resX!21))))

(assert (=> b!1523324 (= lt!659878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48897 a!2804) j!70) mask!2512) (select (arr!48897 a!2804) j!70) a!2804 mask!2512))))

(declare-fun e!849296 () Bool)

(declare-fun b!1523325 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101341 (_ BitVec 32)) SeekEntryResult!13083)

(assert (=> b!1523325 (= e!849296 (= (seekEntry!0 (select (arr!48897 a!2804) j!70) a!2804 mask!2512) (Found!13083 j!70)))))

(declare-fun b!1523326 () Bool)

(declare-fun res!1042372 () Bool)

(assert (=> b!1523326 (=> (not res!1042372) (not e!849295))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1523326 (= res!1042372 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49448 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49448 a!2804))))))

(declare-fun b!1523327 () Bool)

(declare-fun res!1042365 () Bool)

(assert (=> b!1523327 (=> (not res!1042365) (not e!849295))))

(assert (=> b!1523327 (= res!1042365 (validKeyInArray!0 (select (arr!48897 a!2804) j!70)))))

(declare-fun b!1523328 () Bool)

(declare-fun res!1042370 () Bool)

(assert (=> b!1523328 (=> (not res!1042370) (not e!849295))))

(assert (=> b!1523328 (= res!1042370 (and (= (size!49448 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49448 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49448 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523329 () Bool)

(assert (=> b!1523329 (= e!849294 (not true))))

(assert (=> b!1523329 e!849296))

(declare-fun res!1042364 () Bool)

(assert (=> b!1523329 (=> (not res!1042364) (not e!849296))))

(assert (=> b!1523329 (= res!1042364 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50906 0))(
  ( (Unit!50907) )
))
(declare-fun lt!659877 () Unit!50906)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50906)

(assert (=> b!1523329 (= lt!659877 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523321 () Bool)

(declare-fun res!1042369 () Bool)

(assert (=> b!1523321 (=> (not res!1042369) (not e!849294))))

(assert (=> b!1523321 (= res!1042369 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48897 a!2804) j!70) a!2804 mask!2512) lt!659876))))

(declare-fun res!1042373 () Bool)

(assert (=> start!129818 (=> (not res!1042373) (not e!849295))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129818 (= res!1042373 (validMask!0 mask!2512))))

(assert (=> start!129818 e!849295))

(assert (=> start!129818 true))

(declare-fun array_inv!37842 (array!101341) Bool)

(assert (=> start!129818 (array_inv!37842 a!2804)))

(assert (= (and start!129818 res!1042373) b!1523328))

(assert (= (and b!1523328 res!1042370) b!1523323))

(assert (= (and b!1523323 res!1042371) b!1523327))

(assert (= (and b!1523327 res!1042365) b!1523322))

(assert (= (and b!1523322 res!1042374) b!1523319))

(assert (= (and b!1523319 res!1042367) b!1523326))

(assert (= (and b!1523326 res!1042372) b!1523324))

(assert (= (and b!1523324 res!1042366) b!1523321))

(assert (= (and b!1523321 res!1042369) b!1523320))

(assert (= (and b!1523320 res!1042368) b!1523329))

(assert (= (and b!1523329 res!1042364) b!1523325))

(declare-fun m!1406487 () Bool)

(assert (=> b!1523327 m!1406487))

(assert (=> b!1523327 m!1406487))

(declare-fun m!1406489 () Bool)

(assert (=> b!1523327 m!1406489))

(declare-fun m!1406491 () Bool)

(assert (=> b!1523329 m!1406491))

(declare-fun m!1406493 () Bool)

(assert (=> b!1523329 m!1406493))

(declare-fun m!1406495 () Bool)

(assert (=> b!1523323 m!1406495))

(assert (=> b!1523323 m!1406495))

(declare-fun m!1406497 () Bool)

(assert (=> b!1523323 m!1406497))

(declare-fun m!1406499 () Bool)

(assert (=> b!1523319 m!1406499))

(assert (=> b!1523321 m!1406487))

(assert (=> b!1523321 m!1406487))

(declare-fun m!1406501 () Bool)

(assert (=> b!1523321 m!1406501))

(assert (=> b!1523324 m!1406487))

(assert (=> b!1523324 m!1406487))

(declare-fun m!1406503 () Bool)

(assert (=> b!1523324 m!1406503))

(assert (=> b!1523324 m!1406503))

(assert (=> b!1523324 m!1406487))

(declare-fun m!1406505 () Bool)

(assert (=> b!1523324 m!1406505))

(declare-fun m!1406507 () Bool)

(assert (=> b!1523322 m!1406507))

(declare-fun m!1406509 () Bool)

(assert (=> b!1523320 m!1406509))

(declare-fun m!1406511 () Bool)

(assert (=> b!1523320 m!1406511))

(assert (=> b!1523320 m!1406511))

(declare-fun m!1406513 () Bool)

(assert (=> b!1523320 m!1406513))

(assert (=> b!1523320 m!1406513))

(assert (=> b!1523320 m!1406511))

(declare-fun m!1406515 () Bool)

(assert (=> b!1523320 m!1406515))

(assert (=> b!1523325 m!1406487))

(assert (=> b!1523325 m!1406487))

(declare-fun m!1406517 () Bool)

(assert (=> b!1523325 m!1406517))

(declare-fun m!1406519 () Bool)

(assert (=> start!129818 m!1406519))

(declare-fun m!1406521 () Bool)

(assert (=> start!129818 m!1406521))

(push 1)

(assert (not b!1523321))

