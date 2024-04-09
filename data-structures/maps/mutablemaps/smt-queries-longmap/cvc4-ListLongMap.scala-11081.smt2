; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129368 () Bool)

(assert start!129368)

(declare-fun b!1519047 () Bool)

(declare-fun res!1039024 () Bool)

(declare-fun e!847408 () Bool)

(assert (=> b!1519047 (=> (not res!1039024) (not e!847408))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-datatypes ((array!101137 0))(
  ( (array!101138 (arr!48801 (Array (_ BitVec 32) (_ BitVec 64))) (size!49352 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101137)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1519047 (= res!1039024 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49352 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49352 a!2804))))))

(declare-fun b!1519048 () Bool)

(declare-fun res!1039025 () Bool)

(declare-fun e!847410 () Bool)

(assert (=> b!1519048 (=> res!1039025 e!847410)))

(declare-fun lt!658455 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12993 0))(
  ( (MissingZero!12993 (index!54366 (_ BitVec 32))) (Found!12993 (index!54367 (_ BitVec 32))) (Intermediate!12993 (undefined!13805 Bool) (index!54368 (_ BitVec 32)) (x!136044 (_ BitVec 32))) (Undefined!12993) (MissingVacant!12993 (index!54369 (_ BitVec 32))) )
))
(declare-fun lt!658450 () SeekEntryResult!12993)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101137 (_ BitVec 32)) SeekEntryResult!12993)

(assert (=> b!1519048 (= res!1039025 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658455 (select (arr!48801 a!2804) j!70) a!2804 mask!2512) lt!658450)))))

(declare-fun b!1519049 () Bool)

(declare-fun res!1039029 () Bool)

(assert (=> b!1519049 (=> (not res!1039029) (not e!847408))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1519049 (= res!1039029 (validKeyInArray!0 (select (arr!48801 a!2804) i!961)))))

(declare-fun e!847411 () Bool)

(declare-fun b!1519050 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101137 (_ BitVec 32)) SeekEntryResult!12993)

(assert (=> b!1519050 (= e!847411 (= (seekEntry!0 (select (arr!48801 a!2804) j!70) a!2804 mask!2512) (Found!12993 j!70)))))

(declare-fun b!1519051 () Bool)

(declare-fun res!1039026 () Bool)

(assert (=> b!1519051 (=> (not res!1039026) (not e!847408))))

(declare-datatypes ((List!35464 0))(
  ( (Nil!35461) (Cons!35460 (h!36873 (_ BitVec 64)) (t!50165 List!35464)) )
))
(declare-fun arrayNoDuplicates!0 (array!101137 (_ BitVec 32) List!35464) Bool)

(assert (=> b!1519051 (= res!1039026 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35461))))

(declare-fun b!1519052 () Bool)

(declare-fun res!1039030 () Bool)

(assert (=> b!1519052 (=> (not res!1039030) (not e!847408))))

(assert (=> b!1519052 (= res!1039030 (and (= (size!49352 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49352 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49352 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1039035 () Bool)

(assert (=> start!129368 (=> (not res!1039035) (not e!847408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129368 (= res!1039035 (validMask!0 mask!2512))))

(assert (=> start!129368 e!847408))

(assert (=> start!129368 true))

(declare-fun array_inv!37746 (array!101137) Bool)

(assert (=> start!129368 (array_inv!37746 a!2804)))

(declare-fun b!1519053 () Bool)

(declare-fun res!1039028 () Bool)

(assert (=> b!1519053 (=> (not res!1039028) (not e!847408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101137 (_ BitVec 32)) Bool)

(assert (=> b!1519053 (= res!1039028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1519054 () Bool)

(declare-fun res!1039027 () Bool)

(assert (=> b!1519054 (=> (not res!1039027) (not e!847408))))

(assert (=> b!1519054 (= res!1039027 (validKeyInArray!0 (select (arr!48801 a!2804) j!70)))))

(declare-fun b!1519055 () Bool)

(declare-fun res!1039023 () Bool)

(declare-fun e!847406 () Bool)

(assert (=> b!1519055 (=> (not res!1039023) (not e!847406))))

(assert (=> b!1519055 (= res!1039023 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48801 a!2804) j!70) a!2804 mask!2512) lt!658450))))

(declare-fun b!1519056 () Bool)

(assert (=> b!1519056 (= e!847408 e!847406)))

(declare-fun res!1039033 () Bool)

(assert (=> b!1519056 (=> (not res!1039033) (not e!847406))))

(declare-fun lt!658451 () SeekEntryResult!12993)

(assert (=> b!1519056 (= res!1039033 (= lt!658451 lt!658450))))

(assert (=> b!1519056 (= lt!658450 (Intermediate!12993 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519056 (= lt!658451 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48801 a!2804) j!70) mask!2512) (select (arr!48801 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1519057 () Bool)

(declare-fun e!847409 () Bool)

(assert (=> b!1519057 (= e!847409 e!847410)))

(declare-fun res!1039022 () Bool)

(assert (=> b!1519057 (=> res!1039022 e!847410)))

(assert (=> b!1519057 (= res!1039022 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658455 #b00000000000000000000000000000000) (bvsge lt!658455 (size!49352 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1519057 (= lt!658455 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1519058 () Bool)

(declare-fun e!847407 () Bool)

(assert (=> b!1519058 (= e!847406 e!847407)))

(declare-fun res!1039032 () Bool)

(assert (=> b!1519058 (=> (not res!1039032) (not e!847407))))

(declare-fun lt!658452 () array!101137)

(declare-fun lt!658456 () (_ BitVec 64))

(assert (=> b!1519058 (= res!1039032 (= lt!658451 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658456 mask!2512) lt!658456 lt!658452 mask!2512)))))

(assert (=> b!1519058 (= lt!658456 (select (store (arr!48801 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1519058 (= lt!658452 (array!101138 (store (arr!48801 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49352 a!2804)))))

(declare-fun b!1519059 () Bool)

(assert (=> b!1519059 (= e!847407 (not e!847409))))

(declare-fun res!1039031 () Bool)

(assert (=> b!1519059 (=> res!1039031 e!847409)))

(assert (=> b!1519059 (= res!1039031 (or (not (= (select (arr!48801 a!2804) j!70) lt!658456)) (= x!534 resX!21)))))

(assert (=> b!1519059 e!847411))

(declare-fun res!1039034 () Bool)

(assert (=> b!1519059 (=> (not res!1039034) (not e!847411))))

(assert (=> b!1519059 (= res!1039034 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50810 0))(
  ( (Unit!50811) )
))
(declare-fun lt!658453 () Unit!50810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101137 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50810)

(assert (=> b!1519059 (= lt!658453 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1519060 () Bool)

(assert (=> b!1519060 (= e!847410 true)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101137 (_ BitVec 32)) SeekEntryResult!12993)

(assert (=> b!1519060 (= (seekEntryOrOpen!0 (select (arr!48801 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658456 lt!658452 mask!2512))))

(declare-fun lt!658454 () Unit!50810)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101137 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50810)

(assert (=> b!1519060 (= lt!658454 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658455 resX!21 resIndex!21 mask!2512))))

(assert (= (and start!129368 res!1039035) b!1519052))

(assert (= (and b!1519052 res!1039030) b!1519049))

(assert (= (and b!1519049 res!1039029) b!1519054))

(assert (= (and b!1519054 res!1039027) b!1519053))

(assert (= (and b!1519053 res!1039028) b!1519051))

(assert (= (and b!1519051 res!1039026) b!1519047))

(assert (= (and b!1519047 res!1039024) b!1519056))

(assert (= (and b!1519056 res!1039033) b!1519055))

(assert (= (and b!1519055 res!1039023) b!1519058))

(assert (= (and b!1519058 res!1039032) b!1519059))

(assert (= (and b!1519059 res!1039034) b!1519050))

(assert (= (and b!1519059 (not res!1039031)) b!1519057))

(assert (= (and b!1519057 (not res!1039022)) b!1519048))

(assert (= (and b!1519048 (not res!1039025)) b!1519060))

(declare-fun m!1402475 () Bool)

(assert (=> b!1519051 m!1402475))

(declare-fun m!1402477 () Bool)

(assert (=> b!1519055 m!1402477))

(assert (=> b!1519055 m!1402477))

(declare-fun m!1402479 () Bool)

(assert (=> b!1519055 m!1402479))

(declare-fun m!1402481 () Bool)

(assert (=> b!1519058 m!1402481))

(assert (=> b!1519058 m!1402481))

(declare-fun m!1402483 () Bool)

(assert (=> b!1519058 m!1402483))

(declare-fun m!1402485 () Bool)

(assert (=> b!1519058 m!1402485))

(declare-fun m!1402487 () Bool)

(assert (=> b!1519058 m!1402487))

(declare-fun m!1402489 () Bool)

(assert (=> b!1519057 m!1402489))

(assert (=> b!1519048 m!1402477))

(assert (=> b!1519048 m!1402477))

(declare-fun m!1402491 () Bool)

(assert (=> b!1519048 m!1402491))

(assert (=> b!1519054 m!1402477))

(assert (=> b!1519054 m!1402477))

(declare-fun m!1402493 () Bool)

(assert (=> b!1519054 m!1402493))

(declare-fun m!1402495 () Bool)

(assert (=> b!1519049 m!1402495))

(assert (=> b!1519049 m!1402495))

(declare-fun m!1402497 () Bool)

(assert (=> b!1519049 m!1402497))

(declare-fun m!1402499 () Bool)

(assert (=> start!129368 m!1402499))

(declare-fun m!1402501 () Bool)

(assert (=> start!129368 m!1402501))

(assert (=> b!1519059 m!1402477))

(declare-fun m!1402503 () Bool)

(assert (=> b!1519059 m!1402503))

(declare-fun m!1402505 () Bool)

(assert (=> b!1519059 m!1402505))

(assert (=> b!1519060 m!1402477))

(assert (=> b!1519060 m!1402477))

(declare-fun m!1402507 () Bool)

(assert (=> b!1519060 m!1402507))

(declare-fun m!1402509 () Bool)

(assert (=> b!1519060 m!1402509))

(declare-fun m!1402511 () Bool)

(assert (=> b!1519060 m!1402511))

(assert (=> b!1519056 m!1402477))

(assert (=> b!1519056 m!1402477))

(declare-fun m!1402513 () Bool)

(assert (=> b!1519056 m!1402513))

(assert (=> b!1519056 m!1402513))

(assert (=> b!1519056 m!1402477))

(declare-fun m!1402515 () Bool)

(assert (=> b!1519056 m!1402515))

(declare-fun m!1402517 () Bool)

(assert (=> b!1519053 m!1402517))

(assert (=> b!1519050 m!1402477))

(assert (=> b!1519050 m!1402477))

(declare-fun m!1402519 () Bool)

(assert (=> b!1519050 m!1402519))

(push 1)

(assert (not b!1519051))

(assert (not b!1519053))

(assert (not b!1519059))

(assert (not b!1519049))

(assert (not b!1519048))

(assert (not b!1519050))

(assert (not b!1519055))

(assert (not b!1519057))

(assert (not start!129368))

(assert (not b!1519058))

(assert (not b!1519060))

(assert (not b!1519056))

(assert (not b!1519054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

