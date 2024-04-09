; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128866 () Bool)

(assert start!128866)

(declare-fun b!1509487 () Bool)

(declare-fun res!1029465 () Bool)

(declare-fun e!843137 () Bool)

(assert (=> b!1509487 (=> (not res!1029465) (not e!843137))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100635 0))(
  ( (array!100636 (arr!48550 (Array (_ BitVec 32) (_ BitVec 64))) (size!49101 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100635)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509487 (= res!1029465 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49101 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49101 a!2804))))))

(declare-fun b!1509488 () Bool)

(declare-fun res!1029469 () Bool)

(assert (=> b!1509488 (=> (not res!1029469) (not e!843137))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1509488 (= res!1029469 (and (= (size!49101 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49101 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49101 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509489 () Bool)

(declare-fun e!843136 () Bool)

(assert (=> b!1509489 (= e!843136 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100635 (_ BitVec 32)) Bool)

(assert (=> b!1509489 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50308 0))(
  ( (Unit!50309) )
))
(declare-fun lt!654881 () Unit!50308)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100635 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50308)

(assert (=> b!1509489 (= lt!654881 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509490 () Bool)

(assert (=> b!1509490 (= e!843137 e!843136)))

(declare-fun res!1029470 () Bool)

(assert (=> b!1509490 (=> (not res!1029470) (not e!843136))))

(declare-datatypes ((SeekEntryResult!12742 0))(
  ( (MissingZero!12742 (index!53362 (_ BitVec 32))) (Found!12742 (index!53363 (_ BitVec 32))) (Intermediate!12742 (undefined!13554 Bool) (index!53364 (_ BitVec 32)) (x!135129 (_ BitVec 32))) (Undefined!12742) (MissingVacant!12742 (index!53365 (_ BitVec 32))) )
))
(declare-fun lt!654883 () SeekEntryResult!12742)

(declare-fun lt!654882 () SeekEntryResult!12742)

(assert (=> b!1509490 (= res!1029470 (= lt!654883 lt!654882))))

(assert (=> b!1509490 (= lt!654882 (Intermediate!12742 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100635 (_ BitVec 32)) SeekEntryResult!12742)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509490 (= lt!654883 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48550 a!2804) j!70) mask!2512) (select (arr!48550 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509491 () Bool)

(declare-fun res!1029462 () Bool)

(assert (=> b!1509491 (=> (not res!1029462) (not e!843137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509491 (= res!1029462 (validKeyInArray!0 (select (arr!48550 a!2804) j!70)))))

(declare-fun b!1509492 () Bool)

(declare-fun res!1029463 () Bool)

(assert (=> b!1509492 (=> (not res!1029463) (not e!843136))))

(assert (=> b!1509492 (= res!1029463 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48550 a!2804) j!70) a!2804 mask!2512) lt!654882))))

(declare-fun res!1029467 () Bool)

(assert (=> start!128866 (=> (not res!1029467) (not e!843137))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128866 (= res!1029467 (validMask!0 mask!2512))))

(assert (=> start!128866 e!843137))

(assert (=> start!128866 true))

(declare-fun array_inv!37495 (array!100635) Bool)

(assert (=> start!128866 (array_inv!37495 a!2804)))

(declare-fun b!1509493 () Bool)

(declare-fun res!1029466 () Bool)

(assert (=> b!1509493 (=> (not res!1029466) (not e!843137))))

(declare-datatypes ((List!35213 0))(
  ( (Nil!35210) (Cons!35209 (h!36622 (_ BitVec 64)) (t!49914 List!35213)) )
))
(declare-fun arrayNoDuplicates!0 (array!100635 (_ BitVec 32) List!35213) Bool)

(assert (=> b!1509493 (= res!1029466 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35210))))

(declare-fun b!1509494 () Bool)

(declare-fun res!1029471 () Bool)

(assert (=> b!1509494 (=> (not res!1029471) (not e!843137))))

(assert (=> b!1509494 (= res!1029471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1509495 () Bool)

(declare-fun res!1029468 () Bool)

(assert (=> b!1509495 (=> (not res!1029468) (not e!843136))))

(assert (=> b!1509495 (= res!1029468 (= lt!654883 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48550 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48550 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100636 (store (arr!48550 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49101 a!2804)) mask!2512)))))

(declare-fun b!1509496 () Bool)

(declare-fun res!1029464 () Bool)

(assert (=> b!1509496 (=> (not res!1029464) (not e!843137))))

(assert (=> b!1509496 (= res!1029464 (validKeyInArray!0 (select (arr!48550 a!2804) i!961)))))

(assert (= (and start!128866 res!1029467) b!1509488))

(assert (= (and b!1509488 res!1029469) b!1509496))

(assert (= (and b!1509496 res!1029464) b!1509491))

(assert (= (and b!1509491 res!1029462) b!1509494))

(assert (= (and b!1509494 res!1029471) b!1509493))

(assert (= (and b!1509493 res!1029466) b!1509487))

(assert (= (and b!1509487 res!1029465) b!1509490))

(assert (= (and b!1509490 res!1029470) b!1509492))

(assert (= (and b!1509492 res!1029463) b!1509495))

(assert (= (and b!1509495 res!1029468) b!1509489))

(declare-fun m!1392033 () Bool)

(assert (=> b!1509493 m!1392033))

(declare-fun m!1392035 () Bool)

(assert (=> b!1509496 m!1392035))

(assert (=> b!1509496 m!1392035))

(declare-fun m!1392037 () Bool)

(assert (=> b!1509496 m!1392037))

(declare-fun m!1392039 () Bool)

(assert (=> start!128866 m!1392039))

(declare-fun m!1392041 () Bool)

(assert (=> start!128866 m!1392041))

(declare-fun m!1392043 () Bool)

(assert (=> b!1509494 m!1392043))

(declare-fun m!1392045 () Bool)

(assert (=> b!1509490 m!1392045))

(assert (=> b!1509490 m!1392045))

(declare-fun m!1392047 () Bool)

(assert (=> b!1509490 m!1392047))

(assert (=> b!1509490 m!1392047))

(assert (=> b!1509490 m!1392045))

(declare-fun m!1392049 () Bool)

(assert (=> b!1509490 m!1392049))

(declare-fun m!1392051 () Bool)

(assert (=> b!1509489 m!1392051))

(declare-fun m!1392053 () Bool)

(assert (=> b!1509489 m!1392053))

(declare-fun m!1392055 () Bool)

(assert (=> b!1509495 m!1392055))

(declare-fun m!1392057 () Bool)

(assert (=> b!1509495 m!1392057))

(assert (=> b!1509495 m!1392057))

(declare-fun m!1392059 () Bool)

(assert (=> b!1509495 m!1392059))

(assert (=> b!1509495 m!1392059))

(assert (=> b!1509495 m!1392057))

(declare-fun m!1392061 () Bool)

(assert (=> b!1509495 m!1392061))

(assert (=> b!1509492 m!1392045))

(assert (=> b!1509492 m!1392045))

(declare-fun m!1392063 () Bool)

(assert (=> b!1509492 m!1392063))

(assert (=> b!1509491 m!1392045))

(assert (=> b!1509491 m!1392045))

(declare-fun m!1392065 () Bool)

(assert (=> b!1509491 m!1392065))

(push 1)

